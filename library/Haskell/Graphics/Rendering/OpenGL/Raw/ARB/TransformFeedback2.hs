{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.TransformFeedback2
-- Copyright   :  (c) Sven Panne 2014
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the ARB_transform_feedback2 extension, see
-- <http://www.opengl.org/registry/specs/ARB/transform_feedback2.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.TransformFeedback2 (
   -- * Functions
   glBindTransformFeedback,
   glDeleteTransformFeedbacks,
   glGenTransformFeedbacks,
   glIsTransformFeedback,
   glPauseTransformFeedback,
   glResumeTransformFeedback,
   glDrawTransformFeedback,

   -- * Tokens
   gl_TRANSFORM_FEEDBACK,
   gl_TRANSFORM_FEEDBACK_PAUSED,
   gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED,
   gl_TRANSFORM_FEEDBACK_ACTIVE,
   gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE,
   gl_TRANSFORM_FEEDBACK_BINDING
) where

import Foreign.C.Types
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

--------------------------------------------------------------------------------

extensionNameString :: String
extensionNameString = "GL_ARB_transform_feedback2"

extensionEntry "glBindTransformFeedback" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glDeleteTransformFeedbacks" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGenTransformFeedbacks" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glIsTransformFeedback" [t| GLuint -> IO GLboolean |]
extensionEntry "glPauseTransformFeedback" [t| IO () |]
extensionEntry "glResumeTransformFeedback" [t| IO () |]
extensionEntry "glDrawTransformFeedback" [t| GLenum -> GLuint -> IO () |]

gl_TRANSFORM_FEEDBACK :: GLenum
gl_TRANSFORM_FEEDBACK = 0x8E22

-- | Legacy name.
gl_TRANSFORM_FEEDBACK_PAUSED :: GLenum
gl_TRANSFORM_FEEDBACK_PAUSED = gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED

gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED = 0x8E23

-- | Legacy name.
gl_TRANSFORM_FEEDBACK_ACTIVE :: GLenum
gl_TRANSFORM_FEEDBACK_ACTIVE = gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE

gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 0x8E24

gl_TRANSFORM_FEEDBACK_BINDING :: GLenum
gl_TRANSFORM_FEEDBACK_BINDING = 0x8E25
