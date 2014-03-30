{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.GPUShaderFP64
-- Copyright   :  (c) Sven Panne 2014
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the ARB_gpu_shader_fp64 extension, see
-- <http://www.opengl.org/registry/specs/ARB/gpu_shader_fp64.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.GPUShaderFP64 (
   -- * Functions
   glUniform1d,
   glUniform2d,
   glUniform3d,
   glUniform4d,
   glUniform1dv,
   glUniform2dv,
   glUniform3dv,
   glUniform4dv,
   glUniformMatrix2dv,
   glUniformMatrix3dv,
   glUniformMatrix4dv,
   glUniformMatrix2x3dv,
   glUniformMatrix2x4dv,
   glUniformMatrix3x2dv,
   glUniformMatrix3x4dv,
   glUniformMatrix4x2dv,
   glUniformMatrix4x3dv,
   glGetUniformdv,

   -- * Tokens
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
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

--------------------------------------------------------------------------------

extensionNameString :: String
extensionNameString = "GL_ARB_gpu_shader_fp64"

extensionEntry "glUniform1d" [t| GLint -> GLdouble -> IO () |]
extensionEntry "glUniform2d" [t| GLint -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glUniform3d" [t| GLint -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glUniform4d" [t| GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glUniform1dv" [t| GLint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glUniform2dv" [t| GLint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glUniform3dv" [t| GLint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glUniform4dv" [t| GLint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glUniformMatrix2dv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glUniformMatrix3dv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glUniformMatrix4dv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glUniformMatrix2x3dv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glUniformMatrix2x4dv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glUniformMatrix3x2dv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glUniformMatrix3x4dv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glUniformMatrix4x2dv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glUniformMatrix4x3dv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glGetUniformdv" [t| GLuint -> GLint -> Ptr GLdouble -> IO () |]

gl_DOUBLE_VEC2 :: GLenum
gl_DOUBLE_VEC2 = 0x8FFC

gl_DOUBLE_VEC3 :: GLenum
gl_DOUBLE_VEC3 = 0x8FFD

gl_DOUBLE_VEC4 :: GLenum
gl_DOUBLE_VEC4 = 0x8FFE

gl_DOUBLE_MAT2 :: GLenum
gl_DOUBLE_MAT2 = 0x8F46

gl_DOUBLE_MAT3 :: GLenum
gl_DOUBLE_MAT3 = 0x8F47

gl_DOUBLE_MAT4 :: GLenum
gl_DOUBLE_MAT4 = 0x8F48

gl_DOUBLE_MAT2x3 :: GLenum
gl_DOUBLE_MAT2x3 = 0x8F49

gl_DOUBLE_MAT2x4 :: GLenum
gl_DOUBLE_MAT2x4 = 0x8F4A

gl_DOUBLE_MAT3x2 :: GLenum
gl_DOUBLE_MAT3x2 = 0x8F4B

gl_DOUBLE_MAT3x4 :: GLenum
gl_DOUBLE_MAT3x4 = 0x8F4C

gl_DOUBLE_MAT4x2 :: GLenum
gl_DOUBLE_MAT4x2 = 0x8F4D

gl_DOUBLE_MAT4x3 :: GLenum
gl_DOUBLE_MAT4x3 = 0x8F4E
