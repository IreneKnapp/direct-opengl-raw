{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell,
             ExistentialQuantification #-}
{-# OPTIONS_HADDOCK hide #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.Core31.Functions
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions from the OpenGL 3.1 core, see
-- <http://www.opengl.org/registry/>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.Core31.Functions (
   glActiveTexture,
   glAttachShader,
   glBeginConditionalRender,
   glBeginQuery,
   glBeginTransformFeedback,
   glBindAttribLocation,
   glBindBuffer,
   glBindFragDataLocation,
   glBindFramebuffer,
   glBindRenderbuffer,
   glBindTexture,
   glBindVertexArray,
   glBlendColor,
   glBlendEquation,
   glBlendEquationSeparate,
   glBlendFunc,
   glBlendFuncSeparate,
   glBlitFramebuffer,
   glBufferData,
   glBufferSubData,
   glCheckFramebufferStatus,
   glClampColor,
   glClear,
   glClearBufferfi,
   glClearBufferfv,
   glClearBufferiv,
   glClearBufferuiv,
   glClearColor,
   glClearDepth,
   glClearStencil,
   glColorMask,
   glColorMaski,
   glCompileShader,
   glCompressedTexImage1D,
   glCompressedTexImage2D,
   glCompressedTexImage3D,
   glCompressedTexSubImage1D,
   glCompressedTexSubImage2D,
   glCompressedTexSubImage3D,
   glCopyTexImage1D,
   glCopyTexImage2D,
   glCopyTexSubImage1D,
   glCopyTexSubImage2D,
   glCopyTexSubImage3D,
   glCreateProgram,
   glCreateShader,
   glCullFace,
   glDeleteBuffers,
   glDeleteFramebuffers,
   glDeleteProgram,
   glDeleteQueries,
   glDeleteRenderbuffers,
   glDeleteShader,
   glDeleteTextures,
   glDeleteVertexArrays,
   glDepthFunc,
   glDepthMask,
   glDepthRange,
   glDetachShader,
   glDisable,
   glDisableVertexAttribArray,
   glDisablei,
   glDrawArrays,
   glDrawBuffer,
   glDrawBuffers,
   glDrawElements,
   glDrawRangeElements,
   glEnable,
   glEnableVertexAttribArray,
   glEnablei,
   glEndConditionalRender,
   glEndQuery,
   glEndTransformFeedback,
   glFinish,
   glFlush,
   glFlushMappedBufferRange,
   glFramebufferRenderbuffer,
   glFramebufferTexture1D,
   glFramebufferTexture2D,
   glFramebufferTexture3D,
   glFramebufferTextureLayer,
   glFrontFace,
   glGenBuffers,
   glGenFramebuffers,
   glGenQueries,
   glGenRenderbuffers,
   glGenTextures,
   glGenVertexArrays,
   glGenerateMipmap,
   glGetActiveAttrib,
   glGetActiveUniform,
   glGetAttachedShaders,
   glGetAttribLocation,
   glGetBooleani_v,
   glGetBooleanv,
   glGetBufferParameteriv,
   glGetBufferPointerv,
   glGetBufferSubData,
   glGetCompressedTexImage,
   glGetDoublev,
   glGetError,
   glGetFloatv,
   glGetFragDataLocation,
   glGetFramebufferAttachmentParameteriv,
   glGetIntegerv,
   glGetPointerv,
   glGetProgramInfoLog,
   glGetProgramiv,
   glGetQueryObjectiv,
   glGetQueryObjectuiv,
   glGetQueryiv,
   glGetRenderbufferParameteriv,
   glGetShaderInfoLog,
   glGetShaderSource,
   glGetShaderiv,
   glGetString,
   glGetStringi,
   glGetTexImage,
   glGetTexLevelParameterfv,
   glGetTexLevelParameteriv,
   glGetTexParameterIiv,
   glGetTexParameterIuiv,
   glGetTexParameterfv,
   glGetTexParameteriv,
   glGetTransformFeedbackVarying,
   glGetUniformLocation,
   glGetUniformfv,
   glGetUniformiv,
   glGetUniformuiv,
   glGetVertexAttribIiv,
   glGetVertexAttribIuiv,
   glGetVertexAttribPointerv,
   glGetVertexAttribdv,
   glGetVertexAttribfv,
   glGetVertexAttribiv,
   glHint,
   glIsBuffer,
   glIsEnabled,
   glIsEnabledi,
   glIsFramebuffer,
   glIsProgram,
   glIsQuery,
   glIsRenderbuffer,
   glIsShader,
   glIsTexture,
   glIsVertexArray,
   glLineWidth,
   glLinkProgram,
   glLogicOp,
   glMapBuffer,
   glMapBufferRange,
   glMultiDrawArrays,
   glMultiDrawElements,
   glPixelStoref,
   glPixelStorei,
   glPointParameterf,
   glPointParameterfv,
   glPointParameteri,
   glPointParameteriv,
   glPointSize,
   glPolygonMode,
   glPolygonOffset,
   glPrimitiveRestartIndex,
   glReadBuffer,
   glReadPixels,
   glRenderbufferStorage,
   glRenderbufferStorageMultisample,
   glSampleCoverage,
   glScissor,
   glShaderSource,
   glStencilFunc,
   glStencilFuncSeparate,
   glStencilMask,
   glStencilMaskSeparate,
   glStencilOp,
   glStencilOpSeparate,
   glTexImage1D,
   glTexImage2D,
   glTexImage3D,
   glTexParameterIiv,
   glTexParameterIuiv,
   glTexParameterf,
   glTexParameterfv,
   glTexParameteri,
   glTexParameteriv,
   glTexSubImage1D,
   glTexSubImage2D,
   glTexSubImage3D,
   glTransformFeedbackVaryings,
   glUniform1f,
   glUniform1fv,
   glUniform1i,
   glUniform1iv,
   glUniform1ui,
   glUniform1uiv,
   glUniform2f,
   glUniform2fv,
   glUniform2i,
   glUniform2iv,
   glUniform2ui,
   glUniform2uiv,
   glUniform3f,
   glUniform3fv,
   glUniform3i,
   glUniform3iv,
   glUniform3ui,
   glUniform3uiv,
   glUniform4f,
   glUniform4fv,
   glUniform4i,
   glUniform4iv,
   glUniform4ui,
   glUniform4uiv,
   glUniformMatrix2fv,
   glUniformMatrix2x3fv,
   glUniformMatrix2x4fv,
   glUniformMatrix3fv,
   glUniformMatrix3x2fv,
   glUniformMatrix3x4fv,
   glUniformMatrix4fv,
   glUniformMatrix4x2fv,
   glUniformMatrix4x3fv,
   glUnmapBuffer,
   glUseProgram,
   glValidateProgram,
   glVertexAttrib1d,
   glVertexAttrib1dv,
   glVertexAttrib1f,
   glVertexAttrib1fv,
   glVertexAttrib1s,
   glVertexAttrib1sv,
   glVertexAttrib2d,
   glVertexAttrib2dv,
   glVertexAttrib2f,
   glVertexAttrib2fv,
   glVertexAttrib2s,
   glVertexAttrib2sv,
   glVertexAttrib3d,
   glVertexAttrib3dv,
   glVertexAttrib3f,
   glVertexAttrib3fv,
   glVertexAttrib3s,
   glVertexAttrib3sv,
   glVertexAttrib4Nbv,
   glVertexAttrib4Niv,
   glVertexAttrib4Nsv,
   glVertexAttrib4Nub,
   glVertexAttrib4Nubv,
   glVertexAttrib4Nuiv,
   glVertexAttrib4Nusv,
   glVertexAttrib4bv,
   glVertexAttrib4d,
   glVertexAttrib4dv,
   glVertexAttrib4f,
   glVertexAttrib4fv,
   glVertexAttrib4iv,
   glVertexAttrib4s,
   glVertexAttrib4sv,
   glVertexAttrib4ubv,
   glVertexAttrib4uiv,
   glVertexAttrib4usv,
   glVertexAttribI1i,
   glVertexAttribI1iv,
   glVertexAttribI1ui,
   glVertexAttribI1uiv,
   glVertexAttribI2i,
   glVertexAttribI2iv,
   glVertexAttribI2ui,
   glVertexAttribI2uiv,
   glVertexAttribI3i,
   glVertexAttribI3iv,
   glVertexAttribI3ui,
   glVertexAttribI3uiv,
   glVertexAttribI4bv,
   glVertexAttribI4i,
   glVertexAttribI4iv,
   glVertexAttribI4sv,
   glVertexAttribI4ubv,
   glVertexAttribI4ui,
   glVertexAttribI4uiv,
   glVertexAttribI4usv,
   glVertexAttribIPointer,
   glVertexAttribPointer,
   glViewport
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "OpenGL 3.1"

extensionEntry "glActiveTexture" [t| GLenum -> IO () |]
extensionEntry "glAttachShader" [t| GLuint -> GLuint -> IO () |]
extensionEntry "glBeginConditionalRender" [t| GLuint -> GLenum -> IO () |]
extensionEntry "glBeginQuery" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glBeginTransformFeedback" [t| GLenum -> IO () |]
extensionEntry "glBindAttribLocation" [t| GLuint -> GLuint -> Ptr GLchar -> IO () |]
extensionEntry "glBindBuffer" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glBindFragDataLocation" [t| GLuint -> GLuint -> Ptr GLchar -> IO () |]
extensionEntry "glBindFramebuffer" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glBindRenderbuffer" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glBindTexture" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glBindVertexArray" [t| GLuint -> IO () |]
extensionEntry "glBlendColor" [t| GLclampf -> GLclampf -> GLclampf -> GLclampf -> IO () |]
extensionEntry "glBlendEquation" [t| GLenum -> IO () |]
extensionEntry "glBlendEquationSeparate" [t| GLenum -> GLenum -> IO () |]
extensionEntry "glBlendFunc" [t| GLenum -> GLenum -> IO () |]
extensionEntry "glBlendFuncSeparate" [t| GLenum -> GLenum -> GLenum -> GLenum -> IO () |]
extensionEntry "glBlitFramebuffer" [t| GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO () |]
extensionEntry "glBufferData" [t| forall a . GLenum -> GLsizeiptr -> Ptr a -> GLenum -> IO () |]
extensionEntry "glBufferSubData" [t| forall a . GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO () |]
extensionEntry "glCheckFramebufferStatus" [t| GLenum -> IO GLenum |]
extensionEntry "glClampColor" [t| GLenum -> GLenum -> IO () |]
extensionEntry "glClear" [t| GLbitfield -> IO () |]
extensionEntry "glClearBufferfi" [t| GLenum -> GLint -> GLfloat -> GLint -> IO () |]
extensionEntry "glClearBufferfv" [t| GLenum -> GLint -> Ptr GLfloat -> IO () |]
extensionEntry "glClearBufferiv" [t| GLenum -> GLint -> Ptr GLint -> IO () |]
extensionEntry "glClearBufferuiv" [t| GLenum -> GLint -> Ptr GLuint -> IO () |]
extensionEntry "glClearColor" [t| GLclampf -> GLclampf -> GLclampf -> GLclampf -> IO () |]
extensionEntry "glClearDepth" [t| GLclampd -> IO () |]
extensionEntry "glClearStencil" [t| GLint -> IO () |]
extensionEntry "glColorMask" [t| GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO () |]
extensionEntry "glColorMaski" [t| GLuint -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO () |]
extensionEntry "glCompileShader" [t| GLuint -> IO () |]
extensionEntry "glCompressedTexImage1D" [t| forall a . GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTexImage2D" [t| forall a . GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTexImage3D" [t| forall a . GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTexSubImage1D" [t| forall a .  GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTexSubImage2D" [t| forall a . GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTexSubImage3D" [t| forall a . GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCopyTexImage1D" [t| GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO () |]
extensionEntry "glCopyTexImage2D" [t| GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO () |]
extensionEntry "glCopyTexSubImage1D" [t| GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO () |]
extensionEntry "glCopyTexSubImage2D" [t| GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glCopyTexSubImage3D" [t| GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glCreateProgram" [t| IO GLuint |]
extensionEntry "glCreateShader" [t| GLenum -> IO GLuint |]
extensionEntry "glCullFace" [t| GLenum -> IO () |]
extensionEntry "glDeleteBuffers" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glDeleteFramebuffers" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glDeleteProgram" [t| GLuint -> IO () |]
extensionEntry "glDeleteQueries" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glDeleteRenderbuffers" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glDeleteShader" [t| GLuint -> IO () |]
extensionEntry "glDeleteTextures" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glDeleteVertexArrays" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glDepthFunc" [t| GLenum -> IO () |]
extensionEntry "glDepthMask" [t| GLboolean -> IO () |]
extensionEntry "glDepthRange" [t| GLclampd -> GLclampd -> IO () |]
extensionEntry "glDetachShader" [t| GLuint -> GLuint -> IO () |]
extensionEntry "glDisable" [t| GLenum -> IO () |]
extensionEntry "glDisableVertexAttribArray" [t| GLuint -> IO () |]
extensionEntry "glDisablei" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glDrawArrays" [t| GLenum -> GLint -> GLsizei -> IO () |]
extensionEntry "glDrawBuffer" [t| GLenum -> IO () |]
extensionEntry "glDrawBuffers" [t| GLsizei -> Ptr GLenum -> IO () |]
extensionEntry "glDrawElements" [t| forall a . GLenum -> GLsizei -> GLenum -> Ptr a -> IO () |]
extensionEntry "glDrawRangeElements" [t| forall a . GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> IO () |]
extensionEntry "glEnable" [t| GLenum -> IO () |]
extensionEntry "glEnableVertexAttribArray" [t| GLuint -> IO () |]
extensionEntry "glEnablei" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glEndConditionalRender" [t| IO () |]
extensionEntry "glEndQuery" [t| GLenum -> IO () |]
extensionEntry "glEndTransformFeedback" [t| IO () |]
extensionEntry "glFinish" [t| IO () |]
extensionEntry "glFlush" [t| IO () |]
extensionEntry "glFlushMappedBufferRange" [t| GLenum -> GLintptr -> GLsizeiptr -> IO () |]
extensionEntry "glFramebufferRenderbuffer" [t| GLenum -> GLenum -> GLenum -> GLuint -> IO () |]
extensionEntry "glFramebufferTexture1D" [t| GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO () |]
extensionEntry "glFramebufferTexture2D" [t| GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO () |]
extensionEntry "glFramebufferTexture3D" [t| GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO () |]
extensionEntry "glFramebufferTextureLayer" [t| GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO () |]
extensionEntry "glFrontFace" [t| GLenum -> IO () |]
extensionEntry "glGenBuffers" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGenFramebuffers" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGenQueries" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGenRenderbuffers" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGenTextures" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGenVertexArrays" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGenerateMipmap" [t| GLenum -> IO () |]
extensionEntry "glGetActiveAttrib" [t| GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO () |]
extensionEntry "glGetActiveUniform" [t| GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO () |]
extensionEntry "glGetAttachedShaders" [t| GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGetAttribLocation" [t| GLuint -> Ptr GLchar -> IO GLint |]
extensionEntry "glGetBooleani_v" [t| GLenum -> GLuint -> Ptr GLboolean -> IO () |]
extensionEntry "glGetBooleanv" [t| GLenum -> Ptr GLboolean -> IO () |]
extensionEntry "glGetBufferParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetBufferPointerv" [t| forall a . GLenum -> GLenum -> Ptr (Ptr a) -> IO () |]
extensionEntry "glGetBufferSubData" [t| forall a . GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO () |]
extensionEntry "glGetCompressedTexImage" [t| forall a . GLenum -> GLint -> Ptr a -> IO () |]
extensionEntry "glGetDoublev" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glGetError" [t| IO GLenum |]
extensionEntry "glGetFloatv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetFragDataLocation" [t| GLuint -> Ptr GLchar -> IO GLint |]
extensionEntry "glGetFramebufferAttachmentParameteriv" [t| GLenum -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetIntegerv" [t| GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetPointerv" [t| forall a . GLenum -> Ptr (Ptr a) -> IO () |]
extensionEntry "glGetProgramInfoLog" [t| GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO () |]
extensionEntry "glGetProgramiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetQueryObjectiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetQueryObjectuiv" [t| GLuint -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glGetQueryiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetRenderbufferParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetShaderInfoLog" [t| GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO () |]
extensionEntry "glGetShaderSource" [t| GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO () |]
extensionEntry "glGetShaderiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetString" [t| GLenum -> IO (Ptr GLubyte) |]
extensionEntry "glGetStringi" [t| GLenum -> GLuint -> IO (Ptr GLubyte) |]
extensionEntry "glGetTexImage" [t| forall a . GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glGetTexLevelParameterfv" [t| GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetTexLevelParameteriv" [t| GLenum -> GLint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetTexParameterIiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetTexParameterIuiv" [t| GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glGetTexParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetTexParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetTransformFeedbackVarying" [t| GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO () |]
extensionEntry "glGetUniformLocation" [t| GLuint -> Ptr GLchar -> IO GLint |]
extensionEntry "glGetUniformfv" [t| GLuint -> GLint -> Ptr GLfloat -> IO () |]
extensionEntry "glGetUniformiv" [t| GLuint -> GLint -> Ptr GLint -> IO () |]
extensionEntry "glGetUniformuiv" [t| GLuint -> GLint -> Ptr GLuint -> IO () |]
extensionEntry "glGetVertexAttribIiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetVertexAttribIuiv" [t| GLuint -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glGetVertexAttribPointerv" [t| forall a . GLuint -> GLenum -> Ptr (Ptr a) -> IO () |]
extensionEntry "glGetVertexAttribdv" [t| GLuint -> GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glGetVertexAttribfv" [t| GLuint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetVertexAttribiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glHint" [t| GLenum -> GLenum -> IO () |]
extensionEntry "glIsBuffer" [t| GLuint -> IO GLboolean |]
extensionEntry "glIsEnabled" [t| GLenum -> IO GLboolean |]
extensionEntry "glIsEnabledi" [t| GLenum -> GLuint -> IO GLboolean |]
extensionEntry "glIsFramebuffer" [t| GLuint -> IO GLboolean |]
extensionEntry "glIsProgram" [t| GLuint -> IO GLboolean |]
extensionEntry "glIsQuery" [t| GLuint -> IO GLboolean |]
extensionEntry "glIsRenderbuffer" [t| GLuint -> IO GLboolean |]
extensionEntry "glIsShader" [t| GLuint -> IO GLboolean |]
extensionEntry "glIsTexture" [t| GLuint -> IO GLboolean |]
extensionEntry "glIsVertexArray" [t| GLuint -> IO GLboolean |]
extensionEntry "glLineWidth" [t| GLfloat -> IO () |]
extensionEntry "glLinkProgram" [t| GLuint -> IO () |]
extensionEntry "glLogicOp" [t| GLenum -> IO () |]
extensionEntry "glMapBuffer" [t| forall a . GLenum -> GLenum -> IO (Ptr a) |]
extensionEntry "glMapBufferRange" [t| forall a . GLenum -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr a) |]
extensionEntry "glMultiDrawArrays" [t| GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO () |]
extensionEntry "glMultiDrawElements" [t| forall a . GLenum -> Ptr GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> IO () |]
extensionEntry "glPixelStoref" [t| GLenum -> GLfloat -> IO () |]
extensionEntry "glPixelStorei" [t| GLenum -> GLint -> IO () |]
extensionEntry "glPointParameterf" [t| GLenum -> GLfloat -> IO () |]
extensionEntry "glPointParameterfv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glPointParameteri" [t| GLenum -> GLint -> IO () |]
extensionEntry "glPointParameteriv" [t| GLenum -> Ptr GLint -> IO () |]
extensionEntry "glPointSize" [t| GLfloat -> IO () |]
extensionEntry "glPolygonMode" [t| GLenum -> GLenum -> IO () |]
extensionEntry "glPolygonOffset" [t| GLfloat -> GLfloat -> IO () |]
extensionEntry "glPrimitiveRestartIndex" [t| GLuint -> IO () |]
extensionEntry "glReadBuffer" [t| GLenum -> IO () |]
extensionEntry "glReadPixels" [t| forall a . GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glRenderbufferStorage" [t| GLenum -> GLenum -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glRenderbufferStorageMultisample" [t| GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glSampleCoverage" [t| GLclampf -> GLboolean -> IO () |]
extensionEntry "glScissor" [t| GLint -> GLint -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glShaderSource" [t| GLuint -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO () |]
extensionEntry "glStencilFunc" [t| GLenum -> GLint -> GLuint -> IO () |]
extensionEntry "glStencilFuncSeparate" [t| GLenum -> GLenum -> GLint -> GLuint -> IO () |]
extensionEntry "glStencilMask" [t| GLuint -> IO () |]
extensionEntry "glStencilMaskSeparate" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glStencilOp" [t| GLenum -> GLenum -> GLenum -> IO () |]
extensionEntry "glStencilOpSeparate" [t| GLenum -> GLenum -> GLenum -> GLenum -> IO () |]
extensionEntry "glTexImage1D" [t| forall a . GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTexImage2D" [t| forall a . GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTexImage3D" [t| forall a . GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTexParameterIiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glTexParameterIuiv" [t| GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glTexParameterf" [t| GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glTexParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glTexParameteri" [t| GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glTexParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glTexSubImage1D" [t| forall a . GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTexSubImage2D" [t| forall a . GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTexSubImage3D" [t| forall a . GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTransformFeedbackVaryings" [t| GLuint -> GLsizei -> Ptr (Ptr GLchar) -> GLenum -> IO () |]
extensionEntry "glUniform1f" [t| GLint -> GLfloat -> IO () |]
extensionEntry "glUniform1fv" [t| GLint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glUniform1i" [t| GLint -> GLint -> IO () |]
extensionEntry "glUniform1iv" [t| GLint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glUniform1ui" [t| GLint -> GLuint -> IO () |]
extensionEntry "glUniform1uiv" [t| GLint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glUniform2f" [t| GLint -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glUniform2fv" [t| GLint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glUniform2i" [t| GLint -> GLint -> GLint -> IO () |]
extensionEntry "glUniform2iv" [t| GLint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glUniform2ui" [t| GLint -> GLuint -> GLuint -> IO () |]
extensionEntry "glUniform2uiv" [t| GLint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glUniform3f" [t| GLint -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glUniform3fv" [t| GLint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glUniform3i" [t| GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glUniform3iv" [t| GLint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glUniform3ui" [t| GLint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glUniform3uiv" [t| GLint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glUniform4f" [t| GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glUniform4fv" [t| GLint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glUniform4i" [t| GLint -> GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glUniform4iv" [t| GLint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glUniform4ui" [t| GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glUniform4uiv" [t| GLint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glUniformMatrix2fv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glUniformMatrix2x3fv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glUniformMatrix2x4fv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glUniformMatrix3fv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glUniformMatrix3x2fv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glUniformMatrix3x4fv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glUniformMatrix4fv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glUniformMatrix4x2fv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glUniformMatrix4x3fv" [t| GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO () |]
extensionEntry "glUnmapBuffer" [t| GLenum -> IO GLboolean |]
extensionEntry "glUseProgram" [t| GLuint -> IO () |]
extensionEntry "glValidateProgram" [t| GLuint -> IO () |]
extensionEntry "glVertexAttrib1d" [t| GLuint -> GLdouble -> IO () |]
extensionEntry "glVertexAttrib1dv" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttrib1f" [t| GLuint -> GLfloat -> IO () |]
extensionEntry "glVertexAttrib1fv" [t| GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttrib1s" [t| GLuint -> GLshort -> IO () |]
extensionEntry "glVertexAttrib1sv" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttrib2d" [t| GLuint -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertexAttrib2dv" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttrib2f" [t| GLuint -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertexAttrib2fv" [t| GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttrib2s" [t| GLuint -> GLshort -> GLshort -> IO () |]
extensionEntry "glVertexAttrib2sv" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttrib3d" [t| GLuint -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertexAttrib3dv" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttrib3f" [t| GLuint -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertexAttrib3fv" [t| GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttrib3s" [t| GLuint -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glVertexAttrib3sv" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttrib4Nbv" [t| GLuint -> Ptr GLbyte -> IO () |]
extensionEntry "glVertexAttrib4Niv" [t| GLuint -> Ptr GLint -> IO () |]
extensionEntry "glVertexAttrib4Nsv" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttrib4Nub" [t| GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO () |]
extensionEntry "glVertexAttrib4Nubv" [t| GLuint -> Ptr GLubyte -> IO () |]
extensionEntry "glVertexAttrib4Nuiv" [t| GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glVertexAttrib4Nusv" [t| GLuint -> Ptr GLushort -> IO () |]
extensionEntry "glVertexAttrib4bv" [t| GLuint -> Ptr GLbyte -> IO () |]
extensionEntry "glVertexAttrib4d" [t| GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertexAttrib4dv" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttrib4f" [t| GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertexAttrib4fv" [t| GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttrib4iv" [t| GLuint -> Ptr GLint -> IO () |]
extensionEntry "glVertexAttrib4s" [t| GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glVertexAttrib4sv" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttrib4ubv" [t| GLuint -> Ptr GLubyte -> IO () |]
extensionEntry "glVertexAttrib4uiv" [t| GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glVertexAttrib4usv" [t| GLuint -> Ptr GLushort -> IO () |]
extensionEntry "glVertexAttribI1i" [t| GLuint -> GLint -> IO () |]
extensionEntry "glVertexAttribI1iv" [t| GLuint -> Ptr GLint -> IO () |]
extensionEntry "glVertexAttribI1ui" [t| GLuint -> GLuint -> IO () |]
extensionEntry "glVertexAttribI1uiv" [t| GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glVertexAttribI2i" [t| GLuint -> GLint -> GLint -> IO () |]
extensionEntry "glVertexAttribI2iv" [t| GLuint -> Ptr GLint -> IO () |]
extensionEntry "glVertexAttribI2ui" [t| GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glVertexAttribI2uiv" [t| GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glVertexAttribI3i" [t| GLuint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glVertexAttribI3iv" [t| GLuint -> Ptr GLint -> IO () |]
extensionEntry "glVertexAttribI3ui" [t| GLuint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glVertexAttribI3uiv" [t| GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glVertexAttribI4bv" [t| GLuint -> Ptr GLbyte -> IO () |]
extensionEntry "glVertexAttribI4i" [t| GLuint -> GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glVertexAttribI4iv" [t| GLuint -> Ptr GLint -> IO () |]
extensionEntry "glVertexAttribI4sv" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttribI4ubv" [t| GLuint -> Ptr GLubyte -> IO () |]
extensionEntry "glVertexAttribI4ui" [t| GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glVertexAttribI4uiv" [t| GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glVertexAttribI4usv" [t| GLuint -> Ptr GLushort -> IO () |]
extensionEntry "glVertexAttribIPointer" [t| forall a . GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glVertexAttribPointer" [t| forall a . GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glViewport" [t| GLint -> GLint -> GLsizei -> GLsizei -> IO () |]
