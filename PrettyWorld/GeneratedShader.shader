Shader "PBR Master"
{
	Properties
	{
				Float_F25E1D0F("Blend", Float) = 1
				Vector3_2A837DFF("Color", Vector) = (1,1,1,0)
				Vector3_8A7F69FD("Emission", Vector) = (1,1,1,0)
	}
	SubShader
	{
		Tags{ "RenderPipeline" = "LightweightPipeline"}
		Tags
		{
			"RenderType"="Transparent"
			"Queue"="Transparent"
		}
		Pass
		{
			Tags{"LightMode" = "LightweightForward"}
			
					Blend SrcAlpha OneMinusSrcAlpha
					Cull Back
					ZTest LEqual
					ZWrite Off
			HLSLPROGRAM
		    // Required to compile gles 2.0 with standard srp library
		    #pragma prefer_hlslcc gles
			#pragma target 3.0
		    // -------------------------------------
		    // Lightweight Pipeline keywords
		    // We have no good approach exposed to skip shader variants, e.g, ideally we would like to skip _CASCADE for all puctual lights
		    // Lightweight combines light classification and shadows keywords to reduce shader variants.
		    // Lightweight shader library declares defines based on these keywords to avoid having to check them in the shaders
		    // Core.hlsl defines _MAIN_LIGHT_DIRECTIONAL and _MAIN_LIGHT_SPOT (point lights can't be main light)
		    // Shadow.hlsl defines _SHADOWS_ENABLED, _SHADOWS_SOFT, _SHADOWS_CASCADE, _SHADOWS_PERSPECTIVE
		    #pragma multi_compile _ _MAIN_LIGHT_DIRECTIONAL_SHADOW _MAIN_LIGHT_DIRECTIONAL_SHADOW_CASCADE _MAIN_LIGHT_DIRECTIONAL_SHADOW_SOFT _MAIN_LIGHT_DIRECTIONAL_SHADOW_CASCADE_SOFT _MAIN_LIGHT_SPOT_SHADOW _MAIN_LIGHT_SPOT_SHADOW_SOFT
		    #pragma multi_compile _ _MAIN_LIGHT_COOKIE
		    #pragma multi_compile _ _ADDITIONAL_LIGHTS
		    #pragma multi_compile _ _VERTEX_LIGHTS
		    #pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
		    #pragma multi_compile _ FOG_LINEAR FOG_EXP2
		    // -------------------------------------
		    // Unity defined keywords
		    #pragma multi_compile _ UNITY_SINGLE_PASS_STEREO STEREO_INSTANCING_ON STEREO_MULTIVIEW_ON
		    #pragma multi_compile _ DIRLIGHTMAP_COMBINED LIGHTMAP_ON
		    //--------------------------------------
		    // GPU Instancing
		    #pragma multi_compile_instancing
		    // LW doesn't support dynamic GI. So we save 30% shader variants if we assume
		    // LIGHTMAP_ON when DIRLIGHTMAP_COMBINED is set
		    #ifdef DIRLIGHTMAP_COMBINED
		    #define LIGHTMAP_ON
		    #endif
		    #pragma vertex vert
			#pragma fragment frag
						#define _AlphaOut 1
			#include "LWRP/ShaderLibrary/Core.hlsl"
			#include "LWRP/ShaderLibrary/Lighting.hlsl"
			#include "CoreRP/ShaderLibrary/Color.hlsl"
			#include "CoreRP/ShaderLibrary/UnityInstancing.hlsl"
			#include "ShaderGraphLibrary/Functions.hlsl"
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
								float4 texcoord1 : TEXCOORD1;
								UNITY_VERTEX_INPUT_INSTANCE_ID
							};
							struct SurfaceInputs{
								half4 uv0;
							};
							struct SurfaceDescription{
								float3 Albedo;
								float3 Normal;
								float3 Emission;
								float Metallic;
								float Smoothness;
								float Occlusion;
								float Alpha;
							};
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
							float4 _PBRMaster_FCBA87A7_Normal;
							float _PBRMaster_FCBA87A7_Metallic;
							float _PBRMaster_FCBA87A7_Smoothness;
							float _PBRMaster_FCBA87A7_Occlusion;
							GraphVertexInput PopulateVertexData(GraphVertexInput v){
								return v;
							}
							SurfaceDescription PopulateSurfaceData(SurfaceInputs IN) {
								SurfaceDescription surface = (SurfaceDescription)0;
								half4 uv0 = IN.uv0;
								float3 _Property_6C31C7A9_Out = Vector3_2A837DFF;
								float3 _Property_5BF38B40_Out = Vector3_8A7F69FD;
								float _SimpleNoise_81D47C_Out;
								Unity_SimpleNoise_float(uv0.xy, _SimpleNoise_81D47C_Scale, _SimpleNoise_81D47C_Out);
								float _Remap_A8F5A7DB_Out;
								Unity_Remap_float(_SimpleNoise_81D47C_Out, _Remap_A8F5A7DB_InMinMax, _Remap_A8F5A7DB_OutMinMax, _Remap_A8F5A7DB_Out);
								float _Property_55BB9FBF_Out = Float_F25E1D0F;
								float _Remap_8E87954F_Out;
								Unity_Remap_float(_Property_55BB9FBF_Out, _Remap_8E87954F_InMinMax, _Remap_8E87954F_OutMinMax, _Remap_8E87954F_Out);
								float _Add_334101E2_Out;
								Unity_Add_float(_Remap_A8F5A7DB_Out, _Remap_8E87954F_Out, _Add_334101E2_Out);
								float _Clamp_8C44607F_Out;
								Unity_Clamp_float(_Add_334101E2_Out, _Clamp_8C44607F_Min, _Clamp_8C44607F_Max, _Clamp_8C44607F_Out);
								surface.Albedo = _Property_6C31C7A9_Out;
								surface.Normal = _PBRMaster_FCBA87A7_Normal;
								surface.Emission = _Property_5BF38B40_Out;
								surface.Metallic = _PBRMaster_FCBA87A7_Metallic;
								surface.Smoothness = _PBRMaster_FCBA87A7_Smoothness;
								surface.Occlusion = _PBRMaster_FCBA87A7_Occlusion;
								surface.Alpha = _Clamp_8C44607F_Out;
								return surface;
							}
			struct GraphVertexOutput
		    {
		        float4 clipPos                : SV_POSITION;
		        float4 lightmapUVOrVertexSH   : TEXCOORD0;
				half4 fogFactorAndVertexLight : TEXCOORD1; // x: fogFactor, yzw: vertex light
		    	float4 shadowCoord            : TEXCOORD2;
		        			float3 WorldSpaceNormal : TEXCOORD3;
					float3 WorldSpaceTangent : TEXCOORD4;
					float3 WorldSpaceBiTangent : TEXCOORD5;
					float3 WorldSpaceViewDirection : TEXCOORD6;
					float3 WorldSpacePosition : TEXCOORD7;
					half4 uv0 : TEXCOORD8;
					half4 uv1 : TEXCOORD9;
		        UNITY_VERTEX_INPUT_INSTANCE_ID
		    };
		    GraphVertexOutput vert (GraphVertexInput v)
			{
			    v = PopulateVertexData(v);
		        GraphVertexOutput o = (GraphVertexOutput)0;
		        UNITY_SETUP_INSTANCE_ID(v);
		    	UNITY_TRANSFER_INSTANCE_ID(v, o);
		        			o.WorldSpaceNormal = mul(v.normal,(float3x3)unity_WorldToObject);
					o.WorldSpaceTangent = mul((float3x3)unity_ObjectToWorld,v.tangent);
					o.WorldSpaceBiTangent = normalize(cross(o.WorldSpaceNormal, o.WorldSpaceTangent.xyz) * v.tangent.w);
					o.WorldSpaceViewDirection = mul((float3x3)unity_ObjectToWorld,ObjSpaceViewDir(v.vertex));
					o.WorldSpacePosition = mul(unity_ObjectToWorld,v.vertex);
					o.uv0 = v.texcoord0;
					o.uv1 = v.texcoord1;
				float3 lwWNormal = TransformObjectToWorldNormal(v.normal);
				float3 lwWorldPos = TransformObjectToWorld(v.vertex.xyz);
				float4 clipPos = TransformWorldToHClip(lwWorldPos);
		 		// We either sample GI from lightmap or SH. lightmap UV and vertex SH coefficients
			    // are packed in lightmapUVOrVertexSH to save interpolator.
			    // The following funcions initialize
			    OUTPUT_LIGHTMAP_UV(v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH);
			    OUTPUT_SH(lwWNormal, o.lightmapUVOrVertexSH);
			    half3 vertexLight = VertexLighting(lwWorldPos, lwWNormal);
			    half fogFactor = ComputeFogFactor(clipPos.z);
			    o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
			    o.clipPos = clipPos;
		#if defined(_SHADOWS_ENABLED) && !defined(_SHADOWS_CASCADE)
			    o.shadowCoord = ComputeShadowCoord(lwWorldPos);
		#else
				o.shadowCoord = float4(0, 0, 0, 0);
		#endif
				return o;
			}
			half4 frag (GraphVertexOutput IN) : SV_Target
		    {
		    	UNITY_SETUP_INSTANCE_ID(IN);
		    				float3 WorldSpaceNormal = normalize(IN.WorldSpaceNormal);
					float3 WorldSpaceTangent = IN.WorldSpaceTangent;
					float3 WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
					float3 WorldSpaceViewDirection = normalize(IN.WorldSpaceViewDirection);
					float3 WorldSpacePosition = IN.WorldSpacePosition;
					float4 uv0  = IN.uv0;
					float4 uv1  = IN.uv1;
		        SurfaceInputs surfaceInput = (SurfaceInputs)0;
		        			surfaceInput.uv0 = uv0;
		        SurfaceDescription surf = PopulateSurfaceData(surfaceInput);
				float3 Albedo = float3(0.5, 0.5, 0.5);
				float3 Specular = float3(0, 0, 0);
				float Metallic = 1;
				float3 Normal = float3(0, 0, 1);
				float3 Emission = 0;
				float Smoothness = 0.5;
				float Occlusion = 1;
				float Alpha = 1;
				float AlphaClipThreshold = 0;
		        			Albedo = surf.Albedo;
					Normal = surf.Normal;
					Emission = surf.Emission;
					Metallic = surf.Metallic;
					Smoothness = surf.Smoothness;
					Occlusion = surf.Occlusion;
					Alpha = surf.Alpha;
				InputData inputData;
				inputData.positionWS = WorldSpacePosition;
		#ifdef _NORMALMAP
			    inputData.normalWS = TangentToWorldNormal(Normal, WorldSpaceTangent, WorldSpaceBiTangent, WorldSpaceNormal);
		#else
			    inputData.normalWS = normalize(WorldSpaceNormal);
		#endif
		#ifdef SHADER_API_MOBILE
			    // viewDirection should be normalized here, but we avoid doing it as it's close enough and we save some ALU.
			    inputData.viewDirectionWS = WorldSpaceViewDirection;
		#else
			    inputData.viewDirectionWS = normalize(WorldSpaceViewDirection);
		#endif
		#ifdef _SHADOWS_ENABLED
			    inputData.shadowCoord = IN.shadowCoord;
		#else
			    inputData.shadowCoord = float4(0, 0, 0, 0);
		#endif
			    inputData.fogCoord = IN.fogFactorAndVertexLight.x;
			    inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;
			    inputData.bakedGI = SampleGI(IN.lightmapUVOrVertexSH, inputData.normalWS);
				half4 color = LightweightFragmentPBR(
					inputData, 
					Albedo, 
					Metallic, 
					Specular, 
					Smoothness, 
					Occlusion, 
					Emission, 
					Alpha);
				// Computes fog factor per-vertex
		    	ApplyFog(color.rgb, IN.fogFactorAndVertexLight.x);
		#if _AlphaClip
				clip(Alpha - AlphaClipThreshold);
		#endif
				return color;
		    }
			ENDHLSL
		}
		Pass
		{
		    Tags{"LightMode" = "ShadowCaster"}
		    ZWrite On ZTest LEqual
		    HLSLPROGRAM
		    // Required to compile gles 2.0 with standard srp library
		    #pragma prefer_hlslcc gles
		    #pragma target 2.0
		    //--------------------------------------
		    // GPU Instancing
		    #pragma multi_compile_instancing
		    #pragma vertex ShadowPassVertex
		    #pragma fragment ShadowPassFragment
		    #include "LWRP/ShaderLibrary/LightweightPassShadow.hlsl"
		    ENDHLSL
		}
		Pass
		{
		    Tags{"LightMode" = "DepthOnly"}
		    ZWrite On
		    ColorMask 0
		    HLSLPROGRAM
		    // Required to compile gles 2.0 with standard srp library
		    #pragma prefer_hlslcc gles
		    #pragma target 2.0
		    #pragma vertex vert
		    #pragma fragment frag
		    #include "LWRP/ShaderLibrary/Core.hlsl"
		    float4 vert(float4 pos : POSITION) : SV_POSITION
		    {
		        return TransformObjectToHClip(pos.xyz);
		    }
		    half4 frag() : SV_TARGET
		    {
		        return 0;
		    }
		    ENDHLSL
		}
		// This pass it not used during regular rendering, only for lightmap baking.
		Pass
		{
		    Tags{"LightMode" = "Meta"}
		    Cull Off
		    HLSLPROGRAM
		    // Required to compile gles 2.0 with standard srp library
		    #pragma prefer_hlslcc gles
		    #pragma vertex LightweightVertexMeta
		    #pragma fragment LightweightFragmentMeta
		    #pragma shader_feature _SPECULAR_SETUP
		    #pragma shader_feature _EMISSION
		    #pragma shader_feature _METALLICSPECGLOSSMAP
		    #pragma shader_feature _ _SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A
		    #pragma shader_feature EDITOR_VISUALIZATION
		    #pragma shader_feature _SPECGLOSSMAP
		    #include "LWRP/ShaderLibrary/LightweightPassMeta.hlsl"
		    ENDHLSL
		}
	}
}
