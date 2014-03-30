{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell,
             ExistentialQuantification #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.DrawInstanced
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions from the ARB_draw_instanced extension, see
-- <http://www.opengl.org/registry/specs/ARB/draw_instanced.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.DrawInstanced (
   -- * Functions
   glDrawArraysInstanced,
   glDrawElementsInstanced
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_ARB_draw_instanced"

extensionEntry "glDrawArraysInstanced" [t| GLenum -> GLint -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glDrawElementsInstanced" [t| forall a . GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> IO () |]
