{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.DrawBuffersBlend
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions from the ARB_draw_buffers_blend extension, see
-- <http://www.opengl.org/registry/specs/ARB/draw_buffers_blend.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.DrawBuffersBlend (
   -- * Functions
   glBlendEquationi,
   glBlendEquationSeparatei,
   glBlendFunci,
   glBlendFuncSeparatei
) where

import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_ARB_draw_buffers_blend"

extensionEntry "glBlendEquationi" [t| GLuint -> GLenum -> IO () |]
extensionEntry "glBlendEquationSeparatei" [t| GLuint -> GLenum -> GLenum -> IO () |]
extensionEntry "glBlendFunci" [t| GLuint -> GLenum -> GLenum -> IO () |]
extensionEntry "glBlendFuncSeparatei" [t| GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO () |]

