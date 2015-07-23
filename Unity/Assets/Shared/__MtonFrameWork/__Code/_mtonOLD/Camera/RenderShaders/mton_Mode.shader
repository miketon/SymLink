Shader "MTON/mton_Mode" {
  Properties {
    _RimColor ("Rim Color", Color)            = (0.7,0.7,1.0,1.0)
    _RimPower ("Rim Power", Range(0.2,2.0))   = 0.5
    _Brightness ("Brightness",Range(0.0,3.0)) = 1.0
  }

  SubShader {
    Tags { "RenderType_TON" = "Ethereal" "RenderType"="Opaque" "Queue"="Transparent" "IgnoreProjector"="True"}
    Pass {
      //ZWrite On
      //ColorMask 0
    }
    CGPROGRAM
      //      #pragma surface surf Lambert  alpha noambient nolightmap nodirlightmap  novertexlights
#pragma surface surf Lambert noambient nolightmap nodirlightmap novertexlights
      struct Input {
        float2 uv_MainTex ;
        float3 viewDir    ;
      }                   ;

    float4 _RimColor  ;
    float _RimPower   ;
    float _Brightness ;

    void surf (Input IN, inout SurfaceOutput o) {
      _RimColor   = half4(0.2, 0.2, 0.5, 1.0)                             ; //half4(0.7, 0.7, 1.0, 1.0) ;
      _RimPower   = 0.2                                                   ; //2.5                       ;
      _Brightness = 2.0                                                   ; //2.5                       ;
      half rim    = 1.0 - saturate(dot (normalize(IN.viewDir), o.Normal)) ;
      o.Emission  = _RimColor.rgb * pow (rim, _RimPower) * _Brightness    ;
      o.Alpha     = 1.0                                                   ;
      //o.Alpha   = (o.Emission.r+o.Emission.g+o.Emission.b) / 3.0        ;
    }
    ENDCG
  } 

  SubShader {
    Tags { "RenderType_TON"="Opaque" }
    Pass { Color (1,0,1,1) } //color.a == _MainTex.a in composite shader
  }

  SubShader {
    Tags { "RenderType_TON"="Funky" }
    Pass { Color (1,1,0,1) }
  }   

  SubShader {
    Tags { "RenderType"="Ethereal" }
    Pass { Color (0,0,1,1) }
  }

  SubShader {
    Tags { "RenderType"="mtonDepth" }
    Pass {
      Fog { Mode Off }
      Color(0,0,1,0)

        CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"

        struct v2f {
          float4 pos   : SV_POSITION ;
          float2 depth : TEXCOORD0   ;
        }                            ;

      v2f vert (appdata_base v) {
        v2f o                                    ;
        o.pos = mul (UNITY_MATRIX_MVP, v.vertex) ;
        UNITY_TRANSFER_DEPTH(o.depth)            ;
        return o                                 ;
      }

      half4 frag(v2f i) : COLOR {
        UNITY_OUTPUT_DEPTH(i.depth);
      }
      ENDCG

    }
  }
  Fallback "Diffuse"
} 
