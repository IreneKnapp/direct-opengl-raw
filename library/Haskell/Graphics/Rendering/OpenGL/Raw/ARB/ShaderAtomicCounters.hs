{-# LANGUAGE ForeignFunctionInterface, TemplateHaskell #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.ShaderAtomicCounters
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the ARB_shader_atomic_counters extension,
-- see <http://www.opengl.org/registry/specs/ARB/shader_atomic_counters.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.ShaderAtomicCounters (
   -- * Functions
   glGetActiveAtomicCounterBufferiv,
   -- * Tokens
   gl_ATOMIC_COUNTER_BUFFER,
   gl_ATOMIC_COUNTER_BUFFER_BINDING,
   gl_ATOMIC_COUNTER_BUFFER_START,
   gl_ATOMIC_COUNTER_BUFFER_SIZE,
   gl_ATOMIC_COUNTER_BUFFER_DATA_SIZE,
   gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS,
   gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES,
   gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER,
   gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER,
   gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER,
   gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER,
   gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER,
   gl_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS,
   gl_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS,
   gl_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS,
   gl_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS,
   gl_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS,
   gl_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS,
   gl_MAX_VERTEX_ATOMIC_COUNTERS,
   gl_MAX_TESS_CONTROL_ATOMIC_COUNTERS,
   gl_MAX_TESS_EVALUATION_ATOMIC_COUNTERS,
   gl_MAX_GEOMETRY_ATOMIC_COUNTERS,
   gl_MAX_FRAGMENT_ATOMIC_COUNTERS,
   gl_MAX_COMBINED_ATOMIC_COUNTERS,
   gl_MAX_ATOMIC_COUNTER_BUFFER_SIZE,
   gl_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS,
   gl_ACTIVE_ATOMIC_COUNTER_BUFFERS,
   gl_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX,
   gl_UNSIGNED_INT_ATOMIC_COUNTER
) where

import Foreign.C.Types
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Helper.TH

extensionNameString :: String
extensionNameString = "GL_ARB_shader_atomic_counter"

extensionEntry "glGetActiveAtomicCounterBufferiv" [t| GLuint -> GLuint -> GLenum -> Ptr GLint -> IO () |]

gl_ATOMIC_COUNTER_BUFFER :: GLenum
gl_ATOMIC_COUNTER_BUFFER = 0x92C0

gl_ATOMIC_COUNTER_BUFFER_BINDING :: GLenum
gl_ATOMIC_COUNTER_BUFFER_BINDING = 0x92C1

gl_ATOMIC_COUNTER_BUFFER_START :: GLenum
gl_ATOMIC_COUNTER_BUFFER_START = 0x92C2

gl_ATOMIC_COUNTER_BUFFER_SIZE :: GLenum
gl_ATOMIC_COUNTER_BUFFER_SIZE = 0x92C3

gl_ATOMIC_COUNTER_BUFFER_DATA_SIZE :: GLenum
gl_ATOMIC_COUNTER_BUFFER_DATA_SIZE = 0x92C4

gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS :: GLenum
gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 0x92C5

gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES :: GLenum
gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 0x92C6

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 0x92C7

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 0x92C8

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 0x92CA

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 0x92CB

gl_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 0x92CC

gl_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 0x92CD

gl_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 0x92CE

gl_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 0x92CF

gl_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 0x92D0

gl_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 0x92D1

gl_MAX_VERTEX_ATOMIC_COUNTERS :: GLenum
gl_MAX_VERTEX_ATOMIC_COUNTERS = 0x92D2

gl_MAX_TESS_CONTROL_ATOMIC_COUNTERS :: GLenum
gl_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 0x92D3

gl_MAX_TESS_EVALUATION_ATOMIC_COUNTERS :: GLenum
gl_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 0x92D4

gl_MAX_GEOMETRY_ATOMIC_COUNTERS :: GLenum
gl_MAX_GEOMETRY_ATOMIC_COUNTERS = 0x92D5

gl_MAX_FRAGMENT_ATOMIC_COUNTERS :: GLenum
gl_MAX_FRAGMENT_ATOMIC_COUNTERS = 0x92D6

gl_MAX_COMBINED_ATOMIC_COUNTERS :: GLenum
gl_MAX_COMBINED_ATOMIC_COUNTERS = 0x92D7

gl_MAX_ATOMIC_COUNTER_BUFFER_SIZE :: GLenum
gl_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 0x92D8

gl_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS :: GLenum
gl_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 0x92DC

gl_ACTIVE_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_ACTIVE_ATOMIC_COUNTER_BUFFERS = 0x92D9

gl_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX :: GLenum
gl_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 0x92DA

gl_UNSIGNED_INT_ATOMIC_COUNTER :: GLenum
gl_UNSIGNED_INT_ATOMIC_COUNTER = 0x92DB
