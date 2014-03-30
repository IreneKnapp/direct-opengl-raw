{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell,
             ExistentialQuantification #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.EXT.VertexShader
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the EXT_vertex_shader extension, see
-- <http://www.opengl.org/registry/specs/EXT/vertex_shader.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.EXT.VertexShader (
   -- * Functions
   glBeginVertexShader,
   glEndVertexShader,
   glBindVertexShader,
   glGenVertexShaders,
   glDeleteVertexShader,
   glShaderOp1,
   glShaderOp2,
   glShaderOp3,
   glSwizzle,
   glWriteMask,
   glInsertComponent,
   glExtractComponent,
   glGenSymbols,
   glSetInvariant,
   glSetLocalConstant,
   glVariantbv,
   glVariantsv,
   glVariantiv,
   glVariantfv,
   glVariantdv,
   glVariantubv,
   glVariantusv,
   glVariantuiv,
   glVariantPointer,
   glEnableVariantClientState,
   glDisableVariantClientState,
   glBindLightParameter,
   glBindMaterialParameter,
   glBindTexGenParameter,
   glBindTextureUnitParameter,
   glBindParameter,
   glIsVariantEnabled,
   glGetVariantBooleanv,
   glGetVariantIntegerv,
   glGetVariantFloatv,
   glGetVariantPointerv,
   glGetInvariantBooleanv,
   glGetInvariantIntegerv,
   glGetInvariantFloatv,
   glGetLocalConstantBooleanv,
   glGetLocalConstantIntegerv,
   glGetLocalConstantFloatv,
   -- * Tokens
   gl_VERTEX_SHADER,
   gl_VARIANT_VALUE,
   gl_VARIANT_DATATYPE,
   gl_VARIANT_ARRAY_STRIDE,
   gl_VARIANT_ARRAY_TYPE,
   gl_VARIANT_ARRAY,
   gl_VARIANT_ARRAY_POINTER,
   gl_INVARIANT_VALUE,
   gl_INVARIANT_DATATYPE,
   gl_LOCAL_CONSTANT_VALUE,
   gl_LOCAL_CONSTANT_DATATYPE,
   gl_OP_INDEX,
   gl_OP_NEGATE,
   gl_OP_DOT3,
   gl_OP_DOT4,
   gl_OP_MUL,
   gl_OP_ADD,
   gl_OP_MADD,
   gl_OP_FRAC,
   gl_OP_MAX,
   gl_OP_MIN,
   gl_OP_SET_GE,
   gl_OP_SET_LT,
   gl_OP_CLAMP,
   gl_OP_FLOOR,
   gl_OP_ROUND,
   gl_OP_EXP_BASE_2,
   gl_OP_LOG_BASE_2,
   gl_OP_POWER,
   gl_OP_RECIP,
   gl_OP_RECIP_SQRT,
   gl_OP_SUB,
   gl_OP_CROSS_PRODUCT,
   gl_OP_MULTIPLY_MATRIX,
   gl_OP_MOV,
   gl_OUTPUT_VERTEX,
   gl_OUTPUT_COLOR0,
   gl_OUTPUT_COLOR1,
   gl_OUTPUT_TEXTURE_COORD0,
   gl_OUTPUT_TEXTURE_COORD1,
   gl_OUTPUT_TEXTURE_COORD2,
   gl_OUTPUT_TEXTURE_COORD3,
   gl_OUTPUT_TEXTURE_COORD4,
   gl_OUTPUT_TEXTURE_COORD5,
   gl_OUTPUT_TEXTURE_COORD6,
   gl_OUTPUT_TEXTURE_COORD7,
   gl_OUTPUT_TEXTURE_COORD8,
   gl_OUTPUT_TEXTURE_COORD9,
   gl_OUTPUT_TEXTURE_COORD10,
   gl_OUTPUT_TEXTURE_COORD11,
   gl_OUTPUT_TEXTURE_COORD12,
   gl_OUTPUT_TEXTURE_COORD13,
   gl_OUTPUT_TEXTURE_COORD14,
   gl_OUTPUT_TEXTURE_COORD15,
   gl_OUTPUT_TEXTURE_COORD16,
   gl_OUTPUT_TEXTURE_COORD17,
   gl_OUTPUT_TEXTURE_COORD18,
   gl_OUTPUT_TEXTURE_COORD19,
   gl_OUTPUT_TEXTURE_COORD20,
   gl_OUTPUT_TEXTURE_COORD21,
   gl_OUTPUT_TEXTURE_COORD22,
   gl_OUTPUT_TEXTURE_COORD23,
   gl_OUTPUT_TEXTURE_COORD24,
   gl_OUTPUT_TEXTURE_COORD25,
   gl_OUTPUT_TEXTURE_COORD26,
   gl_OUTPUT_TEXTURE_COORD27,
   gl_OUTPUT_TEXTURE_COORD28,
   gl_OUTPUT_TEXTURE_COORD29,
   gl_OUTPUT_TEXTURE_COORD30,
   gl_OUTPUT_TEXTURE_COORD31,
   gl_OUTPUT_FOG,
   gl_SCALAR,
   gl_VECTOR,
   gl_MATRIX,
   gl_VARIANT,
   gl_INVARIANT,
   gl_LOCAL_CONSTANT,
   gl_LOCAL,
   gl_MAX_VERTEX_SHADER_INSTRUCTIONS,
   gl_MAX_VERTEX_SHADER_VARIANTS,
   gl_MAX_VERTEX_SHADER_INVARIANTS,
   gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS,
   gl_MAX_VERTEX_SHADER_LOCALS,
   gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS,
   gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS,
   gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS,
   gl_MAX_OPTIMIZED_VERTEX_SHADER_INARIANTS,
   gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS,
   gl_VERTEX_SHADER_INSTRUCTIONS,
   gl_VERTEX_SHADER_VARIANTS,
   gl_VERTEX_SHADER_INVARIANTS,
   gl_VERTEX_SHADER_LOCAL_CONSTANTS,
   gl_VERTEX_SHADER_LOCALS,
   gl_VERTEX_SHADER_BINDING,
   gl_VERTEX_SHADER_OPTIMIZED,
   gl_X,
   gl_Y,
   gl_Z,
   gl_W,
   gl_NEGATIVE_X,
   gl_NEGATIVE_Y,
   gl_NEGATIVE_Z,
   gl_NEGATIVE_W,
   gl_ZERO,
   gl_ONE,
   gl_NEGATIVE_ONE,
   gl_NORMALIZED_RANGE,
   gl_FULL_RANGE,
   gl_CURRENT_VERTEX,
   gl_MVP_MATRIX
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Core32
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_EXT_vertex_shader"

extensionEntry "glBeginVertexShader" [t| IO () |]
extensionEntry "glEndVertexShader" [t| IO () |]
extensionEntry "glBindVertexShader" [t| GLuint -> IO () |]
extensionEntry "glGenVertexShaders" [t| GLuint -> IO GLuint |]
extensionEntry "glDeleteVertexShader" [t| GLuint -> IO () |]
extensionEntry "glShaderOp1" [t| GLenum -> GLuint -> GLuint -> IO () |]
extensionEntry "glShaderOp2" [t| GLenum -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glShaderOp3" [t| GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glSwizzle" [t| GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO () |]
extensionEntry "glWriteMask" [t| GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO () |]
extensionEntry "glInsertComponent" [t| GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glExtractComponent" [t| GLuint -> GLuint -> GLuint -> IO () |]
extensionEntry "glGenSymbols" [t| GLenum -> GLenum -> GLenum -> GLuint -> IO GLuint |]
extensionEntry "glSetInvariant" [t| forall a . GLuint -> GLenum -> Ptr a -> IO () |]
extensionEntry "glSetLocalConstant" [t| forall a . GLuint -> GLenum -> Ptr a -> IO () |]
extensionEntry "glVariantbv" [t| GLuint -> Ptr GLbyte -> IO () |]
extensionEntry "glVariantsv" [t| GLuint -> Ptr GLshort -> IO () |]
extensionEntry "glVariantiv" [t| GLuint -> Ptr GLint -> IO () |]
extensionEntry "glVariantfv" [t| GLuint -> Ptr GLfloat -> IO () |]
extensionEntry "glVariantdv" [t| GLuint -> Ptr GLdouble -> IO () |]
extensionEntry "glVariantubv" [t| GLuint -> Ptr GLubyte -> IO () |]
extensionEntry "glVariantusv" [t| GLuint -> Ptr GLushort -> IO () |]
extensionEntry "glVariantuiv" [t| GLuint -> Ptr GLuint -> IO () |]
extensionEntry "glVariantPointer" [t| forall a . GLuint -> GLenum -> GLuint -> Ptr a -> IO () |]
extensionEntry "glEnableVariantClientState" [t| GLuint-> IO () |]
extensionEntry "glDisableVariantClientState" [t| GLuint-> IO () |]
extensionEntry "glBindLightParameter" [t| GLenum -> GLenum-> IO GLuint |]
extensionEntry "glBindMaterialParameter" [t| GLenum -> GLenum-> IO GLuint |]
extensionEntry "glBindTexGenParameter" [t| GLenum -> GLenum -> GLenum-> IO GLuint |]
extensionEntry "glBindTextureUnitParameter" [t| GLenum -> GLenum-> IO GLuint |]
extensionEntry "glBindParameter" [t| GLenum -> IO GLuint |]
extensionEntry "glIsVariantEnabled" [t| GLuint -> GLenum -> IO GLboolean |]
extensionEntry "glGetVariantBooleanv" [t| GLuint -> GLenum -> Ptr GLboolean -> IO () |]
extensionEntry "glGetVariantIntegerv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetVariantFloatv" [t| GLuint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetVariantPointerv" [t| forall a . GLuint -> GLenum -> Ptr (Ptr a) -> IO () |]
extensionEntry "glGetInvariantBooleanv" [t| GLuint -> GLenum -> Ptr GLboolean -> IO () |]
extensionEntry "glGetInvariantIntegerv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetInvariantFloatv" [t| GLuint -> GLenum -> Ptr GLfloat -> IO () |]
extensionEntry "glGetLocalConstantBooleanv" [t| GLuint -> GLenum -> Ptr GLboolean -> IO () |]
extensionEntry "glGetLocalConstantIntegerv" [t| GLuint -> GLenum -> Ptr GLint -> IO () |]
extensionEntry "glGetLocalConstantFloatv" [t| GLuint -> GLenum -> Ptr GLfloat -> IO () |]

gl_VARIANT_VALUE :: GLenum
gl_VARIANT_VALUE = 0x87E4

gl_VARIANT_DATATYPE :: GLenum
gl_VARIANT_DATATYPE = 0x87E5

gl_VARIANT_ARRAY_STRIDE :: GLenum
gl_VARIANT_ARRAY_STRIDE = 0x87E6

gl_VARIANT_ARRAY_TYPE :: GLenum
gl_VARIANT_ARRAY_TYPE = 0x87E7

gl_VARIANT_ARRAY :: GLenum
gl_VARIANT_ARRAY = 0x87E8

gl_VARIANT_ARRAY_POINTER :: GLenum
gl_VARIANT_ARRAY_POINTER = 0x87E9

gl_INVARIANT_VALUE :: GLenum
gl_INVARIANT_VALUE = 0x87EA

gl_INVARIANT_DATATYPE :: GLenum
gl_INVARIANT_DATATYPE = 0x87EB

gl_LOCAL_CONSTANT_VALUE :: GLenum
gl_LOCAL_CONSTANT_VALUE = 0x87EC

gl_LOCAL_CONSTANT_DATATYPE :: GLenum
gl_LOCAL_CONSTANT_DATATYPE = 0x87ED

gl_OP_INDEX :: GLenum
gl_OP_INDEX = 0x8782

gl_OP_NEGATE :: GLenum
gl_OP_NEGATE = 0x8783

gl_OP_DOT3 :: GLenum
gl_OP_DOT3 = 0x8784

gl_OP_DOT4 :: GLenum
gl_OP_DOT4 = 0x8785

gl_OP_MUL :: GLenum
gl_OP_MUL = 0x8786

gl_OP_ADD :: GLenum
gl_OP_ADD = 0x8787

gl_OP_MADD :: GLenum
gl_OP_MADD = 0x8788

gl_OP_FRAC :: GLenum
gl_OP_FRAC = 0x8789

gl_OP_MAX :: GLenum
gl_OP_MAX = 0x878A

gl_OP_MIN :: GLenum
gl_OP_MIN = 0x878B

gl_OP_SET_GE :: GLenum
gl_OP_SET_GE = 0x878C

gl_OP_SET_LT :: GLenum
gl_OP_SET_LT = 0x878D

gl_OP_CLAMP :: GLenum
gl_OP_CLAMP = 0x878E

gl_OP_FLOOR :: GLenum
gl_OP_FLOOR = 0x878F

gl_OP_ROUND :: GLenum
gl_OP_ROUND = 0x8790

gl_OP_EXP_BASE_2 :: GLenum
gl_OP_EXP_BASE_2 = 0x8791

gl_OP_LOG_BASE_2 :: GLenum
gl_OP_LOG_BASE_2 = 0x8792

gl_OP_POWER :: GLenum
gl_OP_POWER = 0x8793

gl_OP_RECIP :: GLenum
gl_OP_RECIP = 0x8794

gl_OP_RECIP_SQRT :: GLenum
gl_OP_RECIP_SQRT = 0x8795

gl_OP_SUB :: GLenum
gl_OP_SUB = 0x8796

gl_OP_CROSS_PRODUCT :: GLenum
gl_OP_CROSS_PRODUCT = 0x8797

gl_OP_MULTIPLY_MATRIX :: GLenum
gl_OP_MULTIPLY_MATRIX = 0x8798

gl_OP_MOV :: GLenum
gl_OP_MOV = 0x8799

gl_OUTPUT_VERTEX :: GLenum
gl_OUTPUT_VERTEX = 0x879A

gl_OUTPUT_COLOR0 :: GLenum
gl_OUTPUT_COLOR0 = 0x879B

gl_OUTPUT_COLOR1 :: GLenum
gl_OUTPUT_COLOR1 = 0x879C

gl_OUTPUT_TEXTURE_COORD0 :: GLenum
gl_OUTPUT_TEXTURE_COORD0 = 0x879D

gl_OUTPUT_TEXTURE_COORD1 :: GLenum
gl_OUTPUT_TEXTURE_COORD1 = 0x879E

gl_OUTPUT_TEXTURE_COORD2 :: GLenum
gl_OUTPUT_TEXTURE_COORD2 = 0x879F

gl_OUTPUT_TEXTURE_COORD3 :: GLenum
gl_OUTPUT_TEXTURE_COORD3 = 0x87A0

gl_OUTPUT_TEXTURE_COORD4 :: GLenum
gl_OUTPUT_TEXTURE_COORD4 = 0x87A1

gl_OUTPUT_TEXTURE_COORD5 :: GLenum
gl_OUTPUT_TEXTURE_COORD5 = 0x87A2

gl_OUTPUT_TEXTURE_COORD6 :: GLenum
gl_OUTPUT_TEXTURE_COORD6 = 0x87A3

gl_OUTPUT_TEXTURE_COORD7 :: GLenum
gl_OUTPUT_TEXTURE_COORD7 = 0x87A4

gl_OUTPUT_TEXTURE_COORD8 :: GLenum
gl_OUTPUT_TEXTURE_COORD8 = 0x87A5

gl_OUTPUT_TEXTURE_COORD9 :: GLenum
gl_OUTPUT_TEXTURE_COORD9 = 0x87A6

gl_OUTPUT_TEXTURE_COORD10 :: GLenum
gl_OUTPUT_TEXTURE_COORD10 = 0x87A7

gl_OUTPUT_TEXTURE_COORD11 :: GLenum
gl_OUTPUT_TEXTURE_COORD11 = 0x87A8

gl_OUTPUT_TEXTURE_COORD12 :: GLenum
gl_OUTPUT_TEXTURE_COORD12 = 0x87A9

gl_OUTPUT_TEXTURE_COORD13 :: GLenum
gl_OUTPUT_TEXTURE_COORD13 = 0x87AA

gl_OUTPUT_TEXTURE_COORD14 :: GLenum
gl_OUTPUT_TEXTURE_COORD14 = 0x87AB

gl_OUTPUT_TEXTURE_COORD15 :: GLenum
gl_OUTPUT_TEXTURE_COORD15 = 0x87AC

gl_OUTPUT_TEXTURE_COORD16 :: GLenum
gl_OUTPUT_TEXTURE_COORD16 = 0x87AD

gl_OUTPUT_TEXTURE_COORD17 :: GLenum
gl_OUTPUT_TEXTURE_COORD17 = 0x87AE

gl_OUTPUT_TEXTURE_COORD18 :: GLenum
gl_OUTPUT_TEXTURE_COORD18 = 0x87AF

gl_OUTPUT_TEXTURE_COORD19 :: GLenum
gl_OUTPUT_TEXTURE_COORD19 = 0x87B0

gl_OUTPUT_TEXTURE_COORD20 :: GLenum
gl_OUTPUT_TEXTURE_COORD20 = 0x87B1

gl_OUTPUT_TEXTURE_COORD21 :: GLenum
gl_OUTPUT_TEXTURE_COORD21 = 0x87B2

gl_OUTPUT_TEXTURE_COORD22 :: GLenum
gl_OUTPUT_TEXTURE_COORD22 = 0x87B3

gl_OUTPUT_TEXTURE_COORD23 :: GLenum
gl_OUTPUT_TEXTURE_COORD23 = 0x87B4

gl_OUTPUT_TEXTURE_COORD24 :: GLenum
gl_OUTPUT_TEXTURE_COORD24 = 0x87B5

gl_OUTPUT_TEXTURE_COORD25 :: GLenum
gl_OUTPUT_TEXTURE_COORD25 = 0x87B6

gl_OUTPUT_TEXTURE_COORD26 :: GLenum
gl_OUTPUT_TEXTURE_COORD26 = 0x87B7

gl_OUTPUT_TEXTURE_COORD27 :: GLenum
gl_OUTPUT_TEXTURE_COORD27 = 0x87B8

gl_OUTPUT_TEXTURE_COORD28 :: GLenum
gl_OUTPUT_TEXTURE_COORD28 = 0x87B9

gl_OUTPUT_TEXTURE_COORD29 :: GLenum
gl_OUTPUT_TEXTURE_COORD29 = 0x87BA

gl_OUTPUT_TEXTURE_COORD30 :: GLenum
gl_OUTPUT_TEXTURE_COORD30 = 0x87BB

gl_OUTPUT_TEXTURE_COORD31 :: GLenum
gl_OUTPUT_TEXTURE_COORD31 = 0x87BC

gl_OUTPUT_FOG :: GLenum
gl_OUTPUT_FOG = 0x87BD

gl_SCALAR :: GLenum
gl_SCALAR = 0x87BE

gl_VECTOR :: GLenum
gl_VECTOR = 0x87BF

gl_MATRIX :: GLenum
gl_MATRIX = 0x87C0

gl_VARIANT :: GLenum
gl_VARIANT = 0x87C1

gl_INVARIANT :: GLenum
gl_INVARIANT = 0x87C2

gl_LOCAL_CONSTANT :: GLenum
gl_LOCAL_CONSTANT = 0x87C3

gl_LOCAL :: GLenum
gl_LOCAL = 0x87C4

gl_MAX_VERTEX_SHADER_INSTRUCTIONS :: GLenum
gl_MAX_VERTEX_SHADER_INSTRUCTIONS = 0x87C5

gl_MAX_VERTEX_SHADER_VARIANTS :: GLenum
gl_MAX_VERTEX_SHADER_VARIANTS = 0x87C6

gl_MAX_VERTEX_SHADER_INVARIANTS :: GLenum
gl_MAX_VERTEX_SHADER_INVARIANTS = 0x87C7

gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS :: GLenum
gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS = 0x87C8

gl_MAX_VERTEX_SHADER_LOCALS :: GLenum
gl_MAX_VERTEX_SHADER_LOCALS = 0x87C9

gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS = 0x87CA

gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS = 0x87CB

gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS = 0x87CC

gl_MAX_OPTIMIZED_VERTEX_SHADER_INARIANTS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_INARIANTS = 0x87CD

gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS = 0x87CE

gl_VERTEX_SHADER_INSTRUCTIONS :: GLenum
gl_VERTEX_SHADER_INSTRUCTIONS = 0x87CF

gl_VERTEX_SHADER_VARIANTS :: GLenum
gl_VERTEX_SHADER_VARIANTS = 0x87D0

gl_VERTEX_SHADER_INVARIANTS :: GLenum
gl_VERTEX_SHADER_INVARIANTS = 0x87D1

gl_VERTEX_SHADER_LOCAL_CONSTANTS :: GLenum
gl_VERTEX_SHADER_LOCAL_CONSTANTS = 0x87D2

gl_VERTEX_SHADER_LOCALS :: GLenum
gl_VERTEX_SHADER_LOCALS = 0x87D3

gl_VERTEX_SHADER_BINDING :: GLenum
gl_VERTEX_SHADER_BINDING = 0x8781

gl_VERTEX_SHADER_OPTIMIZED :: GLenum
gl_VERTEX_SHADER_OPTIMIZED = 0x87D4

gl_X :: GLenum
gl_X = 0x87D5

gl_Y :: GLenum
gl_Y = 0x87D6

gl_Z :: GLenum
gl_Z = 0x87D7

gl_W :: GLenum
gl_W = 0x87D8

gl_NEGATIVE_X :: GLenum
gl_NEGATIVE_X = 0x87D9

gl_NEGATIVE_Y :: GLenum
gl_NEGATIVE_Y = 0x87DA

gl_NEGATIVE_Z :: GLenum
gl_NEGATIVE_Z = 0x87DB

gl_NEGATIVE_W :: GLenum
gl_NEGATIVE_W = 0x87DC

gl_NEGATIVE_ONE :: GLenum
gl_NEGATIVE_ONE = 0x87DF

gl_NORMALIZED_RANGE :: GLenum
gl_NORMALIZED_RANGE = 0x87E0

gl_FULL_RANGE :: GLenum
gl_FULL_RANGE = 0x87E1

gl_CURRENT_VERTEX :: GLenum
gl_CURRENT_VERTEX = 0x87E2

gl_MVP_MATRIX :: GLenum
gl_MVP_MATRIX = 0x87E3
