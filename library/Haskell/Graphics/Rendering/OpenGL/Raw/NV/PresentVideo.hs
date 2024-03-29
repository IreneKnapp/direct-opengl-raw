{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.NV.PresentVideo
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the NV_present_video extension, see
-- <http://www.opengl.org/registry/specs/NV/present_video.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.NV.PresentVideo (
   -- * Functions
   glPresentFrameKeyed,
   glPresentFrameDualFill,
   glGetVideoiv,
   glGetVideouiv,
   glGetVideoi64v,
   glGetVideoui64v,
   -- * Tokens
   gl_FRAME,
   gl_FIELDS,
   gl_CURRENT_TIME,
   gl_NUM_FILL_STREAMS,
   gl_PRESENT_TIME,
   gl_PRESENT_DURATION
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_NV_present_video"

extensionEntry "glPresentFrameKeyed" [t| GLuint -> GLuint64 -> GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> GLuint -> GLenum -> GLuint -> GLuint -> IO () |]
extensionEntry "glPresentFrameDualFill" [t| GLuint -> GLuint64 -> GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> IO () |]
extensionEntry "glGetVideoiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetVideouiv" [t| GLuint -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glGetVideoi64v" [t| GLuint -> GLenum -> Ptr GLint64 -> IO () |]
extensionEntry "glGetVideoui64v" [t| GLuint -> GLenum -> Ptr GLuint64 -> IO () |]

gl_FRAME :: GLenum
gl_FRAME = 0x8E26

gl_FIELDS :: GLenum
gl_FIELDS = 0x8E27

gl_CURRENT_TIME :: GLenum
gl_CURRENT_TIME = 0x8E28

gl_NUM_FILL_STREAMS :: GLenum
gl_NUM_FILL_STREAMS = 0x8E29

gl_PRESENT_TIME :: GLenum
gl_PRESENT_TIME = 0x8E2A

gl_PRESENT_DURATION :: GLenum
gl_PRESENT_DURATION = 0x8E2B
