Shader "Indie/Diffuse_SoftShadow1" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		//Tags {"LightMode" = "ForwardBase"}
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Lambert
		//#include "cgincludes/UnityCG2.cginc"
//		#include "AutoLight2.cginc"
		//#pragma multi_compile_fwdadd_fullshadows

		sampler2D _MainTex;


		struct Input {
			float2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			half4 c = tex2D (_MainTex, IN.uv_MainTex);
			//half c2 = tex2D (_ShadowMapTexture, IN.uv_MainTex).r;
			//fixed shadow = tex2Dproj( _ShadowMapTexture, UNITY_PROJ_COORD(IN.uv_MainTex) ).r;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
