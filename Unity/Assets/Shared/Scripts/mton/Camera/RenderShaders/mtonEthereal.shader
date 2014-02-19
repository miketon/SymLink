/*
Shader "MTON/Camera/Ethereal" {
   SubShader {
      Tags {"RenderEffect"="Multidimensional"}
      Pass {
         ColorMaterial AmbientAndDiffuse
         Lighting Off
         SetTexture [_DreamTex] {
            Combine texture * primary, primary
         }
      }
   }
}
*/

Shader "MTON/Camera/Ethereal" {
Properties {
	//_MainTex ("", RECT) = "white" {}
	_Color ("Main Color", Color) = (1,1,1,1)
	_MainTex ("Base (RGB)", 2D) = "white" {}
}

SubShader {
    Tags { "RenderType_TON"="Ethereal" }
    	
	Pass {
		Material {
			Diffuse [_Color]
			Ambient [_Color]
		} 
		Lighting On
		SetTexture [_MainTex] {
			Combine texture * primary DOUBLE, texture * primary
		} 
	}
/*
	Pass {
		ZTest Always Cull Off ZWrite Off Fog { Mode off }

CGPROGRAM
#pragma exclude_renderers gles
#pragma fragment frag
#pragma fragmentoption ARB_precision_hint_fastest 
#include "UnityCG.cginc"

uniform sampler2D _MainTex : register(s0);

struct v2f {
	float2 uv[2] : TEXCOORD0;
};

half4 frag (v2f i) : COLOR
{
    /*  
	half4 original = tex2D(_MainTex, i.uv[0]); //_MainTex == camera render view
	
	half intensity = Luminance(original.rgb);
	half4 colorRamped = tex2D(_ColorRamp, half2(intensity, intensity));
	
	half mask = tex2D(_BlurTex, i.uv[1]).r; //mask
	half4 maskRamped = tex2D(_BlurRamp, float2(mask,mask));
	
	half4 color = lerp (colorRamped, original, maskRamped.a);
	color.rgb *= maskRamped.rgb;
	*/
	//color = half4(intensity, intensity, intensity, 1.0);
	//color = half4(mask, mask, mask, 1.0);
	//color = tex2D(_BlurTex, i.uv[i]);
	//color = colorRamped;
	//color = maskRamped;
	//color = tex2D(_MainTex, i.uv[0]);
	half4 color = half4(0.0, 1.0, 0.0, 1.0);
	return color;
}
ENDCG
	}
*/
}

Fallback off

}