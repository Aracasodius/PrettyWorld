// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33293,y:32495,varname:node_2865,prsc:2|diff-7817-OUT,spec-8007-OUT,gloss-3656-OUT,alpha-7213-OUT,voffset-5681-OUT,tess-4551-OUT;n:type:ShaderForge.SFN_Vector1,id:8007,x:32978,y:32536,varname:node_8007,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3656,x:32978,y:32584,varname:node_3656,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Color,id:5325,x:30599,y:32326,ptovrint:False,ptlb:ColorA,ptin:_ColorA,varname:node_5325,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1020761,c2:0.7092529,c3:0.8676471,c4:1;n:type:ShaderForge.SFN_Color,id:6461,x:30729,y:32423,ptovrint:False,ptlb:ColorB,ptin:_ColorB,varname:_node_5325_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.221237,c2:0.3584178,c3:0.6838235,c4:1;n:type:ShaderForge.SFN_Lerp,id:3471,x:31217,y:32495,varname:node_3471,prsc:2|A-5325-RGB,B-6461-RGB,T-2845-OUT;n:type:ShaderForge.SFN_DepthBlend,id:6940,x:30552,y:32861,varname:node_6940,prsc:2|DIST-8488-OUT;n:type:ShaderForge.SFN_Dot,id:7057,x:30552,y:32995,varname:node_7057,prsc:2,dt:4|A-8031-OUT,B-6044-OUT;n:type:ShaderForge.SFN_Divide,id:3540,x:30756,y:32861,varname:node_3540,prsc:2|A-6940-OUT,B-7057-OUT;n:type:ShaderForge.SFN_Clamp01,id:2845,x:30924,y:32815,varname:node_2845,prsc:2|IN-3540-OUT;n:type:ShaderForge.SFN_ViewVector,id:6044,x:30374,y:33063,varname:node_6044,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:8031,x:30374,y:32919,prsc:2,pt:False;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8974,x:31217,y:32614,varname:node_8974,prsc:2|IN-2845-OUT,IMIN-2121-OUT,IMAX-3593-OUT,OMIN-441-OUT,OMAX-9178-OUT;n:type:ShaderForge.SFN_Slider,id:2121,x:30633,y:32582,ptovrint:False,ptlb:FoamMin,ptin:_FoamMin,varname:node_2121,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.08521082,max:1;n:type:ShaderForge.SFN_Slider,id:3593,x:30633,y:32670,ptovrint:False,ptlb:FoamMax,ptin:_FoamMax,varname:_node_2121_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8203537,max:1;n:type:ShaderForge.SFN_Vector1,id:441,x:30924,y:32703,varname:node_441,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9178,x:30924,y:32751,varname:node_9178,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:6600,x:32595,y:32934,varname:node_6600,prsc:2|IN-2845-OUT,IMIN-1093-OUT,IMAX-4577-OUT,OMIN-2372-OUT,OMAX-6666-OUT;n:type:ShaderForge.SFN_Slider,id:4577,x:31802,y:33040,ptovrint:False,ptlb:DepthMax,ptin:_DepthMax,varname:_FoamMax_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1093,x:31802,y:32957,ptovrint:False,ptlb:DepthMin,ptin:_DepthMin,varname:_FoamMin_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:2372,x:32239,y:33062,varname:node_2372,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6666,x:32239,y:33110,varname:node_6666,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:2318,x:32347,y:32624,varname:node_2318,prsc:2|IN-8646-OUT;n:type:ShaderForge.SFN_ComponentMask,id:978,x:32530,y:32695,varname:node_978,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2318-OUT;n:type:ShaderForge.SFN_Multiply,id:9219,x:32725,y:32773,varname:node_9219,prsc:2|A-978-OUT,B-1440-OUT;n:type:ShaderForge.SFN_Vector1,id:1440,x:32475,y:32852,varname:node_1440,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:7213,x:33097,y:32767,varname:node_7213,prsc:2|IN-5937-OUT;n:type:ShaderForge.SFN_Clamp01,id:3556,x:31476,y:32655,varname:node_3556,prsc:2|IN-8974-OUT;n:type:ShaderForge.SFN_Multiply,id:2047,x:31859,y:32548,varname:node_2047,prsc:2|A-6528-OUT,B-8246-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8246,x:31859,y:32448,ptovrint:False,ptlb:FoamPower,ptin:_FoamPower,varname:node_8246,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Add,id:3187,x:32556,y:32538,varname:node_3187,prsc:2|A-3471-OUT,B-2318-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8488,x:30374,y:32819,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_8488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:7817,x:32736,y:32487,varname:node_7817,prsc:2|IN-3187-OUT;n:type:ShaderForge.SFN_Add,id:5937,x:32898,y:32859,varname:node_5937,prsc:2|A-9219-OUT,B-6600-OUT;n:type:ShaderForge.SFN_OneMinus,id:5127,x:31744,y:32681,varname:node_5127,prsc:2|IN-3556-OUT;n:type:ShaderForge.SFN_Tex2d,id:5509,x:31044,y:32302,ptovrint:False,ptlb:FoamTexture,ptin:_FoamTexture,varname:node_5509,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:36dd0b22da8474ed38075389055ca664,ntxv:2,isnm:False|UVIN-7101-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4045,x:31476,y:32429,varname:node_4045,prsc:2|A-3471-OUT,B-5509-RGB;n:type:ShaderForge.SFN_Multiply,id:6528,x:31646,y:32548,varname:node_6528,prsc:2|A-4045-OUT,B-5127-OUT;n:type:ShaderForge.SFN_Add,id:8646,x:32152,y:32608,varname:node_8646,prsc:2|A-2047-OUT,B-4137-OUT;n:type:ShaderForge.SFN_Power,id:4137,x:31969,y:32658,varname:node_4137,prsc:2|VAL-5127-OUT,EXP-9187-OUT;n:type:ShaderForge.SFN_Vector1,id:9187,x:31939,y:32817,varname:node_9187,prsc:2,v1:5;n:type:ShaderForge.SFN_Panner,id:7101,x:30828,y:32224,varname:node_7101,prsc:2,spu:0.005,spv:0.005|UVIN-1301-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1301,x:30466,y:32260,varname:node_1301,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:4551,x:32794,y:33243,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:node_4551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_TexCoord,id:8572,x:31129,y:33102,varname:node_8572,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:1227,x:30363,y:33295,varname:node_1227,prsc:2;n:type:ShaderForge.SFN_Panner,id:5669,x:31395,y:33187,varname:node_5669,prsc:2,spu:0.5,spv:0.5|UVIN-8572-UVOUT,DIST-7813-OUT;n:type:ShaderForge.SFN_Tex2d,id:3009,x:31584,y:33133,ptovrint:False,ptlb:WaveTexture,ptin:_WaveTexture,varname:node_3009,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:461782d109d98b9418429fb7832bef9e,ntxv:0,isnm:False|UVIN-5669-UVOUT;n:type:ShaderForge.SFN_FragmentPosition,id:1044,x:30578,y:33488,varname:node_1044,prsc:2;n:type:ShaderForge.SFN_Add,id:7081,x:30878,y:33363,varname:node_7081,prsc:2|A-1044-X,B-7813-OUT;n:type:ShaderForge.SFN_Multiply,id:1755,x:31057,y:33363,varname:node_1755,prsc:2|A-7081-OUT,B-7756-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7756,x:30878,y:33505,ptovrint:False,ptlb:Wavecount,ptin:_Wavecount,varname:node_7756,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Sin,id:5027,x:31223,y:33363,varname:node_5027,prsc:2|IN-1755-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9172,x:31223,y:33506,ptovrint:False,ptlb:WaveSpread,ptin:_WaveSpread,varname:node_9172,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Multiply,id:3318,x:31395,y:33363,varname:node_3318,prsc:2|A-5027-OUT,B-9172-OUT;n:type:ShaderForge.SFN_Add,id:317,x:31559,y:33363,varname:node_317,prsc:2|A-3318-OUT,B-146-OUT;n:type:ShaderForge.SFN_ValueProperty,id:146,x:31395,y:33506,ptovrint:False,ptlb:WaveWidth,ptin:_WaveWidth,varname:node_146,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_RemapRange,id:4487,x:31720,y:33345,varname:node_4487,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-317-OUT;n:type:ShaderForge.SFN_Multiply,id:581,x:31969,y:33203,varname:node_581,prsc:2|A-3009-R,B-4487-OUT;n:type:ShaderForge.SFN_Multiply,id:7860,x:32170,y:33304,varname:node_7860,prsc:2|A-581-OUT,B-394-OUT;n:type:ShaderForge.SFN_Slider,id:394,x:31642,y:33565,ptovrint:False,ptlb:WaveHeight,ptin:_WaveHeight,varname:node_394,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:4397,x:32170,y:33170,varname:node_4397,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:1369,x:32358,y:33170,varname:node_1369,prsc:2|A-4397-OUT,B-7860-OUT;n:type:ShaderForge.SFN_Vector1,id:7864,x:32369,y:33351,varname:node_7864,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:5681,x:32873,y:33075,varname:node_5681,prsc:2|A-1369-OUT,B-7864-OUT;n:type:ShaderForge.SFN_Multiply,id:7813,x:30578,y:33326,varname:node_7813,prsc:2|A-1227-TSL,B-6389-OUT;n:type:ShaderForge.SFN_Slider,id:6389,x:30236,y:33436,ptovrint:False,ptlb:WaveSpeed,ptin:_WaveSpeed,varname:node_6389,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;proporder:5325-6461-8246-2121-3593-8488-1093-4577-5509-4551-3009-7756-9172-146-394-6389;pass:END;sub:END;*/

Shader "Shader Forge/Water" {
    Properties {
        _ColorA ("ColorA", Color) = (0.1020761,0.7092529,0.8676471,1)
        _ColorB ("ColorB", Color) = (0.221237,0.3584178,0.6838235,1)
        _FoamPower ("FoamPower", Float ) = 4
        _FoamMin ("FoamMin", Range(0, 1)) = 0.08521082
        _FoamMax ("FoamMax", Range(0, 1)) = 0.8203537
        _Depth ("Depth", Float ) = 0
        _DepthMin ("DepthMin", Range(0, 1)) = 0
        _DepthMax ("DepthMax", Range(0, 1)) = 0
        _FoamTexture ("FoamTexture", 2D) = "black" {}
        _Tesselation ("Tesselation", Range(0, 10)) = 10
        _WaveTexture ("WaveTexture", 2D) = "white" {}
        _Wavecount ("Wavecount", Float ) = 10
        _WaveSpread ("WaveSpread", Float ) = 0.3
        _WaveWidth ("WaveWidth", Float ) = 10
        _WaveHeight ("WaveHeight", Range(0, 1)) = 0
        _WaveSpeed ("WaveSpeed", Range(0, 2)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _DepthMax;
            uniform float _DepthMin;
            uniform float _FoamPower;
            uniform float _Depth;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _Tesselation;
            uniform sampler2D _WaveTexture; uniform float4 _WaveTexture_ST;
            uniform float _Wavecount;
            uniform float _WaveSpread;
            uniform float _WaveWidth;
            uniform float _WaveHeight;
            uniform float _WaveSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_1227 = _Time;
                float node_7813 = (node_1227.r*_WaveSpeed);
                float2 node_5669 = (o.uv0+node_7813*float2(0.5,0.5));
                float4 _WaveTexture_var = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_5669, _WaveTexture),0.0,0));
                v.vertex.xyz += float3(float2(0.0,((_WaveTexture_var.r*(((sin(((mul(unity_ObjectToWorld, v.vertex).r+node_7813)*_Wavecount))*_WaveSpread)+_WaveWidth)*0.5+0.5))*_WaveHeight)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.8; // Convert roughness to gloss
                float perceptualRoughness = 0.8;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float node_2845 = saturate((saturate((sceneZ-partZ)/_Depth)/0.5*dot(i.normalDir,viewDirection)+0.5));
                float3 node_3471 = lerp(_ColorA.rgb,_ColorB.rgb,node_2845);
                float4 node_3062 = _Time;
                float2 node_7101 = (i.uv0+node_3062.g*float2(0.005,0.005));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_7101, _FoamTexture));
                float node_441 = 0.0;
                float node_5127 = (1.0 - saturate((node_441 + ( (node_2845 - _FoamMin) * (1.0 - node_441) ) / (_FoamMax - _FoamMin))));
                float3 node_2318 = saturate(((((node_3471*_FoamTexture_var.rgb)*node_5127)*_FoamPower)+pow(node_5127,5.0)));
                float3 diffuseColor = saturate((node_3471+node_2318)); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_2372 = 0.0;
                fixed4 finalRGBA = fixed4(finalColor,saturate(((node_2318.r*0.5)+(node_2372 + ( (node_2845 - _DepthMin) * (1.0 - node_2372) ) / (_DepthMax - _DepthMin)))));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _DepthMax;
            uniform float _DepthMin;
            uniform float _FoamPower;
            uniform float _Depth;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _Tesselation;
            uniform sampler2D _WaveTexture; uniform float4 _WaveTexture_ST;
            uniform float _Wavecount;
            uniform float _WaveSpread;
            uniform float _WaveWidth;
            uniform float _WaveHeight;
            uniform float _WaveSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_1227 = _Time;
                float node_7813 = (node_1227.r*_WaveSpeed);
                float2 node_5669 = (o.uv0+node_7813*float2(0.5,0.5));
                float4 _WaveTexture_var = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_5669, _WaveTexture),0.0,0));
                v.vertex.xyz += float3(float2(0.0,((_WaveTexture_var.r*(((sin(((mul(unity_ObjectToWorld, v.vertex).r+node_7813)*_Wavecount))*_WaveSpread)+_WaveWidth)*0.5+0.5))*_WaveHeight)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.8; // Convert roughness to gloss
                float perceptualRoughness = 0.8;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float node_2845 = saturate((saturate((sceneZ-partZ)/_Depth)/0.5*dot(i.normalDir,viewDirection)+0.5));
                float3 node_3471 = lerp(_ColorA.rgb,_ColorB.rgb,node_2845);
                float4 node_8554 = _Time;
                float2 node_7101 = (i.uv0+node_8554.g*float2(0.005,0.005));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_7101, _FoamTexture));
                float node_441 = 0.0;
                float node_5127 = (1.0 - saturate((node_441 + ( (node_2845 - _FoamMin) * (1.0 - node_441) ) / (_FoamMax - _FoamMin))));
                float3 node_2318 = saturate(((((node_3471*_FoamTexture_var.rgb)*node_5127)*_FoamPower)+pow(node_5127,5.0)));
                float3 diffuseColor = saturate((node_3471+node_2318)); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_2372 = 0.0;
                fixed4 finalRGBA = fixed4(finalColor * saturate(((node_2318.r*0.5)+(node_2372 + ( (node_2845 - _DepthMin) * (1.0 - node_2372) ) / (_DepthMax - _DepthMin)))),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float _Tesselation;
            uniform sampler2D _WaveTexture; uniform float4 _WaveTexture_ST;
            uniform float _Wavecount;
            uniform float _WaveSpread;
            uniform float _WaveWidth;
            uniform float _WaveHeight;
            uniform float _WaveSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float4 node_1227 = _Time;
                float node_7813 = (node_1227.r*_WaveSpeed);
                float2 node_5669 = (o.uv0+node_7813*float2(0.5,0.5));
                float4 _WaveTexture_var = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_5669, _WaveTexture),0.0,0));
                v.vertex.xyz += float3(float2(0.0,((_WaveTexture_var.r*(((sin(((mul(unity_ObjectToWorld, v.vertex).r+node_7813)*_Wavecount))*_WaveSpread)+_WaveWidth)*0.5+0.5))*_WaveHeight)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _FoamPower;
            uniform float _Depth;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _Tesselation;
            uniform sampler2D _WaveTexture; uniform float4 _WaveTexture_ST;
            uniform float _Wavecount;
            uniform float _WaveSpread;
            uniform float _WaveWidth;
            uniform float _WaveHeight;
            uniform float _WaveSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_1227 = _Time;
                float node_7813 = (node_1227.r*_WaveSpeed);
                float2 node_5669 = (o.uv0+node_7813*float2(0.5,0.5));
                float4 _WaveTexture_var = tex2Dlod(_WaveTexture,float4(TRANSFORM_TEX(node_5669, _WaveTexture),0.0,0));
                v.vertex.xyz += float3(float2(0.0,((_WaveTexture_var.r*(((sin(((mul(unity_ObjectToWorld, v.vertex).r+node_7813)*_Wavecount))*_WaveSpread)+_WaveWidth)*0.5+0.5))*_WaveHeight)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_2845 = saturate((saturate((sceneZ-partZ)/_Depth)/0.5*dot(i.normalDir,viewDirection)+0.5));
                float3 node_3471 = lerp(_ColorA.rgb,_ColorB.rgb,node_2845);
                float4 node_2638 = _Time;
                float2 node_7101 = (i.uv0+node_2638.g*float2(0.005,0.005));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_7101, _FoamTexture));
                float node_441 = 0.0;
                float node_5127 = (1.0 - saturate((node_441 + ( (node_2845 - _FoamMin) * (1.0 - node_441) ) / (_FoamMax - _FoamMin))));
                float3 node_2318 = saturate(((((node_3471*_FoamTexture_var.rgb)*node_5127)*_FoamPower)+pow(node_5127,5.0)));
                float3 diffColor = saturate((node_3471+node_2318));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float roughness = 0.8;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
