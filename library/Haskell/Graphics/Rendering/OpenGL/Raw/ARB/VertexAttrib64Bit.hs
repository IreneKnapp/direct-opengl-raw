{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell,
             ExistentialQuantification #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.VertexAttrib64Bit
-- Copyright   :  (c) Sven Panne 2014
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the ARB_vertex_attrib_64bit extension, see
-- <http://www.opengl.org/registry/specs/ARB/vertex_attrib_64bit.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.VertexAttrib64Bit (
   -- * Functions
   glVertexAttribL1d,
   glVertexAttribL2d,
   glVertexAttribL3d,
   glVertexAttribL4d,
   glVertexAttribL1dv,
   glVertexAttribL2dv,
   glVertexAttribL3dv,
   glVertexAttribL4dv,
   glVertexAttribLPointer,
   glGetVertexAttribLdv,

   -- * Tokens
   gl_RGB32I,
   gl_DOUBLE_VEC2,
   gl_DOUBLE_VEC3,
   gl_DOUBLE_VEC4,
   gl_DOUBLE_MAT2,
   gl_DOUBLE_MAT3,
   gl_DOUBLE_MAT4,
   gl_DOUBLE_MAT2x3,
   gl_DOUBLE_MAT2x4,
   gl_DOUBLE_MAT3x2,
   gl_DOUBLE_MAT3x4,
   gl_DOUBLE_MAT4x2,
   gl_DOUBLE_MAT4x3
) where

import Foreign.C.Types
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.ARB.GPUShaderFP64
import Graphics.Rendering.OpenGL.Raw.Core31.Tokens
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

--------------------------------------------------------------------------------

extensionNameString :: String
extensionNameString = "GL_ARB_vertex_attrib_64bit"

extensionEntry "glVertexAttribL1d" [t| GLuint -> GLdouble -> IO () |]
extensionEntry "glVertexAttribL2d" [t| GLuint -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertexAttribL3d" [t| GLuint -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertexAttribL4d" [t| GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertexAttribL1dv" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttribL2dv" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttribL3dv" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttribL4dv" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttribLPointer" [t| forall a . GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glGetVertexAttribLdv" [t| GLuint -> GLenum -> Ptr GLdouble -> IO () |]
