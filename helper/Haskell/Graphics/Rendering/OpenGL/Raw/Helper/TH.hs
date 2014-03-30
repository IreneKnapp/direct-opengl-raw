{-# LANGUAGE TemplateHaskell #-}
module Graphics.Rendering.OpenGL.Raw.Helper.TH
  (extensionEntry)
  where

import Data.List (foldl')
import qualified Data.Set as Set
import Graphics.Rendering.OpenGL.Raw.Helper.CallingConvention
import Foreign.Ptr (FunPtr)
import Graphics.Rendering.OpenGL.Raw.Helper.Extensions
  (getExtensionEntry, Invoker)
import Language.Haskell.TH
import System.IO.Unsafe (unsafePerformIO)


extensionEntry :: String -> Q Type -> Q [Dec]
extensionEntry entryNameString entryTypeQ = do
  entryType <- entryTypeQ
  dynamicName <- newName $ "dyn_" ++ entryNameString
  pointerName <- newName $ "ptr_" ++ entryNameString
  let aName = mkName "a"
      entryName = mkName entryNameString
      foreignImportDeclaration =
        ForeignD $ ImportF callingConvention Unsafe "dynamic" dynamicName
                           (wrapInForall (AppT (ConT ''Invoker)
                                         (stripOuterForall entryType)))
      entrySignatureDeclaration =
        SigD entryName (wrapInForall $ stripOuterForall entryType)
      entryValueDeclaration =
        FunD entryName
          [Clause []
                  (NormalB (AppE (VarE dynamicName)
                                 (VarE pointerName)))
                  []]
      pointerSignatureDeclaration =
        SigD pointerName (wrapInForall (AppT (ConT ''FunPtr) (VarT aName)))
      pointerValueDeclaration =
        FunD pointerName
          [Clause []
                  (NormalB (AppE (VarE 'unsafePerformIO)
                                 (AppE (AppE (VarE 'getExtensionEntry)
                                             (VarE $ mkName
                                               "extensionNameString"))
                                       (LitE $ StringL entryNameString))))
                  []]
      pointerNoInlineDeclaration =
        PragmaD $ InlineP pointerName NoInline FunLike AllPhases
  return [foreignImportDeclaration,
          entrySignatureDeclaration,
          entryValueDeclaration,
          pointerSignatureDeclaration,
          pointerValueDeclaration,
          pointerNoInlineDeclaration]


wrapInForall :: Type -> Type
wrapInForall type' =
  let freeTypeVariables = computeFreeTypeVariables type' Set.empty
  in if Set.null freeTypeVariables
       then type'
       else ForallT (map PlainTV $ Set.toList freeTypeVariables) [] type'


stripOuterForall :: Type -> Type
stripOuterForall (ForallT _ _ child) = child
stripOuterForall type' = type'


computeFreeTypeVariables :: Type -> Set.Set Name -> Set.Set Name
computeFreeTypeVariables (ForallT binders context child) boundOutside =
  let boundHere = foldl' (\soFar binder ->
                            case binder of
                              PlainTV name -> Set.insert name soFar
                              KindedTV name _ -> Set.insert name soFar)
                         Set.empty
                         binders
      boundWithin = Set.union boundOutside boundHere
      fromContext =
        foldl' (\soFar predicate ->
                  case predicate of
                    ClassP _ children ->
                      foldl' (\soFar' child' ->
                                Set.union soFar'
                                 (computeFreeTypeVariables child' boundWithin))
                             soFar
                             children
                    EqualP childA childB ->
                      Set.union soFar $ Set.union
                        (computeFreeTypeVariables childA boundWithin)
                        (computeFreeTypeVariables childB boundWithin))
               Set.empty
               context
      fromChild = computeFreeTypeVariables child boundWithin
  in Set.union fromContext fromChild
computeFreeTypeVariables (AppT childA childB) boundOutside =
  Set.union (computeFreeTypeVariables childA boundOutside)
            (computeFreeTypeVariables childB boundOutside)
computeFreeTypeVariables (SigT child _) boundOutside =
  computeFreeTypeVariables child boundOutside
computeFreeTypeVariables (VarT name) boundOutside =
  Set.insert name boundOutside
computeFreeTypeVariables (ConT _) _ = Set.empty
computeFreeTypeVariables (PromotedT _) _ = Set.empty
computeFreeTypeVariables (TupleT _) _ = Set.empty
computeFreeTypeVariables (UnboxedTupleT _) _ = Set.empty
computeFreeTypeVariables ArrowT _ = Set.empty
computeFreeTypeVariables ListT _ = Set.empty
computeFreeTypeVariables (PromotedTupleT _) _ = Set.empty
computeFreeTypeVariables PromotedNilT _ = Set.empty
computeFreeTypeVariables PromotedConsT _ = Set.empty
computeFreeTypeVariables StarT _ = Set.empty
computeFreeTypeVariables ConstraintT _ = Set.empty
computeFreeTypeVariables (LitT _) _ = Set.empty
