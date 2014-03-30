{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.SeparateShaderObjects
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the separate_shader_objects, see
-- <http://www.opengl.org/registry/specs/ARB/separate_shader_objects.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.SeparateShaderObjects (
   -- * Functions
   glUseProgramStages,
   glActiveShaderProgram,
   glCreateShaderProgramv,
   glBindProgramPipeline,
   glDeleteProgramPipelines,
   glGenProgramPipelines,
   glIsProgramPipeline,
   glGetProgramPipelineiv,
   glProgramUniform1i,
   glProgramUniform1iv,
   glProgramUniform1f,
   glProgramUniform1fv,
   glProgramUniform1d,
   glProgramUniform1dv,
   glProgramUniform1ui,
   glProgramUniform1uiv,
   glProgramUniform2i,
   glProgramUniform2iv,
   glProgramUniform2f,
   glProgramUniform2fv,
   glProgramUniform2d,
   glProgramUniform2dv,
   glProgramUniform2ui,
   glProgramUniform2uiv,
   glProgramUniform3i,
   glProgramUniform3iv,
   glProgramUniform3f,
   glProgramUniform3fv,
   glProgramUniform3d,
   glProgramUniform3dv,
   glProgramUniform3ui,
   glProgramUniform3uiv,
   glProgramUniform4i,
   glProgramUniform4iv,
   glProgramUniform4f,
   glProgramUniform4fv,
   glProgramUniform4d,
   glProgramUniform4dv,
   glProgramUniform4ui,
   glProgramUniform4uiv,
   glProgramUniformMatrix2fv,
   glProgramUniformMatrix3fv,
   glProgramUniformMatrix4fv,
   glProgramUniformMatrix2dv,
   glProgramUniformMatrix3dv,
   glProgramUniformMatrix4dv,
   glProgramUniformMatrix2x3fv,
   glProgramUniformMatrix3x2fv,
   glProgramUniformMatrix2x4fv,
   glProgramUniformMatrix4x2fv,
   glProgramUniformMatrix3x4fv,
   glProgramUniformMatrix4x3fv,
   glProgramUniformMatrix2x3dv,
   glProgramUniformMatrix3x2dv,
   glProgramUniformMatrix2x4dv,
   glProgramUniformMatrix4x2dv,
   glProgramUniformMatrix3x4dv,
   glProgramUniformMatrix4x3dv,
   glValidateProgramPipeline,
   glGetProgramPipelineInfoLog,

   -- * Tokens
   gl_VERTEX_SHADER_BIT,
   gl_FRAGMENT_SHADER_BIT,
   gl_GEOMETRY_SHADER_BIT,
   gl_TESS_CONTROL_SHADER_BIT,
   gl_TESS_EVALUATION_SHADER_BIT,
   gl_ALL_SHADER_BITS,
   gl_PROGRAM_SEPARABLE,
   gl_ACTIVE_PROGRAM,
   gl_PROGRAM_PIPELINE_BINDING
) where

import Foreign.C.Types
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_separate_shader_objects"

extensionEntry "glUseProgramStages" [t| GLuint -> GLbitfield -> GLuint -> IO () |]
extensionEntry "glActiveShaderProgram" [t| GLuint -> GLuint -> IO () |]
extensionEntry "glCreateShaderProgramv" [t| GLenum -> GLsizei -> Ptr (Ptr GLchar) -> IO GLuint |]
extensionEntry "glBindProgramPipeline" [t| GLuint -> IO () |]
extensionEntry "glDeleteProgramPipelines" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGenProgramPipelines" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glIsProgramPipeline" [t| GLuint -> IO GLboolean |]
extensionEntry "glGetProgramPipelineiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glProgramUniform1i" [t| GLuint -> GLint -> GLint -> IO () |]
extensionEntry "glProgramUniform1iv" [t| GLuint -> GLint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glProgramUniform1f" [t| GLuint -> GLint -> GLfloat -> IO () |]
extensionEntry "glProgramUniform1fv" [t| GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniform1d" [t| GLuint -> GLint -> GLdouble -> IO () |]
extensionEntry "glProgramUniform1dv" [t| GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniform1ui" [t| GLuint -> GLint -> GLuint -> IO () |]
extensionEntry "glProgramUniform1uiv" [t| GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glProgramUniform2i" [t| GLuint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glProgramUniform2iv" [t| GLuint -> GLint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glProgramUniform2f" [t| GLuint -> GLint -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glProgramUniform2fv" [t| GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniform2d" [t| GLuint -> GLint -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glProgramUniform2dv" [t| GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniform2ui" [t| GLuint -> GLint -> GLuint -> GLuint -> IO () |]
extensionEntry "glProgramUniform2uiv" [t| GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glProgramUniform3i" [t| GLuint -> GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glProgramUniform3iv" [t| GLuint -> GLint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glProgramUniform3f" [t| GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glProgramUniform3fv" [t| GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniform3d" [t| GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glProgramUniform3dv" [t| GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniform3ui" [t| GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glProgramUniform3uiv" [t| GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glProgramUniform4i" [t| GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glProgramUniform4iv" [t| GLuint -> GLint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glProgramUniform4f" [t| GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glProgramUniform4fv" [t| GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniform4d" [t| GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glProgramUniform4dv" [t| GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniform4ui" [t| GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glProgramUniform4uiv" [t| GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glProgramUniformMatrix2fv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniformMatrix3fv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniformMatrix4fv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniformMatrix2dv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniformMatrix3dv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniformMatrix4dv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniformMatrix2x3fv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniformMatrix3x2fv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniformMatrix2x4fv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniformMatrix4x2fv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniformMatrix3x4fv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniformMatrix4x3fv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramUniformMatrix2x3dv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniformMatrix3x2dv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniformMatrix2x4dv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniformMatrix4x2dv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniformMatrix3x4dv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramUniformMatrix4x3dv" [t| GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO () |]
extensionEntry "glValidateProgramPipeline" [t| GLuint -> IO () |]
extensionEntry "glGetProgramPipelineInfoLog" [t| GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO () |]

gl_VERTEX_SHADER_BIT :: GLbitfield
gl_VERTEX_SHADER_BIT = 0x00000001

gl_FRAGMENT_SHADER_BIT :: GLbitfield
gl_FRAGMENT_SHADER_BIT = 0x00000002

gl_GEOMETRY_SHADER_BIT :: GLbitfield
gl_GEOMETRY_SHADER_BIT = 0x00000004

gl_TESS_CONTROL_SHADER_BIT :: GLbitfield
gl_TESS_CONTROL_SHADER_BIT = 0x00000008

gl_TESS_EVALUATION_SHADER_BIT :: GLbitfield
gl_TESS_EVALUATION_SHADER_BIT = 0x00000010

gl_ALL_SHADER_BITS :: GLbitfield
gl_ALL_SHADER_BITS = 0xFFFFFFFF

gl_PROGRAM_SEPARABLE :: GLenum
gl_PROGRAM_SEPARABLE = 0x8258

gl_ACTIVE_PROGRAM :: GLenum
gl_ACTIVE_PROGRAM = 0x8259

gl_PROGRAM_PIPELINE_BINDING :: GLenum
gl_PROGRAM_PIPELINE_BINDING = 0x825A
