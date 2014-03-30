{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.SamplerObjects
-- Copyright   :  (c) Sven Panne 2014
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the ARB_sampler_objects extension, see
-- <http://www.opengl.org/registry/specs/ARB/sampler_objects.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.SamplerObjects (
   -- * Functions
   glGenSamplers,
   glDeleteSamplers,
   glIsSampler,
   glBindSampler,
   glSamplerParameteri,
   glSamplerParameteriv,
   glSamplerParameterf,
   glSamplerParameterfv,
   glSamplerParameterIiv,
   glSamplerParameterIuiv,
   glGetSamplerParameteriv,
   glGetSamplerParameterIiv,
   glGetSamplerParameterfv,
   glGetSamplerParameterIuiv,

   -- * Tokens
   gl_SAMPLER_BINDING
) where

import Foreign.C.Types
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

--------------------------------------------------------------------------------

extensionNameString :: String
extensionNameString = "GL_ARB_sampler_objects"

extensionEntry "glGenSamplers" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glDeleteSamplers" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glIsSampler" [t| GLuint -> IO GLboolean |]
extensionEntry "glBindSampler" [t| GLuint -> GLuint -> IO () |]
extensionEntry "glSamplerParameteri" [t| GLuint -> GLenum -> GLint -> IO () |]
extensionEntry "glSamplerParameteriv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glSamplerParameterf" [t| GLuint -> GLenum -> GLfloat -> IO () |]
extensionEntry "glSamplerParameterfv" [t| GLuint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glSamplerParameterIiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glSamplerParameterIuiv" [t| GLuint -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glGetSamplerParameteriv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetSamplerParameterIiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetSamplerParameterfv" [t| GLuint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetSamplerParameterIuiv" [t| GLuint -> GLenum -> Ptr GLuint -> IO () |]

gl_SAMPLER_BINDING :: GLenum
gl_SAMPLER_BINDING = 0x8919
