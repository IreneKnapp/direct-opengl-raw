{-# OPTIONS_HADDOCK hide #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.Helper.Extensions
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- This internal module offers convenience functions and re-exports for OpenGL
-- extension loading.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.Helper.Extensions (
   Invoker, getExtensionEntry,
   FunPtr, unsafePerformIO
) where

import Foreign.Marshal.Error
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Helper.GetProcAddress
import System.IO.Unsafe

--------------------------------------------------------------------------------

type Invoker a = FunPtr a -> a

getExtensionEntry :: String -> String -> IO (FunPtr a)
getExtensionEntry extensionNameString extensionEntry =
   throwIfNullFunPtr ("unknown OpenGL extension entry " ++ extensionEntry ++
                      ", check for " ++ extensionNameString) $
      getProcAddressWithSuffixes extensionEntry extensionSuffixes

throwIfNullFunPtr :: String -> IO (FunPtr a) -> IO (FunPtr a)
throwIfNullFunPtr = throwIf (== nullFunPtr) . const

-- non-ARB extension suffixes are in descending order of number of extensions
extensionSuffixes :: [String]
extensionSuffixes = [
   "", "ARB", "EXT", "NV", "SGIX", "SGIS", "ATI", "APPLE", "SUN", "OES", "IBM",
   "MESA", "HP", "SGI", "OML", "AMD", "3DFX", "WIN", "PGI", "INTEL", "INGR",
   "GREMEDY", "SUNX", "S3", "REND", "MESAX" ]
