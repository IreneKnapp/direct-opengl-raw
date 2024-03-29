{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell,
             ExistentialQuantification #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.NV.VertexProgram
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the NV_vertex_program extension, see
-- <http://www.opengl.org/registry/specs/NV/vertex_program.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.NV.VertexProgram (
   -- * Functions
   glBindProgramNV,
   glDeleteProgramsNV,
   glExecuteProgram,
   glGenProgramsNV,
   glAreProgramsResident,
   glRequestResidentPrograms,
   glGetProgramParameterfv,
   glGetProgramParameterdv,
   glGetProgramivNV,
   glGetProgramStringNV,
   glGetTrackMatrixiv,
   glGetVertexAttribdvNV,
   glGetVertexAttribfvNV,
   glGetVertexAttribivNV,
   glGetVertexAttribPointervNV,
   glIsProgramNV,
   glLoadProgram,
   glProgramParameter4f,
   glProgramParameter4d,
   glProgramParameter4dv,
   glProgramParameter4fv,
   glProgramParameters4dv,
   glProgramParameters4fv,
   glTrackMatrix,
   glVertexAttribPointerNV,
   glVertexAttrib1sNV,
   glVertexAttrib1fNV,
   glVertexAttrib1dNV,
   glVertexAttrib2sNV,
   glVertexAttrib2fNV,
   glVertexAttrib2dNV,
   glVertexAttrib3sNV,
   glVertexAttrib3fNV,
   glVertexAttrib3dNV,
   glVertexAttrib4sNV,
   glVertexAttrib4fNV,
   glVertexAttrib4dNV,
   glVertexAttrib4ub,
   glVertexAttrib1svNV,
   glVertexAttrib1fvNV,
   glVertexAttrib1dvNV,
   glVertexAttrib2svNV,
   glVertexAttrib2fvNV,
   glVertexAttrib2dvNV,
   glVertexAttrib3svNV,
   glVertexAttrib3fvNV,
   glVertexAttrib3dvNV,
   glVertexAttrib4svNV,
   glVertexAttrib4fvNV,
   glVertexAttrib4dvNV,
   glVertexAttrib4ubvNV,
   glVertexAttribs1sv,
   glVertexAttribs1fv,
   glVertexAttribs1dv,
   glVertexAttribs2sv,
   glVertexAttribs2fv,
   glVertexAttribs2dv,
   glVertexAttribs3sv,
   glVertexAttribs3fv,
   glVertexAttribs3dv,
   glVertexAttribs4sv,
   glVertexAttribs4fv,
   glVertexAttribs4dv,
   glVertexAttribs4ubv,
   -- * Tokens
   gl_VERTEX_PROGRAM,
   gl_VERTEX_PROGRAM_POINT_SIZE,
   gl_VERTEX_PROGRAM_TWO_SIDE,
   gl_VERTEX_STATE_PROGRAM,
   gl_ATTRIB_ARRAY_SIZE,
   gl_ATTRIB_ARRAY_STRIDE,
   gl_ATTRIB_ARRAY_TYPE,
   gl_CURRENT_ATTRIB,
   gl_PROGRAM_PARAMETER,
   gl_ATTRIB_ARRAY_POINTER,
   gl_PROGRAM_TARGET,
   gl_PROGRAM_LENGTH,
   gl_PROGRAM_RESIDENT,
   gl_PROGRAM_STRING,
   gl_TRACK_MATRIX,
   gl_TRACK_MATRIX_TRANSFORM,
   gl_MAX_TRACK_MATRIX_STACK_DEPTH,
   gl_MAX_TRACK_MATRICES,
   gl_CURRENT_MATRIX_STACK_DEPTH,
   gl_CURRENT_MATRIX,
   gl_VERTEX_PROGRAM_BINDING,
   gl_PROGRAM_ERROR_POSITION,
   gl_MODELVIEW_PROJECTION,
   gl_MATRIX0_NV,
   gl_MATRIX1_NV,
   gl_MATRIX2_NV,
   gl_MATRIX3_NV,
   gl_MATRIX4_NV,
   gl_MATRIX5_NV,
   gl_MATRIX6_NV,
   gl_MATRIX7_NV,
   gl_IDENTITY,
   gl_INVERSE,
   gl_TRANSPOSE,
   gl_INVERSE_TRANSPOSE,
   gl_VERTEX_ATTRIB_ARRAY0,
   gl_VERTEX_ATTRIB_ARRAY1,
   gl_VERTEX_ATTRIB_ARRAY2,
   gl_VERTEX_ATTRIB_ARRAY3,
   gl_VERTEX_ATTRIB_ARRAY4,
   gl_VERTEX_ATTRIB_ARRAY5,
   gl_VERTEX_ATTRIB_ARRAY6,
   gl_VERTEX_ATTRIB_ARRAY7,
   gl_VERTEX_ATTRIB_ARRAY8,
   gl_VERTEX_ATTRIB_ARRAY9,
   gl_VERTEX_ATTRIB_ARRAY10,
   gl_VERTEX_ATTRIB_ARRAY11,
   gl_VERTEX_ATTRIB_ARRAY12,
   gl_VERTEX_ATTRIB_ARRAY13,
   gl_VERTEX_ATTRIB_ARRAY14,
   gl_VERTEX_ATTRIB_ARRAY15,
   gl_MAP1_VERTEX_ATTRIB0_4,
   gl_MAP1_VERTEX_ATTRIB1_4,
   gl_MAP1_VERTEX_ATTRIB2_4,
   gl_MAP1_VERTEX_ATTRIB3_4,
   gl_MAP1_VERTEX_ATTRIB4_4,
   gl_MAP1_VERTEX_ATTRIB5_4,
   gl_MAP1_VERTEX_ATTRIB6_4,
   gl_MAP1_VERTEX_ATTRIB7_4,
   gl_MAP1_VERTEX_ATTRIB8_4,
   gl_MAP1_VERTEX_ATTRIB9_4,
   gl_MAP1_VERTEX_ATTRIB10_4,
   gl_MAP1_VERTEX_ATTRIB11_4,
   gl_MAP1_VERTEX_ATTRIB12_4,
   gl_MAP1_VERTEX_ATTRIB13_4,
   gl_MAP1_VERTEX_ATTRIB14_4,
   gl_MAP1_VERTEX_ATTRIB15_4,
   gl_MAP2_VERTEX_ATTRIB0_4,
   gl_MAP2_VERTEX_ATTRIB1_4,
   gl_MAP2_VERTEX_ATTRIB2_4,
   gl_MAP2_VERTEX_ATTRIB3_4,
   gl_MAP2_VERTEX_ATTRIB4_4,
   gl_MAP2_VERTEX_ATTRIB5_4,
   gl_MAP2_VERTEX_ATTRIB6_4,
   gl_MAP2_VERTEX_ATTRIB7_4,
   gl_MAP2_VERTEX_ATTRIB8_4,
   gl_MAP2_VERTEX_ATTRIB9_4,
   gl_MAP2_VERTEX_ATTRIB10_4,
   gl_MAP2_VERTEX_ATTRIB11_4,
   gl_MAP2_VERTEX_ATTRIB12_4,
   gl_MAP2_VERTEX_ATTRIB13_4,
   gl_MAP2_VERTEX_ATTRIB14_4,
   gl_MAP2_VERTEX_ATTRIB15_4
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.ARB.VertexProgram
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_NV_vertex_program"

extensionEntry "glBindProgramNV" [t| GLenum -> GLuint -> IO () |]
extensionEntry "glDeleteProgramsNV" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glExecuteProgram" [t| GLenum -> GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glGenProgramsNV" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glAreProgramsResident" [t| GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean |]
extensionEntry "glRequestResidentPrograms" [t| GLsizei -> Ptr GLuint -> IO () |]
extensionEntry "glGetProgramParameterfv" [t| GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetProgramParameterdv" [t| GLenum -> GLuint -> GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glGetProgramivNV" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetProgramStringNV" [t| GLuint -> GLenum -> Ptr GLubyte -> IO () |]
extensionEntry "glGetTrackMatrixiv" [t| GLenum -> GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetVertexAttribdvNV" [t| GLuint -> GLenum -> Ptr GLdouble -> IO () |]
extensionEntry "glGetVertexAttribfvNV" [t| GLuint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetVertexAttribivNV" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetVertexAttribPointervNV" [t| forall a . GLuint -> GLenum -> Ptr (Ptr a) -> IO () |]
extensionEntry "glIsProgramNV" [t| GLuint -> IO GLboolean |]
extensionEntry "glLoadProgram" [t| GLenum -> GLuint -> GLsizei -> Ptr GLubyte -> IO () |]
extensionEntry "glProgramParameter4f" [t| GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat  -> IO () |]
extensionEntry "glProgramParameter4d" [t| GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble  -> IO () |]
extensionEntry "glProgramParameter4dv" [t| GLenum -> GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramParameter4fv" [t| GLenum -> GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glProgramParameters4dv" [t| GLenum -> GLuint -> GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glProgramParameters4fv" [t| GLenum -> GLuint -> GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glTrackMatrix" [t| GLenum -> GLuint -> GLenum -> GLenum -> IO () |]
extensionEntry "glVertexAttribPointerNV" [t| forall a . GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO () |]
extensionEntry "glVertexAttrib1sNV" [t| GLuint -> GLshort -> IO () |]
extensionEntry "glVertexAttrib1fNV" [t| GLuint -> GLfloat -> IO () |]
extensionEntry "glVertexAttrib1dNV" [t| GLuint -> GLdouble -> IO () |]
extensionEntry "glVertexAttrib2sNV" [t| GLuint -> GLshort -> GLshort -> IO () |]
extensionEntry "glVertexAttrib2fNV" [t| GLuint -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertexAttrib2dNV" [t| GLuint -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertexAttrib3sNV" [t| GLuint -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glVertexAttrib3fNV" [t| GLuint -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertexAttrib3dNV" [t| GLuint -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertexAttrib4sNV" [t| GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO () |]
extensionEntry "glVertexAttrib4fNV" [t| GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO () |]
extensionEntry "glVertexAttrib4dNV" [t| GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO () |]
extensionEntry "glVertexAttrib4ub" [t| GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO () |]
extensionEntry "glVertexAttrib1svNV" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttrib1fvNV" [t| GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttrib1dvNV" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttrib2svNV" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttrib2fvNV" [t| GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttrib2dvNV" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttrib3svNV" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttrib3fvNV" [t| GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttrib3dvNV" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttrib4svNV" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttrib4fvNV" [t| GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttrib4dvNV" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttrib4ubvNV" [t| GLuint -> Ptr GLubyte -> IO () |]
extensionEntry "glVertexAttribs1sv" [t| GLuint -> GLsizei -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttribs1fv" [t| GLuint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttribs1dv" [t| GLuint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttribs2sv" [t| GLuint -> GLsizei -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttribs2fv" [t| GLuint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttribs2dv" [t| GLuint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttribs3sv" [t| GLuint -> GLsizei -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttribs3fv" [t| GLuint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttribs3dv" [t| GLuint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttribs4sv" [t| GLuint -> GLsizei -> Ptr GLshort -> IO () |]
extensionEntry "glVertexAttribs4fv" [t| GLuint -> GLsizei -> Ptr GLfloat -> IO () |]
extensionEntry "glVertexAttribs4dv" [t| GLuint -> GLsizei -> Ptr GLdouble -> IO () |]
extensionEntry "glVertexAttribs4ubv" [t| GLuint -> GLsizei -> Ptr GLubyte -> IO () |]

gl_VERTEX_STATE_PROGRAM :: GLenum
gl_VERTEX_STATE_PROGRAM = 0x8621

gl_ATTRIB_ARRAY_SIZE :: GLenum
gl_ATTRIB_ARRAY_SIZE = 0x8623

gl_ATTRIB_ARRAY_STRIDE :: GLenum
gl_ATTRIB_ARRAY_STRIDE = 0x8624

gl_ATTRIB_ARRAY_TYPE :: GLenum
gl_ATTRIB_ARRAY_TYPE = 0x8625

gl_CURRENT_ATTRIB :: GLenum
gl_CURRENT_ATTRIB = 0x8626

gl_PROGRAM_PARAMETER :: GLenum
gl_PROGRAM_PARAMETER = 0x8644

gl_ATTRIB_ARRAY_POINTER :: GLenum
gl_ATTRIB_ARRAY_POINTER = 0x8645

gl_PROGRAM_TARGET :: GLenum
gl_PROGRAM_TARGET = 0x8646

gl_PROGRAM_RESIDENT :: GLenum
gl_PROGRAM_RESIDENT = 0x8647

gl_TRACK_MATRIX :: GLenum
gl_TRACK_MATRIX = 0x8648

gl_TRACK_MATRIX_TRANSFORM :: GLenum
gl_TRACK_MATRIX_TRANSFORM = 0x8649

gl_MAX_TRACK_MATRIX_STACK_DEPTH :: GLenum
gl_MAX_TRACK_MATRIX_STACK_DEPTH = 0x862E

gl_MAX_TRACK_MATRICES :: GLenum
gl_MAX_TRACK_MATRICES = 0x862F

gl_VERTEX_PROGRAM_BINDING :: GLenum
gl_VERTEX_PROGRAM_BINDING = 0x864A

gl_MODELVIEW_PROJECTION :: GLenum
gl_MODELVIEW_PROJECTION = 0x8629

-- | Note: We use the NV suffix here, because the name clashes with the ARB_vertex_program.
gl_MATRIX0_NV :: GLenum
gl_MATRIX0_NV = 0x8630

-- | Note: We use the NV suffix here, because the name clashes with the ARB_vertex_program.
gl_MATRIX1_NV :: GLenum
gl_MATRIX1_NV = 0x8631

-- | Note: We use the NV suffix here, because the name clashes with the ARB_vertex_program.
gl_MATRIX2_NV :: GLenum
gl_MATRIX2_NV = 0x8632

-- | Note: We use the NV suffix here, because the name clashes with the ARB_vertex_program.
gl_MATRIX3_NV :: GLenum
gl_MATRIX3_NV = 0x8633

-- | Note: We use the NV suffix here, because the name clashes with the ARB_vertex_program.
gl_MATRIX4_NV :: GLenum
gl_MATRIX4_NV = 0x8634

-- | Note: We use the NV suffix here, because the name clashes with the ARB_vertex_program.
gl_MATRIX5_NV :: GLenum
gl_MATRIX5_NV = 0x8635

-- | Note: We use the NV suffix here, because the name clashes with the ARB_vertex_program.
gl_MATRIX6_NV :: GLenum
gl_MATRIX6_NV = 0x8636

-- | Note: We use the NV suffix here, because the name clashes with the ARB_vertex_program.
gl_MATRIX7_NV :: GLenum
gl_MATRIX7_NV = 0x8637

gl_IDENTITY :: GLenum
gl_IDENTITY = 0x862A

gl_INVERSE :: GLenum
gl_INVERSE = 0x862B

gl_TRANSPOSE :: GLenum
gl_TRANSPOSE = 0x862C

gl_INVERSE_TRANSPOSE :: GLenum
gl_INVERSE_TRANSPOSE = 0x862D

gl_VERTEX_ATTRIB_ARRAY0 :: GLenum
gl_VERTEX_ATTRIB_ARRAY0 = 0x8650

gl_VERTEX_ATTRIB_ARRAY1 :: GLenum
gl_VERTEX_ATTRIB_ARRAY1 = 0x8651

gl_VERTEX_ATTRIB_ARRAY2 :: GLenum
gl_VERTEX_ATTRIB_ARRAY2 = 0x8652

gl_VERTEX_ATTRIB_ARRAY3 :: GLenum
gl_VERTEX_ATTRIB_ARRAY3 = 0x8653

gl_VERTEX_ATTRIB_ARRAY4 :: GLenum
gl_VERTEX_ATTRIB_ARRAY4 = 0x8654

gl_VERTEX_ATTRIB_ARRAY5 :: GLenum
gl_VERTEX_ATTRIB_ARRAY5 = 0x8655

gl_VERTEX_ATTRIB_ARRAY6 :: GLenum
gl_VERTEX_ATTRIB_ARRAY6 = 0x8656

gl_VERTEX_ATTRIB_ARRAY7 :: GLenum
gl_VERTEX_ATTRIB_ARRAY7 = 0x8657

gl_VERTEX_ATTRIB_ARRAY8 :: GLenum
gl_VERTEX_ATTRIB_ARRAY8 = 0x8658

gl_VERTEX_ATTRIB_ARRAY9 :: GLenum
gl_VERTEX_ATTRIB_ARRAY9 = 0x8659

gl_VERTEX_ATTRIB_ARRAY10 :: GLenum
gl_VERTEX_ATTRIB_ARRAY10 = 0x865A

gl_VERTEX_ATTRIB_ARRAY11 :: GLenum
gl_VERTEX_ATTRIB_ARRAY11 = 0x865B

gl_VERTEX_ATTRIB_ARRAY12 :: GLenum
gl_VERTEX_ATTRIB_ARRAY12 = 0x865C

gl_VERTEX_ATTRIB_ARRAY13 :: GLenum
gl_VERTEX_ATTRIB_ARRAY13 = 0x865D

gl_VERTEX_ATTRIB_ARRAY14 :: GLenum
gl_VERTEX_ATTRIB_ARRAY14 = 0x865E

gl_VERTEX_ATTRIB_ARRAY15 :: GLenum
gl_VERTEX_ATTRIB_ARRAY15 = 0x865F

gl_MAP1_VERTEX_ATTRIB0_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB0_4 = 0x8660

gl_MAP1_VERTEX_ATTRIB1_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB1_4 = 0x8661

gl_MAP1_VERTEX_ATTRIB2_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB2_4 = 0x8662

gl_MAP1_VERTEX_ATTRIB3_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB3_4 = 0x8663

gl_MAP1_VERTEX_ATTRIB4_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB4_4 = 0x8664

gl_MAP1_VERTEX_ATTRIB5_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB5_4 = 0x8665

gl_MAP1_VERTEX_ATTRIB6_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB6_4 = 0x8666

gl_MAP1_VERTEX_ATTRIB7_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB7_4 = 0x8667

gl_MAP1_VERTEX_ATTRIB8_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB8_4 = 0x8668

gl_MAP1_VERTEX_ATTRIB9_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB9_4 = 0x8669

gl_MAP1_VERTEX_ATTRIB10_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB10_4 = 0x866A

gl_MAP1_VERTEX_ATTRIB11_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB11_4 = 0x866B

gl_MAP1_VERTEX_ATTRIB12_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB12_4 = 0x866C

gl_MAP1_VERTEX_ATTRIB13_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB13_4 = 0x866D

gl_MAP1_VERTEX_ATTRIB14_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB14_4 = 0x866E

gl_MAP1_VERTEX_ATTRIB15_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB15_4 = 0x866F

gl_MAP2_VERTEX_ATTRIB0_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB0_4 = 0x8670

gl_MAP2_VERTEX_ATTRIB1_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB1_4 = 0x8671

gl_MAP2_VERTEX_ATTRIB2_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB2_4 = 0x8672

gl_MAP2_VERTEX_ATTRIB3_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB3_4 = 0x8673

gl_MAP2_VERTEX_ATTRIB4_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB4_4 = 0x8674

gl_MAP2_VERTEX_ATTRIB5_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB5_4 = 0x8675

gl_MAP2_VERTEX_ATTRIB6_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB6_4 = 0x8676

gl_MAP2_VERTEX_ATTRIB7_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB7_4 = 0x8677

gl_MAP2_VERTEX_ATTRIB8_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB8_4 = 0x8678

gl_MAP2_VERTEX_ATTRIB9_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB9_4 = 0x8679

gl_MAP2_VERTEX_ATTRIB10_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB10_4 = 0x867A

gl_MAP2_VERTEX_ATTRIB11_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB11_4 = 0x867B

gl_MAP2_VERTEX_ATTRIB12_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB12_4 = 0x867C

gl_MAP2_VERTEX_ATTRIB13_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB13_4 = 0x867D

gl_MAP2_VERTEX_ATTRIB14_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB14_4 = 0x867E

gl_MAP2_VERTEX_ATTRIB15_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB15_4 = 0x867F
