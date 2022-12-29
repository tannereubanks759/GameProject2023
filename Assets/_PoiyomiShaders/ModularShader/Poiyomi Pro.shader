Shader ".poiyomi/ProV8a"
{
	Properties
	{
		[HideInInspector] shader_master_label ("<color=#E75898ff>Poiyomi Pro V8α</color>", Float) = 0
		[HideInInspector] shader_is_using_thry_editor ("", Float) = 0
		[HideInInspector] footer_youtube ("{texture:{name:icon-youtube,height:32},action:{type:URL,data:https://www.youtube.com/poiyomi},hover:YOUTUBE}", Float) = 0
		[HideInInspector] footer_twitter ("{texture:{name:icon-twitter,height:32},action:{type:URL,data:https://twitter.com/poiyomi},hover:TWITTER}", Float) = 0
		[HideInInspector] footer_patreon ("{texture:{name:icon-patreon,height:32},action:{type:URL,data:https://www.patreon.com/poiyomi},hover:PATREON}", Float) = 0
		[HideInInspector] footer_discord ("{texture:{name:icon-discord,height:32},action:{type:URL,data:https://discord.gg/Ays52PY},hover:DISCORD}", Float) = 0
		[HideInInspector] footer_github ("{texture:{name:icon-github,height:32},action:{type:URL,data:https://github.com/poiyomi/PoiyomiToonShader},hover:GITHUB}", Float) = 0
		
		// Keyword to remind users in the VRChat SDK that this material hasn't been locked.  Inelegant but it works.
		[HideInInspector] _ForgotToLockMaterial (";;YOU_FORGOT_TO_LOCK_THIS_MATERIAL;", Int) = 1
		[ThryShaderOptimizerLockButton] _ShaderOptimizerEnabled ("", Int) = 0
		[Helpbox(1)] _LockTooltip ("Animations don't work by default when locked in. Right click a property if you want to animate it. The shader will lock in automatically at upload time.", Int) = 0
		
		[ThryWideEnum(Opaque, 0, Cutout, 1, TransClipping, 9, Fade, 2, Transparent, 3, Additive, 4, Soft Additive, 5, Multiplicative, 6, 2x Multiplicative, 7)]_Mode("Rendering Preset--{on_value_actions:[
		{value:0,actions:[{type:SET_PROPERTY,data:render_queue=2000}, {type:SET_PROPERTY,data:render_type=Opaque},            {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:1,actions:[{type:SET_PROPERTY,data:render_queue=2450}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=.5}, {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_AlphaToMask=1},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:9,actions:[{type:SET_PROPERTY,data:render_queue=2450}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:2,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:3,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=1}]},
		{value:4,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:5,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:RenderType=Transparent},        {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=4}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:6,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:7,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=3},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]}
		}]}]}", Int) = 0
		
		// Main
		[HideInInspector] m_mainCategory ("Base Data & Color", Float) = 0
		//Main-main
		_Color ("Color & Alpha", Color) = (1, 1, 1, 1)
		_MainTex ("Texture--{reference_properties:[_MainTexPan, _MainTexUV]}", 2D) = "white" { }
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _MainTexUV ("UV", Int) = 0
		[HideInInspector][Vector2]_MainTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[Normal]_BumpMap ("Normal Map--{reference_properties:[_BumpMapPan, _BumpMapUV, _BumpScale]}", 2D) = "bump" { }
		[HideInInspector][Vector2]_BumpMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _BumpMapUV ("UV", Int) = 0
		[HideInInspector]_BumpScale ("Intensity", Range(0, 10)) = 1
		_ClippingMask ("Alpha Map--{reference_properties:[_ClippingMaskPan, _ClippingMaskUV, _Inverse_Clipping]}", 2D) = "white" { }
		[HideInInspector][Vector2]_ClippingMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _ClippingMaskUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Inverse_Clipping ("Invert", Float) = 0
		_Cutoff ("Alpha Cuttoff--{condition_showS:(_Mode==1)}", Range(0, 1.001)) = 0.5
		
		// First Matcap
		[HideInInspector] m_start_matcap ("Matcap / Sphere Textures--{reference_property:_MatcapEnable}", Float) = 0
		[HideInInspector][ThryToggle(_COLORADDSUBDIFF_ON)]_MatcapEnable ("Enable Matcap", Float) = 0
		_MatcapColor ("Color", Color) = (1, 1, 1, 1)
		[TextureNoSO]_Matcap ("Matcap", 2D) = "white" { }
		_MatcapBorder ("Border", Range(0, .5)) = 0.43
		_MatcapMask ("Mask--{reference_properties:[_MatcapMaskPan, _MatcapMaskUV, _MatcapMaskInvert]}", 2D) = "white" { }
		[HideInInspector][Vector2]_MatcapMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _MatcapMaskUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_MatcapMaskInvert ("Invert", Float) = 0
		_MatcapEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_MatcapIntensity ("Intensity", Range(0, 5)) = 1
		_MatcapLightMask ("Hide in Shadow", Range(0, 1)) = 0
		_MatcapReplace ("Replace With Matcap", Range(0, 1)) = 1
		_MatcapMultiply ("Multiply Matcap", Range(0, 1)) = 0
		_MatcapAdd ("Add Matcap", Range(0, 1)) = 0
		[Enum(Vertex, 0, Pixel, 1)] _MatcapNormal ("Normal to use", Int) = 1
		
		[Space(10)]
		[ThryHeaderLabel(Custom Normal, 13)]
		[Space(4)]
		[ThryToggle(POI_MATCAP0_CUSTOM_NORMAL)]_Matcap0CustomNormal ("Custom Normal", Float) = 0
		[Normal]_Matcap0NormalMap ("Normal Map--{reference_properties:[_Matcap0NormalMapPan, _Matcap0NormalMapUV, _Matcap0NormalMapScale]}", 2D) = "bump" { }
		[HideInInspector][Vector2]_Matcap0NormalMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _Matcap0NormalMapUV ("UV", Int) = 0
		[HideInInspector]_Matcap0NormalMapScale ("Intensity", Range(0, 10)) = 1
		
		[Space(10)]
		[ThryHeaderLabel(Hue Shift, 13)]
		[Space(4)]
		[ToggleUI]_MatcapHueShiftEnabled ("Enabled", Float) = 0
		_MatcapHueShiftSpeed ("Shift Speed", Float) = 0
		_MatcapHueShift ("Hue Shift", Range(0, 1)) = 0
		[HideInInspector] m_end_matcap ("Matcap", Float) = 0
		
		// Second Matcap
		[HideInInspector] m_start_Matcap2 ("Matcap 2--{reference_property:_Matcap2Enable}", Float) = 0
		[ThryToggle(COLOR_GRADING_HDR_3D)]_Matcap2Enable ("Enable Matcap 2", Float) = 0
		_Matcap2Color ("Color", Color) = (1, 1, 1, 1)
		[TextureNoSO]_Matcap2 ("Matcap", 2D) = "white" { }
		_Matcap2Border ("Border", Range(0, .5)) = 0.43
		_Matcap2Mask ("Mask--{reference_properties:[_Matcap2MaskPan, _Matcap2MaskUV, _Matcap2MaskInvert]}", 2D) = "white" { }
		[HideInInspector][Vector2]_Matcap2MaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _Matcap2MaskUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Matcap2MaskInvert ("Invert", Float) = 0
		_Matcap2EmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_Matcap2Intensity ("Intensity", Range(0, 5)) = 1
		_Matcap2LightMask ("Hide in Shadow", Range(0, 1)) = 0
		_Matcap2Replace ("Replace With Matcap", Range(0, 1)) = 0
		_Matcap2Multiply ("Multiply Matcap", Range(0, 1)) = 0
		_Matcap2Add ("Add Matcap", Range(0, 1)) = 0
		[Enum(Vertex, 0, Pixel, 1)] _Matcap2Normal ("Normal to use", Int) = 1
		
		[Space(10)]
		[ThryHeaderLabel(Custom Normal, 13)]
		[Space(4)]
		[ThryToggle(POI_MATCAP1_CUSTOM_NORMAL)]_Matcap1CustomNormal ("Custom Normal", Float) = 0
		[Normal]_Matcap1NormalMap ("Normal Map--{reference_properties:[_Matcap1NormalMapPan, _Matcap1NormalMapUV, _Matcap1NormalMapScale]}", 2D) = "bump" { }
		[HideInInspector][Vector2]_Matcap1NormalMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _Matcap1NormalMapUV ("UV", Int) = 0
		[HideInInspector]_Matcap1NormalMapScale ("Intensity", Range(0, 10)) = 1
		
		[Space(10)]
		[ThryHeaderLabel(Hue Shift, 13)]
		[Space(4)]
		[ToggleUI]_Matcap2HueShiftEnabled ("Enabled", Float) = 0
		_Matcap2HueShiftSpeed ("Shift Speed", Float) = 0
		_Matcap2HueShift ("Hue Shift", Range(0, 1)) = 0
		[HideInInspector] m_end_Matcap2 ("Matcap 2", Float) = 0
		
		// Lighting
		[HideInInspector] m_lightingCategory ("Lighting", Float) = 0
		
		[HideInInspector] m_start_PoiLightData ("Light Data ", Float) = 0
		// Lighting Data
		_LightingMapsTex ("Light Maps (expand)--{reference_properties:[_LightingMapsTexPan, _LightingMapsTexUV,_LightingMapHelp,_LightDataAOStrength,_LightDataDetailStrength,_LightDataShadowMaskStrength]}", 2D) = "white" { }
		[HideInInspector][Helpbox(1)] _LightingMapHelp ("(R-AO, G-DETAIL SHADOW, B-SHADOW MASK, A-TBD)     Tools>Poi>Texture Utility to help pack textures", Int) = 0
		[HideInInspector][Vector2]_LightingMapsTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _LightingMapsTexUV ("UV", Int) = 0
		[HideInInspector]_LightDataAOStrength ("AO Strength", Range(0, 1)) = 1
		[HideInInspector]_LightDataDetailStrength ("Detail Strength", Range(0, 1)) = 1
		[HideInInspector]_LightDataShadowMaskStrength ("Shadow Mask Strength", Range(0, 1)) = 1
		// Base Pass
		[Space(15)]
		[ThryHeaderLabel(Base Pass Lighting, 13)]
		[Space(4)]
		[Enum(Poi Custom, 0, Standard, 1)] _LightingColorMode ("Light Color Mode", Int) = 0
		[Enum(Poi Custom, 0, Normalized NDotL, 1, Saturated NDotL, 2)] _LightingMapMode ("Light Map Mode", Int) = 0
		[Enum(Poi Custom, 0, Forced Local Direction, 1, Forced World Direction, 2)] _LightingDirectiongMode ("Light Direction Mode", Int) = 0
		[Vector3]_LightngForcedDirection ("Forced Direction--{condition_showS:(_LightingDirectiongMode!=0)}", Vector) = (0, 0, 0)
		[ToggleUI]_LightingForceColorEnabled ("Force Light Color", Float) = 0
		_LightingForcedColor ("Forced Color--{condition_showS:(_LightingForceColorEnabled==1)}", Color) = (1, 1, 1)
		[ToggleUI]_LightingCapEnabled ("Limit Brightness", Float) = 1
		_LightingCap ("Max Brightness--{condition_showS:(_LightingCapEnabled==1)}", Range(0, 10)) = 1
		_LightingMinLightBrightness ("Min Brightness", Range(0, 1)) = 0
		_LightingIndirectUsesNormals ("Indirect Uses Normals--{condition_showS:(_LightingColorMode==0)}", Range(0, 1)) = 0
		_LightingCastedShadows ("Receive Casted Shadows", Range(0, 1)) = 0
		_LightingMonochromatic ("Monochromatic Lighting?", Range(0, 1)) = 0
		// Lighting Additive
		[Space(15)]
		[ThryHeaderLabel(Add Pass Lighting, 13)]
		[Space(4)]
		[ToggleUI]_LightingAdditiveEnable ("Enable Additive", Float) = 1
		[ThryToggle(POI_LIGHT_DATA_ADDITIVE_ENABLE)]_DisableDirectionalInAdd ("Ignore Directional--{condition_showS:(_LightingAdditiveEnable==1)}", Float) = 1
		[ToggleUI]_LightingAdditiveLimited ("Limit Brightness?--{condition_showS:(_LightingAdditiveEnable==1)}", Float) = 0
		_LightingAdditiveLimit ("Max Brightness--{ condition_showS:(_LightingAdditiveLimited==1&&_LightingAdditiveEnable==1)}", Range(0, 10)) = 1
		_LightingAdditivePassthrough ("Point Light Passthrough--{condition_showS:(_LightingAdditiveEnable==1)}", Range(0, 1)) = .5
		// Vertex Lighting
		[Space(15)]
		[ThryHeaderLabel(Vertex Lighting, 13)]
		[Space(4)]
		[ThryToggle(POI_VERTEXLIGHT_ON)]_LightingVertexLightingEnabled ("Enabled", Float) = 1
		// Lighting Data Debug
		[Space(15)]
		[ThryHeaderLabel(Debug Visualization, 13)]
		[Space(4)]
		[ThryToggle(POI_LIGHT_DATA_DEBUG)]_LightDataDebugEnabled ("Debug", Float) = 0
		[ThryWideEnum(Direct Color, 0, Indirect Color, 1, Light Map, 2, Attenuation, 3, N Dot L, 4, Half Dir, 5, Add Color, 6, Add Attenuation, 7, Add Shadow, 8 Add N Dot L, 9, Add Half Dir, 10)] _LightingDebugVisualize ("Visualize--{condition_showS:(_LightDataDebugEnabled==1)}", Int) = 0
		
		[HideInInspector] m_end_PoiLightData ("Light Data", Float) = 0
		
		[HideInInspector] m_start_PoiShading (" Shading--{reference_property:_ShadingEnabled}", Float) = 0
		[HideInInspector][ThryToggle(VIGNETTE_MASKED)]_ShadingEnabled ("Enable Shading", Float) = 1
		[ThryHeaderLabel(Base Pass Shading, 13)]
		[Space(4)]
		[KeywordEnum(TextureRamp, MathRamp, Wrapped, Skin, ShadeMap, Flat, Realistic, )] _LightingMode ("Lighting Type", Float) = 5
		_LightingShadowColor ("Shadow Tint--{condition_showS:(_LightingMode!=4)}", Color) = (1, 1, 1)
		[Gradient]_ToonRamp ("Lighting Ramp--{texture:{width:512,height:4,filterMode:Bilinear,wrapMode:Clamp},force_texture_options:true,condition_showS:(_LightingMode==0)}", 2D) = "white" { }
		_ShadowOffset ("Ramp Offset--{condition_showS:(_LightingMode==0)}", Range(-1, 1)) = 0
		_LightingGradientStart ("Gradient Start--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = 0
		_LightingGradientEnd ("Gradient End--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = .5
		[ThryWideEnum(Linear, 0, Smooth, 1)]_LightingMathLinearSmooth ("Gradient Type--{condition_showS:(_LightingMode==1)}", Float) = 1
		// Shade Maps
		_1st_ShadeColor ("1st ShadeColor--{condition_showS:(_LightingMode==4)}", Color) = (1, 1, 1)
		_1st_ShadeMap ("1st ShadeMap--{reference_properties:[_1st_ShadeMapPan, _1st_ShadeMapUV, _Use_1stShadeMapAlpha_As_ShadowMask, _1stShadeMapMask_Inverse],condition_showS:(_LightingMode==4)}", 2D) = "white" { }
		[HideInInspector][Vector2]_1st_ShadeMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _1st_ShadeMapUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Use_1stShadeMapAlpha_As_ShadowMask ("1st ShadeMap.a As ShadowMask", Float) = 0
		[HideInInspector][ToggleUI]_1stShadeMapMask_Inverse ("1st ShadeMapMask Inverse", Float) = 0
		[ToggleUI] _Use_BaseAs1st ("Use BaseMap as 1st ShadeMap--{condition_showS:(_LightingMode==4)}", Float) = 0
		_2nd_ShadeColor ("2nd ShadeColor--{condition_showS:(_LightingMode==4)}", Color) = (1, 1, 1, 1)
		_2nd_ShadeMap ("2nd ShadeMap--{reference_properties:[_2nd_ShadeMapPan, _2nd_ShadeMapUV, _Use_2ndShadeMapAlpha_As_ShadowMask, _2ndShadeMapMask_Inverse],condition_showS:(_LightingMode==4)}", 2D) = "white" { }
		[HideInInspector][Vector2]_2nd_ShadeMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _2nd_ShadeMapUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Use_2ndShadeMapAlpha_As_ShadowMask ("2nd ShadeMap.a As ShadowMask", Float) = 0
		[HideInInspector][ToggleUI]_2ndShadeMapMask_Inverse ("2nd ShadeMapMask Inverse", Float) = 0
		[ToggleUI] _Use_1stAs2nd ("Use 1st ShadeMap as 2nd_ShadeMap--{condition_showS:(_LightingMode==4)}", Float) = 0
		_BaseColor_Step ("BaseColor_Step--{condition_showS:(_LightingMode==4)}", Range(0.01, 1)) = 0.5
		_BaseShade_Feather ("Base/Shade_Feather--{condition_showS:(_LightingMode==4)}", Range(0.0001, 1)) = 0.0001
		_ShadeColor_Step ("ShadeColor_Step--{condition_showS:(_LightingMode==4)}", Range(0.01, 1)) = 0
		_1st2nd_Shades_Feather ("1st/2nd_Shades_Feather--{condition_showS:(_LightingMode==4)}", Range(0.0001, 1)) = 0.0001
		// Realistic
		_LightingStandardSmoothness ("Smoothness--{condition_showS:(_LightingMode==6)}", Range(0, 1)) = 0
		// Skin Shading
		_SkinLUT ("LUT--{condition_showS:(_LightingMode==3)}", 2D) = "white" { }
		_SssScale ("Scale--{condition_showS:(_LightingMode==3)}", Range(0, 1)) = 1
		[HideInInspector]_SssBumpBlur ("Bump Blur--{condition_showS:(_LightingMode==3)}", Range(0, 1)) = 0.7
		[HideInInspector][Vector3]_SssTransmissionAbsorption ("Absorption--{condition_showS:(_LightingMode==3)}", Vector) = (-8, -40, -64, 0)
		[HideInInspector][Vector3]_SssColorBleedAoWeights ("AO Color Bleed--{condition_showS:(_LightingMode==3)}", Vector) = (0.4, 0.15, 0.13, 0)
		// Generic
		_ShadowStrength ("Shadow Strength--{condition_showS:(_LightingMode<=3)}", Range(0, 1)) = 1
		_LightingIgnoreAmbientColor ("Ignore Ambient Color--{condition_showS:(_LightingMode<=3)}", Range(0, 1)) = 0
		
		// Additive
		[Space(15)]
		[ThryHeaderLabel(Add Pass Shading, 13)]
		[Space(4)]
		[Enum(Realistic, 0, Toon, 1, Wrapped soon.jpg, 2)] _LightingAdditiveType ("Lighting Type", Int) = 1
		_LightingAdditiveGradientStart ("Gradient Start", Range(0, 1)) = 0
		_LightingAdditiveGradientEnd ("Gradient End", Range(0, 1)) = .5
		//_LightingAdditiveDetailStrength ("Detail Shadow Strength", Range(0, 1)) = 1 //TODO-implement this
		[ToggleUI]_LightingAdditiveLimitIntensity ("Limit Intensity", Float) = 0
		_LightingAdditiveMaxIntensity ("Max Intensity--{condition_show:{type:PROPERTY_BOOL,data:_LightingAdditiveLimitIntensity==1}}", Range(0, 10)) = 1
		
		[HideInInspector] m_end_PoiShading ("Shading", Float) = 0
		
		// BRDF
		[HideInInspector] m_start_brdf ("Metallics & Specular--{reference_property:_EnableBRDF}", Float) = 0
		[HideInInspector][ThryToggle(VIGNETTE_CLASSIC)]_EnableBRDF ("Enable", Float) = 0
		_BRDFMetallicGlossMap ("Metallic Gloss Map--{reference_properties:[_BRDFMetallicGlossMapPan, _BRDFMetallicGlossMapUV, _BRDFInvertGlossiness, _BRDFMetallicGlossMapToolTip]}", 2D) = "white" { }
		[HideInInspector][Helpbox(1)] _BRDFMetallicGlossMapToolTip ("R = Metallic, G = Reflectance, A = Glossiness/Smoothness/Inverse Roughness", Int) = 0
		[HideInInspector][ToggleUI]_BRDFInvertGlossiness ("Invert Glossiness", Float) = 0
		[HideInInspector][Vector2]_BRDFMetallicGlossMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _BRDFMetallicGlossMapUV ("UV", Int) = 0
		_BRDFSpecularMap ("Specular Tint/Mask--{reference_properties:[_BRDFSpecularMapPan, _BRDFSpecularMapUV, _BRDFSpecularMapToolTip]}", 2D) = "white" { }
		[HideInInspector][Helpbox(1)] _BRDFSpecularMapToolTip ("RGB = Color, A = Mask", Int) = 0
		[HideInInspector][Vector2]_BRDFSpecularMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _BRDFSpecularMapUV ("UV", Int) = 0
		_BRDFMetallicMap ("Metallic Tint/Mask--{reference_properties:[_BRDFMetallicMapPan, _BRDFMetallicMapUV, _BRDFMetallicMapToolTip]}", 2D) = "white" { }
		[HideInInspector][Helpbox(1)] _BRDFMetallicMapToolTip ("RGB = Color, A = Mask", Int) = 0
		[HideInInspector][Vector2]_BRDFMetallicMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _BRDFMetallicMapUV ("UV", Int) = 0
		_BRDFMetallic ("Metallic", Range(0, 1)) = 0
		_BRDFGlossiness ("Glossiness", Range(0, 1)) = 0
		_BRDFReflectance ("Reflectance", Range(0, 1)) = .5
		_BRDFAnisotropy ("Anisotropy", Range(-1, 1)) = 0
		[Space(4)]
		[ThryHeaderLabel(Extra, 13)]
		[Space(4)]
		[ToggleUI]_BRDFReflectionsEnabled ("Enable Reflections", Float) = 1
		[ToggleUI]_BRDFSpecularEnabled ("Enable Specular", Float) = 1
		_BRDFMetallicSpecIgnoresBaseColor ("Spec Ignores Base Color", Range(0, 1)) = 0
		_BRDFFresnel ("Fresnel Reflections", Range(0, 1)) = 1
		_BRDFFallback ("Fallback Reflection", Cube) = "" { }
		[ToggleUI]_BRDFForceFallback ("Force Fallback Reflection", Range(0, 1)) = 0
		[HideInInspector] m_end_brdf ("Baked Lighting", Float) = 0
		
		// Outlines
		[HideInInspector] m_OutlineCategory ("Outlines", Float) = 0
		
		// Rendering Options
		[HideInInspector] m_specialFXCategory ("Special FX", Float) = 0
		//TODO Add inverts to the masks
		//Emission 1
		[HideInInspector] m_start_emissionOptions ("Emission / Glow--{reference_property:_EnableEmission}", Float) = 0
		[HideInInspector][ThryToggle(_EMISSION)]_EnableEmission ("Enable Emission", Float) = 0
		[ToggleUI]_EmissionReplace ("Replace Base Color", Float) = 0
		[HDR]_EmissionColor ("Emission Color", Color) = (1, 1, 1, 1)
		[Gradient]_EmissionMap ("Emission Map--{reference_properties:[_EmissionMapPan, _EmissionMapUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )] _EmissionMapUV ("UV", Int) = 0
		[ToggleUI]_EmissionBaseColorAsMap ("Base Color as Map?", Float) = 0
		_EmissionMask ("Emission Mask--{reference_properties:[_EmissionMaskPan, _EmissionMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )] _EmissionMaskUV ("UV", Int) = 0
		_EmissionStrength ("Emission Strength", Range(0, 20)) = 0
		
		[Space(10)]
		[ThryToggleUI(true)]_EmissionHueShiftEnabled ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_EmissionHueShift ("Hue Shift--{condition_showS:(_EmissionHueShiftEnabled==1)}", Range(0, 1)) = 0
		_EmissionHueShiftSpeed ("Hue Shift Speed--{condition_showS:(_EmissionHueShiftEnabled==1)}", Float) = 0
		
		// Center out emission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionCenterOutEnabled ("<size=13><b>  Center Out</b></size>", Float) = 0
		_EmissionCenterOutSpeed ("Flow Speed--{condition_showS:(_EmissionCenterOutEnabled==1)}", Float) = 5
		
		// Glow in the dark Emission
		[Space(10)]
		[ThryToggleUI(true)]_EnableGITDEmission ("<size=13><b>  Light Based</b></size>", Float) = 0
		[Enum(World, 0, Mesh, 1)] _GITDEWorldOrMesh ("Lighting Type--{condition_showS:(_EnableGITDEmission==1)}", Int) = 0
		_GITDEMinEmissionMultiplier ("Min Emission Multiplier--{condition_showS:(_EnableGITDEmission==1)}", Range(0, 1)) = 1
		_GITDEMaxEmissionMultiplier ("Max Emission Multiplier--{condition_showS:(_EnableGITDEmission==1)}", Range(0, 1)) = 0
		_GITDEMinLight ("Min Lighting--{condition_showS:(_EnableGITDEmission==1)}", Range(0, 1)) = 0
		_GITDEMaxLight ("Max Lighting--{condition_showS:(_EnableGITDEmission==1)}", Range(0, 1)) = 1
		
		// Blinking Emission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionBlinkingEnabled ("<size=13><b>  Blinking</b></size>", Float) = 0
		_EmissiveBlink_Min ("Emissive Blink Min--{condition_showS:(_EmissionBlinkingEnabled==1)}", Float) = 0
		_EmissiveBlink_Max ("Emissive Blink Max--{condition_showS:(_EmissionBlinkingEnabled==1)}", Float) = 1
		_EmissiveBlink_Velocity ("Emissive Blink Velocity--{condition_showS:(_EmissionBlinkingEnabled==1)}", Float) = 4
		_EmissionBlinkingOffset ("Offset--{condition_showS:(_EmissionBlinkingEnabled==1)}", Float) = 0
		
		// Scrolling Emission
		[Space(10)]
		[ThryToggleUI(true)] _ScrollingEmission ("<size=13><b>  Scrolling</b></size>", Float) = 0
		[ToggleUI]_EmissionScrollingUseCurve ("Use Curve--{condition_showS:(_ScrollingEmission==1)}", float) = 0
		[Curve]_EmissionScrollingCurve ("Curve--{condition_showS:(_ScrollingEmission==1&&_EmissionScrollingUseCurve==1)}", 2D) = "white" { }
		[ToggleUI]_EmissionScrollingVertexColor ("VColor as position--{condition_showS:(_ScrollingEmission==1)}", float) = 0
		_EmissiveScroll_Direction ("Direction--{condition_showS:(_ScrollingEmission==1)}", Vector) = (0, -10, 0, 0)
		_EmissiveScroll_Width ("Width--{condition_showS:(_ScrollingEmission==1)}", Float) = 10
		_EmissiveScroll_Velocity ("Velocity--{condition_showS:(_ScrollingEmission==1)}", Float) = 10
		_EmissiveScroll_Interval ("Interval--{condition_showS:(_ScrollingEmission==1)}", Float) = 20
		_EmissionScrollingOffset ("Offset--{condition_showS:(_ScrollingEmission==1)}", Float) = 0
		
		[Space(10)]
		[ThryToggleUI(true)] _AudioLinkEmission0Enabled ("<size=13><b>  Audio Link</b></size>--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Vector2]_AudioLinkEmission0StrengthMod ("Emission Strength Add--{ condition_showS:(_AudioLinkEmission0Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkEmission0StrengthBand ("Emission Add Band--{ condition_showS:(_AudioLinkEmission0Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[Vector2] _AudioLinkEmission0CenterOut ("Center Out--{ condition_showS:(_AudioLinkEmission0Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		_AudioLinkEmission0CenterOutwidth ("Center Out Duration--{ condition_showS:(_AudioLinkEmission0Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 1
		_AudioLinkEmission0CenterOutSize ("Wave Size--{ condition_showS:(_AudioLinkEmission0Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 1
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkEmission0CenterOutBand ("Center Out Band--{ condition_showS:(_AudioLinkEmission0Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		
		[HideInInspector] m_end_emissionOptions ("", Float) = 0
		
		// Second Emission
		[HideInInspector] m_start_emission1Options ("Emission / Glow 2 (Requires Emission 1 Enabled)--{reference_property:_EnableEmission1}", Float) = 0
		[HideInInspector][ThryToggle(EFFECT_HUE_VARIATION)]_EnableEmission1 ("Enable Emission 2", Float) = 0
		[HDR]_EmissionColor1 ("Emission Color", Color) = (1, 1, 1, 1)
		[Gradient]_EmissionMap1 ("Emission Map--{reference_properties:[_EmissionMap1Pan, _EmissionMap1UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMap1Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )] _EmissionMap1UV ("UV", Int) = 0
		[ToggleUI]_EmissionBaseColorAsMap1 ("Base Color as Map?", Float) = 0
		_EmissionMask1 ("Emission Mask--{reference_properties:[_EmissionMask1Pan, _EmissionMask1UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMask1Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )] _EmissionMask1UV ("UV", Int) = 0
		_EmissionStrength1 ("Emission Strength", Range(0, 20)) = 0
		
		[Space(10)]
		[ThryToggleUI(true)]_EmissionHueShiftEnabled1 ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_EmissionHueShift1 ("Hue Shift--{condition_showS:(_EmissionHueShiftEnabled1==1)}", Range(0, 1)) = 0
		_EmissionHueShiftSpeed1 ("Hue Shift Speed--{condition_showS:(_EmissionHueShiftEnabled1==1)}", Float) = 0
		
		// Second Center Out Enission
		[Space(10)]
		[HideInInspector][ToggleUI]_EmissionCenterOutEnabled1 ("<size=13><b>  Center Out</b></size>", Float) = 0
		_EmissionCenterOutSpeed1 ("Flow Speed--{condition_showS:(_EmissionCenterOutEnabled1==1)}", Float) = 5
		
		// Second Glow In The Dark Emission
		[Space(10)]
		[ThryToggleUI(true)]_EnableGITDEmission1 ("<size=13><b>  Light Based</b></size>", Float) = 0
		[Enum(World, 0, Mesh, 1)] _GITDEWorldOrMesh1 ("Lighting Type--{condition_showS:(_EnableGITDEmission1==1)}", Int) = 0
		_GITDEMinEmissionMultiplier1 ("Min Emission Multiplier--{condition_showS:(_EnableGITDEmission1==1)}", Range(0, 1)) = 1
		_GITDEMaxEmissionMultiplier1 ("Max Emission Multiplier--{condition_showS:(_EnableGITDEmission1==1)}", Range(0, 1)) = 0
		_GITDEMinLight1 ("Min Lighting--{condition_showS:(_EnableGITDEmission1==1)}", Range(0, 1)) = 0
		_GITDEMaxLight1 ("Max Lighting--{condition_showS:(_EnableGITDEmission1==1)}", Range(0, 1)) = 1
		
		// Second Blinking Emission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionBlinkingEnabled1 ("<size=13><b>  Blinking</b></size>", Float) = 0
		_EmissiveBlink_Min1 ("Emissive Blink Min--{condition_showS:(_EmissionBlinkingEnabled1==1)}", Float) = 0
		_EmissiveBlink_Max1 ("Emissive Blink Max--{condition_showS:(_EmissionBlinkingEnabled1==1)}", Float) = 1
		_EmissiveBlink_Velocity1 ("Emissive Blink Velocity--{condition_showS:(_EmissionBlinkingEnabled1==1)}", Float) = 4
		_EmissionBlinkingOffset1 ("Offset--{condition_showS:(_EmissionBlinkingEnabled1==1)}", Float) = 0
		
		// Scrolling Scrolling Emission
		[Space(10)]
		[ThryToggleUI(true)] _ScrollingEmission1 ("<size=13><b>  Scrolling</b></size>", Float) = 0
		[ToggleUI]_EmissionScrollingUseCurve1 ("Use Curve--{condition_showS:(_ScrollingEmission1==1)}", float) = 0
		[Curve]_EmissionScrollingCurve1 ("Curve--{condition_showS:(_ScrollingEmission1==1&&_EmissionScrollingUseCurve1==1)}", 2D) = "white" { }
		[ToggleUI]_EmissionScrollingVertexColor1 ("VColor as position--{condition_showS:(_ScrollingEmission1==1)}", float) = 0
		_EmissiveScroll_Direction1 ("Direction--{condition_showS:(_ScrollingEmission1==1)}", Vector) = (0, -10, 0, 0)
		_EmissiveScroll_Width1 ("Width--{condition_showS:(_ScrollingEmission1==1)}", Float) = 10
		_EmissiveScroll_Velocity1 ("Velocity--{condition_showS:(_ScrollingEmission1==1)}", Float) = 10
		_EmissiveScroll_Interval1 ("Interval--{condition_showS:(_ScrollingEmission1==1)}", Float) = 20
		_EmissionScrollingOffset1 ("Offset--{condition_showS:(_ScrollingEmission1==1)}", Float) = 0
		
		[Space(10)]
		[ThryToggleUI(true)] _AudioLinkEmission1Enabled ("<size=13><b>  Audio Link</b></size>--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Vector2]_AudioLinkEmission1StrengthMod ("Emission Strength Add--{ condition_showS:(_AudioLinkEmission1Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkEmission1StrengthBand ("Emission Add Band--{ condition_showS:(_AudioLinkEmission1Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[Vector2] _AudioLinkEmission1CenterOut ("Center Out--{ condition_showS:(_AudioLinkEmission1Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		_AudioLinkEmission1CenterOutwidth ("Center Out Duration--{ condition_showS:(_AudioLinkEmission1Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 1
		_AudioLinkEmission1CenterOutSize ("Wave Size--{ condition_showS:(_AudioLinkEmission1Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 1
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkEmission1CenterOutBand ("Center Out Band--{ condition_showS:(_AudioLinkEmission1Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		
		[HideInInspector] m_end_emission1Options ("", Float) = 0
		
		// Rendering Options
		[HideInInspector] m_modifierCategory ("Modifiers", Float) = 0
		[HideInInspector] m_start_uvModifiers ("UV Channels", Float) = 0
		[ThryHeaderLabel(Distorted UV, 13)]
		[Space(4)]
		[ThryToggle(USER_LUT)] _EnableDistortion ("Enabled?", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6)] _DistortionUvToDistort ("Distorted UV", Int) = 0
		_DistortionMask ("Mask--{reference_properties:[_DistortionMaskPan, _DistortionMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DistortionMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6)] _DistortionMaskUV ("UV", Int) = 0
		_DistortionFlowTexture ("Distortion Texture 1--{reference_properties:[_DistortionFlowTexturePan, _DistortionFlowTextureUV]}", 2D) = "black" { }
		[HideInInspector][Vector2]_DistortionFlowTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6)] _DistortionFlowTextureUV ("UV", Int) = 0
		_DistortionFlowTexture1 ("Distortion Texture 2--{reference_properties:[_DistortionFlowTexture1Pan, _DistortionFlowTexture1UV]}", 2D) = "black" { }
		[HideInInspector][Vector2]_DistortionFlowTexture1Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6)] _DistortionFlowTexture1UV ("UV", Int) = 0
		_DistortionStrength ("Strength1", Float) = 0.03
		_DistortionStrength1 ("Strength2", Float) = 0.01
		[Space(10)]
		[ThryHeaderLabel(Panosphere UV, 13)]
		[Space(4)]
		[ToggleUI] _StereoEnabled ("Stereo Enabled", Float) = 0
		[Space(10)]
		[ThryHeaderLabel(Polar Coordinates, 13)]
		[Space(4)]
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5)] _PolarUV ("UV", Int) = 0
		[Vector2]_PolarCenter ("Center Coordinate", Vector) = (.5, .5, 0, 0)
		_PolarRadialScale ("Radial Scale", Float) = 1
		_PolarLengthScale ("Length Scale", Float) = 1
		_PolarSpiralPower ("Spiral Power", Float) = 0
		[HideInInspector] m_end_uvModifiers ("UV Channels", Float) = 0
		
		// Audio link
		[HideInInspector] m_start_audioLink ("Audio Link--{reference_property:_EnableAudioLink}", Float) = 0
		[HideInInspector][ThryToggle(COLOR_GRADING_LOG_VIEW)] _EnableAudioLink ("Enabled?", Float) = 0
		[Helpbox(1)] _AudioLinkHelp ("This section houses the global controls for audio link. Controls for individual features are in their respective sections. (Emission, Dissolve, etc...)", Int) = 0
		[ToggleUI] _AudioLinkAnimToggle ("Anim Toggle", Float) = 1
		_AudioLinkDelay ("Delay", Range(0, 1)) = 0
		//[ToggleUI]_AudioLinkAveraging ("Enable averaging", Float) = 0
		//_AudioLinkAverageRange ("Average Sampling Range", Range(0, 1)) = .5
		[HideInInspector] m_end_audioLink ("Audio Link", Float) = 0
		
		// Rendering Options
		[HideInInspector] m_postprocessing ("Post Processing", Float) = 0
		
		// Rendering Options
		[HideInInspector] m_renderingCategory ("Rendering", Float) = 0
		[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull", Float) = 2
		[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Float) = 4
		[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Int) = 1
		[Enum(Thry.ColorMask)] _ColorMask ("Color Mask", Int) = 15
		_OffsetFactor ("Offset Factor", Float) = 0.0
		_OffsetUnits ("Offset Units", Float) = 0.0
		[ToggleUI]_IgnoreFog ("Ignore Fog", Float) = 0
		[HideInInspector] Instancing ("Instancing", Float) = 0 //add this property for instancing variants settings to be shown
		
		// Blending Options
		[HideInInspector] m_start_blending ("Blending", Float) = 0
		[Enum(Thry.BlendOp)]_BlendOp ("RGB Blend Op", Int) = 0
		[Enum(Thry.BlendOp)]_BlendOpAlpha ("Alpha Blend Op", Int) = 0
		[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("Source Blend", Int) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("Destination Blend", Int) = 0
		[HideInInspector] m_end_blending ("Blending", Float) = 0
		
		// Stencils
		[HideInInspector] m_start_StencilPassOptions ("Stencil", Float) = 0
		[IntRange] _StencilRef ("Stencil Reference Value", Range(0, 255)) = 0
		[IntRange] _StencilReadMask ("Stencil ReadMask Value", Range(0, 255)) = 255
		[IntRange] _StencilWriteMask ("Stencil WriteMask Value", Range(0, 255)) = 255
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilPassOp ("Stencil Pass Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFailOp ("Stencil Fail Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilZFailOp ("Stencil ZFail Op", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilCompareFunction ("Stencil Compare Function", Float) = 8
		[HideInInspector] m_end_StencilPassOptions ("Stencil", Float) = 0
		
	}
	SubShader
	{
		Tags { "RenderType" = "Opaque" "Queue" = "Geometry" }
		
		Pass
		{
			Tags { "LightMode" = "ForwardBase" }
			
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			
			ZWrite [_ZWrite]
			Cull [_Cull]
			AlphaToMask [_AlphaToMask]
			ZTest [_ZTest]
			ColorMask [_ColorMask]
			Offset [_OffsetFactor], [_OffsetUnits]
			
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend]
			
			CGPROGRAM
			
			#pragma target 5.0
			
			#pragma shader_feature USER_LUT
			
			#pragma shader_feature _COLORADDSUBDIFF_ON
			#pragma shader_feature COLOR_GRADING_HDR_3D
			#pragma shader_feature_local POI_MATCAP0_CUSTOM_NORMAL
			#pragma shader_feature_local POI_MATCAP1_CUSTOM_NORMAL
			
			#pragma shader_feature_local POI_LIGHT_DATA_DEBUG
			#pragma shader_feature_local POI_LIGHT_DATA_ADDITIVE_ENABLE
			#pragma shader_feature_local POI_VERTEXLIGHT_ON
			
			#pragma shader_feature VIGNETTE_MASKED
			#pragma multi_compile_local _LIGHTINGMODE_TEXTURERAMP _LIGHTINGMODE_MATHRAMP _LIGHTINGMODE_SHADEMAP _LIGHTINGMODE_REALISTIC _LIGHTINGMODE_WRAPPED _LIGHTINGMODE_SKIN _LIGHTINGMODE_FLAT
			
			#pragma shader_feature VIGNETTE_CLASSIC
			
			#pragma shader_feature _EMISSION
			#pragma shader_feature EFFECT_HUE_VARIATION
			
			#pragma shader_feature COLOR_GRADING_LOG_VIEW
			
			#pragma shader_feature VERTEXLIGHT_ON
			#pragma multi_compile_fwdbase
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			
			// UNITY Includes
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"
			#include "UnityPBSLighting.cginc"
			#pragma vertex vert
			#pragma fragment frag
			
			#define DielectricSpec float4(0.04, 0.04, 0.04, 1.0 - 0.04)
			#define pi float(3.14159265359)
			
			#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan))
			#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_PAN(tex, uv, pan) (tex2D(tex, uv + _Time.x * pan))
			#define POI2D(tex, uv) (tex2D(tex, uv))
			#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
			#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, uv + _Time.x * pan))
			
			#define POI_SAFE_RGB1 float4(mainTexture.rgb * .0001, 1)
			#define POI_SAFE_RGBA mainTexture
			
			#if defined(UNITY_COMPILER_HLSL)
			#define PoiInitStruct(type, name) name = (type)0;
			#else
			#define PoiInitStruct(type, name)
			#endif
			
			#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			
			[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )]
			*/
			// Map of where features in AudioLink are.
			#define ALPASS_DFT                      int2(0, 4)
			#define ALPASS_WAVEFORM                 int2(0, 6)
			#define ALPASS_AUDIOLINK                int2(0, 0)
			#define ALPASS_AUDIOBASS                int2(0, 0)
			#define ALPASS_AUDIOLOWMIDS             int2(0, 1)
			#define ALPASS_AUDIOHIGHMIDS            int2(0, 2)
			#define ALPASS_AUDIOTREBLE              int2(0, 3)
			#define ALPASS_AUDIOLINKHISTORY         int2(1, 0)
			#define ALPASS_GENERALVU                int2(0, 22)
			#define ALPASS_GENERALVU_INSTANCE_TIME  int2(2, 22)
			#define ALPASS_GENERALVU_LOCAL_TIME     int2(3, 22)
			#define ALPASS_GENERALVU_NETWORK_TIME   int2(4, 22)
			#define ALPASS_GENERALVU_PLAYERINFO     int2(6, 22)
			#define ALPASS_CCINTERNAL               int2(12, 22)
			#define ALPASS_CCSTRIP                  int2(0, 24)
			#define ALPASS_CCLIGHTS                 int2(0, 25)
			#define ALPASS_AUTOCORRELATOR           int2(0, 27)
			#define ALPASS_FILTEREDAUDIOLINK        int2(0, 28)
			
			// Some basic constants to use (Note, these should be compatible with
			// future version of AudioLink, but may change.
			#define AUDIOLINK_SAMPHIST              3069        // Internal use for algos, do not change.
			#define AUDIOLINK_SAMPLEDATA24          2046
			#define AUDIOLINK_EXPBINS               24
			#define AUDIOLINK_EXPOCT                10
			#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
			#define AUDIOLINK_WIDTH                 128
			#define AUDIOLINK_SPS                   48000       // Samples per second
			#define AUDIOLINK_ROOTNOTE              0
			#define AUDIOLINK_4BAND_FREQFLOOR       0.123
			#define AUDIOLINK_4BAND_FREQCEILING     1
			#define AUDIOLINK_BOTTOM_FREQUENCY      13.75
			#define AUDIOLINK_BASE_AMPLITUDE        2.5
			#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
			#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
			#define AUDIOLINK_DFT_Q                 4.0
			#define AUDIOLINK_TREBLE_CORRECTION     5.0
			
			// ColorChord constants
			#define COLORCHORD_EMAXBIN              192
			#define COLORCHORD_IIR_DECAY_1          0.90
			#define COLORCHORD_IIR_DECAY_2          0.85
			#define COLORCHORD_CONSTANT_DECAY_1     0.01
			#define COLORCHORD_CONSTANT_DECAY_2     0.0
			#define COLORCHORD_NOTE_CLOSEST         3.0
			#define COLORCHORD_NEW_NOTE_GAIN        8.0
			#define COLORCHORD_MAX_NOTES            10
			
			// We use glsl_mod for most calculations because it behaves better
			// on negative numbers, and in some situations actually outperforms
			// HLSL's modf().
			#ifndef glsl_mod
			#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
			#endif
			
			uniform float4               _AudioTexture_TexelSize;
			
			#ifdef SHADER_TARGET_SURFACE_ANALYSIS
			#define AUDIOLINK_STANDARD_INDEXING
			#endif
			
			// Mechanism to index into texture.
			#ifdef AUDIOLINK_STANDARD_INDEXING
			sampler2D _AudioTexture;
			#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
			#else
			uniform Texture2D<float4> _AudioTexture;
			SamplerState sampler_AudioTexture;
			#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
			#endif
			
			float _Mode;
			
			#ifdef USER_LUT
			#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture;
			float4 _DistortionFlowTexture_ST;
			float2 _DistortionFlowTexturePan;
			float _DistortionFlowTextureUV;
			#endif
			
			#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture1;
			float4 _DistortionFlowTexture1_ST;
			float2 _DistortionFlowTexture1Pan;
			float _DistortionFlowTexture1UV;
			#endif
			
			#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionMask;
			float4 _DistortionMask_ST;
			float2 _DistortionMaskPan;
			float _DistortionMaskUV;
			#endif
			
			float _DistortionUvToDistort;
			float _DistortionStrength;
			float _DistortionStrength1;
			#endif
			float _StereoEnabled;
			float _PolarUV;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			
			float _IgnoreFog;
			
			float4 _Color;
			UNITY_DECLARE_TEX2D(_MainTex);
			float4 _MainTex_ST;
			float2 _MainTexPan;
			float _MainTexUV;
			Texture2D _BumpMap;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			Texture2D _ClippingMask;
			float4 _ClippingMask_ST;
			float2 _ClippingMaskPan;
			float _ClippingMaskUV;
			float _Inverse_Clipping;
			float _Cutoff;
			
			#ifdef _COLORADDSUBDIFF_ON
			#if defined(PROP_MATCAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap;
			float4 _Matcap_ST;
			float2 _MatcapPan;
			float _MatcapUV;
			#endif
			#if defined(PROP_MATCAPMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MatcapMask;
			float4 _MatcapMask_ST;
			float2 _MatcapMaskPan;
			float _MatcapMaskUV;
			#endif
			#ifdef POI_MATCAP0_CUSTOM_NORMAL
			#if defined(PROP_MATCAP0NORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap0NormalMap;
			float4 _Matcap0NormalMap_ST;
			float2 _Matcap0NormalMapPan;
			float _Matcap0NormalMapUV;
			#endif
			float _Matcap0NormalMapScale;
			#endif
			float _MatcapMaskInvert;
			float _MatcapBorder;
			float4 _MatcapColor;
			float _MatcapIntensity;
			float _MatcapReplace;
			float _MatcapMultiply;
			float _MatcapAdd;
			float _MatcapEnable;
			float _MatcapLightMask;
			float _MatcapEmissionStrength;
			float _MatcapNormal;
			float _MatcapHueShiftEnabled;
			float _MatcapHueShiftSpeed;
			float _MatcapHueShift;
			#endif
			
			#ifdef COLOR_GRADING_HDR_3D
			#if defined(PROP_MATCAP2) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap2;
			float4 _Matcap2_ST;
			float2 _Matcap2Pan;
			float _Matcap2UV;
			#endif
			#if defined(PROP_MATCAP2MASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap2Mask;
			float4 _Matcap2Mask_ST;
			float2 _Matcap2MaskPan;
			float _Matcap2MaskUV;
			#endif
			#ifdef POI_MATCAP1_CUSTOM_NORMAL
			#if defined(PROP_MATCAP1NORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap1NormalMap;
			float4 _Matcap1NormalMap_ST;
			float2 _Matcap1NormalMapPan;
			float _Matcap1NormalMapUV;
			#endif
			float _Matcap1NormalMapScale;
			#endif
			float _Matcap2MaskInvert;
			float _Matcap2Border;
			float4 _Matcap2Color;
			float _Matcap2Intensity;
			float _Matcap2Replace;
			float _Matcap2Multiply;
			float _Matcap2Add;
			float _Matcap2Enable;
			float _Matcap2LightMask;
			float _Matcap2EmissionStrength;
			float _Matcap2Normal;
			float _Matcap2HueShiftEnabled;
			float _Matcap2HueShiftSpeed;
			float _Matcap2HueShift;
			#endif
			
			Texture2D _LightingMapsTex;
			float4 _LightingMapsTex_ST;
			float2 _LightingMapsTexPan;
			float _LightingMapsTexUV;
			float _LightDataAOStrength;
			float _LightDataDetailStrength;
			float _LightDataShadowMaskStrength;
			// Lighting Data
			float _LightingColorMode;
			float _LightingMapMode;
			float _LightingDirectiongMode;
			float3 _LightngForcedDirection;
			float _LightingIndirectUsesNormals;
			float _LightingCapEnabled;
			float _LightingCap;
			float _LightingForceColorEnabled;
			float3 _LightingForcedColor;
			float _LightingCastedShadows;
			float _LightingMonochromatic;
			float _LightingMinLightBrightness;
			// Additive Lighting Data
			float _LightingAdditiveLimited;
			float _LightingAdditiveLimit;
			float _LightingAdditivePassthrough;
			// Lighting Data Debug
			float _LightingDebugVisualize;
			
			// Toon Lighting
			UNITY_DECLARE_TEX2D(_ToonRamp);
			float _ShadowOffset;
			float _ShadowStrength;
			float _LightingIgnoreAmbientColor;
			// Math Toon Lighting
			float _LightingGradientStart;
			float _LightingGradientEnd;
			float3 _LightingShadowColor;
			float _LightingMathLinearSmooth;
			// ShadeMap Lighting
			float3 _1st_ShadeColor;
			Texture2D _1st_ShadeMap;
			float4 _1st_ShadeMap_ST;
			float2 _1st_ShadeMapPan;
			float _1st_ShadeMapUV;
			float _Use_1stShadeMapAlpha_As_ShadowMask;
			float _1stShadeMapMask_Inverse;
			float _Use_BaseAs1st;
			float3 _2nd_ShadeColor;
			Texture2D _2nd_ShadeMap;
			float4 _2nd_ShadeMap_ST;
			float2 _2nd_ShadeMapPan;
			float _2nd_ShadeMapUV;
			float _Use_2ndShadeMapAlpha_As_ShadowMask;
			float _2ndShadeMapMask_Inverse;
			float _Use_1stAs2nd;
			float _BaseColor_Step;
			float _BaseShade_Feather;
			float _ShadeColor_Step;
			float _1st2nd_Shades_Feather;
			// Realistic Lighting
			float _LightingStandardSmoothness;
			// Skin
			sampler2D _SkinLUT;
			float _SssScale;
			float _SssBumpBlur;
			float3 _SssTransmissionAbsorption;
			float3 _SssColorBleedAoWeights;
			// Additive
			float _LightingAdditiveType;
			float _LightingAdditiveGradientStart;
			float _LightingAdditiveGradientEnd;
			float _LightingAdditiveDetailStrength;
			float _LightingAdditiveLimitIntensity;
			float _LightingAdditiveMaxIntensity;
			
			#ifdef VIGNETTE_CLASSIC
			#if defined(PROP_BRDFMETALLICGLOSSMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BRDFMetallicGlossMap;
			float4 _BRDFMetallicGlossMap_ST;
			float2 _BRDFMetallicGlossMapPan;
			float _BRDFMetallicGlossMapUV;
			#endif
			#if defined(PROP_BRDFSPECULARMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BRDFSpecularMap;
			float4 _BRDFSpecularMap_ST;
			float2 _BRDFSpecularMapPan;
			float _BRDFSpecularMapUV;
			#endif
			#if defined(PROP_BRDFMETALLICMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BRDFMetallicMap;
			float4 _BRDFMetallicMap_ST;
			float2 _BRDFMetallicMapPan;
			float _BRDFMetallicMapUV;
			#endif
			
			samplerCUBE _BRDFFallback;
			
			float _BRDFMetallic;
			float _BRDFGlossiness;
			float _BRDFReflectance;
			float _BRDFAnisotropy;
			float _BRDFMetallicSpecIgnoresBaseColor;
			float _BRDFReflectionsEnabled;
			float _BRDFSpecularEnabled;
			float _BRDFInvertGlossiness;
			float _BRDFForceFallback;
			float _BRDFFresnel;
			#endif
			
			#ifdef _EMISSION
			
			#if defined(PROP_EMISSIONMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMap;
			float4 _EmissionMap_ST;
			float2 _EmissionMapPan;
			float _EmissionMapUV;
			#endif
			#if defined(PROP_EMISSIONMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMask;
			float4 _EmissionMask_ST;
			float2 _EmissionMaskPan;
			float _EmissionMaskUV;
			#endif
			#if defined(PROP_EMISSIONSCROLLINGCURVE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionScrollingCurve;
			float4 _EmissionScrollingCurve_ST;
			#endif
			
			float4 _EmissionColor;
			float _EmissionBaseColorAsMap;
			float _EmissionStrength;
			float _EmissionHueShiftEnabled;
			float _EmissionHueShift;
			float _EmissionHueShiftSpeed;
			float _EmissionCenterOutEnabled;
			float _EmissionCenterOutSpeed;
			float _EnableGITDEmission;
			float _GITDEWorldOrMesh;
			float _GITDEMinEmissionMultiplier;
			float _GITDEMaxEmissionMultiplier;
			float _GITDEMinLight;
			float _GITDEMaxLight;
			float _EmissionBlinkingEnabled;
			float _EmissiveBlink_Min;
			float _EmissiveBlink_Max;
			float _EmissiveBlink_Velocity;
			float _EmissionBlinkingOffset;
			float _ScrollingEmission;
			float4 _EmissiveScroll_Direction;
			float _EmissiveScroll_Width;
			float _EmissiveScroll_Velocity;
			float _EmissiveScroll_Interval;
			float _EmissionScrollingOffset;
			
			float _AudioLinkEmission0Enabled;
			float2 _AudioLinkEmission0StrengthMod;
			float _AudioLinkEmission0StrengthBand;
			float2 _AudioLinkEmission0CenterOut;
			float _AudioLinkEmission0CenterOutwidth;
			float _AudioLinkEmission0CenterOutSize;
			float _AudioLinkEmission0CenterOutBand;
			
			#if defined(PROP_EMISSIONMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMap1;
			float4 _EmissionMap1_ST;
			float2 _EmissionMap1Pan;
			float _EmissionMap1UV;
			#endif
			#if defined(PROP_EMISSIONMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMask1;
			float4 _EmissionMask1_ST;
			float2 _EmissionMask1Pan;
			float _EmissionMask1UV;
			#endif
			#if defined(PROP_EMISSIONSCROLLINGCURVE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionScrollingCurve1;
			float4 _EmissionScrollingCurve1_ST;
			#endif
			
			float4 _EmissionColor1;
			float _EmissionBaseColorAsMap1;
			float _EmissionStrength1;
			float _EnableEmission1;
			float _EmissionHueShift1;
			float _EmissionHueShiftSpeed1;
			float4 _EmissiveScroll_Direction1;
			float _EmissiveScroll_Width1;
			float _EmissiveScroll_Velocity1;
			float _EmissiveScroll_Interval1;
			float _EmissionBlinkingEnabled1;
			float _EmissiveBlink_Min1;
			float _EmissiveBlink_Max1;
			float _EmissiveBlink_Velocity1;
			float _ScrollingEmission1;
			float _EnableGITDEmission1;
			float _GITDEMinEmissionMultiplier1;
			float _GITDEMaxEmissionMultiplier1;
			float _GITDEMinLight1;
			float _GITDEMaxLight1;
			float _GITDEWorldOrMesh1;
			float _EmissionCenterOutEnabled1;
			float _EmissionCenterOutSpeed1;
			float _EmissionHueShiftEnabled1;
			float _EmissionBlinkingOffset1;
			float _EmissionScrollingOffset1;
			
			float _EmissionReplace;
			
			float _EmissionScrollingVertexColor;
			float _EmissionScrollingVertexColor1;
			
			float _EmissionScrollingUseCurve;
			float _EmissionScrollingUseCurve1;
			
			float _AudioLinkEmission1Enabled;
			float2 _AudioLinkEmission1StrengthMod;
			float _AudioLinkEmission1StrengthBand;
			float2 _AudioLinkEmission1CenterOut;
			float _AudioLinkEmission1CenterOutwidth;
			float _AudioLinkEmission1CenterOutSize;
			float _AudioLinkEmission1CenterOutBand;
			
			#endif
			
			#ifdef COLOR_GRADING_LOG_VIEW
			float _AudioLinkDelay;
			float _AudioLinkAnimToggle;
			#endif
			
			//Structs
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				float4 uv[2] : TEXCOORD0;
				float3 objNormal : TEXCOORD2;
				float3 normal : TEXCOORD3;
				float3 tangent : TEXCOORD4;
				float3 binormal : TEXCOORD5;
				float4 worldPos : TEXCOORD6;
				float4 localPos : TEXCOORD7;
				float4 vertexColor : TEXCOORD8;
				UNITY_SHADOW_COORDS(9)
				UNITY_FOG_COORDS(10)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			
			v2f vert(appdata v)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				PoiInitStruct(v2f, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				
				o.objNormal = v.normal;
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.tangent = UnityObjectToWorldDir(v.tangent);
				
				o.binormal = cross(o.normal, o.tangent) * (v.tangent.w * unity_WorldTransformParams.w);
				o.vertexColor = v.color;
				
				o.uv[0].xy = v.uv0;
				o.uv[0].zw = v.uv1;
				o.uv[1].xy = v.uv2;
				o.uv[1].zw = v.uv3;
				
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				o.pos = UnityObjectToClipPos(v.vertex);
				
				#ifndef FORWARD_META_PASS
				#if !defined(UNITY_PASS_SHADOWCASTER)
				UNITY_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				#endif
				UNITY_TRANSFER_FOG(o, o.pos);
				return o;
			}
			
			struct PoiMesh
			{
				
				// 0 Vertex normal
				// 1 Fragment normal
				float3 normals[2];
				float3 objNormal;
				float3 tangentSpaceNormal;
				float3 binormal;
				float3 tangent;
				float3 worldPos;
				float3 localPos;
				float isFrontFace;
				float4 vertexColor;
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 7 Distorted UV
				float2 uv[8];
			};
			
			struct PoiCam
			{
				float3 viewDir;
				float3 forwardDir;
				float3 worldPos;
				float distanceToVert;
				float2 clipPos;
				float3 reflectionDir;
				
			};
			
			struct PoiMods
			{
				float4 Mask;
				float4 audioLink;
				float audioLinkAvailable;
				float audioLinkVersion;
				float4 audioLinkTexture;
			};
			
			struct PoiLight
			{
				
				float3 direction;
				float attenuation;
				float attenuationStrength;
				float3 directColor;
				float3 indirectColor;
				float occlusion;
				float shadowMask;
				float detailShadow;
				float3 halfDir;
				float lightMap;
				float3 rampedLightMap;
				float nDotL;
				float nDotV;
				float nDotH;
				float lDotv;
				float lDotH;
				float nDotLSaturated;
				float nDotLNormalized;
				#ifdef UNITY_PASS_FORWARDADD
				float additiveShadow;
				#endif
				float3 finalLighting;
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				// Non Important Lights
				float4 vDotNL;
				float3 vColor[4];
				float4 vCorrectedDotNL;
				float4 vAttenuation;
				float4 vAttenuationDotNL;
				float3 vPosition[4];
				float3 vDirection[4];
				float3 vFinalLighting;
				float3 vHalfDir[4];
				half4 vDotNH;
				half4 vDotLH;
				#endif
				
			};
			
			struct PoiVertexLights
			{
				
				float3 direction;
				float3 color;
				float attenuation;
			};
			
			struct PoiFragData
			{
				float3 baseColor;
				float3 finalColor;
				float alpha;
				float3 emission;
			};
			
			float2 poiUV(float2 uv, float4 tex_st)
			{
				return uv * tex_st.xy + tex_st.zw;
			}
			
			//Lighting Helpers
			float calculateluminance(float3 color)
			{
				return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
			}
			
			/*
			* MIT License
			*
			* Copyright (c) 2018 s-ilent
			*
			* Permission is hereby granted, free of charge, to any person obtaining a copy
			* of this software and associated documentation files (the "Software"), to deal
			* in the Software without restriction, including without limitation the rights
			* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			* copies of the Software, and to permit persons to whom the Software is
			* furnished to do so, subject to the following conditions:
			*
			* The above copyright notice and this permission notice shall be included in all
			* copies or substantial portions of the Software.
			*
			* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			* SOFTWARE.
			*/
			
			float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
			{
				// average energy
				float R0 = max(0, L0);
				
				// avg direction of incoming light
				float3 R1 = 0.5f * L1;
				
				// directional brightness
				float lenR1 = length(R1);
				
				// linear angle between normal and direction 0-1
				//float q = 0.5f * (1.0f + dot(R1 / lenR1, n));
				//float q = dot(R1 / lenR1, n) * 0.5 + 0.5;
				float q = dot(normalize(R1), n) * 0.5 + 0.5;
				q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
				
				// power for q
				// lerps from 1 (linear) to 3 (cubic) based on directionality
				float p = 1.0f + 2.0f * lenR1 / R0;
				
				// dynamic range constant
				// should vary between 4 (highly directional) and 0 (ambient)
				float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
				
				return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
			}
			
			half3 BetterSH9(half4 normal)
			{
				float3 indirect;
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
				indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
				indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
				indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
				indirect = max(0, indirect);
				indirect += SHEvalLinearL2(normal);
				return indirect;
			}
			
			// Silent's code ends here
			
			float3 getCameraForward()
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1));
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1));
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				return normalize(p2 - p1);
			}
			
			half3 GetSHLength()
			{
				half3 x, x1;
				x.r = length(unity_SHAr);
				x.g = length(unity_SHAg);
				x.b = length(unity_SHAb);
				x1.r = length(unity_SHBr);
				x1.g = length(unity_SHBg);
				x1.b = length(unity_SHBb);
				return x + x1;
			}
			
			float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				UNITY_BRANCH
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			
			float poiMax(float2 i)
			{
				return max(i.x, i.y);
			}
			
			float poiMax(float3 i)
			{
				return max(max(i.x, i.y), i.z);
			}
			
			float poiMax(float4 i)
			{
				return max(max(max(i.x, i.y), i.z), i.w);
			}
			
			float3 hueShift(float3 color, float Offset)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 P = lerp(float4(color.bg, K.wz), float4(color.gb, K.xy), step(color.b, color.g));
				float4 Q = lerp(float4(P.xyw, color.r), float4(color.r, P.yzx), step(P.x, color.r));
				float D = Q.x - min(Q.w, Q.y);
				float E = 0.0000000001;
				float3 hsv = float3(abs(Q.z + (Q.w - Q.y) / (6.0 * D + E)), D / (Q.x + E), Q.x);
				
				float hue = hsv.x + Offset;
				hsv.x = frac(hue);
				
				float4 K2 = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
				float3 P2 = abs(frac(hsv.xxx + K2.xyz) * 6.0 - K2.www);
				return hsv.z * lerp(K2.xxx, saturate(P2 - K2.xxx), hsv.y);
			}
			
			float3 calculateNormal(in float3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in float4 normal_ST, in float2 normalPan, in float normalUV, in float normalIntensity)
			{
				float3 normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(normalTexture, _MainTex, poiUV(poiMesh.uv[normalUV], normal_ST), normalPan), normalIntensity);
				return normalize(
				normal.x * poiMesh.tangent +
				normal.y * poiMesh.binormal +
				normal.z * baseNormal
				);
			}
			
			float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), 0, 1);
			}
			#ifdef COLOR_GRADING_LOG_VIEW
			//Tests to see if Audio Link texture is available
			bool AudioLinkIsAvailable()
			{
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				int width, height;
				_AudioTexture.GetDimensions(width, height);
				return width > 16;
				#else
				return _AudioTexture_TexelSize.z > 16;
				#endif
			}
			
			//Get version of audiolink present in the world, 0 if no audiolink is present
			float AudioLinkGetVersion()
			{
				int2 dims;
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				_AudioTexture.GetDimensions(dims.x, dims.y);
				#else
				dims = _AudioTexture_TexelSize.zw;
				#endif
				
				if (dims.x >= 128)
				return AudioLinkData(ALPASS_GENERALVU).x;
				else if (dims.x > 16)
				return 1;
				else
				return 0;
			}
			
			float getBandAtTime(float band, float time, float width, float size = 1.0f)
			{
				return pow(UNITY_SAMPLE_TEX2D(_AudioTexture, float2(time * width, band)).r, (1 - size) * 3 + 1);
			}
			
			void initAudioBands(inout PoiMods poiMods)
			{
				poiMods.audioLinkAvailable = AudioLinkIsAvailable();
				poiMods.audioLinkAvailable *= _AudioLinkAnimToggle;
				
				if (poiMods.audioLinkAvailable)
				{
					poiMods.audioLinkVersion = AudioLinkGetVersion();
					poiMods.audioLink.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					poiMods.audioLink.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					poiMods.audioLink.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					poiMods.audioLink.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
				}
			}
			#endif
			
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[_PolarUV] - _PolarCenter;
				float radius = length(delta) * 2 * _PolarRadialScale;
				float angle = atan2(delta.x, delta.y) * 1.0 / 6.28 * _PolarLengthScale;
				return float2(radius, angle + distance(poiMesh.uv[_PolarUV], _PolarCenter) * _PolarSpiralPower);
			}
			
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(1.0, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).zw;
			}
			
			float2 StereoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).zw;
			}
			
			float2 calculatePanosphereUV(in PoiMesh poiMesh)
			{
				float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - poiMesh.worldPos) * - 1;
				return lerp(MonoPanoProjection(viewDirection), StereoPanoProjection(viewDirection), _StereoEnabled);
			}
			
			#ifdef USER_LUT
			float2 distortedUV(in PoiMesh poiMesh)
			{
				#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector = POI2D_SAMPLER_PAN(_DistortionFlowTexture, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTextureUV], _DistortionFlowTexture_ST), _DistortionFlowTexturePan) * 2 - 1;
				#else
				float4 flowVector = 0;
				#endif
				
				#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector1 = POI2D_SAMPLER_PAN(_DistortionFlowTexture1, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTexture1UV], _DistortionFlowTexture1_ST), _DistortionFlowTexture1Pan) * 2 - 1;
				#else
				float4 flowVector1 = 0;
				#endif
				
				#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
				half distortionMask = POI2D_SAMPLER_PAN(_DistortionMask, _MainTex, poiMesh.uv[_DistortionMaskUV], _DistortionMaskPan).r;
				#else
				half distortionMask = 1;
				#endif
				
				half distortionStrength = _DistortionStrength;
				half distortionStrength1 = _DistortionStrength1;
				
				flowVector *= distortionStrength;
				flowVector1 *= distortionStrength1;
				return poiMesh.uv[_DistortionUvToDistort] + ((flowVector.xy + flowVector1.xy) / 2) * distortionMask;
			}
			#endif
			
			void blendMatcap(in PoiLight poiLight, inout PoiFragData poiFragData, float add, float multiply, float replace, float4 matcapColor, float matcapMask, float emissionStrength, float matcapLightMask
			#ifdef POI_BLACKLIGHT
			, uint blackLightMaskIndex
			#endif
			)
			{
				if (matcapLightMask)
				{
					matcapMask *= lerp(1, poiLight.rampedLightMap, matcapLightMask);
				}
				#ifdef POI_BLACKLIGHT
				if (blackLightMaskIndex != 4)
				{
					matcapMask *= blackLightMask[blackLightMaskIndex];
				}
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, matcapColor.rgb, replace * matcapMask * matcapColor.a * .999999);
				poiFragData.baseColor.rgb *= lerp(1, matcapColor.rgb, multiply * matcapMask * matcapColor.a);
				poiFragData.baseColor.rgb += matcapColor.rgb * add * matcapMask * matcapColor.a;
				poiFragData.emission += matcapColor.rgb * emissionStrength * matcapMask * matcapColor.a;
			}
			
			#if defined(_COLORADDSUBDIFF_ON) || defined(COLOR_GRADING_HDR_3D)
			void applyMatcap(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiMesh poiMesh, in PoiLight poiLight)
			{
				float4 matcap = 0;
				float matcapMask = 0;
				float4 matcap2 = 0;
				float matcap2Mask = 0;
				
				// Both matcaps use the same coordinates
				half3 worldViewUp = normalize(half3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, half3(0, 1, 0)));
				half3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				
				// Matcap 1
				#ifdef _COLORADDSUBDIFF_ON
				
				#ifdef POI_MATCAP0_CUSTOM_NORMAL
				float3 normal0 = calculateNormal(poiMesh.normals[_MatcapNormal], poiMesh, _Matcap0NormalMap, _Matcap0NormalMap_ST, _Matcap0NormalMapPan, _Matcap0NormalMapUV, _Matcap0NormalMapScale);
				#else
				float3 normal0 = poiMesh.normals[_MatcapNormal];
				#endif
				
				half2 matcapUV = half2(dot(worldViewRight, normal0), dot(worldViewUp, poiMesh.normals[_MatcapNormal])) * _MatcapBorder + 0.5;
				
				#if defined(PROP_MATCAP) || !defined(OPTIMIZER_ENABLED)
				matcap = UNITY_SAMPLE_TEX2D_SAMPLER(_Matcap, _MainTex, TRANSFORM_TEX(matcapUV, _Matcap)) * _MatcapColor;
				#else
				matcap = _MatcapColor;
				#endif
				
				matcap.rgb *= _MatcapIntensity;
				#if defined(PROP_MATCAPMASK) || !defined(OPTIMIZER_ENABLED)
				matcapMask = POI2D_SAMPLER_PAN(_MatcapMask, _MainTex, poiUV(poiMesh.uv[_MatcapMaskUV], _MatcapMask_ST), _MatcapMaskPan);
				#else
				matcapMask = 1;
				#endif
				
				if (_MatcapMaskInvert)
				{
					matcapMask = 1 - matcapMask;
				}
				
				UNITY_BRANCH
				if (_MatcapHueShiftEnabled)
				{
					matcap.rgb = hueShift(matcap.rgb, _MatcapHueShift + _Time.x * _MatcapHueShiftSpeed);
				}
				
				blendMatcap(poiLight, poiFragData, _MatcapAdd, _MatcapMultiply, _MatcapReplace, matcap, matcapMask, _MatcapEmissionStrength, _MatcapLightMask
				#ifdef POI_BLACKLIGHT
				, _BlackLightMaskMatcap
				#endif
				);
				#endif
				
				// Matcap 2
				#ifdef COLOR_GRADING_HDR_3D
				
				#ifdef POI_MATCAP1_CUSTOM_NORMAL
				float3 normal1 = calculateNormal(poiMesh.normals[_Matcap2Normal], poiMesh, _Matcap1NormalMap, _Matcap1NormalMap_ST, _Matcap1NormalMapPan, _Matcap1NormalMapUV, _Matcap1NormalMapScale);
				#else
				float3 normal1 = poiMesh.normals[_Matcap2Normal];
				#endif
				
				half2 matcapUV2 = half2(dot(worldViewRight, normal1), dot(worldViewUp, poiMesh.normals[_Matcap2Normal])) * _Matcap2Border + 0.5;
				#if defined(PROP_MATCAP2) || !defined(OPTIMIZER_ENABLED)
				matcap2 = UNITY_SAMPLE_TEX2D_SAMPLER(_Matcap2, _MainTex, TRANSFORM_TEX(matcapUV2, _Matcap2)) * _Matcap2Color;
				#else
				matcap2 = _Matcap2Color;
				#endif
				matcap2.rgb *= _Matcap2Intensity;
				#if defined(PROP_MATCAP2MASK) || !defined(OPTIMIZER_ENABLED)
				matcap2Mask = POI2D_SAMPLER_PAN(_Matcap2Mask, _MainTex, poiUV(poiMesh.uv[_Matcap2MaskUV], _Matcap2Mask_ST), _Matcap2MaskPan);
				#else
				matcap2Mask = 1;
				#endif
				if (_Matcap2MaskInvert)
				{
					matcap2Mask = 1 - matcap2Mask;
				}
				
				UNITY_BRANCH
				if (_Matcap2HueShiftEnabled)
				{
					matcap2.rgb = hueShift(matcap2.rgb, _Matcap2HueShift + _Time.x * _Matcap2HueShiftSpeed);
				}
				
				blendMatcap(poiLight, poiFragData, _Matcap2Add, _Matcap2Multiply, _Matcap2Replace, matcap2, matcap2Mask, _Matcap2EmissionStrength, _Matcap2LightMask
				#ifdef POI_BLACKLIGHT
				, _BlackLightMaskMatcap2
				#endif
				);
				#endif
			}
			#endif
			
			#ifdef VIGNETTE_MASKED
			
			void applyShadeMapping(inout PoiFragData poiFragData, PoiMesh poiMesh, PoiLight poiLight)
			{
				float MainColorFeatherStep = _BaseColor_Step - _BaseShade_Feather;
				float firstColorFeatherStep = _ShadeColor_Step - _1st2nd_Shades_Feather;
				
				#if defined(PROP_1ST_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 firstShadeMap = POI2D_SAMPLER_PAN(_1st_ShadeMap, _MainTex, poiUV(poiMesh.uv[_1st_ShadeMapUV], _1st_ShadeMap_ST), _1st_ShadeMapPan);
				#else
				float4 firstShadeMap = float4(1, 1, 1, 1);
				#endif
				firstShadeMap = lerp(firstShadeMap, float4(poiFragData.baseColor, 1), _Use_BaseAs1st);
				
				#if defined(PROP_2ND_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 secondShadeMap = POI2D_SAMPLER_PAN(_2nd_ShadeMap, _MainTex, poiUV(poiMesh.uv[_2nd_ShadeMapUV], _2nd_ShadeMap_ST), _2nd_ShadeMapPan);
				#else
				float4 secondShadeMap = float4(1, 1, 1, 1);
				#endif
				secondShadeMap = lerp(secondShadeMap, firstShadeMap, _Use_1stAs2nd);
				
				firstShadeMap.rgb *= _1st_ShadeColor.rgb; //* lighColor
				secondShadeMap.rgb *= _2nd_ShadeColor.rgb; //* LightColor;
				
				float shadowMask = 1;
				shadowMask *= _Use_1stShadeMapAlpha_As_ShadowMask ?(_1stShadeMapMask_Inverse ?(1.0 - firstShadeMap.a) : firstShadeMap.a) : 1;
				shadowMask *= _Use_2ndShadeMapAlpha_As_ShadowMask ?(_2ndShadeMapMask_Inverse ?(1.0 - secondShadeMap.a) : secondShadeMap.a) : 1;
				
				float mainShadowMask = saturate(1 - ((poiLight.lightMap) - MainColorFeatherStep) / (_BaseColor_Step - MainColorFeatherStep) * (shadowMask));
				float firstSecondShadowMask = saturate(1 - ((poiLight.lightMap) - firstColorFeatherStep) / (_ShadeColor_Step - firstColorFeatherStep) * (shadowMask));
				
				mainShadowMask *= poiLight.shadowMask;
				firstSecondShadowMask *= poiLight.shadowMask;
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
			}
			
			UnityIndirect CreateIndirectLight(in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight)
			{
				UnityIndirect indirectLight;
				indirectLight.diffuse = 0;
				indirectLight.specular = 0;
				
				#if defined(LIGHTMAP_ON)
				indirectLight.diffuse = DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, poiMesh.lightmapUV.xy));
				
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 lightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_LightmapInd, unity_Lightmap, poiMesh.lightmapUV.xy
				);
				indirectLight.diffuse = DecodeDirectionalLightmap(
				indirectLight.diffuse, lightmapDirection, poiMesh.normals[1]
				);
				#endif
				ApplySubtractiveLighting(indirectLight);
				#endif
				
				#if defined(DYNAMICLIGHTMAP_ON)
				float3 dynamicLightDiffuse = DecodeRealtimeLightmap(
				UNITY_SAMPLE_TEX2D(unity_DynamicLightmap, poiMesh.lightmapUV.zw)
				);
				
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 dynamicLightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_DynamicDirectionality, unity_DynamicLightmap,
				poiMesh.lightmapUV.zw
				);
				indirectLight.diffuse += DecodeDirectionalLightmap(
				dynamicLightDiffuse, dynamicLightmapDirection, poiMesh.normals[1]
				);
				#else
				indirectLight.diffuse += dynamicLightDiffuse;
				#endif
				#endif
				
				#if !defined(LIGHTMAP_ON) && !defined(DYNAMICLIGHTMAP_ON)
				#if UNITY_LIGHT_PROBE_PROXY_VOLUME
				if (unity_ProbeVolumeParams.x == 1)
				{
					indirectLight.diffuse = SHEvalLinearL0L1_SampleProbeVolume(
					float4(poiMesh.normals[1], 1), poiMesh.worldPos
					);
					indirectLight.diffuse = max(0, indirectLight.diffuse);
					#if defined(UNITY_COLORSPACE_GAMMA)
					indirectLight.diffuse = LinearToGammaSpace(indirectLight.diffuse);
					#endif
				}
				else
				{
					indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				}
				#else
				indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				#endif
				#endif
				
				float3 reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				Unity_GlossyEnvironmentData envData;
				envData.roughness = 1 - _LightingStandardSmoothness;
				envData.reflUVW = BoxProjection(
				reflectionDir, poiMesh.worldPos.xyz,
				unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz
				);
				float3 probe0 = Unity_GlossyEnvironment(
				UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData
				);
				envData.reflUVW = BoxProjection(
				reflectionDir, poiMesh.worldPos.xyz,
				unity_SpecCube1_ProbePosition,
				unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz
				);
				#if UNITY_SPECCUBE_BLENDING
				float interpolator = unity_SpecCube0_BoxMin.w;
				UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					float3 probe1 = Unity_GlossyEnvironment(
					UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0),
					unity_SpecCube0_HDR, envData
					);
					indirectLight.specular = lerp(probe1, probe0, interpolator);
				}
				else
				{
					indirectLight.specular = probe0;
				}
				#else
				indirectLight.specular = probe0;
				#endif
				
				indirectLight.diffuse *= poiLight.occlusion;
				indirectLight.specular *= poiLight.occlusion;
				
				return indirectLight;
			}
			
			void applyShading(inout PoiLight poiLight, inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				#ifdef UNITY_PASS_FORWARDBASE
				
				float shadowStrength = _ShadowStrength * poiLight.shadowMask;
				
				#ifdef _LIGHTINGMODE_FLAT
				poiLight.finalLighting = poiLight.directColor;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				#endif
				
				#ifdef _LIGHTINGMODE_TEXTURERAMP
				poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, poiLight.lightMap + _ShadowOffset).rgb, shadowStrength);
				poiLight.finalLighting = lerp(_LightingShadowColor * lerp(poiLight.indirectColor, poiLight.rampedLightMap * poiLight.directColor, _LightingIgnoreAmbientColor) * poiLight.occlusion, poiLight.directColor, poiLight.rampedLightMap);
				#endif
				
				#ifdef _LIGHTINGMODE_MATHRAMP
				if (_LightingMathLinearSmooth)
				{
					poiLight.rampedLightMap = saturate(1 - remapClamped(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - poiLight.lightMap));
				}
				else
				{
					poiLight.rampedLightMap = saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - poiLight.lightMap));
				}
				poiLight.finalLighting = lerp((_LightingShadowColor * lerp(poiLight.indirectColor, poiLight.directColor, _LightingIgnoreAmbientColor) * poiLight.occlusion), (poiLight.directColor), saturate(poiLight.rampedLightMap + 1 - shadowStrength));
				#endif
				
				#ifdef _LIGHTINGMODE_SHADEMAP
				poiLight.finalLighting = poiLight.directColor;
				#endif
				
				#ifdef _LIGHTINGMODE_REALISTIC
				UnityLight light;
				light.dir = poiLight.direction;
				light.color = saturate(_LightColor0.rgb * lerp(1, poiLight.attenuation, poiLight.attenuationStrength) * poiLight.detailShadow);
				light.ndotl = poiLight.nDotLSaturated;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				poiLight.finalLighting = UNITY_BRDF_PBS(1, 0, 0, _LightingStandardSmoothness, poiMesh.normals[1], poiCam.viewDir, light, CreateIndirectLight(poiMesh, poiCam, poiLight)).xyz;
				#endif
				
				#ifdef _LIGHTINGMODE_WRAPPED
				poiLight.finalLighting = lerp(POI_ERROR(poiMesh, 20) * poiLight.indirectColor, poiLight.directColor, ceil(poiLight.nDotL));
				#endif
				
				#ifdef _LIGHTINGMODE_SKIN
				float3 ambientNormalWorld = poiMesh.normals[1];//aTangentToWorld(s, s.blurredNormalTangent);
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				// Scattering mask.
				float subsurface = 1;
				float skinScattering = saturate(subsurface * _SssScale * 2);
				
				// Skin subsurface depth absorption tint.
				// cf http://www.crytek.com/download/2014_03_25_CRYENGINE_GDC_Schultz.pdf pg 35
				half3 absorption = exp((1.0h - subsurface) * _SssTransmissionAbsorption.rgb);
				
				// Albedo scale for absorption assumes ~0.5 luminance for Caucasian skin.
				absorption *= saturate(poiFragData.baseColor * unity_ColorSpaceDouble.rgb);
				
				// Blurred normals for indirect diffuse and direct scattering.
				ambientNormalWorld = normalize(lerp(poiMesh.normals[1], ambientNormalWorld, _SssBumpBlur));
				
				float ndlBlur = dot(poiMesh.normals[1], poiLight.direction) * 0.5h + 0.5h;
				float lumi = dot(poiLight.directColor, half3(0.2126h, 0.7152h, 0.0722h));
				float4 sssLookupUv = float4(ndlBlur, skinScattering * lumi, 0.0f, 0.0f);
				half3 sss = poiLight.lightMap * poiLight.attenuation * tex2Dlod(_SkinLUT, sssLookupUv).rgb;
				poiLight.finalLighting = min(lerp(poiLight.indirectColor * _LightingShadowColor, _LightingShadowColor, _LightingIgnoreAmbientColor) + (sss * poiLight.directColor), poiLight.directColor);
				#endif
				
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				UNITY_BRANCH
				if (_LightingAdditiveType == 0) // Realistic
				
				{
					poiLight.finalLighting = poiLight.directColor * poiLight.attenuation * max(0, poiLight.nDotL) * poiLight.detailShadow * poiLight.additiveShadow;
				}
				else if (_LightingAdditiveType == 1) // Toon
				
				{
					#if defined(POINT) || defined(SPOT)
					poiLight.finalLighting = lerp(poiLight.directColor * max(poiLight.additiveShadow, _LightingAdditivePassthrough), poiLight.indirectColor, smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, 1 - (.5 * poiLight.nDotL + .5))) * poiLight.attenuation * poiLight.detailShadow;
					#else
					poiLight.finalLighting = lerp(poiLight.directColor * max(poiLight.attenuation, _LightingAdditivePassthrough), poiLight.indirectColor, smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, 1 - (.5 * poiLight.nDotL + .5))) * poiLight.detailShadow;
					#endif
				}
				/*
				else //if(_LightingAdditiveType == 2) // Wrapped
				{
					float uv = saturate(RTWrapFunc(poiLight.nDotL, _LightingWrappedWrap, _LightingWrappedNormalization)) * detailShadow;
					
					poiLight.rampedLightMap = 1;
					UNITY_BRANCH
					if (_LightingRampType == 1) // Math Gradient
					poiLight.rampedLightMap = lerp(_LightingShadowColor, float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - uv)));
					// TODO: ramp texture or full shade/tint map for atlasing
					//poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, float2(uv + _ShadowOffset, 1)), shadowStrength.r);
					
					float shadowatten = max(poiLight.additiveShadow, _LightingAdditivePassthrough);
					return poiLight.color * poiLight.rampedLightMap * saturate(poiLight.attenuation * uv * shadowatten);
				}
				*/
				#endif
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float3 vertexLighting = float3(0, 0, 0);
				for (int index = 0; index < 4; index++)
				{
					UNITY_BRANCH
					if (_LightingAdditiveType == 0)
					{
						vertexLighting += poiLight.vColor[index] * poiLight.vAttenuationDotNL[index] * poiLight.detailShadow; // Realistic
						
					}
					
					UNITY_BRANCH
					if (_LightingAdditiveType == 1) // Toon
					
					{
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * _LightingAdditivePassthrough * poiLight.vAttenuation[index], smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, poiLight.vDotNL[index])) * poiLight.detailShadow;
					}
					
					UNITY_BRANCH
					if (_LightingAdditiveType == 2) //if(_LightingAdditiveType == 2) // Wrapped
					
					{
						//TODO wrapped vertex lighting
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * _LightingAdditivePassthrough * poiLight.vAttenuation[index], smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, poiLight.vDotNL[index])) * poiLight.detailShadow;
						/*
						float uv = saturate(RTWrapFunc(-poiLight.vDotNL[index], _LightingWrappedWrap, _LightingWrappedNormalization)) * poiLight.detailShadow;
						
						poiLight.rampedLightMap = 1;
						if (_LightingRampType == 1) // Math Gradient
						poiLight.rampedLightMap = lerp(_LightingShadowColor, float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - uv)));
						
						vertexLighting += poiLight.vColor[index] * poiLight.rampedLightMap * saturate(poiLight.vAttenuation[index] * uv);
						*/
					}
				}
				float3 mixedLight = poiLight.finalLighting;
				mixedLight = vertexLighting + poiLight.finalLighting;
				poiFragData.finalColor = poiFragData.baseColor * mixedLight;
				#else
				poiFragData.finalColor = poiFragData.baseColor * poiLight.finalLighting;
				#endif
			}
			#endif
			
			#ifdef VIGNETTE_CLASSIC
			
			/*
			* MIT License
			*
			* Copyright (c) 2020 Xiexe
			*
			* Permission is hereby granted, free of charge, to any person obtaining a copy
			* of this software and associated documentation files (the "Software"), to deal
			* in the Software without restriction, including without limitation the rights
			* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			* copies of the Software, and to permit persons to whom the Software is
			* furnished to do so, subject to the following conditions:
			*
			* The above copyright notice and this permission notice shall be included in all
			* copies or substantial portions of the Software.
			*
			* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			* SOFTWARE.
			*/
			
			bool DoesReflectionProbeExist(in PoiCam poiCam)
			{
				float4 envSample = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, poiCam.reflectionDir, UNITY_SPECCUBE_LOD_STEPS);
				bool probeExists = !(unity_SpecCube0_HDR.a == 0 && envSample.a == 0);
				return probeExists && !_BRDFForceFallback;
			}
			
			float getGeometricSpecularAA(float3 normal)
			{
				float3 vNormalWsDdx = ddx(normal.xyz);
				float3 vNormalWsDdy = ddy(normal.xyz);
				float flGeometricRoughnessFactor = pow(saturate(max(dot(vNormalWsDdx.xyz, vNormalWsDdx.xyz), dot(vNormalWsDdy.xyz, vNormalWsDdy.xyz))), 0.333);
				return max(0, flGeometricRoughnessFactor);
			}
			
			float3 getAnisotropicReflectionVector(float3 viewDir, float3 bitangent, float3 tangent, float3 normal, float roughness, float anisotropy)
			{
				float3 anisotropicDirection = anisotropy >= 0.0 ? bitangent : tangent;
				float3 anisotropicTangent = cross(anisotropicDirection, viewDir);
				float3 anisotropicNormal = cross(anisotropicTangent, anisotropicDirection);
				float bendFactor = abs(anisotropy) * saturate(5.0 * roughness);
				float3 bentNormal = normalize(lerp(normal, anisotropicNormal, bendFactor));
				return reflect(-viewDir, bentNormal);
			}
			
			float3 F_Schlick(float u, float3 f0)
			{
				return f0 + (1.0 - f0) * pow(1.0 - u, 5.0);
			}
			
			float3 F_Schlick(const float3 f0, float f90, float VoH)
			{
				// Schlick 1994, "An Inexpensive BRDF Model for Physically-Based Rendering"
				float pow5 = 1.0 - VoH;
				pow5 = pow5 * pow5 * pow5 * pow5 * pow5;
				return f0 + (f90 - f0) * pow5;
			}
			
			float D_GGX(float NoH, float roughness)
			{
				float a2 = roughness * roughness;
				float f = (NoH * a2 - NoH) * NoH + 1.0;
				return a2 / (UNITY_PI * f * f);
			}
			
			float V_SmithGGXCorrelated(float NoV, float NoL, float a)
			{
				float a2 = a * a;
				float GGXL = NoV * sqrt((-NoL * a2 + NoL) * NoL + a2);
				float GGXV = NoL * sqrt((-NoV * a2 + NoV) * NoV + a2);
				return 0.5 / (GGXV + GGXL);
			}
			
			float D_GGX_Anisotropic(float NoH, const float3 h, const float3 t, const float3 b, float at, float ab)
			{
				float ToH = dot(t, h);
				float BoH = dot(b, h);
				float a2 = at * ab;
				float3 v = float3(ab * ToH, at * BoH, a2 * NoH);
				float v2 = dot(v, v);
				float w2 = a2 / v2;
				return a2 * w2 * w2 * (1.0 / UNITY_PI);
			}
			
			float3 getBoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				// #if defined(UNITY_SPECCUBE_BOX_PROJECTION) // For some reason this doesn't work?
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				// #endif
				return direction;
			}
			
			float3 getDirectSpecular(float roughness, float ndl, float3 f0, float anisotropy, in float nDotH, in float lDotH, in float nDotV, in float halfDir, in PoiMesh poiMesh)
			{
				#if !defined(LIGHTMAP_ON)
				float rough = max(roughness * roughness, 0.0045);
				float Dn = D_GGX(saturate(nDotH), rough);
				float3 F = F_Schlick(saturate(lDotH), f0);
				float V = V_SmithGGXCorrelated(max(nDotV, 0.000001), ndl, rough);
				float3 directSpecularNonAniso = max(0, (Dn * V) * F);
				
				anisotropy *= saturate(5.0 * roughness);
				float at = max(rough * (1.0 + anisotropy), 0.001);
				float ab = max(rough * (1.0 - anisotropy), 0.001);
				float D = D_GGX_Anisotropic(saturate(nDotH), halfDir, poiMesh.tangent.xyz, poiMesh.binormal, at, ab);
				float3 directSpecularAniso = max(0, (D * V) * F);
				
				return lerp(directSpecularNonAniso, directSpecularAniso, saturate(abs(_BRDFAnisotropy * 100))) * 3; // * 100 to prevent blending, blend because otherwise tangents are fucked on lightmapped object
				#else
				return 0;
				#endif
			}
			
			float3 getIndirectSpecular(float metallic, float roughness, float3 reflDir, float3 worldPos, float3 lightmap, float3 normal, in PoiCam poiCam, in PoiLight poiLight)
			{
				float3 spec = float3(0, 0, 0);
				#if defined(UNITY_PASS_FORWARDBASE)
				float3 indirectSpecular;
				Unity_GlossyEnvironmentData envData;
				envData.roughness = roughness;
				envData.reflUVW = getBoxProjection(
				reflDir, worldPos,
				unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz
				);
				float3 probe0 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData);
				float interpolator = unity_SpecCube0_BoxMin.w;
				UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					envData.reflUVW = getBoxProjection(
					reflDir, worldPos,
					unity_SpecCube1_ProbePosition,
					unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz
					);
					float3 probe1 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0), unity_SpecCube0_HDR, envData);
					indirectSpecular = lerp(probe1, probe0, interpolator);
				}
				else
				{
					indirectSpecular = probe0;
				}
				
				if (!DoesReflectionProbeExist(poiCam))
				{
					indirectSpecular = texCUBElod(_BRDFFallback, float4(reflDir, roughness * UNITY_SPECCUBE_LOD_STEPS)).rgb * poiLight.finalLighting;
				}
				
				float horizon = min(1 + dot(reflDir, normal), 1);
				indirectSpecular *= horizon * horizon;
				
				spec = indirectSpecular;
				#if defined(LIGHTMAP_ON)
				float specMultiplier = max(0, lerp(1, pow(length(lightmap), _SpecLMOcclusionAdjust), _SpecularLMOcclusion));
				spec *= specMultiplier;
				#endif
				#endif
				return spec;
			}
			void poiBRDF(in PoiCam poiCam, in PoiMesh poiMesh, inout PoiFragData poiFragData, in PoiLight poiLight)
			{
				float4 ret = float4(1, 0, 0, 1);
				#if defined(PROP_BRDFMETALLICGLOSSMAP) || !defined(OPTIMIZER_ENABLED)
				float4 metallicGlossMap = POI2D_SAMPLER_PAN(_BRDFMetallicGlossMap, _MainTex, poiUV(poiMesh.uv[_BRDFMetallicGlossMapUV], _BRDFMetallicGlossMap_ST), _BRDFMetallicGlossMapPan);
				#else
				float4 metallicGlossMap = 1;
				#endif
				#if defined(PROP_BRDFSPECULARMAP) || !defined(OPTIMIZER_ENABLED)
				float4 spcularTintMask = POI2D_SAMPLER_PAN(_BRDFSpecularMap, _MainTex, poiUV(poiMesh.uv[_BRDFSpecularMapUV], _BRDFSpecularMap_ST), _BRDFSpecularMapPan);
				#else
				float4 spcularTintMask = 1;
				#endif
				#if defined(PROP_BRDFMETALLICMAP) || !defined(OPTIMIZER_ENABLED)
				float4 metallicTintMask = POI2D_SAMPLER_PAN(_BRDFMetallicMap, _MainTex, poiUV(poiMesh.uv[_BRDFMetallicMapUV], _BRDFMetallicMap_ST), _BRDFMetallicMapPan);
				#else
				float4 metallicTintMask = 1;
				#endif
				UNITY_BRANCH
				if (_BRDFInvertGlossiness == 1)
				{
					metallicGlossMap.a = 1 - metallicGlossMap.a;
				}
				
				float metallic = metallicGlossMap.r * _BRDFMetallic;
				float reflectance = metallicGlossMap.g * _BRDFReflectance;
				float roughness = max(1 - (_BRDFGlossiness * metallicGlossMap.a), getGeometricSpecularAA(poiMesh.normals[1]));
				poiFragData.finalColor.rgb *= lerp(1, 1 - metallic, _BRDFReflectionsEnabled);
				
				float3 reflViewDir = getAnisotropicReflectionVector(poiCam.viewDir, poiMesh.binormal, poiMesh.tangent.xyz, poiMesh.normals[1], roughness, _BRDFAnisotropy);
				float3 reflLightDir = reflect(poiLight.direction, poiMesh.normals[1]);
				
				#if defined(UNITY_PASS_FORWARDBASE) || defined(POI_META_PASS)
				float attenuation = poiMax(poiLight.rampedLightMap);
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float attenuation = saturate(poiLight.nDotL);
				#endif
				
				float3 f0Spec = 0.16 * reflectance * reflectance * (1.0 - metallic) + lerp(poiFragData.baseColor.rgb * metallic, metallic, _BRDFMetallicSpecIgnoresBaseColor);
				float3 f0 = 0.16 * reflectance * reflectance * (1.0 - metallic) + poiFragData.baseColor.rgb * metallic;
				float3 fresnel = lerp(F_Schlick(poiLight.nDotV, f0), f0, metallic) * lerp(0, 1, _BRDFFresnel); //Kill fresnel on metallics, it looks bad.
				float3 directSpecular = getDirectSpecular(roughness, attenuation, f0Spec, _BRDFAnisotropy, poiLight.nDotH, poiLight.lDotH, poiLight.nDotV, poiLight.halfDir, poiMesh) * poiLight.attenuation * attenuation * poiLight.directColor;
				directSpecular = min(directSpecular, poiLight.directColor);
				
				#ifndef UNITY_PASS_FORWARDADD
				float3 vDirectSpecular = 0;
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				for (int index = 0; index < 4; index++)
				{
					float3 v0directSpecular = getDirectSpecular(roughness, attenuation, f0Spec, _BRDFAnisotropy, poiLight.vDotNH[index], poiLight.vDotLH[index], poiLight.nDotV, poiLight.vHalfDir[index], poiMesh) * poiLight.attenuation * poiLight.vAttenuationDotNL[index] * poiLight.vColor[index];
					//float3 v0directSpecular = getDirectSpecular(roughness, saturate(poiLight.vDotNH[index]), max(poiLight.nDotV, 0.000001), attenuation, saturate(poiLight.lDotH), f0, poiLight.vHalfDir[index], poiMesh.tangent, poiMesh.binormal, _BRDFAnisotropy) * poiLight.attenuation * poiLight.vAttenuationDotNL[index] * poiLight.vColor[index];
					vDirectSpecular += min(v0directSpecular, poiLight.vColor[index]);
				}
				#endif
				
				float3 indirectSpecular = getIndirectSpecular(metallic, roughness, reflViewDir, poiMesh.worldPos, /*directDiffuse*/ poiFragData.finalColor.rgb, poiMesh.normals[1], poiCam, poiLight) * lerp(fresnel, f0, roughness);
				float3 specular = indirectSpecular * _BRDFReflectionsEnabled * metallicTintMask.a * metallicTintMask.rgb * poiLight.occlusion + (directSpecular + vDirectSpecular) * _BRDFSpecularEnabled * spcularTintMask.a * spcularTintMask.rgb;
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				poiFragData.finalColor.rgb += directSpecular;
				#else
				poiFragData.finalColor.rgb += specular;
				#endif
			}
			
			#endif
			
			float calculateGlowInTheDark(in float minLight, in float maxLight, in float minEmissionMultiplier, in float maxEmissionMultiplier, in float enabled, in float worldOrMesh, in PoiLight poiLight)
			{
				float glowInTheDarkMultiplier = 1;
				UNITY_BRANCH
				if (enabled)
				{
					#ifdef POI_LIGHTING
					float3 lightValue = worldOrMesh ? calculateluminance(poiLight.finalLighting.rgb) : calculateluminance(poiLight.directLighting.rgb);
					float gitdeAlpha = saturate(inverseLerp(minLight, maxLight, lightValue));
					glowInTheDarkMultiplier = lerp(minEmissionMultiplier, maxEmissionMultiplier, gitdeAlpha);
					#endif
				}
				return glowInTheDarkMultiplier;
			}
			
			float calculateScrollingEmission(in float3 direction, in float velocity, in float interval, in float scrollWidth, float offset, float3 position)
			{
				float phase = 0;
				phase = dot(position, direction);
				phase -= (_Time.y + offset) * velocity;
				phase /= interval;
				phase -= floor(phase);
				phase = saturate(phase);
				return(pow(phase, scrollWidth) + pow(1 - phase, scrollWidth * 4)) * 0.5;
			}
			
			float calculateBlinkingEmission(in float blinkMin, in float blinkMax, in float blinkVelocity, float offset)
			{
				float amplitude = (blinkMax - blinkMin) * 0.5f;
				float base = blinkMin + amplitude;
				return sin((_Time.y + offset) * blinkVelocity) * amplitude + base;
			}
			
			#ifdef _EMISSION
			void applyEmission(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiLight poiLight, in PoiCam poiCam, in PoiMods poiMods)
			{
				
				// First Emission
				float3 emission0 = 0;
				float emissionStrength0 = _EmissionStrength;
				float3 emissionColor0 = 0;
				
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable && _AudioLinkEmission0Enabled)
				{
					emissionStrength0 += lerp(_AudioLinkEmission0CenterOut.x, _AudioLinkEmission0CenterOut.y, getBandAtTime(_AudioLinkEmission0CenterOutBand, saturate(1 - poiLight.nDotV), _AudioLinkEmission0CenterOutwidth, _AudioLinkEmission0CenterOutSize));
					emissionStrength0 += lerp(_AudioLinkEmission0StrengthMod.x, _AudioLinkEmission0StrengthMod.y, poiMods.audioLink[_AudioLinkEmission0StrengthBand]);
				}
				#endif
				
				float glowInTheDarkMultiplier0 = calculateGlowInTheDark(_GITDEMinLight, _GITDEMaxLight, _GITDEMinEmissionMultiplier, _GITDEMaxEmissionMultiplier, _EnableGITDEmission, _GITDEWorldOrMesh, poiLight);
				
				#if defined(PROP_EMISSIONMAP) || !defined(OPTIMIZER_ENABLED)
				UNITY_BRANCH
				if (!_EmissionCenterOutEnabled)
				{
					emissionColor0 = POI2D_SAMPLER_PAN(_EmissionMap, _MainTex, poiUV(poiMesh.uv[_EmissionMapUV], _EmissionMap_ST), _EmissionMapPan).rgb * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap).rgb * _EmissionColor.rgb;
				}
				else
				{
					emissionColor0 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap, _MainTex, ((.5 + poiLight.nDotV * .5) * _EmissionMap_ST.xy) + _Time.x * _EmissionCenterOutSpeed).rgb * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap).rgb * _EmissionColor.rgb;
				}
				#else
				emissionColor0 = lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap).rgb * _EmissionColor.rgb;
				#endif
				
				UNITY_BRANCH
				if (_ScrollingEmission)
				{
					float3 pos = poiMesh.localPos;
					UNITY_BRANCH
					if (_EmissionScrollingVertexColor)
					{
						pos = poiMesh.vertexColor.rgb;
					}
					
					UNITY_BRANCH
					if (_EmissionScrollingUseCurve)
					{
						#if defined(PROP_EMISSIONSCROLLINGCURVE) || !defined(OPTIMIZER_ENABLED)
						emissionStrength0 *= UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionScrollingCurve, _MainTex, poiUV(poiMesh.uv[_EmissionMapUV], _EmissionScrollingCurve_ST) + (dot(pos, _EmissiveScroll_Direction.xyz) * _EmissiveScroll_Interval) + _Time.x * _EmissiveScroll_Velocity).r;
						#endif
					}
					else
					{
						emissionStrength0 *= calculateScrollingEmission(_EmissiveScroll_Direction.xyz, _EmissiveScroll_Velocity, _EmissiveScroll_Interval, _EmissiveScroll_Width, _EmissionScrollingOffset, pos);
					}
				}
				
				UNITY_BRANCH
				if (_EmissionBlinkingEnabled)
				{
					emissionStrength0 *= calculateBlinkingEmission(_EmissiveBlink_Min, _EmissiveBlink_Max, _EmissiveBlink_Velocity, _EmissionBlinkingOffset);
				}
				
				emissionColor0 = hueShift(emissionColor0, frac(_EmissionHueShift + _EmissionHueShiftSpeed * _Time.x) * _EmissionHueShiftEnabled);
				
				#if defined(PROP_EMISSIONMASK) || !defined(OPTIMIZER_ENABLED)
				float emissionMask0 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMask, _MainTex, poiUV(poiMesh.uv[_EmissionMaskUV], _EmissionMask_ST) + _Time.x * _EmissionMaskPan).r;
				#else
				float emissionMask0 = 1;
				#endif
				
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskEmission != 4)
				{
					emissionMask0 *= blackLightMask[_BlackLightMaskEmission];
				}
				#endif
				
				emissionStrength0 *= glowInTheDarkMultiplier0 * emissionMask0;
				emission0 = emissionStrength0 * emissionColor0;
				
				#ifdef POI_DISSOLVE
				UNITY_BRANCH
				if (_DissolveEmissionSide != 2)
				{
					emission0 *= lerp(1 - dissolveAlpha, dissolveAlpha, _DissolveEmissionSide);
				}
				#endif
				
				// Second Emission
				float3 emission1 = 0;
				float emissionStrength1 = 0;
				float3 emissionColor1 = 0;
				
				#ifdef EFFECT_HUE_VARIATION
				emissionStrength1 = _EmissionStrength1;
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable && _AudioLinkEmission1Enabled)
				{
					emissionStrength1 += lerp(_AudioLinkEmission1CenterOut.x, _AudioLinkEmission1CenterOut.y, getBandAtTime(_AudioLinkEmission1CenterOutBand, saturate(1 - poiLight.nDotV), _AudioLinkEmission1CenterOutwidth, _AudioLinkEmission0CenterOutSize));
					emissionStrength1 += lerp(_AudioLinkEmission1StrengthMod.x, _AudioLinkEmission1StrengthMod.y, poiMods.audioLink[_AudioLinkEmission1StrengthBand]);
				}
				#endif
				
				float glowInTheDarkMultiplier1 = calculateGlowInTheDark(_GITDEMinLight1, _GITDEMaxLight1, _GITDEMinEmissionMultiplier1, _GITDEMaxEmissionMultiplier1, _EnableGITDEmission1, _GITDEWorldOrMesh1, poiLight);
				#if defined(PROP_EMISSIONMAP1) || !defined(OPTIMIZER_ENABLED)
				
				UNITY_BRANCH
				if (!_EmissionCenterOutEnabled1)
				{
					emissionColor1 = POI2D_SAMPLER_PAN(_EmissionMap1, _MainTex, poiUV(poiMesh.uv[_EmissionMap1UV], _EmissionMap1_ST), _EmissionMap1Pan) * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap1).rgb * _EmissionColor1.rgb;
				}
				else
				{
					emissionColor1 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap1, _MainTex, ((.5 + poiLight.nDotV * .5) * _EmissionMap1_ST.xy) + _Time.x * _EmissionCenterOutSpeed1).rgb * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap1).rgb * _EmissionColor1.rgb;
				}
				#else
				emissionColor1 = lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap1).rgb * _EmissionColor1.rgb;;
				#endif
				UNITY_BRANCH
				if (_ScrollingEmission1)
				{
					float3 pos1 = poiMesh.localPos;
					UNITY_BRANCH
					if (_EmissionScrollingVertexColor1)
					{
						pos1 = poiMesh.vertexColor.rgb;
					}
					
					UNITY_BRANCH
					if (_EmissionScrollingUseCurve1)
					{
						#if defined(PROP_EMISSIONSCROLLINGCURVE1) || !defined(OPTIMIZER_ENABLED)
						emissionStrength1 *= UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionScrollingCurve1, _MainTex, poiUV(poiMesh.uv[_EmissionMap1UV], _EmissionScrollingCurve1_ST) + (dot(pos1, _EmissiveScroll_Direction1) * _EmissiveScroll_Interval1) + _Time.x * _EmissiveScroll_Velocity1);
						#endif
					}
					else
					{
						emissionStrength1 *= calculateScrollingEmission(_EmissiveScroll_Direction1, _EmissiveScroll_Velocity1, _EmissiveScroll_Interval1, _EmissiveScroll_Width1, _EmissionScrollingOffset1, pos1);
					}
				}
				UNITY_BRANCH
				if (_EmissionBlinkingEnabled1)
				{
					emissionStrength1 *= calculateBlinkingEmission(_EmissiveBlink_Min1, _EmissiveBlink_Max1, _EmissiveBlink_Velocity1, _EmissionBlinkingOffset1);
				}
				
				emissionColor1 = hueShift(emissionColor1, frac(_EmissionHueShift1 + _EmissionHueShiftSpeed1 * _Time.x) * _EmissionHueShiftEnabled1);
				#if defined(PROP_EMISSIONMASK1) || !defined(OPTIMIZER_ENABLED)
				float emissionMask1 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMask1, _MainTex, poiUV(poiMesh.uv[_EmissionMask1UV], _EmissionMask1_ST) + _Time.x * _EmissionMask1Pan);
				#else
				float emissionMask1 = 1;
				#endif
				
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskEmission2 != 4)
				{
					emissionMask1 *= blackLightMask[_BlackLightMaskEmission2];
				}
				#endif
				emissionStrength1 *= glowInTheDarkMultiplier1 * emissionMask1;
				emission1 = emissionStrength1 * emissionColor1;
				
				#endif
				poiFragData.finalColor.rgb = lerp(poiFragData.finalColor.rgb, saturate(emission0 + emission1),  _EmissionReplace * poiMax(emission0 + emission1));
				
				poiFragData.emission = emission0 + emission1;
			}
			#endif
			
			float4 frag(v2f i, uint facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				
				PoiVertexLights poiVertexLights;
				PoiInitStruct(PoiVertexLights, poiVertexLights);
				
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				
				PoiFragData poiFragData;
				poiFragData.emission = 0;
				poiFragData.baseColor = float3(0, 0, 0);
				poiFragData.finalColor = float3(0, 0, 0);
				poiFragData.alpha = 1;
				
				// Mesh Data
				poiMesh.objNormal = i.objNormal;
				poiMesh.normals[0] = normalize(i.normal);
				poiMesh.tangent = normalize(i.tangent);
				poiMesh.binormal = normalize(i.binormal);
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.localPos = i.localPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				poiMesh.isFrontFace = facing;
				if (!poiMesh.isFrontFace)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent *= -1;
					poiMesh.binormal *= -1;
				}
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 6 Distorted UV
				poiMesh.uv[0] = i.uv[0].xy;
				poiMesh.uv[1] = i.uv[0].zw;
				poiMesh.uv[2] = i.uv[1].xy;
				poiMesh.uv[3] = i.uv[1].zw;
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.worldPos.xz;
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				#ifdef USER_LUT
				poiMesh.uv[7] = distortedUV(poiMesh);
				#endif
				
				float4 mainTexture = UNITY_SAMPLE_TEX2D(_MainTex, poiUV(poiMesh.uv[_MainTexUV].xy, _MainTex_ST) + _Time.x * _MainTexPan);
				
				float3 mainNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_BumpMap, _MainTex, poiUV(poiMesh.uv[_BumpMapUV], _BumpMap_ST), _BumpMapPan), _BumpScale);
				poiMesh.tangentSpaceNormal = mainNormal;
				
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent.xyz +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				
				// Camera data
				poiCam.viewDir = normalize(_WorldSpaceCameraPos - i.worldPos.xyz);
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = _WorldSpaceCameraPos;
				poiCam.reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				//poiCam.distanceToModel = distance(poiMesh.modelPos, poiCam.worldPos);
				poiCam.distanceToVert = distance(poiMesh.worldPos, poiCam.worldPos);
				//poiCam.grabPos = i.grabPos;
				//poiCam.screenUV = calcScreenUVs(i.grabPos);
				poiCam.clipPos = i.pos;
				
				#if defined(PROP_LIGHTINGMAPSTEX) || !defined(OPTIMIZER_ENABLED)
				float4 lightingMaps = POI2D_SAMPLER_PAN(_LightingMapsTex, _MainTex, poiUV(poiMesh.uv[_LightingMapsTexUV], _LightingMapsTex_ST), _LightingMapsTexPan);
				#else
				float4 lightingMaps = float4(1, 1, 1, 1);
				#endif
				
				poiLight.occlusion = lerp(1, lightingMaps.r, _LightDataAOStrength);
				poiLight.detailShadow = lerp(1, lightingMaps.g, _LightDataDetailStrength);
				poiLight.shadowMask = lerp(1, lightingMaps.b, _LightDataShadowMaskStrength);
				
				#ifdef UNITY_PASS_FORWARDBASE
				
				bool lightExists = false;
				if (any(_LightColor0.rgb >= 0.002))
				{
					lightExists = true;
				}
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float4 toLightX = unity_4LightPosX0 - i.worldPos.x;
				float4 toLightY = unity_4LightPosY0 - i.worldPos.y;
				float4 toLightZ = unity_4LightPosZ0 - i.worldPos.z;
				float4 lengthSq = 0;
				lengthSq += toLightX * toLightX;
				lengthSq += toLightY * toLightY;
				lengthSq += toLightZ * toLightZ;
				
				float4 lightAttenSq = unity_4LightAtten0;
				float4 atten = 1.0 / (1.0 + lengthSq * lightAttenSq);
				float4 vLightWeight = saturate(1 - (lengthSq * lightAttenSq / 25));
				poiLight.vAttenuation = min(atten, vLightWeight * vLightWeight);
				
				poiLight.vDotNL = 0;
				poiLight.vDotNL += toLightX * poiMesh.normals[1].x;
				poiLight.vDotNL += toLightY * poiMesh.normals[1].y;
				poiLight.vDotNL += toLightZ * poiMesh.normals[1].z;
				
				float4 corr = rsqrt(lengthSq);
				poiLight.vDotNL = max(0, poiLight.vDotNL * corr);
				poiLight.vAttenuationDotNL = poiLight.vAttenuation * poiLight.vDotNL;
				
				for (int index = 0; index < 4; index++)
				{
					poiLight.vPosition[index] = float3(unity_4LightPosX0[index], unity_4LightPosY0[index], unity_4LightPosZ0[index]);
					
					float3 vertexToLightSource = poiLight.vPosition[index] - poiMesh.worldPos;
					poiLight.vDirection[index] = normalize(vertexToLightSource);
					//poiLight.vAttenuationDotNL[index] = 1.0 / (1.0 + unity_4LightAtten0[index] * poiLight.vDotNL[index]);
					poiLight.vColor[index] = unity_LightColor[index].rgb;
					UNITY_BRANCH
					if (_LightingAdditiveLimitIntensity == 1)
					{
						float intensity = max(0.001, (0.299 * poiLight.vColor[index].r + 0.587 * poiLight.vColor[index].g + 0.114 * poiLight.vColor[index].b));
						poiLight.vColor[index] = min(poiLight.vColor[index], poiLight.vColor[index] / (intensity / _LightingAdditiveMaxIntensity));
					}
					poiLight.vHalfDir[index] = Unity_SafeNormalize(poiLight.vDirection[index] + poiCam.viewDir);
					poiLight.vDotNL[index] = dot(poiMesh.normals[1], -poiLight.vDirection[index]);
					poiLight.vCorrectedDotNL[index] = .5 * (poiLight.vDotNL[index] + 1);
					poiLight.vDotLH[index] = saturate(dot(poiLight.vDirection[index], poiLight.vHalfDir[index]));
					
					poiLight.vDotNH[index] = saturate(dot(poiMesh.normals[1], poiLight.vHalfDir[index]));
				}
				#endif
				
				UNITY_BRANCH
				if (_LightingColorMode == 0) // Poi Custom Light Color
				
				{
					float3 magic = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
					float3 normalLight = _LightColor0.rgb + BetterSH9(float4(0, 0, 0, 1));
					
					float magiLumi = calculateluminance(magic);
					float normaLumi = calculateluminance(normalLight);
					float maginormalumi = magiLumi + normaLumi;
					
					float magiratio = magiLumi / maginormalumi;
					float normaRatio = normaLumi / maginormalumi;
					
					float target = calculateluminance(magic * magiratio + normalLight * normaRatio);
					float3 properLightColor = magic + normalLight;
					float properLuminance = calculateluminance(magic + normalLight);
					poiLight.directColor = properLightColor * max(0.0001, (target / properLuminance));
					
					poiLight.indirectColor = BetterSH9(float4(lerp(0, poiMesh.normals[1], _LightingIndirectUsesNormals), 1));
				}
				
				UNITY_BRANCH
				if (_LightingColorMode == 1) // More standard approach to light color
				
				{
					if (lightExists)
					{
						poiLight.directColor = _LightColor0.rgb + BetterSH9(float4(poiMesh.normals[1], 1));
					}
					else
					{
						poiLight.directColor = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
					}
					
					poiLight.indirectColor = BetterSH9(float4(poiMesh.normals[1], 1));
				}
				
				float lightMapMode = _LightingMapMode;
				UNITY_BRANCH
				if (_LightingDirectiongMode == 0)
				{
					poiLight.direction = _WorldSpaceLightPos0.xyz + unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz;
				}
				else
				{
					UNITY_BRANCH
					if (_LightingDirectiongMode == 1)
					{
						poiLight.direction = mul(unity_ObjectToWorld, _LightngForcedDirection).xyz;;
					}
					UNITY_BRANCH
					if (_LightingDirectiongMode == 2)
					{
						poiLight.direction = _LightngForcedDirection;
					}
					if (lightMapMode == 0)
					{
						lightMapMode == 1;
					}
				}
				
				poiLight.direction = normalize(poiLight.direction);
				poiLight.attenuationStrength = _LightingCastedShadows;
				poiLight.attenuation = 1;
				if (!all(_LightColor0.rgb == 0.0))
				{
					UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
					poiLight.attenuation *= attenuation;
				}
				
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = dot(poiMesh.normals[1], poiCam.viewDir);
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				
				UNITY_BRANCH
				if (lightMapMode == 0) // Poi special light map
				
				{
					float3 ShadeSH9Plus = GetSHLength();
					float3 ShadeSH9Minus = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
					
					float3 greyScaleVector = float3(.33333, .33333, .33333);
					float bw_lightColor = dot(poiLight.directColor, greyScaleVector);
					float bw_directLighting = (((poiLight.nDotL * 0.5 + 0.5) * bw_lightColor * lerp(1, poiLight.attenuation, poiLight.attenuationStrength)) + dot(ShadeSH9(float4(poiMesh.normals[1], 1)), greyScaleVector));
					float bw_bottomIndirectLighting = dot(ShadeSH9Minus, greyScaleVector);
					float bw_topIndirectLighting = dot(ShadeSH9Plus, greyScaleVector);
					float lightDifference = ((bw_topIndirectLighting + bw_lightColor) - bw_bottomIndirectLighting);
					poiLight.lightMap = smoothstep(0, lightDifference, bw_directLighting - bw_bottomIndirectLighting);
				}
				UNITY_BRANCH
				if (lightMapMode == 1) // Normalized nDotL
				
				{
					poiLight.lightMap = poiLight.nDotLNormalized;
				}
				UNITY_BRANCH
				if (lightMapMode == 2) // Saturated nDotL
				
				{
					poiLight.lightMap = poiLight.nDotLSaturated;
				}
				
				poiLight.directColor = max(poiLight.directColor, poiLight.directColor / max(0.0001, (calculateluminance(poiLight.directColor) / _LightingMinLightBrightness)));
				poiLight.indirectColor = max(poiLight.indirectColor, poiLight.indirectColor / max(0.0001, (calculateluminance(poiLight.indirectColor) / _LightingMinLightBrightness)));
				
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), _LightingMonochromatic);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), _LightingMonochromatic);
				UNITY_BRANCH
				if (_LightingCapEnabled)
				{
					poiLight.directColor = min(poiLight.directColor, _LightingCap);
					poiLight.indirectColor = min(poiLight.indirectColor, _LightingCap);
				}
				
				UNITY_BRANCH
				if (_LightingForceColorEnabled)
				{
					poiLight.directColor = _LightingForcedColor;
				}
				
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				#ifndef POI_LIGHT_DATA_ADDITIVE_ENABLE
				return float4(mainTexture.rgb * .0001, 1);
				#endif
				
				#if defined(POINT) || defined(SPOT)
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz - i.worldPos.xyz);
				
				#ifdef POINT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(input, poiMesh.worldPos);
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1)).xyz;
				poiLight.attenuation = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				
				#ifdef SPOT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(i, poiMesh.worldPos);
				unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1));
				poiLight.attenuation = (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#else
				poiLight.direction = _WorldSpaceLightPos0.xyz;
				UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
				poiLight.additiveShadow == 0;
				poiLight.attenuation = attenuation;
				#endif
				poiLight.directColor = _LightingAdditiveLimited ? min(_LightingAdditiveLimit, _LightColor0.rgb) : _LightColor0.rgb;
				poiLight.indirectColor = lerp(0, poiLight.directColor, _LightingAdditivePassthrough);
				
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = dot(poiMesh.normals[1], poiCam.viewDir);
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				poiLight.lightMap = 1;
				#endif
				
				#ifdef POI_LIGHT_DATA_DEBUG
				
				#ifdef UNITY_PASS_FORWARDBASE
				UNITY_BRANCH
				if (_LightingDebugVisualize <= 5)
				{
					switch(_LightingDebugVisualize)
					{
						case 0: // Direct Light Color
						return float4(poiLight.directColor + mainTexture.rgb * .0001, 1);
						break;
						case 1: // Indirect Light Color
						return float4(poiLight.indirectColor + mainTexture.rgb * .0001, 1);
						break;
						case 2: // Light Map
						return float4(poiLight.lightMap + mainTexture.rgb * .0001, 1);
						break;
						case 3: // Attenuation
						return float4(poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 4: // N Dot L
						return float4(poiLight.nDotLNormalized, poiLight.nDotLNormalized, poiLight.nDotLNormalized, 1) + mainTexture * .0001;
						break;
						case 5:
						return float4(poiLight.halfDir, poiLight.halfDir, poiLight.halfDir, 1) + mainTexture * .0001;
						break;
					}
				}
				else
				{
					return POI_SAFE_RGB1;
				}
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				UNITY_BRANCH
				if (_LightingDebugVisualize < 6)
				{
					return POI_SAFE_RGB1;
				}
				else
				{
					switch(_LightingDebugVisualize)
					{
						case 6:
						return float4(poiLight.directColor * poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 7:
						return float4(poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 8:
						return float4(poiLight.additiveShadow + mainTexture.rgb * .0001, 1);
						break;
						case 9:
						return float4(poiLight.nDotLNormalized + mainTexture.rgb * .0001, 1);
						break;
						case 10:
						return float4(poiLight.halfDir, poiLight.halfDir, poiLight.halfDir, 1) + mainTexture * .0001;
						break;
					}
				}
				#endif
				#endif
				
				poiFragData.baseColor = mainTexture.rgb * _Color.rgb;
				poiFragData.alpha = mainTexture.a * _Color.a;
				
				#if defined(PROP_CLIPPINGMASK) || !defined(OPTIMIZER_ENABLED)
				float alphaMask = POI2D_SAMPLER_PAN(_ClippingMask, _MainTex, poiUV(poiMesh.uv[_ClippingMaskUV], _ClippingMask_ST), _ClippingMaskPan).r;
				#else
				float alphaMask = 1;
				#endif
				
				poiFragData.alpha *= alphaMask;
				
				#if defined(_COLORADDSUBDIFF_ON) || defined(COLOR_GRADING_HDR_3D)
				applyMatcap(poiFragData, poiCam, poiMesh, poiLight);
				#endif
				
				#if defined(_LIGHTINGMODE_SHADEMAP) && defined(VIGNETTE_MASKED)
				applyShadeMapping(poiFragData, poiMesh, poiLight);
				#endif
				
				poiFragData.finalColor = poiFragData.baseColor;
				
				#ifdef VIGNETTE_MASKED
				applyShading(poiLight, poiFragData, poiMesh, poiCam);
				#endif
				
				#if defined(VIGNETTE_CLASSIC)
				poiBRDF(poiCam, poiMesh, poiFragData, poiLight);
				#endif
				
				#ifdef COLOR_GRADING_LOG_VIEW
				initAudioBands(poiMods);
				#endif
				
				#ifdef _EMISSION
				applyEmission(poiFragData, poiMesh, poiLight, poiCam, poiMods);
				#endif
				
				if (_Mode == 1)
				{
					clip(poiFragData.alpha - _Cutoff);
				}
				
				UNITY_BRANCH
				if (_IgnoreFog == 0)
				{
					UNITY_APPLY_FOG(i.fogCoord, finalColor);
				}
				
				//#ifndef UNITY_PASS_SHADOWCASTER
				return float4(poiFragData.finalColor + poiFragData.emission, poiFragData.alpha) + mainTexture * 0.0001;
				//#else
				//	SHADOW_CASTER_FRAGMENT(i)
				//#endif
				
			}
			
			ENDCG
			
		}
		
		Pass
		{
			Tags { "LightMode" = "ForwardAdd" }
			
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			
			ZWrite Off
			Cull [_Cull]
			AlphaToMask [_AlphaToMask]
			ZTest [_ZTest]
			ColorMask [_ColorMask]
			Offset [_OffsetFactor], [_OffsetUnits]
			
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend One One
			
			CGPROGRAM
			
			#pragma target 5.0
			
			#pragma shader_feature USER_LUT
			
			#pragma shader_feature _COLORADDSUBDIFF_ON
			#pragma shader_feature COLOR_GRADING_HDR_3D
			#pragma shader_feature_local POI_MATCAP0_CUSTOM_NORMAL
			#pragma shader_feature_local POI_MATCAP1_CUSTOM_NORMAL
			
			#pragma shader_feature_local POI_LIGHT_DATA_DEBUG
			#pragma shader_feature_local POI_LIGHT_DATA_ADDITIVE_ENABLE
			#pragma shader_feature_local POI_VERTEXLIGHT_ON
			
			#pragma shader_feature VIGNETTE_MASKED
			#pragma multi_compile_local _LIGHTINGMODE_TEXTURERAMP _LIGHTINGMODE_MATHRAMP _LIGHTINGMODE_SHADEMAP _LIGHTINGMODE_REALISTIC _LIGHTINGMODE_WRAPPED _LIGHTINGMODE_SKIN _LIGHTINGMODE_FLAT
			
			#pragma shader_feature VIGNETTE_CLASSIC
			
			#pragma shader_feature _EMISSION
			#pragma shader_feature EFFECT_HUE_VARIATION
			
			#pragma shader_feature COLOR_GRADING_LOG_VIEW
			
			#pragma multi_compile_fwdadd_fullshadows
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			
			// UNITY Includes
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"
			#include "UnityPBSLighting.cginc"
			#pragma vertex vert
			#pragma fragment frag
			
			#define DielectricSpec float4(0.04, 0.04, 0.04, 1.0 - 0.04)
			#define pi float(3.14159265359)
			
			#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan))
			#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_PAN(tex, uv, pan) (tex2D(tex, uv + _Time.x * pan))
			#define POI2D(tex, uv) (tex2D(tex, uv))
			#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
			#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, uv + _Time.x * pan))
			
			#define POI_SAFE_RGB1 float4(mainTexture.rgb * .0001, 1)
			#define POI_SAFE_RGBA mainTexture
			
			#if defined(UNITY_COMPILER_HLSL)
			#define PoiInitStruct(type, name) name = (type)0;
			#else
			#define PoiInitStruct(type, name)
			#endif
			
			#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			
			[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )]
			*/
			// Map of where features in AudioLink are.
			#define ALPASS_DFT                      int2(0, 4)
			#define ALPASS_WAVEFORM                 int2(0, 6)
			#define ALPASS_AUDIOLINK                int2(0, 0)
			#define ALPASS_AUDIOBASS                int2(0, 0)
			#define ALPASS_AUDIOLOWMIDS             int2(0, 1)
			#define ALPASS_AUDIOHIGHMIDS            int2(0, 2)
			#define ALPASS_AUDIOTREBLE              int2(0, 3)
			#define ALPASS_AUDIOLINKHISTORY         int2(1, 0)
			#define ALPASS_GENERALVU                int2(0, 22)
			#define ALPASS_GENERALVU_INSTANCE_TIME  int2(2, 22)
			#define ALPASS_GENERALVU_LOCAL_TIME     int2(3, 22)
			#define ALPASS_GENERALVU_NETWORK_TIME   int2(4, 22)
			#define ALPASS_GENERALVU_PLAYERINFO     int2(6, 22)
			#define ALPASS_CCINTERNAL               int2(12, 22)
			#define ALPASS_CCSTRIP                  int2(0, 24)
			#define ALPASS_CCLIGHTS                 int2(0, 25)
			#define ALPASS_AUTOCORRELATOR           int2(0, 27)
			#define ALPASS_FILTEREDAUDIOLINK        int2(0, 28)
			
			// Some basic constants to use (Note, these should be compatible with
			// future version of AudioLink, but may change.
			#define AUDIOLINK_SAMPHIST              3069        // Internal use for algos, do not change.
			#define AUDIOLINK_SAMPLEDATA24          2046
			#define AUDIOLINK_EXPBINS               24
			#define AUDIOLINK_EXPOCT                10
			#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
			#define AUDIOLINK_WIDTH                 128
			#define AUDIOLINK_SPS                   48000       // Samples per second
			#define AUDIOLINK_ROOTNOTE              0
			#define AUDIOLINK_4BAND_FREQFLOOR       0.123
			#define AUDIOLINK_4BAND_FREQCEILING     1
			#define AUDIOLINK_BOTTOM_FREQUENCY      13.75
			#define AUDIOLINK_BASE_AMPLITUDE        2.5
			#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
			#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
			#define AUDIOLINK_DFT_Q                 4.0
			#define AUDIOLINK_TREBLE_CORRECTION     5.0
			
			// ColorChord constants
			#define COLORCHORD_EMAXBIN              192
			#define COLORCHORD_IIR_DECAY_1          0.90
			#define COLORCHORD_IIR_DECAY_2          0.85
			#define COLORCHORD_CONSTANT_DECAY_1     0.01
			#define COLORCHORD_CONSTANT_DECAY_2     0.0
			#define COLORCHORD_NOTE_CLOSEST         3.0
			#define COLORCHORD_NEW_NOTE_GAIN        8.0
			#define COLORCHORD_MAX_NOTES            10
			
			// We use glsl_mod for most calculations because it behaves better
			// on negative numbers, and in some situations actually outperforms
			// HLSL's modf().
			#ifndef glsl_mod
			#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
			#endif
			
			uniform float4               _AudioTexture_TexelSize;
			
			#ifdef SHADER_TARGET_SURFACE_ANALYSIS
			#define AUDIOLINK_STANDARD_INDEXING
			#endif
			
			// Mechanism to index into texture.
			#ifdef AUDIOLINK_STANDARD_INDEXING
			sampler2D _AudioTexture;
			#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
			#else
			uniform Texture2D<float4> _AudioTexture;
			SamplerState sampler_AudioTexture;
			#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
			#endif
			
			float _Mode;
			
			#ifdef USER_LUT
			#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture;
			float4 _DistortionFlowTexture_ST;
			float2 _DistortionFlowTexturePan;
			float _DistortionFlowTextureUV;
			#endif
			
			#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture1;
			float4 _DistortionFlowTexture1_ST;
			float2 _DistortionFlowTexture1Pan;
			float _DistortionFlowTexture1UV;
			#endif
			
			#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionMask;
			float4 _DistortionMask_ST;
			float2 _DistortionMaskPan;
			float _DistortionMaskUV;
			#endif
			
			float _DistortionUvToDistort;
			float _DistortionStrength;
			float _DistortionStrength1;
			#endif
			float _StereoEnabled;
			float _PolarUV;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			
			float _IgnoreFog;
			
			float4 _Color;
			UNITY_DECLARE_TEX2D(_MainTex);
			float4 _MainTex_ST;
			float2 _MainTexPan;
			float _MainTexUV;
			Texture2D _BumpMap;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			Texture2D _ClippingMask;
			float4 _ClippingMask_ST;
			float2 _ClippingMaskPan;
			float _ClippingMaskUV;
			float _Inverse_Clipping;
			float _Cutoff;
			
			#ifdef _COLORADDSUBDIFF_ON
			#if defined(PROP_MATCAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap;
			float4 _Matcap_ST;
			float2 _MatcapPan;
			float _MatcapUV;
			#endif
			#if defined(PROP_MATCAPMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MatcapMask;
			float4 _MatcapMask_ST;
			float2 _MatcapMaskPan;
			float _MatcapMaskUV;
			#endif
			#ifdef POI_MATCAP0_CUSTOM_NORMAL
			#if defined(PROP_MATCAP0NORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap0NormalMap;
			float4 _Matcap0NormalMap_ST;
			float2 _Matcap0NormalMapPan;
			float _Matcap0NormalMapUV;
			#endif
			float _Matcap0NormalMapScale;
			#endif
			float _MatcapMaskInvert;
			float _MatcapBorder;
			float4 _MatcapColor;
			float _MatcapIntensity;
			float _MatcapReplace;
			float _MatcapMultiply;
			float _MatcapAdd;
			float _MatcapEnable;
			float _MatcapLightMask;
			float _MatcapEmissionStrength;
			float _MatcapNormal;
			float _MatcapHueShiftEnabled;
			float _MatcapHueShiftSpeed;
			float _MatcapHueShift;
			#endif
			
			#ifdef COLOR_GRADING_HDR_3D
			#if defined(PROP_MATCAP2) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap2;
			float4 _Matcap2_ST;
			float2 _Matcap2Pan;
			float _Matcap2UV;
			#endif
			#if defined(PROP_MATCAP2MASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap2Mask;
			float4 _Matcap2Mask_ST;
			float2 _Matcap2MaskPan;
			float _Matcap2MaskUV;
			#endif
			#ifdef POI_MATCAP1_CUSTOM_NORMAL
			#if defined(PROP_MATCAP1NORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap1NormalMap;
			float4 _Matcap1NormalMap_ST;
			float2 _Matcap1NormalMapPan;
			float _Matcap1NormalMapUV;
			#endif
			float _Matcap1NormalMapScale;
			#endif
			float _Matcap2MaskInvert;
			float _Matcap2Border;
			float4 _Matcap2Color;
			float _Matcap2Intensity;
			float _Matcap2Replace;
			float _Matcap2Multiply;
			float _Matcap2Add;
			float _Matcap2Enable;
			float _Matcap2LightMask;
			float _Matcap2EmissionStrength;
			float _Matcap2Normal;
			float _Matcap2HueShiftEnabled;
			float _Matcap2HueShiftSpeed;
			float _Matcap2HueShift;
			#endif
			
			Texture2D _LightingMapsTex;
			float4 _LightingMapsTex_ST;
			float2 _LightingMapsTexPan;
			float _LightingMapsTexUV;
			float _LightDataAOStrength;
			float _LightDataDetailStrength;
			float _LightDataShadowMaskStrength;
			// Lighting Data
			float _LightingColorMode;
			float _LightingMapMode;
			float _LightingDirectiongMode;
			float3 _LightngForcedDirection;
			float _LightingIndirectUsesNormals;
			float _LightingCapEnabled;
			float _LightingCap;
			float _LightingForceColorEnabled;
			float3 _LightingForcedColor;
			float _LightingCastedShadows;
			float _LightingMonochromatic;
			float _LightingMinLightBrightness;
			// Additive Lighting Data
			float _LightingAdditiveLimited;
			float _LightingAdditiveLimit;
			float _LightingAdditivePassthrough;
			// Lighting Data Debug
			float _LightingDebugVisualize;
			
			// Toon Lighting
			UNITY_DECLARE_TEX2D(_ToonRamp);
			float _ShadowOffset;
			float _ShadowStrength;
			float _LightingIgnoreAmbientColor;
			// Math Toon Lighting
			float _LightingGradientStart;
			float _LightingGradientEnd;
			float3 _LightingShadowColor;
			float _LightingMathLinearSmooth;
			// ShadeMap Lighting
			float3 _1st_ShadeColor;
			Texture2D _1st_ShadeMap;
			float4 _1st_ShadeMap_ST;
			float2 _1st_ShadeMapPan;
			float _1st_ShadeMapUV;
			float _Use_1stShadeMapAlpha_As_ShadowMask;
			float _1stShadeMapMask_Inverse;
			float _Use_BaseAs1st;
			float3 _2nd_ShadeColor;
			Texture2D _2nd_ShadeMap;
			float4 _2nd_ShadeMap_ST;
			float2 _2nd_ShadeMapPan;
			float _2nd_ShadeMapUV;
			float _Use_2ndShadeMapAlpha_As_ShadowMask;
			float _2ndShadeMapMask_Inverse;
			float _Use_1stAs2nd;
			float _BaseColor_Step;
			float _BaseShade_Feather;
			float _ShadeColor_Step;
			float _1st2nd_Shades_Feather;
			// Realistic Lighting
			float _LightingStandardSmoothness;
			// Skin
			sampler2D _SkinLUT;
			float _SssScale;
			float _SssBumpBlur;
			float3 _SssTransmissionAbsorption;
			float3 _SssColorBleedAoWeights;
			// Additive
			float _LightingAdditiveType;
			float _LightingAdditiveGradientStart;
			float _LightingAdditiveGradientEnd;
			float _LightingAdditiveDetailStrength;
			float _LightingAdditiveLimitIntensity;
			float _LightingAdditiveMaxIntensity;
			
			#ifdef VIGNETTE_CLASSIC
			#if defined(PROP_BRDFMETALLICGLOSSMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BRDFMetallicGlossMap;
			float4 _BRDFMetallicGlossMap_ST;
			float2 _BRDFMetallicGlossMapPan;
			float _BRDFMetallicGlossMapUV;
			#endif
			#if defined(PROP_BRDFSPECULARMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BRDFSpecularMap;
			float4 _BRDFSpecularMap_ST;
			float2 _BRDFSpecularMapPan;
			float _BRDFSpecularMapUV;
			#endif
			#if defined(PROP_BRDFMETALLICMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BRDFMetallicMap;
			float4 _BRDFMetallicMap_ST;
			float2 _BRDFMetallicMapPan;
			float _BRDFMetallicMapUV;
			#endif
			
			samplerCUBE _BRDFFallback;
			
			float _BRDFMetallic;
			float _BRDFGlossiness;
			float _BRDFReflectance;
			float _BRDFAnisotropy;
			float _BRDFMetallicSpecIgnoresBaseColor;
			float _BRDFReflectionsEnabled;
			float _BRDFSpecularEnabled;
			float _BRDFInvertGlossiness;
			float _BRDFForceFallback;
			float _BRDFFresnel;
			#endif
			
			#ifdef COLOR_GRADING_LOG_VIEW
			float _AudioLinkDelay;
			float _AudioLinkAnimToggle;
			#endif
			
			//Structs
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				float4 uv[2] : TEXCOORD0;
				float3 objNormal : TEXCOORD2;
				float3 normal : TEXCOORD3;
				float3 tangent : TEXCOORD4;
				float3 binormal : TEXCOORD5;
				float4 worldPos : TEXCOORD6;
				float4 localPos : TEXCOORD7;
				float4 vertexColor : TEXCOORD8;
				UNITY_SHADOW_COORDS(9)
				UNITY_FOG_COORDS(10)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			
			v2f vert(appdata v)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				PoiInitStruct(v2f, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				
				o.objNormal = v.normal;
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.tangent = UnityObjectToWorldDir(v.tangent);
				
				o.binormal = cross(o.normal, o.tangent) * (v.tangent.w * unity_WorldTransformParams.w);
				o.vertexColor = v.color;
				
				o.uv[0].xy = v.uv0;
				o.uv[0].zw = v.uv1;
				o.uv[1].xy = v.uv2;
				o.uv[1].zw = v.uv3;
				
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				o.pos = UnityObjectToClipPos(v.vertex);
				
				#ifndef FORWARD_META_PASS
				#if !defined(UNITY_PASS_SHADOWCASTER)
				UNITY_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				#endif
				UNITY_TRANSFER_FOG(o, o.pos);
				return o;
			}
			
			struct PoiMesh
			{
				
				// 0 Vertex normal
				// 1 Fragment normal
				float3 normals[2];
				float3 objNormal;
				float3 tangentSpaceNormal;
				float3 binormal;
				float3 tangent;
				float3 worldPos;
				float3 localPos;
				float isFrontFace;
				float4 vertexColor;
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 7 Distorted UV
				float2 uv[8];
			};
			
			struct PoiCam
			{
				float3 viewDir;
				float3 forwardDir;
				float3 worldPos;
				float distanceToVert;
				float2 clipPos;
				float3 reflectionDir;
				
			};
			
			struct PoiMods
			{
				float4 Mask;
				float4 audioLink;
				float audioLinkAvailable;
				float audioLinkVersion;
				float4 audioLinkTexture;
			};
			
			struct PoiLight
			{
				
				float3 direction;
				float attenuation;
				float attenuationStrength;
				float3 directColor;
				float3 indirectColor;
				float occlusion;
				float shadowMask;
				float detailShadow;
				float3 halfDir;
				float lightMap;
				float3 rampedLightMap;
				float nDotL;
				float nDotV;
				float nDotH;
				float lDotv;
				float lDotH;
				float nDotLSaturated;
				float nDotLNormalized;
				#ifdef UNITY_PASS_FORWARDADD
				float additiveShadow;
				#endif
				float3 finalLighting;
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				// Non Important Lights
				float4 vDotNL;
				float3 vColor[4];
				float4 vCorrectedDotNL;
				float4 vAttenuation;
				float4 vAttenuationDotNL;
				float3 vPosition[4];
				float3 vDirection[4];
				float3 vFinalLighting;
				float3 vHalfDir[4];
				half4 vDotNH;
				half4 vDotLH;
				#endif
				
			};
			
			struct PoiVertexLights
			{
				
				float3 direction;
				float3 color;
				float attenuation;
			};
			
			struct PoiFragData
			{
				float3 baseColor;
				float3 finalColor;
				float alpha;
				float3 emission;
			};
			
			float2 poiUV(float2 uv, float4 tex_st)
			{
				return uv * tex_st.xy + tex_st.zw;
			}
			
			//Lighting Helpers
			float calculateluminance(float3 color)
			{
				return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
			}
			
			/*
			* MIT License
			*
			* Copyright (c) 2018 s-ilent
			*
			* Permission is hereby granted, free of charge, to any person obtaining a copy
			* of this software and associated documentation files (the "Software"), to deal
			* in the Software without restriction, including without limitation the rights
			* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			* copies of the Software, and to permit persons to whom the Software is
			* furnished to do so, subject to the following conditions:
			*
			* The above copyright notice and this permission notice shall be included in all
			* copies or substantial portions of the Software.
			*
			* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			* SOFTWARE.
			*/
			
			float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
			{
				// average energy
				float R0 = max(0, L0);
				
				// avg direction of incoming light
				float3 R1 = 0.5f * L1;
				
				// directional brightness
				float lenR1 = length(R1);
				
				// linear angle between normal and direction 0-1
				//float q = 0.5f * (1.0f + dot(R1 / lenR1, n));
				//float q = dot(R1 / lenR1, n) * 0.5 + 0.5;
				float q = dot(normalize(R1), n) * 0.5 + 0.5;
				q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
				
				// power for q
				// lerps from 1 (linear) to 3 (cubic) based on directionality
				float p = 1.0f + 2.0f * lenR1 / R0;
				
				// dynamic range constant
				// should vary between 4 (highly directional) and 0 (ambient)
				float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
				
				return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
			}
			
			half3 BetterSH9(half4 normal)
			{
				float3 indirect;
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
				indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
				indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
				indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
				indirect = max(0, indirect);
				indirect += SHEvalLinearL2(normal);
				return indirect;
			}
			
			// Silent's code ends here
			
			float3 getCameraForward()
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1));
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1));
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				return normalize(p2 - p1);
			}
			
			half3 GetSHLength()
			{
				half3 x, x1;
				x.r = length(unity_SHAr);
				x.g = length(unity_SHAg);
				x.b = length(unity_SHAb);
				x1.r = length(unity_SHBr);
				x1.g = length(unity_SHBg);
				x1.b = length(unity_SHBb);
				return x + x1;
			}
			
			float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				UNITY_BRANCH
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			
			float poiMax(float2 i)
			{
				return max(i.x, i.y);
			}
			
			float poiMax(float3 i)
			{
				return max(max(i.x, i.y), i.z);
			}
			
			float poiMax(float4 i)
			{
				return max(max(max(i.x, i.y), i.z), i.w);
			}
			
			float3 hueShift(float3 color, float Offset)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 P = lerp(float4(color.bg, K.wz), float4(color.gb, K.xy), step(color.b, color.g));
				float4 Q = lerp(float4(P.xyw, color.r), float4(color.r, P.yzx), step(P.x, color.r));
				float D = Q.x - min(Q.w, Q.y);
				float E = 0.0000000001;
				float3 hsv = float3(abs(Q.z + (Q.w - Q.y) / (6.0 * D + E)), D / (Q.x + E), Q.x);
				
				float hue = hsv.x + Offset;
				hsv.x = frac(hue);
				
				float4 K2 = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
				float3 P2 = abs(frac(hsv.xxx + K2.xyz) * 6.0 - K2.www);
				return hsv.z * lerp(K2.xxx, saturate(P2 - K2.xxx), hsv.y);
			}
			
			float3 calculateNormal(in float3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in float4 normal_ST, in float2 normalPan, in float normalUV, in float normalIntensity)
			{
				float3 normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(normalTexture, _MainTex, poiUV(poiMesh.uv[normalUV], normal_ST), normalPan), normalIntensity);
				return normalize(
				normal.x * poiMesh.tangent +
				normal.y * poiMesh.binormal +
				normal.z * baseNormal
				);
			}
			
			float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), 0, 1);
			}
			#ifdef COLOR_GRADING_LOG_VIEW
			//Tests to see if Audio Link texture is available
			bool AudioLinkIsAvailable()
			{
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				int width, height;
				_AudioTexture.GetDimensions(width, height);
				return width > 16;
				#else
				return _AudioTexture_TexelSize.z > 16;
				#endif
			}
			
			//Get version of audiolink present in the world, 0 if no audiolink is present
			float AudioLinkGetVersion()
			{
				int2 dims;
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				_AudioTexture.GetDimensions(dims.x, dims.y);
				#else
				dims = _AudioTexture_TexelSize.zw;
				#endif
				
				if (dims.x >= 128)
				return AudioLinkData(ALPASS_GENERALVU).x;
				else if (dims.x > 16)
				return 1;
				else
				return 0;
			}
			
			float getBandAtTime(float band, float time, float width, float size = 1.0f)
			{
				return pow(UNITY_SAMPLE_TEX2D(_AudioTexture, float2(time * width, band)).r, (1 - size) * 3 + 1);
			}
			
			void initAudioBands(inout PoiMods poiMods)
			{
				poiMods.audioLinkAvailable = AudioLinkIsAvailable();
				poiMods.audioLinkAvailable *= _AudioLinkAnimToggle;
				
				if (poiMods.audioLinkAvailable)
				{
					poiMods.audioLinkVersion = AudioLinkGetVersion();
					poiMods.audioLink.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					poiMods.audioLink.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					poiMods.audioLink.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					poiMods.audioLink.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
				}
			}
			#endif
			
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[_PolarUV] - _PolarCenter;
				float radius = length(delta) * 2 * _PolarRadialScale;
				float angle = atan2(delta.x, delta.y) * 1.0 / 6.28 * _PolarLengthScale;
				return float2(radius, angle + distance(poiMesh.uv[_PolarUV], _PolarCenter) * _PolarSpiralPower);
			}
			
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(1.0, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).zw;
			}
			
			float2 StereoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).zw;
			}
			
			float2 calculatePanosphereUV(in PoiMesh poiMesh)
			{
				float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - poiMesh.worldPos) * - 1;
				return lerp(MonoPanoProjection(viewDirection), StereoPanoProjection(viewDirection), _StereoEnabled);
			}
			
			#ifdef USER_LUT
			float2 distortedUV(in PoiMesh poiMesh)
			{
				#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector = POI2D_SAMPLER_PAN(_DistortionFlowTexture, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTextureUV], _DistortionFlowTexture_ST), _DistortionFlowTexturePan) * 2 - 1;
				#else
				float4 flowVector = 0;
				#endif
				
				#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector1 = POI2D_SAMPLER_PAN(_DistortionFlowTexture1, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTexture1UV], _DistortionFlowTexture1_ST), _DistortionFlowTexture1Pan) * 2 - 1;
				#else
				float4 flowVector1 = 0;
				#endif
				
				#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
				half distortionMask = POI2D_SAMPLER_PAN(_DistortionMask, _MainTex, poiMesh.uv[_DistortionMaskUV], _DistortionMaskPan).r;
				#else
				half distortionMask = 1;
				#endif
				
				half distortionStrength = _DistortionStrength;
				half distortionStrength1 = _DistortionStrength1;
				
				flowVector *= distortionStrength;
				flowVector1 *= distortionStrength1;
				return poiMesh.uv[_DistortionUvToDistort] + ((flowVector.xy + flowVector1.xy) / 2) * distortionMask;
			}
			#endif
			
			void blendMatcap(in PoiLight poiLight, inout PoiFragData poiFragData, float add, float multiply, float replace, float4 matcapColor, float matcapMask, float emissionStrength, float matcapLightMask
			#ifdef POI_BLACKLIGHT
			, uint blackLightMaskIndex
			#endif
			)
			{
				if (matcapLightMask)
				{
					matcapMask *= lerp(1, poiLight.rampedLightMap, matcapLightMask);
				}
				#ifdef POI_BLACKLIGHT
				if (blackLightMaskIndex != 4)
				{
					matcapMask *= blackLightMask[blackLightMaskIndex];
				}
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, matcapColor.rgb, replace * matcapMask * matcapColor.a * .999999);
				poiFragData.baseColor.rgb *= lerp(1, matcapColor.rgb, multiply * matcapMask * matcapColor.a);
				poiFragData.baseColor.rgb += matcapColor.rgb * add * matcapMask * matcapColor.a;
				poiFragData.emission += matcapColor.rgb * emissionStrength * matcapMask * matcapColor.a;
			}
			
			#if defined(_COLORADDSUBDIFF_ON) || defined(COLOR_GRADING_HDR_3D)
			void applyMatcap(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiMesh poiMesh, in PoiLight poiLight)
			{
				float4 matcap = 0;
				float matcapMask = 0;
				float4 matcap2 = 0;
				float matcap2Mask = 0;
				
				// Both matcaps use the same coordinates
				half3 worldViewUp = normalize(half3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, half3(0, 1, 0)));
				half3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				
				// Matcap 1
				#ifdef _COLORADDSUBDIFF_ON
				
				#ifdef POI_MATCAP0_CUSTOM_NORMAL
				float3 normal0 = calculateNormal(poiMesh.normals[_MatcapNormal], poiMesh, _Matcap0NormalMap, _Matcap0NormalMap_ST, _Matcap0NormalMapPan, _Matcap0NormalMapUV, _Matcap0NormalMapScale);
				#else
				float3 normal0 = poiMesh.normals[_MatcapNormal];
				#endif
				
				half2 matcapUV = half2(dot(worldViewRight, normal0), dot(worldViewUp, poiMesh.normals[_MatcapNormal])) * _MatcapBorder + 0.5;
				
				#if defined(PROP_MATCAP) || !defined(OPTIMIZER_ENABLED)
				matcap = UNITY_SAMPLE_TEX2D_SAMPLER(_Matcap, _MainTex, TRANSFORM_TEX(matcapUV, _Matcap)) * _MatcapColor;
				#else
				matcap = _MatcapColor;
				#endif
				
				matcap.rgb *= _MatcapIntensity;
				#if defined(PROP_MATCAPMASK) || !defined(OPTIMIZER_ENABLED)
				matcapMask = POI2D_SAMPLER_PAN(_MatcapMask, _MainTex, poiUV(poiMesh.uv[_MatcapMaskUV], _MatcapMask_ST), _MatcapMaskPan);
				#else
				matcapMask = 1;
				#endif
				
				if (_MatcapMaskInvert)
				{
					matcapMask = 1 - matcapMask;
				}
				
				UNITY_BRANCH
				if (_MatcapHueShiftEnabled)
				{
					matcap.rgb = hueShift(matcap.rgb, _MatcapHueShift + _Time.x * _MatcapHueShiftSpeed);
				}
				
				blendMatcap(poiLight, poiFragData, _MatcapAdd, _MatcapMultiply, _MatcapReplace, matcap, matcapMask, _MatcapEmissionStrength, _MatcapLightMask
				#ifdef POI_BLACKLIGHT
				, _BlackLightMaskMatcap
				#endif
				);
				#endif
				
				// Matcap 2
				#ifdef COLOR_GRADING_HDR_3D
				
				#ifdef POI_MATCAP1_CUSTOM_NORMAL
				float3 normal1 = calculateNormal(poiMesh.normals[_Matcap2Normal], poiMesh, _Matcap1NormalMap, _Matcap1NormalMap_ST, _Matcap1NormalMapPan, _Matcap1NormalMapUV, _Matcap1NormalMapScale);
				#else
				float3 normal1 = poiMesh.normals[_Matcap2Normal];
				#endif
				
				half2 matcapUV2 = half2(dot(worldViewRight, normal1), dot(worldViewUp, poiMesh.normals[_Matcap2Normal])) * _Matcap2Border + 0.5;
				#if defined(PROP_MATCAP2) || !defined(OPTIMIZER_ENABLED)
				matcap2 = UNITY_SAMPLE_TEX2D_SAMPLER(_Matcap2, _MainTex, TRANSFORM_TEX(matcapUV2, _Matcap2)) * _Matcap2Color;
				#else
				matcap2 = _Matcap2Color;
				#endif
				matcap2.rgb *= _Matcap2Intensity;
				#if defined(PROP_MATCAP2MASK) || !defined(OPTIMIZER_ENABLED)
				matcap2Mask = POI2D_SAMPLER_PAN(_Matcap2Mask, _MainTex, poiUV(poiMesh.uv[_Matcap2MaskUV], _Matcap2Mask_ST), _Matcap2MaskPan);
				#else
				matcap2Mask = 1;
				#endif
				if (_Matcap2MaskInvert)
				{
					matcap2Mask = 1 - matcap2Mask;
				}
				
				UNITY_BRANCH
				if (_Matcap2HueShiftEnabled)
				{
					matcap2.rgb = hueShift(matcap2.rgb, _Matcap2HueShift + _Time.x * _Matcap2HueShiftSpeed);
				}
				
				blendMatcap(poiLight, poiFragData, _Matcap2Add, _Matcap2Multiply, _Matcap2Replace, matcap2, matcap2Mask, _Matcap2EmissionStrength, _Matcap2LightMask
				#ifdef POI_BLACKLIGHT
				, _BlackLightMaskMatcap2
				#endif
				);
				#endif
			}
			#endif
			
			#ifdef VIGNETTE_MASKED
			
			void applyShadeMapping(inout PoiFragData poiFragData, PoiMesh poiMesh, PoiLight poiLight)
			{
				float MainColorFeatherStep = _BaseColor_Step - _BaseShade_Feather;
				float firstColorFeatherStep = _ShadeColor_Step - _1st2nd_Shades_Feather;
				
				#if defined(PROP_1ST_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 firstShadeMap = POI2D_SAMPLER_PAN(_1st_ShadeMap, _MainTex, poiUV(poiMesh.uv[_1st_ShadeMapUV], _1st_ShadeMap_ST), _1st_ShadeMapPan);
				#else
				float4 firstShadeMap = float4(1, 1, 1, 1);
				#endif
				firstShadeMap = lerp(firstShadeMap, float4(poiFragData.baseColor, 1), _Use_BaseAs1st);
				
				#if defined(PROP_2ND_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 secondShadeMap = POI2D_SAMPLER_PAN(_2nd_ShadeMap, _MainTex, poiUV(poiMesh.uv[_2nd_ShadeMapUV], _2nd_ShadeMap_ST), _2nd_ShadeMapPan);
				#else
				float4 secondShadeMap = float4(1, 1, 1, 1);
				#endif
				secondShadeMap = lerp(secondShadeMap, firstShadeMap, _Use_1stAs2nd);
				
				firstShadeMap.rgb *= _1st_ShadeColor.rgb; //* lighColor
				secondShadeMap.rgb *= _2nd_ShadeColor.rgb; //* LightColor;
				
				float shadowMask = 1;
				shadowMask *= _Use_1stShadeMapAlpha_As_ShadowMask ?(_1stShadeMapMask_Inverse ?(1.0 - firstShadeMap.a) : firstShadeMap.a) : 1;
				shadowMask *= _Use_2ndShadeMapAlpha_As_ShadowMask ?(_2ndShadeMapMask_Inverse ?(1.0 - secondShadeMap.a) : secondShadeMap.a) : 1;
				
				float mainShadowMask = saturate(1 - ((poiLight.lightMap) - MainColorFeatherStep) / (_BaseColor_Step - MainColorFeatherStep) * (shadowMask));
				float firstSecondShadowMask = saturate(1 - ((poiLight.lightMap) - firstColorFeatherStep) / (_ShadeColor_Step - firstColorFeatherStep) * (shadowMask));
				
				mainShadowMask *= poiLight.shadowMask;
				firstSecondShadowMask *= poiLight.shadowMask;
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
			}
			
			UnityIndirect CreateIndirectLight(in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight)
			{
				UnityIndirect indirectLight;
				indirectLight.diffuse = 0;
				indirectLight.specular = 0;
				
				#if defined(LIGHTMAP_ON)
				indirectLight.diffuse = DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, poiMesh.lightmapUV.xy));
				
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 lightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_LightmapInd, unity_Lightmap, poiMesh.lightmapUV.xy
				);
				indirectLight.diffuse = DecodeDirectionalLightmap(
				indirectLight.diffuse, lightmapDirection, poiMesh.normals[1]
				);
				#endif
				ApplySubtractiveLighting(indirectLight);
				#endif
				
				#if defined(DYNAMICLIGHTMAP_ON)
				float3 dynamicLightDiffuse = DecodeRealtimeLightmap(
				UNITY_SAMPLE_TEX2D(unity_DynamicLightmap, poiMesh.lightmapUV.zw)
				);
				
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 dynamicLightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_DynamicDirectionality, unity_DynamicLightmap,
				poiMesh.lightmapUV.zw
				);
				indirectLight.diffuse += DecodeDirectionalLightmap(
				dynamicLightDiffuse, dynamicLightmapDirection, poiMesh.normals[1]
				);
				#else
				indirectLight.diffuse += dynamicLightDiffuse;
				#endif
				#endif
				
				#if !defined(LIGHTMAP_ON) && !defined(DYNAMICLIGHTMAP_ON)
				#if UNITY_LIGHT_PROBE_PROXY_VOLUME
				if (unity_ProbeVolumeParams.x == 1)
				{
					indirectLight.diffuse = SHEvalLinearL0L1_SampleProbeVolume(
					float4(poiMesh.normals[1], 1), poiMesh.worldPos
					);
					indirectLight.diffuse = max(0, indirectLight.diffuse);
					#if defined(UNITY_COLORSPACE_GAMMA)
					indirectLight.diffuse = LinearToGammaSpace(indirectLight.diffuse);
					#endif
				}
				else
				{
					indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				}
				#else
				indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				#endif
				#endif
				
				float3 reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				Unity_GlossyEnvironmentData envData;
				envData.roughness = 1 - _LightingStandardSmoothness;
				envData.reflUVW = BoxProjection(
				reflectionDir, poiMesh.worldPos.xyz,
				unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz
				);
				float3 probe0 = Unity_GlossyEnvironment(
				UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData
				);
				envData.reflUVW = BoxProjection(
				reflectionDir, poiMesh.worldPos.xyz,
				unity_SpecCube1_ProbePosition,
				unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz
				);
				#if UNITY_SPECCUBE_BLENDING
				float interpolator = unity_SpecCube0_BoxMin.w;
				UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					float3 probe1 = Unity_GlossyEnvironment(
					UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0),
					unity_SpecCube0_HDR, envData
					);
					indirectLight.specular = lerp(probe1, probe0, interpolator);
				}
				else
				{
					indirectLight.specular = probe0;
				}
				#else
				indirectLight.specular = probe0;
				#endif
				
				indirectLight.diffuse *= poiLight.occlusion;
				indirectLight.specular *= poiLight.occlusion;
				
				return indirectLight;
			}
			
			void applyShading(inout PoiLight poiLight, inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				#ifdef UNITY_PASS_FORWARDBASE
				
				float shadowStrength = _ShadowStrength * poiLight.shadowMask;
				
				#ifdef _LIGHTINGMODE_FLAT
				poiLight.finalLighting = poiLight.directColor;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				#endif
				
				#ifdef _LIGHTINGMODE_TEXTURERAMP
				poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, poiLight.lightMap + _ShadowOffset).rgb, shadowStrength);
				poiLight.finalLighting = lerp(_LightingShadowColor * lerp(poiLight.indirectColor, poiLight.rampedLightMap * poiLight.directColor, _LightingIgnoreAmbientColor) * poiLight.occlusion, poiLight.directColor, poiLight.rampedLightMap);
				#endif
				
				#ifdef _LIGHTINGMODE_MATHRAMP
				if (_LightingMathLinearSmooth)
				{
					poiLight.rampedLightMap = saturate(1 - remapClamped(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - poiLight.lightMap));
				}
				else
				{
					poiLight.rampedLightMap = saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - poiLight.lightMap));
				}
				poiLight.finalLighting = lerp((_LightingShadowColor * lerp(poiLight.indirectColor, poiLight.directColor, _LightingIgnoreAmbientColor) * poiLight.occlusion), (poiLight.directColor), saturate(poiLight.rampedLightMap + 1 - shadowStrength));
				#endif
				
				#ifdef _LIGHTINGMODE_SHADEMAP
				poiLight.finalLighting = poiLight.directColor;
				#endif
				
				#ifdef _LIGHTINGMODE_REALISTIC
				UnityLight light;
				light.dir = poiLight.direction;
				light.color = saturate(_LightColor0.rgb * lerp(1, poiLight.attenuation, poiLight.attenuationStrength) * poiLight.detailShadow);
				light.ndotl = poiLight.nDotLSaturated;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				poiLight.finalLighting = UNITY_BRDF_PBS(1, 0, 0, _LightingStandardSmoothness, poiMesh.normals[1], poiCam.viewDir, light, CreateIndirectLight(poiMesh, poiCam, poiLight)).xyz;
				#endif
				
				#ifdef _LIGHTINGMODE_WRAPPED
				poiLight.finalLighting = lerp(POI_ERROR(poiMesh, 20) * poiLight.indirectColor, poiLight.directColor, ceil(poiLight.nDotL));
				#endif
				
				#ifdef _LIGHTINGMODE_SKIN
				float3 ambientNormalWorld = poiMesh.normals[1];//aTangentToWorld(s, s.blurredNormalTangent);
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				// Scattering mask.
				float subsurface = 1;
				float skinScattering = saturate(subsurface * _SssScale * 2);
				
				// Skin subsurface depth absorption tint.
				// cf http://www.crytek.com/download/2014_03_25_CRYENGINE_GDC_Schultz.pdf pg 35
				half3 absorption = exp((1.0h - subsurface) * _SssTransmissionAbsorption.rgb);
				
				// Albedo scale for absorption assumes ~0.5 luminance for Caucasian skin.
				absorption *= saturate(poiFragData.baseColor * unity_ColorSpaceDouble.rgb);
				
				// Blurred normals for indirect diffuse and direct scattering.
				ambientNormalWorld = normalize(lerp(poiMesh.normals[1], ambientNormalWorld, _SssBumpBlur));
				
				float ndlBlur = dot(poiMesh.normals[1], poiLight.direction) * 0.5h + 0.5h;
				float lumi = dot(poiLight.directColor, half3(0.2126h, 0.7152h, 0.0722h));
				float4 sssLookupUv = float4(ndlBlur, skinScattering * lumi, 0.0f, 0.0f);
				half3 sss = poiLight.lightMap * poiLight.attenuation * tex2Dlod(_SkinLUT, sssLookupUv).rgb;
				poiLight.finalLighting = min(lerp(poiLight.indirectColor * _LightingShadowColor, _LightingShadowColor, _LightingIgnoreAmbientColor) + (sss * poiLight.directColor), poiLight.directColor);
				#endif
				
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				UNITY_BRANCH
				if (_LightingAdditiveType == 0) // Realistic
				
				{
					poiLight.finalLighting = poiLight.directColor * poiLight.attenuation * max(0, poiLight.nDotL) * poiLight.detailShadow * poiLight.additiveShadow;
				}
				else if (_LightingAdditiveType == 1) // Toon
				
				{
					#if defined(POINT) || defined(SPOT)
					poiLight.finalLighting = lerp(poiLight.directColor * max(poiLight.additiveShadow, _LightingAdditivePassthrough), poiLight.indirectColor, smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, 1 - (.5 * poiLight.nDotL + .5))) * poiLight.attenuation * poiLight.detailShadow;
					#else
					poiLight.finalLighting = lerp(poiLight.directColor * max(poiLight.attenuation, _LightingAdditivePassthrough), poiLight.indirectColor, smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, 1 - (.5 * poiLight.nDotL + .5))) * poiLight.detailShadow;
					#endif
				}
				/*
				else //if(_LightingAdditiveType == 2) // Wrapped
				{
					float uv = saturate(RTWrapFunc(poiLight.nDotL, _LightingWrappedWrap, _LightingWrappedNormalization)) * detailShadow;
					
					poiLight.rampedLightMap = 1;
					UNITY_BRANCH
					if (_LightingRampType == 1) // Math Gradient
					poiLight.rampedLightMap = lerp(_LightingShadowColor, float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - uv)));
					// TODO: ramp texture or full shade/tint map for atlasing
					//poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, float2(uv + _ShadowOffset, 1)), shadowStrength.r);
					
					float shadowatten = max(poiLight.additiveShadow, _LightingAdditivePassthrough);
					return poiLight.color * poiLight.rampedLightMap * saturate(poiLight.attenuation * uv * shadowatten);
				}
				*/
				#endif
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float3 vertexLighting = float3(0, 0, 0);
				for (int index = 0; index < 4; index++)
				{
					UNITY_BRANCH
					if (_LightingAdditiveType == 0)
					{
						vertexLighting += poiLight.vColor[index] * poiLight.vAttenuationDotNL[index] * poiLight.detailShadow; // Realistic
						
					}
					
					UNITY_BRANCH
					if (_LightingAdditiveType == 1) // Toon
					
					{
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * _LightingAdditivePassthrough * poiLight.vAttenuation[index], smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, poiLight.vDotNL[index])) * poiLight.detailShadow;
					}
					
					UNITY_BRANCH
					if (_LightingAdditiveType == 2) //if(_LightingAdditiveType == 2) // Wrapped
					
					{
						//TODO wrapped vertex lighting
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * _LightingAdditivePassthrough * poiLight.vAttenuation[index], smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, poiLight.vDotNL[index])) * poiLight.detailShadow;
						/*
						float uv = saturate(RTWrapFunc(-poiLight.vDotNL[index], _LightingWrappedWrap, _LightingWrappedNormalization)) * poiLight.detailShadow;
						
						poiLight.rampedLightMap = 1;
						if (_LightingRampType == 1) // Math Gradient
						poiLight.rampedLightMap = lerp(_LightingShadowColor, float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - uv)));
						
						vertexLighting += poiLight.vColor[index] * poiLight.rampedLightMap * saturate(poiLight.vAttenuation[index] * uv);
						*/
					}
				}
				float3 mixedLight = poiLight.finalLighting;
				mixedLight = vertexLighting + poiLight.finalLighting;
				poiFragData.finalColor = poiFragData.baseColor * mixedLight;
				#else
				poiFragData.finalColor = poiFragData.baseColor * poiLight.finalLighting;
				#endif
			}
			#endif
			
			#ifdef VIGNETTE_CLASSIC
			
			/*
			* MIT License
			*
			* Copyright (c) 2020 Xiexe
			*
			* Permission is hereby granted, free of charge, to any person obtaining a copy
			* of this software and associated documentation files (the "Software"), to deal
			* in the Software without restriction, including without limitation the rights
			* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			* copies of the Software, and to permit persons to whom the Software is
			* furnished to do so, subject to the following conditions:
			*
			* The above copyright notice and this permission notice shall be included in all
			* copies or substantial portions of the Software.
			*
			* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			* SOFTWARE.
			*/
			
			bool DoesReflectionProbeExist(in PoiCam poiCam)
			{
				float4 envSample = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, poiCam.reflectionDir, UNITY_SPECCUBE_LOD_STEPS);
				bool probeExists = !(unity_SpecCube0_HDR.a == 0 && envSample.a == 0);
				return probeExists && !_BRDFForceFallback;
			}
			
			float getGeometricSpecularAA(float3 normal)
			{
				float3 vNormalWsDdx = ddx(normal.xyz);
				float3 vNormalWsDdy = ddy(normal.xyz);
				float flGeometricRoughnessFactor = pow(saturate(max(dot(vNormalWsDdx.xyz, vNormalWsDdx.xyz), dot(vNormalWsDdy.xyz, vNormalWsDdy.xyz))), 0.333);
				return max(0, flGeometricRoughnessFactor);
			}
			
			float3 getAnisotropicReflectionVector(float3 viewDir, float3 bitangent, float3 tangent, float3 normal, float roughness, float anisotropy)
			{
				float3 anisotropicDirection = anisotropy >= 0.0 ? bitangent : tangent;
				float3 anisotropicTangent = cross(anisotropicDirection, viewDir);
				float3 anisotropicNormal = cross(anisotropicTangent, anisotropicDirection);
				float bendFactor = abs(anisotropy) * saturate(5.0 * roughness);
				float3 bentNormal = normalize(lerp(normal, anisotropicNormal, bendFactor));
				return reflect(-viewDir, bentNormal);
			}
			
			float3 F_Schlick(float u, float3 f0)
			{
				return f0 + (1.0 - f0) * pow(1.0 - u, 5.0);
			}
			
			float3 F_Schlick(const float3 f0, float f90, float VoH)
			{
				// Schlick 1994, "An Inexpensive BRDF Model for Physically-Based Rendering"
				float pow5 = 1.0 - VoH;
				pow5 = pow5 * pow5 * pow5 * pow5 * pow5;
				return f0 + (f90 - f0) * pow5;
			}
			
			float D_GGX(float NoH, float roughness)
			{
				float a2 = roughness * roughness;
				float f = (NoH * a2 - NoH) * NoH + 1.0;
				return a2 / (UNITY_PI * f * f);
			}
			
			float V_SmithGGXCorrelated(float NoV, float NoL, float a)
			{
				float a2 = a * a;
				float GGXL = NoV * sqrt((-NoL * a2 + NoL) * NoL + a2);
				float GGXV = NoL * sqrt((-NoV * a2 + NoV) * NoV + a2);
				return 0.5 / (GGXV + GGXL);
			}
			
			float D_GGX_Anisotropic(float NoH, const float3 h, const float3 t, const float3 b, float at, float ab)
			{
				float ToH = dot(t, h);
				float BoH = dot(b, h);
				float a2 = at * ab;
				float3 v = float3(ab * ToH, at * BoH, a2 * NoH);
				float v2 = dot(v, v);
				float w2 = a2 / v2;
				return a2 * w2 * w2 * (1.0 / UNITY_PI);
			}
			
			float3 getBoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				// #if defined(UNITY_SPECCUBE_BOX_PROJECTION) // For some reason this doesn't work?
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				// #endif
				return direction;
			}
			
			float3 getDirectSpecular(float roughness, float ndl, float3 f0, float anisotropy, in float nDotH, in float lDotH, in float nDotV, in float halfDir, in PoiMesh poiMesh)
			{
				#if !defined(LIGHTMAP_ON)
				float rough = max(roughness * roughness, 0.0045);
				float Dn = D_GGX(saturate(nDotH), rough);
				float3 F = F_Schlick(saturate(lDotH), f0);
				float V = V_SmithGGXCorrelated(max(nDotV, 0.000001), ndl, rough);
				float3 directSpecularNonAniso = max(0, (Dn * V) * F);
				
				anisotropy *= saturate(5.0 * roughness);
				float at = max(rough * (1.0 + anisotropy), 0.001);
				float ab = max(rough * (1.0 - anisotropy), 0.001);
				float D = D_GGX_Anisotropic(saturate(nDotH), halfDir, poiMesh.tangent.xyz, poiMesh.binormal, at, ab);
				float3 directSpecularAniso = max(0, (D * V) * F);
				
				return lerp(directSpecularNonAniso, directSpecularAniso, saturate(abs(_BRDFAnisotropy * 100))) * 3; // * 100 to prevent blending, blend because otherwise tangents are fucked on lightmapped object
				#else
				return 0;
				#endif
			}
			
			float3 getIndirectSpecular(float metallic, float roughness, float3 reflDir, float3 worldPos, float3 lightmap, float3 normal, in PoiCam poiCam, in PoiLight poiLight)
			{
				float3 spec = float3(0, 0, 0);
				#if defined(UNITY_PASS_FORWARDBASE)
				float3 indirectSpecular;
				Unity_GlossyEnvironmentData envData;
				envData.roughness = roughness;
				envData.reflUVW = getBoxProjection(
				reflDir, worldPos,
				unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz
				);
				float3 probe0 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData);
				float interpolator = unity_SpecCube0_BoxMin.w;
				UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					envData.reflUVW = getBoxProjection(
					reflDir, worldPos,
					unity_SpecCube1_ProbePosition,
					unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz
					);
					float3 probe1 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0), unity_SpecCube0_HDR, envData);
					indirectSpecular = lerp(probe1, probe0, interpolator);
				}
				else
				{
					indirectSpecular = probe0;
				}
				
				if (!DoesReflectionProbeExist(poiCam))
				{
					indirectSpecular = texCUBElod(_BRDFFallback, float4(reflDir, roughness * UNITY_SPECCUBE_LOD_STEPS)).rgb * poiLight.finalLighting;
				}
				
				float horizon = min(1 + dot(reflDir, normal), 1);
				indirectSpecular *= horizon * horizon;
				
				spec = indirectSpecular;
				#if defined(LIGHTMAP_ON)
				float specMultiplier = max(0, lerp(1, pow(length(lightmap), _SpecLMOcclusionAdjust), _SpecularLMOcclusion));
				spec *= specMultiplier;
				#endif
				#endif
				return spec;
			}
			void poiBRDF(in PoiCam poiCam, in PoiMesh poiMesh, inout PoiFragData poiFragData, in PoiLight poiLight)
			{
				float4 ret = float4(1, 0, 0, 1);
				#if defined(PROP_BRDFMETALLICGLOSSMAP) || !defined(OPTIMIZER_ENABLED)
				float4 metallicGlossMap = POI2D_SAMPLER_PAN(_BRDFMetallicGlossMap, _MainTex, poiUV(poiMesh.uv[_BRDFMetallicGlossMapUV], _BRDFMetallicGlossMap_ST), _BRDFMetallicGlossMapPan);
				#else
				float4 metallicGlossMap = 1;
				#endif
				#if defined(PROP_BRDFSPECULARMAP) || !defined(OPTIMIZER_ENABLED)
				float4 spcularTintMask = POI2D_SAMPLER_PAN(_BRDFSpecularMap, _MainTex, poiUV(poiMesh.uv[_BRDFSpecularMapUV], _BRDFSpecularMap_ST), _BRDFSpecularMapPan);
				#else
				float4 spcularTintMask = 1;
				#endif
				#if defined(PROP_BRDFMETALLICMAP) || !defined(OPTIMIZER_ENABLED)
				float4 metallicTintMask = POI2D_SAMPLER_PAN(_BRDFMetallicMap, _MainTex, poiUV(poiMesh.uv[_BRDFMetallicMapUV], _BRDFMetallicMap_ST), _BRDFMetallicMapPan);
				#else
				float4 metallicTintMask = 1;
				#endif
				UNITY_BRANCH
				if (_BRDFInvertGlossiness == 1)
				{
					metallicGlossMap.a = 1 - metallicGlossMap.a;
				}
				
				float metallic = metallicGlossMap.r * _BRDFMetallic;
				float reflectance = metallicGlossMap.g * _BRDFReflectance;
				float roughness = max(1 - (_BRDFGlossiness * metallicGlossMap.a), getGeometricSpecularAA(poiMesh.normals[1]));
				poiFragData.finalColor.rgb *= lerp(1, 1 - metallic, _BRDFReflectionsEnabled);
				
				float3 reflViewDir = getAnisotropicReflectionVector(poiCam.viewDir, poiMesh.binormal, poiMesh.tangent.xyz, poiMesh.normals[1], roughness, _BRDFAnisotropy);
				float3 reflLightDir = reflect(poiLight.direction, poiMesh.normals[1]);
				
				#if defined(UNITY_PASS_FORWARDBASE) || defined(POI_META_PASS)
				float attenuation = poiMax(poiLight.rampedLightMap);
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				float attenuation = saturate(poiLight.nDotL);
				#endif
				
				float3 f0Spec = 0.16 * reflectance * reflectance * (1.0 - metallic) + lerp(poiFragData.baseColor.rgb * metallic, metallic, _BRDFMetallicSpecIgnoresBaseColor);
				float3 f0 = 0.16 * reflectance * reflectance * (1.0 - metallic) + poiFragData.baseColor.rgb * metallic;
				float3 fresnel = lerp(F_Schlick(poiLight.nDotV, f0), f0, metallic) * lerp(0, 1, _BRDFFresnel); //Kill fresnel on metallics, it looks bad.
				float3 directSpecular = getDirectSpecular(roughness, attenuation, f0Spec, _BRDFAnisotropy, poiLight.nDotH, poiLight.lDotH, poiLight.nDotV, poiLight.halfDir, poiMesh) * poiLight.attenuation * attenuation * poiLight.directColor;
				directSpecular = min(directSpecular, poiLight.directColor);
				
				#ifndef UNITY_PASS_FORWARDADD
				float3 vDirectSpecular = 0;
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				for (int index = 0; index < 4; index++)
				{
					float3 v0directSpecular = getDirectSpecular(roughness, attenuation, f0Spec, _BRDFAnisotropy, poiLight.vDotNH[index], poiLight.vDotLH[index], poiLight.nDotV, poiLight.vHalfDir[index], poiMesh) * poiLight.attenuation * poiLight.vAttenuationDotNL[index] * poiLight.vColor[index];
					//float3 v0directSpecular = getDirectSpecular(roughness, saturate(poiLight.vDotNH[index]), max(poiLight.nDotV, 0.000001), attenuation, saturate(poiLight.lDotH), f0, poiLight.vHalfDir[index], poiMesh.tangent, poiMesh.binormal, _BRDFAnisotropy) * poiLight.attenuation * poiLight.vAttenuationDotNL[index] * poiLight.vColor[index];
					vDirectSpecular += min(v0directSpecular, poiLight.vColor[index]);
				}
				#endif
				
				float3 indirectSpecular = getIndirectSpecular(metallic, roughness, reflViewDir, poiMesh.worldPos, /*directDiffuse*/ poiFragData.finalColor.rgb, poiMesh.normals[1], poiCam, poiLight) * lerp(fresnel, f0, roughness);
				float3 specular = indirectSpecular * _BRDFReflectionsEnabled * metallicTintMask.a * metallicTintMask.rgb * poiLight.occlusion + (directSpecular + vDirectSpecular) * _BRDFSpecularEnabled * spcularTintMask.a * spcularTintMask.rgb;
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				poiFragData.finalColor.rgb += directSpecular;
				#else
				poiFragData.finalColor.rgb += specular;
				#endif
			}
			
			#endif
			
			float4 frag(v2f i, uint facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				
				PoiVertexLights poiVertexLights;
				PoiInitStruct(PoiVertexLights, poiVertexLights);
				
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				
				PoiFragData poiFragData;
				poiFragData.emission = 0;
				poiFragData.baseColor = float3(0, 0, 0);
				poiFragData.finalColor = float3(0, 0, 0);
				poiFragData.alpha = 1;
				
				// Mesh Data
				poiMesh.objNormal = i.objNormal;
				poiMesh.normals[0] = normalize(i.normal);
				poiMesh.tangent = normalize(i.tangent);
				poiMesh.binormal = normalize(i.binormal);
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.localPos = i.localPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				poiMesh.isFrontFace = facing;
				if (!poiMesh.isFrontFace)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent *= -1;
					poiMesh.binormal *= -1;
				}
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 6 Distorted UV
				poiMesh.uv[0] = i.uv[0].xy;
				poiMesh.uv[1] = i.uv[0].zw;
				poiMesh.uv[2] = i.uv[1].xy;
				poiMesh.uv[3] = i.uv[1].zw;
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.worldPos.xz;
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				#ifdef USER_LUT
				poiMesh.uv[7] = distortedUV(poiMesh);
				#endif
				
				float4 mainTexture = UNITY_SAMPLE_TEX2D(_MainTex, poiUV(poiMesh.uv[_MainTexUV].xy, _MainTex_ST) + _Time.x * _MainTexPan);
				
				float3 mainNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_BumpMap, _MainTex, poiUV(poiMesh.uv[_BumpMapUV], _BumpMap_ST), _BumpMapPan), _BumpScale);
				poiMesh.tangentSpaceNormal = mainNormal;
				
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent.xyz +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				
				// Camera data
				poiCam.viewDir = normalize(_WorldSpaceCameraPos - i.worldPos.xyz);
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = _WorldSpaceCameraPos;
				poiCam.reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				//poiCam.distanceToModel = distance(poiMesh.modelPos, poiCam.worldPos);
				poiCam.distanceToVert = distance(poiMesh.worldPos, poiCam.worldPos);
				//poiCam.grabPos = i.grabPos;
				//poiCam.screenUV = calcScreenUVs(i.grabPos);
				poiCam.clipPos = i.pos;
				
				#if defined(PROP_LIGHTINGMAPSTEX) || !defined(OPTIMIZER_ENABLED)
				float4 lightingMaps = POI2D_SAMPLER_PAN(_LightingMapsTex, _MainTex, poiUV(poiMesh.uv[_LightingMapsTexUV], _LightingMapsTex_ST), _LightingMapsTexPan);
				#else
				float4 lightingMaps = float4(1, 1, 1, 1);
				#endif
				
				poiLight.occlusion = lerp(1, lightingMaps.r, _LightDataAOStrength);
				poiLight.detailShadow = lerp(1, lightingMaps.g, _LightDataDetailStrength);
				poiLight.shadowMask = lerp(1, lightingMaps.b, _LightDataShadowMaskStrength);
				
				#ifdef UNITY_PASS_FORWARDBASE
				
				bool lightExists = false;
				if (any(_LightColor0.rgb >= 0.002))
				{
					lightExists = true;
				}
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float4 toLightX = unity_4LightPosX0 - i.worldPos.x;
				float4 toLightY = unity_4LightPosY0 - i.worldPos.y;
				float4 toLightZ = unity_4LightPosZ0 - i.worldPos.z;
				float4 lengthSq = 0;
				lengthSq += toLightX * toLightX;
				lengthSq += toLightY * toLightY;
				lengthSq += toLightZ * toLightZ;
				
				float4 lightAttenSq = unity_4LightAtten0;
				float4 atten = 1.0 / (1.0 + lengthSq * lightAttenSq);
				float4 vLightWeight = saturate(1 - (lengthSq * lightAttenSq / 25));
				poiLight.vAttenuation = min(atten, vLightWeight * vLightWeight);
				
				poiLight.vDotNL = 0;
				poiLight.vDotNL += toLightX * poiMesh.normals[1].x;
				poiLight.vDotNL += toLightY * poiMesh.normals[1].y;
				poiLight.vDotNL += toLightZ * poiMesh.normals[1].z;
				
				float4 corr = rsqrt(lengthSq);
				poiLight.vDotNL = max(0, poiLight.vDotNL * corr);
				poiLight.vAttenuationDotNL = poiLight.vAttenuation * poiLight.vDotNL;
				
				for (int index = 0; index < 4; index++)
				{
					poiLight.vPosition[index] = float3(unity_4LightPosX0[index], unity_4LightPosY0[index], unity_4LightPosZ0[index]);
					
					float3 vertexToLightSource = poiLight.vPosition[index] - poiMesh.worldPos;
					poiLight.vDirection[index] = normalize(vertexToLightSource);
					//poiLight.vAttenuationDotNL[index] = 1.0 / (1.0 + unity_4LightAtten0[index] * poiLight.vDotNL[index]);
					poiLight.vColor[index] = unity_LightColor[index].rgb;
					UNITY_BRANCH
					if (_LightingAdditiveLimitIntensity == 1)
					{
						float intensity = max(0.001, (0.299 * poiLight.vColor[index].r + 0.587 * poiLight.vColor[index].g + 0.114 * poiLight.vColor[index].b));
						poiLight.vColor[index] = min(poiLight.vColor[index], poiLight.vColor[index] / (intensity / _LightingAdditiveMaxIntensity));
					}
					poiLight.vHalfDir[index] = Unity_SafeNormalize(poiLight.vDirection[index] + poiCam.viewDir);
					poiLight.vDotNL[index] = dot(poiMesh.normals[1], -poiLight.vDirection[index]);
					poiLight.vCorrectedDotNL[index] = .5 * (poiLight.vDotNL[index] + 1);
					poiLight.vDotLH[index] = saturate(dot(poiLight.vDirection[index], poiLight.vHalfDir[index]));
					
					poiLight.vDotNH[index] = saturate(dot(poiMesh.normals[1], poiLight.vHalfDir[index]));
				}
				#endif
				
				UNITY_BRANCH
				if (_LightingColorMode == 0) // Poi Custom Light Color
				
				{
					float3 magic = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
					float3 normalLight = _LightColor0.rgb + BetterSH9(float4(0, 0, 0, 1));
					
					float magiLumi = calculateluminance(magic);
					float normaLumi = calculateluminance(normalLight);
					float maginormalumi = magiLumi + normaLumi;
					
					float magiratio = magiLumi / maginormalumi;
					float normaRatio = normaLumi / maginormalumi;
					
					float target = calculateluminance(magic * magiratio + normalLight * normaRatio);
					float3 properLightColor = magic + normalLight;
					float properLuminance = calculateluminance(magic + normalLight);
					poiLight.directColor = properLightColor * max(0.0001, (target / properLuminance));
					
					poiLight.indirectColor = BetterSH9(float4(lerp(0, poiMesh.normals[1], _LightingIndirectUsesNormals), 1));
				}
				
				UNITY_BRANCH
				if (_LightingColorMode == 1) // More standard approach to light color
				
				{
					if (lightExists)
					{
						poiLight.directColor = _LightColor0.rgb + BetterSH9(float4(poiMesh.normals[1], 1));
					}
					else
					{
						poiLight.directColor = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
					}
					
					poiLight.indirectColor = BetterSH9(float4(poiMesh.normals[1], 1));
				}
				
				float lightMapMode = _LightingMapMode;
				UNITY_BRANCH
				if (_LightingDirectiongMode == 0)
				{
					poiLight.direction = _WorldSpaceLightPos0.xyz + unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz;
				}
				else
				{
					UNITY_BRANCH
					if (_LightingDirectiongMode == 1)
					{
						poiLight.direction = mul(unity_ObjectToWorld, _LightngForcedDirection).xyz;;
					}
					UNITY_BRANCH
					if (_LightingDirectiongMode == 2)
					{
						poiLight.direction = _LightngForcedDirection;
					}
					if (lightMapMode == 0)
					{
						lightMapMode == 1;
					}
				}
				
				poiLight.direction = normalize(poiLight.direction);
				poiLight.attenuationStrength = _LightingCastedShadows;
				poiLight.attenuation = 1;
				if (!all(_LightColor0.rgb == 0.0))
				{
					UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
					poiLight.attenuation *= attenuation;
				}
				
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = dot(poiMesh.normals[1], poiCam.viewDir);
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				
				UNITY_BRANCH
				if (lightMapMode == 0) // Poi special light map
				
				{
					float3 ShadeSH9Plus = GetSHLength();
					float3 ShadeSH9Minus = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
					
					float3 greyScaleVector = float3(.33333, .33333, .33333);
					float bw_lightColor = dot(poiLight.directColor, greyScaleVector);
					float bw_directLighting = (((poiLight.nDotL * 0.5 + 0.5) * bw_lightColor * lerp(1, poiLight.attenuation, poiLight.attenuationStrength)) + dot(ShadeSH9(float4(poiMesh.normals[1], 1)), greyScaleVector));
					float bw_bottomIndirectLighting = dot(ShadeSH9Minus, greyScaleVector);
					float bw_topIndirectLighting = dot(ShadeSH9Plus, greyScaleVector);
					float lightDifference = ((bw_topIndirectLighting + bw_lightColor) - bw_bottomIndirectLighting);
					poiLight.lightMap = smoothstep(0, lightDifference, bw_directLighting - bw_bottomIndirectLighting);
				}
				UNITY_BRANCH
				if (lightMapMode == 1) // Normalized nDotL
				
				{
					poiLight.lightMap = poiLight.nDotLNormalized;
				}
				UNITY_BRANCH
				if (lightMapMode == 2) // Saturated nDotL
				
				{
					poiLight.lightMap = poiLight.nDotLSaturated;
				}
				
				poiLight.directColor = max(poiLight.directColor, poiLight.directColor / max(0.0001, (calculateluminance(poiLight.directColor) / _LightingMinLightBrightness)));
				poiLight.indirectColor = max(poiLight.indirectColor, poiLight.indirectColor / max(0.0001, (calculateluminance(poiLight.indirectColor) / _LightingMinLightBrightness)));
				
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), _LightingMonochromatic);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), _LightingMonochromatic);
				UNITY_BRANCH
				if (_LightingCapEnabled)
				{
					poiLight.directColor = min(poiLight.directColor, _LightingCap);
					poiLight.indirectColor = min(poiLight.indirectColor, _LightingCap);
				}
				
				UNITY_BRANCH
				if (_LightingForceColorEnabled)
				{
					poiLight.directColor = _LightingForcedColor;
				}
				
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				#ifndef POI_LIGHT_DATA_ADDITIVE_ENABLE
				return float4(mainTexture.rgb * .0001, 1);
				#endif
				
				#if defined(POINT) || defined(SPOT)
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz - i.worldPos.xyz);
				
				#ifdef POINT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(input, poiMesh.worldPos);
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1)).xyz;
				poiLight.attenuation = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				
				#ifdef SPOT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(i, poiMesh.worldPos);
				unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1));
				poiLight.attenuation = (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#else
				poiLight.direction = _WorldSpaceLightPos0.xyz;
				UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
				poiLight.additiveShadow == 0;
				poiLight.attenuation = attenuation;
				#endif
				poiLight.directColor = _LightingAdditiveLimited ? min(_LightingAdditiveLimit, _LightColor0.rgb) : _LightColor0.rgb;
				poiLight.indirectColor = lerp(0, poiLight.directColor, _LightingAdditivePassthrough);
				
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = dot(poiMesh.normals[1], poiCam.viewDir);
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				poiLight.lightMap = 1;
				#endif
				
				#ifdef POI_LIGHT_DATA_DEBUG
				
				#ifdef UNITY_PASS_FORWARDBASE
				UNITY_BRANCH
				if (_LightingDebugVisualize <= 5)
				{
					switch(_LightingDebugVisualize)
					{
						case 0: // Direct Light Color
						return float4(poiLight.directColor + mainTexture.rgb * .0001, 1);
						break;
						case 1: // Indirect Light Color
						return float4(poiLight.indirectColor + mainTexture.rgb * .0001, 1);
						break;
						case 2: // Light Map
						return float4(poiLight.lightMap + mainTexture.rgb * .0001, 1);
						break;
						case 3: // Attenuation
						return float4(poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 4: // N Dot L
						return float4(poiLight.nDotLNormalized, poiLight.nDotLNormalized, poiLight.nDotLNormalized, 1) + mainTexture * .0001;
						break;
						case 5:
						return float4(poiLight.halfDir, poiLight.halfDir, poiLight.halfDir, 1) + mainTexture * .0001;
						break;
					}
				}
				else
				{
					return POI_SAFE_RGB1;
				}
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				UNITY_BRANCH
				if (_LightingDebugVisualize < 6)
				{
					return POI_SAFE_RGB1;
				}
				else
				{
					switch(_LightingDebugVisualize)
					{
						case 6:
						return float4(poiLight.directColor * poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 7:
						return float4(poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 8:
						return float4(poiLight.additiveShadow + mainTexture.rgb * .0001, 1);
						break;
						case 9:
						return float4(poiLight.nDotLNormalized + mainTexture.rgb * .0001, 1);
						break;
						case 10:
						return float4(poiLight.halfDir, poiLight.halfDir, poiLight.halfDir, 1) + mainTexture * .0001;
						break;
					}
				}
				#endif
				#endif
				
				poiFragData.baseColor = mainTexture.rgb * _Color.rgb;
				poiFragData.alpha = mainTexture.a * _Color.a;
				
				#if defined(PROP_CLIPPINGMASK) || !defined(OPTIMIZER_ENABLED)
				float alphaMask = POI2D_SAMPLER_PAN(_ClippingMask, _MainTex, poiUV(poiMesh.uv[_ClippingMaskUV], _ClippingMask_ST), _ClippingMaskPan).r;
				#else
				float alphaMask = 1;
				#endif
				
				poiFragData.alpha *= alphaMask;
				
				#if defined(_COLORADDSUBDIFF_ON) || defined(COLOR_GRADING_HDR_3D)
				applyMatcap(poiFragData, poiCam, poiMesh, poiLight);
				#endif
				
				#if defined(_LIGHTINGMODE_SHADEMAP) && defined(VIGNETTE_MASKED)
				applyShadeMapping(poiFragData, poiMesh, poiLight);
				#endif
				
				poiFragData.finalColor = poiFragData.baseColor;
				
				#ifdef VIGNETTE_MASKED
				applyShading(poiLight, poiFragData, poiMesh, poiCam);
				#endif
				
				#if defined(VIGNETTE_CLASSIC)
				poiBRDF(poiCam, poiMesh, poiFragData, poiLight);
				#endif
				
				#ifdef COLOR_GRADING_LOG_VIEW
				initAudioBands(poiMods);
				#endif
				
				if (_Mode == 1)
				{
					clip(poiFragData.alpha - _Cutoff);
				}
				
				UNITY_BRANCH
				if (_IgnoreFog == 0)
				{
					UNITY_APPLY_FOG(i.fogCoord, finalColor);
				}
				
				//#ifndef UNITY_PASS_SHADOWCASTER
				return float4(poiFragData.finalColor + poiFragData.emission, poiFragData.alpha) + mainTexture * 0.0001;
				//#else
				//	SHADOW_CASTER_FRAGMENT(i)
				//#endif
				
			}
			
			ENDCG
			
		}
		
		Pass
		{
			Tags { "LightMode" = "ShadowCaster" }
			
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			
			ZWrite [_ZWrite]
			Cull [_Cull]
			AlphaToMask Off
			ZTest [_ZTest]
			ColorMask [_ColorMask]
			Offset [_OffsetFactor], [_OffsetUnits]
			
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend]
			
			CGPROGRAM
			
			#pragma target 5.0
			
			#pragma shader_feature USER_LUT
			
			#pragma shader_feature _COLORADDSUBDIFF_ON
			#pragma shader_feature COLOR_GRADING_HDR_3D
			#pragma shader_feature_local POI_MATCAP0_CUSTOM_NORMAL
			#pragma shader_feature_local POI_MATCAP1_CUSTOM_NORMAL
			
			#pragma shader_feature_local POI_LIGHT_DATA_DEBUG
			#pragma shader_feature_local POI_LIGHT_DATA_ADDITIVE_ENABLE
			#pragma shader_feature_local POI_VERTEXLIGHT_ON
			
			#pragma shader_feature VIGNETTE_MASKED
			#pragma multi_compile_local _LIGHTINGMODE_TEXTURERAMP _LIGHTINGMODE_MATHRAMP _LIGHTINGMODE_SHADEMAP _LIGHTINGMODE_REALISTIC _LIGHTINGMODE_WRAPPED _LIGHTINGMODE_SKIN _LIGHTINGMODE_FLAT
			
			#pragma shader_feature VIGNETTE_CLASSIC
			
			#pragma shader_feature _EMISSION
			#pragma shader_feature EFFECT_HUE_VARIATION
			
			#pragma shader_feature COLOR_GRADING_LOG_VIEW
			
			#pragma multi_compile_instancing
			#pragma multi_compile_shadowcaster
			#pragma multi_compile_fog
			
			// UNITY Includes
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"
			#include "UnityPBSLighting.cginc"
			#pragma vertex vert
			#pragma fragment frag
			
			#define DielectricSpec float4(0.04, 0.04, 0.04, 1.0 - 0.04)
			#define pi float(3.14159265359)
			
			#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan))
			#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_PAN(tex, uv, pan) (tex2D(tex, uv + _Time.x * pan))
			#define POI2D(tex, uv) (tex2D(tex, uv))
			#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
			#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, uv + _Time.x * pan))
			
			#define POI_SAFE_RGB1 float4(mainTexture.rgb * .0001, 1)
			#define POI_SAFE_RGBA mainTexture
			
			#if defined(UNITY_COMPILER_HLSL)
			#define PoiInitStruct(type, name) name = (type)0;
			#else
			#define PoiInitStruct(type, name)
			#endif
			
			#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			
			[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, Wolrd Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )]
			*/
			// Map of where features in AudioLink are.
			#define ALPASS_DFT                      int2(0, 4)
			#define ALPASS_WAVEFORM                 int2(0, 6)
			#define ALPASS_AUDIOLINK                int2(0, 0)
			#define ALPASS_AUDIOBASS                int2(0, 0)
			#define ALPASS_AUDIOLOWMIDS             int2(0, 1)
			#define ALPASS_AUDIOHIGHMIDS            int2(0, 2)
			#define ALPASS_AUDIOTREBLE              int2(0, 3)
			#define ALPASS_AUDIOLINKHISTORY         int2(1, 0)
			#define ALPASS_GENERALVU                int2(0, 22)
			#define ALPASS_GENERALVU_INSTANCE_TIME  int2(2, 22)
			#define ALPASS_GENERALVU_LOCAL_TIME     int2(3, 22)
			#define ALPASS_GENERALVU_NETWORK_TIME   int2(4, 22)
			#define ALPASS_GENERALVU_PLAYERINFO     int2(6, 22)
			#define ALPASS_CCINTERNAL               int2(12, 22)
			#define ALPASS_CCSTRIP                  int2(0, 24)
			#define ALPASS_CCLIGHTS                 int2(0, 25)
			#define ALPASS_AUTOCORRELATOR           int2(0, 27)
			#define ALPASS_FILTEREDAUDIOLINK        int2(0, 28)
			
			// Some basic constants to use (Note, these should be compatible with
			// future version of AudioLink, but may change.
			#define AUDIOLINK_SAMPHIST              3069        // Internal use for algos, do not change.
			#define AUDIOLINK_SAMPLEDATA24          2046
			#define AUDIOLINK_EXPBINS               24
			#define AUDIOLINK_EXPOCT                10
			#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
			#define AUDIOLINK_WIDTH                 128
			#define AUDIOLINK_SPS                   48000       // Samples per second
			#define AUDIOLINK_ROOTNOTE              0
			#define AUDIOLINK_4BAND_FREQFLOOR       0.123
			#define AUDIOLINK_4BAND_FREQCEILING     1
			#define AUDIOLINK_BOTTOM_FREQUENCY      13.75
			#define AUDIOLINK_BASE_AMPLITUDE        2.5
			#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
			#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
			#define AUDIOLINK_DFT_Q                 4.0
			#define AUDIOLINK_TREBLE_CORRECTION     5.0
			
			// ColorChord constants
			#define COLORCHORD_EMAXBIN              192
			#define COLORCHORD_IIR_DECAY_1          0.90
			#define COLORCHORD_IIR_DECAY_2          0.85
			#define COLORCHORD_CONSTANT_DECAY_1     0.01
			#define COLORCHORD_CONSTANT_DECAY_2     0.0
			#define COLORCHORD_NOTE_CLOSEST         3.0
			#define COLORCHORD_NEW_NOTE_GAIN        8.0
			#define COLORCHORD_MAX_NOTES            10
			
			// We use glsl_mod for most calculations because it behaves better
			// on negative numbers, and in some situations actually outperforms
			// HLSL's modf().
			#ifndef glsl_mod
			#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
			#endif
			
			uniform float4               _AudioTexture_TexelSize;
			
			#ifdef SHADER_TARGET_SURFACE_ANALYSIS
			#define AUDIOLINK_STANDARD_INDEXING
			#endif
			
			// Mechanism to index into texture.
			#ifdef AUDIOLINK_STANDARD_INDEXING
			sampler2D _AudioTexture;
			#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
			#else
			uniform Texture2D<float4> _AudioTexture;
			SamplerState sampler_AudioTexture;
			#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
			#endif
			
			float _Mode;
			
			#ifdef USER_LUT
			#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture;
			float4 _DistortionFlowTexture_ST;
			float2 _DistortionFlowTexturePan;
			float _DistortionFlowTextureUV;
			#endif
			
			#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture1;
			float4 _DistortionFlowTexture1_ST;
			float2 _DistortionFlowTexture1Pan;
			float _DistortionFlowTexture1UV;
			#endif
			
			#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionMask;
			float4 _DistortionMask_ST;
			float2 _DistortionMaskPan;
			float _DistortionMaskUV;
			#endif
			
			float _DistortionUvToDistort;
			float _DistortionStrength;
			float _DistortionStrength1;
			#endif
			float _StereoEnabled;
			float _PolarUV;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			
			float _IgnoreFog;
			
			float4 _Color;
			UNITY_DECLARE_TEX2D(_MainTex);
			float4 _MainTex_ST;
			float2 _MainTexPan;
			float _MainTexUV;
			Texture2D _BumpMap;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			Texture2D _ClippingMask;
			float4 _ClippingMask_ST;
			float2 _ClippingMaskPan;
			float _ClippingMaskUV;
			float _Inverse_Clipping;
			float _Cutoff;
			
			#ifdef COLOR_GRADING_LOG_VIEW
			float _AudioLinkDelay;
			float _AudioLinkAnimToggle;
			#endif
			
			//Structs
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				float4 uv[2] : TEXCOORD0;
				float3 objNormal : TEXCOORD2;
				float3 normal : TEXCOORD3;
				float3 tangent : TEXCOORD4;
				float3 binormal : TEXCOORD5;
				float4 worldPos : TEXCOORD6;
				float4 localPos : TEXCOORD7;
				float4 vertexColor : TEXCOORD8;
				UNITY_SHADOW_COORDS(9)
				UNITY_FOG_COORDS(10)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			
			v2f vert(appdata v)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				PoiInitStruct(v2f, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				
				o.objNormal = v.normal;
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.tangent = UnityObjectToWorldDir(v.tangent);
				
				o.binormal = cross(o.normal, o.tangent) * (v.tangent.w * unity_WorldTransformParams.w);
				o.vertexColor = v.color;
				
				o.uv[0].xy = v.uv0;
				o.uv[0].zw = v.uv1;
				o.uv[1].xy = v.uv2;
				o.uv[1].zw = v.uv3;
				
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				o.pos = UnityObjectToClipPos(v.vertex);
				
				#ifndef FORWARD_META_PASS
				#if !defined(UNITY_PASS_SHADOWCASTER)
				UNITY_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				#endif
				UNITY_TRANSFER_FOG(o, o.pos);
				return o;
			}
			
			struct PoiMesh
			{
				
				// 0 Vertex normal
				// 1 Fragment normal
				float3 normals[2];
				float3 objNormal;
				float3 tangentSpaceNormal;
				float3 binormal;
				float3 tangent;
				float3 worldPos;
				float3 localPos;
				float isFrontFace;
				float4 vertexColor;
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 7 Distorted UV
				float2 uv[8];
			};
			
			struct PoiCam
			{
				float3 viewDir;
				float3 forwardDir;
				float3 worldPos;
				float distanceToVert;
				float2 clipPos;
				float3 reflectionDir;
				
			};
			
			struct PoiMods
			{
				float4 Mask;
				float4 audioLink;
				float audioLinkAvailable;
				float audioLinkVersion;
				float4 audioLinkTexture;
			};
			
			struct PoiLight
			{
				
				float3 direction;
				float attenuation;
				float attenuationStrength;
				float3 directColor;
				float3 indirectColor;
				float occlusion;
				float shadowMask;
				float detailShadow;
				float3 halfDir;
				float lightMap;
				float3 rampedLightMap;
				float nDotL;
				float nDotV;
				float nDotH;
				float lDotv;
				float lDotH;
				float nDotLSaturated;
				float nDotLNormalized;
				#ifdef UNITY_PASS_FORWARDADD
				float additiveShadow;
				#endif
				float3 finalLighting;
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				// Non Important Lights
				float4 vDotNL;
				float3 vColor[4];
				float4 vCorrectedDotNL;
				float4 vAttenuation;
				float4 vAttenuationDotNL;
				float3 vPosition[4];
				float3 vDirection[4];
				float3 vFinalLighting;
				float3 vHalfDir[4];
				half4 vDotNH;
				half4 vDotLH;
				#endif
				
			};
			
			struct PoiVertexLights
			{
				
				float3 direction;
				float3 color;
				float attenuation;
			};
			
			struct PoiFragData
			{
				float3 baseColor;
				float3 finalColor;
				float alpha;
				float3 emission;
			};
			
			float2 poiUV(float2 uv, float4 tex_st)
			{
				return uv * tex_st.xy + tex_st.zw;
			}
			
			//Lighting Helpers
			float calculateluminance(float3 color)
			{
				return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
			}
			
			/*
			* MIT License
			*
			* Copyright (c) 2018 s-ilent
			*
			* Permission is hereby granted, free of charge, to any person obtaining a copy
			* of this software and associated documentation files (the "Software"), to deal
			* in the Software without restriction, including without limitation the rights
			* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			* copies of the Software, and to permit persons to whom the Software is
			* furnished to do so, subject to the following conditions:
			*
			* The above copyright notice and this permission notice shall be included in all
			* copies or substantial portions of the Software.
			*
			* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			* SOFTWARE.
			*/
			
			float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
			{
				// average energy
				float R0 = max(0, L0);
				
				// avg direction of incoming light
				float3 R1 = 0.5f * L1;
				
				// directional brightness
				float lenR1 = length(R1);
				
				// linear angle between normal and direction 0-1
				//float q = 0.5f * (1.0f + dot(R1 / lenR1, n));
				//float q = dot(R1 / lenR1, n) * 0.5 + 0.5;
				float q = dot(normalize(R1), n) * 0.5 + 0.5;
				q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
				
				// power for q
				// lerps from 1 (linear) to 3 (cubic) based on directionality
				float p = 1.0f + 2.0f * lenR1 / R0;
				
				// dynamic range constant
				// should vary between 4 (highly directional) and 0 (ambient)
				float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
				
				return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
			}
			
			half3 BetterSH9(half4 normal)
			{
				float3 indirect;
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
				indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
				indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
				indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
				indirect = max(0, indirect);
				indirect += SHEvalLinearL2(normal);
				return indirect;
			}
			
			// Silent's code ends here
			
			float3 getCameraForward()
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1));
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1));
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				return normalize(p2 - p1);
			}
			
			half3 GetSHLength()
			{
				half3 x, x1;
				x.r = length(unity_SHAr);
				x.g = length(unity_SHAg);
				x.b = length(unity_SHAb);
				x1.r = length(unity_SHBr);
				x1.g = length(unity_SHBg);
				x1.b = length(unity_SHBb);
				return x + x1;
			}
			
			float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				UNITY_BRANCH
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			
			float poiMax(float2 i)
			{
				return max(i.x, i.y);
			}
			
			float poiMax(float3 i)
			{
				return max(max(i.x, i.y), i.z);
			}
			
			float poiMax(float4 i)
			{
				return max(max(max(i.x, i.y), i.z), i.w);
			}
			
			float3 hueShift(float3 color, float Offset)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 P = lerp(float4(color.bg, K.wz), float4(color.gb, K.xy), step(color.b, color.g));
				float4 Q = lerp(float4(P.xyw, color.r), float4(color.r, P.yzx), step(P.x, color.r));
				float D = Q.x - min(Q.w, Q.y);
				float E = 0.0000000001;
				float3 hsv = float3(abs(Q.z + (Q.w - Q.y) / (6.0 * D + E)), D / (Q.x + E), Q.x);
				
				float hue = hsv.x + Offset;
				hsv.x = frac(hue);
				
				float4 K2 = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
				float3 P2 = abs(frac(hsv.xxx + K2.xyz) * 6.0 - K2.www);
				return hsv.z * lerp(K2.xxx, saturate(P2 - K2.xxx), hsv.y);
			}
			
			float3 calculateNormal(in float3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in float4 normal_ST, in float2 normalPan, in float normalUV, in float normalIntensity)
			{
				float3 normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(normalTexture, _MainTex, poiUV(poiMesh.uv[normalUV], normal_ST), normalPan), normalIntensity);
				return normalize(
				normal.x * poiMesh.tangent +
				normal.y * poiMesh.binormal +
				normal.z * baseNormal
				);
			}
			
			float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), 0, 1);
			}
			#ifdef COLOR_GRADING_LOG_VIEW
			//Tests to see if Audio Link texture is available
			bool AudioLinkIsAvailable()
			{
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				int width, height;
				_AudioTexture.GetDimensions(width, height);
				return width > 16;
				#else
				return _AudioTexture_TexelSize.z > 16;
				#endif
			}
			
			//Get version of audiolink present in the world, 0 if no audiolink is present
			float AudioLinkGetVersion()
			{
				int2 dims;
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				_AudioTexture.GetDimensions(dims.x, dims.y);
				#else
				dims = _AudioTexture_TexelSize.zw;
				#endif
				
				if (dims.x >= 128)
				return AudioLinkData(ALPASS_GENERALVU).x;
				else if (dims.x > 16)
				return 1;
				else
				return 0;
			}
			
			float getBandAtTime(float band, float time, float width, float size = 1.0f)
			{
				return pow(UNITY_SAMPLE_TEX2D(_AudioTexture, float2(time * width, band)).r, (1 - size) * 3 + 1);
			}
			
			void initAudioBands(inout PoiMods poiMods)
			{
				poiMods.audioLinkAvailable = AudioLinkIsAvailable();
				poiMods.audioLinkAvailable *= _AudioLinkAnimToggle;
				
				if (poiMods.audioLinkAvailable)
				{
					poiMods.audioLinkVersion = AudioLinkGetVersion();
					poiMods.audioLink.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					poiMods.audioLink.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					poiMods.audioLink.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					poiMods.audioLink.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
				}
			}
			#endif
			
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[_PolarUV] - _PolarCenter;
				float radius = length(delta) * 2 * _PolarRadialScale;
				float angle = atan2(delta.x, delta.y) * 1.0 / 6.28 * _PolarLengthScale;
				return float2(radius, angle + distance(poiMesh.uv[_PolarUV], _PolarCenter) * _PolarSpiralPower);
			}
			
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(1.0, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).zw;
			}
			
			float2 StereoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).zw;
			}
			
			float2 calculatePanosphereUV(in PoiMesh poiMesh)
			{
				float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - poiMesh.worldPos) * - 1;
				return lerp(MonoPanoProjection(viewDirection), StereoPanoProjection(viewDirection), _StereoEnabled);
			}
			
			#ifdef USER_LUT
			float2 distortedUV(in PoiMesh poiMesh)
			{
				#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector = POI2D_SAMPLER_PAN(_DistortionFlowTexture, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTextureUV], _DistortionFlowTexture_ST), _DistortionFlowTexturePan) * 2 - 1;
				#else
				float4 flowVector = 0;
				#endif
				
				#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector1 = POI2D_SAMPLER_PAN(_DistortionFlowTexture1, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTexture1UV], _DistortionFlowTexture1_ST), _DistortionFlowTexture1Pan) * 2 - 1;
				#else
				float4 flowVector1 = 0;
				#endif
				
				#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
				half distortionMask = POI2D_SAMPLER_PAN(_DistortionMask, _MainTex, poiMesh.uv[_DistortionMaskUV], _DistortionMaskPan).r;
				#else
				half distortionMask = 1;
				#endif
				
				half distortionStrength = _DistortionStrength;
				half distortionStrength1 = _DistortionStrength1;
				
				flowVector *= distortionStrength;
				flowVector1 *= distortionStrength1;
				return poiMesh.uv[_DistortionUvToDistort] + ((flowVector.xy + flowVector1.xy) / 2) * distortionMask;
			}
			#endif
			
			float4 frag(v2f i, uint facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				
				PoiVertexLights poiVertexLights;
				PoiInitStruct(PoiVertexLights, poiVertexLights);
				
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				
				PoiFragData poiFragData;
				poiFragData.emission = 0;
				poiFragData.baseColor = float3(0, 0, 0);
				poiFragData.finalColor = float3(0, 0, 0);
				poiFragData.alpha = 1;
				
				// Mesh Data
				poiMesh.objNormal = i.objNormal;
				poiMesh.normals[0] = normalize(i.normal);
				poiMesh.tangent = normalize(i.tangent);
				poiMesh.binormal = normalize(i.binormal);
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.localPos = i.localPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				poiMesh.isFrontFace = facing;
				if (!poiMesh.isFrontFace)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent *= -1;
					poiMesh.binormal *= -1;
				}
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 6 Distorted UV
				poiMesh.uv[0] = i.uv[0].xy;
				poiMesh.uv[1] = i.uv[0].zw;
				poiMesh.uv[2] = i.uv[1].xy;
				poiMesh.uv[3] = i.uv[1].zw;
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.worldPos.xz;
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				#ifdef USER_LUT
				poiMesh.uv[7] = distortedUV(poiMesh);
				#endif
				
				float4 mainTexture = UNITY_SAMPLE_TEX2D(_MainTex, poiUV(poiMesh.uv[_MainTexUV].xy, _MainTex_ST) + _Time.x * _MainTexPan);
				
				float3 mainNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_BumpMap, _MainTex, poiUV(poiMesh.uv[_BumpMapUV], _BumpMap_ST), _BumpMapPan), _BumpScale);
				poiMesh.tangentSpaceNormal = mainNormal;
				
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent.xyz +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				
				// Camera data
				poiCam.viewDir = normalize(_WorldSpaceCameraPos - i.worldPos.xyz);
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = _WorldSpaceCameraPos;
				poiCam.reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				//poiCam.distanceToModel = distance(poiMesh.modelPos, poiCam.worldPos);
				poiCam.distanceToVert = distance(poiMesh.worldPos, poiCam.worldPos);
				//poiCam.grabPos = i.grabPos;
				//poiCam.screenUV = calcScreenUVs(i.grabPos);
				poiCam.clipPos = i.pos;
				
				poiFragData.baseColor = mainTexture.rgb * _Color.rgb;
				poiFragData.alpha = mainTexture.a * _Color.a;
				
				#if defined(PROP_CLIPPINGMASK) || !defined(OPTIMIZER_ENABLED)
				float alphaMask = POI2D_SAMPLER_PAN(_ClippingMask, _MainTex, poiUV(poiMesh.uv[_ClippingMaskUV], _ClippingMask_ST), _ClippingMaskPan).r;
				#else
				float alphaMask = 1;
				#endif
				
				poiFragData.alpha *= alphaMask;
				
				poiFragData.finalColor = poiFragData.baseColor;
				
				#ifdef COLOR_GRADING_LOG_VIEW
				initAudioBands(poiMods);
				#endif
				
				if (_Mode == 1)
				{
					clip(poiFragData.alpha - _Cutoff);
				}
				
				UNITY_BRANCH
				if (_IgnoreFog == 0)
				{
					UNITY_APPLY_FOG(i.fogCoord, finalColor);
				}
				
				//#ifndef UNITY_PASS_SHADOWCASTER
				return float4(poiFragData.finalColor + poiFragData.emission, poiFragData.alpha) + mainTexture * 0.0001;
				//#else
				//	SHADOW_CASTER_FRAGMENT(i)
				//#endif
				
			}
			
			ENDCG
			
		}
		
	}
	CustomEditor "Thry.ShaderEditor"
}
