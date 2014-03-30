{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.ShadingLanguageInclude
-- Copyright   :  (c) Sven Panne 2014
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the ARB_shading_language_include extension,
-- see <http://www.opengl.org/registry/specs/ARB/shading_language_include.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.ShadingLanguageInclude (
   -- * Functions
   glNamedString,
   glDeleteNamedString,
   glCompileShaderInclude,
   glIsNamedString,
   glGetNamedString,
   glGetNamedStringiv,

   -- * Tokens
   gl_SHADER_INCLUDE,
   gl_NAMED_STRING_LENGTH,
   gl_NAMED_STRING_TYPE
) where

import Foreign.C.Types
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

--------------------------------------------------------------------------------

extensionNameString :: String
extensionNameString = "GL_ARB_shading_language_include"

extensionEntry "glNamedString" [t| GLenum -> GLint -> Ptr GLchar -> GLint -> Ptr GLchar -> IO () |]
extensionEntry "glDeleteNamedString" [t| GLint -> Ptr GLchar -> IO () |]
extensionEntry "glCompileShaderInclude" [t| GLuint -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO () |]
extensionEntry "glIsNamedString" [t| GLint -> Ptr GLchar -> IO GLboolean |]
extensionEntry "glGetNamedString" [t| GLint -> Ptr GLchar -> GLsizei -> Ptr GLint -> Ptr GLchar -> IO () |]
extensionEntry "glGetNamedStringiv" [t| GLint -> Ptr GLchar -> GLenum -> Ptr GLint -> IO () |]

gl_SHADER_INCLUDE :: GLenum
gl_SHADER_INCLUDE = 0x8DAE

gl_NAMED_STRING_LENGTH :: GLenum
gl_NAMED_STRING_LENGTH = 0x8DE9

gl_NAMED_STRING_TYPE :: GLenum
gl_NAMED_STRING_TYPE = 0x8DEA



