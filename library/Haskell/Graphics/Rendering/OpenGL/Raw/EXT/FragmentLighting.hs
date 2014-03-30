{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.EXT.FragmentLighting
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the EXT_fragment_lighting extension, see
-- <http://www.opengl.org/registry/specs/EXT/fragment_lighting.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.EXT.FragmentLighting (
   -- * Functions
   glFragmentLightModeli,
   glFragmentLightModelf,
   glFragmentLightModeliv,
   glFragmentLightModelfv,
   glFragmentLighti,
   glFragmentLightf,
   glFragmentLightiv,
   glFragmentLightfv,
   glGetFragmentLightiv,
   glGetFragmentLightfv,
   glFragmentMaterialf,
   glFragmentMateriali,
   glFragmentMaterialfv,
   glFragmentMaterialiv,
   glFragmentColorMaterial,
   glGetFragmentMaterialfv,
   glGetFragmentMaterialiv,
   glLightEnvi,
   -- * Tokens
   gl_FRAGMENT_LIGHTING,
   gl_FRAGMENT_COLOR_MATERIAL,
   gl_FRAGMENT_COLOR_MATERIAL_FACE,
   gl_FRAGMENT_COLOR_MATERIAL_PARAMETER,
   gl_MAX_FRAGMENT_LIGHTS,
   gl_MAX_ACTIVE_LIGHTS,
   gl_CURRENT_RASTER_NORMAL,
   gl_LIGHT_ENV_MODE,
   gl_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER,
   gl_FRAGMENT_LIGHT_MODEL_TWO_SIDE,
   gl_FRAGMENT_LIGHT_MODEL_AMBIENT,
   gl_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION,
   gl_FRAGMENT_LIGHT0,
   gl_FRAGMENT_LIGHT1,
   gl_FRAGMENT_LIGHT2,
   gl_FRAGMENT_LIGHT3,
   gl_FRAGMENT_LIGHT4,
   gl_FRAGMENT_LIGHT5,
   gl_FRAGMENT_LIGHT6,
   gl_FRAGMENT_LIGHT7
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_EXT_fragment_lighting"

extensionEntry "glFragmentLightModeli" [t| GLenum -> GLint -> IO () |]
extensionEntry "glFragmentLightModelf" [t| GLenum -> GLfloat -> IO () |]
extensionEntry "glFragmentLightModeliv" [t| GLenum -> Ptr GLint -> IO () |]
extensionEntry "glFragmentLightModelfv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glFragmentLighti" [t| GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glFragmentLightf" [t| GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glFragmentLightiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glFragmentLightfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetFragmentLightiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetFragmentLightfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glFragmentMaterialf" [t| GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glFragmentMateriali" [t| GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glFragmentMaterialfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glFragmentMaterialiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glFragmentColorMaterial" [t| GLenum -> GLenum -> IO () |]
extensionEntry "glGetFragmentMaterialfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetFragmentMaterialiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glLightEnvi" [t| GLenum -> GLint -> IO () |]

gl_FRAGMENT_LIGHTING :: GLenum
gl_FRAGMENT_LIGHTING = 0x8400

gl_FRAGMENT_COLOR_MATERIAL :: GLenum
gl_FRAGMENT_COLOR_MATERIAL = 0x8401

gl_FRAGMENT_COLOR_MATERIAL_FACE :: GLenum
gl_FRAGMENT_COLOR_MATERIAL_FACE = 0x8402

gl_FRAGMENT_COLOR_MATERIAL_PARAMETER :: GLenum
gl_FRAGMENT_COLOR_MATERIAL_PARAMETER = 0x8403

gl_MAX_FRAGMENT_LIGHTS :: GLenum
gl_MAX_FRAGMENT_LIGHTS = 0x8404

gl_MAX_ACTIVE_LIGHTS :: GLenum
gl_MAX_ACTIVE_LIGHTS = 0x8405

gl_CURRENT_RASTER_NORMAL :: GLenum
gl_CURRENT_RASTER_NORMAL = 0x8406

gl_LIGHT_ENV_MODE :: GLenum
gl_LIGHT_ENV_MODE = 0x8407

gl_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER :: GLenum
gl_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER = 0x8408

gl_FRAGMENT_LIGHT_MODEL_TWO_SIDE :: GLenum
gl_FRAGMENT_LIGHT_MODEL_TWO_SIDE = 0x8409

gl_FRAGMENT_LIGHT_MODEL_AMBIENT :: GLenum
gl_FRAGMENT_LIGHT_MODEL_AMBIENT = 0x840A

gl_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION :: GLenum
gl_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION = 0x840B

gl_FRAGMENT_LIGHT0 :: GLenum
gl_FRAGMENT_LIGHT0 = 0x840C

gl_FRAGMENT_LIGHT1 :: GLenum
gl_FRAGMENT_LIGHT1 = 0x840D

gl_FRAGMENT_LIGHT2 :: GLenum
gl_FRAGMENT_LIGHT2 = 0x840E

gl_FRAGMENT_LIGHT3 :: GLenum
gl_FRAGMENT_LIGHT3 = 0x840F

gl_FRAGMENT_LIGHT4 :: GLenum
gl_FRAGMENT_LIGHT4 = 0x8410

gl_FRAGMENT_LIGHT5 :: GLenum
gl_FRAGMENT_LIGHT5 = 0x8411

gl_FRAGMENT_LIGHT6 :: GLenum
gl_FRAGMENT_LIGHT6 = 0x8412

gl_FRAGMENT_LIGHT7 :: GLenum
gl_FRAGMENT_LIGHT7 = 0x8413

