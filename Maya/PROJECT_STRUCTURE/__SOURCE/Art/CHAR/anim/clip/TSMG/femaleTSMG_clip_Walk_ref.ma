//Maya ASCII 2014 scene
//Name: femaleTSMG_clip_Walk_ref.ma
//Last modified: Mon, Jul 07, 2014 11:02:27 AM
//Codeset: UTF-8
file -rdi 1 -ns "femaleTSMG_rig" -rfn "femaleTSMG_rigRN" "/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/TSMG/femaleTSMG_rig.ma";
file -r -ns "femaleTSMG_rig" -dr 1 -rfn "femaleTSMG_rigRN" "/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/TSMG/femaleTSMG_rig.ma";
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.9.3";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.512502400318882 2.4589520630805177 -1.4506967486416431 ;
	setAttr ".r" -type "double3" -10.799999999999327 -97.999999999994714 0 ;
	setAttr ".rp" -type "double3" -5.5511151231257827e-17 2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".rpt" -type "double3" 3.6034178347960598e-15 -1.2954587476648056e-17 3.5215415588358509e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 11.46016830510108;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.21324204202003338 1.468928957443818 0.3979659660456174 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "poseLibCaptureCamera";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -13.445380039131919 -0.87200319678794269 2.1753084412297659 ;
	setAttr ".r" -type "double3" 6.2616472704291262 -80.599999999960332 -4.7710473354047136e-13 ;
	setAttr ".rp" -type "double3" 7.6327832942979524e-17 -2.2204460492503131e-16 0 ;
	setAttr ".rpt" -type "double3" -3.9968542499790659e-17 1.324676618483856e-18 7.1347458994031562e-17 ;
createNode camera -n "poseLibCaptureCameraShape" -p "poseLibCaptureCamera";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.41732 1.1 ;
	setAttr ".fl" 200;
	setAttr ".coi" 9.3412297871573298;
	setAttr ".dfg" yes;
createNode transform -n "locator1";
	setAttr ".t" -type "double3" -0.077380284640786945 -0.0096687486978046522 0.36165233461927337 ;
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
createNode transform -n "locator2";
	setAttr ".t" -type "double3" 0.2373766286419644 -0.0096687486978046522 0.36165233461927337 ;
createNode locator -n "locatorShape2" -p "locator2";
	setAttr -k off ".v";
createNode transform -n "locator3";
	setAttr ".t" -type "double3" -0.23440759675718423 -0.0096687486978046522 0.89912358309227425 ;
createNode locator -n "locatorShape3" -p "locator3";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "femaleTSMG_rigRN";
	setAttr -s 479 ".phl";
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"femaleTSMG_rigRN"
		"femaleTSMG_rigRN" 161
		2 "femaleTSMG_rig:femaleTSMG_rig" "referenceMapping" " -type \"characterMapping\" 2 \"femaleTSMG_rig:femalseTSMG_rig_RHAND.message\" 4 0 \"femaleTSMG_rig:femalseTSMG_rig_LHAND.message\" 4 0"
		
		2 "femaleTSMG_rig:femalseTSMG_rig_RHAND" "referenceMapping" (" -type \"characterMapping\" 45 \"femaleTSMG_rig:rightThumb1_Control.SideToSide\" 0 1 \"femaleTSMG_rig:rightThumb1_Control.EndJoint\" 0 2 \"femaleTSMG_rig:rightThumb1_Control.MiddleJoint\" 0 3 \"femaleTSMG_rig:rightThumb1_Control.rotateZ\" 2 1 \"femaleTSMG_rig:rightThumb1_Control.rotateY\" 2 2 \"femaleTSMG_rig:rightThumb1_Control.rotateX\" 2 3 \"femaleTSMG_rig:rightThumb1_Control.translateZ\" 1 1 \"femaleTSMG_rig:rightThumb1_Control.translateY\" 1 2 \"femaleTSMG_rig:rightThumb1_Control.translateX\" 1 3 \"femaleTSMG_rig:rightFinger4_Control.SideToSide\" 0 4 \"femaleTSMG_rig:rightFinger4_Control.EndJoint\" 0 5 \"femaleTSMG_rig:rightFinger4_Control.MiddleJoint\" 0 6 \"femaleTSMG_rig:rightFinger4_Control.rotateZ\" 2 4 \"femaleTSMG_rig:rightFinger4_Control.rotateY\" 2 5 \"femaleTSMG_rig:rightFinger4_Control.rotateX\" 2 6 \"femaleTSMG_rig:rightFinger4_Control.translateZ\" 1 4 \"femaleTSMG_rig:rightFinger4_Control.translateY\" 1 5 \"femaleTSMG_rig:rightFinger4_Control.translateX\" 1 6 \"femaleTSMG_rig:rightFinger3_Control.SideToSide\" 0 7 \"femaleTSMG_rig:r"
		+ "ightFinger3_Control.EndJoint\" 0 8 \"femaleTSMG_rig:rightFinger3_Control.MiddleJoint\" 0 9 \"femaleTSMG_rig:rightFinger3_Control.rotateZ\" 2 7 \"femaleTSMG_rig:rightFinger3_Control.rotateY\" 2 8 \"femaleTSMG_rig:rightFinger3_Control.rotateX\" 2 9 \"femaleTSMG_rig:rightFinger3_Control.translateZ\" 1 7 \"femaleTSMG_rig:rightFinger3_Control.translateY\" 1 8 \"femaleTSMG_rig:rightFinger3_Control.translateX\" 1 9 \"femaleTSMG_rig:rightFinger2_Control.SideToSide\" 0 10 \"femaleTSMG_rig:rightFinger2_Control.EndJoint\" 0 11 \"femaleTSMG_rig:rightFinger2_Control.MiddleJoint\" 0 12 \"femaleTSMG_rig:rightFinger2_Control.rotateZ\" 2 10 \"femaleTSMG_rig:rightFinger2_Control.rotateY\" 2 11 \"femaleTSMG_rig:rightFinger2_Control.rotateX\" 2 12 \"femaleTSMG_rig:rightFinger2_Control.translateZ\" 1 10 \"femaleTSMG_rig:rightFinger2_Control.translateY\" 1 11 \"femaleTSMG_rig:rightFinger2_Control.translateX\" 1 12 \"femaleTSMG_rig:rightFinger1_Control.SideToSide\" 0 13 \"femaleTSMG_rig:rightFinger1_Control.EndJoint\" 0 14 \"femaleTSMG_rig:rightFinger1_Control.MiddleJo"
		+ "int\" 0 15 \"femaleTSMG_rig:rightFinger1_Control.rotateZ\" 2 13 \"femaleTSMG_rig:rightFinger1_Control.rotateY\" 2 14 \"femaleTSMG_rig:rightFinger1_Control.rotateX\" 2 15 \"femaleTSMG_rig:rightFinger1_Control.translateZ\" 1 13 \"femaleTSMG_rig:rightFinger1_Control.translateY\" 1 14 \"femaleTSMG_rig:rightFinger1_Control.translateX\" 1 15"
		)
		2 "femaleTSMG_rig:femalseTSMG_rig_LHAND" "referenceMapping" (" -type \"characterMapping\" 45 \"femaleTSMG_rig:leftThumb1_Control.SideToSide\" 0 1 \"femaleTSMG_rig:leftThumb1_Control.EndJoint\" 0 2 \"femaleTSMG_rig:leftThumb1_Control.MiddleJoint\" 0 3 \"femaleTSMG_rig:leftThumb1_Control.rotateZ\" 2 1 \"femaleTSMG_rig:leftThumb1_Control.rotateY\" 2 2 \"femaleTSMG_rig:leftThumb1_Control.rotateX\" 2 3 \"femaleTSMG_rig:leftThumb1_Control.translateZ\" 1 1 \"femaleTSMG_rig:leftThumb1_Control.translateY\" 1 2 \"femaleTSMG_rig:leftThumb1_Control.translateX\" 1 3 \"femaleTSMG_rig:leftFinger4_Control.SideToSide\" 0 4 \"femaleTSMG_rig:leftFinger4_Control.EndJoint\" 0 5 \"femaleTSMG_rig:leftFinger4_Control.MiddleJoint\" 0 6 \"femaleTSMG_rig:leftFinger4_Control.rotateZ\" 2 4 \"femaleTSMG_rig:leftFinger4_Control.rotateY\" 2 5 \"femaleTSMG_rig:leftFinger4_Control.rotateX\" 2 6 \"femaleTSMG_rig:leftFinger4_Control.translateZ\" 1 4 \"femaleTSMG_rig:leftFinger4_Control.translateY\" 1 5 \"femaleTSMG_rig:leftFinger4_Control.translateX\" 1 6 \"femaleTSMG_rig:leftFinger3_Control.SideToSide\" 0 7 \"femaleTSMG_rig:leftFinger3_Control."
		+ "EndJoint\" 0 8 \"femaleTSMG_rig:leftFinger3_Control.MiddleJoint\" 0 9 \"femaleTSMG_rig:leftFinger3_Control.rotateZ\" 2 7 \"femaleTSMG_rig:leftFinger3_Control.rotateY\" 2 8 \"femaleTSMG_rig:leftFinger3_Control.rotateX\" 2 9 \"femaleTSMG_rig:leftFinger3_Control.translateZ\" 1 7 \"femaleTSMG_rig:leftFinger3_Control.translateY\" 1 8 \"femaleTSMG_rig:leftFinger3_Control.translateX\" 1 9 \"femaleTSMG_rig:leftFinger2_Control.SideToSide\" 0 10 \"femaleTSMG_rig:leftFinger2_Control.EndJoint\" 0 11 \"femaleTSMG_rig:leftFinger2_Control.MiddleJoint\" 0 12 \"femaleTSMG_rig:leftFinger2_Control.rotateZ\" 2 10 \"femaleTSMG_rig:leftFinger2_Control.rotateY\" 2 11 \"femaleTSMG_rig:leftFinger2_Control.rotateX\" 2 12 \"femaleTSMG_rig:leftFinger2_Control.translateZ\" 1 10 \"femaleTSMG_rig:leftFinger2_Control.translateY\" 1 11 \"femaleTSMG_rig:leftFinger2_Control.translateX\" 1 12 \"femaleTSMG_rig:leftFinger1_Control.SideToSide\" 0 13 \"femaleTSMG_rig:leftFinger1_Control.EndJoint\" 0 14 \"femaleTSMG_rig:leftFinger1_Control.MiddleJoint\" 0 15 \"femaleTSMG_rig:leftFinger1_C"
		+ "ontrol.rotateZ\" 2 13 \"femaleTSMG_rig:leftFinger1_Control.rotateY\" 2 14 \"femaleTSMG_rig:leftFinger1_Control.rotateX\" 2 15 \"femaleTSMG_rig:leftFinger1_Control.translateZ\" 1 13 \"femaleTSMG_rig:leftFinger1_Control.translateY\" 1 14 \"femaleTSMG_rig:leftFinger1_Control.translateX\" 1 15"
		)
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[16]" 
		"femaleTSMG_rigRN.placeHolderList[234]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[17]" 
		"femaleTSMG_rigRN.placeHolderList[235]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[18]" 
		"femaleTSMG_rigRN.placeHolderList[236]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[19]" 
		"femaleTSMG_rigRN.placeHolderList[237]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[20]" 
		"femaleTSMG_rigRN.placeHolderList[238]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[21]" 
		"femaleTSMG_rigRN.placeHolderList[239]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[22]" 
		"femaleTSMG_rigRN.placeHolderList[240]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[23]" 
		"femaleTSMG_rigRN.placeHolderList[241]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[24]" 
		"femaleTSMG_rigRN.placeHolderList[242]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[25]" 
		"femaleTSMG_rigRN.placeHolderList[243]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[26]" 
		"femaleTSMG_rigRN.placeHolderList[244]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.linearValues[27]" 
		"femaleTSMG_rigRN.placeHolderList[245]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[19]" 
		"femaleTSMG_rigRN.placeHolderList[246]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[20]" 
		"femaleTSMG_rigRN.placeHolderList[247]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[21]" 
		"femaleTSMG_rigRN.placeHolderList[248]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[22]" 
		"femaleTSMG_rigRN.placeHolderList[249]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[23]" 
		"femaleTSMG_rigRN.placeHolderList[250]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[24]" 
		"femaleTSMG_rigRN.placeHolderList[251]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[25]" 
		"femaleTSMG_rigRN.placeHolderList[252]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[26]" 
		"femaleTSMG_rigRN.placeHolderList[253]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[27]" 
		"femaleTSMG_rigRN.placeHolderList[254]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[28]" 
		"femaleTSMG_rigRN.placeHolderList[255]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[29]" 
		"femaleTSMG_rigRN.placeHolderList[256]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[30]" 
		"femaleTSMG_rigRN.placeHolderList[257]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[37]" 
		"femaleTSMG_rigRN.placeHolderList[258]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[38]" 
		"femaleTSMG_rigRN.placeHolderList[259]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[39]" 
		"femaleTSMG_rigRN.placeHolderList[260]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[40]" 
		"femaleTSMG_rigRN.placeHolderList[261]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[41]" 
		"femaleTSMG_rigRN.placeHolderList[262]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[42]" 
		"femaleTSMG_rigRN.placeHolderList[263]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[43]" 
		"femaleTSMG_rigRN.placeHolderList[264]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[44]" 
		"femaleTSMG_rigRN.placeHolderList[265]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[45]" 
		"femaleTSMG_rigRN.placeHolderList[266]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[46]" 
		"femaleTSMG_rigRN.placeHolderList[267]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[62]" 
		"femaleTSMG_rigRN.placeHolderList[268]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[63]" 
		"femaleTSMG_rigRN.placeHolderList[269]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[64]" 
		"femaleTSMG_rigRN.placeHolderList[270]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[77]" 
		"femaleTSMG_rigRN.placeHolderList[271]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[78]" 
		"femaleTSMG_rigRN.placeHolderList[272]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[79]" 
		"femaleTSMG_rigRN.placeHolderList[273]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[80]" 
		"femaleTSMG_rigRN.placeHolderList[274]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[90]" 
		"femaleTSMG_rigRN.placeHolderList[275]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[91]" 
		"femaleTSMG_rigRN.placeHolderList[276]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[92]" 
		"femaleTSMG_rigRN.placeHolderList[277]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[93]" 
		"femaleTSMG_rigRN.placeHolderList[278]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[94]" 
		"femaleTSMG_rigRN.placeHolderList[279]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[95]" 
		"femaleTSMG_rigRN.placeHolderList[280]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[96]" 
		"femaleTSMG_rigRN.placeHolderList[281]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[97]" 
		"femaleTSMG_rigRN.placeHolderList[282]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[98]" 
		"femaleTSMG_rigRN.placeHolderList[283]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[99]" 
		"femaleTSMG_rigRN.placeHolderList[284]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[115]" 
		"femaleTSMG_rigRN.placeHolderList[285]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[116]" 
		"femaleTSMG_rigRN.placeHolderList[286]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[117]" 
		"femaleTSMG_rigRN.placeHolderList[287]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[118]" 
		"femaleTSMG_rigRN.placeHolderList[288]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[119]" 
		"femaleTSMG_rigRN.placeHolderList[289]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[120]" 
		"femaleTSMG_rigRN.placeHolderList[290]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.angularValues[121]" 
		"femaleTSMG_rigRN.placeHolderList[291]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[22]" 
		"femaleTSMG_rigRN.placeHolderList[292]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[23]" 
		"femaleTSMG_rigRN.placeHolderList[293]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[24]" 
		"femaleTSMG_rigRN.placeHolderList[294]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[53]" 
		"femaleTSMG_rigRN.placeHolderList[295]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[54]" 
		"femaleTSMG_rigRN.placeHolderList[296]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[59]" 
		"femaleTSMG_rigRN.placeHolderList[297]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[60]" 
		"femaleTSMG_rigRN.placeHolderList[298]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[61]" 
		"femaleTSMG_rigRN.placeHolderList[299]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[74]" 
		"femaleTSMG_rigRN.placeHolderList[300]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femaleTSMG_rig.unitlessValues[75]" 
		"femaleTSMG_rigRN.placeHolderList[301]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[1]" 
		"femaleTSMG_rigRN.placeHolderList[302]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[2]" 
		"femaleTSMG_rigRN.placeHolderList[303]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[3]" 
		"femaleTSMG_rigRN.placeHolderList[304]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[4]" 
		"femaleTSMG_rigRN.placeHolderList[305]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[5]" 
		"femaleTSMG_rigRN.placeHolderList[306]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[6]" 
		"femaleTSMG_rigRN.placeHolderList[307]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[7]" 
		"femaleTSMG_rigRN.placeHolderList[308]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[8]" 
		"femaleTSMG_rigRN.placeHolderList[309]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[9]" 
		"femaleTSMG_rigRN.placeHolderList[310]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[10]" 
		"femaleTSMG_rigRN.placeHolderList[311]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[11]" 
		"femaleTSMG_rigRN.placeHolderList[312]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[12]" 
		"femaleTSMG_rigRN.placeHolderList[313]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[13]" 
		"femaleTSMG_rigRN.placeHolderList[314]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[14]" 
		"femaleTSMG_rigRN.placeHolderList[315]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.unitlessValues[15]" 
		"femaleTSMG_rigRN.placeHolderList[316]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[1]" 
		"femaleTSMG_rigRN.placeHolderList[317]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[2]" 
		"femaleTSMG_rigRN.placeHolderList[318]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[3]" 
		"femaleTSMG_rigRN.placeHolderList[319]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[4]" 
		"femaleTSMG_rigRN.placeHolderList[320]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[5]" 
		"femaleTSMG_rigRN.placeHolderList[321]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[6]" 
		"femaleTSMG_rigRN.placeHolderList[322]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[7]" 
		"femaleTSMG_rigRN.placeHolderList[323]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[8]" 
		"femaleTSMG_rigRN.placeHolderList[324]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[9]" 
		"femaleTSMG_rigRN.placeHolderList[325]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[10]" 
		"femaleTSMG_rigRN.placeHolderList[326]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[11]" 
		"femaleTSMG_rigRN.placeHolderList[327]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[12]" 
		"femaleTSMG_rigRN.placeHolderList[328]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[13]" 
		"femaleTSMG_rigRN.placeHolderList[329]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[14]" 
		"femaleTSMG_rigRN.placeHolderList[330]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.angularValues[15]" 
		"femaleTSMG_rigRN.placeHolderList[331]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[1]" 
		"femaleTSMG_rigRN.placeHolderList[332]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[2]" 
		"femaleTSMG_rigRN.placeHolderList[333]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[3]" 
		"femaleTSMG_rigRN.placeHolderList[334]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[4]" 
		"femaleTSMG_rigRN.placeHolderList[335]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[5]" 
		"femaleTSMG_rigRN.placeHolderList[336]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[6]" 
		"femaleTSMG_rigRN.placeHolderList[337]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[7]" 
		"femaleTSMG_rigRN.placeHolderList[338]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[8]" 
		"femaleTSMG_rigRN.placeHolderList[339]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[9]" 
		"femaleTSMG_rigRN.placeHolderList[340]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[10]" 
		"femaleTSMG_rigRN.placeHolderList[341]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[11]" 
		"femaleTSMG_rigRN.placeHolderList[342]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[12]" 
		"femaleTSMG_rigRN.placeHolderList[343]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[13]" 
		"femaleTSMG_rigRN.placeHolderList[344]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[14]" 
		"femaleTSMG_rigRN.placeHolderList[345]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_RHAND.linearValues[15]" 
		"femaleTSMG_rigRN.placeHolderList[346]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[1]" 
		"femaleTSMG_rigRN.placeHolderList[347]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[2]" 
		"femaleTSMG_rigRN.placeHolderList[348]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[3]" 
		"femaleTSMG_rigRN.placeHolderList[349]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[4]" 
		"femaleTSMG_rigRN.placeHolderList[350]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[5]" 
		"femaleTSMG_rigRN.placeHolderList[351]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[6]" 
		"femaleTSMG_rigRN.placeHolderList[352]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[7]" 
		"femaleTSMG_rigRN.placeHolderList[353]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[8]" 
		"femaleTSMG_rigRN.placeHolderList[354]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[9]" 
		"femaleTSMG_rigRN.placeHolderList[355]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[10]" 
		"femaleTSMG_rigRN.placeHolderList[356]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[11]" 
		"femaleTSMG_rigRN.placeHolderList[357]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[12]" 
		"femaleTSMG_rigRN.placeHolderList[358]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[13]" 
		"femaleTSMG_rigRN.placeHolderList[359]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[14]" 
		"femaleTSMG_rigRN.placeHolderList[360]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.unitlessValues[15]" 
		"femaleTSMG_rigRN.placeHolderList[361]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[1]" 
		"femaleTSMG_rigRN.placeHolderList[362]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[2]" 
		"femaleTSMG_rigRN.placeHolderList[363]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[3]" 
		"femaleTSMG_rigRN.placeHolderList[364]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[4]" 
		"femaleTSMG_rigRN.placeHolderList[365]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[5]" 
		"femaleTSMG_rigRN.placeHolderList[366]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[6]" 
		"femaleTSMG_rigRN.placeHolderList[367]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[7]" 
		"femaleTSMG_rigRN.placeHolderList[368]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[8]" 
		"femaleTSMG_rigRN.placeHolderList[369]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[9]" 
		"femaleTSMG_rigRN.placeHolderList[370]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[10]" 
		"femaleTSMG_rigRN.placeHolderList[371]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[11]" 
		"femaleTSMG_rigRN.placeHolderList[372]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[12]" 
		"femaleTSMG_rigRN.placeHolderList[373]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[13]" 
		"femaleTSMG_rigRN.placeHolderList[374]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[14]" 
		"femaleTSMG_rigRN.placeHolderList[375]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.angularValues[15]" 
		"femaleTSMG_rigRN.placeHolderList[376]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[1]" 
		"femaleTSMG_rigRN.placeHolderList[377]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[2]" 
		"femaleTSMG_rigRN.placeHolderList[378]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[3]" 
		"femaleTSMG_rigRN.placeHolderList[379]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[4]" 
		"femaleTSMG_rigRN.placeHolderList[380]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[5]" 
		"femaleTSMG_rigRN.placeHolderList[381]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[6]" 
		"femaleTSMG_rigRN.placeHolderList[382]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[7]" 
		"femaleTSMG_rigRN.placeHolderList[383]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[8]" 
		"femaleTSMG_rigRN.placeHolderList[384]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[9]" 
		"femaleTSMG_rigRN.placeHolderList[385]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[10]" 
		"femaleTSMG_rigRN.placeHolderList[386]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[11]" 
		"femaleTSMG_rigRN.placeHolderList[387]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[12]" 
		"femaleTSMG_rigRN.placeHolderList[388]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[13]" 
		"femaleTSMG_rigRN.placeHolderList[389]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[14]" 
		"femaleTSMG_rigRN.placeHolderList[390]" ""
		5 4 "femaleTSMG_rigRN" "femaleTSMG_rig:femalseTSMG_rig_LHAND.linearValues[15]" 
		"femaleTSMG_rigRN.placeHolderList[391]" ""
		"femaleTSMG_rigRN" 724
		2 "|femaleTSMG_rig:Character|femaleTSMG_rig:Mesh_Group|femaleTSMG_rig:Mesh_Beta_HighJointsGeo" 
		"visibility" " 1"
		2 "|femaleTSMG_rig:Character|femaleTSMG_rig:Mesh_Group|femaleTSMG_rig:Mesh_arms" 
		"visibility" " 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root" "visibility" " -av 1"
		
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root" "translate" " -type \"double3\" 0 0 0"
		
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root" "translateX" " -av"
		
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root" "translateY" " -av"
		
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root" "translateZ" " -av"
		
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root" "rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root" "rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root" "rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"visibility" " -av 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"translate" " -type \"double3\" -0.0638298 -0.110007 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rotate" " -type \"double3\" 0 -90 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"head1_controlSize" " -av -k 1 0.1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"head1_RotationIsolationSwitch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"leftArm1_controlSize" " -av -k 1 0.0744162"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"leftArm1_FKIKSwitch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"leftArm1_RotationIsolationSwitch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"leftLeg1_ControlSize" " -av -k 1 0.0705082"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"leftLeg1_FKIKSwitch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"leftLeg1_RotationIsolationSwitch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rightArm1_controlSize" " -av -k 1 0.0744162"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rightArm1_FKIKSwitch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rightArm1_RotationIsolationSwitch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rightLeg1_ControlSize" " -av -k 1 0.0705082"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rightLeg1_FKIKSwitch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"rightLeg1_RotationIsolationSwitch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"spine1_FKIKSwitch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body" 
		"spine1_ControlSize" " -av -k 1 0.1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"translate" " -type \"double3\" -1.101029 -0.107763 0.684619"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"rotate" " -type \"double3\" -96.640225 -60.415386 -253.09879"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"AutoStretch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"AntiIKPop" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"LowerArmStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl" 
		"UpperArmStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"translate" " -type \"double3\" 0.18 0.12058 -0.33421"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"rotate" " -type \"double3\" 46.420699 -40.721182 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"AutoStretch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"FootStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"HeelRaise" " -av -k 1 19.703698"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"HeelSwivel" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"ToeRaise" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"ToeSwivel" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"UpperLegStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"LowerLegStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl" 
		"AntiIKPop" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl|femaleTSMG_rig:leftLeg1_LegIKAimed|femaleTSMG_rig:leftLeg1_HeelRaiser|femaleTSMG_rig:leftLeg1_IKHeelControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl|femaleTSMG_rig:leftLeg1_LegIKAimed|femaleTSMG_rig:leftLeg1_HeelRaiser|femaleTSMG_rig:leftLeg1_IKHeelControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl|femaleTSMG_rig:leftLeg1_LegIKAimed|femaleTSMG_rig:leftLeg1_HeelRaiser|femaleTSMG_rig:leftLeg1_IKHeelControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl|femaleTSMG_rig:leftLeg1_LegIKAimed|femaleTSMG_rig:leftLeg1_HeelRaiser|femaleTSMG_rig:leftLeg1_IKHeelControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"translate" " -type \"double3\" 0.625832 -0.189555 -0.162043"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"rotate" " -type \"double3\" 0 -54.52413 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"AutoStretch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"AntiIKPop" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"LowerArmStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl" 
		"UpperArmStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"translate" " -type \"double3\" -0.0674553 0 0.284188"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"rotate" " -type \"double3\" 0 -80.112255 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"AutoStretch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"FootStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"HeelRaise" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"HeelSwivel" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"ToeRaise" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"ToeSwivel" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"UpperLegStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"LowerLegStretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl" 
		"AntiIKPop" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl|femaleTSMG_rig:rightLeg1_LegIKAimed|femaleTSMG_rig:rightLeg1_HeelRaiser|femaleTSMG_rig:rightLeg1_IKHeelControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl|femaleTSMG_rig:rightLeg1_LegIKAimed|femaleTSMG_rig:rightLeg1_HeelRaiser|femaleTSMG_rig:rightLeg1_IKHeelControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl|femaleTSMG_rig:rightLeg1_LegIKAimed|femaleTSMG_rig:rightLeg1_HeelRaiser|femaleTSMG_rig:rightLeg1_IKHeelControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl|femaleTSMG_rig:rightLeg1_LegIKAimed|femaleTSMG_rig:rightLeg1_HeelRaiser|femaleTSMG_rig:rightLeg1_IKHeelControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"rotate" " -type \"double3\" 75.125535 -2.779961 -10.395409"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl" 
		"stretch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl" 
		"rotateY" " -av 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowControl" 
		"rotate" " -type \"double3\" 0 0 -49.656361"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl" 
		"rotateY" " -av 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl|femaleTSMG_rig:leftLeg1_ToeBuffer|femaleTSMG_rig:leftLeg1_ToeControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl|femaleTSMG_rig:leftLeg1_ToeBuffer|femaleTSMG_rig:leftLeg1_ToeControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl|femaleTSMG_rig:leftLeg1_ToeBuffer|femaleTSMG_rig:leftLeg1_ToeControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl|femaleTSMG_rig:leftLeg1_ToeBuffer|femaleTSMG_rig:leftLeg1_ToeControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_KneeBuffer|femaleTSMG_rig:leftLeg1_KneeAimer|femaleTSMG_rig:leftLeg1_KneeFixPosition|femaleTSMG_rig:leftLeg1_KneeRotateXtra|femaleTSMG_rig:leftLeg1_KneeCorrectForWindget|femaleTSMG_rig:leftLeg1_LegIKKneeControl" 
		"rotate" " -type \"double3\" 0 0 0.299522"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_KneeBuffer|femaleTSMG_rig:leftLeg1_KneeAimer|femaleTSMG_rig:leftLeg1_KneeFixPosition|femaleTSMG_rig:leftLeg1_KneeRotateXtra|femaleTSMG_rig:leftLeg1_KneeCorrectForWindget|femaleTSMG_rig:leftLeg1_LegIKKneeControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_KneeBuffer|femaleTSMG_rig:leftLeg1_KneeAimer|femaleTSMG_rig:leftLeg1_KneeFixPosition|femaleTSMG_rig:leftLeg1_KneeRotateXtra|femaleTSMG_rig:leftLeg1_KneeCorrectForWindget|femaleTSMG_rig:leftLeg1_LegIKKneeControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_KneeBuffer|femaleTSMG_rig:leftLeg1_KneeAimer|femaleTSMG_rig:leftLeg1_KneeFixPosition|femaleTSMG_rig:leftLeg1_KneeRotateXtra|femaleTSMG_rig:leftLeg1_KneeCorrectForWindget|femaleTSMG_rig:leftLeg1_LegIKKneeControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl" 
		"stretch" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl" 
		"rotateY" " -av 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl" 
		"rotateY" " -av 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl" 
		"stretch" " -av -k 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl|femaleTSMG_rig:rightLeg1_ToeBuffer|femaleTSMG_rig:rightLeg1_ToeControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl|femaleTSMG_rig:rightLeg1_ToeBuffer|femaleTSMG_rig:rightLeg1_ToeControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl|femaleTSMG_rig:rightLeg1_ToeBuffer|femaleTSMG_rig:rightLeg1_ToeControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl|femaleTSMG_rig:rightLeg1_ToeBuffer|femaleTSMG_rig:rightLeg1_ToeControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_KneeBuffer|femaleTSMG_rig:rightLeg1_KneeAimer|femaleTSMG_rig:rightLeg1_KneeFixPosition|femaleTSMG_rig:rightLeg1_KneeRotateXtra|femaleTSMG_rig:rightLeg1_KneeCorrectForWindget|femaleTSMG_rig:rightLeg1_LegIKKneeControl" 
		"rotate" " -type \"double3\" 0 0 -1.295264"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_KneeBuffer|femaleTSMG_rig:rightLeg1_KneeAimer|femaleTSMG_rig:rightLeg1_KneeFixPosition|femaleTSMG_rig:rightLeg1_KneeRotateXtra|femaleTSMG_rig:rightLeg1_KneeCorrectForWindget|femaleTSMG_rig:rightLeg1_LegIKKneeControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_KneeBuffer|femaleTSMG_rig:rightLeg1_KneeAimer|femaleTSMG_rig:rightLeg1_KneeFixPosition|femaleTSMG_rig:rightLeg1_KneeRotateXtra|femaleTSMG_rig:rightLeg1_KneeCorrectForWindget|femaleTSMG_rig:rightLeg1_LegIKKneeControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_KneeBuffer|femaleTSMG_rig:rightLeg1_KneeAimer|femaleTSMG_rig:rightLeg1_KneeFixPosition|femaleTSMG_rig:rightLeg1_KneeRotateXtra|femaleTSMG_rig:rightLeg1_KneeCorrectForWindget|femaleTSMG_rig:rightLeg1_LegIKKneeControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"translate" " -type \"double3\" -0.0269615 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"rotate" " -type \"double3\" 0 8.148146 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"rotate" " -type \"double3\" -3.698508 -26.713482 8.177771"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"translateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"translateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"translateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"rotateX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"rotateY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"rotateZ" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"scaleX" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"scaleY" " -av"
		2 "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl" 
		"scaleZ" " -av"
		2 "|femaleTSMG_rig:pPlane1" "visibility" " 0"
		2 "|femaleTSMG_rig:directionalLight1" "rotate" " -type \"double3\" -38.845806 -36.513047 0.263865"
		
		2 "femaleTSMG_rig:MeshLayer" "displayType" " 2"
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root.visibility" 
		"femaleTSMG_rigRN.placeHolderList[392]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root.translateX" 
		"femaleTSMG_rigRN.placeHolderList[393]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root.translateY" 
		"femaleTSMG_rigRN.placeHolderList[394]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[395]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[396]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[397]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[398]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.head1_controlSize" 
		"femaleTSMG_rigRN.placeHolderList[399]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.head1_RotationIsolationSwitch" 
		"femaleTSMG_rigRN.placeHolderList[400]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.leftArm1_controlSize" 
		"femaleTSMG_rigRN.placeHolderList[401]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.leftArm1_FKIKSwitch" 
		"femaleTSMG_rigRN.placeHolderList[402]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.leftArm1_RotationIsolationSwitch" 
		"femaleTSMG_rigRN.placeHolderList[403]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.leftLeg1_ControlSize" 
		"femaleTSMG_rigRN.placeHolderList[404]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.leftLeg1_FKIKSwitch" 
		"femaleTSMG_rigRN.placeHolderList[405]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.leftLeg1_RotationIsolationSwitch" 
		"femaleTSMG_rigRN.placeHolderList[406]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.rightArm1_controlSize" 
		"femaleTSMG_rigRN.placeHolderList[407]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.rightArm1_FKIKSwitch" 
		"femaleTSMG_rigRN.placeHolderList[408]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.rightArm1_RotationIsolationSwitch" 
		"femaleTSMG_rigRN.placeHolderList[409]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.rightLeg1_ControlSize" 
		"femaleTSMG_rigRN.placeHolderList[410]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.rightLeg1_FKIKSwitch" 
		"femaleTSMG_rigRN.placeHolderList[411]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.rightLeg1_RotationIsolationSwitch" 
		"femaleTSMG_rigRN.placeHolderList[412]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.spine1_FKIKSwitch" 
		"femaleTSMG_rigRN.placeHolderList[413]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.spine1_ControlSize" 
		"femaleTSMG_rigRN.placeHolderList[414]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.translateX" 
		"femaleTSMG_rigRN.placeHolderList[415]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.translateY" 
		"femaleTSMG_rigRN.placeHolderList[416]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[417]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[418]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[419]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[420]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:TSMG_upper_body_buffer|femaleTSMG_rig:TSMG_upper_body.visibility" 
		"femaleTSMG_rigRN.placeHolderList[421]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.AutoStretch" 
		"femaleTSMG_rigRN.placeHolderList[422]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.AntiIKPop" 
		"femaleTSMG_rigRN.placeHolderList[423]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.LowerArmStretch" 
		"femaleTSMG_rigRN.placeHolderList[424]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.UpperArmStretch" 
		"femaleTSMG_rigRN.placeHolderList[425]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[426]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[427]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[428]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[429]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[430]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[431]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[432]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[433]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftArm1_ParentToWorldNull|femaleTSMG_rig:leftArm1_ArmIKBuffer|femaleTSMG_rig:leftArm1_ArmIKControl.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[434]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.AutoStretch" 
		"femaleTSMG_rigRN.placeHolderList[435]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.FootStretch" 
		"femaleTSMG_rigRN.placeHolderList[436]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.HeelRaise" 
		"femaleTSMG_rigRN.placeHolderList[437]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.HeelSwivel" 
		"femaleTSMG_rigRN.placeHolderList[438]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.ToeRaise" 
		"femaleTSMG_rigRN.placeHolderList[439]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.ToeSwivel" 
		"femaleTSMG_rigRN.placeHolderList[440]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.UpperLegStretch" 
		"femaleTSMG_rigRN.placeHolderList[441]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.LowerLegStretch" 
		"femaleTSMG_rigRN.placeHolderList[442]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.AntiIKPop" 
		"femaleTSMG_rigRN.placeHolderList[443]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[444]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[445]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[446]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[447]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[448]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[449]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[450]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[451]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[452]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl|femaleTSMG_rig:leftLeg1_LegIKAimed|femaleTSMG_rig:leftLeg1_HeelRaiser|femaleTSMG_rig:leftLeg1_IKHeelControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[453]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl|femaleTSMG_rig:leftLeg1_LegIKAimed|femaleTSMG_rig:leftLeg1_HeelRaiser|femaleTSMG_rig:leftLeg1_IKHeelControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[454]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:leftLeg1_ParentToWorldNull|femaleTSMG_rig:leftLeg1_LegIKBuffer|femaleTSMG_rig:leftLeg1_LegIKControl|femaleTSMG_rig:leftLeg1_LegIKAimed|femaleTSMG_rig:leftLeg1_HeelRaiser|femaleTSMG_rig:leftLeg1_IKHeelControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[455]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.AutoStretch" 
		"femaleTSMG_rigRN.placeHolderList[456]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.AntiIKPop" 
		"femaleTSMG_rigRN.placeHolderList[457]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.LowerArmStretch" 
		"femaleTSMG_rigRN.placeHolderList[458]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.UpperArmStretch" 
		"femaleTSMG_rigRN.placeHolderList[459]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[460]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[461]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[462]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[463]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[464]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[465]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[466]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[467]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightArm1_ParentToWorldNull|femaleTSMG_rig:rightArm1_ArmIKBuffer|femaleTSMG_rig:rightArm1_ArmIKControl.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[468]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.AutoStretch" 
		"femaleTSMG_rigRN.placeHolderList[469]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.FootStretch" 
		"femaleTSMG_rigRN.placeHolderList[470]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.HeelRaise" 
		"femaleTSMG_rigRN.placeHolderList[471]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.HeelSwivel" 
		"femaleTSMG_rigRN.placeHolderList[472]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.ToeRaise" 
		"femaleTSMG_rigRN.placeHolderList[473]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.ToeSwivel" 
		"femaleTSMG_rigRN.placeHolderList[474]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.UpperLegStretch" 
		"femaleTSMG_rigRN.placeHolderList[475]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.LowerLegStretch" 
		"femaleTSMG_rigRN.placeHolderList[476]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.AntiIKPop" 
		"femaleTSMG_rigRN.placeHolderList[477]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[478]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[479]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[480]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[481]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[482]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[483]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[484]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[485]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[486]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl|femaleTSMG_rig:rightLeg1_LegIKAimed|femaleTSMG_rig:rightLeg1_HeelRaiser|femaleTSMG_rig:rightLeg1_IKHeelControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[487]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl|femaleTSMG_rig:rightLeg1_LegIKAimed|femaleTSMG_rig:rightLeg1_HeelRaiser|femaleTSMG_rig:rightLeg1_IKHeelControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[488]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_root|femaleTSMG_rig:TSMG_IK_Controllers|femaleTSMG_rig:rightLeg1_ParentToWorldNull|femaleTSMG_rig:rightLeg1_LegIKBuffer|femaleTSMG_rig:rightLeg1_LegIKControl|femaleTSMG_rig:rightLeg1_LegIKAimed|femaleTSMG_rig:rightLeg1_HeelRaiser|femaleTSMG_rig:rightLeg1_IKHeelControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[489]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[490]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[491]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[492]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[493]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[494]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[495]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[496]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[497]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[498]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[499]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[500]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:head1_ParentConstrain|femaleTSMG_rig:head1_neckSpace|femaleTSMG_rig:head1_neckBuffer|femaleTSMG_rig:head1_neckControl|femaleTSMG_rig:head1_Buffer|femaleTSMG_rig:head1_Control.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[501]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[502]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[503]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[504]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[505]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[506]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[507]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[508]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[509]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[510]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[511]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[512]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[513]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[514]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[515]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[516]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_UpperArmControl|femaleTSMG_rig:leftArm1_LowerArmBuffer|femaleTSMG_rig:leftArm1_LowerArmControl|femaleTSMG_rig:leftArm1_HandBuffer|femaleTSMG_rig:leftArm1_HandControl.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[517]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[518]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[519]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftArm1_ParentConstrain|femaleTSMG_rig:leftArm1_Rigging|femaleTSMG_rig:leftArm1_ClavicalBuffer|femaleTSMG_rig:leftArm1_ClavicalControl|femaleTSMG_rig:leftArm1_UpperArmBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowBuffer|femaleTSMG_rig:leftArm1_ArmIKElbowControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[520]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[521]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[522]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[523]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[524]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[525]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[526]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[527]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[528]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger1_ParentConstrain|femaleTSMG_rig:leftFinger1_rig|femaleTSMG_rig:leftFinger1_ControlBuffer|femaleTSMG_rig:leftFinger1_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[529]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[530]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[531]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[532]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[533]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[534]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[535]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[536]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[537]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger2_ParentConstrain|femaleTSMG_rig:leftFinger2_rig|femaleTSMG_rig:leftFinger2_ControlBuffer|femaleTSMG_rig:leftFinger2_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[538]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[539]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[540]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[541]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[542]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[543]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[544]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[545]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[546]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger3_ParentConstrain|femaleTSMG_rig:leftFinger3_rig|femaleTSMG_rig:leftFinger3_ControlBuffer|femaleTSMG_rig:leftFinger3_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[547]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[548]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[549]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[550]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[551]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[552]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[553]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[554]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[555]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftFinger4_ParentConstrain|femaleTSMG_rig:leftFinger4_rig|femaleTSMG_rig:leftFinger4_ControlBuffer|femaleTSMG_rig:leftFinger4_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[556]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[557]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[558]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[559]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[560]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[561]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[562]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[563]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[564]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[565]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[566]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl|femaleTSMG_rig:leftLeg1_ToeBuffer|femaleTSMG_rig:leftLeg1_ToeControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[567]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl|femaleTSMG_rig:leftLeg1_ToeBuffer|femaleTSMG_rig:leftLeg1_ToeControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[568]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_UpperLegBuffer|femaleTSMG_rig:leftLeg1_UpperLegControl|femaleTSMG_rig:leftLeg1_LowerLegBuffer|femaleTSMG_rig:leftLeg1_LowerLegControl|femaleTSMG_rig:leftLeg1_FootBuffer|femaleTSMG_rig:leftLeg1_FootControl|femaleTSMG_rig:leftLeg1_ToeBuffer|femaleTSMG_rig:leftLeg1_ToeControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[569]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_KneeBuffer|femaleTSMG_rig:leftLeg1_KneeAimer|femaleTSMG_rig:leftLeg1_KneeFixPosition|femaleTSMG_rig:leftLeg1_KneeRotateXtra|femaleTSMG_rig:leftLeg1_KneeCorrectForWindget|femaleTSMG_rig:leftLeg1_LegIKKneeControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[570]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_KneeBuffer|femaleTSMG_rig:leftLeg1_KneeAimer|femaleTSMG_rig:leftLeg1_KneeFixPosition|femaleTSMG_rig:leftLeg1_KneeRotateXtra|femaleTSMG_rig:leftLeg1_KneeCorrectForWindget|femaleTSMG_rig:leftLeg1_LegIKKneeControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[571]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftLeg1_ParentConstrain|femaleTSMG_rig:leftLeg1_Rigging|femaleTSMG_rig:leftLeg1_KneeBuffer|femaleTSMG_rig:leftLeg1_KneeAimer|femaleTSMG_rig:leftLeg1_KneeFixPosition|femaleTSMG_rig:leftLeg1_KneeRotateXtra|femaleTSMG_rig:leftLeg1_KneeCorrectForWindget|femaleTSMG_rig:leftLeg1_LegIKKneeControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[572]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[573]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[574]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[575]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[576]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[577]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[578]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[579]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[580]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:leftThumb1_ParentConstrain|femaleTSMG_rig:leftThumb1_rig|femaleTSMG_rig:leftThumb1_ControlBuffer|femaleTSMG_rig:leftThumb1_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[581]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[582]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[583]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[584]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[585]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[586]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[587]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[588]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[589]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[590]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[591]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[592]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[593]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[594]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[595]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[596]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_UpperArmControl|femaleTSMG_rig:rightArm1_LowerArmBuffer|femaleTSMG_rig:rightArm1_LowerArmControl|femaleTSMG_rig:rightArm1_HandBuffer|femaleTSMG_rig:rightArm1_HandControl.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[597]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[598]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[599]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightArm1_ParentConstrain|femaleTSMG_rig:rightArm1_Rigging|femaleTSMG_rig:rightArm1_ClavicalBuffer|femaleTSMG_rig:rightArm1_ClavicalControl|femaleTSMG_rig:rightArm1_UpperArmBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowBuffer|femaleTSMG_rig:rightArm1_ArmIKElbowControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[600]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[601]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[602]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[603]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[604]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[605]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[606]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[607]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[608]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger1_ParentConstrain|femaleTSMG_rig:rightFinger1_rig|femaleTSMG_rig:rightFinger1_ControlBuffer|femaleTSMG_rig:rightFinger1_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[609]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[610]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[611]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[612]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[613]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[614]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[615]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[616]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[617]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger2_ParentConstrain|femaleTSMG_rig:rightFinger2_rig|femaleTSMG_rig:rightFinger2_ControlBuffer|femaleTSMG_rig:rightFinger2_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[618]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[619]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[620]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[621]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[622]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[623]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[624]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[625]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[626]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger3_ParentConstrain|femaleTSMG_rig:rightFinger3_rig|femaleTSMG_rig:rightFinger3_ControlBuffer|femaleTSMG_rig:rightFinger3_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[627]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[628]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[629]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[630]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[631]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[632]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[633]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[634]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[635]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightFinger4_ParentConstrain|femaleTSMG_rig:rightFinger4_rig|femaleTSMG_rig:rightFinger4_ControlBuffer|femaleTSMG_rig:rightFinger4_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[636]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[637]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[638]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[639]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[640]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[641]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[642]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl.stretch" 
		"femaleTSMG_rigRN.placeHolderList[643]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[644]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[645]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[646]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl|femaleTSMG_rig:rightLeg1_ToeBuffer|femaleTSMG_rig:rightLeg1_ToeControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[647]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl|femaleTSMG_rig:rightLeg1_ToeBuffer|femaleTSMG_rig:rightLeg1_ToeControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[648]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_UpperLegBuffer|femaleTSMG_rig:rightLeg1_UpperLegControl|femaleTSMG_rig:rightLeg1_LowerLegBuffer|femaleTSMG_rig:rightLeg1_LowerLegControl|femaleTSMG_rig:rightLeg1_FootBuffer|femaleTSMG_rig:rightLeg1_FootControl|femaleTSMG_rig:rightLeg1_ToeBuffer|femaleTSMG_rig:rightLeg1_ToeControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[649]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_KneeBuffer|femaleTSMG_rig:rightLeg1_KneeAimer|femaleTSMG_rig:rightLeg1_KneeFixPosition|femaleTSMG_rig:rightLeg1_KneeRotateXtra|femaleTSMG_rig:rightLeg1_KneeCorrectForWindget|femaleTSMG_rig:rightLeg1_LegIKKneeControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[650]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_KneeBuffer|femaleTSMG_rig:rightLeg1_KneeAimer|femaleTSMG_rig:rightLeg1_KneeFixPosition|femaleTSMG_rig:rightLeg1_KneeRotateXtra|femaleTSMG_rig:rightLeg1_KneeCorrectForWindget|femaleTSMG_rig:rightLeg1_LegIKKneeControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[651]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightLeg1_ParentConstrain|femaleTSMG_rig:rightLeg1_Rigging|femaleTSMG_rig:rightLeg1_KneeBuffer|femaleTSMG_rig:rightLeg1_KneeAimer|femaleTSMG_rig:rightLeg1_KneeFixPosition|femaleTSMG_rig:rightLeg1_KneeRotateXtra|femaleTSMG_rig:rightLeg1_KneeCorrectForWindget|femaleTSMG_rig:rightLeg1_LegIKKneeControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[652]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control.MiddleJoint" 
		"femaleTSMG_rigRN.placeHolderList[653]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control.EndJoint" 
		"femaleTSMG_rigRN.placeHolderList[654]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control.SideToSide" 
		"femaleTSMG_rigRN.placeHolderList[655]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[656]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[657]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[658]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control.translateX" 
		"femaleTSMG_rigRN.placeHolderList[659]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control.translateY" 
		"femaleTSMG_rigRN.placeHolderList[660]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:rightThumb1_ParentConstrain|femaleTSMG_rig:rightThumb1_rig|femaleTSMG_rig:rightThumb1_ControlBuffer|femaleTSMG_rig:rightThumb1_Control.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[661]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[662]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[663]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[664]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[665]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[666]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[667]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[668]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[669]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[670]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[671]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[672]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[673]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[674]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[675]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[676]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[677]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[678]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_middleSpineBuffer|femaleTSMG_rig:spine1_middleSpineControl|femaleTSMG_rig:spine1_torsoBuffer|femaleTSMG_rig:spine1_torsoControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[679]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[680]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[681]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[682]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[683]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[684]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_lowerSpineBuffer|femaleTSMG_rig:spine1_lowerSpineControl|femaleTSMG_rig:spine1_hipsControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[685]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[686]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[687]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[688]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[689]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[690]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[691]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[692]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[693]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_hipsIKBuffer|femaleTSMG_rig:spine1_hipsIKControl.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[694]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[695]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[696]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[697]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[698]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[699]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[700]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[701]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[702]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_torsoIKBuffer|femaleTSMG_rig:spine1_torsoIKControl.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[703]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl.translateX" 
		"femaleTSMG_rigRN.placeHolderList[704]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl.translateY" 
		"femaleTSMG_rigRN.placeHolderList[705]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl.translateZ" 
		"femaleTSMG_rigRN.placeHolderList[706]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl.rotateX" 
		"femaleTSMG_rigRN.placeHolderList[707]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl.rotateY" 
		"femaleTSMG_rigRN.placeHolderList[708]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl.rotateZ" 
		"femaleTSMG_rigRN.placeHolderList[709]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl.scaleX" 
		"femaleTSMG_rigRN.placeHolderList[710]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl.scaleY" 
		"femaleTSMG_rigRN.placeHolderList[711]" ""
		5 4 "femaleTSMG_rigRN" "|femaleTSMG_rig:TSMG_Rig|femaleTSMG_rig:TSMG_Cruft|femaleTSMG_rig:spine1_ParentConstrain|femaleTSMG_rig:spine1_rig|femaleTSMG_rig:spine1_middleSpineTransform|femaleTSMG_rig:spine1_middleSpineAim|femaleTSMG_rig:spine1_middleSpineIKBuffer|femaleTSMG_rig:spine1_middleSpineIKControl.scaleZ" 
		"femaleTSMG_rigRN.placeHolderList[712]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "femaleTSMG_rig_spine1_lowerSpineControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_lowerSpineControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_lowerSpineControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_lowerSpineControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_lowerSpineControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_lowerSpineControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_middleSpineControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_middleSpineControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_middleSpineControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_middleSpineControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_middleSpineControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_middleSpineControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_torsoControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_torsoControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_torsoControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_torsoControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_torsoControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_torsoControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_hipsControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_hipsControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "femaleTSMG_rig_spine1_hipsControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_hipsControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_hipsControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_spine1_hipsControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_FootControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_FootControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_FootControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_rightLeg1_FootControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_ToeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_ToeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_ToeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightArm1_HandControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightArm1_HandControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightArm1_HandControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "rightArm1_HandControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 1 1 12 1 24 1;
createNode animCurveTU -n "rightArm1_HandControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 1 1 12 1 24 1;
createNode animCurveTU -n "rightArm1_HandControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 1 1 12 1 24 1;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_UpperLegControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_UpperLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_UpperLegControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_rightLeg1_UpperLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_rightLeg1_LowerLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_rightLeg1_LowerLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_UpperLegControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_UpperLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_UpperLegControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_leftLeg1_UpperLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_LowerLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_leftLeg1_LowerLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_FootControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_FootControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_FootControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_leftLeg1_FootControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_ToeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_ToeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftLeg1_ToeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightArm1_UpperArmControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightArm1_UpperArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_rightArm1_UpperArmControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_rightArm1_UpperArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_rightArm1_LowerArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_rightArm1_LowerArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_leftArm1_UpperArmControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftArm1_UpperArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftArm1_UpperArmControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_leftArm1_UpperArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_leftArm1_LowerArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "femaleTSMG_rig_leftArm1_LowerArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTA -n "femaleTSMG_rig_leftArm1_HandControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftArm1_HandControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "femaleTSMG_rig_leftArm1_HandControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "leftArm1_HandControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 1 1 12 1 24 1;
createNode animCurveTU -n "leftArm1_HandControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 1 1 12 1 24 1;
createNode animCurveTU -n "leftArm1_HandControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 1 1 12 1 24 1;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 0\n                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 1\n                -manipulators 1\n                -pluginShapes 0\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 46 -ps 2 100 54 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 23 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode animCurveTL -n "leftArm1_ArmIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.1010289366199999 12 -1.1010289366199999
		 24 -1.1010289366199999;
createNode animCurveTL -n "leftArm1_ArmIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.107763192536 12 -0.107763192536 24 -0.107763192536;
createNode animCurveTL -n "leftArm1_ArmIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.68461947419400004 12 0.68461947419400004
		 24 0.68461947419400004;
createNode animCurveTA -n "leftArm1_ArmIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -96.640224759199995 12 -96.640224759199995
		 24 -96.640224759199995;
createNode animCurveTA -n "leftArm1_ArmIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -60.415385702499997 12 -60.415385702499997
		 24 -60.415385702499997;
createNode animCurveTA -n "leftArm1_ArmIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -253.09879036800004 12 -253.09879036800004
		 24 -253.09879036800004;
createNode animCurveTU -n "leftArm1_ArmIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "leftArm1_ArmIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "leftArm1_ArmIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "leftArm1_ArmIKControl_AutoStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "leftArm1_ArmIKControl_AntiIKPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "leftArm1_ArmIKControl_LowerArmStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "leftArm1_ArmIKControl_UpperArmStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTL -n "rightLeg1_LegIKControl_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.27276882739838332 3 0.273 9 0.13060545775171983
		 12 -0.067455319148936183 15 -0.067455319148936183 18 -0.067455319148936183 19 0.273
		 21 0.273 24 0.273;
	setAttr -s 9 ".kit[2:8]"  1 18 18 18 3 3 3;
	setAttr -s 9 ".kot[2:8]"  1 18 18 18 3 3 3;
	setAttr -s 9 ".kix[2:8]"  0.6306006908416748 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  -0.77610743045806885 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  0.6306006908416748 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  -0.77610749006271362 0 0 0 0 0 0;
createNode animCurveTL -n "rightLeg1_LegIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0.12527602061313337 9 0.1880881355934903
		 12 0 15 0 18 0 19 0 21 0 24 0;
	setAttr -s 9 ".kit[3:8]"  1 18 18 18 18 18;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[3:8]"  0.60440808534622192 1 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  -0.79667496681213379 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  0.47629508376121521 0.8709181547164917 
		1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0.87928551435470581 0.49142813682556152 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "rightLeg1_LegIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.51026402849100005 9 -0.064272391785333727
		 12 0.27094725813330289 24 -0.51026402849110597;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  0.32469066977500916 1;
	setAttr -s 4 ".kiy[2:3]"  0.94582027196884155 0;
	setAttr -s 4 ".kox[2:3]"  0.32469084858894348 1;
	setAttr -s 4 ".koy[2:3]"  0.94582027196884155 0;
createNode animCurveTA -n "rightLeg1_LegIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 13.59954590220968 6 8.6683788498223215
		 9 -55.73167742424404 12 0 15 0 18 0 19 0 21 0 24 0;
	setAttr -s 10 ".kit[1:9]"  1 1 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kot[1:9]"  1 1 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kix[1:9]"  0.27751684188842773 0.10799992084503174 
		1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0.96072077751159668 -0.99415093660354614 
		0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[1:9]"  0.2775169312953949 0.10799992829561234 
		1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  0.96072077751159668 -0.99415093660354614 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "rightLeg1_LegIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -111.91488751599999 3 -119.06802822725558
		 6 -121.530657259965 9 -121.31342034470022 12 -85.485686470371732 15 -79.18717629662892
		 18 -85.890114610681593 19 -89.820841012685975 21 -98.499742739103581 24 -111.91488751599999;
	setAttr -s 10 ".kit[0:9]"  1 18 3 18 1 18 1 18 
		18 1;
	setAttr -s 10 ".kot[0:9]"  1 18 3 18 1 18 1 18 
		18 1;
	setAttr -s 10 ".kix[0:9]"  0.49848872423171997 0.77874881029129028 
		1 0.99588543176651001 0.4301428496837616 1 0.54661548137664795 0.49387443065643311 
		0.47532880306243896 0.49467095732688904;
	setAttr -s 10 ".kiy[0:9]"  -0.86689621210098267 -0.62733578681945801 
		0 0.090621583163738251 0.90276086330413818 0 -0.83738374710083008 -0.8695332407951355 
		-0.87980830669403076 -0.86908036470413208;
	setAttr -s 10 ".kox[0:9]"  0.49848881363868713 0.77874881029129028 
		1 0.99588543176651001 0.43014287948608398 1 0.54661548137664795 0.49387443065643311 
		0.47532877326011658 0.49467089772224426;
	setAttr -s 10 ".koy[0:9]"  -0.86689615249633789 -0.62733578681945801 
		0 0.090621583163738251 0.90276080369949341 0 -0.83738380670547485 -0.8695332407951355 
		-0.87980824708938599 -0.86908036470413208;
createNode animCurveTA -n "rightLeg1_LegIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 31.011934836097463 6 9.4682139433381973
		 9 68.497129842724604 12 0 15 0 18 0 19 0 21 0 24 0;
createNode animCurveTU -n "rightLeg1_LegIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 19 1 21 1
		 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 19 1 21 1
		 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 19 1 21 1
		 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_AutoStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 19 0 21 0
		 24 0;
createNode animCurveTU -n "rightLeg1_LegIKControl_FootStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 9 1 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_HeelRaise";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 19 0 21 0
		 24 0;
createNode animCurveTU -n "rightLeg1_LegIKControl_HeelSwivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 19 0 21 0
		 24 0;
createNode animCurveTU -n "rightLeg1_LegIKControl_ToeRaise";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 19 0 21 0
		 24 0;
createNode animCurveTU -n "rightLeg1_LegIKControl_ToeSwivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 19 0 21 0
		 24 0;
createNode animCurveTU -n "rightLeg1_LegIKControl_UpperLegStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 19 1 21 1
		 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_LowerLegStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 19 1 21 1
		 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_AntiIKPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 19 0 21 0
		 24 0;
createNode animCurveTL -n "leftLeg1_LegIKControl_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -0.17556932745109999 3 -0.16625459189410369
		 6 -0.16562221654499704 8 -0.16381529068306355 9 0.18 12 0.18 15 0.18 18 0.18 21 -0.164
		 23 -0.164 24 -0.164;
	setAttr -s 11 ".kit[3:10]"  18 3 3 3 3 3 3 3;
	setAttr -s 11 ".kot[3:10]"  18 3 3 3 3 3 3 3;
createNode animCurveTL -n "leftLeg1_LegIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 0 8 0 9 0 12 0 15 0.085675494633451046
		 18 0.17135098926690209 21 0.1108044848802844 23 0.068443785660084092 24 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  0.8248482346534729 0.74832010269165039 
		1;
	setAttr -s 11 ".kiy[8:10]"  -0.56535428762435913 -0.6633378267288208 
		0;
	setAttr -s 11 ".kox[8:10]"  0.82484817504882812 0.74832010269165039 
		1;
	setAttr -s 11 ".koy[8:10]"  -0.56535422801971436 -0.66333776712417603 
		0;
createNode animCurveTL -n "leftLeg1_LegIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.43826295219 3 0.31850792016943613 6 0.11601086237874665
		 8 -0.015838763089000382 9 -0.082536480557566516 12 -0.39187867155913003 15 -0.41541943663612418
		 18 -0.0052366177015808965 21 0.26319879345318409 23 0.41655183421563474 24 0.43826295219;
createNode animCurveTA -n "leftLeg1_LegIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 0 8 0 9 0 12 0 15 30.681812616294131
		 18 65.454532740229297 21 27.713386946988138 23 -16.194514008949977 24 0;
	setAttr -s 11 ".kit[6:10]"  1 18 1 1 18;
	setAttr -s 11 ".kot[6:10]"  1 18 1 1 18;
	setAttr -s 11 ".kix[6:10]"  0.15587539970874786 1 0.12190235406160355 
		0.24002742767333984 1;
	setAttr -s 11 ".kiy[6:10]"  0.98777675628662109 0 -0.99254214763641357 
		0.97076612710952759 0;
	setAttr -s 11 ".kox[6:10]"  0.15587535500526428 1 0.12190236896276474 
		0.24002756178379059 1;
	setAttr -s 11 ".koy[6:10]"  0.98777675628662109 0 -0.99254214763641357 
		0.97076606750488281 0;
createNode animCurveTA -n "leftLeg1_LegIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -68.2571059502 3 -59.673349959835335 6 -53.585841845186557
		 8 -45.780780048595446 9 -41.547657700344843 12 -29.509473555503128 15 -36.921431530686029
		 18 -48.883289752851589 21 -56.808875801164255 23 -66.006593080736153 24 -68.2571059502;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  0.59450286626815796 0.53036254644393921 
		1;
	setAttr -s 11 ".kiy[8:10]"  -0.80409342050552368 -0.84777098894119263 
		0;
	setAttr -s 11 ".kox[8:10]"  0.59450292587280273 0.53036254644393921 
		1;
	setAttr -s 11 ".koy[8:10]"  -0.80409342050552368 -0.84777098894119263 
		0;
createNode animCurveTA -n "leftLeg1_LegIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 0 8 0 9 0 12 0 15 3.9783786833500201e-15
		 18 0 21 -3.592317308765161 23 -0.93134228580602751 24 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.89386081695556641 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.44834458827972412 0;
	setAttr -s 11 ".kox[8:10]"  1 0.89386081695556641 1;
	setAttr -s 11 ".koy[8:10]"  0 0.44834458827972412 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 8 1 9 1 12 1 15 1 18 1 21 1
		 23 1 24 1;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 8 1 9 1 12 1 15 1 18 1 21 1
		 23 1 24 1;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 8 1 9 1 12 1 15 1 18 1 21 1
		 23 1 24 1;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_AutoStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 0 8 0 9 0 12 0 15 0 18 0 21 0
		 23 0 24 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_FootStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 8 1 9 1 12 1 15 1 18 1 21 1
		 23 1 24 1;
createNode animCurveTU -n "leftLeg1_LegIKControl_HeelRaise";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 0 8 0 9 0 12 0 15 26.6 18 0 21 0
		 23 0 24 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_HeelSwivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 0 8 0 9 0 12 0 15 0 18 0 21 0
		 23 0 24 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_ToeRaise";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 0 8 0 9 0 12 0 15 0 18 0 21 0
		 23 0 24 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_ToeSwivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 0 8 0 9 0 12 0 15 0 18 0 21 0
		 23 0 24 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_UpperLegStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 8 1 9 1 12 1 15 1 18 1 21 1
		 23 1 24 1;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_LowerLegStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 3 1 6 1 8 1 9 1 12 1 15 1 18 1 21 1
		 23 1 24 1;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_AntiIKPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 6 0 8 0 9 0 12 0 15 0 18 0 21 0
		 23 0 24 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "rightArm1_ArmIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.625832153324 12 0.625832153324 24 0.625832153324;
createNode animCurveTL -n "rightArm1_ArmIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.18955543708299999 12 -0.18955543708299999
		 24 -0.18955543708299999;
createNode animCurveTL -n "rightArm1_ArmIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.16204297286399999 12 -0.16204297286399999
		 24 -0.16204297286399999;
createNode animCurveTA -n "rightArm1_ArmIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_ArmIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -54.524129549400001 12 -54.524129549400001
		 24 -54.524129549400001;
createNode animCurveTA -n "rightArm1_ArmIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "rightArm1_ArmIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "rightArm1_ArmIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "rightArm1_ArmIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "rightArm1_ArmIKControl_AutoStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "rightArm1_ArmIKControl_AntiIKPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "rightArm1_ArmIKControl_LowerArmStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "rightArm1_ArmIKControl_UpperArmStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTL -n "head1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "head1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "head1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "head1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 74.938177617400001 12 75.191110776116219
		 24 74.938177617400001;
createNode animCurveTA -n "head1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.7799606972900004 12 -2.7799606972856612
		 24 -2.7799606972900004;
createNode animCurveTA -n "head1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -10.39540914 12 -10.395409140015488 24 -10.39540914;
createNode animCurveTU -n "head1_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "head1_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "head1_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "TSMG_root_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "TSMG_root_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "TSMG_root_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "TSMG_root_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "TSMG_root_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "TSMG_root_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "TSMG_root_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 24 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "TSMG_upper_body_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.079787234042553168 6 -0.063829787234042534
		 12 -0.063829787234042534 18 -0.063829787234042534 24 -0.079787234042553168;
createNode animCurveTL -n "TSMG_upper_body_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.29 6 -0.085 12 -0.29030224084823042
		 18 -0.084987012174571136 24 -0.29;
	setAttr -s 5 ".kit[0:4]"  3 18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
	setAttr -s 5 ".kix[2:4]"  0.6285628080368042 1 0.6294819712638855;
	setAttr -s 5 ".kiy[2:4]"  -0.7777588963508606 0 -0.77701514959335327;
	setAttr -s 5 ".kox[0:4]"  0.56039661169052124 1 0.54877638816833496 
		1 0.52939772605895996;
	setAttr -s 5 ".koy[0:4]"  0.82822442054748535 0 0.83596920967102051 
		0 0.84837377071380615;
createNode animCurveTL -n "TSMG_upper_body_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "TSMG_upper_body_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "TSMG_upper_body_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -90 6 -90 12 -90 18 -90 24 -90;
createNode animCurveTA -n "TSMG_upper_body_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_head1_controlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.1 6 0.1 12 0.1 18 0.1 24 0.1;
createNode animCurveTU -n "TSMG_upper_body_head1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 24 1;
createNode animCurveTU -n "TSMG_upper_body_leftArm1_controlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.074416220188099999 6 0.074416220188099999
		 12 0.074416220188099999 18 0.074416220188099999 24 0.074416220188099999;
createNode animCurveTU -n "TSMG_upper_body_leftArm1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 24 1;
createNode animCurveTU -n "TSMG_upper_body_leftArm1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_leftLeg1_ControlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.070508211851099997 6 0.070508211851099997
		 12 0.070508211851099997 18 0.070508211851099997 24 0.070508211851099997;
createNode animCurveTU -n "TSMG_upper_body_leftLeg1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 24 1;
createNode animCurveTU -n "TSMG_upper_body_leftLeg1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_rightArm1_controlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.074416220188099999 6 0.074416220188099999
		 12 0.074416220188099999 18 0.074416220188099999 24 0.074416220188099999;
createNode animCurveTU -n "TSMG_upper_body_rightArm1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 24 1;
createNode animCurveTU -n "TSMG_upper_body_rightArm1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_rightLeg1_ControlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.070508211851099997 6 0.070508211851099997
		 12 0.070508211851099997 18 0.070508211851099997 24 0.070508211851099997;
createNode animCurveTU -n "TSMG_upper_body_rightLeg1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 24 1;
	setAttr -s 8 ".kbd[1:7]" yes no no no no no no;
createNode animCurveTU -n "TSMG_upper_body_rightLeg1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_spine1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 9 1 12 1 15 1 18 1 24 1;
createNode animCurveTU -n "TSMG_upper_body_spine1_ControlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.1 6 0.1 12 0.1 18 0.1 24 0.1;
createNode animCurveTA -n "leftLeg1_IKHeelControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_IKHeelControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_IKHeelControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_IKHeelControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_IKHeelControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_IKHeelControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger3_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger3_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger3_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger3_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger3_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger3_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger3_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger3_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger3_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger4_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger4_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger4_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger4_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger4_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger4_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger4_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger4_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger4_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_UpperLegControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_UpperLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_UpperLegControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "leftLeg1_UpperLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "leftLeg1_LowerLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "leftLeg1_LowerLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "leftLeg1_FootControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_FootControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_FootControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "leftLeg1_FootControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "leftLeg1_ToeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_ToeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_ToeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_LegIKKneeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_LegIKKneeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 12 0 24 0;
createNode animCurveTA -n "leftLeg1_LegIKKneeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.1552990815399999 12 0 24 1.1552990815399999;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftThumb1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftThumb1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftThumb1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftThumb1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftThumb1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftThumb1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftThumb1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftThumb1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftThumb1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_ClavicalControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_ClavicalControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_ClavicalControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "rightArm1_ClavicalControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_UpperArmControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_UpperArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_UpperArmControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "rightArm1_UpperArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "rightArm1_LowerArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "rightArm1_LowerArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "rightArm1_HandControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_HandControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_HandControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_ArmIKElbowControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_ArmIKElbowControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightArm1_ArmIKElbowControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger2_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger2_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger2_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger3_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger3_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger3_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger3_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger3_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger3_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger3_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger3_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger3_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger4_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger4_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightFinger4_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger4_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger4_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightFinger4_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger4_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger4_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightFinger4_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_UpperLegControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_UpperLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_UpperLegControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "rightLeg1_UpperLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "rightLeg1_LowerLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "rightLeg1_LowerLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "rightLeg1_FootControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_FootControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_FootControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "rightLeg1_FootControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "rightLeg1_ToeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_ToeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_ToeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_LegIKKneeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_LegIKKneeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 3 0 12 0 24 0;
createNode animCurveTA -n "rightLeg1_LegIKKneeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.9960159799300001 12 0 24 -4.9960159799300001;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightThumb1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightThumb1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_RHAND_rightThumb1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightThumb1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightThumb1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_RHAND_rightThumb1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightThumb1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightThumb1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_RHAND_rightThumb1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "head1_neckControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "head1_neckControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "head1_neckControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_lowerSpineControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_lowerSpineControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_lowerSpineControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_lowerSpineControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_lowerSpineControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_lowerSpineControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_middleSpineControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_middleSpineControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_middleSpineControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_middleSpineControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_middleSpineControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_middleSpineControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_torsoControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_torsoControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_torsoControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_torsoControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_torsoControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_torsoControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_hipsControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_hipsControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_hipsControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_hipsControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_hipsControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_hipsControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_hipsIKControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 12 0.0069014003876584837 18 -0.021450122448447059
		 24 0;
	setAttr -s 4 ".kit[2:3]"  18 1;
	setAttr -s 4 ".kot[2:3]"  18 1;
	setAttr -s 4 ".kix[0:3]"  0.8138047456741333 0.8213341236114502 1 
		0.81646013259887695;
	setAttr -s 4 ".kiy[0:3]"  0.5811384916305542 -0.57044738531112671 
		0 0.57740193605422974;
	setAttr -s 4 ".kox[0:3]"  0.81380462646484375 0.82133418321609497 
		1 0.81646013259887695;
	setAttr -s 4 ".koy[0:3]"  0.58113861083984375 -0.57044738531112671 
		0 0.57740193605422974;
createNode animCurveTL -n "spine1_hipsIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 3 8.3322837141423279e-19 12 7.6643190350428314e-19
		 15 2.6346096682959735e-19 18 9.6158817522991076e-19 24 0;
createNode animCurveTL -n "spine1_hipsIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 3 1.5041113797985136e-17 12 1.383532999416223e-17
		 15 4.7558946854932662e-18 18 1.7358214946379464e-17 24 0;
createNode animCurveTA -n "spine1_hipsIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 3 0 12 0 15 0 18 0 24 0;
createNode animCurveTA -n "spine1_hipsIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -20 12 20 18 3.1805546814635168e-15 24 -20;
createNode animCurveTA -n "spine1_hipsIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 3 0 12 0 15 0 18 0 24 0;
createNode animCurveTU -n "spine1_hipsIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 3 1 12 1 15 1 18 1 24 1;
createNode animCurveTU -n "spine1_hipsIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 3 1 12 1 15 1 18 1 24 1;
createNode animCurveTU -n "spine1_hipsIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 3 1 12 1 15 1 18 1 24 1;
createNode animCurveTL -n "spine1_torsoIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_torsoIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_torsoIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_torsoIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 -4.9929860959098313 24 0;
createNode animCurveTA -n "spine1_torsoIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -27.032672208499999 12 -26.601765651674903
		 24 -27.032672208499999;
createNode animCurveTA -n "spine1_torsoIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 11.03999215073963 24 0;
createNode animCurveTU -n "spine1_torsoIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "spine1_torsoIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "spine1_torsoIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTL -n "spine1_middleSpineIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_middleSpineIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "spine1_middleSpineIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_middleSpineIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_middleSpineIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "spine1_middleSpineIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "spine1_middleSpineIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "spine1_middleSpineIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "spine1_middleSpineIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "leftArm1_ClavicalControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_ClavicalControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_ClavicalControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "leftArm1_ClavicalControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_UpperArmControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_UpperArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_UpperArmControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "leftArm1_UpperArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "leftArm1_LowerArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "leftArm1_LowerArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "leftArm1_HandControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_HandControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_HandControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_ArmIKElbowControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_ArmIKElbowControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "leftArm1_ArmIKElbowControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -49.656361183599998 12 -49.656361183599998
		 24 -49.656361183599998;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTL -n "femalseTSMG_rig_LHAND_leftFinger2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "femalseTSMG_rig_LHAND_leftFinger2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger2_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger2_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "femalseTSMG_rig_LHAND_leftFinger2_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 322 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".hyp[118].nvs" 1920;
	setAttr ".hyp[119].nvs" 1920;
	setAttr ".hyp[120].nvs" 1920;
	setAttr ".hyp[121].nvs" 1920;
	setAttr ".hyp[122].nvs" 1920;
	setAttr ".hyp[123].nvs" 1920;
	setAttr ".hyp[124].nvs" 1920;
	setAttr ".hyp[125].nvs" 1920;
	setAttr ".hyp[126].nvs" 1920;
	setAttr ".hyp[127].nvs" 1920;
	setAttr ".hyp[128].nvs" 1920;
	setAttr ".hyp[129].nvs" 1920;
	setAttr ".hyp[130].nvs" 1920;
	setAttr ".hyp[131].nvs" 1920;
	setAttr ".hyp[132].nvs" 1920;
	setAttr ".hyp[133].nvs" 1920;
	setAttr ".hyp[134].nvs" 1920;
	setAttr ".hyp[135].nvs" 1920;
	setAttr ".hyp[136].nvs" 1920;
	setAttr ".hyp[137].nvs" 1920;
	setAttr ".hyp[138].nvs" 1920;
	setAttr ".hyp[139].nvs" 1920;
	setAttr ".hyp[140].nvs" 1920;
	setAttr ".hyp[141].nvs" 1920;
	setAttr ".hyp[142].nvs" 1920;
	setAttr ".hyp[143].nvs" 1920;
	setAttr ".hyp[144].nvs" 1920;
	setAttr ".hyp[145].nvs" 1920;
	setAttr ".hyp[146].nvs" 1920;
	setAttr ".hyp[147].nvs" 1920;
	setAttr ".hyp[148].nvs" 1920;
	setAttr ".hyp[149].nvs" 1920;
	setAttr ".hyp[150].nvs" 1920;
	setAttr ".hyp[151].nvs" 1920;
	setAttr ".hyp[152].nvs" 1920;
	setAttr ".hyp[153].nvs" 1920;
	setAttr ".hyp[154].nvs" 1920;
	setAttr ".hyp[155].nvs" 1920;
	setAttr ".hyp[156].nvs" 1920;
	setAttr ".hyp[157].nvs" 1920;
	setAttr ".hyp[158].nvs" 1920;
	setAttr ".hyp[159].nvs" 1920;
	setAttr ".hyp[160].nvs" 1920;
	setAttr ".hyp[161].nvs" 1920;
	setAttr ".hyp[162].nvs" 1920;
	setAttr ".hyp[163].nvs" 1920;
	setAttr ".hyp[164].nvs" 1920;
	setAttr ".hyp[165].nvs" 1920;
	setAttr ".hyp[166].nvs" 1920;
	setAttr ".hyp[167].nvs" 1920;
	setAttr ".hyp[168].nvs" 1920;
	setAttr ".hyp[169].nvs" 1920;
	setAttr ".hyp[170].nvs" 1920;
	setAttr ".hyp[171].nvs" 1920;
	setAttr ".hyp[172].nvs" 1920;
	setAttr ".hyp[173].nvs" 1920;
	setAttr ".hyp[174].nvs" 1920;
	setAttr ".hyp[175].nvs" 1920;
	setAttr ".hyp[176].nvs" 1920;
	setAttr ".hyp[177].nvs" 1920;
	setAttr ".hyp[178].nvs" 1920;
	setAttr ".hyp[179].nvs" 1920;
	setAttr ".hyp[180].nvs" 1920;
	setAttr ".hyp[181].nvs" 1920;
	setAttr ".hyp[182].nvs" 1920;
	setAttr ".hyp[183].nvs" 1920;
	setAttr ".hyp[184].nvs" 1920;
	setAttr ".hyp[185].nvs" 1920;
	setAttr ".hyp[186].nvs" 1920;
	setAttr ".hyp[187].nvs" 1920;
	setAttr ".hyp[188].nvs" 1920;
	setAttr ".hyp[189].nvs" 1920;
	setAttr ".hyp[190].nvs" 1920;
	setAttr ".hyp[191].nvs" 1920;
	setAttr ".hyp[192].nvs" 1920;
	setAttr ".hyp[193].nvs" 1920;
	setAttr ".hyp[194].nvs" 1920;
	setAttr ".hyp[195].nvs" 1920;
	setAttr ".hyp[196].nvs" 1920;
	setAttr ".hyp[197].nvs" 1920;
	setAttr ".hyp[198].nvs" 1920;
	setAttr ".hyp[199].nvs" 1920;
	setAttr ".hyp[200].nvs" 1920;
	setAttr ".hyp[201].nvs" 1920;
	setAttr ".hyp[202].nvs" 1920;
	setAttr ".hyp[203].nvs" 1920;
	setAttr ".hyp[204].nvs" 1920;
	setAttr ".hyp[205].nvs" 1920;
	setAttr ".hyp[206].nvs" 1920;
	setAttr ".hyp[207].nvs" 1920;
	setAttr ".hyp[208].nvs" 1920;
	setAttr ".hyp[209].nvs" 1920;
	setAttr ".hyp[210].nvs" 1920;
	setAttr ".hyp[211].nvs" 1920;
	setAttr ".hyp[212].nvs" 1920;
	setAttr ".hyp[213].nvs" 1920;
	setAttr ".hyp[214].nvs" 1920;
	setAttr ".hyp[215].nvs" 1920;
	setAttr ".hyp[216].nvs" 1920;
	setAttr ".hyp[217].nvs" 1920;
	setAttr ".hyp[218].nvs" 1920;
	setAttr ".hyp[219].nvs" 1920;
	setAttr ".hyp[220].nvs" 1920;
	setAttr ".hyp[221].nvs" 1920;
	setAttr ".hyp[222].nvs" 1920;
	setAttr ".hyp[223].nvs" 1920;
	setAttr ".hyp[224].nvs" 1920;
	setAttr ".hyp[225].nvs" 1920;
	setAttr ".hyp[226].nvs" 1920;
	setAttr ".hyp[227].nvs" 1920;
	setAttr ".hyp[228].nvs" 1920;
	setAttr ".hyp[229].nvs" 1920;
	setAttr ".hyp[230].nvs" 1920;
	setAttr ".hyp[231].nvs" 1920;
	setAttr ".hyp[232].nvs" 1920;
	setAttr ".hyp[233].nvs" 1920;
	setAttr ".hyp[234].nvs" 1920;
	setAttr ".hyp[235].nvs" 1920;
	setAttr ".hyp[236].nvs" 1920;
	setAttr ".hyp[237].nvs" 1920;
	setAttr ".hyp[238].nvs" 1920;
	setAttr ".hyp[239].nvs" 1920;
	setAttr ".hyp[240].nvs" 1920;
	setAttr ".hyp[241].nvs" 1920;
	setAttr ".hyp[242].nvs" 1920;
	setAttr ".hyp[243].nvs" 1920;
	setAttr ".hyp[244].nvs" 1920;
	setAttr ".hyp[245].nvs" 1920;
	setAttr ".hyp[246].nvs" 1920;
	setAttr ".hyp[247].nvs" 1920;
	setAttr ".hyp[248].nvs" 1920;
	setAttr ".hyp[249].nvs" 1920;
	setAttr ".hyp[250].nvs" 1920;
	setAttr ".hyp[251].nvs" 1920;
	setAttr ".hyp[252].nvs" 1920;
	setAttr ".hyp[253].nvs" 1920;
	setAttr ".hyp[254].nvs" 1920;
	setAttr ".hyp[255].nvs" 1920;
	setAttr ".hyp[256].nvs" 1920;
	setAttr ".hyp[257].nvs" 1920;
	setAttr ".hyp[258].nvs" 1920;
	setAttr ".hyp[259].nvs" 1920;
	setAttr ".hyp[260].nvs" 1920;
	setAttr ".hyp[261].nvs" 1920;
	setAttr ".hyp[262].nvs" 1920;
	setAttr ".hyp[263].nvs" 1920;
	setAttr ".hyp[264].nvs" 1920;
	setAttr ".hyp[265].nvs" 1920;
	setAttr ".hyp[266].nvs" 1920;
	setAttr ".hyp[267].nvs" 1920;
	setAttr ".hyp[268].nvs" 1920;
	setAttr ".hyp[269].nvs" 1920;
	setAttr ".hyp[270].nvs" 1920;
	setAttr ".hyp[271].nvs" 1920;
	setAttr ".hyp[272].nvs" 1920;
	setAttr ".hyp[273].nvs" 1920;
	setAttr ".hyp[274].nvs" 1920;
	setAttr ".hyp[275].nvs" 1920;
	setAttr ".hyp[276].nvs" 1920;
	setAttr ".hyp[277].nvs" 1920;
	setAttr ".hyp[278].nvs" 1920;
	setAttr ".hyp[279].nvs" 1920;
	setAttr ".hyp[280].nvs" 1920;
	setAttr ".hyp[281].nvs" 1920;
	setAttr ".hyp[282].nvs" 1920;
	setAttr ".hyp[283].nvs" 1920;
	setAttr ".hyp[284].nvs" 1920;
	setAttr ".hyp[285].nvs" 1920;
	setAttr ".hyp[286].nvs" 1920;
	setAttr ".hyp[287].nvs" 1920;
	setAttr ".hyp[288].nvs" 1920;
	setAttr ".hyp[289].nvs" 1920;
	setAttr ".hyp[290].nvs" 1920;
	setAttr ".hyp[291].nvs" 1920;
	setAttr ".hyp[292].nvs" 1920;
	setAttr ".hyp[293].nvs" 1920;
	setAttr ".hyp[294].nvs" 1920;
	setAttr ".hyp[295].nvs" 1920;
	setAttr ".hyp[296].nvs" 1920;
	setAttr ".hyp[297].nvs" 1920;
	setAttr ".hyp[298].nvs" 1920;
	setAttr ".hyp[299].nvs" 1920;
	setAttr ".hyp[300].nvs" 1920;
	setAttr ".hyp[301].nvs" 1920;
	setAttr ".hyp[302].nvs" 1920;
	setAttr ".hyp[303].nvs" 1920;
	setAttr ".hyp[304].nvs" 1920;
	setAttr ".hyp[305].nvs" 1920;
	setAttr ".hyp[306].nvs" 1920;
	setAttr ".hyp[307].nvs" 1920;
	setAttr ".hyp[308].nvs" 1920;
	setAttr ".hyp[309].nvs" 1920;
	setAttr ".hyp[310].nvs" 1920;
	setAttr ".hyp[311].nvs" 1920;
	setAttr ".hyp[312].nvs" 1920;
	setAttr ".hyp[313].nvs" 1920;
	setAttr ".hyp[314].nvs" 1920;
	setAttr ".hyp[315].nvs" 1920;
	setAttr ".hyp[316].nvs" 1920;
	setAttr ".hyp[317].nvs" 1920;
	setAttr ".hyp[318].nvs" 1920;
	setAttr ".hyp[319].nvs" 1920;
	setAttr ".hyp[320].nvs" 1920;
	setAttr ".hyp[321].nvs" 1920;
	setAttr ".anf" yes;
createNode animCurveTL -n "leftFinger1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger3_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger3_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger3_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger4_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger4_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftFinger4_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftThumb1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftThumb1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "leftThumb1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger3_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger3_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger3_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger4_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger4_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightFinger4_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightThumb1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightThumb1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "rightThumb1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightThumb1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightThumb1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightThumb1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightThumb1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightThumb1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightThumb1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger2_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger2_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger2_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger3_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger3_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger3_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger3_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger3_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger3_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger4_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger4_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "rightFinger4_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger4_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger4_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "rightFinger4_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger3_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger3_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger3_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger3_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger3_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger3_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger4_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger4_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger4_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger4_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger4_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger4_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftThumb1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftThumb1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftThumb1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftThumb1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftThumb1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftThumb1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "leftFinger2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger2_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger2_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "leftFinger2_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 16;
	setAttr ".unw" 16;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".s";
select -ne :lightList1;
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 441 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultResolution;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -k on ".pa" 1;
	setAttr -k on ".al";
	setAttr -av ".dar";
	setAttr -k on ".ldar";
	setAttr -k on ".off";
	setAttr -k on ".fld";
	setAttr -k on ".zsl";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -cb on ".hwcc";
	setAttr -cb on ".hwdp";
	setAttr -cb on ".hwql";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".mbe" yes;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc" -type "float3" 0.75 0.75 0.75 ;
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex" 1;
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef" 24;
	setAttr -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf" 24;
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "iconTmp";
	setAttr -k on ".if" 20;
	setAttr ".res" -type "string" "104x82 104 82 0";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "TSMG_root_visibility.o" "femaleTSMG_rigRN.phl[392]";
connectAttr "TSMG_root_translateX.o" "femaleTSMG_rigRN.phl[393]";
connectAttr "TSMG_root_translateY.o" "femaleTSMG_rigRN.phl[394]";
connectAttr "TSMG_root_translateZ.o" "femaleTSMG_rigRN.phl[395]";
connectAttr "TSMG_root_rotateX.o" "femaleTSMG_rigRN.phl[396]";
connectAttr "TSMG_root_rotateY.o" "femaleTSMG_rigRN.phl[397]";
connectAttr "TSMG_root_rotateZ.o" "femaleTSMG_rigRN.phl[398]";
connectAttr "TSMG_upper_body_head1_controlSize.o" "femaleTSMG_rigRN.phl[399]";
connectAttr "TSMG_upper_body_head1_RotationIsolationSwitch.o" "femaleTSMG_rigRN.phl[400]"
		;
connectAttr "TSMG_upper_body_leftArm1_controlSize.o" "femaleTSMG_rigRN.phl[401]"
		;
connectAttr "TSMG_upper_body_leftArm1_FKIKSwitch.o" "femaleTSMG_rigRN.phl[402]";
connectAttr "TSMG_upper_body_leftArm1_RotationIsolationSwitch.o" "femaleTSMG_rigRN.phl[403]"
		;
connectAttr "TSMG_upper_body_leftLeg1_ControlSize.o" "femaleTSMG_rigRN.phl[404]"
		;
connectAttr "TSMG_upper_body_leftLeg1_FKIKSwitch.o" "femaleTSMG_rigRN.phl[405]";
connectAttr "TSMG_upper_body_leftLeg1_RotationIsolationSwitch.o" "femaleTSMG_rigRN.phl[406]"
		;
connectAttr "TSMG_upper_body_rightArm1_controlSize.o" "femaleTSMG_rigRN.phl[407]"
		;
connectAttr "TSMG_upper_body_rightArm1_FKIKSwitch.o" "femaleTSMG_rigRN.phl[408]"
		;
connectAttr "TSMG_upper_body_rightArm1_RotationIsolationSwitch.o" "femaleTSMG_rigRN.phl[409]"
		;
connectAttr "TSMG_upper_body_rightLeg1_ControlSize.o" "femaleTSMG_rigRN.phl[410]"
		;
connectAttr "TSMG_upper_body_rightLeg1_FKIKSwitch.o" "femaleTSMG_rigRN.phl[411]"
		;
connectAttr "TSMG_upper_body_rightLeg1_RotationIsolationSwitch.o" "femaleTSMG_rigRN.phl[412]"
		;
connectAttr "TSMG_upper_body_spine1_FKIKSwitch.o" "femaleTSMG_rigRN.phl[413]";
connectAttr "TSMG_upper_body_spine1_ControlSize.o" "femaleTSMG_rigRN.phl[414]";
connectAttr "TSMG_upper_body_translateX.o" "femaleTSMG_rigRN.phl[415]";
connectAttr "TSMG_upper_body_translateY.o" "femaleTSMG_rigRN.phl[416]";
connectAttr "TSMG_upper_body_translateZ.o" "femaleTSMG_rigRN.phl[417]";
connectAttr "TSMG_upper_body_rotateX.o" "femaleTSMG_rigRN.phl[418]";
connectAttr "TSMG_upper_body_rotateY.o" "femaleTSMG_rigRN.phl[419]";
connectAttr "TSMG_upper_body_rotateZ.o" "femaleTSMG_rigRN.phl[420]";
connectAttr "TSMG_upper_body_visibility.o" "femaleTSMG_rigRN.phl[421]";
connectAttr "leftArm1_ArmIKControl_AutoStretch.o" "femaleTSMG_rigRN.phl[422]";
connectAttr "leftArm1_ArmIKControl_AntiIKPop.o" "femaleTSMG_rigRN.phl[423]";
connectAttr "leftArm1_ArmIKControl_LowerArmStretch.o" "femaleTSMG_rigRN.phl[424]"
		;
connectAttr "leftArm1_ArmIKControl_UpperArmStretch.o" "femaleTSMG_rigRN.phl[425]"
		;
connectAttr "leftArm1_ArmIKControl_rotateX.o" "femaleTSMG_rigRN.phl[426]";
connectAttr "leftArm1_ArmIKControl_rotateY.o" "femaleTSMG_rigRN.phl[427]";
connectAttr "leftArm1_ArmIKControl_rotateZ.o" "femaleTSMG_rigRN.phl[428]";
connectAttr "leftArm1_ArmIKControl_translateX.o" "femaleTSMG_rigRN.phl[429]";
connectAttr "leftArm1_ArmIKControl_translateY.o" "femaleTSMG_rigRN.phl[430]";
connectAttr "leftArm1_ArmIKControl_translateZ.o" "femaleTSMG_rigRN.phl[431]";
connectAttr "leftArm1_ArmIKControl_scaleX.o" "femaleTSMG_rigRN.phl[432]";
connectAttr "leftArm1_ArmIKControl_scaleY.o" "femaleTSMG_rigRN.phl[433]";
connectAttr "leftArm1_ArmIKControl_scaleZ.o" "femaleTSMG_rigRN.phl[434]";
connectAttr "leftLeg1_LegIKControl_AutoStretch.o" "femaleTSMG_rigRN.phl[435]";
connectAttr "leftLeg1_LegIKControl_FootStretch.o" "femaleTSMG_rigRN.phl[436]";
connectAttr "leftLeg1_LegIKControl_HeelRaise.o" "femaleTSMG_rigRN.phl[437]";
connectAttr "leftLeg1_LegIKControl_HeelSwivel.o" "femaleTSMG_rigRN.phl[438]";
connectAttr "leftLeg1_LegIKControl_ToeRaise.o" "femaleTSMG_rigRN.phl[439]";
connectAttr "leftLeg1_LegIKControl_ToeSwivel.o" "femaleTSMG_rigRN.phl[440]";
connectAttr "leftLeg1_LegIKControl_UpperLegStretch.o" "femaleTSMG_rigRN.phl[441]"
		;
connectAttr "leftLeg1_LegIKControl_LowerLegStretch.o" "femaleTSMG_rigRN.phl[442]"
		;
connectAttr "leftLeg1_LegIKControl_AntiIKPop.o" "femaleTSMG_rigRN.phl[443]";
connectAttr "leftLeg1_LegIKControl_translateX.o" "femaleTSMG_rigRN.phl[444]";
connectAttr "leftLeg1_LegIKControl_translateY.o" "femaleTSMG_rigRN.phl[445]";
connectAttr "leftLeg1_LegIKControl_translateZ.o" "femaleTSMG_rigRN.phl[446]";
connectAttr "leftLeg1_LegIKControl_rotateX.o" "femaleTSMG_rigRN.phl[447]";
connectAttr "leftLeg1_LegIKControl_rotateY.o" "femaleTSMG_rigRN.phl[448]";
connectAttr "leftLeg1_LegIKControl_rotateZ.o" "femaleTSMG_rigRN.phl[449]";
connectAttr "leftLeg1_LegIKControl_scaleX.o" "femaleTSMG_rigRN.phl[450]";
connectAttr "leftLeg1_LegIKControl_scaleY.o" "femaleTSMG_rigRN.phl[451]";
connectAttr "leftLeg1_LegIKControl_scaleZ.o" "femaleTSMG_rigRN.phl[452]";
connectAttr "leftLeg1_IKHeelControl_rotateX.o" "femaleTSMG_rigRN.phl[453]";
connectAttr "leftLeg1_IKHeelControl_rotateY.o" "femaleTSMG_rigRN.phl[454]";
connectAttr "leftLeg1_IKHeelControl_rotateZ.o" "femaleTSMG_rigRN.phl[455]";
connectAttr "rightArm1_ArmIKControl_AutoStretch.o" "femaleTSMG_rigRN.phl[456]";
connectAttr "rightArm1_ArmIKControl_AntiIKPop.o" "femaleTSMG_rigRN.phl[457]";
connectAttr "rightArm1_ArmIKControl_LowerArmStretch.o" "femaleTSMG_rigRN.phl[458]"
		;
connectAttr "rightArm1_ArmIKControl_UpperArmStretch.o" "femaleTSMG_rigRN.phl[459]"
		;
connectAttr "rightArm1_ArmIKControl_rotateX.o" "femaleTSMG_rigRN.phl[460]";
connectAttr "rightArm1_ArmIKControl_rotateY.o" "femaleTSMG_rigRN.phl[461]";
connectAttr "rightArm1_ArmIKControl_rotateZ.o" "femaleTSMG_rigRN.phl[462]";
connectAttr "rightArm1_ArmIKControl_translateX.o" "femaleTSMG_rigRN.phl[463]";
connectAttr "rightArm1_ArmIKControl_translateY.o" "femaleTSMG_rigRN.phl[464]";
connectAttr "rightArm1_ArmIKControl_translateZ.o" "femaleTSMG_rigRN.phl[465]";
connectAttr "rightArm1_ArmIKControl_scaleX.o" "femaleTSMG_rigRN.phl[466]";
connectAttr "rightArm1_ArmIKControl_scaleY.o" "femaleTSMG_rigRN.phl[467]";
connectAttr "rightArm1_ArmIKControl_scaleZ.o" "femaleTSMG_rigRN.phl[468]";
connectAttr "rightLeg1_LegIKControl_AutoStretch.o" "femaleTSMG_rigRN.phl[469]";
connectAttr "rightLeg1_LegIKControl_FootStretch.o" "femaleTSMG_rigRN.phl[470]";
connectAttr "rightLeg1_LegIKControl_HeelRaise.o" "femaleTSMG_rigRN.phl[471]";
connectAttr "rightLeg1_LegIKControl_HeelSwivel.o" "femaleTSMG_rigRN.phl[472]";
connectAttr "rightLeg1_LegIKControl_ToeRaise.o" "femaleTSMG_rigRN.phl[473]";
connectAttr "rightLeg1_LegIKControl_ToeSwivel.o" "femaleTSMG_rigRN.phl[474]";
connectAttr "rightLeg1_LegIKControl_UpperLegStretch.o" "femaleTSMG_rigRN.phl[475]"
		;
connectAttr "rightLeg1_LegIKControl_LowerLegStretch.o" "femaleTSMG_rigRN.phl[476]"
		;
connectAttr "rightLeg1_LegIKControl_AntiIKPop.o" "femaleTSMG_rigRN.phl[477]";
connectAttr "rightLeg1_LegIKControl_translateX.o" "femaleTSMG_rigRN.phl[478]";
connectAttr "rightLeg1_LegIKControl_translateY.o" "femaleTSMG_rigRN.phl[479]";
connectAttr "rightLeg1_LegIKControl_translateZ.o" "femaleTSMG_rigRN.phl[480]";
connectAttr "rightLeg1_LegIKControl_rotateX.o" "femaleTSMG_rigRN.phl[481]";
connectAttr "rightLeg1_LegIKControl_rotateY.o" "femaleTSMG_rigRN.phl[482]";
connectAttr "rightLeg1_LegIKControl_rotateZ.o" "femaleTSMG_rigRN.phl[483]";
connectAttr "rightLeg1_LegIKControl_scaleX.o" "femaleTSMG_rigRN.phl[484]";
connectAttr "rightLeg1_LegIKControl_scaleY.o" "femaleTSMG_rigRN.phl[485]";
connectAttr "rightLeg1_LegIKControl_scaleZ.o" "femaleTSMG_rigRN.phl[486]";
connectAttr "rightLeg1_IKHeelControl_rotateX.o" "femaleTSMG_rigRN.phl[487]";
connectAttr "rightLeg1_IKHeelControl_rotateY.o" "femaleTSMG_rigRN.phl[488]";
connectAttr "rightLeg1_IKHeelControl_rotateZ.o" "femaleTSMG_rigRN.phl[489]";
connectAttr "head1_neckControl_rotateX.o" "femaleTSMG_rigRN.phl[490]";
connectAttr "head1_neckControl_rotateY.o" "femaleTSMG_rigRN.phl[491]";
connectAttr "head1_neckControl_rotateZ.o" "femaleTSMG_rigRN.phl[492]";
connectAttr "head1_Control_translateX.o" "femaleTSMG_rigRN.phl[493]";
connectAttr "head1_Control_translateY.o" "femaleTSMG_rigRN.phl[494]";
connectAttr "head1_Control_translateZ.o" "femaleTSMG_rigRN.phl[495]";
connectAttr "head1_Control_rotateX.o" "femaleTSMG_rigRN.phl[496]";
connectAttr "head1_Control_rotateY.o" "femaleTSMG_rigRN.phl[497]";
connectAttr "head1_Control_rotateZ.o" "femaleTSMG_rigRN.phl[498]";
connectAttr "head1_Control_scaleX.o" "femaleTSMG_rigRN.phl[499]";
connectAttr "head1_Control_scaleY.o" "femaleTSMG_rigRN.phl[500]";
connectAttr "head1_Control_scaleZ.o" "femaleTSMG_rigRN.phl[501]";
connectAttr "leftArm1_ClavicalControl_stretch.o" "femaleTSMG_rigRN.phl[502]";
connectAttr "leftArm1_ClavicalControl_rotateX.o" "femaleTSMG_rigRN.phl[503]";
connectAttr "leftArm1_ClavicalControl_rotateY.o" "femaleTSMG_rigRN.phl[504]";
connectAttr "leftArm1_ClavicalControl_rotateZ.o" "femaleTSMG_rigRN.phl[505]";
connectAttr "leftArm1_UpperArmControl_stretch.o" "femaleTSMG_rigRN.phl[506]";
connectAttr "leftArm1_UpperArmControl_rotateX.o" "femaleTSMG_rigRN.phl[507]";
connectAttr "leftArm1_UpperArmControl_rotateY.o" "femaleTSMG_rigRN.phl[508]";
connectAttr "leftArm1_UpperArmControl_rotateZ.o" "femaleTSMG_rigRN.phl[509]";
connectAttr "leftArm1_LowerArmControl_rotateY.o" "femaleTSMG_rigRN.phl[510]";
connectAttr "leftArm1_LowerArmControl_stretch.o" "femaleTSMG_rigRN.phl[511]";
connectAttr "leftArm1_HandControl_rotateX.o" "femaleTSMG_rigRN.phl[512]";
connectAttr "leftArm1_HandControl_rotateY.o" "femaleTSMG_rigRN.phl[513]";
connectAttr "leftArm1_HandControl_rotateZ.o" "femaleTSMG_rigRN.phl[514]";
connectAttr "leftArm1_HandControl_scaleX.o" "femaleTSMG_rigRN.phl[515]";
connectAttr "leftArm1_HandControl_scaleY.o" "femaleTSMG_rigRN.phl[516]";
connectAttr "leftArm1_HandControl_scaleZ.o" "femaleTSMG_rigRN.phl[517]";
connectAttr "leftArm1_ArmIKElbowControl_rotateX.o" "femaleTSMG_rigRN.phl[518]";
connectAttr "leftArm1_ArmIKElbowControl_rotateY.o" "femaleTSMG_rigRN.phl[519]";
connectAttr "leftArm1_ArmIKElbowControl_rotateZ.o" "femaleTSMG_rigRN.phl[520]";
connectAttr "leftFinger1_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[521]";
connectAttr "leftFinger1_Control_EndJoint.o" "femaleTSMG_rigRN.phl[522]";
connectAttr "leftFinger1_Control_SideToSide.o" "femaleTSMG_rigRN.phl[523]";
connectAttr "leftFinger1_Control_rotateX.o" "femaleTSMG_rigRN.phl[524]";
connectAttr "leftFinger1_Control_rotateY.o" "femaleTSMG_rigRN.phl[525]";
connectAttr "leftFinger1_Control_rotateZ.o" "femaleTSMG_rigRN.phl[526]";
connectAttr "leftFinger1_Control_translateX.o" "femaleTSMG_rigRN.phl[527]";
connectAttr "leftFinger1_Control_translateY.o" "femaleTSMG_rigRN.phl[528]";
connectAttr "leftFinger1_Control_translateZ.o" "femaleTSMG_rigRN.phl[529]";
connectAttr "leftFinger2_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[530]";
connectAttr "leftFinger2_Control_EndJoint.o" "femaleTSMG_rigRN.phl[531]";
connectAttr "leftFinger2_Control_SideToSide.o" "femaleTSMG_rigRN.phl[532]";
connectAttr "leftFinger2_Control_rotateX.o" "femaleTSMG_rigRN.phl[533]";
connectAttr "leftFinger2_Control_rotateY.o" "femaleTSMG_rigRN.phl[534]";
connectAttr "leftFinger2_Control_rotateZ.o" "femaleTSMG_rigRN.phl[535]";
connectAttr "leftFinger2_Control_translateX.o" "femaleTSMG_rigRN.phl[536]";
connectAttr "leftFinger2_Control_translateY.o" "femaleTSMG_rigRN.phl[537]";
connectAttr "leftFinger2_Control_translateZ.o" "femaleTSMG_rigRN.phl[538]";
connectAttr "leftFinger3_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[539]";
connectAttr "leftFinger3_Control_EndJoint.o" "femaleTSMG_rigRN.phl[540]";
connectAttr "leftFinger3_Control_SideToSide.o" "femaleTSMG_rigRN.phl[541]";
connectAttr "leftFinger3_Control_rotateX.o" "femaleTSMG_rigRN.phl[542]";
connectAttr "leftFinger3_Control_rotateY.o" "femaleTSMG_rigRN.phl[543]";
connectAttr "leftFinger3_Control_rotateZ.o" "femaleTSMG_rigRN.phl[544]";
connectAttr "leftFinger3_Control_translateX.o" "femaleTSMG_rigRN.phl[545]";
connectAttr "leftFinger3_Control_translateY.o" "femaleTSMG_rigRN.phl[546]";
connectAttr "leftFinger3_Control_translateZ.o" "femaleTSMG_rigRN.phl[547]";
connectAttr "leftFinger4_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[548]";
connectAttr "leftFinger4_Control_EndJoint.o" "femaleTSMG_rigRN.phl[549]";
connectAttr "leftFinger4_Control_SideToSide.o" "femaleTSMG_rigRN.phl[550]";
connectAttr "leftFinger4_Control_rotateX.o" "femaleTSMG_rigRN.phl[551]";
connectAttr "leftFinger4_Control_rotateY.o" "femaleTSMG_rigRN.phl[552]";
connectAttr "leftFinger4_Control_rotateZ.o" "femaleTSMG_rigRN.phl[553]";
connectAttr "leftFinger4_Control_translateX.o" "femaleTSMG_rigRN.phl[554]";
connectAttr "leftFinger4_Control_translateY.o" "femaleTSMG_rigRN.phl[555]";
connectAttr "leftFinger4_Control_translateZ.o" "femaleTSMG_rigRN.phl[556]";
connectAttr "leftLeg1_UpperLegControl_stretch.o" "femaleTSMG_rigRN.phl[557]";
connectAttr "leftLeg1_UpperLegControl_rotateX.o" "femaleTSMG_rigRN.phl[558]";
connectAttr "leftLeg1_UpperLegControl_rotateY.o" "femaleTSMG_rigRN.phl[559]";
connectAttr "leftLeg1_UpperLegControl_rotateZ.o" "femaleTSMG_rigRN.phl[560]";
connectAttr "leftLeg1_LowerLegControl_rotateY.o" "femaleTSMG_rigRN.phl[561]";
connectAttr "leftLeg1_LowerLegControl_stretch.o" "femaleTSMG_rigRN.phl[562]";
connectAttr "leftLeg1_FootControl_stretch.o" "femaleTSMG_rigRN.phl[563]";
connectAttr "leftLeg1_FootControl_rotateX.o" "femaleTSMG_rigRN.phl[564]";
connectAttr "leftLeg1_FootControl_rotateY.o" "femaleTSMG_rigRN.phl[565]";
connectAttr "leftLeg1_FootControl_rotateZ.o" "femaleTSMG_rigRN.phl[566]";
connectAttr "leftLeg1_ToeControl_rotateX.o" "femaleTSMG_rigRN.phl[567]";
connectAttr "leftLeg1_ToeControl_rotateY.o" "femaleTSMG_rigRN.phl[568]";
connectAttr "leftLeg1_ToeControl_rotateZ.o" "femaleTSMG_rigRN.phl[569]";
connectAttr "leftLeg1_LegIKKneeControl_rotateX.o" "femaleTSMG_rigRN.phl[570]";
connectAttr "leftLeg1_LegIKKneeControl_rotateY.o" "femaleTSMG_rigRN.phl[571]";
connectAttr "leftLeg1_LegIKKneeControl_rotateZ.o" "femaleTSMG_rigRN.phl[572]";
connectAttr "leftThumb1_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[573]";
connectAttr "leftThumb1_Control_EndJoint.o" "femaleTSMG_rigRN.phl[574]";
connectAttr "leftThumb1_Control_SideToSide.o" "femaleTSMG_rigRN.phl[575]";
connectAttr "leftThumb1_Control_rotateX.o" "femaleTSMG_rigRN.phl[576]";
connectAttr "leftThumb1_Control_rotateY.o" "femaleTSMG_rigRN.phl[577]";
connectAttr "leftThumb1_Control_rotateZ.o" "femaleTSMG_rigRN.phl[578]";
connectAttr "leftThumb1_Control_translateX.o" "femaleTSMG_rigRN.phl[579]";
connectAttr "leftThumb1_Control_translateY.o" "femaleTSMG_rigRN.phl[580]";
connectAttr "leftThumb1_Control_translateZ.o" "femaleTSMG_rigRN.phl[581]";
connectAttr "rightArm1_ClavicalControl_stretch.o" "femaleTSMG_rigRN.phl[582]";
connectAttr "rightArm1_ClavicalControl_rotateX.o" "femaleTSMG_rigRN.phl[583]";
connectAttr "rightArm1_ClavicalControl_rotateY.o" "femaleTSMG_rigRN.phl[584]";
connectAttr "rightArm1_ClavicalControl_rotateZ.o" "femaleTSMG_rigRN.phl[585]";
connectAttr "rightArm1_UpperArmControl_stretch.o" "femaleTSMG_rigRN.phl[586]";
connectAttr "rightArm1_UpperArmControl_rotateX.o" "femaleTSMG_rigRN.phl[587]";
connectAttr "rightArm1_UpperArmControl_rotateY.o" "femaleTSMG_rigRN.phl[588]";
connectAttr "rightArm1_UpperArmControl_rotateZ.o" "femaleTSMG_rigRN.phl[589]";
connectAttr "rightArm1_LowerArmControl_rotateY.o" "femaleTSMG_rigRN.phl[590]";
connectAttr "rightArm1_LowerArmControl_stretch.o" "femaleTSMG_rigRN.phl[591]";
connectAttr "rightArm1_HandControl_rotateX.o" "femaleTSMG_rigRN.phl[592]";
connectAttr "rightArm1_HandControl_rotateY.o" "femaleTSMG_rigRN.phl[593]";
connectAttr "rightArm1_HandControl_rotateZ.o" "femaleTSMG_rigRN.phl[594]";
connectAttr "rightArm1_HandControl_scaleX.o" "femaleTSMG_rigRN.phl[595]";
connectAttr "rightArm1_HandControl_scaleY.o" "femaleTSMG_rigRN.phl[596]";
connectAttr "rightArm1_HandControl_scaleZ.o" "femaleTSMG_rigRN.phl[597]";
connectAttr "rightArm1_ArmIKElbowControl_rotateX.o" "femaleTSMG_rigRN.phl[598]";
connectAttr "rightArm1_ArmIKElbowControl_rotateY.o" "femaleTSMG_rigRN.phl[599]";
connectAttr "rightArm1_ArmIKElbowControl_rotateZ.o" "femaleTSMG_rigRN.phl[600]";
connectAttr "rightFinger1_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[601]";
connectAttr "rightFinger1_Control_EndJoint.o" "femaleTSMG_rigRN.phl[602]";
connectAttr "rightFinger1_Control_SideToSide.o" "femaleTSMG_rigRN.phl[603]";
connectAttr "rightFinger1_Control_rotateX.o" "femaleTSMG_rigRN.phl[604]";
connectAttr "rightFinger1_Control_rotateY.o" "femaleTSMG_rigRN.phl[605]";
connectAttr "rightFinger1_Control_rotateZ.o" "femaleTSMG_rigRN.phl[606]";
connectAttr "rightFinger1_Control_translateX.o" "femaleTSMG_rigRN.phl[607]";
connectAttr "rightFinger1_Control_translateY.o" "femaleTSMG_rigRN.phl[608]";
connectAttr "rightFinger1_Control_translateZ.o" "femaleTSMG_rigRN.phl[609]";
connectAttr "rightFinger2_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[610]";
connectAttr "rightFinger2_Control_EndJoint.o" "femaleTSMG_rigRN.phl[611]";
connectAttr "rightFinger2_Control_SideToSide.o" "femaleTSMG_rigRN.phl[612]";
connectAttr "rightFinger2_Control_rotateX.o" "femaleTSMG_rigRN.phl[613]";
connectAttr "rightFinger2_Control_rotateY.o" "femaleTSMG_rigRN.phl[614]";
connectAttr "rightFinger2_Control_rotateZ.o" "femaleTSMG_rigRN.phl[615]";
connectAttr "rightFinger2_Control_translateX.o" "femaleTSMG_rigRN.phl[616]";
connectAttr "rightFinger2_Control_translateY.o" "femaleTSMG_rigRN.phl[617]";
connectAttr "rightFinger2_Control_translateZ.o" "femaleTSMG_rigRN.phl[618]";
connectAttr "rightFinger3_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[619]";
connectAttr "rightFinger3_Control_EndJoint.o" "femaleTSMG_rigRN.phl[620]";
connectAttr "rightFinger3_Control_SideToSide.o" "femaleTSMG_rigRN.phl[621]";
connectAttr "rightFinger3_Control_rotateX.o" "femaleTSMG_rigRN.phl[622]";
connectAttr "rightFinger3_Control_rotateY.o" "femaleTSMG_rigRN.phl[623]";
connectAttr "rightFinger3_Control_rotateZ.o" "femaleTSMG_rigRN.phl[624]";
connectAttr "rightFinger3_Control_translateX.o" "femaleTSMG_rigRN.phl[625]";
connectAttr "rightFinger3_Control_translateY.o" "femaleTSMG_rigRN.phl[626]";
connectAttr "rightFinger3_Control_translateZ.o" "femaleTSMG_rigRN.phl[627]";
connectAttr "rightFinger4_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[628]";
connectAttr "rightFinger4_Control_EndJoint.o" "femaleTSMG_rigRN.phl[629]";
connectAttr "rightFinger4_Control_SideToSide.o" "femaleTSMG_rigRN.phl[630]";
connectAttr "rightFinger4_Control_rotateX.o" "femaleTSMG_rigRN.phl[631]";
connectAttr "rightFinger4_Control_rotateY.o" "femaleTSMG_rigRN.phl[632]";
connectAttr "rightFinger4_Control_rotateZ.o" "femaleTSMG_rigRN.phl[633]";
connectAttr "rightFinger4_Control_translateX.o" "femaleTSMG_rigRN.phl[634]";
connectAttr "rightFinger4_Control_translateY.o" "femaleTSMG_rigRN.phl[635]";
connectAttr "rightFinger4_Control_translateZ.o" "femaleTSMG_rigRN.phl[636]";
connectAttr "rightLeg1_UpperLegControl_stretch.o" "femaleTSMG_rigRN.phl[637]";
connectAttr "rightLeg1_UpperLegControl_rotateX.o" "femaleTSMG_rigRN.phl[638]";
connectAttr "rightLeg1_UpperLegControl_rotateY.o" "femaleTSMG_rigRN.phl[639]";
connectAttr "rightLeg1_UpperLegControl_rotateZ.o" "femaleTSMG_rigRN.phl[640]";
connectAttr "rightLeg1_LowerLegControl_rotateY.o" "femaleTSMG_rigRN.phl[641]";
connectAttr "rightLeg1_LowerLegControl_stretch.o" "femaleTSMG_rigRN.phl[642]";
connectAttr "rightLeg1_FootControl_stretch.o" "femaleTSMG_rigRN.phl[643]";
connectAttr "rightLeg1_FootControl_rotateX.o" "femaleTSMG_rigRN.phl[644]";
connectAttr "rightLeg1_FootControl_rotateY.o" "femaleTSMG_rigRN.phl[645]";
connectAttr "rightLeg1_FootControl_rotateZ.o" "femaleTSMG_rigRN.phl[646]";
connectAttr "rightLeg1_ToeControl_rotateX.o" "femaleTSMG_rigRN.phl[647]";
connectAttr "rightLeg1_ToeControl_rotateY.o" "femaleTSMG_rigRN.phl[648]";
connectAttr "rightLeg1_ToeControl_rotateZ.o" "femaleTSMG_rigRN.phl[649]";
connectAttr "rightLeg1_LegIKKneeControl_rotateX.o" "femaleTSMG_rigRN.phl[650]";
connectAttr "rightLeg1_LegIKKneeControl_rotateY.o" "femaleTSMG_rigRN.phl[651]";
connectAttr "rightLeg1_LegIKKneeControl_rotateZ.o" "femaleTSMG_rigRN.phl[652]";
connectAttr "rightThumb1_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[653]";
connectAttr "rightThumb1_Control_EndJoint.o" "femaleTSMG_rigRN.phl[654]";
connectAttr "rightThumb1_Control_SideToSide.o" "femaleTSMG_rigRN.phl[655]";
connectAttr "rightThumb1_Control_rotateX.o" "femaleTSMG_rigRN.phl[656]";
connectAttr "rightThumb1_Control_rotateY.o" "femaleTSMG_rigRN.phl[657]";
connectAttr "rightThumb1_Control_rotateZ.o" "femaleTSMG_rigRN.phl[658]";
connectAttr "rightThumb1_Control_translateX.o" "femaleTSMG_rigRN.phl[659]";
connectAttr "rightThumb1_Control_translateY.o" "femaleTSMG_rigRN.phl[660]";
connectAttr "rightThumb1_Control_translateZ.o" "femaleTSMG_rigRN.phl[661]";
connectAttr "spine1_lowerSpineControl_translateX.o" "femaleTSMG_rigRN.phl[662]";
connectAttr "spine1_lowerSpineControl_translateY.o" "femaleTSMG_rigRN.phl[663]";
connectAttr "spine1_lowerSpineControl_translateZ.o" "femaleTSMG_rigRN.phl[664]";
connectAttr "spine1_lowerSpineControl_rotateX.o" "femaleTSMG_rigRN.phl[665]";
connectAttr "spine1_lowerSpineControl_rotateY.o" "femaleTSMG_rigRN.phl[666]";
connectAttr "spine1_lowerSpineControl_rotateZ.o" "femaleTSMG_rigRN.phl[667]";
connectAttr "spine1_middleSpineControl_translateX.o" "femaleTSMG_rigRN.phl[668]"
		;
connectAttr "spine1_middleSpineControl_translateY.o" "femaleTSMG_rigRN.phl[669]"
		;
connectAttr "spine1_middleSpineControl_translateZ.o" "femaleTSMG_rigRN.phl[670]"
		;
connectAttr "spine1_middleSpineControl_rotateX.o" "femaleTSMG_rigRN.phl[671]";
connectAttr "spine1_middleSpineControl_rotateY.o" "femaleTSMG_rigRN.phl[672]";
connectAttr "spine1_middleSpineControl_rotateZ.o" "femaleTSMG_rigRN.phl[673]";
connectAttr "spine1_torsoControl_translateX.o" "femaleTSMG_rigRN.phl[674]";
connectAttr "spine1_torsoControl_translateY.o" "femaleTSMG_rigRN.phl[675]";
connectAttr "spine1_torsoControl_translateZ.o" "femaleTSMG_rigRN.phl[676]";
connectAttr "spine1_torsoControl_rotateX.o" "femaleTSMG_rigRN.phl[677]";
connectAttr "spine1_torsoControl_rotateY.o" "femaleTSMG_rigRN.phl[678]";
connectAttr "spine1_torsoControl_rotateZ.o" "femaleTSMG_rigRN.phl[679]";
connectAttr "spine1_hipsControl_translateX.o" "femaleTSMG_rigRN.phl[680]";
connectAttr "spine1_hipsControl_translateY.o" "femaleTSMG_rigRN.phl[681]";
connectAttr "spine1_hipsControl_translateZ.o" "femaleTSMG_rigRN.phl[682]";
connectAttr "spine1_hipsControl_rotateX.o" "femaleTSMG_rigRN.phl[683]";
connectAttr "spine1_hipsControl_rotateY.o" "femaleTSMG_rigRN.phl[684]";
connectAttr "spine1_hipsControl_rotateZ.o" "femaleTSMG_rigRN.phl[685]";
connectAttr "spine1_hipsIKControl_translateX.o" "femaleTSMG_rigRN.phl[686]";
connectAttr "spine1_hipsIKControl_translateY.o" "femaleTSMG_rigRN.phl[687]";
connectAttr "spine1_hipsIKControl_translateZ.o" "femaleTSMG_rigRN.phl[688]";
connectAttr "spine1_hipsIKControl_rotateX.o" "femaleTSMG_rigRN.phl[689]";
connectAttr "spine1_hipsIKControl_rotateY.o" "femaleTSMG_rigRN.phl[690]";
connectAttr "spine1_hipsIKControl_rotateZ.o" "femaleTSMG_rigRN.phl[691]";
connectAttr "spine1_hipsIKControl_scaleX.o" "femaleTSMG_rigRN.phl[692]";
connectAttr "spine1_hipsIKControl_scaleY.o" "femaleTSMG_rigRN.phl[693]";
connectAttr "spine1_hipsIKControl_scaleZ.o" "femaleTSMG_rigRN.phl[694]";
connectAttr "spine1_torsoIKControl_translateX.o" "femaleTSMG_rigRN.phl[695]";
connectAttr "spine1_torsoIKControl_translateY.o" "femaleTSMG_rigRN.phl[696]";
connectAttr "spine1_torsoIKControl_translateZ.o" "femaleTSMG_rigRN.phl[697]";
connectAttr "spine1_torsoIKControl_rotateX.o" "femaleTSMG_rigRN.phl[698]";
connectAttr "spine1_torsoIKControl_rotateY.o" "femaleTSMG_rigRN.phl[699]";
connectAttr "spine1_torsoIKControl_rotateZ.o" "femaleTSMG_rigRN.phl[700]";
connectAttr "spine1_torsoIKControl_scaleX.o" "femaleTSMG_rigRN.phl[701]";
connectAttr "spine1_torsoIKControl_scaleY.o" "femaleTSMG_rigRN.phl[702]";
connectAttr "spine1_torsoIKControl_scaleZ.o" "femaleTSMG_rigRN.phl[703]";
connectAttr "spine1_middleSpineIKControl_translateX.o" "femaleTSMG_rigRN.phl[704]"
		;
connectAttr "spine1_middleSpineIKControl_translateY.o" "femaleTSMG_rigRN.phl[705]"
		;
connectAttr "spine1_middleSpineIKControl_translateZ.o" "femaleTSMG_rigRN.phl[706]"
		;
connectAttr "spine1_middleSpineIKControl_rotateX.o" "femaleTSMG_rigRN.phl[707]";
connectAttr "spine1_middleSpineIKControl_rotateY.o" "femaleTSMG_rigRN.phl[708]";
connectAttr "spine1_middleSpineIKControl_rotateZ.o" "femaleTSMG_rigRN.phl[709]";
connectAttr "spine1_middleSpineIKControl_scaleX.o" "femaleTSMG_rigRN.phl[710]";
connectAttr "spine1_middleSpineIKControl_scaleY.o" "femaleTSMG_rigRN.phl[711]";
connectAttr "spine1_middleSpineIKControl_scaleZ.o" "femaleTSMG_rigRN.phl[712]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "femaleTSMG_rig_spine1_hipsControl_translateZ.o" "femaleTSMG_rigRN.phl[234]"
		;
connectAttr "femaleTSMG_rig_spine1_hipsControl_translateY.o" "femaleTSMG_rigRN.phl[235]"
		;
connectAttr "femaleTSMG_rig_spine1_hipsControl_translateX.o" "femaleTSMG_rigRN.phl[236]"
		;
connectAttr "femaleTSMG_rig_spine1_torsoControl_translateZ.o" "femaleTSMG_rigRN.phl[237]"
		;
connectAttr "femaleTSMG_rig_spine1_torsoControl_translateY.o" "femaleTSMG_rigRN.phl[238]"
		;
connectAttr "femaleTSMG_rig_spine1_torsoControl_translateX.o" "femaleTSMG_rigRN.phl[239]"
		;
connectAttr "femaleTSMG_rig_spine1_middleSpineControl_translateZ.o" "femaleTSMG_rigRN.phl[240]"
		;
connectAttr "femaleTSMG_rig_spine1_middleSpineControl_translateY.o" "femaleTSMG_rigRN.phl[241]"
		;
connectAttr "femaleTSMG_rig_spine1_middleSpineControl_translateX.o" "femaleTSMG_rigRN.phl[242]"
		;
connectAttr "femaleTSMG_rig_spine1_lowerSpineControl_translateZ.o" "femaleTSMG_rigRN.phl[243]"
		;
connectAttr "femaleTSMG_rig_spine1_lowerSpineControl_translateY.o" "femaleTSMG_rigRN.phl[244]"
		;
connectAttr "femaleTSMG_rig_spine1_lowerSpineControl_translateX.o" "femaleTSMG_rigRN.phl[245]"
		;
connectAttr "femaleTSMG_rig_spine1_hipsControl_rotateZ.o" "femaleTSMG_rigRN.phl[246]"
		;
connectAttr "femaleTSMG_rig_spine1_hipsControl_rotateY.o" "femaleTSMG_rigRN.phl[247]"
		;
connectAttr "femaleTSMG_rig_spine1_hipsControl_rotateX.o" "femaleTSMG_rigRN.phl[248]"
		;
connectAttr "femaleTSMG_rig_spine1_torsoControl_rotateZ.o" "femaleTSMG_rigRN.phl[249]"
		;
connectAttr "femaleTSMG_rig_spine1_torsoControl_rotateY.o" "femaleTSMG_rigRN.phl[250]"
		;
connectAttr "femaleTSMG_rig_spine1_torsoControl_rotateX.o" "femaleTSMG_rigRN.phl[251]"
		;
connectAttr "femaleTSMG_rig_spine1_middleSpineControl_rotateZ.o" "femaleTSMG_rigRN.phl[252]"
		;
connectAttr "femaleTSMG_rig_spine1_middleSpineControl_rotateY.o" "femaleTSMG_rigRN.phl[253]"
		;
connectAttr "femaleTSMG_rig_spine1_middleSpineControl_rotateX.o" "femaleTSMG_rigRN.phl[254]"
		;
connectAttr "femaleTSMG_rig_spine1_lowerSpineControl_rotateZ.o" "femaleTSMG_rigRN.phl[255]"
		;
connectAttr "femaleTSMG_rig_spine1_lowerSpineControl_rotateY.o" "femaleTSMG_rigRN.phl[256]"
		;
connectAttr "femaleTSMG_rig_spine1_lowerSpineControl_rotateX.o" "femaleTSMG_rigRN.phl[257]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_ToeControl_rotateZ.o" "femaleTSMG_rigRN.phl[258]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_ToeControl_rotateY.o" "femaleTSMG_rigRN.phl[259]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_ToeControl_rotateX.o" "femaleTSMG_rigRN.phl[260]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_FootControl_rotateZ.o" "femaleTSMG_rigRN.phl[261]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_FootControl_rotateY.o" "femaleTSMG_rigRN.phl[262]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_FootControl_rotateX.o" "femaleTSMG_rigRN.phl[263]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_LowerLegControl_rotateY.o" "femaleTSMG_rigRN.phl[264]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_UpperLegControl_rotateZ.o" "femaleTSMG_rigRN.phl[265]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_UpperLegControl_rotateY.o" "femaleTSMG_rigRN.phl[266]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_UpperLegControl_rotateX.o" "femaleTSMG_rigRN.phl[267]"
		;
connectAttr "femaleTSMG_rig_rightArm1_HandControl_rotateZ.o" "femaleTSMG_rigRN.phl[268]"
		;
connectAttr "femaleTSMG_rig_rightArm1_HandControl_rotateY.o" "femaleTSMG_rigRN.phl[269]"
		;
connectAttr "femaleTSMG_rig_rightArm1_HandControl_rotateX.o" "femaleTSMG_rigRN.phl[270]"
		;
connectAttr "femaleTSMG_rig_rightArm1_LowerArmControl_rotateY.o" "femaleTSMG_rigRN.phl[271]"
		;
connectAttr "femaleTSMG_rig_rightArm1_UpperArmControl_rotateZ.o" "femaleTSMG_rigRN.phl[272]"
		;
connectAttr "femaleTSMG_rig_rightArm1_UpperArmControl_rotateY.o" "femaleTSMG_rigRN.phl[273]"
		;
connectAttr "femaleTSMG_rig_rightArm1_UpperArmControl_rotateX.o" "femaleTSMG_rigRN.phl[274]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_ToeControl_rotateZ.o" "femaleTSMG_rigRN.phl[275]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_ToeControl_rotateY.o" "femaleTSMG_rigRN.phl[276]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_ToeControl_rotateX.o" "femaleTSMG_rigRN.phl[277]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_FootControl_rotateZ.o" "femaleTSMG_rigRN.phl[278]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_FootControl_rotateY.o" "femaleTSMG_rigRN.phl[279]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_FootControl_rotateX.o" "femaleTSMG_rigRN.phl[280]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_LowerLegControl_rotateY.o" "femaleTSMG_rigRN.phl[281]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_UpperLegControl_rotateZ.o" "femaleTSMG_rigRN.phl[282]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_UpperLegControl_rotateY.o" "femaleTSMG_rigRN.phl[283]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_UpperLegControl_rotateX.o" "femaleTSMG_rigRN.phl[284]"
		;
connectAttr "femaleTSMG_rig_leftArm1_HandControl_rotateZ.o" "femaleTSMG_rigRN.phl[285]"
		;
connectAttr "femaleTSMG_rig_leftArm1_HandControl_rotateY.o" "femaleTSMG_rigRN.phl[286]"
		;
connectAttr "femaleTSMG_rig_leftArm1_HandControl_rotateX.o" "femaleTSMG_rigRN.phl[287]"
		;
connectAttr "femaleTSMG_rig_leftArm1_LowerArmControl_rotateY.o" "femaleTSMG_rigRN.phl[288]"
		;
connectAttr "femaleTSMG_rig_leftArm1_UpperArmControl_rotateZ.o" "femaleTSMG_rigRN.phl[289]"
		;
connectAttr "femaleTSMG_rig_leftArm1_UpperArmControl_rotateY.o" "femaleTSMG_rigRN.phl[290]"
		;
connectAttr "femaleTSMG_rig_leftArm1_UpperArmControl_rotateX.o" "femaleTSMG_rigRN.phl[291]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_FootControl_stretch.o" "femaleTSMG_rigRN.phl[292]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_LowerLegControl_stretch.o" "femaleTSMG_rigRN.phl[293]"
		;
connectAttr "femaleTSMG_rig_rightLeg1_UpperLegControl_stretch.o" "femaleTSMG_rigRN.phl[294]"
		;
connectAttr "femaleTSMG_rig_rightArm1_LowerArmControl_stretch.o" "femaleTSMG_rigRN.phl[295]"
		;
connectAttr "femaleTSMG_rig_rightArm1_UpperArmControl_stretch.o" "femaleTSMG_rigRN.phl[296]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_FootControl_stretch.o" "femaleTSMG_rigRN.phl[297]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_LowerLegControl_stretch.o" "femaleTSMG_rigRN.phl[298]"
		;
connectAttr "femaleTSMG_rig_leftLeg1_UpperLegControl_stretch.o" "femaleTSMG_rigRN.phl[299]"
		;
connectAttr "femaleTSMG_rig_leftArm1_LowerArmControl_stretch.o" "femaleTSMG_rigRN.phl[300]"
		;
connectAttr "femaleTSMG_rig_leftArm1_UpperArmControl_stretch.o" "femaleTSMG_rigRN.phl[301]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_SideToSide.o" "femaleTSMG_rigRN.phl[302]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_EndJoint.o" "femaleTSMG_rigRN.phl[303]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[304]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_SideToSide.o" "femaleTSMG_rigRN.phl[305]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_EndJoint.o" "femaleTSMG_rigRN.phl[306]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[307]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_SideToSide.o" "femaleTSMG_rigRN.phl[308]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_EndJoint.o" "femaleTSMG_rigRN.phl[309]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[310]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_SideToSide.o" "femaleTSMG_rigRN.phl[311]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_EndJoint.o" "femaleTSMG_rigRN.phl[312]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[313]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_SideToSide.o" "femaleTSMG_rigRN.phl[314]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_EndJoint.o" "femaleTSMG_rigRN.phl[315]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[316]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_rotateZ.o" "femaleTSMG_rigRN.phl[317]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_rotateY.o" "femaleTSMG_rigRN.phl[318]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_rotateX.o" "femaleTSMG_rigRN.phl[319]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_rotateZ.o" "femaleTSMG_rigRN.phl[320]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_rotateY.o" "femaleTSMG_rigRN.phl[321]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_rotateX.o" "femaleTSMG_rigRN.phl[322]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_rotateZ.o" "femaleTSMG_rigRN.phl[323]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_rotateY.o" "femaleTSMG_rigRN.phl[324]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_rotateX.o" "femaleTSMG_rigRN.phl[325]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_rotateZ.o" "femaleTSMG_rigRN.phl[326]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_rotateY.o" "femaleTSMG_rigRN.phl[327]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_rotateX.o" "femaleTSMG_rigRN.phl[328]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_rotateZ.o" "femaleTSMG_rigRN.phl[329]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_rotateY.o" "femaleTSMG_rigRN.phl[330]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_rotateX.o" "femaleTSMG_rigRN.phl[331]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_translateZ.o" "femaleTSMG_rigRN.phl[332]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_translateY.o" "femaleTSMG_rigRN.phl[333]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_translateX.o" "femaleTSMG_rigRN.phl[334]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_translateZ.o" "femaleTSMG_rigRN.phl[335]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_translateY.o" "femaleTSMG_rigRN.phl[336]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_translateX.o" "femaleTSMG_rigRN.phl[337]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_translateZ.o" "femaleTSMG_rigRN.phl[338]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_translateY.o" "femaleTSMG_rigRN.phl[339]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_translateX.o" "femaleTSMG_rigRN.phl[340]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_translateZ.o" "femaleTSMG_rigRN.phl[341]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_translateY.o" "femaleTSMG_rigRN.phl[342]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_translateX.o" "femaleTSMG_rigRN.phl[343]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_translateZ.o" "femaleTSMG_rigRN.phl[344]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_translateY.o" "femaleTSMG_rigRN.phl[345]"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_translateX.o" "femaleTSMG_rigRN.phl[346]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_SideToSide.o" "femaleTSMG_rigRN.phl[347]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_EndJoint.o" "femaleTSMG_rigRN.phl[348]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[349]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_SideToSide.o" "femaleTSMG_rigRN.phl[350]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_EndJoint.o" "femaleTSMG_rigRN.phl[351]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[352]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_SideToSide.o" "femaleTSMG_rigRN.phl[353]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_EndJoint.o" "femaleTSMG_rigRN.phl[354]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[355]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_SideToSide.o" "femaleTSMG_rigRN.phl[356]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_EndJoint.o" "femaleTSMG_rigRN.phl[357]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[358]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_SideToSide.o" "femaleTSMG_rigRN.phl[359]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_EndJoint.o" "femaleTSMG_rigRN.phl[360]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_MiddleJoint.o" "femaleTSMG_rigRN.phl[361]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_rotateZ.o" "femaleTSMG_rigRN.phl[362]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_rotateY.o" "femaleTSMG_rigRN.phl[363]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_rotateX.o" "femaleTSMG_rigRN.phl[364]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_rotateZ.o" "femaleTSMG_rigRN.phl[365]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_rotateY.o" "femaleTSMG_rigRN.phl[366]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_rotateX.o" "femaleTSMG_rigRN.phl[367]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_rotateZ.o" "femaleTSMG_rigRN.phl[368]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_rotateY.o" "femaleTSMG_rigRN.phl[369]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_rotateX.o" "femaleTSMG_rigRN.phl[370]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_rotateZ.o" "femaleTSMG_rigRN.phl[371]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_rotateY.o" "femaleTSMG_rigRN.phl[372]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_rotateX.o" "femaleTSMG_rigRN.phl[373]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_rotateZ.o" "femaleTSMG_rigRN.phl[374]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_rotateY.o" "femaleTSMG_rigRN.phl[375]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_rotateX.o" "femaleTSMG_rigRN.phl[376]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_translateZ.o" "femaleTSMG_rigRN.phl[377]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_translateY.o" "femaleTSMG_rigRN.phl[378]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_translateX.o" "femaleTSMG_rigRN.phl[379]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_translateZ.o" "femaleTSMG_rigRN.phl[380]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_translateY.o" "femaleTSMG_rigRN.phl[381]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_translateX.o" "femaleTSMG_rigRN.phl[382]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_translateZ.o" "femaleTSMG_rigRN.phl[383]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_translateY.o" "femaleTSMG_rigRN.phl[384]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_translateX.o" "femaleTSMG_rigRN.phl[385]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_translateZ.o" "femaleTSMG_rigRN.phl[386]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_translateY.o" "femaleTSMG_rigRN.phl[387]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_translateX.o" "femaleTSMG_rigRN.phl[388]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_translateZ.o" "femaleTSMG_rigRN.phl[389]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_translateY.o" "femaleTSMG_rigRN.phl[390]"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_translateX.o" "femaleTSMG_rigRN.phl[391]"
		;
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "leftArm1_ArmIKControl_translateX.msg" "hyperLayout1.hyp[0].dn";
connectAttr "leftArm1_ArmIKControl_translateY.msg" "hyperLayout1.hyp[1].dn";
connectAttr "leftArm1_ArmIKControl_translateZ.msg" "hyperLayout1.hyp[2].dn";
connectAttr "leftArm1_ArmIKControl_rotateX.msg" "hyperLayout1.hyp[3].dn";
connectAttr "leftArm1_ArmIKControl_rotateY.msg" "hyperLayout1.hyp[4].dn";
connectAttr "leftArm1_ArmIKControl_rotateZ.msg" "hyperLayout1.hyp[5].dn";
connectAttr "leftArm1_ArmIKControl_scaleX.msg" "hyperLayout1.hyp[6].dn";
connectAttr "leftArm1_ArmIKControl_scaleY.msg" "hyperLayout1.hyp[7].dn";
connectAttr "leftArm1_ArmIKControl_scaleZ.msg" "hyperLayout1.hyp[8].dn";
connectAttr "leftArm1_ArmIKControl_AutoStretch.msg" "hyperLayout1.hyp[9].dn";
connectAttr "leftArm1_ArmIKControl_AntiIKPop.msg" "hyperLayout1.hyp[10].dn";
connectAttr "leftArm1_ArmIKControl_LowerArmStretch.msg" "hyperLayout1.hyp[11].dn"
		;
connectAttr "leftArm1_ArmIKControl_UpperArmStretch.msg" "hyperLayout1.hyp[12].dn"
		;
connectAttr "rightLeg1_LegIKControl_translateX.msg" "hyperLayout1.hyp[13].dn";
connectAttr "rightLeg1_LegIKControl_translateY.msg" "hyperLayout1.hyp[14].dn";
connectAttr "rightLeg1_LegIKControl_translateZ.msg" "hyperLayout1.hyp[15].dn";
connectAttr "rightLeg1_LegIKControl_rotateX.msg" "hyperLayout1.hyp[16].dn";
connectAttr "rightLeg1_LegIKControl_rotateY.msg" "hyperLayout1.hyp[17].dn";
connectAttr "rightLeg1_LegIKControl_rotateZ.msg" "hyperLayout1.hyp[18].dn";
connectAttr "rightLeg1_LegIKControl_scaleX.msg" "hyperLayout1.hyp[19].dn";
connectAttr "rightLeg1_LegIKControl_scaleY.msg" "hyperLayout1.hyp[20].dn";
connectAttr "rightLeg1_LegIKControl_scaleZ.msg" "hyperLayout1.hyp[21].dn";
connectAttr "rightLeg1_LegIKControl_AutoStretch.msg" "hyperLayout1.hyp[22].dn";
connectAttr "rightLeg1_LegIKControl_FootStretch.msg" "hyperLayout1.hyp[23].dn";
connectAttr "rightLeg1_LegIKControl_HeelRaise.msg" "hyperLayout1.hyp[24].dn";
connectAttr "rightLeg1_LegIKControl_HeelSwivel.msg" "hyperLayout1.hyp[25].dn";
connectAttr "rightLeg1_LegIKControl_ToeRaise.msg" "hyperLayout1.hyp[26].dn";
connectAttr "rightLeg1_LegIKControl_ToeSwivel.msg" "hyperLayout1.hyp[27].dn";
connectAttr "rightLeg1_LegIKControl_UpperLegStretch.msg" "hyperLayout1.hyp[28].dn"
		;
connectAttr "rightLeg1_LegIKControl_LowerLegStretch.msg" "hyperLayout1.hyp[29].dn"
		;
connectAttr "rightLeg1_LegIKControl_AntiIKPop.msg" "hyperLayout1.hyp[30].dn";
connectAttr "leftLeg1_LegIKControl_translateX.msg" "hyperLayout1.hyp[31].dn";
connectAttr "leftLeg1_LegIKControl_translateY.msg" "hyperLayout1.hyp[32].dn";
connectAttr "leftLeg1_LegIKControl_translateZ.msg" "hyperLayout1.hyp[33].dn";
connectAttr "leftLeg1_LegIKControl_rotateX.msg" "hyperLayout1.hyp[34].dn";
connectAttr "leftLeg1_LegIKControl_rotateY.msg" "hyperLayout1.hyp[35].dn";
connectAttr "leftLeg1_LegIKControl_rotateZ.msg" "hyperLayout1.hyp[36].dn";
connectAttr "leftLeg1_LegIKControl_scaleX.msg" "hyperLayout1.hyp[37].dn";
connectAttr "leftLeg1_LegIKControl_scaleY.msg" "hyperLayout1.hyp[38].dn";
connectAttr "leftLeg1_LegIKControl_scaleZ.msg" "hyperLayout1.hyp[39].dn";
connectAttr "leftLeg1_LegIKControl_AutoStretch.msg" "hyperLayout1.hyp[40].dn";
connectAttr "leftLeg1_LegIKControl_FootStretch.msg" "hyperLayout1.hyp[41].dn";
connectAttr "leftLeg1_LegIKControl_HeelRaise.msg" "hyperLayout1.hyp[42].dn";
connectAttr "leftLeg1_LegIKControl_HeelSwivel.msg" "hyperLayout1.hyp[43].dn";
connectAttr "leftLeg1_LegIKControl_ToeRaise.msg" "hyperLayout1.hyp[44].dn";
connectAttr "leftLeg1_LegIKControl_ToeSwivel.msg" "hyperLayout1.hyp[45].dn";
connectAttr "leftLeg1_LegIKControl_UpperLegStretch.msg" "hyperLayout1.hyp[46].dn"
		;
connectAttr "leftLeg1_LegIKControl_LowerLegStretch.msg" "hyperLayout1.hyp[47].dn"
		;
connectAttr "leftLeg1_LegIKControl_AntiIKPop.msg" "hyperLayout1.hyp[48].dn";
connectAttr "rightArm1_ArmIKControl_translateX.msg" "hyperLayout1.hyp[49].dn";
connectAttr "rightArm1_ArmIKControl_translateY.msg" "hyperLayout1.hyp[50].dn";
connectAttr "rightArm1_ArmIKControl_translateZ.msg" "hyperLayout1.hyp[51].dn";
connectAttr "rightArm1_ArmIKControl_rotateX.msg" "hyperLayout1.hyp[52].dn";
connectAttr "rightArm1_ArmIKControl_rotateY.msg" "hyperLayout1.hyp[53].dn";
connectAttr "rightArm1_ArmIKControl_rotateZ.msg" "hyperLayout1.hyp[54].dn";
connectAttr "rightArm1_ArmIKControl_scaleX.msg" "hyperLayout1.hyp[55].dn";
connectAttr "rightArm1_ArmIKControl_scaleY.msg" "hyperLayout1.hyp[56].dn";
connectAttr "rightArm1_ArmIKControl_scaleZ.msg" "hyperLayout1.hyp[57].dn";
connectAttr "rightArm1_ArmIKControl_AutoStretch.msg" "hyperLayout1.hyp[58].dn";
connectAttr "rightArm1_ArmIKControl_AntiIKPop.msg" "hyperLayout1.hyp[59].dn";
connectAttr "rightArm1_ArmIKControl_LowerArmStretch.msg" "hyperLayout1.hyp[60].dn"
		;
connectAttr "rightArm1_ArmIKControl_UpperArmStretch.msg" "hyperLayout1.hyp[61].dn"
		;
connectAttr "head1_Control_translateX.msg" "hyperLayout1.hyp[62].dn";
connectAttr "head1_Control_translateY.msg" "hyperLayout1.hyp[63].dn";
connectAttr "head1_Control_translateZ.msg" "hyperLayout1.hyp[64].dn";
connectAttr "head1_Control_rotateX.msg" "hyperLayout1.hyp[65].dn";
connectAttr "head1_Control_rotateY.msg" "hyperLayout1.hyp[66].dn";
connectAttr "head1_Control_rotateZ.msg" "hyperLayout1.hyp[67].dn";
connectAttr "head1_Control_scaleX.msg" "hyperLayout1.hyp[68].dn";
connectAttr "head1_Control_scaleY.msg" "hyperLayout1.hyp[69].dn";
connectAttr "head1_Control_scaleZ.msg" "hyperLayout1.hyp[70].dn";
connectAttr "TSMG_root_visibility.msg" "hyperLayout1.hyp[71].dn";
connectAttr "TSMG_root_translateX.msg" "hyperLayout1.hyp[72].dn";
connectAttr "TSMG_root_translateY.msg" "hyperLayout1.hyp[73].dn";
connectAttr "TSMG_root_translateZ.msg" "hyperLayout1.hyp[74].dn";
connectAttr "TSMG_root_rotateX.msg" "hyperLayout1.hyp[75].dn";
connectAttr "TSMG_root_rotateY.msg" "hyperLayout1.hyp[76].dn";
connectAttr "TSMG_root_rotateZ.msg" "hyperLayout1.hyp[77].dn";
connectAttr "TSMG_upper_body_visibility.msg" "hyperLayout1.hyp[78].dn";
connectAttr "TSMG_upper_body_translateX.msg" "hyperLayout1.hyp[79].dn";
connectAttr "TSMG_upper_body_translateY.msg" "hyperLayout1.hyp[80].dn";
connectAttr "TSMG_upper_body_translateZ.msg" "hyperLayout1.hyp[81].dn";
connectAttr "TSMG_upper_body_rotateX.msg" "hyperLayout1.hyp[82].dn";
connectAttr "TSMG_upper_body_rotateY.msg" "hyperLayout1.hyp[83].dn";
connectAttr "TSMG_upper_body_rotateZ.msg" "hyperLayout1.hyp[84].dn";
connectAttr "TSMG_upper_body_head1_controlSize.msg" "hyperLayout1.hyp[85].dn";
connectAttr "TSMG_upper_body_head1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[86].dn"
		;
connectAttr "TSMG_upper_body_leftArm1_controlSize.msg" "hyperLayout1.hyp[87].dn"
		;
connectAttr "TSMG_upper_body_leftArm1_FKIKSwitch.msg" "hyperLayout1.hyp[88].dn";
connectAttr "TSMG_upper_body_leftArm1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[89].dn"
		;
connectAttr "TSMG_upper_body_leftLeg1_ControlSize.msg" "hyperLayout1.hyp[90].dn"
		;
connectAttr "TSMG_upper_body_leftLeg1_FKIKSwitch.msg" "hyperLayout1.hyp[91].dn";
connectAttr "TSMG_upper_body_leftLeg1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[92].dn"
		;
connectAttr "TSMG_upper_body_rightArm1_controlSize.msg" "hyperLayout1.hyp[93].dn"
		;
connectAttr "TSMG_upper_body_rightArm1_FKIKSwitch.msg" "hyperLayout1.hyp[94].dn"
		;
connectAttr "TSMG_upper_body_rightArm1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[95].dn"
		;
connectAttr "TSMG_upper_body_rightLeg1_ControlSize.msg" "hyperLayout1.hyp[96].dn"
		;
connectAttr "TSMG_upper_body_rightLeg1_FKIKSwitch.msg" "hyperLayout1.hyp[97].dn"
		;
connectAttr "TSMG_upper_body_rightLeg1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[98].dn"
		;
connectAttr "TSMG_upper_body_spine1_FKIKSwitch.msg" "hyperLayout1.hyp[99].dn";
connectAttr "TSMG_upper_body_spine1_ControlSize.msg" "hyperLayout1.hyp[100].dn";
connectAttr "leftLeg1_IKHeelControl_rotateX.msg" "hyperLayout1.hyp[101].dn";
connectAttr "leftLeg1_IKHeelControl_rotateY.msg" "hyperLayout1.hyp[102].dn";
connectAttr "leftLeg1_IKHeelControl_rotateZ.msg" "hyperLayout1.hyp[103].dn";
connectAttr "rightLeg1_IKHeelControl_rotateX.msg" "hyperLayout1.hyp[104].dn";
connectAttr "rightLeg1_IKHeelControl_rotateY.msg" "hyperLayout1.hyp[105].dn";
connectAttr "rightLeg1_IKHeelControl_rotateZ.msg" "hyperLayout1.hyp[106].dn";
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_translateX.msg" "hyperLayout1.hyp[107].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_translateY.msg" "hyperLayout1.hyp[108].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_translateZ.msg" "hyperLayout1.hyp[109].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_rotateX.msg" "hyperLayout1.hyp[110].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_rotateY.msg" "hyperLayout1.hyp[111].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_rotateZ.msg" "hyperLayout1.hyp[112].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_MiddleJoint.msg" "hyperLayout1.hyp[113].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_EndJoint.msg" "hyperLayout1.hyp[114].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger3_Control_SideToSide.msg" "hyperLayout1.hyp[115].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_translateX.msg" "hyperLayout1.hyp[116].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_translateY.msg" "hyperLayout1.hyp[117].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_translateZ.msg" "hyperLayout1.hyp[118].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_rotateX.msg" "hyperLayout1.hyp[119].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_rotateY.msg" "hyperLayout1.hyp[120].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_rotateZ.msg" "hyperLayout1.hyp[121].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_MiddleJoint.msg" "hyperLayout1.hyp[122].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_EndJoint.msg" "hyperLayout1.hyp[123].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger4_Control_SideToSide.msg" "hyperLayout1.hyp[124].dn"
		;
connectAttr "leftLeg1_UpperLegControl_rotateX.msg" "hyperLayout1.hyp[125].dn";
connectAttr "leftLeg1_UpperLegControl_rotateY.msg" "hyperLayout1.hyp[126].dn";
connectAttr "leftLeg1_UpperLegControl_rotateZ.msg" "hyperLayout1.hyp[127].dn";
connectAttr "leftLeg1_UpperLegControl_stretch.msg" "hyperLayout1.hyp[128].dn";
connectAttr "leftLeg1_LowerLegControl_rotateY.msg" "hyperLayout1.hyp[129].dn";
connectAttr "leftLeg1_LowerLegControl_stretch.msg" "hyperLayout1.hyp[130].dn";
connectAttr "leftLeg1_FootControl_rotateX.msg" "hyperLayout1.hyp[131].dn";
connectAttr "leftLeg1_FootControl_rotateY.msg" "hyperLayout1.hyp[132].dn";
connectAttr "leftLeg1_FootControl_rotateZ.msg" "hyperLayout1.hyp[133].dn";
connectAttr "leftLeg1_FootControl_stretch.msg" "hyperLayout1.hyp[134].dn";
connectAttr "leftLeg1_ToeControl_rotateX.msg" "hyperLayout1.hyp[135].dn";
connectAttr "leftLeg1_ToeControl_rotateY.msg" "hyperLayout1.hyp[136].dn";
connectAttr "leftLeg1_ToeControl_rotateZ.msg" "hyperLayout1.hyp[137].dn";
connectAttr "leftLeg1_LegIKKneeControl_rotateX.msg" "hyperLayout1.hyp[138].dn";
connectAttr "leftLeg1_LegIKKneeControl_rotateY.msg" "hyperLayout1.hyp[139].dn";
connectAttr "leftLeg1_LegIKKneeControl_rotateZ.msg" "hyperLayout1.hyp[140].dn";
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_translateX.msg" "hyperLayout1.hyp[141].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_translateY.msg" "hyperLayout1.hyp[142].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_translateZ.msg" "hyperLayout1.hyp[143].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_rotateX.msg" "hyperLayout1.hyp[144].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_rotateY.msg" "hyperLayout1.hyp[145].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_rotateZ.msg" "hyperLayout1.hyp[146].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_MiddleJoint.msg" "hyperLayout1.hyp[147].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_EndJoint.msg" "hyperLayout1.hyp[148].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftThumb1_Control_SideToSide.msg" "hyperLayout1.hyp[149].dn"
		;
connectAttr "rightArm1_ClavicalControl_rotateX.msg" "hyperLayout1.hyp[150].dn";
connectAttr "rightArm1_ClavicalControl_rotateY.msg" "hyperLayout1.hyp[151].dn";
connectAttr "rightArm1_ClavicalControl_rotateZ.msg" "hyperLayout1.hyp[152].dn";
connectAttr "rightArm1_ClavicalControl_stretch.msg" "hyperLayout1.hyp[153].dn";
connectAttr "rightArm1_UpperArmControl_rotateX.msg" "hyperLayout1.hyp[154].dn";
connectAttr "rightArm1_UpperArmControl_rotateY.msg" "hyperLayout1.hyp[155].dn";
connectAttr "rightArm1_UpperArmControl_rotateZ.msg" "hyperLayout1.hyp[156].dn";
connectAttr "rightArm1_UpperArmControl_stretch.msg" "hyperLayout1.hyp[157].dn";
connectAttr "rightArm1_LowerArmControl_rotateY.msg" "hyperLayout1.hyp[158].dn";
connectAttr "rightArm1_LowerArmControl_stretch.msg" "hyperLayout1.hyp[159].dn";
connectAttr "rightArm1_HandControl_rotateX.msg" "hyperLayout1.hyp[160].dn";
connectAttr "rightArm1_HandControl_rotateY.msg" "hyperLayout1.hyp[161].dn";
connectAttr "rightArm1_HandControl_rotateZ.msg" "hyperLayout1.hyp[162].dn";
connectAttr "rightArm1_ArmIKElbowControl_rotateX.msg" "hyperLayout1.hyp[163].dn"
		;
connectAttr "rightArm1_ArmIKElbowControl_rotateY.msg" "hyperLayout1.hyp[164].dn"
		;
connectAttr "rightArm1_ArmIKElbowControl_rotateZ.msg" "hyperLayout1.hyp[165].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_translateX.msg" "hyperLayout1.hyp[166].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_translateY.msg" "hyperLayout1.hyp[167].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_translateZ.msg" "hyperLayout1.hyp[168].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_rotateX.msg" "hyperLayout1.hyp[169].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_rotateY.msg" "hyperLayout1.hyp[170].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_rotateZ.msg" "hyperLayout1.hyp[171].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_MiddleJoint.msg" "hyperLayout1.hyp[172].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_EndJoint.msg" "hyperLayout1.hyp[173].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger1_Control_SideToSide.msg" "hyperLayout1.hyp[174].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_translateX.msg" "hyperLayout1.hyp[175].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_translateY.msg" "hyperLayout1.hyp[176].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_translateZ.msg" "hyperLayout1.hyp[177].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_rotateX.msg" "hyperLayout1.hyp[178].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_rotateY.msg" "hyperLayout1.hyp[179].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_rotateZ.msg" "hyperLayout1.hyp[180].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_MiddleJoint.msg" "hyperLayout1.hyp[181].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_EndJoint.msg" "hyperLayout1.hyp[182].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger2_Control_SideToSide.msg" "hyperLayout1.hyp[183].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_translateX.msg" "hyperLayout1.hyp[184].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_translateY.msg" "hyperLayout1.hyp[185].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_translateZ.msg" "hyperLayout1.hyp[186].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_rotateX.msg" "hyperLayout1.hyp[187].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_rotateY.msg" "hyperLayout1.hyp[188].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_rotateZ.msg" "hyperLayout1.hyp[189].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_MiddleJoint.msg" "hyperLayout1.hyp[190].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_EndJoint.msg" "hyperLayout1.hyp[191].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger3_Control_SideToSide.msg" "hyperLayout1.hyp[192].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_translateX.msg" "hyperLayout1.hyp[193].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_translateY.msg" "hyperLayout1.hyp[194].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_translateZ.msg" "hyperLayout1.hyp[195].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_rotateX.msg" "hyperLayout1.hyp[196].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_rotateY.msg" "hyperLayout1.hyp[197].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_rotateZ.msg" "hyperLayout1.hyp[198].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_MiddleJoint.msg" "hyperLayout1.hyp[199].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_EndJoint.msg" "hyperLayout1.hyp[200].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightFinger4_Control_SideToSide.msg" "hyperLayout1.hyp[201].dn"
		;
connectAttr "rightLeg1_UpperLegControl_rotateX.msg" "hyperLayout1.hyp[202].dn";
connectAttr "rightLeg1_UpperLegControl_rotateY.msg" "hyperLayout1.hyp[203].dn";
connectAttr "rightLeg1_UpperLegControl_rotateZ.msg" "hyperLayout1.hyp[204].dn";
connectAttr "rightLeg1_UpperLegControl_stretch.msg" "hyperLayout1.hyp[205].dn";
connectAttr "rightLeg1_LowerLegControl_rotateY.msg" "hyperLayout1.hyp[206].dn";
connectAttr "rightLeg1_LowerLegControl_stretch.msg" "hyperLayout1.hyp[207].dn";
connectAttr "rightLeg1_FootControl_rotateX.msg" "hyperLayout1.hyp[208].dn";
connectAttr "rightLeg1_FootControl_rotateY.msg" "hyperLayout1.hyp[209].dn";
connectAttr "rightLeg1_FootControl_rotateZ.msg" "hyperLayout1.hyp[210].dn";
connectAttr "rightLeg1_FootControl_stretch.msg" "hyperLayout1.hyp[211].dn";
connectAttr "rightLeg1_ToeControl_rotateX.msg" "hyperLayout1.hyp[212].dn";
connectAttr "rightLeg1_ToeControl_rotateY.msg" "hyperLayout1.hyp[213].dn";
connectAttr "rightLeg1_ToeControl_rotateZ.msg" "hyperLayout1.hyp[214].dn";
connectAttr "rightLeg1_LegIKKneeControl_rotateX.msg" "hyperLayout1.hyp[215].dn";
connectAttr "rightLeg1_LegIKKneeControl_rotateY.msg" "hyperLayout1.hyp[216].dn";
connectAttr "rightLeg1_LegIKKneeControl_rotateZ.msg" "hyperLayout1.hyp[217].dn";
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_translateX.msg" "hyperLayout1.hyp[218].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_translateY.msg" "hyperLayout1.hyp[219].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_translateZ.msg" "hyperLayout1.hyp[220].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_rotateX.msg" "hyperLayout1.hyp[221].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_rotateY.msg" "hyperLayout1.hyp[222].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_rotateZ.msg" "hyperLayout1.hyp[223].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_MiddleJoint.msg" "hyperLayout1.hyp[224].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_EndJoint.msg" "hyperLayout1.hyp[225].dn"
		;
connectAttr "femalseTSMG_rig_RHAND_rightThumb1_Control_SideToSide.msg" "hyperLayout1.hyp[226].dn"
		;
connectAttr "head1_neckControl_rotateX.msg" "hyperLayout1.hyp[227].dn";
connectAttr "head1_neckControl_rotateY.msg" "hyperLayout1.hyp[228].dn";
connectAttr "head1_neckControl_rotateZ.msg" "hyperLayout1.hyp[229].dn";
connectAttr "spine1_lowerSpineControl_translateX.msg" "hyperLayout1.hyp[230].dn"
		;
connectAttr "spine1_lowerSpineControl_translateY.msg" "hyperLayout1.hyp[231].dn"
		;
connectAttr "spine1_lowerSpineControl_translateZ.msg" "hyperLayout1.hyp[232].dn"
		;
connectAttr "spine1_lowerSpineControl_rotateX.msg" "hyperLayout1.hyp[233].dn";
connectAttr "spine1_lowerSpineControl_rotateY.msg" "hyperLayout1.hyp[234].dn";
connectAttr "spine1_lowerSpineControl_rotateZ.msg" "hyperLayout1.hyp[235].dn";
connectAttr "spine1_middleSpineControl_translateX.msg" "hyperLayout1.hyp[236].dn"
		;
connectAttr "spine1_middleSpineControl_translateY.msg" "hyperLayout1.hyp[237].dn"
		;
connectAttr "spine1_middleSpineControl_translateZ.msg" "hyperLayout1.hyp[238].dn"
		;
connectAttr "spine1_middleSpineControl_rotateX.msg" "hyperLayout1.hyp[239].dn";
connectAttr "spine1_middleSpineControl_rotateY.msg" "hyperLayout1.hyp[240].dn";
connectAttr "spine1_middleSpineControl_rotateZ.msg" "hyperLayout1.hyp[241].dn";
connectAttr "spine1_torsoControl_translateX.msg" "hyperLayout1.hyp[242].dn";
connectAttr "spine1_torsoControl_translateY.msg" "hyperLayout1.hyp[243].dn";
connectAttr "spine1_torsoControl_translateZ.msg" "hyperLayout1.hyp[244].dn";
connectAttr "spine1_torsoControl_rotateX.msg" "hyperLayout1.hyp[245].dn";
connectAttr "spine1_torsoControl_rotateY.msg" "hyperLayout1.hyp[246].dn";
connectAttr "spine1_torsoControl_rotateZ.msg" "hyperLayout1.hyp[247].dn";
connectAttr "spine1_hipsControl_translateX.msg" "hyperLayout1.hyp[248].dn";
connectAttr "spine1_hipsControl_translateY.msg" "hyperLayout1.hyp[249].dn";
connectAttr "spine1_hipsControl_translateZ.msg" "hyperLayout1.hyp[250].dn";
connectAttr "spine1_hipsControl_rotateX.msg" "hyperLayout1.hyp[251].dn";
connectAttr "spine1_hipsControl_rotateY.msg" "hyperLayout1.hyp[252].dn";
connectAttr "spine1_hipsControl_rotateZ.msg" "hyperLayout1.hyp[253].dn";
connectAttr "spine1_hipsIKControl_translateX.msg" "hyperLayout1.hyp[254].dn";
connectAttr "spine1_hipsIKControl_translateY.msg" "hyperLayout1.hyp[255].dn";
connectAttr "spine1_hipsIKControl_translateZ.msg" "hyperLayout1.hyp[256].dn";
connectAttr "spine1_hipsIKControl_rotateX.msg" "hyperLayout1.hyp[257].dn";
connectAttr "spine1_hipsIKControl_rotateY.msg" "hyperLayout1.hyp[258].dn";
connectAttr "spine1_hipsIKControl_rotateZ.msg" "hyperLayout1.hyp[259].dn";
connectAttr "spine1_hipsIKControl_scaleX.msg" "hyperLayout1.hyp[260].dn";
connectAttr "spine1_hipsIKControl_scaleY.msg" "hyperLayout1.hyp[261].dn";
connectAttr "spine1_hipsIKControl_scaleZ.msg" "hyperLayout1.hyp[262].dn";
connectAttr "spine1_torsoIKControl_translateX.msg" "hyperLayout1.hyp[263].dn";
connectAttr "spine1_torsoIKControl_translateY.msg" "hyperLayout1.hyp[264].dn";
connectAttr "spine1_torsoIKControl_translateZ.msg" "hyperLayout1.hyp[265].dn";
connectAttr "spine1_torsoIKControl_rotateX.msg" "hyperLayout1.hyp[266].dn";
connectAttr "spine1_torsoIKControl_rotateY.msg" "hyperLayout1.hyp[267].dn";
connectAttr "spine1_torsoIKControl_rotateZ.msg" "hyperLayout1.hyp[268].dn";
connectAttr "spine1_torsoIKControl_scaleX.msg" "hyperLayout1.hyp[269].dn";
connectAttr "spine1_torsoIKControl_scaleY.msg" "hyperLayout1.hyp[270].dn";
connectAttr "spine1_torsoIKControl_scaleZ.msg" "hyperLayout1.hyp[271].dn";
connectAttr "spine1_middleSpineIKControl_translateX.msg" "hyperLayout1.hyp[272].dn"
		;
connectAttr "spine1_middleSpineIKControl_translateY.msg" "hyperLayout1.hyp[273].dn"
		;
connectAttr "spine1_middleSpineIKControl_translateZ.msg" "hyperLayout1.hyp[274].dn"
		;
connectAttr "spine1_middleSpineIKControl_rotateX.msg" "hyperLayout1.hyp[275].dn"
		;
connectAttr "spine1_middleSpineIKControl_rotateY.msg" "hyperLayout1.hyp[276].dn"
		;
connectAttr "spine1_middleSpineIKControl_rotateZ.msg" "hyperLayout1.hyp[277].dn"
		;
connectAttr "spine1_middleSpineIKControl_scaleX.msg" "hyperLayout1.hyp[278].dn";
connectAttr "spine1_middleSpineIKControl_scaleY.msg" "hyperLayout1.hyp[279].dn";
connectAttr "spine1_middleSpineIKControl_scaleZ.msg" "hyperLayout1.hyp[280].dn";
connectAttr "leftArm1_ClavicalControl_rotateX.msg" "hyperLayout1.hyp[281].dn";
connectAttr "leftArm1_ClavicalControl_rotateY.msg" "hyperLayout1.hyp[282].dn";
connectAttr "leftArm1_ClavicalControl_rotateZ.msg" "hyperLayout1.hyp[283].dn";
connectAttr "leftArm1_ClavicalControl_stretch.msg" "hyperLayout1.hyp[284].dn";
connectAttr "leftArm1_UpperArmControl_rotateX.msg" "hyperLayout1.hyp[285].dn";
connectAttr "leftArm1_UpperArmControl_rotateY.msg" "hyperLayout1.hyp[286].dn";
connectAttr "leftArm1_UpperArmControl_rotateZ.msg" "hyperLayout1.hyp[287].dn";
connectAttr "leftArm1_UpperArmControl_stretch.msg" "hyperLayout1.hyp[288].dn";
connectAttr "leftArm1_LowerArmControl_rotateY.msg" "hyperLayout1.hyp[289].dn";
connectAttr "leftArm1_LowerArmControl_stretch.msg" "hyperLayout1.hyp[290].dn";
connectAttr "leftArm1_HandControl_rotateX.msg" "hyperLayout1.hyp[291].dn";
connectAttr "leftArm1_HandControl_rotateY.msg" "hyperLayout1.hyp[292].dn";
connectAttr "leftArm1_HandControl_rotateZ.msg" "hyperLayout1.hyp[293].dn";
connectAttr "leftArm1_ArmIKElbowControl_rotateX.msg" "hyperLayout1.hyp[294].dn";
connectAttr "leftArm1_ArmIKElbowControl_rotateY.msg" "hyperLayout1.hyp[295].dn";
connectAttr "leftArm1_ArmIKElbowControl_rotateZ.msg" "hyperLayout1.hyp[296].dn";
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_translateX.msg" "hyperLayout1.hyp[297].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_translateY.msg" "hyperLayout1.hyp[298].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_translateZ.msg" "hyperLayout1.hyp[299].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_rotateX.msg" "hyperLayout1.hyp[300].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_rotateY.msg" "hyperLayout1.hyp[301].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_rotateZ.msg" "hyperLayout1.hyp[302].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_MiddleJoint.msg" "hyperLayout1.hyp[303].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_EndJoint.msg" "hyperLayout1.hyp[304].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger1_Control_SideToSide.msg" "hyperLayout1.hyp[305].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_translateX.msg" "hyperLayout1.hyp[306].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_translateY.msg" "hyperLayout1.hyp[307].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_translateZ.msg" "hyperLayout1.hyp[308].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_rotateX.msg" "hyperLayout1.hyp[309].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_rotateY.msg" "hyperLayout1.hyp[310].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_rotateZ.msg" "hyperLayout1.hyp[311].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_MiddleJoint.msg" "hyperLayout1.hyp[312].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_EndJoint.msg" "hyperLayout1.hyp[313].dn"
		;
connectAttr "femalseTSMG_rig_LHAND_leftFinger2_Control_SideToSide.msg" "hyperLayout1.hyp[314].dn"
		;
connectAttr "poseLibCaptureCamera.msg" "hyperLayout1.hyp[315].dn";
connectAttr "poseLibCaptureCameraShape.msg" "hyperLayout1.hyp[316].dn";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of femaleTSMG_clip_Walk_ref.ma
