{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.EXT.CullVertex
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the EXT_cull_vertex extension, see
-- <http://www.opengl.org/registry/specs/EXT/cull_vertex.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.EXT.CullVertex (
   -- * Functions
   glCullParameterfv,
   glCullParameterdv,
   -- * Tokens
   gl_CULL_VERTEX,
   gl_CULL_VERTEX_EYE_POSITION,
   gl_CULL_VERTEX_OBJECT_POSITION
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_EXT_cull_vertex"

extensionEntry "glCullParameterfv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glCullParameterdv" [t| GLenum -> Ptr GLdouble -> IO () |]


gl_CULL_VERTEX :: GLenum
gl_CULL_VERTEX = 0x81AA

gl_CULL_VERTEX_EYE_POSITION :: GLenum
gl_CULL_VERTEX_EYE_POSITION = 0x81AB

gl_CULL_VERTEX_OBJECT_POSITION :: GLenum
gl_CULL_VERTEX_OBJECT_POSITION = 0x81AC
