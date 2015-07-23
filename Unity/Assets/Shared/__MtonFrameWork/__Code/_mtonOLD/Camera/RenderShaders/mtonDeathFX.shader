Shader "MTON/Camera/Death" {
   SubShader {
      Tags {"RenderEffect"="Multidimensional"}
      Pass {
         ColorMaterial AmbientAndDiffuse
         Lighting Off
         SetTexture [_DeathTex] {
            Combine texture * primary, primary
         }
      }
   }
}
