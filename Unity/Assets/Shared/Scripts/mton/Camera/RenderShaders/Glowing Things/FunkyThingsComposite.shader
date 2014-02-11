Shader "Hidden/Funky Things Composite" {
Properties {
	_MainTex ("", RECT) = "white" {} //RECT is a non power of 2 Texture
	_BlurTex ("", RECT) = "white" {}
	_ColorRamp ("", 2D) = "gray" {}
	_BlurRamp ("", 2D) = "gray" {}
	mtonTime("", float)=1.0
}

SubShader {
	Pass {
		ZTest Always Cull Off ZWrite Off Fog { Mode off }

CGPROGRAM
#pragma exclude_renderers gles
#pragma fragment frag
#pragma fragmentoption ARB_precision_hint_fastest 
#include "UnityCG.cginc"

uniform sampler2D _MainTex : register(s0);
uniform sampler2D _BlurTex : register(s1);
uniform sampler2D _ColorRamp : register(s2);
uniform sampler2D _BlurRamp : register(s3);
uniform float mtonTime;

struct v2f {
	float2 uv[2] : TEXCOORD0;
};

half4 frag (v2f i) : COLOR
{
    
	half4 original = tex2D(_MainTex, i.uv[0]); //_MainTex == camera render view
	
	half intensity = Luminance(original.rgb); //bnw function on original
	half4 colorRamped = tex2D(_ColorRamp, half2(intensity, intensity)); //tonemapping color ramp to intensity
	
	half mask = tex2D(_BlurTex, i.uv[1]).r; // + intensity * mtonTime).r; //mask
	half4 maskRamped = tex2D(_BlurRamp, float2(mask,mask)); //mapping to _BlurRamp based on mask value
	
	half4 color = lerp (colorRamped, original, maskRamped.a);
	//half4 color = lerp (colorRamped, original, 1.0);
	color.rgb *= maskRamped.rgb;
	
	//color = half4(intensity, intensity, intensity, 1.0);
	//color = half4(mask, mask, mask, 1.0);
	//color = tex2D(_BlurTex, i.uv[i]);
	//color = colorRamped;
	//color = maskRamped;
	color = tex2D(_MainTex, i.uv[0]);
	//color = half4(0.0, 1.0, 0.0, 1.0);
	return color;
}
ENDCG
	}
}

Fallback off

}