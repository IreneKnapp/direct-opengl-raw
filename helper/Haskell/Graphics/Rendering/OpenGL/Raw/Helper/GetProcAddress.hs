{-# LANGUAGE ForeignFunctionInterface #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.Helper.GetProcAddress
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- This module offers a portable way to retrieve OpenGL extension entries,
-- providing a portability layer upon platform-specific mechanisms like
-- @glXGetProcAddress@, @wglGetProcAddress@ or @NSAddressOfSymbol@.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.Helper.GetProcAddress (
   getProcAddress, getProcAddressWithSuffixes
) where

import Control.Monad
import Foreign.C.String
import Foreign.Ptr

--------------------------------------------------------------------------------

-- | Retrieve an OpenGL extension entry by name. Returns 'nullFunPtr' when no
-- extension entry with the given name was found.
getProcAddress :: String -> IO (FunPtr a)
getProcAddress extensionEntry =
   withCString extensionEntry hs_OpenGLRaw_getProcAddress

foreign import ccall unsafe "hs_OpenGLRaw_getProcAddress"
   hs_OpenGLRaw_getProcAddress :: CString -> IO (FunPtr a)

-- | Retrieve an OpenGL extension entry by name, trying a list of name suffixes
-- in the given order. Returns 'nullFunPtr' when no extension entry with the
-- given name plus any of the suffixes was found.
getProcAddressWithSuffixes :: String -> [String] -> IO (FunPtr a)
getProcAddressWithSuffixes extensionEntry = foldM gpa nullFunPtr
   where gpa p s | p == nullFunPtr = getProcAddress (extensionEntry ++ s)
                 | otherwise       = return p
