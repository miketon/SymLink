Shader "MTON/Camera/mtonComposite" {
  Properties {
    _MainTex ("", RECT) = "white" {} //WTH Hack: _MainTex can't be assigned??? Silently Fails
    _EthrTex ("", RECT) = "white" {}
    _MaskTex ("", RECT) = "white" {}
    _NormTex ("", RECT) = "white" {}
    _MaskColor ("Mask Color", Color) = (1,0,0,1) // Alpha used for interpolating between the two textures in the scene view
  }
  SubShader {
    Tags {"RenderEffect"="Ethereal"}
    Pass {
      ZTest Always Cull Off ZWrite Off Fog { Mode off }

      CGPROGRAM
#pragma exclude_renderers gles
#pragma fragment frag
#pragma fragmentoption ARB_precision_hint_fastest 
#include "UnityCG.cginc"

      uniform sampler2D _MainTex : register(s0); //WTH HACK: _MainTex == camera; hard coded, not register s0?
      uniform sampler2D _EthrTex : register(s1);
      uniform sampler2D _MaskTex : register(s2);
      uniform sampler2D _NormTex : register(s3);

      struct v2f {
        float2 uv[2] : TEXCOORD0;
      };

      half4 frag (v2f i) : COLOR {
        half4 cTex  = tex2D(_MainTex, i.uv[0])  ; //_MainTex == camera render view
        half4 eTex  = tex2D(_EthrTex, i.uv[0])  ;
        half4 mTex  = tex2D(_MaskTex, i.uv[0])  ;
        half4 color = half4(0.0, 0.0, 1.0, 1.0);
        //color = lerp (cTex, eTex, mTex.g) ;
        //color = lerp (cTex, eTex, 1.0-cTex.a) ;
        color = eTex + cTex;
        //half4 mnormal    = UnpackNormal(tex2D(_NormTex, i.uv[0])); //UnpackNormal=n*2-1
        //color = half4(cTex.a, cTex.a, cTex.a, 1.0);
        //color = cTex;
        color = eTex;
        
        /*
        float depth;
        float3 norm;
        DecodeDepthNormal(tex2D(_MainTex, i.uv[0]), depth, norm);
        color = half4(norm.x, norm.y, norm.z, 0.0);
        color = half4(depth, depth, depth, 0.0);
        */
        
        return color                            ;
      }
      ENDCG
    }
  }
}


/*
   SubShader {
   Tags {"RenderEffect"="Ethereal"}
   Pass {
   ColorMaterial AmbientAndDiffuse
   Lighting Off
   SetTexture [_MainTex] {
   Combine texture
   }

   SetTexture [_EthrTex] {
   constantColor [_MaskColor]
   combine previous lerp(constant) texture
   }
   SetTexture [_EthrTex] {
   combine previous * primary
   }

   }
   }
 */
