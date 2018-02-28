Shader "hidden/preview"
{
	Properties
	{
				Float_F25E1D0F("Blend", Float) = 1
				Vector3_2A837DFF("Color", Vector) = (1,1,1,0)
				Vector3_8A7F69FD("Emission", Vector) = (1,1,1,0)
	}
	CGINCLUDE
	#include "UnityCG.cginc"
			inline float unity_noise_randomValue (float2 uv)
			{
			    return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453);
			}
			inline float unity_noise_interpolate (float a, float b, float t)
			{
			    return (1.0-t)*a + (t*b);
			}
			inline float unity_valueNoise (float2 uv)
			{
			    float2 i = floor(uv);
			    float2 f = frac(uv);
			    f = f * f * (3.0 - 2.0 * f);
			    uv = abs(frac(uv) - 0.5);
			    float2 c0 = i + float2(0.0, 0.0);
			    float2 c1 = i + float2(1.0, 0.0);
			    float2 c2 = i + float2(0.0, 1.0);
			    float2 c3 = i + float2(1.0, 1.0);
			    float r0 = unity_noise_randomValue(c0);
			    float r1 = unity_noise_randomValue(c1);
			    float r2 = unity_noise_randomValue(c2);
			    float r3 = unity_noise_randomValue(c3);
			    float bottomOfGrid = unity_noise_interpolate(r0, r1, f.x);
			    float topOfGrid = unity_noise_interpolate(r2, r3, f.x);
			    float t = unity_noise_interpolate(bottomOfGrid, topOfGrid, f.y);
			    return t;
			}
			void Unity_SimpleNoise_float(float2 UV, float Scale, out float Out)
			{
			    float t = 0.0;
			    for(int i = 0; i < 3; i++)
			    {
			        float freq = pow(2.0, float(i));
			        float amp = pow(0.5, float(3-i));
			        t += unity_valueNoise(float2(UV.x*Scale/freq, UV.y*Scale/freq))*amp;
			    }
			    Out = t;
			}
			void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
			{
			    Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
			}
			void Unity_Add_float(float A, float B, out float Out)
			{
			    Out = A + B;
			}
			void Unity_Clamp_float(float In, float Min, float Max, out float Out)
			{
			    Out = clamp(In, Min, Max);
			}
			struct GraphVertexInput
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 texcoord0 : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct SurfaceInputs{
				half4 uv0;
			};
			struct SurfaceDescription{
				float4 PreviewOutput;
			};
			float Float_86769FD3;
			float Float_F25E1D0F;
			float4 Vector3_2A837DFF;
			float4 Vector3_8A7F69FD;
			float4 _SimpleNoise_81D47C_UV;
			float _SimpleNoise_81D47C_Scale;
			float4 _Remap_A8F5A7DB_InMinMax;
			float4 _Remap_A8F5A7DB_OutMinMax;
			float4 _Remap_8E87954F_InMinMax;
			float4 _Remap_8E87954F_OutMinMax;
			float _Clamp_8C44607F_Min;
			float _Clamp_8C44607F_Max;
			GraphVertexInput PopulateVertexData(GraphVertexInput v){
				return v;
			}
			SurfaceDescription PopulateSurfaceData(SurfaceInputs IN) {
				SurfaceDescription surface = (SurfaceDescription)0;
				half4 uv0 = IN.uv0;
				float _SimpleNoise_81D47C_Out;
				Unity_SimpleNoise_float(uv0.xy, _SimpleNoise_81D47C_Scale, _SimpleNoise_81D47C_Out);
				if (Float_86769FD3 == 0) { surface.PreviewOutput = half4(_SimpleNoise_81D47C_Out, _SimpleNoise_81D47C_Out, _SimpleNoise_81D47C_Out, 1.0); return surface; }
				float _Remap_A8F5A7DB_Out;
				Unity_Remap_float(_SimpleNoise_81D47C_Out, _Remap_A8F5A7DB_InMinMax, _Remap_A8F5A7DB_OutMinMax, _Remap_A8F5A7DB_Out);
				if (Float_86769FD3 == 1) { surface.PreviewOutput = half4(_Remap_A8F5A7DB_Out, _Remap_A8F5A7DB_Out, _Remap_A8F5A7DB_Out, 1.0); return surface; }
				float _Property_55BB9FBF_Out = Float_F25E1D0F;
				float _Remap_8E87954F_Out;
				Unity_Remap_float(_Property_55BB9FBF_Out, _Remap_8E87954F_InMinMax, _Remap_8E87954F_OutMinMax, _Remap_8E87954F_Out);
				if (Float_86769FD3 == 2) { surface.PreviewOutput = half4(_Remap_8E87954F_Out, _Remap_8E87954F_Out, _Remap_8E87954F_Out, 1.0); return surface; }
				float _Add_334101E2_Out;
				Unity_Add_float(_Remap_A8F5A7DB_Out, _Remap_8E87954F_Out, _Add_334101E2_Out);
				if (Float_86769FD3 == 3) { surface.PreviewOutput = half4(_Add_334101E2_Out, _Add_334101E2_Out, _Add_334101E2_Out, 1.0); return surface; }
				float3 _Property_5BF38B40_Out = Vector3_8A7F69FD;
				float3 _Property_6C31C7A9_Out = Vector3_2A837DFF;
				float _Clamp_8C44607F_Out;
				Unity_Clamp_float(_Add_334101E2_Out, _Clamp_8C44607F_Min, _Clamp_8C44607F_Max, _Clamp_8C44607F_Out);
				if (Float_86769FD3 == 4) { surface.PreviewOutput = half4(_Clamp_8C44607F_Out, _Clamp_8C44607F_Out, _Clamp_8C44607F_Out, 1.0); return surface; }
				return surface;
			}
	ENDCG
	SubShader
	{
	    Tags { "RenderType"="Opaque" }
	    LOD 100
	    Pass
	    {
	        CGPROGRAM
	        #pragma vertex vert
	        #pragma fragment frag
	        #include "UnityCG.cginc"
	        struct GraphVertexOutput
	        {
	            float4 position : POSITION;
	            half4 uv0 : TEXCOORD;
	        };
	        GraphVertexOutput vert (GraphVertexInput v)
	        {
	            v = PopulateVertexData(v);
	            GraphVertexOutput o;
	            o.position = UnityObjectToClipPos(v.vertex);
	            o.uv0 = v.texcoord0;
	            return o;
	        }
	        fixed4 frag (GraphVertexOutput IN) : SV_Target
	        {
	            float4 uv0  = IN.uv0;
	            SurfaceInputs surfaceInput = (SurfaceInputs)0;;
	            surfaceInput.uv0 = uv0;
	            SurfaceDescription surf = PopulateSurfaceData(surfaceInput);
	            return surf.PreviewOutput;
	        }
	        ENDCG
	    }
	}
}
