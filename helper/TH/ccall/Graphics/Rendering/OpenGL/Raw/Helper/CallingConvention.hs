module Graphics.Rendering.OpenGL.Raw.Helper.CallingConvention
  (callingConvention)
  where

import Language.Haskell.TH


callingConvention :: Callconv
callingConvention = CCall