{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell,
             ExistentialQuantification #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.EXT.DirectStateAccess
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the EXT_direct_state_access extension not
-- already in the OpenGL 3.1 core, see
-- <http://www.opengl.org/registry/specs/EXT/direct_state_access.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.EXT.DirectStateAccess (
   -- * Functions
   glClientAttribDefault,
   glPushClientAttribDefault,
   glMatrixLoadf,
   glMatrixLoadd,
   glMatrixMultf,
   glMatrixMultd,
   glMatrixLoadIdentity,
   glMatrixRotatef,
   glMatrixRotated,
   glMatrixScalef,
   glMatrixScaled,
   glMatrixTranslatef,
   glMatrixTranslated,
   glMatrixOrtho,
   glMatrixFrustum,
   glMatrixPush,
   glMatrixPop,
   glTextureParameteri,
   glTextureParameteriv,
   glTextureParameterf,
   glTextureParameterfv,
   glTextureImage1D,
   glTextureImage2D,
   glTextureSubImage1D,
   glTextureSubImage2D,
   glCopyTextureImage1D,
   glCopyTextureImage2D,
   glCopyTextureSubImage1D,
   glCopyTextureSubImage2D,
   glGetTextureImage,
   glGetTextureParameterfv,
   glGetTextureParameteriv,
   glGetTextureLevelParameterfv,
   glGetTextureLevelParameteriv,
   glTextureImage3D,
   glTextureSubImage3D,
   glCopyTextureSubImage3D,
   glBindMultiTexture,
   glMultiTexCoordPointer,
   glMultiTexEnvf,
   glMultiTexEnvfv,
   glMultiTexEnvi,
   glMultiTexEnviv,
   glMultiTexGend,
   glMultiTexGendv,
   glMultiTexGenf,
   glMultiTexGenfv,
   glMultiTexGeni,
   glMultiTexGeniv,
   glGetMultiTexEnvfv,
   glGetMultiTexEnviv,
   glGetMultiTexGendv,
   glGetMultiTexGenfv,
   glGetMultiTexGeniv,
   glMultiTexParameteri,
   glMultiTexParameteriv,
   glMultiTexParameterf,
   glMultiTexParameterfv,
   glMultiTexImage1D,
   glMultiTexImage2D,
   glMultiTexSubImage1D,
   glMultiTexSubImage2D,
   glCopyMultiTexImage1D,
   glCopyMultiTexImage2D,
   glCopyMultiTexSubImage1D,
   glCopyMultiTexSubImage2D,
   glGetMultiTexImage,
   glGetMultiTexParameterfv,
   glGetMultiTexParameteriv,
   glGetMultiTexLevelParameterfv,
   glGetMultiTexLevelParameteriv,
   glMultiTexImage3D,
   glMultiTexSubImage3D,
   glCopyMultiTexSubImage3D,
   glEnableClientStateIndexed,
   glDisableClientStateIndexed,
   glGetFloatIndexedv,
   glGetDoubleIndexedv,
   glGetPointerIndexedv,
   glEnableIndexed,
   glDisableIndexed,
   glIsEnabledIndexed,
   glGetIntegerIndexedv,
   glGetBooleanIndexedv,
   glNamedProgramString,
   glNamedProgramLocalParameter4d,
   glNamedProgramLocalParameter4dv,
   glNamedProgramLocalParameter4f,
   glNamedProgramLocalParameter4fv,
   glGetNamedProgramLocalParameterdv,
   glGetNamedProgramLocalParameterfv,
   glGetNamedProgramiv,
   glGetNamedProgramString,
   glCompressedTextureImage3D,
   glCompressedTextureImage2D,
   glCompressedTextureImage1D,
   glCompressedTextureSubImage3D,
   glCompressedTextureSubImage2D,
   glCompressedTextureSubImage1D,
   glGetCompressedTextureImage,
   glCompressedMultiTexImage3D,
   glCompressedMultiTexImage2D,
   glCompressedMultiTexImage1D,
   glCompressedMultiTexSubImage3D,
   glCompressedMultiTexSubImage2D,
   glCompressedMultiTexSubImage1D,
   glGetCompressedMultiTexImage,
   glMatrixLoadTransposef,
   glMatrixLoadTransposed,
   glMatrixMultTransposef,
   glMatrixMultTransposed,
   glNamedBufferData,
   glNamedBufferSubData,
   glMapNamedBuffer,
   glUnmapNamedBuffer,
   glGetNamedBufferParameteriv,
   glGetNamedBufferPointerv,
   glGetNamedBufferSubData,
   glProgramUniform1f,
   glProgramUniform2f,
   glProgramUniform3f,
   glProgramUniform4f,
   glProgramUniform1i,
   glProgramUniform2i,
   glProgramUniform3i,
   glProgramUniform4i,
   glProgramUniform1fv,
   glProgramUniform2fv,
   glProgramUniform3fv,
   glProgramUniform4fv,
   glProgramUniform1iv,
   glProgramUniform2iv,
   glProgramUniform3iv,
   glProgramUniform4iv,
   glProgramUniformMatrix2fv,
   glProgramUniformMatrix3fv,
   glProgramUniformMatrix4fv,
   glProgramUniformMatrix2x3fv,
   glProgramUniformMatrix3x2fv,
   glProgramUniformMatrix2x4fv,
   glProgramUniformMatrix4x2fv,
   glProgramUniformMatrix3x4fv,
   glProgramUniformMatrix4x3fv,
   glTextureBuffer,
   glMultiTexBuffer,
   glTextureParameterIiv,
   glTextureParameterIuiv,
   glGetTextureParameterIiv,
   glGetTextureParameterIuiv,
   glMultiTexParameterIiv,
   glMultiTexParameterIuiv,
   glGetMultiTexParameterIiv,
   glGetMultiTexParameterIuiv,
   glProgramUniform1ui,
   glProgramUniform2ui,
   glProgramUniform3ui,
   glProgramUniform4ui,
   glProgramUniform1uiv,
   glProgramUniform2uiv,
   glProgramUniform3uiv,
   glProgramUniform4uiv,
   glNamedProgramLocalParameters4fv,
   glNamedProgramLocalParameterI4i,
   glNamedProgramLocalParameterI4iv,
   glNamedProgramLocalParametersI4iv,
   glNamedProgramLocalParameterI4ui,
   glNamedProgramLocalParameterI4uiv,
   glNamedProgramLocalParametersI4uiv,
   glGetNamedProgramLocalParameterIiv,
   glGetNamedProgramLocalParameterIuiv,
   glNamedRenderbufferStorage,
   glGetNamedRenderbufferParameteriv,
   glNamedRenderbufferStorageMultisample,
   glNamedRenderbufferStorageMultisampleCoverage,
   glCheckNamedFramebufferStatus,
   glNamedFramebufferTexture1D,
   glNamedFramebufferTexture2D,
   glNamedFramebufferTexture3D,
   glNamedFramebufferRenderbuffer,
   glGetNamedFramebufferAttachmentParameteriv,
   glGenerateTextureMipmap,
   glGenerateMultiTexMipmap,
   glFramebufferDrawBuffer,
   glFramebufferDrawBuffers,
   glFramebufferReadBuffer,
   glGetFramebufferParameteriv,
   glNamedFramebufferTexture,
   glNamedFramebufferTextureLayer,
   glNamedFramebufferTextureFace,
   glTextureRenderbuffer,
   glMultiTexRenderbuffer,
   -- * Tokens
   gl_PROGRAM_MATRIX,
   gl_TRANSPOSE_PROGRAM_MATRIX,
   gl_PROGRAM_MATRIX_STACK_DEPTH
) where

import Foreign.C.Types
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.ARB.FramebufferNoAttachments
import Graphics.Rendering.OpenGL.Raw.ARB.SeparateShaderObjects
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_EXT_direct_state_access"

extensionEntry "glClientAttribDefault" [t| GLbitfield -> IO () |]
extensionEntry "glPushClientAttribDefault" [t| GLbitfield -> IO () |]
extensionEntry "glMatrixLoadf" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMatrixLoadd" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glMatrixMultf" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMatrixMultd" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glMatrixLoadIdentity" [t| GLenum -> IO () |]
extensionEntry "glMatrixRotatef" [t| GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glMatrixRotated" [t| GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMatrixScalef" [t| GLenum -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glMatrixScaled" [t| GLenum -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMatrixTranslatef" [t| GLenum -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glMatrixTranslated" [t| GLenum -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMatrixOrtho" [t| GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMatrixFrustum" [t| GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMatrixPush" [t| GLenum -> IO () |]
extensionEntry "glMatrixPop" [t| GLenum -> IO () |]
extensionEntry "glTextureParameteri" [t| GLuint -> GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glTextureParameteriv" [t| GLuint -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glTextureParameterf" [t| GLuint -> GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glTextureParameterfv" [t| GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glTextureImage1D" [t| forall a . GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTextureImage2D" [t| forall a . GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTextureSubImage1D" [t| forall a . GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTextureSubImage2D" [t| forall a . GLuint -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glCopyTextureImage1D" [t| GLuint -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO () |]
extensionEntry "glCopyTextureImage2D" [t| GLuint -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO () |]
extensionEntry "glCopyTextureSubImage1D" [t| GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO () |]
extensionEntry "glCopyTextureSubImage2D" [t| GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glGetTextureImage" [t| forall a . GLuint -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glGetTextureParameterfv" [t| GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetTextureParameteriv" [t| GLuint -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetTextureLevelParameterfv" [t| GLuint -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetTextureLevelParameteriv" [t| GLuint -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glTextureImage3D" [t| forall a . GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glTextureSubImage3D" [t| forall a . GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glCopyTextureSubImage3D" [t| GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glBindMultiTexture" [t| GLenum -> GLenum -> GLuint -> IO () |]
extensionEntry "glMultiTexCoordPointer" [t| forall a . GLenum -> GLint -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glMultiTexEnvf" [t| GLenum -> GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glMultiTexEnvfv" [t| GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMultiTexEnvi" [t| GLenum -> GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glMultiTexEnviv" [t| GLenum -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMultiTexGend" [t| GLenum -> GLenum -> GLenum -> GLdouble -> IO () |]
extensionEntry "glMultiTexGendv" [t| GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glMultiTexGenf" [t| GLenum -> GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glMultiTexGenfv" [t| GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMultiTexGeni" [t| GLenum -> GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glMultiTexGeniv" [t| GLenum -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetMultiTexEnvfv" [t| GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetMultiTexEnviv" [t| GLenum -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetMultiTexGendv" [t| GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glGetMultiTexGenfv" [t| GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetMultiTexGeniv" [t| GLenum -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMultiTexParameteri" [t| GLenum -> GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glMultiTexParameteriv" [t| GLenum -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMultiTexParameterf" [t| GLenum -> GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glMultiTexParameterfv" [t| GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMultiTexImage1D" [t| forall a . GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glMultiTexImage2D" [t| forall a . GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glMultiTexSubImage1D" [t| forall a . GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glMultiTexSubImage2D" [t| forall a . GLenum -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glCopyMultiTexImage1D" [t| GLenum -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO () |]
extensionEntry "glCopyMultiTexImage2D" [t| GLenum -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO () |]
extensionEntry "glCopyMultiTexSubImage1D" [t| GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO () |]
extensionEntry "glCopyMultiTexSubImage2D" [t| GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glGetMultiTexImage" [t| forall a . GLenum -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glGetMultiTexParameterfv" [t| GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetMultiTexParameteriv" [t| GLenum -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetMultiTexLevelParameterfv" [t| GLenum -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetMultiTexLevelParameteriv" [t| GLenum -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMultiTexImage3D" [t| forall a . GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glMultiTexSubImage3D" [t| forall a . GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glCopyMultiTexSubImage3D" [t| GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glEnableClientStateIndexed" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glDisableClientStateIndexed" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glGetFloatIndexedv" [t| GLenum -> GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glGetDoubleIndexedv" [t| GLenum -> GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glGetPointerIndexedv" [t| forall a . GLenum -> GLuint -> Ptr (Ptr a) -> IO () |]
extensionEntry "glEnableIndexed" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glDisableIndexed" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glIsEnabledIndexed" [t| GLenum -> GLuint -> IO GLboolean |]
extensionEntry "glGetIntegerIndexedv" [t| GLenum -> GLuint -> Ptr GLint -> IO () |]
extensionEntry "glGetBooleanIndexedv" [t| GLenum -> GLuint -> Ptr GLboolean -> IO () |]
extensionEntry "glNamedProgramString" [t| forall a . GLuint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glNamedProgramLocalParameter4d" [t| GLuint -> GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glNamedProgramLocalParameter4dv" [t| GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glNamedProgramLocalParameter4f" [t| GLuint -> GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glNamedProgramLocalParameter4fv" [t| GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glGetNamedProgramLocalParameterdv" [t| GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glGetNamedProgramLocalParameterfv" [t| GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glGetNamedProgramiv" [t| GLuint -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetNamedProgramString" [t| forall a . GLuint -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glCompressedTextureImage3D" [t| forall a . GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTextureImage2D" [t| forall a . GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTextureImage1D" [t| forall a . GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTextureSubImage3D" [t| forall a . GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTextureSubImage2D" [t| forall a . GLuint -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedTextureSubImage1D" [t| forall a . GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glGetCompressedTextureImage" [t| forall a . GLuint -> GLenum -> GLint -> Ptr a -> IO () |]
extensionEntry "glCompressedMultiTexImage3D" [t| forall a . GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedMultiTexImage2D" [t| forall a . GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedMultiTexImage1D" [t| forall a . GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedMultiTexSubImage3D" [t| forall a . GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedMultiTexSubImage2D" [t| forall a . GLenum -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glCompressedMultiTexSubImage1D" [t| forall a . GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glGetCompressedMultiTexImage" [t| forall a . GLenum -> GLenum -> GLint -> Ptr a -> IO () |]
extensionEntry "glMatrixLoadTransposef" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMatrixLoadTransposed" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glMatrixMultTransposef" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMatrixMultTransposed" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glNamedBufferData" [t| forall a . GLuint -> GLsizeiptr -> Ptr a -> GLenum -> IO () |]
extensionEntry "glNamedBufferSubData" [t| forall a . GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO () |]
extensionEntry "glMapNamedBuffer" [t| GLuint -> GLenum -> IO () |]
extensionEntry "glUnmapNamedBuffer" [t| GLuint -> IO GLboolean |]
extensionEntry "glGetNamedBufferParameteriv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetNamedBufferPointerv" [t| forall a . GLuint -> GLenum -> Ptr (Ptr a) -> IO () |]
extensionEntry "glGetNamedBufferSubData" [t| forall a . GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO () |]
extensionEntry "glTextureBuffer" [t| GLuint -> GLenum -> GLenum -> GLuint -> IO () |]
extensionEntry "glMultiTexBuffer" [t| GLenum -> GLenum -> GLenum -> GLuint -> IO () |]
extensionEntry "glTextureParameterIiv" [t| GLuint -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glTextureParameterIuiv" [t| GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glGetTextureParameterIiv" [t| GLuint -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetTextureParameterIuiv" [t| GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glMultiTexParameterIiv" [t| GLenum -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMultiTexParameterIuiv" [t| GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glGetMultiTexParameterIiv" [t| GLenum -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetMultiTexParameterIuiv" [t| GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glNamedProgramLocalParameters4fv" [t| GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glNamedProgramLocalParameterI4i" [t| GLuint -> GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glNamedProgramLocalParameterI4iv" [t| GLuint -> GLenum -> GLuint -> Ptr GLint -> IO () |]
extensionEntry "glNamedProgramLocalParametersI4iv" [t| GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO () |]
extensionEntry "glNamedProgramLocalParameterI4ui" [t| GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glNamedProgramLocalParameterI4uiv" [t| GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glNamedProgramLocalParametersI4uiv" [t| GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGetNamedProgramLocalParameterIiv" [t| GLuint -> GLenum -> GLuint -> Ptr GLint -> IO () |]
extensionEntry "glGetNamedProgramLocalParameterIuiv" [t| GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glNamedRenderbufferStorage" [t| GLuint -> GLenum -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glGetNamedRenderbufferParameteriv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glNamedRenderbufferStorageMultisample" [t| GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glNamedRenderbufferStorageMultisampleCoverage" [t| GLuint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glCheckNamedFramebufferStatus" [t| GLuint -> GLenum -> IO GLenum |]
extensionEntry "glNamedFramebufferTexture1D" [t| GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO () |]
extensionEntry "glNamedFramebufferTexture2D" [t| GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO () |]
extensionEntry "glNamedFramebufferTexture3D" [t| GLuint -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO () |]
extensionEntry "glNamedFramebufferRenderbuffer" [t| GLuint -> GLenum -> GLenum -> GLuint -> IO () |]
extensionEntry "glGetNamedFramebufferAttachmentParameteriv" [t| GLuint -> GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGenerateTextureMipmap" [t| GLuint -> GLenum -> IO () |]
extensionEntry "glGenerateMultiTexMipmap" [t| GLenum -> GLenum -> IO () |]
extensionEntry "glFramebufferDrawBuffer" [t| GLuint -> GLenum -> IO () |]
extensionEntry "glFramebufferDrawBuffers" [t| GLuint -> GLsizei -> Ptr GLenum -> IO () |]
extensionEntry "glFramebufferReadBuffer" [t| GLuint -> GLenum -> IO () |]
extensionEntry "glNamedFramebufferTexture" [t| GLuint -> GLenum -> GLuint -> GLint -> IO () |]
extensionEntry "glNamedFramebufferTextureLayer" [t| GLuint -> GLenum -> GLuint -> GLint -> GLint -> IO () |]
extensionEntry "glNamedFramebufferTextureFace" [t| GLuint -> GLenum -> GLuint -> GLint -> GLenum -> IO () |]
extensionEntry "glTextureRenderbuffer" [t| GLuint -> GLenum -> GLuint -> IO () |]
extensionEntry "glMultiTexRenderbuffer" [t| GLenum -> GLenum -> GLuint -> IO () |]

gl_PROGRAM_MATRIX :: GLenum
gl_PROGRAM_MATRIX = 0x8E2D

gl_TRANSPOSE_PROGRAM_MATRIX :: GLenum
gl_TRANSPOSE_PROGRAM_MATRIX = 0x8E2E

gl_PROGRAM_MATRIX_STACK_DEPTH :: GLenum
gl_PROGRAM_MATRIX_STACK_DEPTH = 0x8E2F
