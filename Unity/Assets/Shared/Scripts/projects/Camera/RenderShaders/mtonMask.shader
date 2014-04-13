Shader "MTON/Camera/Mask" {
   SubShader {
      Tags {"RenderEffect"="Multidimensional"}
      Pass {
         Lighting Off
         Color [_MaskColor]
      }
   }
}
