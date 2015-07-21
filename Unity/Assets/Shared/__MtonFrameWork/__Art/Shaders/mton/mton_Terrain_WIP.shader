Shader "MTON/layeredTerrain" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_DetailTex ("Detail (RGB)", 2D) = "white" {}
		_WallTex ("Wall (RGB)", 2D) = "white" {}
		_MaskTex ("Mask (RGB)", 2D) = "white" {}
		_tileMain ("Main Tile", Range(0,100)) = 1.0
		_tileDetail ("Detail Tile", Range(0,100)) = 1.0
		_tileWall ("Wall Tile", Range(0,100)) = 1.0
		_ColorCrevice ("Crevice Color", Color) = (1.0, 1.0, 1.0, 1.0)
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Lambert 
		//vertex:vert

		sampler2D _MainTex;
		sampler2D _DetailTex;
		sampler2D _WallTex;
		sampler2D _MaskTex;
		
		half4 _ColorCrevice;
		
		float _tileMain = 1.0;
		float _tileDetail = 1.0;
		float _tileWall = 1.0;

		struct Input {
			float2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			half4 mask = tex2D (_MaskTex, IN.uv_MainTex);
			half4 base = tex2D (_MainTex, IN.uv_MainTex * float2(_tileMain, _tileMain)) * mask.g;
			half4 detail = tex2D (_DetailTex, IN.uv_MainTex * float2(_tileDetail, _tileDetail)) * (1.0-mask.g);
			half4 layer1 = (base+detail) * mask.r;
			half4 wall = tex2D (_WallTex, IN.uv_MainTex * float2(_tileWall, _tileWall)) * (1.0-mask.r);
			half4 c = (layer1 + wall) * (mask.b  + _ColorCrevice.a) * half4(_ColorCrevice.rgb, 1.0); 
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
