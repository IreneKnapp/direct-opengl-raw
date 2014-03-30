{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.VertexType2101010Rev
-- Copyright   :  (c) Sven Panne 2014
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the ARB_vertex_type_2_10_10_10_rev
-- extension, see
-- <http://www.opengl.org/registry/specs/ARB/vertex_type_2_10_10_10_rev.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.VertexType2101010Rev (
   -- * Functions
   glVertexAttribP1ui,
   glVertexAttribP1uiv,
   glVertexAttribP2ui,
   glVertexAttribP2uiv,
   glVertexAttribP3ui,
   glVertexAttribP3uiv,
   glVertexAttribP4ui,
   glVertexAttribP4uiv,
   glVertexP2ui,
   glVertexP2uiv,
   glVertexP3ui,
   glVertexP3uiv,
   glVertexP4ui,
   glVertexP4uiv,
   glTexCoordP1ui,
   glTexCoordP1uiv,
   glTexCoordP2ui,
   glTexCoordP2uiv,
   glTexCoordP3ui,
   glTexCoordP3uiv,
   glTexCoordP4ui,
   glTexCoordP4uiv,
   glMultiTexCoordP1ui,
   glMultiTexCoordP1uiv,
   glMultiTexCoordP2ui,
   glMultiTexCoordP2uiv,
   glMultiTexCoordP3ui,
   glMultiTexCoordP3uiv,
   glMultiTexCoordP4ui,
   glMultiTexCoordP4uiv,
   glNormalP3ui,
   glNormalP3uiv,
   glColorP3ui,
   glColorP3uiv,
   glColorP4ui,
   glColorP4uiv,
   glSecondaryColorP3ui,
   glSecondaryColorP3uiv,

   -- * Tokens
   gl_UNSIGNED_INT_2_10_10_10_REV,
   gl_INT_2_10_10_10_REV
) where

import Foreign.C.Types
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Core31.Tokens
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

--------------------------------------------------------------------------------

extensionNameString :: String
extensionNameString = "GL_ARB_vertex_type_2_10_10_10_rev"

extensionEntry "glVertexAttribP1ui" [t| GLuint -> GLenum -> GLboolean -> GLuint -> IO () |]
extensionEntry "glVertexAttribP1uiv" [t| GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO () |]
extensionEntry "glVertexAttribP2ui" [t| GLuint -> GLenum -> GLboolean -> GLuint -> IO () |]
extensionEntry "glVertexAttribP2uiv" [t| GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO () |]
extensionEntry "glVertexAttribP3ui" [t| GLuint -> GLenum -> GLboolean -> GLuint -> IO () |]
extensionEntry "glVertexAttribP3uiv" [t| GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO () |]
extensionEntry "glVertexAttribP4ui" [t| GLuint -> GLenum -> GLboolean -> GLuint -> IO () |]
extensionEntry "glVertexAttribP4uiv" [t| GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO () |]
extensionEntry "glVertexP2ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glVertexP2uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glVertexP3ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glVertexP3uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glVertexP4ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glVertexP4uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glTexCoordP1ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glTexCoordP1uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glTexCoordP2ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glTexCoordP2uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glTexCoordP3ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glTexCoordP3uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glTexCoordP4ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glTexCoordP4uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glMultiTexCoordP1ui" [t| GLenum -> GLenum -> GLuint -> IO () |]
extensionEntry "glMultiTexCoordP1uiv" [t| GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glMultiTexCoordP2ui" [t| GLenum -> GLenum -> GLuint -> IO () |]
extensionEntry "glMultiTexCoordP2uiv" [t| GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glMultiTexCoordP3ui" [t| GLenum -> GLenum -> GLuint -> IO () |]
extensionEntry "glMultiTexCoordP3uiv" [t| GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glMultiTexCoordP4ui" [t| GLenum -> GLenum -> GLuint -> IO () |]
extensionEntry "glMultiTexCoordP4uiv" [t| GLenum -> GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glNormalP3ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glNormalP3uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glColorP3ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glColorP3uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glColorP4ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glColorP4uiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glSecondaryColorP3ui" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glSecondaryColorP3uiv" [t| GLenum -> Ptr GLuint -> IO () |]

gl_INT_2_10_10_10_REV :: GLenum
gl_INT_2_10_10_10_REV = 0x8D9F
