Shader "MTON/Camera/mtonComposite" {
   Properties {
      _DreamTex ("Dream Dimension Texture", 2D) = "white" {}
      _DeathTex ("Death Dimension Texture", 2D) = "white" {}
      _MaskColor ("Mask Color", Color) = (1,0,0,1) // Alpha used for interpolating between the two textures in the scene view
   }
   SubShader {
      Tags {"RenderEffect"="Multidimensional"}
      Pass {
         ColorMaterial AmbientAndDiffuse
         Lighting Off
         SetTexture [_DreamTex] {
            Combine texture
         }
         SetTexture [_DeathTex] {
            constantColor [_MaskColor]
            combine previous lerp(constant) texture
         }
         SetTexture [_DeathTex] {
            combine previous * primary
         }
      }
   }
}
