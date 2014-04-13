Shader "MTON/vertex_BRDF_DEMO" {
	Properties {
		_ColorTint ("Tint", Color) = (0.0, 0.0, 0.0, 1.0)
		_Ramp2D ("BRDF Ramp", 2D) = "grey" {}
		_NormTex ("Normal", 2D) = "blue" {}
		_Amount_Blend ("BRDF Amount", Range(0,2)) = 1.0
		_Amount_Wrap ("Lambert Wrap Amount", Range(0, 1.0)) = 0.5
		_Mode_Toggle ("BRDF Toggle : 0 = BRDF, >1.0 = NdotE, > 2.0 = NdotL", Range(0, 3.0)) = 0.0
    }
    SubShader {
      Tags { "RenderType" = "Opaque" }
      CGPROGRAM
      #pragma surface surf Lambert vertex:vert
      struct Input {
          float2 uv_MainTex;
          float3 viewDir;
          float2 tcLookUp;
          float2 tcMask;   //x=diff, y=rim
      };
      
      float _Amount_Blend = 1.0;
      float _Amount_Wrap  = 1.0;
      float _Mode_Toggle  = 0.0;
      
      void vert (inout appdata_full v, out Input o) {
      	  UNITY_INITIALIZE_OUTPUT(Input,o);
      	  //float2 matcapUV = normalize(mul(UNITY_MATRIX_MV, float4(v.normal,0.0))).xy *0.5 + 0.5;
          float3 viewDir = normalize(ObjSpaceViewDir(v.vertex)); //WorldSpaceViewDir(v.vertex) doesn't handle object rotation
          float3 vNormal = normalize(v.normal);
          float  NdotE   = saturate(dot(vNormal, viewDir)); //fall off/rim shader       
          float  NdotL   = dot(vNormal, _WorldSpaceLightPos0.yzx); //what the heck yzx instead of xyz; also don't clamp
          
          //do diffuse wrap
		  float  diff   = ((NdotL)) * 0.5 + 0.5;
		  float2 brdfUV = float2(NdotE, diff*0.9);
                 
          o.tcLookUp.xy = brdfUV; //normalize(mul(UNITY_MATRIX_MV, float4(v.normal,0.0))).xy *0.5 + 0.5;
          o.tcMask.x    = (NdotL * _Amount_Wrap) + (1.0-_Amount_Wrap);
          o.tcMask.y    = 1.0-(NdotE);
      }
      
      sampler2D _NormTex;
      sampler2D _Ramp2D;
      fixed4 _ColorTint;
      
      void surf (Input IN, inout SurfaceOutput o) {
          float3 brdf = tex2D (_Ramp2D, IN.tcLookUp.xy).rgb;
          float3 NdotEColor = float3(IN.tcMask.y, IN.tcMask.y, IN.tcMask.y);
          float3 NdotLColor = float3(IN.tcMask.x, IN.tcMask.x, IN.tcMask.x);
          if(_Mode_Toggle < 0.1){
          	o.Emission  = brdf * _Amount_Blend * IN.tcMask.x; // IN.tcMask.x removes rim on shadow side
          }
          else if(_Mode_Toggle < 1.1){
          	o.Emission = NdotEColor;
          }
          else{
          	o.Emission = NdotLColor;
          }
          o.Normal    = UnpackNormal(tex2D(_NormTex, IN.uv_MainTex)); //UnpackNormal=n*2-1
          o.Albedo = _ColorTint.rgb;
      }
      
      ENDCG
    } 
    Fallback "Diffuse"
}