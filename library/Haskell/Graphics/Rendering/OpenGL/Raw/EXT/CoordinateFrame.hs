{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell,
             ExistentialQuantification #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.EXT.CoordinateFrame
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the EXT_coordinate_frame extension, see
-- <http://www.opengl.org/registry/specs/EXT/coordinate_frame.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.EXT.CoordinateFrame (
   -- * Functions
   glTangent3b,
   glTangent3d,
   glTangent3f,
   glTangent3i,
   glTangent3s,
   glTangent3bv,
   glTangent3dv,
   glTangent3fv,
   glTangent3iv,
   glTangent3sv,
   glBinormal3b,
   glBinormal3d,
   glBinormal3f,
   glBinormal3i,
   glBinormal3s,
   glBinormal3bv,
   glBinormal3dv,
   glBinormal3fv,
   glBinormal3iv,
   glBinormal3sv,
   glTangentPointer,
   glBinormalPointer,
   -- * Tokens
   gl_TANGENT_ARRAY,
   gl_BINORMAL_ARRAY,
   gl_CURRENT_TANGENT,
   gl_CURRENT_BINORMAL,
   gl_TANGENT_ARRAY_TYPE,
   gl_TANGENT_ARRAY_STRIDE,
   gl_BINORMAL_ARRAY_TYPE,
   gl_BINORMAL_ARRAY_STRIDE,
   gl_TANGENT_ARRAY_POINTER,
   gl_BINORMAL_ARRAY_POINTER,
   gl_MAP1_TANGENT,
   gl_MAP2_TANGENT,
   gl_MAP1_BINORMAL,
   gl_MAP2_BINORMAL
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_EXT_coordinate_frame"

extensionEntry "glTangent3b" [t| GLbyte -> IO () |]
extensionEntry "glTangent3d" [t| GLdouble -> IO () |]
extensionEntry "glTangent3f" [t| GLfloat -> IO () |]
extensionEntry "glTangent3i" [t| GLint -> IO () |]
extensionEntry "glTangent3s" [t| GLshort -> IO () |]
extensionEntry "glTangent3bv" [t| Ptr GLbyte -> IO () |]
extensionEntry "glTangent3dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glTangent3fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glTangent3iv" [t| Ptr GLint -> IO () |]
extensionEntry "glTangent3sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glBinormal3b" [t| GLbyte -> IO () |]
extensionEntry "glBinormal3d" [t| GLdouble -> IO () |]
extensionEntry "glBinormal3f" [t| GLfloat -> IO () |]
extensionEntry "glBinormal3i" [t| GLint -> IO () |]
extensionEntry "glBinormal3s" [t| GLshort -> IO () |]
extensionEntry "glBinormal3bv" [t| Ptr GLbyte -> IO () |]
extensionEntry "glBinormal3dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glBinormal3fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glBinormal3iv" [t| Ptr GLint -> IO () |]
extensionEntry "glBinormal3sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glTangentPointer" [t| forall a . GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glBinormalPointer" [t| forall a . GLenum -> GLsizei -> Ptr a -> IO () |]

gl_TANGENT_ARRAY :: GLenum
gl_TANGENT_ARRAY = 0x8439

gl_BINORMAL_ARRAY :: GLenum
gl_BINORMAL_ARRAY = 0x843A

gl_CURRENT_TANGENT :: GLenum
gl_CURRENT_TANGENT = 0x843B

gl_CURRENT_BINORMAL :: GLenum
gl_CURRENT_BINORMAL = 0x843C

gl_TANGENT_ARRAY_TYPE :: GLenum
gl_TANGENT_ARRAY_TYPE = 0x843E

gl_TANGENT_ARRAY_STRIDE :: GLenum
gl_TANGENT_ARRAY_STRIDE = 0x843F

gl_BINORMAL_ARRAY_TYPE :: GLenum
gl_BINORMAL_ARRAY_TYPE = 0x8440

gl_BINORMAL_ARRAY_STRIDE :: GLenum
gl_BINORMAL_ARRAY_STRIDE = 0x8441

gl_TANGENT_ARRAY_POINTER :: GLenum
gl_TANGENT_ARRAY_POINTER = 0x8442

gl_BINORMAL_ARRAY_POINTER :: GLenum
gl_BINORMAL_ARRAY_POINTER = 0x8443

gl_MAP1_TANGENT :: GLenum
gl_MAP1_TANGENT = 0x8444

gl_MAP2_TANGENT :: GLenum
gl_MAP2_TANGENT = 0x8445

gl_MAP1_BINORMAL :: GLenum
gl_MAP1_BINORMAL = 0x8446

gl_MAP2_BINORMAL :: GLenum
gl_MAP2_BINORMAL = 0x8447
