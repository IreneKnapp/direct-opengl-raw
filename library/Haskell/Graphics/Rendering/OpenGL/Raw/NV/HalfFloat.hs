{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.NV.HalfFloat
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions, tokens and types from the NV_fragment_program extension,
-- see <http://www.opengl.org/registry/specs/NV/fragment_program.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.NV.HalfFloat (
   -- * Functions
   glVertex2h,
   glVertex2hv,
   glVertex3h,
   glVertex3hv,
   glVertex4h,
   glVertex4hv,
   glNormal3h,
   glNormal3hv,
   glColor3h,
   glColor3hv,
   glColor4h,
   glColor4hv,
   glTexCoord1h,
   glTexCoord1hv,
   glTexCoord2h,
   glTexCoord2hv,
   glTexCoord3h,
   glTexCoord3hv,
   glTexCoord4h,
   glTexCoord4hv,
   glMultiTexCoord1h,
   glMultiTexCoord1hv,
   glMultiTexCoord2h,
   glMultiTexCoord2hv,
   glMultiTexCoord3h,
   glMultiTexCoord3hv,
   glMultiTexCoord4h,
   glMultiTexCoord4hv,
   glFogCoordh,
   glFogCoordhv,
   glSecondaryColor3h,
   glSecondaryColor3hv,
   glVertexWeighth,
   glVertexWeighthv,
   glVertexAttrib1h,
   glVertexAttrib1hv,
   glVertexAttrib2h,
   glVertexAttrib2hv,
   glVertexAttrib3h,
   glVertexAttrib3hv,
   glVertexAttrib4h,
   glVertexAttrib4hv,
   glVertexAttribs1hv,
   glVertexAttribs2hv,
   glVertexAttribs3hv,
   glVertexAttribs4hv,
   -- * Tokens
   gl_HALF_FLOAT,
   -- * Types
   GLhalf
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_NV_half_float"

extensionEntry "glVertex2h" [t| GLhalf -> GLhalf -> IO () |]
extensionEntry "glVertex2hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glVertex3h" [t| GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glVertex3hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glVertex4h" [t| GLhalf -> GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glVertex4hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glNormal3h" [t| GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glNormal3hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glColor3h" [t| GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glColor3hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glColor4h" [t| GLhalf -> GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glColor4hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glTexCoord1h" [t| GLhalf -> IO () |]
extensionEntry "glTexCoord1hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glTexCoord2h" [t| GLhalf -> GLhalf -> IO () |]
extensionEntry "glTexCoord2hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glTexCoord3h" [t| GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glTexCoord3hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glTexCoord4h" [t| GLhalf -> GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glTexCoord4hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glMultiTexCoord1h" [t| GLenum -> GLhalf -> IO () |]
extensionEntry "glMultiTexCoord1hv" [t| GLenum -> Ptr GLhalf -> IO () |]
extensionEntry "glMultiTexCoord2h" [t| GLenum -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glMultiTexCoord2hv" [t| GLenum -> Ptr GLhalf -> IO () |]
extensionEntry "glMultiTexCoord3h" [t| GLenum -> GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glMultiTexCoord3hv" [t| GLenum -> Ptr GLhalf -> IO () |]
extensionEntry "glMultiTexCoord4h" [t| GLenum -> GLhalf -> GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glMultiTexCoord4hv" [t| GLenum -> Ptr GLhalf -> IO () |]
extensionEntry "glFogCoordh" [t| GLhalf -> IO () |]
extensionEntry "glFogCoordhv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glSecondaryColor3h" [t| GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glSecondaryColor3hv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glVertexWeighth" [t| GLhalf -> IO () |]
extensionEntry "glVertexWeighthv" [t| Ptr GLhalf -> IO () |]
extensionEntry "glVertexAttrib1h" [t| GLuint -> GLhalf -> IO () |]
extensionEntry "glVertexAttrib1hv" [t| GLuint -> Ptr GLhalf -> IO () |]
extensionEntry "glVertexAttrib2h" [t| GLuint -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glVertexAttrib2hv" [t| GLuint -> Ptr GLhalf -> IO () |]
extensionEntry "glVertexAttrib3h" [t| GLuint -> GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glVertexAttrib3hv" [t| GLuint -> Ptr GLhalf -> IO () |]
extensionEntry "glVertexAttrib4h" [t| GLuint -> GLhalf -> GLhalf -> GLhalf -> GLhalf -> IO () |]
extensionEntry "glVertexAttrib4hv" [t| GLuint -> Ptr GLhalf -> IO () |]
extensionEntry "glVertexAttribs1hv" [t| GLuint -> GLsizei -> Ptr GLhalf -> IO () |]
extensionEntry "glVertexAttribs2hv" [t| GLuint -> GLsizei -> Ptr GLhalf -> IO () |]
extensionEntry "glVertexAttribs3hv" [t| GLuint -> GLsizei -> Ptr GLhalf -> IO () |]
extensionEntry "glVertexAttribs4hv" [t| GLuint -> GLsizei -> Ptr GLhalf -> IO () |]
