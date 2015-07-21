Shader "MTON/vertex_Matcap" {
    Properties {
      _MainTex ("Texture", 2D) = "white" {}
      _MaskTex ("Mask (RGB)", 2D) = "white" {}
      _NormTex ("Normal", 2D) = "blue" {}
      _MatCap ("MatCap", 2D) = "white" {}
      _MatCapBlend ("MatCap Amount", Range(0,1)) = 0.25
      _Amount_Rim ("RimTerminator Amount", Range(-10,10)) = 1.0
      _Amount_AO ("Ambient Occlusion", Range(-1,1)) = 1.0
    }
    SubShader {
      Tags { "RenderType" = "Opaque" }
      CGPROGRAM
      #pragma surface surf Lambert vertex:vert
      struct Input {
          float2 uv_MainTex;
          float3 viewDir;
          float3 tcLookUp; //z = rimMask
      };
      
      float _MatCapBlend = 1.0;
      float _Amount_Rim  = 1.0;
      float _Amount_AO   = 1.0;
      
      void vert (inout appdata_full v, out Input o) {
      	  UNITY_INITIALIZE_OUTPUT(Input,o);
          //o.customColor = (v.normal *0.5 +0.5);
          //v.vertex.xyz += v.normal * Amount;
          float3 vNormal = normalize(v.normal);
          float3 viewDir = normalize(ObjSpaceViewDir(v.vertex)); //WorldSpaceViewDir(v.vertex) doesn't handle object rotation
          //float  NdotL   = dot(vNormal, _WorldSpaceLightPos0.yzx);  //what the heck yzx instead of xyz; also don't clamp
          o.tcLookUp.z   = saturate((1.0 - (dot (viewDir, vNormal)))*_Amount_Rim);
          o.tcLookUp.xy  = normalize(mul(UNITY_MATRIX_MV, float4(vNormal,0.0))).xy *0.5 + 0.5;
      }
      
      sampler2D _MainTex;
      sampler2D _MaskTex; // r=AO, b=spec/ref, g=???opacity
      sampler2D _NormTex;
      sampler2D _MatCap;
      
      void surf (Input IN, inout SurfaceOutput o) {
      	  float3 mask = tex2D (_MaskTex, IN.uv_MainTex).rgb;
          o.Albedo    = tex2D (_MainTex, IN.uv_MainTex).rgb * (mask.r + _Amount_AO); //mask.r = AO
          o.Normal    = UnpackNormal(tex2D (_NormTex, IN.uv_MainTex));
          o.Emission  = tex2D (_MatCap, IN.tcLookUp.xy).rgb * (IN.tcLookUp.z) * _MatCapBlend * mask.g; //mask.g = spec/ref
          //o.Albedo = IN.customColor;
          //o.Alpha = c.a;
      }
      ENDCG
    } 
    Fallback "Diffuse"
}
