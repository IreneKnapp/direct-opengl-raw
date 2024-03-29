{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.TimerQuery
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions, tokens and types from the ARB_timer_query, see
-- <http://www.opengl.org/registry/specs/ARB/timer_query.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.TimerQuery (
   -- * Functions
   glQueryCounter,
   glGetQueryObjecti64v,
   glGetQueryObjectui64v,

   -- * Tokens
   gl_TIME_ELAPSED,
   gl_TIMESTAMP
) where

import Foreign.C.Types
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_ARB_timer_query"

extensionEntry "glQueryCounter" [t|  GLuint -> GLenum -> IO () |]
extensionEntry "glGetQueryObjecti64v" [t| GLuint -> GLenum -> Ptr GLint64 -> IO () |]
extensionEntry "glGetQueryObjectui64v" [t| GLuint -> GLenum -> Ptr GLuint64 -> IO () |]

gl_TIME_ELAPSED :: GLenum
gl_TIME_ELAPSED = 0x88BF

gl_TIMESTAMP :: GLenum
gl_TIMESTAMP = 0x8E28
