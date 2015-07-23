Shader "Custom/demoBRDF" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_Ramp2D ("BRDF Ramp", 2D) = "grey" {}
		_Amount_Wrap ("Lambert Wrap Amount", Range(0, 1.0)) = 0.5
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Ramp
		#pragma target 3.0

		sampler2D _MainTex;
		sampler2D _Ramp2D;
		float _Amount_Wrap = 0.5;

		struct Input {
			float2 uv_MainTex;
		};
		
		half4 LightingRamp(SurfaceOutput s, half3 lightDir, half3 viewDir, half attn){
			float NdotL = max(0, dot(s.Normal, lightDir));
			float NdotE = max(0, dot(s.Normal, viewDir)); //fall off/rim shader
			
			//do diffuse wrap
			float  diff = (NdotL * _Amount_Wrap) + (1.0-_Amount_Wrap);
			float2 brdfUV = float2(NdotE, diff*0.925);
			float3 BRDF = tex2D(_Ramp2D, brdfUV.xy).rgb;
			
			float4 c;
			c.rgb = BRDF * _LightColor0.rgb * (diff) * 2 * attn; // * attn; //float3(diff, diff, diff); WTF without attn, you won't get shadows
			c.a   = s.Alpha;
			return c;
		}
		
		/* appears unnecessary to build pre pass
		inline fixed4 LightingRamp_PrePass (SurfaceOutput s, half4 light){
			return LightingLambert_PrePass (s, light);
		}
		*/

		inline half4 LightingRamp_DirLightmap (SurfaceOutput s, fixed4 color, fixed4 scale, bool surfFuncWritesNormal){
			return LightingLambert_DirLightmap (s, color, scale, surfFuncWritesNormal);
		}

		void surf (Input IN, inout SurfaceOutput o) {
			//half4 c = half4(.5, .5, .5, 1); //tex2D (_MainTex, IN.uv_MainTex);
			//half4 c = tex2D (_MainTex, IN.uv_MainTex);
			//o.Albedo = c.rgb;
			//o.Alpha  = c.a;
			//o.Emission = c.rgb; //half4(1, 1, 1, 1); 
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
