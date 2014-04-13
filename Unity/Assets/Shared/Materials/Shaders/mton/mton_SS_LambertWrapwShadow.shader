Shader "Custom/demoCustomSSwShadow" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf CustomName

		inline fixed4 LightingCustomName (SurfaceOutput s, fixed3 lightDir, fixed atten){
    		//return LightingLambert (s, lightDir, atten);
    		fixed diff = max (0, dot (s.Normal, lightDir)); // * 0.5 + 0.5;
			fixed4 c;
			//c.rgb = s.Albedo * _LightColor0.rgb * (diff * atten * 2);
			c.rgb = _LightColor0.rgb * s.Albedo * diff * atten * 2;
			//c.rgb = _LightColor0.rgb * diff * atten * 2;
			c.a = s.Alpha;
			return c;
		}

		//inline fixed4 LightingCustomName_PrePass (SurfaceOutput s, half4 light){
    	//	return LightingLambert_PrePass (s, light);
		//}

		inline half4 LightingCustomName_DirLightmap (SurfaceOutput s, fixed4 color, fixed4 scale, bool surfFuncWritesNormal){
    		return LightingLambert_DirLightmap (s, color, scale, surfFuncWritesNormal);
		}

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			half4 c = tex2D (_MainTex, IN.uv_MainTex);
			//half4 c = half4(.75,.5,.75,1.0);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
