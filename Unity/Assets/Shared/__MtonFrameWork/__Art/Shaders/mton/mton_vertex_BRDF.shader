Shader "MTON/vertex_BRDF" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_MaskTex ("Mask (RGB)", 2D) = "white" {}
		_NormTex ("Normal", 2D) = "blue" {}
		_Ramp2D ("BRDF Ramp", 2D) = "grey" {}
		_Amount_Blend ("BRDF Amount", Range(0,2)) = 1.0
		_Amount_Wrap ("Lambert Wrap Amount", Range(0, 1.0)) = 0.5
      	_Color ("Tint", Color) = (1.0, 1.0, 1.0, 1.0)
    }
    SubShader {
      Tags { "RenderType" = "Opaque" }
      CGPROGRAM
      #pragma surface surf Lambert vertex:vert finalcolor:mycolor
      struct Input {
          float2 uv_MainTex;
          float3 viewDir;
          float2 tcLookUp;
          float2 tcMask;   //x=diff, y=rim
      };
      
      float _Amount_Blend = 1.0;
      float _Amount_Wrap  = 1.0;
      
      void vert (inout appdata_full v, out Input o) {
      	  UNITY_INITIALIZE_OUTPUT(Input,o);
      	  //float2 matcapUV = normalize(mul(UNITY_MATRIX_MV, float4(v.normal,0.0))).xy *0.5 + 0.5;
          float3 viewDir = normalize(ObjSpaceViewDir(v.vertex))                  ; //WorldSpaceViewDir(v.vertex) doesn't handle object rotation ObjSpaceViewDir
          float3 vNormal = normalize(mul( _Object2World, float4(v.normal, 0.0) )); // normal in world space
          float  NdotE   = saturate(dot(v.normal, viewDir))                      ; //fall off/rim shader NOTE: normal in object space, not world       
          float  NdotL   = dot(vNormal, _WorldSpaceLightPos0.xyz)                ; //don't clamp
          
          //do diffuse wrap
		  float  diff   = ((NdotL)) * 0.5 + 0.5;
		  float2 brdfUV = float2(NdotE, diff*0.9);
                 
          o.tcLookUp.xy = brdfUV; //normalize(mul(UNITY_MATRIX_MV, float4(v.normal,0.0))).xy *0.5 + 0.5;
          o.tcMask.x    = (NdotL * _Amount_Wrap) + (1.0-_Amount_Wrap);
          o.tcMask.y    = 1.0-(NdotE);
      }
      
      sampler2D _MainTex;
      sampler2D _MaskTex; // r=AO, b=spec/ref, g=???opacity
      sampler2D _NormTex;
      sampler2D _Ramp2D;
      fixed4 _Color;
      
      void surf (Input IN, inout SurfaceOutput o) {
      	  float3 mask = tex2D (_MaskTex, IN.uv_MainTex).rgb;
          o.Albedo    = tex2D (_MainTex, IN.uv_MainTex).rgb * mask.r; //mask.r = AO
          float3 brdf = tex2D (_Ramp2D, IN.tcLookUp.xy).rgb * mask.g; //mask.g = spec/ref
          o.Emission  = brdf * _Amount_Blend * IN.tcMask.x; // IN.tcMask.x removes rim on shadow side
          o.Normal    = UnpackNormal(tex2D(_NormTex, IN.uv_MainTex)); //UnpackNormal=n*2-1
      }
      
      void mycolor (Input IN, SurfaceOutput o, inout fixed4 color){
          color *= _Color;
      }
      ENDCG
    } 
    Fallback "Diffuse"
}