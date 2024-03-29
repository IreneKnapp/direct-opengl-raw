{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.EXT.PixelTransform
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the EXT_pixel_transform extension, see
-- <http://www.opengl.org/registry/specs/EXT/pixel_transform.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.EXT.PixelTransform (
   -- * Functions
   glPixelTransformParameteri,
   glPixelTransformParameterf,
   glPixelTransformParameteriv,
   glPixelTransformParameterfv,
   glGetPixelTransformParameteriv,
   glGetPixelTransformParameterfv,
   -- * Tokens
   gl_PIXEL_MAG_FILTER,
   gl_PIXEL_MIN_FILTER,
   gl_PIXEL_CUBIC_WEIGHT,
   gl_CUBIC,
   gl_AVERAGE,
   gl_PIXEL_TRANSFORM_2D,
   gl_PIXEL_TRANSFORM_2D_STACK_DEPTH,
   gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH,
   gl_PIXEL_TRANSFORM_2D_MATRIX
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_EXT_pixel_transform"

extensionEntry "glPixelTransformParameteri" [t| GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glPixelTransformParameterf" [t| GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glPixelTransformParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glPixelTransformParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetPixelTransformParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetPixelTransformParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]

gl_PIXEL_MAG_FILTER :: GLenum
gl_PIXEL_MAG_FILTER = 0x8331

gl_PIXEL_MIN_FILTER :: GLenum
gl_PIXEL_MIN_FILTER = 0x8332

gl_PIXEL_CUBIC_WEIGHT :: GLenum
gl_PIXEL_CUBIC_WEIGHT = 0x8333

gl_CUBIC :: GLenum
gl_CUBIC = 0x8334

gl_AVERAGE :: GLenum
gl_AVERAGE = 0x8335

gl_PIXEL_TRANSFORM_2D :: GLenum
gl_PIXEL_TRANSFORM_2D = 0x8330

gl_PIXEL_TRANSFORM_2D_STACK_DEPTH :: GLenum
gl_PIXEL_TRANSFORM_2D_STACK_DEPTH = 0x8336

gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH :: GLenum
gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH = 0x8337

gl_PIXEL_TRANSFORM_2D_MATRIX :: GLenum
gl_PIXEL_TRANSFORM_2D_MATRIX = 0x8338
