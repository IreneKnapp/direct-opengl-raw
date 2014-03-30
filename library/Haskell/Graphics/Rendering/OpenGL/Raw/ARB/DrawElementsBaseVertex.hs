{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell,
             ExistentialQuantification #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.DrawElementsBaseVertex
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions from the ARB_draw_elements_base_vertex extension, see
-- <http://www.opengl.org/registry/specs/ARB/draw_elements_base_vertex.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.DrawElementsBaseVertex (
   -- * Functions
   glDrawElementsBaseVertex,
   glDrawRangeElementsBaseVertex,
   glDrawElementsInstancedBaseVertex,
   glMultiDrawElementsBaseVertex
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_ARB_draw_elements_base_vertex"

extensionEntry "glDrawElementsBaseVertex" [t| forall a . GLenum -> GLsizei -> GLenum -> Ptr a -> GLint -> IO () |]
extensionEntry "glDrawRangeElementsBaseVertex" [t| forall a . GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> GLint -> IO () |]
extensionEntry "glDrawElementsInstancedBaseVertex" [t| forall a . GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> GLint -> IO () |]
extensionEntry "glMultiDrawElementsBaseVertex" [t| forall a . GLenum -> Ptr GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> Ptr GLint -> IO () |]
