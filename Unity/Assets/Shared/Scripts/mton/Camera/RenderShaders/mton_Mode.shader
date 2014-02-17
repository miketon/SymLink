Shader "MTON/mton_Mode" {

    SubShader {
        Tags { "RenderType"="Opaque" }
        Pass { Color (0,0,0,1) } //color.a == _MainTex.a in composite shader
    }
    
    SubShader {
        Tags { "RenderType"="Funky" }
        Pass { Color (1,1,0,0) }
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
    float4 pos : SV_POSITION;
    float2 depth : TEXCOORD0;
};

v2f vert (appdata_base v) {
    v2f o;
    o.pos = mul (UNITY_MATRIX_MVP, v.vertex);
    UNITY_TRANSFER_DEPTH(o.depth);
    return o;
}

half4 frag(v2f i) : COLOR {
    UNITY_OUTPUT_DEPTH(i.depth);
}
ENDCG

        }
    }
} 
