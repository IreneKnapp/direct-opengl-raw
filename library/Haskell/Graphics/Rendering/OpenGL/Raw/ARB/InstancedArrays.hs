{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.InstancedArrays
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the ARB_instanced_arrays extension, see
-- <http://www.opengl.org/registry/specs/ARB/instanced_arrays.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.InstancedArrays (
   -- * Functions
   glVertexAttribDivisor,
   -- * Tokens
   gl_VERTEX_ATTRIB_ARRAY_DIVISOR
) where

import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_ARB_instanced_arrays"

extensionEntry "glVertexAttribDivisor" [t| GLuint -> GLuint -> IO () |]

gl_VERTEX_ATTRIB_ARRAY_DIVISOR :: GLenum
gl_VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE
