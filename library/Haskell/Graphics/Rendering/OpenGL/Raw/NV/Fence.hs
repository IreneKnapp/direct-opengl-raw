{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.NV.Fence
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the NV_fence not already in the OpenGL 3.1
-- core, see <http://www.opengl.org/registry/specs/NV/fence.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.NV.Fence (
   -- * Functions
   glGenFences,
   glDeleteFences,
   glSetFence,
   glTestFence,
   glFinishFence,
   glIsFence,
   glGetFenceiv,
   -- * Tokens
   gl_ALL_COMPLETED,
   gl_FENCE_STATUS,
   gl_FENCE_CONDITION
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_NV_fence"

extensionEntry "glGenFences" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glDeleteFences" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glSetFence" [t| GLuint -> GLenum -> IO () |]
extensionEntry "glTestFence" [t| GLuint -> IO GLboolean |]
extensionEntry "glFinishFence" [t| GLuint -> IO () |]
extensionEntry "glIsFence" [t| GLuint -> IO GLboolean |]
extensionEntry "glGetFenceiv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]

gl_ALL_COMPLETED :: GLenum
gl_ALL_COMPLETED = 0x84F2

gl_FENCE_STATUS :: GLenum
gl_FENCE_STATUS = 0x84F3

gl_FENCE_CONDITION :: GLenum
gl_FENCE_CONDITION = 0x84F4
