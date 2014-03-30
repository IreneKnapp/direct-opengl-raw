{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.NV.GPUProgram4
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the NV_gpu_program4 extension, see
-- <http://www.opengl.org/registry/specs/NV/gpu_program4.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.NV.GPUProgram4 (
   -- * Functions
   glProgramLocalParameterI4i,
   glProgramLocalParameterI4iv,
   glProgramLocalParametersI4iv,
   glProgramLocalParameterI4ui,
   glProgramLocalParameterI4uiv,
   glProgramLocalParametersI4uiv,
   glProgramEnvParameterI4i,
   glProgramEnvParameterI4iv,
   glProgramEnvParametersI4iv,
   glProgramEnvParameterI4ui,
   glProgramEnvParameterI4uiv,
   glProgramEnvParametersI4uiv,
   glGetProgramLocalParameterIiv,
   glGetProgramLocalParameterIuiv,
   glGetProgramEnvParameterIiv,
   glGetProgramEnvParameterIuiv,
   -- * Tokens
   gl_MIN_PROGRAM_TEXEL_OFFSET,
   gl_MAX_PROGRAM_TEXEL_OFFSET,
   gl_PROGRAM_ATTRIB_COMPONENTS,
   gl_PROGRAM_RESULT_COMPONENTS,
   gl_MAX_PROGRAM_ATTRIB_COMPONENTS,
   gl_MAX_PROGRAM_RESULT_COMPONENTS,
   gl_MAX_PROGRAM_GENERIC_ATTRIBS,
   gl_MAX_PROGRAM_GENERIC_RESULTS
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_NV_gpu_program4"

extensionEntry "glProgramLocalParameterI4i" [t| GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glProgramLocalParameterI4iv" [t| GLenum -> GLuint -> Ptr GLint -> IO () |]
extensionEntry "glProgramLocalParametersI4iv" [t| GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glProgramLocalParameterI4ui" [t| GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glProgramLocalParameterI4uiv" [t| GLenum -> GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glProgramLocalParametersI4uiv" [t| GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glProgramEnvParameterI4i" [t| GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glProgramEnvParameterI4iv" [t| GLenum -> GLuint -> Ptr GLint -> IO () |]
extensionEntry "glProgramEnvParametersI4iv" [t| GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glProgramEnvParameterI4ui" [t| GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glProgramEnvParameterI4uiv" [t| GLenum -> GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glProgramEnvParametersI4uiv" [t| GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGetProgramLocalParameterIiv" [t| GLenum -> GLuint -> Ptr GLint -> IO () |]
extensionEntry "glGetProgramLocalParameterIuiv" [t| GLenum -> GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glGetProgramEnvParameterIiv" [t| GLenum -> GLuint -> Ptr GLint -> IO () |]
extensionEntry "glGetProgramEnvParameterIuiv" [t| GLenum -> GLuint -> Ptr GLuint -> IO () |]

gl_PROGRAM_ATTRIB_COMPONENTS :: GLenum
gl_PROGRAM_ATTRIB_COMPONENTS = 0x8906

gl_PROGRAM_RESULT_COMPONENTS :: GLenum
gl_PROGRAM_RESULT_COMPONENTS = 0x8907

gl_MAX_PROGRAM_ATTRIB_COMPONENTS :: GLenum
gl_MAX_PROGRAM_ATTRIB_COMPONENTS = 0x8908

gl_MAX_PROGRAM_RESULT_COMPONENTS :: GLenum
gl_MAX_PROGRAM_RESULT_COMPONENTS = 0x8909

gl_MAX_PROGRAM_GENERIC_ATTRIBS :: GLenum
gl_MAX_PROGRAM_GENERIC_ATTRIBS = 0x8DA5

gl_MAX_PROGRAM_GENERIC_RESULTS :: GLenum
gl_MAX_PROGRAM_GENERIC_RESULTS = 0x8DA6
      
