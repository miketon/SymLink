Shader "Hidden/RenderFunkyThings" {
SubShader {
	Tags { "RenderType"="Ethereal" }
	Pass {
		Fog { Mode Off }		
		Color (1,1,1,1) //Sets color to use if vertex lighting is turned off.
	}
}

SubShader {
	Tags { "RenderType"="Opaque" }
	Pass {
		Fog { Mode Off }
		Color (0,0,0,0) //Sets color to use if vertex lighting is turned off.
	}
} 

}
