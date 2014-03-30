{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell,
             ExistentialQuantification #-}
{-# OPTIONS_HADDOCK hide #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.Compatibility.Functions
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions from the ARB_compatibility extension, see
-- <http://www.opengl.org/registry/specs/ARB/compatibility.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.Compatibility.Functions (
   glAccum,
   glAlphaFunc,
   glAreTexturesResident,
   glArrayElement,
   glBegin,
   glBitmap,
   glCallList,
   glCallLists,
   glClearAccum,
   glClearIndex,
   glClientActiveTexture,
   glClipPlane,
   glColor3b,
   glColor3bv,
   glColor3d,
   glColor3dv,
   glColor3f,
   glColor3fv,
   glColor3i,
   glColor3iv,
   glColor3s,
   glColor3sv,
   glColor3ub,
   glColor3ubv,
   glColor3ui,
   glColor3uiv,
   glColor3us,
   glColor3usv,
   glColor4b,
   glColor4bv,
   glColor4d,
   glColor4dv,
   glColor4f,
   glColor4fv,
   glColor4i,
   glColor4iv,
   glColor4s,
   glColor4sv,
   glColor4ub,
   glColor4ubv,
   glColor4ui,
   glColor4uiv,
   glColor4us,
   glColor4usv,
   glColorMaterial,
   glColorPointer,
   glColorSubTable,
   glColorTable,
   glColorTableParameterfv,
   glColorTableParameteriv,
   glConvolutionFilter1D,
   glConvolutionFilter2D,
   glConvolutionParameterf,
   glConvolutionParameterfv,
   glConvolutionParameteri,
   glConvolutionParameteriv,
   glCopyColorSubTable,
   glCopyColorTable,
   glCopyConvolutionFilter1D,
   glCopyConvolutionFilter2D,
   glCopyPixels,
   glDeleteLists,
   glDisableClientState,
   glDrawPixels,
   glEdgeFlag,
   glEdgeFlagPointer,
   glEdgeFlagv,
   glEnableClientState,
   glEnd,
   glEndList,
   glEvalCoord1d,
   glEvalCoord1dv,
   glEvalCoord1f,
   glEvalCoord1fv,
   glEvalCoord2d,
   glEvalCoord2dv,
   glEvalCoord2f,
   glEvalCoord2fv,
   glEvalMesh1,
   glEvalMesh2,
   glEvalPoint1,
   glEvalPoint2,
   glFeedbackBuffer,
   glFogCoordPointer,
   glFogCoordd,
   glFogCoorddv,
   glFogCoordf,
   glFogCoordfv,
   glFogf,
   glFogfv,
   glFogi,
   glFogiv,
   glFrustum,
   glGenLists,
   glGetClipPlane,
   glGetColorTable,
   glGetColorTableParameterfv,
   glGetColorTableParameteriv,
   glGetConvolutionFilter,
   glGetConvolutionParameterfv,
   glGetConvolutionParameteriv,
   glGetHistogram,
   glGetHistogramParameterfv,
   glGetHistogramParameteriv,
   glGetLightfv,
   glGetLightiv,
   glGetMapdv,
   glGetMapfv,
   glGetMapiv,
   glGetMaterialfv,
   glGetMaterialiv,
   glGetMinmax,
   glGetMinmaxParameterfv,
   glGetMinmaxParameteriv,
   glGetPixelMapfv,
   glGetPixelMapuiv,
   glGetPixelMapusv,
   glGetPolygonStipple,
   glGetSeparableFilter,
   glGetTexEnvfv,
   glGetTexEnviv,
   glGetTexGendv,
   glGetTexGenfv,
   glGetTexGeniv,
   glHistogram,
   glIndexMask,
   glIndexPointer,
   glIndexd,
   glIndexdv,
   glIndexf,
   glIndexfv,
   glIndexi,
   glIndexiv,
   glIndexs,
   glIndexsv,
   glIndexub,
   glIndexubv,
   glInitNames,
   glInterleavedArrays,
   glIsList,
   glLightModelf,
   glLightModelfv,
   glLightModeli,
   glLightModeliv,
   glLightf,
   glLightfv,
   glLighti,
   glLightiv,
   glLineStipple,
   glListBase,
   glLoadIdentity,
   glLoadMatrixd,
   glLoadMatrixf,
   glLoadName,
   glLoadTransposeMatrixd,
   glLoadTransposeMatrixf,
   glMap1d,
   glMap1f,
   glMap2d,
   glMap2f,
   glMapGrid1d,
   glMapGrid1f,
   glMapGrid2d,
   glMapGrid2f,
   glMaterialf,
   glMaterialfv,
   glMateriali,
   glMaterialiv,
   glMatrixMode,
   glMinmax,
   glMultMatrixd,
   glMultMatrixf,
   glMultTransposeMatrixd,
   glMultTransposeMatrixf,
   glMultiTexCoord1d,
   glMultiTexCoord1dv,
   glMultiTexCoord1f,
   glMultiTexCoord1fv,
   glMultiTexCoord1i,
   glMultiTexCoord1iv,
   glMultiTexCoord1s,
   glMultiTexCoord1sv,
   glMultiTexCoord2d,
   glMultiTexCoord2dv,
   glMultiTexCoord2f,
   glMultiTexCoord2fv,
   glMultiTexCoord2i,
   glMultiTexCoord2iv,
   glMultiTexCoord2s,
   glMultiTexCoord2sv,
   glMultiTexCoord3d,
   glMultiTexCoord3dv,
   glMultiTexCoord3f,
   glMultiTexCoord3fv,
   glMultiTexCoord3i,
   glMultiTexCoord3iv,
   glMultiTexCoord3s,
   glMultiTexCoord3sv,
   glMultiTexCoord4d,
   glMultiTexCoord4dv,
   glMultiTexCoord4f,
   glMultiTexCoord4fv,
   glMultiTexCoord4i,
   glMultiTexCoord4iv,
   glMultiTexCoord4s,
   glMultiTexCoord4sv,
   glNewList,
   glNormal3b,
   glNormal3bv,
   glNormal3d,
   glNormal3dv,
   glNormal3f,
   glNormal3fv,
   glNormal3i,
   glNormal3iv,
   glNormal3s,
   glNormal3sv,
   glNormalPointer,
   glOrtho,
   glPassThrough,
   glPixelMapfv,
   glPixelMapuiv,
   glPixelMapusv,
   glPixelTransferf,
   glPixelTransferi,
   glPixelZoom,
   glPolygonStipple,
   glPopAttrib,
   glPopClientAttrib,
   glPopMatrix,
   glPopName,
   glPrioritizeTextures,
   glPushAttrib,
   glPushClientAttrib,
   glPushMatrix,
   glPushName,
   glRasterPos2d,
   glRasterPos2dv,
   glRasterPos2f,
   glRasterPos2fv,
   glRasterPos2i,
   glRasterPos2iv,
   glRasterPos2s,
   glRasterPos2sv,
   glRasterPos3d,
   glRasterPos3dv,
   glRasterPos3f,
   glRasterPos3fv,
   glRasterPos3i,
   glRasterPos3iv,
   glRasterPos3s,
   glRasterPos3sv,
   glRasterPos4d,
   glRasterPos4dv,
   glRasterPos4f,
   glRasterPos4fv,
   glRasterPos4i,
   glRasterPos4iv,
   glRasterPos4s,
   glRasterPos4sv,
   glRectd,
   glRectdv,
   glRectf,
   glRectfv,
   glRecti,
   glRectiv,
   glRects,
   glRectsv,
   glRenderMode,
   glResetHistogram,
   glResetMinmax,
   glRotated,
   glRotatef,
   glSamplePass,
   glScaled,
   glScalef,
   glSecondaryColor3b,
   glSecondaryColor3bv,
   glSecondaryColor3d,
   glSecondaryColor3dv,
   glSecondaryColor3f,
   glSecondaryColor3fv,
   glSecondaryColor3i,
   glSecondaryColor3iv,
   glSecondaryColor3s,
   glSecondaryColor3sv,
   glSecondaryColor3ub,
   glSecondaryColor3ubv,
   glSecondaryColor3ui,
   glSecondaryColor3uiv,
   glSecondaryColor3us,
   glSecondaryColor3usv,
   glSecondaryColorPointer,
   glSelectBuffer,
   glSeparableFilter2D,
   glShadeModel,
   glTexCoord1d,
   glTexCoord1dv,
   glTexCoord1f,
   glTexCoord1fv,
   glTexCoord1i,
   glTexCoord1iv,
   glTexCoord1s,
   glTexCoord1sv,
   glTexCoord2d,
   glTexCoord2dv,
   glTexCoord2f,
   glTexCoord2fv,
   glTexCoord2i,
   glTexCoord2iv,
   glTexCoord2s,
   glTexCoord2sv,
   glTexCoord3d,
   glTexCoord3dv,
   glTexCoord3f,
   glTexCoord3fv,
   glTexCoord3i,
   glTexCoord3iv,
   glTexCoord3s,
   glTexCoord3sv,
   glTexCoord4d,
   glTexCoord4dv,
   glTexCoord4f,
   glTexCoord4fv,
   glTexCoord4i,
   glTexCoord4iv,
   glTexCoord4s,
   glTexCoord4sv,
   glTexCoordPointer,
   glTexEnvf,
   glTexEnvfv,
   glTexEnvi,
   glTexEnviv,
   glTexGend,
   glTexGendv,
   glTexGenf,
   glTexGenfv,
   glTexGeni,
   glTexGeniv,
   glTranslated,
   glTranslatef,
   glVertex2d,
   glVertex2dv,
   glVertex2f,
   glVertex2fv,
   glVertex2i,
   glVertex2iv,
   glVertex2s,
   glVertex2sv,
   glVertex3d,
   glVertex3dv,
   glVertex3f,
   glVertex3fv,
   glVertex3i,
   glVertex3iv,
   glVertex3s,
   glVertex3sv,
   glVertex4d,
   glVertex4dv,
   glVertex4f,
   glVertex4fv,
   glVertex4i,
   glVertex4iv,
   glVertex4s,
   glVertex4sv,
   glVertexPointer,
   glWindowPos2d,
   glWindowPos2dv,
   glWindowPos2f,
   glWindowPos2fv,
   glWindowPos2i,
   glWindowPos2iv,
   glWindowPos2s,
   glWindowPos2sv,
   glWindowPos3d,
   glWindowPos3dv,
   glWindowPos3f,
   glWindowPos3fv,
   glWindowPos3i,
   glWindowPos3iv,
   glWindowPos3s,
   glWindowPos3sv
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_ARB_compatibility"

extensionEntry "glAccum" [t| GLenum -> GLfloat -> IO () |]
extensionEntry "glAlphaFunc" [t| GLenum -> GLclampf -> IO () |]
extensionEntry "glAreTexturesResident" [t| GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean |]
extensionEntry "glArrayElement" [t| GLint -> IO () |]
extensionEntry "glBegin" [t| GLenum -> IO () |]
extensionEntry "glBitmap" [t| GLsizei -> GLsizei -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Ptr GLubyte -> IO () |]
extensionEntry "glCallList" [t| GLuint -> IO () |]
extensionEntry "glCallLists" [t| forall a . GLsizei -> GLenum -> Ptr a -> IO () |]
extensionEntry "glClearAccum" [t| GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glClearIndex" [t| GLfloat -> IO () |]
extensionEntry "glClientActiveTexture" [t| GLenum -> IO () |]
extensionEntry "glClipPlane" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glColor3b" [t| GLbyte -> GLbyte -> GLbyte -> IO () |]
extensionEntry "glColor3bv" [t| Ptr GLbyte -> IO () |]
extensionEntry "glColor3d" [t| GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glColor3dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glColor3f" [t| GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glColor3fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glColor3i" [t| GLint -> GLint -> GLint -> IO () |]
extensionEntry "glColor3iv" [t| Ptr GLint -> IO () |]
extensionEntry "glColor3s" [t| GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glColor3sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glColor3ub" [t| GLubyte -> GLubyte -> GLubyte -> IO () |]
extensionEntry "glColor3ubv" [t| Ptr GLubyte -> IO () |]
extensionEntry "glColor3ui" [t| GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glColor3uiv" [t| Ptr GLuint -> IO () |]
extensionEntry "glColor3us" [t| GLushort -> GLushort -> GLushort -> IO () |]
extensionEntry "glColor3usv" [t| Ptr GLushort -> IO () |]
extensionEntry "glColor4b" [t| GLbyte -> GLbyte -> GLbyte -> GLbyte -> IO () |]
extensionEntry "glColor4bv" [t| Ptr GLbyte -> IO () |]
extensionEntry "glColor4d" [t| GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glColor4dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glColor4f" [t| GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glColor4fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glColor4i" [t| GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glColor4iv" [t| Ptr GLint -> IO () |]
extensionEntry "glColor4s" [t| GLshort -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glColor4sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glColor4ub" [t| GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO () |]
extensionEntry "glColor4ubv" [t| Ptr GLubyte -> IO () |]
extensionEntry "glColor4ui" [t| GLuint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glColor4uiv" [t| Ptr GLuint -> IO () |]
extensionEntry "glColor4us" [t| GLushort -> GLushort -> GLushort -> GLushort -> IO () |]
extensionEntry "glColor4usv" [t| Ptr GLushort -> IO () |]
extensionEntry "glColorMaterial" [t| GLenum -> GLenum -> IO () |]
extensionEntry "glColorPointer" [t| forall a . GLint -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glColorSubTable" [t| forall a . GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glColorTable" [t| forall a . GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glColorTableParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glColorTableParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glConvolutionFilter1D" [t| forall a . GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glConvolutionFilter2D" [t| forall a . GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glConvolutionParameterf" [t| GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glConvolutionParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glConvolutionParameteri" [t| GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glConvolutionParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glCopyColorSubTable" [t| GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> IO () |]
extensionEntry "glCopyColorTable" [t| GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO () |]
extensionEntry "glCopyConvolutionFilter1D" [t| GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO () |]
extensionEntry "glCopyConvolutionFilter2D" [t| GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO () |]
extensionEntry "glCopyPixels" [t| GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> IO () |]
extensionEntry "glDeleteLists" [t| GLuint -> GLsizei -> IO () |]
extensionEntry "glDisableClientState" [t| GLenum -> IO () |]
extensionEntry "glDrawPixels" [t| forall a . GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glEdgeFlag" [t| GLboolean -> IO () |]
extensionEntry "glEdgeFlagPointer" [t| forall a . GLsizei -> Ptr a -> IO () |]
extensionEntry "glEdgeFlagv" [t| Ptr GLboolean -> IO () |]
extensionEntry "glEnableClientState" [t| GLenum -> IO () |]
extensionEntry "glEnd" [t| IO () |]
extensionEntry "glEndList" [t| IO () |]
extensionEntry "glEvalCoord1d" [t| GLdouble -> IO () |]
extensionEntry "glEvalCoord1dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glEvalCoord1f" [t| GLfloat -> IO () |]
extensionEntry "glEvalCoord1fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glEvalCoord2d" [t| GLdouble -> GLdouble -> IO () |]
extensionEntry "glEvalCoord2dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glEvalCoord2f" [t| GLfloat -> GLfloat -> IO () |]
extensionEntry "glEvalCoord2fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glEvalMesh1" [t| GLenum -> GLint -> GLint -> IO () |]
extensionEntry "glEvalMesh2" [t| GLenum -> GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glEvalPoint1" [t| GLint -> IO () |]
extensionEntry "glEvalPoint2" [t| GLint -> GLint -> IO () |]
extensionEntry "glFeedbackBuffer" [t| GLsizei -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glFogCoordPointer" [t| forall a . GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glFogCoordd" [t| GLdouble -> IO () |]
extensionEntry "glFogCoorddv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glFogCoordf" [t| GLfloat -> IO () |]
extensionEntry "glFogCoordfv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glFogf" [t| GLenum -> GLfloat -> IO () |]
extensionEntry "glFogfv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glFogi" [t| GLenum -> GLint -> IO () |]
extensionEntry "glFogiv" [t| GLenum -> Ptr GLint -> IO () |]
extensionEntry "glFrustum" [t| GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glGenLists" [t| GLsizei -> IO GLuint |]
extensionEntry "glGetClipPlane" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glGetColorTable" [t| forall a . GLenum -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glGetColorTableParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetColorTableParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetConvolutionFilter" [t| forall a . GLenum -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glGetConvolutionParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetConvolutionParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetHistogram" [t| forall a . GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glGetHistogramParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetHistogramParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetLightfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetLightiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetMapdv" [t| GLenum -> GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glGetMapfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetMapiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetMaterialfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetMaterialiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetMinmax" [t| forall a . GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO () |]
extensionEntry "glGetMinmaxParameterfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetMinmaxParameteriv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetPixelMapfv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetPixelMapuiv" [t| GLenum -> Ptr GLuint -> IO () |]
extensionEntry "glGetPixelMapusv" [t| GLenum -> Ptr GLushort -> IO () |]
extensionEntry "glGetPolygonStipple" [t| Ptr GLubyte -> IO () |]
extensionEntry "glGetSeparableFilter" [t| forall a . GLenum -> GLenum -> GLenum -> Ptr a -> Ptr a -> Ptr a -> IO () |]
extensionEntry "glGetTexEnvfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetTexEnviv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetTexGendv" [t| GLenum -> GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glGetTexGenfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetTexGeniv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glHistogram" [t| GLenum -> GLsizei -> GLenum -> GLboolean -> IO () |]
extensionEntry "glIndexMask" [t| GLuint -> IO () |]
extensionEntry "glIndexPointer" [t| forall a . GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glIndexd" [t| GLdouble -> IO () |]
extensionEntry "glIndexdv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glIndexf" [t| GLfloat -> IO () |]
extensionEntry "glIndexfv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glIndexi" [t| GLint -> IO () |]
extensionEntry "glIndexiv" [t| Ptr GLint -> IO () |]
extensionEntry "glIndexs" [t| GLshort -> IO () |]
extensionEntry "glIndexsv" [t| Ptr GLshort -> IO () |]
extensionEntry "glIndexub" [t| GLubyte -> IO () |]
extensionEntry "glIndexubv" [t| Ptr GLubyte -> IO () |]
extensionEntry "glInitNames" [t| IO () |]
extensionEntry "glInterleavedArrays" [t| forall a . GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glIsList" [t| GLuint -> IO GLboolean |]
extensionEntry "glLightModelf" [t| GLenum -> GLfloat -> IO () |]
extensionEntry "glLightModelfv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glLightModeli" [t| GLenum -> GLint -> IO () |]
extensionEntry "glLightModeliv" [t| GLenum -> Ptr GLint -> IO () |]
extensionEntry "glLightf" [t| GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glLightfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glLighti" [t| GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glLightiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glLineStipple" [t| GLint -> GLushort -> IO () |]
extensionEntry "glListBase" [t| GLuint -> IO () |]
extensionEntry "glLoadIdentity" [t| IO () |]
extensionEntry "glLoadMatrixd" [t| Ptr GLdouble -> IO () |]
extensionEntry "glLoadMatrixf" [t| Ptr GLfloat -> IO () |]
extensionEntry "glLoadName" [t| GLuint -> IO () |]
extensionEntry "glLoadTransposeMatrixd" [t| Ptr GLdouble -> IO () |]
extensionEntry "glLoadTransposeMatrixf" [t| Ptr GLfloat -> IO () |]
extensionEntry "glMap1d" [t| GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO () |]
extensionEntry "glMap1f" [t| GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO () |]
extensionEntry "glMap2d" [t| GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO () |]
extensionEntry "glMap2f" [t| GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO () |]
extensionEntry "glMapGrid1d" [t| GLint -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMapGrid1f" [t| GLint -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glMapGrid2d" [t| GLint -> GLdouble -> GLdouble -> GLint -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMapGrid2f" [t| GLint -> GLfloat -> GLfloat -> GLint -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glMaterialf" [t| GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glMaterialfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMateriali" [t| GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glMaterialiv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMatrixMode" [t| GLenum -> IO () |]
extensionEntry "glMinmax" [t| GLenum -> GLenum -> GLboolean -> IO () |]
extensionEntry "glMultMatrixd" [t| Ptr GLdouble -> IO () |]
extensionEntry "glMultMatrixf" [t| Ptr GLfloat -> IO () |]
extensionEntry "glMultTransposeMatrixd" [t| Ptr GLdouble -> IO () |]
extensionEntry "glMultTransposeMatrixf" [t| Ptr GLfloat -> IO () |]
extensionEntry "glMultiTexCoord1d" [t| GLenum -> GLdouble -> IO () |]
extensionEntry "glMultiTexCoord1dv" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glMultiTexCoord1f" [t| GLenum -> GLfloat -> IO () |]
extensionEntry "glMultiTexCoord1fv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMultiTexCoord1i" [t| GLenum -> GLint -> IO () |]
extensionEntry "glMultiTexCoord1iv" [t| GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMultiTexCoord1s" [t| GLenum -> GLshort -> IO () |]
extensionEntry "glMultiTexCoord1sv" [t| GLenum -> Ptr GLshort -> IO () |]
extensionEntry "glMultiTexCoord2d" [t| GLenum -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMultiTexCoord2dv" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glMultiTexCoord2f" [t| GLenum -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glMultiTexCoord2fv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMultiTexCoord2i" [t| GLenum -> GLint -> GLint -> IO () |]
extensionEntry "glMultiTexCoord2iv" [t| GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMultiTexCoord2s" [t| GLenum -> GLshort -> GLshort -> IO () |]
extensionEntry "glMultiTexCoord2sv" [t| GLenum -> Ptr GLshort -> IO () |]
extensionEntry "glMultiTexCoord3d" [t| GLenum -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMultiTexCoord3dv" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glMultiTexCoord3f" [t| GLenum -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glMultiTexCoord3fv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMultiTexCoord3i" [t| GLenum -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glMultiTexCoord3iv" [t| GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMultiTexCoord3s" [t| GLenum -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glMultiTexCoord3sv" [t| GLenum -> Ptr GLshort -> IO () |]
extensionEntry "glMultiTexCoord4d" [t| GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glMultiTexCoord4dv" [t| GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glMultiTexCoord4f" [t| GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glMultiTexCoord4fv" [t| GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glMultiTexCoord4i" [t| GLenum -> GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glMultiTexCoord4iv" [t| GLenum -> Ptr GLint -> IO () |]
extensionEntry "glMultiTexCoord4s" [t| GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glMultiTexCoord4sv" [t| GLenum -> Ptr GLshort -> IO () |]
extensionEntry "glNewList" [t| GLuint -> GLenum -> IO () |]
extensionEntry "glNormal3b" [t| GLbyte -> GLbyte -> GLbyte -> IO () |]
extensionEntry "glNormal3bv" [t| Ptr GLbyte -> IO () |]
extensionEntry "glNormal3d" [t| GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glNormal3dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glNormal3f" [t| GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glNormal3fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glNormal3i" [t| GLint -> GLint -> GLint -> IO () |]
extensionEntry "glNormal3iv" [t| Ptr GLint -> IO () |]
extensionEntry "glNormal3s" [t| GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glNormal3sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glNormalPointer" [t| forall a . GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glOrtho" [t| GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glPassThrough" [t| GLfloat -> IO () |]
extensionEntry "glPixelMapfv" [t| GLenum -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glPixelMapuiv" [t| GLenum -> GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glPixelMapusv" [t| GLenum -> GLsizei -> Ptr GLushort -> IO () |]
extensionEntry "glPixelTransferf" [t| GLenum -> GLfloat -> IO () |]
extensionEntry "glPixelTransferi" [t| GLenum -> GLint -> IO () |]
extensionEntry "glPixelZoom" [t| GLfloat -> GLfloat -> IO () |]
extensionEntry "glPolygonStipple" [t| Ptr GLubyte -> IO () |]
extensionEntry "glPopAttrib" [t| IO () |]
extensionEntry "glPopClientAttrib" [t| IO () |]
extensionEntry "glPopMatrix" [t| IO () |]
extensionEntry "glPopName" [t| IO () |]
extensionEntry "glPrioritizeTextures" [t| GLsizei -> Ptr GLuint -> Ptr GLclampf -> IO () |]
extensionEntry "glPushAttrib" [t| GLbitfield -> IO () |]
extensionEntry "glPushClientAttrib" [t| GLbitfield -> IO () |]
extensionEntry "glPushMatrix" [t| IO () |]
extensionEntry "glPushName" [t| GLuint -> IO () |]
extensionEntry "glRasterPos2d" [t| GLdouble -> GLdouble -> IO () |]
extensionEntry "glRasterPos2dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glRasterPos2f" [t| GLfloat -> GLfloat -> IO () |]
extensionEntry "glRasterPos2fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glRasterPos2i" [t| GLint -> GLint -> IO () |]
extensionEntry "glRasterPos2iv" [t| Ptr GLint -> IO () |]
extensionEntry "glRasterPos2s" [t| GLshort -> GLshort -> IO () |]
extensionEntry "glRasterPos2sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glRasterPos3d" [t| GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glRasterPos3dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glRasterPos3f" [t| GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glRasterPos3fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glRasterPos3i" [t| GLint -> GLint -> GLint -> IO () |]
extensionEntry "glRasterPos3iv" [t| Ptr GLint -> IO () |]
extensionEntry "glRasterPos3s" [t| GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glRasterPos3sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glRasterPos4d" [t| GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glRasterPos4dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glRasterPos4f" [t| GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glRasterPos4fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glRasterPos4i" [t| GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glRasterPos4iv" [t| Ptr GLint -> IO () |]
extensionEntry "glRasterPos4s" [t| GLshort -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glRasterPos4sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glRectd" [t| GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glRectdv" [t| Ptr GLdouble -> Ptr GLdouble -> IO () |]
extensionEntry "glRectf" [t| GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glRectfv" [t| Ptr GLfloat -> Ptr GLfloat -> IO () |]
extensionEntry "glRecti" [t| GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glRectiv" [t| Ptr GLint -> Ptr GLint -> IO () |]
extensionEntry "glRects" [t| GLshort -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glRectsv" [t| Ptr GLshort -> Ptr GLshort -> IO () |]
extensionEntry "glRenderMode" [t| GLenum -> IO GLint |]
extensionEntry "glResetHistogram" [t| GLenum -> IO () |]
extensionEntry "glResetMinmax" [t| GLenum -> IO () |]
extensionEntry "glRotated" [t| GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glRotatef" [t| GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glSamplePass" [t| GLenum -> IO () |]
extensionEntry "glScaled" [t| GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glScalef" [t| GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glSecondaryColor3b" [t| GLbyte -> GLbyte -> GLbyte -> IO () |]
extensionEntry "glSecondaryColor3bv" [t| Ptr GLbyte -> IO () |]
extensionEntry "glSecondaryColor3d" [t| GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glSecondaryColor3dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glSecondaryColor3f" [t| GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glSecondaryColor3fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glSecondaryColor3i" [t| GLint -> GLint -> GLint -> IO () |]
extensionEntry "glSecondaryColor3iv" [t| Ptr GLint -> IO () |]
extensionEntry "glSecondaryColor3s" [t| GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glSecondaryColor3sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glSecondaryColor3ub" [t| GLubyte -> GLubyte -> GLubyte -> IO () |]
extensionEntry "glSecondaryColor3ubv" [t| Ptr GLubyte -> IO () |]
extensionEntry "glSecondaryColor3ui" [t| GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glSecondaryColor3uiv" [t| Ptr GLuint -> IO () |]
extensionEntry "glSecondaryColor3us" [t| GLushort -> GLushort -> GLushort -> IO () |]
extensionEntry "glSecondaryColor3usv" [t| Ptr GLushort -> IO () |]
extensionEntry "glSecondaryColorPointer" [t| forall a . GLint -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glSelectBuffer" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glSeparableFilter2D" [t| forall a . GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> Ptr a -> IO () |]
extensionEntry "glShadeModel" [t| GLenum -> IO () |]
extensionEntry "glTexCoord1d" [t| GLdouble -> IO () |]
extensionEntry "glTexCoord1dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glTexCoord1f" [t| GLfloat -> IO () |]
extensionEntry "glTexCoord1fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glTexCoord1i" [t| GLint -> IO () |]
extensionEntry "glTexCoord1iv" [t| Ptr GLint -> IO () |]
extensionEntry "glTexCoord1s" [t| GLshort -> IO () |]
extensionEntry "glTexCoord1sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glTexCoord2d" [t| GLdouble -> GLdouble -> IO () |]
extensionEntry "glTexCoord2dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glTexCoord2f" [t| GLfloat -> GLfloat -> IO () |]
extensionEntry "glTexCoord2fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glTexCoord2i" [t| GLint -> GLint -> IO () |]
extensionEntry "glTexCoord2iv" [t| Ptr GLint -> IO () |]
extensionEntry "glTexCoord2s" [t| GLshort -> GLshort -> IO () |]
extensionEntry "glTexCoord2sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glTexCoord3d" [t| GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glTexCoord3dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glTexCoord3f" [t| GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glTexCoord3fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glTexCoord3i" [t| GLint -> GLint -> GLint -> IO () |]
extensionEntry "glTexCoord3iv" [t| Ptr GLint -> IO () |]
extensionEntry "glTexCoord3s" [t| GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glTexCoord3sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glTexCoord4d" [t| GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glTexCoord4dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glTexCoord4f" [t| GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glTexCoord4fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glTexCoord4i" [t| GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glTexCoord4iv" [t| Ptr GLint -> IO () |]
extensionEntry "glTexCoord4s" [t| GLshort -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glTexCoord4sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glTexCoordPointer" [t| forall a . GLint -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glTexEnvf" [t| GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glTexEnvfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glTexEnvi" [t| GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glTexEnviv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glTexGend" [t| GLenum -> GLenum -> GLdouble -> IO () |]
extensionEntry "glTexGendv" [t| GLenum -> GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glTexGenf" [t| GLenum -> GLenum -> GLfloat -> IO () |]
extensionEntry "glTexGenfv" [t| GLenum -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glTexGeni" [t| GLenum -> GLenum -> GLint -> IO () |]
extensionEntry "glTexGeniv" [t| GLenum -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glTranslated" [t| GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glTranslatef" [t| GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertex2d" [t| GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertex2dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glVertex2f" [t| GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertex2fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glVertex2i" [t| GLint -> GLint -> IO () |]
extensionEntry "glVertex2iv" [t| Ptr GLint -> IO () |]
extensionEntry "glVertex2s" [t| GLshort -> GLshort -> IO () |]
extensionEntry "glVertex2sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glVertex3d" [t| GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertex3dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glVertex3f" [t| GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertex3fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glVertex3i" [t| GLint -> GLint -> GLint -> IO () |]
extensionEntry "glVertex3iv" [t| Ptr GLint -> IO () |]
extensionEntry "glVertex3s" [t| GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glVertex3sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glVertex4d" [t| GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertex4dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glVertex4f" [t| GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertex4fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glVertex4i" [t| GLint -> GLint -> GLint -> GLint -> IO () |]
extensionEntry "glVertex4iv" [t| Ptr GLint -> IO () |]
extensionEntry "glVertex4s" [t| GLshort -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glVertex4sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glVertexPointer" [t| forall a . GLint -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glWindowPos2d" [t| GLdouble -> GLdouble -> IO () |]
extensionEntry "glWindowPos2dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glWindowPos2f" [t| GLfloat -> GLfloat -> IO () |]
extensionEntry "glWindowPos2fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glWindowPos2i" [t| GLint -> GLint -> IO () |]
extensionEntry "glWindowPos2iv" [t| Ptr GLint -> IO () |]
extensionEntry "glWindowPos2s" [t| GLshort -> GLshort -> IO () |]
extensionEntry "glWindowPos2sv" [t| Ptr GLshort -> IO () |]
extensionEntry "glWindowPos3d" [t| GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glWindowPos3dv" [t| Ptr GLdouble -> IO () |]
extensionEntry "glWindowPos3f" [t| GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glWindowPos3fv" [t| Ptr GLfloat -> IO () |]
extensionEntry "glWindowPos3i" [t| GLint -> GLint -> GLint -> IO () |]
extensionEntry "glWindowPos3iv" [t| Ptr GLint -> IO () |]
extensionEntry "glWindowPos3s" [t| GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glWindowPos3sv" [t| Ptr GLshort -> IO () |]
