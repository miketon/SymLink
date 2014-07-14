//Maya ASCII 2014 scene
//Name: clip_Psy_Walk.ma
//Last modified: Thu, Jul 10, 2014 09:00:41 AM
//Codeset: UTF-8
file -rdi 1 -ns "Psylocke_wHair" -rfn "Psylocke_wHairRN" "/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/Psylocke/Psylocke_wHair.ma";
file -r -ns "Psylocke_wHair" -dr 1 -rfn "Psylocke_wHairRN" "/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/Psylocke/Psylocke_wHair.ma";
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
	setAttr ".t" -type "double3" -26.336861662996544 7.9778907480342385 0.83778340754417968 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" -3.9198874032675151e-15 3.8138044478795827e-15 3.6679145631482493e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 26.311215951401781;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.025645711596268939 11.524561441268911 -0.96052849325085277 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr -s 9 ".b";
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
	setAttr ".t" -type "double3" -0.01343132278728376 12.087735951450398 100.82148890357487 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 187.31516390946271;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.74958101794203 12.087735951450398 -0.79759792080233072 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 31.840063028103216;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "locator1";
	setAttr ".t" -type "double3" 0 0 3.6189830698398282 ;
	setAttr ".s" -type "double3" 4.2709825328546609 4.2709825328546609 4.2709825328546609 ;
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
createNode transform -n "locator2";
	setAttr ".t" -type "double3" 0 0 8.924017905281028 ;
	setAttr ".s" -type "double3" 4.2709825328546609 4.2709825328546609 4.2709825328546609 ;
createNode locator -n "locatorShape2" -p "locator2";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -68.154761904761898 -45.416666666666657 ;
	setAttr ".vh" -type "double2" 69.345238095238102 44.226190476190496 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 172 ".hyp";
	setAttr ".hyp[0].x" 987.0238037109375;
	setAttr ".hyp[0].y" 44.226188659667969;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 1381.3095703125;
	setAttr ".hyp[1].y" 44.226188659667969;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 5324.16650390625;
	setAttr ".hyp[2].y" 44.226188659667969;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 6309.880859375;
	setAttr ".hyp[3].y" 24.583333969116211;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 3944.166748046875;
	setAttr ".hyp[4].y" 24.583333969116211;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" 4338.4521484375;
	setAttr ".hyp[5].y" 24.583333969116211;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" 2958.452392578125;
	setAttr ".hyp[6].y" 44.226188659667969;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" 1775.59521484375;
	setAttr ".hyp[7].y" 44.226188659667969;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].x" 10055.595703125;
	setAttr ".hyp[8].y" 44.226188659667969;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" 1972.738037109375;
	setAttr ".hyp[9].y" 24.583333969116211;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].x" 9069.880859375;
	setAttr ".hyp[10].y" 24.583333969116211;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].x" 592.73809814453125;
	setAttr ".hyp[11].y" 44.226188659667969;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].x" 5521.3095703125;
	setAttr ".hyp[12].y" 24.583333969116211;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].x" 8084.16650390625;
	setAttr ".hyp[13].y" 44.226188659667969;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].x" 7098.4521484375;
	setAttr ".hyp[14].y" 24.583333969116211;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].x" 8084.16650390625;
	setAttr ".hyp[15].y" 44.226188659667969;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].x" 4141.3095703125;
	setAttr ".hyp[16].y" 44.226188659667969;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].x" 7492.73828125;
	setAttr ".hyp[17].y" 24.583333969116211;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].x" 7098.4521484375;
	setAttr ".hyp[18].y" 24.583333969116211;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].x" 5915.59521484375;
	setAttr ".hyp[19].y" 24.583333969116211;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].x" 8872.73828125;
	setAttr ".hyp[20].y" 44.226188659667969;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].x" 5127.02392578125;
	setAttr ".hyp[21].y" 24.583333969116211;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].x" 7492.73828125;
	setAttr ".hyp[22].y" 24.583333969116211;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].x" 9661.3095703125;
	setAttr ".hyp[23].y" 44.226188659667969;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].x" 987.0238037109375;
	setAttr ".hyp[24].y" 44.226188659667969;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].x" 4535.59521484375;
	setAttr ".hyp[25].y" 44.226188659667969;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].x" 1775.59521484375;
	setAttr ".hyp[26].y" 44.226188659667969;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].x" 10449.880859375;
	setAttr ".hyp[27].y" 44.226188659667969;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].x" 6704.16650390625;
	setAttr ".hyp[28].y" 24.583333969116211;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].x" 4929.880859375;
	setAttr ".hyp[29].y" 44.226188659667969;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].x" 6507.02392578125;
	setAttr ".hyp[30].y" 44.226188659667969;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].x" 10449.880859375;
	setAttr ".hyp[31].y" 44.226188659667969;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].x" 3549.880859375;
	setAttr ".hyp[32].y" 24.583333969116211;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].x" 3352.738037109375;
	setAttr ".hyp[33].y" 44.226188659667969;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].x" 9661.3095703125;
	setAttr ".hyp[34].y" 44.226188659667969;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].x" 9464.1669921875;
	setAttr ".hyp[35].y" 24.583333969116211;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].x" 9069.880859375;
	setAttr ".hyp[36].y" 24.583333969116211;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].x" 5324.16650390625;
	setAttr ".hyp[37].y" 44.226188659667969;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].x" 789.8809814453125;
	setAttr ".hyp[38].y" 24.583333969116211;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].x" 10844.1669921875;
	setAttr ".hyp[39].y" 44.226188659667969;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].x" 9858.4521484375;
	setAttr ".hyp[40].y" 24.583333969116211;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].x" 7689.880859375;
	setAttr ".hyp[41].y" 44.226188659667969;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].x" 11041.3095703125;
	setAttr ".hyp[42].y" 24.583333969116211;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].x" 10647.0234375;
	setAttr ".hyp[43].y" 24.583333969116211;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].x" 6507.02392578125;
	setAttr ".hyp[44].y" 44.226188659667969;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].x" 2169.880859375;
	setAttr ".hyp[45].y" 44.226188659667969;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].x" 4732.73828125;
	setAttr ".hyp[46].y" 24.583333969116211;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].x" 6112.73828125;
	setAttr ".hyp[47].y" 44.226188659667969;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].x" 9267.0234375;
	setAttr ".hyp[48].y" 44.226188659667969;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].x" 1381.3095703125;
	setAttr ".hyp[49].y" 44.226188659667969;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].x" 10055.595703125;
	setAttr ".hyp[50].y" 44.226188659667969;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].x" 2367.02392578125;
	setAttr ".hyp[51].y" 24.583333969116211;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].x" 8675.595703125;
	setAttr ".hyp[52].y" 24.583333969116211;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].x" 5127.02392578125;
	setAttr ".hyp[53].y" 24.583333969116211;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].x" 198.45237731933594;
	setAttr ".hyp[54].y" 44.226188659667969;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].x" 6901.3095703125;
	setAttr ".hyp[55].y" 44.226188659667969;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].x" 2761.3095703125;
	setAttr ".hyp[56].y" 24.583333969116211;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].x" 9464.1669921875;
	setAttr ".hyp[57].y" 24.583333969116211;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].x" 9267.0234375;
	setAttr ".hyp[58].y" 44.226188659667969;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].x" 5521.3095703125;
	setAttr ".hyp[59].y" 24.583333969116211;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].x" 395.59524536132812;
	setAttr ".hyp[60].y" 24.583333969116211;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].x" 7295.59521484375;
	setAttr ".hyp[61].y" 44.226188659667969;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].x" 3352.738037109375;
	setAttr ".hyp[62].y" 44.226188659667969;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].x" 2564.166748046875;
	setAttr ".hyp[63].y" 44.226188659667969;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].x" 8675.595703125;
	setAttr ".hyp[64].y" 24.583333969116211;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].x" 5718.4521484375;
	setAttr ".hyp[65].y" 44.226188659667969;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].x" 1184.1666259765625;
	setAttr ".hyp[66].y" 24.583333969116211;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].x" 3747.02392578125;
	setAttr ".hyp[67].y" 44.226188659667969;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].x" 4141.3095703125;
	setAttr ".hyp[68].y" 44.226188659667969;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].x" 3155.59521484375;
	setAttr ".hyp[69].y" 24.583333969116211;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].x" 11041.3095703125;
	setAttr ".hyp[70].y" 24.583333969116211;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].x" 592.73809814453125;
	setAttr ".hyp[71].y" 44.226188659667969;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].x" 789.8809814453125;
	setAttr ".hyp[72].y" 24.583333969116211;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].x" 4732.73828125;
	setAttr ".hyp[73].y" 24.583333969116211;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].x" 11238.4521484375;
	setAttr ".hyp[74].y" 44.226188659667969;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].x" 10252.73828125;
	setAttr ".hyp[75].y" 24.583333969116211;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].x" 1184.1666259765625;
	setAttr ".hyp[76].y" 24.583333969116211;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].x" 2958.452392578125;
	setAttr ".hyp[77].y" 44.226188659667969;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].x" 10252.73828125;
	setAttr ".hyp[78].y" 24.583333969116211;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].x" 3549.880859375;
	setAttr ".hyp[79].y" 24.583333969116211;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].x" 7887.02392578125;
	setAttr ".hyp[80].y" 24.583333969116211;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].x" 2564.166748046875;
	setAttr ".hyp[81].y" 44.226188659667969;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].x" 2169.880859375;
	setAttr ".hyp[82].y" 44.226188659667969;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].x" 1972.738037109375;
	setAttr ".hyp[83].y" 24.583333969116211;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].x" 6112.73828125;
	setAttr ".hyp[84].y" 44.226188659667969;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].x" 8872.73828125;
	setAttr ".hyp[85].y" 44.226188659667969;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].x" 8281.3095703125;
	setAttr ".hyp[86].y" 24.583333969116211;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].x" 5915.59521484375;
	setAttr ".hyp[87].y" 24.583333969116211;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].x" 2761.3095703125;
	setAttr ".hyp[88].y" 24.583333969116211;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].x" 1578.452392578125;
	setAttr ".hyp[89].y" 24.583333969116211;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].x" 1578.452392578125;
	setAttr ".hyp[90].y" 24.583333969116211;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].x" 4338.4521484375;
	setAttr ".hyp[91].y" 24.583333969116211;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].x" 6901.3095703125;
	setAttr ".hyp[92].y" 44.226188659667969;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].x" 9858.4521484375;
	setAttr ".hyp[93].y" 24.583333969116211;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].x" 8478.4521484375;
	setAttr ".hyp[94].y" 44.226188659667969;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].x" 1.3095238208770752;
	setAttr ".hyp[95].y" 77.26190185546875;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].x" 7887.02392578125;
	setAttr ".hyp[96].y" 24.583333969116211;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].x" 4929.880859375;
	setAttr ".hyp[97].y" 44.226188659667969;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].x" 395.59524536132812;
	setAttr ".hyp[98].y" 24.583333969116211;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].x" 1.3095238208770752;
	setAttr ".hyp[99].y" -1.3095238208770752;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].x" 10647.0234375;
	setAttr ".hyp[100].y" 24.583333969116211;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].x" 4535.59521484375;
	setAttr ".hyp[101].y" 44.226188659667969;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].x" 8478.4521484375;
	setAttr ".hyp[102].y" 44.226188659667969;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].x" 6704.16650390625;
	setAttr ".hyp[103].y" 24.583333969116211;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].x" 5718.4521484375;
	setAttr ".hyp[104].y" 44.226188659667969;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].x" 3944.166748046875;
	setAttr ".hyp[105].y" 24.583333969116211;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].x" 7689.880859375;
	setAttr ".hyp[106].y" 44.226188659667969;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].x" 10844.1669921875;
	setAttr ".hyp[107].y" 44.226188659667969;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].x" 2367.02392578125;
	setAttr ".hyp[108].y" 24.583333969116211;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].x" 3747.02392578125;
	setAttr ".hyp[109].y" 44.226188659667969;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].x" 7295.59521484375;
	setAttr ".hyp[110].y" 44.226188659667969;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].x" 6309.880859375;
	setAttr ".hyp[111].y" 24.583333969116211;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].x" 8281.3095703125;
	setAttr ".hyp[112].y" 24.583333969116211;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].x" 198.45237731933594;
	setAttr ".hyp[113].y" 44.226188659667969;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].x" 3155.59521484375;
	setAttr ".hyp[114].y" 24.583333969116211;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].x" 1.3095238208770752;
	setAttr ".hyp[115].y" -1.3095238208770752;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].x" 1.3095238208770752;
	setAttr ".hyp[116].y" -1.3095238208770752;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].x" 1.3095238208770752;
	setAttr ".hyp[117].y" -1.3095238208770752;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".hyp[118].x" 1.3095238208770752;
	setAttr ".hyp[118].y" -1.3095238208770752;
	setAttr ".hyp[118].nvs" 1920;
	setAttr ".hyp[119].x" 1.3095238208770752;
	setAttr ".hyp[119].y" -1.3095238208770752;
	setAttr ".hyp[119].nvs" 1920;
	setAttr ".hyp[120].x" 1.3095238208770752;
	setAttr ".hyp[120].y" -1.3095238208770752;
	setAttr ".hyp[120].nvs" 1920;
	setAttr ".hyp[121].x" 1.3095238208770752;
	setAttr ".hyp[121].y" -1.3095238208770752;
	setAttr ".hyp[121].nvs" 1920;
	setAttr ".hyp[122].x" 1.3095238208770752;
	setAttr ".hyp[122].y" -1.3095238208770752;
	setAttr ".hyp[122].nvs" 1920;
	setAttr ".hyp[123].x" 1.3095238208770752;
	setAttr ".hyp[123].y" -1.3095238208770752;
	setAttr ".hyp[123].nvs" 1920;
	setAttr ".hyp[124].x" 1.3095238208770752;
	setAttr ".hyp[124].y" -1.3095238208770752;
	setAttr ".hyp[124].nvs" 1920;
	setAttr ".hyp[125].x" 1.3095238208770752;
	setAttr ".hyp[125].y" -1.3095238208770752;
	setAttr ".hyp[125].nvs" 1920;
	setAttr ".hyp[126].x" 1.3095238208770752;
	setAttr ".hyp[126].y" -1.3095238208770752;
	setAttr ".hyp[126].nvs" 1920;
	setAttr ".hyp[127].x" 1.3095238208770752;
	setAttr ".hyp[127].y" -1.3095238208770752;
	setAttr ".hyp[127].nvs" 1920;
	setAttr ".hyp[128].x" 1.3095238208770752;
	setAttr ".hyp[128].y" -1.3095238208770752;
	setAttr ".hyp[128].nvs" 1920;
	setAttr ".hyp[129].x" 1.3095238208770752;
	setAttr ".hyp[129].y" -1.3095238208770752;
	setAttr ".hyp[129].nvs" 1920;
	setAttr ".hyp[130].x" 1.3095238208770752;
	setAttr ".hyp[130].y" -1.3095238208770752;
	setAttr ".hyp[130].nvs" 1920;
	setAttr ".hyp[131].x" 1.3095238208770752;
	setAttr ".hyp[131].y" -1.3095238208770752;
	setAttr ".hyp[131].nvs" 1920;
	setAttr ".hyp[132].x" 1.3095238208770752;
	setAttr ".hyp[132].y" -1.3095238208770752;
	setAttr ".hyp[132].nvs" 1920;
	setAttr ".hyp[133].x" 1.3095238208770752;
	setAttr ".hyp[133].y" -1.3095238208770752;
	setAttr ".hyp[133].nvs" 1920;
	setAttr ".hyp[134].x" 1.3095238208770752;
	setAttr ".hyp[134].y" -1.3095238208770752;
	setAttr ".hyp[134].nvs" 1920;
	setAttr ".hyp[135].x" 1.3095238208770752;
	setAttr ".hyp[135].y" -1.3095238208770752;
	setAttr ".hyp[135].nvs" 1920;
	setAttr ".hyp[136].x" 1.3095238208770752;
	setAttr ".hyp[136].y" -1.3095238208770752;
	setAttr ".hyp[136].nvs" 1920;
	setAttr ".hyp[137].x" 1.3095238208770752;
	setAttr ".hyp[137].y" -1.3095238208770752;
	setAttr ".hyp[137].nvs" 1920;
	setAttr ".hyp[138].x" 1.3095238208770752;
	setAttr ".hyp[138].y" -1.3095238208770752;
	setAttr ".hyp[138].nvs" 1920;
	setAttr ".hyp[139].x" 1.3095238208770752;
	setAttr ".hyp[139].y" -1.3095238208770752;
	setAttr ".hyp[139].nvs" 1920;
	setAttr ".hyp[140].x" 1.3095238208770752;
	setAttr ".hyp[140].y" -1.3095238208770752;
	setAttr ".hyp[140].nvs" 1920;
	setAttr ".hyp[141].x" 1.3095238208770752;
	setAttr ".hyp[141].y" -1.3095238208770752;
	setAttr ".hyp[141].nvs" 1920;
	setAttr ".hyp[142].x" 1.3095238208770752;
	setAttr ".hyp[142].y" -1.3095238208770752;
	setAttr ".hyp[142].nvs" 1920;
	setAttr ".hyp[143].x" 1.3095238208770752;
	setAttr ".hyp[143].y" -1.3095238208770752;
	setAttr ".hyp[143].nvs" 1920;
	setAttr ".hyp[144].x" 1.3095238208770752;
	setAttr ".hyp[144].y" -1.3095238208770752;
	setAttr ".hyp[144].nvs" 1920;
	setAttr ".hyp[145].x" 1.3095238208770752;
	setAttr ".hyp[145].y" -1.3095238208770752;
	setAttr ".hyp[145].nvs" 1920;
	setAttr ".hyp[146].x" 1.3095238208770752;
	setAttr ".hyp[146].y" -1.3095238208770752;
	setAttr ".hyp[146].nvs" 1920;
	setAttr ".hyp[147].x" 1.3095238208770752;
	setAttr ".hyp[147].y" -1.3095238208770752;
	setAttr ".hyp[147].nvs" 1920;
	setAttr ".hyp[148].x" 1.3095238208770752;
	setAttr ".hyp[148].y" -1.3095238208770752;
	setAttr ".hyp[148].nvs" 1920;
	setAttr ".hyp[149].x" 1.3095238208770752;
	setAttr ".hyp[149].y" -1.3095238208770752;
	setAttr ".hyp[149].nvs" 1920;
	setAttr ".hyp[150].x" 1.3095238208770752;
	setAttr ".hyp[150].y" -1.3095238208770752;
	setAttr ".hyp[150].nvs" 1920;
	setAttr ".hyp[151].x" 1.3095238208770752;
	setAttr ".hyp[151].y" -1.3095238208770752;
	setAttr ".hyp[151].nvs" 1920;
	setAttr ".hyp[152].x" 1.3095238208770752;
	setAttr ".hyp[152].y" -1.3095238208770752;
	setAttr ".hyp[152].nvs" 1920;
	setAttr ".hyp[153].x" 1.3095238208770752;
	setAttr ".hyp[153].y" -1.3095238208770752;
	setAttr ".hyp[153].nvs" 1920;
	setAttr ".hyp[154].x" 1.3095238208770752;
	setAttr ".hyp[154].y" -1.3095238208770752;
	setAttr ".hyp[154].nvs" 1920;
	setAttr ".hyp[155].x" 1.3095238208770752;
	setAttr ".hyp[155].y" -1.3095238208770752;
	setAttr ".hyp[155].nvs" 1920;
	setAttr ".hyp[156].x" 1.3095238208770752;
	setAttr ".hyp[156].y" -1.3095238208770752;
	setAttr ".hyp[156].nvs" 1920;
	setAttr ".hyp[157].x" 1.3095238208770752;
	setAttr ".hyp[157].y" -1.3095238208770752;
	setAttr ".hyp[157].nvs" 1920;
	setAttr ".hyp[158].x" 1.3095238208770752;
	setAttr ".hyp[158].y" -1.3095238208770752;
	setAttr ".hyp[158].nvs" 1920;
	setAttr ".hyp[159].x" 1.3095238208770752;
	setAttr ".hyp[159].y" -1.3095238208770752;
	setAttr ".hyp[159].nvs" 1920;
	setAttr ".hyp[160].x" 1.3095238208770752;
	setAttr ".hyp[160].y" -1.3095238208770752;
	setAttr ".hyp[160].nvs" 1920;
	setAttr ".hyp[161].x" 1.3095238208770752;
	setAttr ".hyp[161].y" -1.3095238208770752;
	setAttr ".hyp[161].nvs" 1920;
	setAttr ".hyp[162].x" 1.3095238208770752;
	setAttr ".hyp[162].y" -1.3095238208770752;
	setAttr ".hyp[162].nvs" 1920;
	setAttr ".hyp[163].x" 1.3095238208770752;
	setAttr ".hyp[163].y" -1.3095238208770752;
	setAttr ".hyp[163].nvs" 1920;
	setAttr ".hyp[164].x" 1.3095238208770752;
	setAttr ".hyp[164].y" -1.3095238208770752;
	setAttr ".hyp[164].nvs" 1920;
	setAttr ".hyp[165].x" 1.3095238208770752;
	setAttr ".hyp[165].y" -1.3095238208770752;
	setAttr ".hyp[165].nvs" 1920;
	setAttr ".hyp[166].x" 1.3095238208770752;
	setAttr ".hyp[166].y" -1.3095238208770752;
	setAttr ".hyp[166].nvs" 1920;
	setAttr ".hyp[167].x" 1.3095238208770752;
	setAttr ".hyp[167].y" -1.3095238208770752;
	setAttr ".hyp[167].nvs" 1920;
	setAttr ".hyp[168].x" 1.3095238208770752;
	setAttr ".hyp[168].y" -1.3095238208770752;
	setAttr ".hyp[168].nvs" 1920;
	setAttr ".hyp[169].x" 1.3095238208770752;
	setAttr ".hyp[169].y" -1.3095238208770752;
	setAttr ".hyp[169].nvs" 1920;
	setAttr ".hyp[170].x" 1.3095238208770752;
	setAttr ".hyp[170].y" -1.3095238208770752;
	setAttr ".hyp[170].nvs" 1920;
	setAttr ".hyp[171].x" 1.3095238208770752;
	setAttr ".hyp[171].y" -1.3095238208770752;
	setAttr ".hyp[171].nvs" 1920;
	setAttr ".anf" yes;
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
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 0\n                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 1\n                -manipulators 1\n                -pluginShapes 0\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 0\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 0\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
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
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 1\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 1\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 45 100 -ps 2 55 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 1\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 1\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode reference -n "Psylocke_wHairRN";
	setAttr -s 207 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Psylocke_wHairRN"
		"Psylocke_wHairRN" 0
		"Psylocke_wHairRN" 427
		2 "|Psylocke_wHair:Skeleton_Root|Psylocke_wHair:L_hip|Psylocke_wHair:L_knee|Psylocke_wHair:L_ankle|Psylocke_wHair:L_ball|Psylocke_wHair:L_toe" 
		"translate" " -type \"double3\" -0.652113 0 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG" 
		"translate" " -type \"double3\" 0.16812 -0.310632 -0.304457"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG" 
		"rotate" " -type \"double3\" 20 -60 -15"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:MidRot|Psylocke_wHair:MidBackGRP|Psylocke_wHair:cnt_MidBackLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_MidBackLocator" 
		"translate" " -type \"double3\" 0.0304144 0 -0.0839491"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:MidRot|Psylocke_wHair:MidBackGRP|Psylocke_wHair:cnt_MidBackLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_MidBackLocator" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:MidRot|Psylocke_wHair:MidBackGRP|Psylocke_wHair:cnt_MidBackLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_MidBackLocator" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:MidRot|Psylocke_wHair:MidBackGRP|Psylocke_wHair:cnt_MidBackLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_MidBackLocator" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:MidRot|Psylocke_wHair:MidBackGRP|Psylocke_wHair:cnt_MidBackLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_MidBackLocator" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:MidRot|Psylocke_wHair:MidBackGRP|Psylocke_wHair:cnt_MidBackLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_MidBackLocator" 
		"rotateX" " -k 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:MidRot|Psylocke_wHair:MidBackGRP|Psylocke_wHair:cnt_MidBackLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_MidBackLocator" 
		"rotateY" " -k 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:MidRot|Psylocke_wHair:MidBackGRP|Psylocke_wHair:cnt_MidBackLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_MidBackLocator" 
		"rotateZ" " -k 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"translate" " -type \"double3\" 0.310411 0.0597364 0.166646"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"rotate" " -type \"double3\" -7.598735 -17.340466 9.389629"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"shoulderFlex" " -av -k 1 0.2"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"sideFlex" " -av -k 1 0.5"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"frontFlex" " -av -k 1 0.5"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody" 
		"twistFlex" " -av -k 1 0.5"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc" 
		"rotate" " -type \"double3\" 23.392492 -16.285523 0.670594"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_shoulder_Loc" 
		"rotate" " -type \"double3\" -28.649855 -17.037036 -2.20656"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_shoulder_Loc" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_shoulder_Loc" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_shoulder_Loc" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"translate" " -type \"double3\" 0.484835 0.035477 0.579545"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"rotate" " -type \"double3\" 87.845566 3.38805 57.520687"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"ikBlend" " -av -k 1 10"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"elbowTwist" " -av -k 1 -5"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc" 
		"handToWorld" " -av -k 1 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"translate" " -type \"double3\" -2.837195 -2.3 -0.3"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"rotate" " -type \"double3\" 109.807342 40.755066 -55.16549"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"ikBlend" " -av -k 1 10"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"elbowTwist" " -av -k 1 3.2"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_Loc" 
		"handToWorld" " -av -k 1 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_poleConstraint_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_poleConstraint" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_poleConstraint_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_poleConstraint" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_poleConstraint_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_poleConstraint" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_poleConstraint_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_poleConstraint" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_poleConstraint_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_poleConstraint" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_poleConstraint_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_poleConstraint" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_poleConstraint_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_poleConstraint" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_R_wristIK_poleConstraint_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wristIK_poleConstraint" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_HipLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_HipLocator" 
		"translate" " -type \"double3\" 0.338457 0.0578031 0.239795"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_HipLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_HipLocator" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_HipLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_HipLocator" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_HipLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_HipLocator" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_HipLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_HipLocator" 
		"rotate" " -type \"double3\" 2.450379 18.43808 3.038083"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_HipLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_HipLocator" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_HipLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_HipLocator" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_HipLocator_ZERO_NODE_DNT|Psylocke_wHair:cnt_HipLocator" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_Neck_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Neck_1_Loc" 
		"rotate" " -type \"double3\" 0 7.54171 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_Neck_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Neck_1_Loc" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_Neck_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Neck_1_Loc" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_Neck_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Neck_1_Loc" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_Neck_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Neck_1_Loc|Psylocke_wHair:cnt_Head_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Head_1_Loc" 
		"rotate" " -type \"double3\" 51.872862 -8.119711 0.718315"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_Neck_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Neck_1_Loc|Psylocke_wHair:cnt_Head_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Head_1_Loc" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_Neck_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Neck_1_Loc|Psylocke_wHair:cnt_Head_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Head_1_Loc" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_Neck_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Neck_1_Loc|Psylocke_wHair:cnt_Head_1_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_Head_1_Loc" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_L_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_L_wrist_posNode|Psylocke_wHair:jStick_L_wrist" 
		"translate" " -type \"double3\" 0.398221 0.726716 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_L_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_L_wrist_posNode|Psylocke_wHair:jStick_L_wrist" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_L_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_L_wrist_posNode|Psylocke_wHair:jStick_L_wrist" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_L_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_L_wrist_posNode|Psylocke_wHair:jStick_L_wrist" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_L_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_L_wrist_posNode|Psylocke_wHair:jStick_L_wrist" 
		"rotate" " -type \"double3\" 17.742534 0 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_L_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_L_wrist_posNode|Psylocke_wHair:jStick_L_wrist" 
		"rotateX" " -k 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_L_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_L_wrist_posNode|Psylocke_wHair:jStick_L_wrist" 
		"rotateY" " -k 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_L_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_L_wrist_posNode|Psylocke_wHair:jStick_L_wrist" 
		"rotateZ" " -k 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_R_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_R_wrist_posNode|Psylocke_wHair:jStick_R_wrist" 
		"translate" " -type \"double3\" 1 0.393479 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_R_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_R_wrist_posNode|Psylocke_wHair:jStick_R_wrist" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_R_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_R_wrist_posNode|Psylocke_wHair:jStick_R_wrist" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:jStick_R_wrist_posNode_ZERO_NODE_DNT|Psylocke_wHair:jStick_R_wrist_posNode|Psylocke_wHair:jStick_R_wrist" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"translate" " -type \"double3\" -0.416766 0.631447 -0.00871105"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"rotate" " -type \"double3\" 0 0 -33.291585"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"ikBlend" " -av -k 1 10"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"KneeTwist" " -av -k 1 0.866311"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"Roll" " -av -k 1 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"ToeTwist" " -av -k 1 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"FootLean" " -av -k 1 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"__KneeTWIST_OFFSET" " -av -k 1 90"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"__rollHEEL_OFFSET" " -av -k 1 6"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"__rollANKLE_OFFSET" " -av -k 1 4"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group" 
		"__rollTOE_OFFSET" " -av -k 1 3.5"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group|Psylocke_wHair:L_toe_Group_ZERO_NODE_DNT|Psylocke_wHair:L_toe_Group|Psylocke_wHair:L_heel_Pivot_ZERO_NODE_DNT|Psylocke_wHair:L_heel_Pivot|Psylocke_wHair:hnd_L_ball" 
		"translate" " -type \"double3\" 1.493044 0.000243654 -0.00190489"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group|Psylocke_wHair:L_toe_Group_ZERO_NODE_DNT|Psylocke_wHair:L_toe_Group|Psylocke_wHair:L_heel_Pivot_ZERO_NODE_DNT|Psylocke_wHair:L_heel_Pivot|Psylocke_wHair:hnd_L_ball" 
		"translateX" " -k 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group|Psylocke_wHair:L_toe_Group_ZERO_NODE_DNT|Psylocke_wHair:L_toe_Group|Psylocke_wHair:L_heel_Pivot_ZERO_NODE_DNT|Psylocke_wHair:L_heel_Pivot|Psylocke_wHair:hnd_L_ball" 
		"translateY" " -k 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_foot_Group|Psylocke_wHair:L_toe_Group_ZERO_NODE_DNT|Psylocke_wHair:L_toe_Group|Psylocke_wHair:L_heel_Pivot_ZERO_NODE_DNT|Psylocke_wHair:L_heel_Pivot|Psylocke_wHair:hnd_L_ball" 
		"translateZ" " -k 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"translate" " -type \"double3\" -0.997138 0.842724 -1.569527"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"rotate" " -type \"double3\" 0 52.120659 48.130936"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"ikBlend" " -av -k 1 10"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"KneeTwist" " -av -k 1 0.518519"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"Roll" " -av -k 1 -1.763704"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"ToeTwist" " -av -k 1 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"FootLean" " -av -k 1 0"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"__KneeTWIST_OFFSET" " -av -k 1 90"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"__rollHEEL_OFFSET" " -av -k 1 6"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"__rollANKLE_OFFSET" " -av -k 1 4"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_foot_Group_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_foot_Group" 
		"__rollTOE_OFFSET" " -av -k 1 3.5"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wrist_World" 
		"translate" " -type \"double3\" 3.5 2 3"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wrist_World" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wrist_World" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wrist_World" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wrist_World" 
		"rotate" " -type \"double3\" 163.761336 17.687548 86.4262"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wrist_World" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wrist_World" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_L_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wrist_World" 
		"rotateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wrist_World" 
		"translate" " -type \"double3\" -5 -5.095679 1.618709"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wrist_World" 
		"translateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wrist_World" 
		"translateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wrist_World" 
		"translateZ" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wrist_World" 
		"rotate" " -type \"double3\" 169.436627 -18.463869 -21.246901"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wrist_World" 
		"rotateX" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wrist_World" 
		"rotateY" " -av"
		2 "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_R_wrist_World_ZERO_NODE_DNT|Psylocke_wHair:cnt_R_wrist_World" 
		"rotateZ" " -av"
		2 "Psylocke_wHair:Mike_Rig" "uv[1:28]" " -s 28 0.5 0.5 0.5 0.2 0 -5 10 0 3.2 10 3.5 4 6 90 0 0 0 0.866311 10 3.5 4 6 90 0 0 -1.763704 0.518519 10"
		
		2 "Psylocke_wHair:Mike_Rig" "unitlessValues" " -s 28"
		2 "Psylocke_wHair:Mike_Rig" "unitlessValues[1]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "unitlessValues[2]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "unitlessValues[3]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "unitlessValues[4]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "unitlessValues[5]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "unitlessValues[6]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "unitlessValues[7]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "lv[1:45]" " -s 45 0 0 0 -0.304457 -0.310632 0.16812 -0.0839491 0 0.0304144 0.166646 0.0597364 0.310411 0.239795 0.0578031 0.338457 0 0 0 0.579545 0.035477 0.484835 3 2 3.5 0 0 0 -0.3 -2.3 -2.837195 1.618709 -5.095679 -5 0 0.726716 0.398221 0 0.393479 1 -0.00871105 0.631447 -0.416766 -1.569527 0.842724 -0.997138"
		
		2 "Psylocke_wHair:Mike_Rig" "linearValues" " -s 45"
		2 "Psylocke_wHair:Mike_Rig" "linearValues[4]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "linearValues[5]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "linearValues[6]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "linearValues[10]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "linearValues[11]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "linearValues[12]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "linearValues[19]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "linearValues[20]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "linearValues[21]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "av[1:42]" " -s 42 0 0 0 -15 -60 20 9.389629 -17.340466 -7.598735 3.038083 18.43808 2.450379 0.670594 -16.285523 23.392492 57.520687 3.38805 87.845566 86.4262 17.687548 163.761336 -2.20656 -17.037036 -28.649855 -55.16549 40.755066 109.807342 -21.246901 -18.463869 169.436627 -33.291585 0 0 48.130936 52.120659 0 0 7.54171 0 0.718315 -8.119711 51.872862"
		
		2 "Psylocke_wHair:Mike_Rig" "angularValues" " -s 42"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[4]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[5]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[6]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[7]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[8]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[9]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[13]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[14]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[15]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[16]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[17]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "angularValues[18]" " -av"
		2 "Psylocke_wHair:Mike_Rig" "referenceMapping" (" -type \"characterMapping\" 115 \"Psylocke_wHair:cnt_charRoot.rotateZ\" 2 1 \"Psylocke_wHair:cnt_charRoot.rotateY\" 2 2 \"Psylocke_wHair:cnt_charRoot.rotateX\" 2 3 \"Psylocke_wHair:cnt_charRoot.translateZ\" 1 1 \"Psylocke_wHair:cnt_charRoot.translateY\" 1 2 \"Psylocke_wHair:cnt_charRoot.translateX\" 1 3 \"Psylocke_wHair:cnt_COG.rotateZ\" 2 4 \"Psylocke_wHair:cnt_COG.rotateY\" 2 5 \"Psylocke_wHair:cnt_COG.rotateX\" 2 6 \"Psylocke_wHair:cnt_COG.translateZ\" 1 4 \"Psylocke_wHair:cnt_COG.translateY\" 1 5 \"Psylocke_wHair:cnt_COG.translateX\" 1 6 \"Psylocke_wHair:cnt_MidBackLocator.translateZ\" 1 7 \"Psylocke_wHair:cnt_MidBackLocator.translateY\" 1 8 \"Psylocke_wHair:cnt_MidBackLocator.translateX\" 1 9 \"Psylocke_wHair:cnt_UpperBody.twistFlex\" 0 1 \"Psylocke_wHair:cnt_UpperBody.frontFlex\" 0 2 \"Psylocke_wHair:cnt_UpperBody.sideFlex\" 0 3 \"Psylocke_wHair:cnt_UpperBody.shoulderFlex\" 0 4 \"Psylocke_wHair:cnt_UpperBody.rotateZ\" 2 7 \"Psylocke_wHair:cnt_UpperBody.rotateY\" 2 8 \"Psylocke_wHair:cnt_UpperBody.rotateX\" 2 9 \"Psylocke_wHair:cnt_UpperBody.translat"
		+ "eZ\" 1 10 \"Psylocke_wHair:cnt_UpperBody.translateY\" 1 11 \"Psylocke_wHair:cnt_UpperBody.translateX\" 1 12 \"Psylocke_wHair:cnt_HipLocator.rotateZ\" 2 10 \"Psylocke_wHair:cnt_HipLocator.rotateY\" 2 11 \"Psylocke_wHair:cnt_HipLocator.rotateX\" 2 12 \"Psylocke_wHair:cnt_HipLocator.translateZ\" 1 13 \"Psylocke_wHair:cnt_HipLocator.translateY\" 1 14 \"Psylocke_wHair:cnt_HipLocator.translateX\" 1 15 \"Psylocke_wHair:cnt_L_shoulder_Loc.rotateZ\" 2 13 \"Psylocke_wHair:cnt_L_shoulder_Loc.rotateY\" 2 14 \"Psylocke_wHair:cnt_L_shoulder_Loc.rotateX\" 2 15 \"Psylocke_wHair:cnt_L_wristIK_poleConstraint.translateZ\" 1 16 \"Psylocke_wHair:cnt_L_wristIK_poleConstraint.translateY\" 1 17 \"Psylocke_wHair:cnt_L_wristIK_poleConstraint.translateX\" 1 18 \"Psylocke_wHair:cnt_L_wristIK_Loc.handToWorld\" 0 5 \"Psylocke_wHair:cnt_L_wristIK_Loc.elbowTwist\" 0 6 \"Psylocke_wHair:cnt_L_wristIK_Loc.ikBlend\" 0 7 \"Psylocke_wHair:cnt_L_wristIK_Loc.rotateZ\" 2 16 \"Psylocke_wHair:cnt_L_wristIK_Loc.rotateY\" 2 17 \"Psylocke_wHair:cnt_L_wristIK_Loc.rotateX\" 2 18 \"Psylocke_wHair:c"
		+ "nt_L_wristIK_Loc.translateZ\" 1 19 \"Psylocke_wHair:cnt_L_wristIK_Loc.translateY\" 1 20 \"Psylocke_wHair:cnt_L_wristIK_Loc.translateX\" 1 21 \"Psylocke_wHair:cnt_L_wrist_World.rotateZ\" 2 19 \"Psylocke_wHair:cnt_L_wrist_World.rotateY\" 2 20 \"Psylocke_wHair:cnt_L_wrist_World.rotateX\" 2 21 \"Psylocke_wHair:cnt_L_wrist_World.translateZ\" 1 22 \"Psylocke_wHair:cnt_L_wrist_World.translateY\" 1 23 \"Psylocke_wHair:cnt_L_wrist_World.translateX\" 1 24 \"Psylocke_wHair:cnt_R_shoulder_Loc.rotateZ\" 2 22 \"Psylocke_wHair:cnt_R_shoulder_Loc.rotateY\" 2 23 \"Psylocke_wHair:cnt_R_shoulder_Loc.rotateX\" 2 24 \"Psylocke_wHair:cnt_R_wristIK_poleConstraint.translateZ\" 1 25 \"Psylocke_wHair:cnt_R_wristIK_poleConstraint.translateY\" 1 26 \"Psylocke_wHair:cnt_R_wristIK_poleConstraint.translateX\" 1 27 \"Psylocke_wHair:cnt_R_wristIK_Loc.handToWorld\" 0 8 \"Psylocke_wHair:cnt_R_wristIK_Loc.elbowTwist\" 0 9 \"Psylocke_wHair:cnt_R_wristIK_Loc.ikBlend\" 0 10 \"Psylocke_wHair:cnt_R_wristIK_Loc.rotateZ\" 2 25 \"Psylocke_wHair:cnt_R_wristIK_Loc.rotateY\" 2 26 \"Psylocke_wHa"
		+ "ir:cnt_R_wristIK_Loc.rotateX\" 2 27 \"Psylocke_wHair:cnt_R_wristIK_Loc.translateZ\" 1 28 \"Psylocke_wHair:cnt_R_wristIK_Loc.translateY\" 1 29 \"Psylocke_wHair:cnt_R_wristIK_Loc.translateX\" 1 30 \"Psylocke_wHair:cnt_R_wrist_World.rotateZ\" 2 28 \"Psylocke_wHair:cnt_R_wrist_World.rotateY\" 2 29 \"Psylocke_wHair:cnt_R_wrist_World.rotateX\" 2 30 \"Psylocke_wHair:cnt_R_wrist_World.translateZ\" 1 31 \"Psylocke_wHair:cnt_R_wrist_World.translateY\" 1 32 \"Psylocke_wHair:cnt_R_wrist_World.translateX\" 1 33 \"Psylocke_wHair:jStick_L_wrist.translateZ\" 1 34 \"Psylocke_wHair:jStick_L_wrist.translateY\" 1 35 \"Psylocke_wHair:jStick_L_wrist.translateX\" 1 36 \"Psylocke_wHair:jStick_R_wrist.translateZ\" 1 37 \"Psylocke_wHair:jStick_R_wrist.translateY\" 1 38 \"Psylocke_wHair:jStick_R_wrist.translateX\" 1 39 \"Psylocke_wHair:cnt_L_foot_Group.__rollTOE_OFFSET\" 0 11 \"Psylocke_wHair:cnt_L_foot_Group.__rollANKLE_OFFSET\" 0 12 \"Psylocke_wHair:cnt_L_foot_Group.__rollHEEL_OFFSET\" 0 13 \"Psylocke_wHair:cnt_L_foot_Group.__KneeTWIST_OFFSET\" 0 14 \"Psylocke_wHair:cnt_L_"
		+ "foot_Group.FootLean\" 0 15 \"Psylocke_wHair:cnt_L_foot_Group.ToeTwist\" 0 16 \"Psylocke_wHair:cnt_L_foot_Group.Roll\" 0 17 \"Psylocke_wHair:cnt_L_foot_Group.KneeTwist\" 0 18 \"Psylocke_wHair:cnt_L_foot_Group.ikBlend\" 0 19 \"Psylocke_wHair:cnt_L_foot_Group.rotateZ\" 2 31 \"Psylocke_wHair:cnt_L_foot_Group.rotateY\" 2 32 \"Psylocke_wHair:cnt_L_foot_Group.rotateX\" 2 33 \"Psylocke_wHair:cnt_L_foot_Group.translateZ\" 1 40 \"Psylocke_wHair:cnt_L_foot_Group.translateY\" 1 41 \"Psylocke_wHair:cnt_L_foot_Group.translateX\" 1 42 \"Psylocke_wHair:cnt_R_foot_Group.__rollTOE_OFFSET\" 0 20 \"Psylocke_wHair:cnt_R_foot_Group.__rollANKLE_OFFSET\" 0 21 \"Psylocke_wHair:cnt_R_foot_Group.__rollHEEL_OFFSET\" 0 22 \"Psylocke_wHair:cnt_R_foot_Group.__KneeTWIST_OFFSET\" 0 23 \"Psylocke_wHair:cnt_R_foot_Group.FootLean\" 0 24 \"Psylocke_wHair:cnt_R_foot_Group.ToeTwist\" 0 25 \"Psylocke_wHair:cnt_R_foot_Group.Roll\" 0 26 \"Psylocke_wHair:cnt_R_foot_Group.KneeTwist\" 0 27 \"Psylocke_wHair:cnt_R_foot_Group.ikBlend\" 0 28 \"Psylocke_wHair:cnt_R_foot_Group.rotateZ\" 2 34 \"Psyloc"
		+ "ke_wHair:cnt_R_foot_Group.rotateY\" 2 35 \"Psylocke_wHair:cnt_R_foot_Group.rotateX\" 2 36 \"Psylocke_wHair:cnt_R_foot_Group.translateZ\" 1 43 \"Psylocke_wHair:cnt_R_foot_Group.translateY\" 1 44 \"Psylocke_wHair:cnt_R_foot_Group.translateX\" 1 45 \"Psylocke_wHair:cnt_Neck_1_Loc.rotateZ\" 2 37 \"Psylocke_wHair:cnt_Neck_1_Loc.rotateY\" 2 38 \"Psylocke_wHair:cnt_Neck_1_Loc.rotateX\" 2 39 \"Psylocke_wHair:cnt_Head_1_Loc.rotateZ\" 2 40 \"Psylocke_wHair:cnt_Head_1_Loc.rotateY\" 2 41 \"Psylocke_wHair:cnt_Head_1_Loc.rotateX\" 2 42"
		)
		3 "Psylocke_wHair:Mike_Rig.angularValues[15]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateX" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[14]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateY" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[13]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateZ" 
		""
		3 "Psylocke_wHair:Mike_Rig.linearValues[6]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.translateX" 
		""
		3 "Psylocke_wHair:Mike_Rig.linearValues[5]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.translateY" 
		""
		3 "Psylocke_wHair:Mike_Rig.linearValues[4]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.translateZ" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[6]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateX" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[5]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateY" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[4]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateZ" 
		""
		3 "Psylocke_wHair:Mike_Rig.linearValues[12]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.translateX" 
		""
		3 "Psylocke_wHair:Mike_Rig.linearValues[11]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.translateY" 
		""
		3 "Psylocke_wHair:Mike_Rig.linearValues[10]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.translateZ" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[9]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateX" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[8]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateY" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[7]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateZ" 
		""
		3 "Psylocke_wHair:Mike_Rig.unitlessValues[4]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.shoulderFlex" 
		""
		3 "Psylocke_wHair:Mike_Rig.unitlessValues[3]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.sideFlex" 
		""
		3 "Psylocke_wHair:Mike_Rig.unitlessValues[2]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.frontFlex" 
		""
		3 "Psylocke_wHair:Mike_Rig.unitlessValues[1]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.twistFlex" 
		""
		3 "Psylocke_wHair:Mike_Rig.linearValues[21]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.translateX" 
		""
		3 "Psylocke_wHair:Mike_Rig.linearValues[20]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.translateY" 
		""
		3 "Psylocke_wHair:Mike_Rig.linearValues[19]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.translateZ" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[18]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateX" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[17]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateY" 
		""
		3 "Psylocke_wHair:Mike_Rig.angularValues[16]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateZ" 
		""
		3 "Psylocke_wHair:Mike_Rig.unitlessValues[7]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.ikBlend" 
		""
		3 "Psylocke_wHair:Mike_Rig.unitlessValues[6]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.elbowTwist" 
		""
		3 "Psylocke_wHair:Mike_Rig.unitlessValues[5]" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.handToWorld" 
		""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:Psylocke_hair.drawOverride" 
		"Psylocke_wHairRN.placeHolderList[1]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:Skeleton_Root.drawOverride" 
		"Psylocke_wHairRN.placeHolderList[2]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:Psylocke_New.drawOverride" "Psylocke_wHairRN.placeHolderList[3]" 
		""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:Psylocke_Shoes.drawOverride" 
		"Psylocke_wHairRN.placeHolderList[4]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.translateX" 
		"Psylocke_wHairRN.placeHolderList[5]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.translateX" 
		"Psylocke_wHairRN.placeHolderList[6]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.translateY" 
		"Psylocke_wHairRN.placeHolderList[7]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.translateY" 
		"Psylocke_wHairRN.placeHolderList[8]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.translateZ" 
		"Psylocke_wHairRN.placeHolderList[9]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.translateZ" 
		"Psylocke_wHairRN.placeHolderList[10]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateX" 
		"Psylocke_wHairRN.placeHolderList[11]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateX" 
		"Psylocke_wHairRN.placeHolderList[12]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateY" 
		"Psylocke_wHairRN.placeHolderList[13]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateY" 
		"Psylocke_wHairRN.placeHolderList[14]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateZ" 
		"Psylocke_wHairRN.placeHolderList[15]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateZ" 
		"Psylocke_wHairRN.placeHolderList[16]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG.rotateOrder" 
		"Psylocke_wHairRN.placeHolderList[17]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.translateX" 
		"Psylocke_wHairRN.placeHolderList[18]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.translateX" 
		"Psylocke_wHairRN.placeHolderList[19]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.translateZ" 
		"Psylocke_wHairRN.placeHolderList[20]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.translateZ" 
		"Psylocke_wHairRN.placeHolderList[21]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.translateY" 
		"Psylocke_wHairRN.placeHolderList[22]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.translateY" 
		"Psylocke_wHairRN.placeHolderList[23]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateX" 
		"Psylocke_wHairRN.placeHolderList[24]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateX" 
		"Psylocke_wHairRN.placeHolderList[25]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateY" 
		"Psylocke_wHairRN.placeHolderList[26]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateY" 
		"Psylocke_wHairRN.placeHolderList[27]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateZ" 
		"Psylocke_wHairRN.placeHolderList[28]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateZ" 
		"Psylocke_wHairRN.placeHolderList[29]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.shoulderFlex" 
		"Psylocke_wHairRN.placeHolderList[30]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.shoulderFlex" 
		"Psylocke_wHairRN.placeHolderList[31]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.sideFlex" 
		"Psylocke_wHairRN.placeHolderList[32]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.sideFlex" 
		"Psylocke_wHairRN.placeHolderList[33]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.frontFlex" 
		"Psylocke_wHairRN.placeHolderList[34]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.frontFlex" 
		"Psylocke_wHairRN.placeHolderList[35]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.twistFlex" 
		"Psylocke_wHairRN.placeHolderList[36]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.twistFlex" 
		"Psylocke_wHairRN.placeHolderList[37]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody.rotateOrder" 
		"Psylocke_wHairRN.placeHolderList[38]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateX" 
		"Psylocke_wHairRN.placeHolderList[39]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateX" 
		"Psylocke_wHairRN.placeHolderList[40]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateY" 
		"Psylocke_wHairRN.placeHolderList[41]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateY" 
		"Psylocke_wHairRN.placeHolderList[42]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateZ" 
		"Psylocke_wHairRN.placeHolderList[43]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateZ" 
		"Psylocke_wHairRN.placeHolderList[44]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_shoulder_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_shoulder_Loc.rotateOrder" 
		"Psylocke_wHairRN.placeHolderList[45]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateY" 
		"Psylocke_wHairRN.placeHolderList[46]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateY" 
		"Psylocke_wHairRN.placeHolderList[47]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateZ" 
		"Psylocke_wHairRN.placeHolderList[48]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateZ" 
		"Psylocke_wHairRN.placeHolderList[49]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateX" 
		"Psylocke_wHairRN.placeHolderList[50]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateX" 
		"Psylocke_wHairRN.placeHolderList[51]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.rotateOrder" 
		"Psylocke_wHairRN.placeHolderList[52]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.translateX" 
		"Psylocke_wHairRN.placeHolderList[53]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.translateX" 
		"Psylocke_wHairRN.placeHolderList[54]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.translateY" 
		"Psylocke_wHairRN.placeHolderList[55]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.translateY" 
		"Psylocke_wHairRN.placeHolderList[56]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.translateZ" 
		"Psylocke_wHairRN.placeHolderList[57]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.translateZ" 
		"Psylocke_wHairRN.placeHolderList[58]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.ikBlend" 
		"Psylocke_wHairRN.placeHolderList[59]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.ikBlend" 
		"Psylocke_wHairRN.placeHolderList[60]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.elbowTwist" 
		"Psylocke_wHairRN.placeHolderList[61]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.elbowTwist" 
		"Psylocke_wHairRN.placeHolderList[62]" ""
		5 4 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.handToWorld" 
		"Psylocke_wHairRN.placeHolderList[63]" ""
		5 3 "Psylocke_wHairRN" "|Psylocke_wHair:cnt_charRoot_ZERO_NODE_DNT|Psylocke_wHair:cnt_charRoot|Psylocke_wHair:cnt_COG_ZERO_NODE_DNT|Psylocke_wHair:cnt_COG|Psylocke_wHair:cnt_UpperBody_ZERO_NODE_DNT|Psylocke_wHair:cnt_UpperBody|Psylocke_wHair:cnt_L_wristIK_Loc_ZERO_NODE_DNT|Psylocke_wHair:cnt_L_wristIK_Loc.handToWorld" 
		"Psylocke_wHairRN.placeHolderList[64]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[1]" "Psylocke_wHairRN.placeHolderList[65]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[2]" "Psylocke_wHairRN.placeHolderList[66]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[3]" "Psylocke_wHairRN.placeHolderList[67]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[4]" "Psylocke_wHairRN.placeHolderList[68]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[4]" "Psylocke_wHairRN.placeHolderList[69]" 
		"Psylocke_wHair:cnt_COG.tz"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[5]" "Psylocke_wHairRN.placeHolderList[70]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[5]" "Psylocke_wHairRN.placeHolderList[71]" 
		"Psylocke_wHair:cnt_COG.ty"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[6]" "Psylocke_wHairRN.placeHolderList[72]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[6]" "Psylocke_wHairRN.placeHolderList[73]" 
		"Psylocke_wHair:cnt_COG.tx"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[7]" "Psylocke_wHairRN.placeHolderList[74]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[8]" "Psylocke_wHairRN.placeHolderList[75]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[9]" "Psylocke_wHairRN.placeHolderList[76]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[10]" "Psylocke_wHairRN.placeHolderList[77]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[10]" "Psylocke_wHairRN.placeHolderList[78]" 
		"Psylocke_wHair:cnt_UpperBody.tz"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[11]" "Psylocke_wHairRN.placeHolderList[79]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[11]" "Psylocke_wHairRN.placeHolderList[80]" 
		"Psylocke_wHair:cnt_UpperBody.ty"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[12]" "Psylocke_wHairRN.placeHolderList[81]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[12]" "Psylocke_wHairRN.placeHolderList[82]" 
		"Psylocke_wHair:cnt_UpperBody.tx"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[13]" "Psylocke_wHairRN.placeHolderList[83]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[14]" "Psylocke_wHairRN.placeHolderList[84]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[15]" "Psylocke_wHairRN.placeHolderList[85]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[16]" "Psylocke_wHairRN.placeHolderList[86]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[17]" "Psylocke_wHairRN.placeHolderList[87]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[18]" "Psylocke_wHairRN.placeHolderList[88]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[19]" "Psylocke_wHairRN.placeHolderList[89]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[19]" "Psylocke_wHairRN.placeHolderList[90]" 
		"Psylocke_wHair:cnt_L_wristIK_Loc.tz"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[20]" "Psylocke_wHairRN.placeHolderList[91]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[20]" "Psylocke_wHairRN.placeHolderList[92]" 
		"Psylocke_wHair:cnt_L_wristIK_Loc.ty"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[21]" "Psylocke_wHairRN.placeHolderList[93]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[21]" "Psylocke_wHairRN.placeHolderList[94]" 
		"Psylocke_wHair:cnt_L_wristIK_Loc.tx"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[22]" "Psylocke_wHairRN.placeHolderList[95]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[23]" "Psylocke_wHairRN.placeHolderList[96]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[24]" "Psylocke_wHairRN.placeHolderList[97]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[25]" "Psylocke_wHairRN.placeHolderList[98]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[26]" "Psylocke_wHairRN.placeHolderList[99]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[27]" "Psylocke_wHairRN.placeHolderList[100]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[28]" "Psylocke_wHairRN.placeHolderList[101]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[29]" "Psylocke_wHairRN.placeHolderList[102]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[30]" "Psylocke_wHairRN.placeHolderList[103]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[31]" "Psylocke_wHairRN.placeHolderList[104]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[32]" "Psylocke_wHairRN.placeHolderList[105]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[33]" "Psylocke_wHairRN.placeHolderList[106]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[34]" "Psylocke_wHairRN.placeHolderList[107]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[35]" "Psylocke_wHairRN.placeHolderList[108]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[36]" "Psylocke_wHairRN.placeHolderList[109]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[37]" "Psylocke_wHairRN.placeHolderList[110]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[38]" "Psylocke_wHairRN.placeHolderList[111]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[39]" "Psylocke_wHairRN.placeHolderList[112]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[40]" "Psylocke_wHairRN.placeHolderList[113]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[41]" "Psylocke_wHairRN.placeHolderList[114]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[42]" "Psylocke_wHairRN.placeHolderList[115]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[43]" "Psylocke_wHairRN.placeHolderList[116]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[44]" "Psylocke_wHairRN.placeHolderList[117]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.linearValues[45]" "Psylocke_wHairRN.placeHolderList[118]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[1]" "Psylocke_wHairRN.placeHolderList[119]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[2]" "Psylocke_wHairRN.placeHolderList[120]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[3]" "Psylocke_wHairRN.placeHolderList[121]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[4]" "Psylocke_wHairRN.placeHolderList[122]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[4]" "Psylocke_wHairRN.placeHolderList[123]" 
		"Psylocke_wHair:cnt_COG.rz"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[5]" "Psylocke_wHairRN.placeHolderList[124]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[5]" "Psylocke_wHairRN.placeHolderList[125]" 
		"Psylocke_wHair:cnt_COG.ry"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[6]" "Psylocke_wHairRN.placeHolderList[126]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[6]" "Psylocke_wHairRN.placeHolderList[127]" 
		"Psylocke_wHair:cnt_COG.rx"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[7]" "Psylocke_wHairRN.placeHolderList[128]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[7]" "Psylocke_wHairRN.placeHolderList[129]" 
		"Psylocke_wHair:cnt_UpperBody.rz"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[8]" "Psylocke_wHairRN.placeHolderList[130]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[8]" "Psylocke_wHairRN.placeHolderList[131]" 
		"Psylocke_wHair:cnt_UpperBody.ry"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[9]" "Psylocke_wHairRN.placeHolderList[132]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[9]" "Psylocke_wHairRN.placeHolderList[133]" 
		"Psylocke_wHair:cnt_UpperBody.rx"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[10]" "Psylocke_wHairRN.placeHolderList[134]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[11]" "Psylocke_wHairRN.placeHolderList[135]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[12]" "Psylocke_wHairRN.placeHolderList[136]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[13]" "Psylocke_wHairRN.placeHolderList[137]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[13]" "Psylocke_wHairRN.placeHolderList[138]" 
		"Psylocke_wHair:cnt_L_shoulder_Loc.rz"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[14]" "Psylocke_wHairRN.placeHolderList[139]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[14]" "Psylocke_wHairRN.placeHolderList[140]" 
		"Psylocke_wHair:cnt_L_shoulder_Loc.ry"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[15]" "Psylocke_wHairRN.placeHolderList[141]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[15]" "Psylocke_wHairRN.placeHolderList[142]" 
		"Psylocke_wHair:cnt_L_shoulder_Loc.rx"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[16]" "Psylocke_wHairRN.placeHolderList[143]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[16]" "Psylocke_wHairRN.placeHolderList[144]" 
		"Psylocke_wHair:cnt_L_wristIK_Loc.rz"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[17]" "Psylocke_wHairRN.placeHolderList[145]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[17]" "Psylocke_wHairRN.placeHolderList[146]" 
		"Psylocke_wHair:cnt_L_wristIK_Loc.ry"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[18]" "Psylocke_wHairRN.placeHolderList[147]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[18]" "Psylocke_wHairRN.placeHolderList[148]" 
		"Psylocke_wHair:cnt_L_wristIK_Loc.rx"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[19]" "Psylocke_wHairRN.placeHolderList[149]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[20]" "Psylocke_wHairRN.placeHolderList[150]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[21]" "Psylocke_wHairRN.placeHolderList[151]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[22]" "Psylocke_wHairRN.placeHolderList[152]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[23]" "Psylocke_wHairRN.placeHolderList[153]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[24]" "Psylocke_wHairRN.placeHolderList[154]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[25]" "Psylocke_wHairRN.placeHolderList[155]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[26]" "Psylocke_wHairRN.placeHolderList[156]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[27]" "Psylocke_wHairRN.placeHolderList[157]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[28]" "Psylocke_wHairRN.placeHolderList[158]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[29]" "Psylocke_wHairRN.placeHolderList[159]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[30]" "Psylocke_wHairRN.placeHolderList[160]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[31]" "Psylocke_wHairRN.placeHolderList[161]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[32]" "Psylocke_wHairRN.placeHolderList[162]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[33]" "Psylocke_wHairRN.placeHolderList[163]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[34]" "Psylocke_wHairRN.placeHolderList[164]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[35]" "Psylocke_wHairRN.placeHolderList[165]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[36]" "Psylocke_wHairRN.placeHolderList[166]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[37]" "Psylocke_wHairRN.placeHolderList[167]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[38]" "Psylocke_wHairRN.placeHolderList[168]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[39]" "Psylocke_wHairRN.placeHolderList[169]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[40]" "Psylocke_wHairRN.placeHolderList[170]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[41]" "Psylocke_wHairRN.placeHolderList[171]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.angularValues[42]" "Psylocke_wHairRN.placeHolderList[172]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[1]" "Psylocke_wHairRN.placeHolderList[173]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[1]" "Psylocke_wHairRN.placeHolderList[174]" 
		"Psylocke_wHair:cnt_UpperBody.twistFlex"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[2]" "Psylocke_wHairRN.placeHolderList[175]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[2]" "Psylocke_wHairRN.placeHolderList[176]" 
		"Psylocke_wHair:cnt_UpperBody.frontFlex"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[3]" "Psylocke_wHairRN.placeHolderList[177]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[3]" "Psylocke_wHairRN.placeHolderList[178]" 
		"Psylocke_wHair:cnt_UpperBody.sideFlex"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[4]" "Psylocke_wHairRN.placeHolderList[179]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[4]" "Psylocke_wHairRN.placeHolderList[180]" 
		"Psylocke_wHair:cnt_UpperBody.shoulderFlex"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[5]" "Psylocke_wHairRN.placeHolderList[181]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[5]" "Psylocke_wHairRN.placeHolderList[182]" 
		"Psylocke_wHair:cnt_L_wristIK_Loc.handToWorld"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[6]" "Psylocke_wHairRN.placeHolderList[183]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[6]" "Psylocke_wHairRN.placeHolderList[184]" 
		"Psylocke_wHair:cnt_L_wristIK_Loc.elbowTwist"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[7]" "Psylocke_wHairRN.placeHolderList[185]" 
		""
		5 3 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[7]" "Psylocke_wHairRN.placeHolderList[186]" 
		"Psylocke_wHair:cnt_L_wristIK_Loc.ikBlend"
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[8]" "Psylocke_wHairRN.placeHolderList[187]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[9]" "Psylocke_wHairRN.placeHolderList[188]" 
		""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[10]" 
		"Psylocke_wHairRN.placeHolderList[189]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[11]" 
		"Psylocke_wHairRN.placeHolderList[190]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[12]" 
		"Psylocke_wHairRN.placeHolderList[191]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[13]" 
		"Psylocke_wHairRN.placeHolderList[192]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[14]" 
		"Psylocke_wHairRN.placeHolderList[193]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[15]" 
		"Psylocke_wHairRN.placeHolderList[194]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[16]" 
		"Psylocke_wHairRN.placeHolderList[195]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[17]" 
		"Psylocke_wHairRN.placeHolderList[196]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[18]" 
		"Psylocke_wHairRN.placeHolderList[197]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[19]" 
		"Psylocke_wHairRN.placeHolderList[198]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[20]" 
		"Psylocke_wHairRN.placeHolderList[199]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[21]" 
		"Psylocke_wHairRN.placeHolderList[200]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[22]" 
		"Psylocke_wHairRN.placeHolderList[201]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[23]" 
		"Psylocke_wHairRN.placeHolderList[202]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[24]" 
		"Psylocke_wHairRN.placeHolderList[203]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[25]" 
		"Psylocke_wHairRN.placeHolderList[204]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[26]" 
		"Psylocke_wHairRN.placeHolderList[205]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[27]" 
		"Psylocke_wHairRN.placeHolderList[206]" ""
		5 4 "Psylocke_wHairRN" "Psylocke_wHair:Mike_Rig.unitlessValues[28]" 
		"Psylocke_wHairRN.placeHolderList[207]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 17 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	setAttr ".dat" 2;
createNode mentalrayOptions -s -n "miContourPreset";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "Draft";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".splck" yes;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".raps" 0.25;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode animCurveTL -n "Mike_Rig_cnt_charRoot_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_charRoot_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_charRoot_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
createNode animCurveTA -n "Mike_Rig_cnt_charRoot_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTA -n "Mike_Rig_cnt_charRoot_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTA -n "Mike_Rig_cnt_charRoot_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_COG_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0.168119714477 6 0.16811971447700044
		 12 0.16811971447700033 18 0.16811971447700008 24 0.168119714477;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Mike_Rig_cnt_COG_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -1.4008031914893613 6 -0.22291992117872603
		 12 -1.4008031914893613 18 -0.22265397238569487 24 -1.4008031914893613;
	setAttr -s 6 ".kit[1:5]"  1 18 1 18 1;
	setAttr -s 6 ".kot[1:5]"  1 18 1 18 1;
	setAttr -s 6 ".ktl[1:5]" no yes no yes no;
	setAttr -s 6 ".kix[1:5]"  0.086303047835826874 1 0.084771685302257538 
		1 0.085738971829414368;
	setAttr -s 6 ".kiy[1:5]"  -0.99626892805099487 0 -0.99640041589736938 
		0 -0.99631768465042114;
	setAttr -s 6 ".kox[1:5]"  0.059185825288295746 1 0.074446685612201691 
		1 0.058653127402067184;
	setAttr -s 6 ".koy[1:5]"  0.99824696779251099 0 0.99722498655319214 
		0 0.99827843904495239;
createNode animCurveTL -n "Mike_Rig_cnt_COG_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -0.20187418917392019 6 -0.32761395132352639
		 12 -0.23829583183520531 18 -0.328 24 -0.20187418917392019;
	setAttr -s 6 ".kit[0:5]"  18 3 3 18 3 3;
	setAttr -s 6 ".kot[0:5]"  18 3 3 18 3 3;
createNode animCurveTA -n "Mike_Rig_cnt_COG_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 20 6 20 12 20 18 20 24 20;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Mike_Rig_cnt_COG_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -59.999999999999993 6 -59.999999999999993
		 12 -59.999999999999993 18 -59.999999999999993 24 -59.999999999999993;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Mike_Rig_cnt_COG_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -14.999999999999998 6 -14.999999999999998
		 12 -14.999999999999998 18 -14.999999999999998 24 -14.999999999999998;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Mike_Rig_cnt_MidBackLocator_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0.11731276662102272 18 -0.12432108908395342
		 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_MidBackLocator_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_MidBackLocator_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 -0.3238036910735565 18 -0.11369045965328504
		 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_UpperBody_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0.20679372098928639 12 0.43913450943936111
		 18 -0.19389704580267564 24 0;
	setAttr -s 6 ".kit[2:5]"  1 1 18 1;
	setAttr -s 6 ".kot[2:5]"  1 1 18 1;
	setAttr -s 6 ".kix[2:5]"  0.64931404590606689 1 1 1;
	setAttr -s 6 ".kiy[2:5]"  0.76052039861679077 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.64931404590606689 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0.76052045822143555 0 0 0;
createNode animCurveTL -n "Mike_Rig_cnt_UpperBody_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0.04083460934432686 12 0.086713881140998192
		 18 -0.038287961938562355 24 0;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "Mike_Rig_cnt_UpperBody_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 12 0.2382444303881647 24 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "Mike_Rig_cnt_UpperBody_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 -7.598734537000829 24 -7.598734537000829;
	setAttr -s 3 ".kit[0:2]"  18 3 3;
	setAttr -s 3 ".kot[0:2]"  18 3 3;
createNode animCurveTA -n "Mike_Rig_cnt_UpperBody_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -17.340465686168255 6 -17.340465686168255
		 12 -17.340465686168255 18 -17.340465686168255 24 -17.340465686168255;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_UpperBody_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 9.3422565556460722 6 7.3487648622472221
		 12 15.220667854479226 18 9.3422568129960606 24 9.3422565556460722;
	setAttr -s 6 ".kit[0:5]"  18 3 18 3 3 3;
	setAttr -s 6 ".kot[0:5]"  18 3 18 3 3 3;
createNode animCurveTU -n "Mike_Rig_cnt_UpperBody_shoulderFlex";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.2 1 0.2 6 0.2 12 0.2 18 0.2 24 0.2;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_UpperBody_sideFlex";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.5 1 0.5 6 0.5 12 0.5 18 0.5 24 0.5;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_UpperBody_frontFlex";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.5 1 0.5 6 0.5 12 0.5 18 0.5 24 0.5;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_UpperBody_twistFlex";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.5 1 0.5 6 0.5 12 0.5 18 0.5 24 0.5;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_L_shoulder_Loc_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.7655625192200017e-31 1 23.3924922112
		 6 23.3924922112 12 23.3924922112 24 23.3924922112;
createNode animCurveTA -n "Mike_Rig_cnt_L_shoulder_Loc_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.59027734073e-15 1 -16.285522567899999
		 6 -16.285522567899999 12 -16.285522567899999 24 -16.285522567899999;
createNode animCurveTA -n "Mike_Rig_cnt_L_shoulder_Loc_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.4756444637800001e-30 1 0.67059416774299996
		 6 0.67059416774299996 12 0.67059416774299996 24 0.67059416774299996;
createNode animCurveTA -n "Mike_Rig_cnt_R_shoulder_Loc_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -28.649855287000001 6 -28.649855287000001
		 12 -28.649855287000001 24 -28.649855287000001;
createNode animCurveTA -n "Mike_Rig_cnt_R_shoulder_Loc_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -17.037035513399999 6 -17.037035513399999
		 12 -17.037035513399999 24 -17.037035513399999;
createNode animCurveTA -n "Mike_Rig_cnt_R_shoulder_Loc_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -2.2065604893200002 6 -2.2065604893200002
		 12 -2.2065604893200002 24 -2.2065604893200002;
createNode animCurveTL -n "Mike_Rig_cnt_L_wristIK_Loc_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0.48483451999299998 6 0.48483451999299998
		 12 0.48483451999299998 24 0.48483451999299998;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Mike_Rig_cnt_L_wristIK_Loc_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.7763568394e-15 1 0.035477027371299999
		 6 0.035477027371299999 12 0.035477027371299999 24 0.035477027371299999;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Mike_Rig_cnt_L_wristIK_Loc_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1102230246299999e-16 1 0.57954519068699994
		 6 0.57954519068699994 12 0.57954519068699994 24 0.57954519068699994;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_L_wristIK_Loc_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.9926699392100168e-31 1 87.845565979
		 6 87.845565979 12 87.845565979 24 87.845565979;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_L_wristIK_Loc_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.18055468146e-15 1 3.3880501571899999
		 6 3.3880501571899999 12 3.3880501571899999 24 3.3880501571899999;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_L_wristIK_Loc_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1299600123000001e-29 1 57.520686893499992
		 6 57.520686893499992 12 57.520686893499992 24 57.520686893499992;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_wristIK_Loc_ikBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10 1 10 6 10 12 10 24 10;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_wristIK_Loc_elbowTwist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -5 6 -5 12 -5 24 -5;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_wristIK_Loc_handToWorld";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Mike_Rig_cnt_R_wristIK_Loc_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -2.8371951219499998 6 -2.8371951219499998
		 12 -2.8371951219499998 24 -2.8371951219499998;
createNode animCurveTL -n "Mike_Rig_cnt_R_wristIK_Loc_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.5527136788e-15 1 -2.3 6 -2.3 12 -2.3
		 24 -2.3;
createNode animCurveTL -n "Mike_Rig_cnt_R_wristIK_Loc_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -0.3 6 -0.3 12 -0.3 24 -0.3;
createNode animCurveTA -n "Mike_Rig_cnt_R_wristIK_Loc_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 109.807342318 6 109.807342318 12 109.807342318
		 24 109.807342318;
createNode animCurveTA -n "Mike_Rig_cnt_R_wristIK_Loc_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.5444437451700006e-14 1 40.755066466899997
		 6 40.755066466899997 12 40.755066466899997 24 40.755066466899997;
createNode animCurveTA -n "Mike_Rig_cnt_R_wristIK_Loc_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -55.165490257899997 6 -55.165490257899997
		 12 -55.165490257899997 24 -55.165490257899997;
createNode animCurveTU -n "Mike_Rig_cnt_R_wristIK_Loc_ikBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10 1 10 6 10 12 10 24 10;
createNode animCurveTU -n "Mike_Rig_cnt_R_wristIK_Loc_elbowTwist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 3.2 6 3.2 12 3.2 24 3.2;
createNode animCurveTU -n "Mike_Rig_cnt_R_wristIK_Loc_handToWorld";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_L_wristIK_poleConstraint_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_L_wristIK_poleConstraint_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_L_wristIK_poleConstraint_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_R_wristIK_poleConstraint_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_R_wristIK_poleConstraint_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_R_wristIK_poleConstraint_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_HipLocator_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0.19012569074960051 6 0.38944418056476926
		 12 0.06085577450557713 18 -0.21943284999507784 24 0.19012569074960051;
	setAttr -s 6 ".kit[0:5]"  18 1 1 1 1 1;
	setAttr -s 6 ".kot[0:5]"  18 1 1 1 1 1;
	setAttr -s 6 ".kix[1:5]"  0.49811866879463196 0.98961383104324341 
		0.42376691102981567 0.90273571014404297 0.50678098201751709;
	setAttr -s 6 ".kiy[1:5]"  0.86710888147354126 -0.14375124871730804 
		-0.90577131509780884 0.43019565939903259 0.86207485198974609;
	setAttr -s 6 ".kox[1:5]"  0.49811869859695435 0.98961389064788818 
		0.42376691102981567 0.90273571014404297 0.50678068399429321;
	setAttr -s 6 ".koy[1:5]"  0.86710888147354126 -0.14375124871730804 
		-0.90577131509780884 0.43019559979438782 0.86207503080368042;
createNode animCurveTL -n "Mike_Rig_cnt_HipLocator_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 12 0.082637881606197588 18 0.055368559071821477
		 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_HipLocator_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0.43728089367139672 12 -0.32445096828560865
		 18 0.46186166135086271 24 0;
	setAttr -s 6 ".kit[1:5]"  3 18 3 18 3;
	setAttr -s 6 ".kot[1:5]"  3 18 3 18 3;
createNode animCurveTA -n "Mike_Rig_cnt_HipLocator_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 9.4514615367366126 18 0 24 0;
createNode animCurveTA -n "Mike_Rig_cnt_HipLocator_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 12 14.999999999999998 18 -12.977466923148841
		 24 0;
	setAttr -s 5 ".kit[0:4]"  18 1 1 18 1;
	setAttr -s 5 ".kot[0:4]"  18 1 1 18 1;
	setAttr -s 5 ".kix[1:4]"  0.62519443035125732 0.59767550230026245 
		1 0.6308668851852417;
	setAttr -s 5 ".kiy[1:4]"  0.78046911954879761 -0.80173814296722412 
		0 0.77589112520217896;
	setAttr -s 5 ".kox[1:4]"  0.62519431114196777 0.59767550230026245 
		1 0.63086694478988647;
	setAttr -s 5 ".koy[1:4]"  0.78046917915344238 -0.80173814296722412 
		0 0.77589106559753418;
createNode animCurveTA -n "Mike_Rig_cnt_HipLocator_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 11.718317577782209 18 0 24 0;
createNode animCurveTA -n "Mike_Rig_cnt_Neck_1_Loc_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTA -n "Mike_Rig_cnt_Neck_1_Loc_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 7.5417098372000018 6 7.5417098372000018
		 12 7.5417098372000018 24 7.5417098372000018;
createNode animCurveTA -n "Mike_Rig_cnt_Neck_1_Loc_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.0897344086400094e-31 1 3.0897344086400094e-31
		 6 3.0897344086400094e-31 12 3.0897344086400094e-31 24 3.0897344086400094e-31;
createNode animCurveTA -n "Mike_Rig_cnt_Head_1_Loc_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 51.872862053200002 6 51.872862053200002
		 12 51.872862053200002 24 51.872862053200002;
createNode animCurveTA -n "Mike_Rig_cnt_Head_1_Loc_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -8.1197108142900003 6 -8.1197108142900003
		 12 -8.1197108142900003 24 -8.1197108142900003;
createNode animCurveTA -n "Mike_Rig_cnt_Head_1_Loc_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.0897344086400094e-31 1 0.71831466233100005
		 6 0.71831466233100005 12 0.71831466233100005 24 0.71831466233100005;
createNode animCurveTL -n "Mike_Rig_jStick_L_wrist_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0.352555451746 6 0.50683396866121544
		 12 0.352555451746 18 0.7911049305724297 24 0.352555451746;
	setAttr -s 6 ".kit[0:5]"  18 1 18 1 1 1;
	setAttr -s 6 ".kot[0:5]"  18 1 18 1 1 1;
	setAttr -s 6 ".kix[1:5]"  0.44153004884719849 1 0.26056936383247375 
		0.19060699641704559 0.44282546639442444;
	setAttr -s 6 ".kiy[1:5]"  -0.89724647998809814 0 0.96545511484146118 
		-0.9816664457321167 -0.89660781621932983;
	setAttr -s 6 ".kox[1:5]"  0.44152989983558655 1 0.26056933403015137 
		0.19060689210891724 0.44282570481300354;
	setAttr -s 6 ".koy[1:5]"  -0.89724653959274292 0 0.96545517444610596 
		-0.9816664457321167 -0.89660775661468506;
createNode animCurveTL -n "Mike_Rig_jStick_L_wrist_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0.12186865917799999 6 0.93841279052257676
		 12 0.12186865917799999 18 0.44450738123388944 24 0.12186865917799999;
createNode animCurveTL -n "Mike_Rig_jStick_L_wrist_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "Mike_Rig_jStick_R_wrist_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 1 6 1 12 1 24 1;
createNode animCurveTL -n "Mike_Rig_jStick_R_wrist_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0.39347879450899997 6 0.39347879450899997
		 12 0.39347879450899997 24 0.39347879450899997;
createNode animCurveTL -n "Mike_Rig_jStick_R_wrist_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 6 0 12 0 24 0;
createNode animCurveTL -n "Mike_Rig_cnt_L_foot_Group_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.1102230246299999e-16 1 4.3314306420299999
		 3 3.2327579998920131 6 0.77970152689536132 9 -0.89989680108366643 12 -1.7570006714087021
		 15 -1.7570006714087021 18 -0.61887334888024914 23 3.9960917600998038 24 4.3314306420299999;
	setAttr -s 10 ".kit[0:9]"  18 18 1 18 1 1 1 1 
		1 18;
	setAttr -s 10 ".kot[0:9]"  18 18 1 18 1 1 1 1 
		1 18;
	setAttr -s 10 ".kix[2:9]"  0.048876821994781494 0.060383416712284088 
		0.091860823333263397 0.42929995059967041 0.39663532376289368 0.07093396782875061 
		0.030180685222148895 1;
	setAttr -s 10 ".kiy[2:9]"  -0.99880486726760864 -0.99817520380020142 
		-0.99577188491821289 -0.90316200256347656 0.91797631978988647 0.99748104810714722 
		0.99954450130462646 0;
	setAttr -s 10 ".kox[2:9]"  0.048876814544200897 0.060383416712284088 
		0.091860800981521606 0.42929992079734802 0.39663532376289368 0.07093394547700882 
		0.030180672183632851 1;
	setAttr -s 10 ".koy[2:9]"  -0.99880486726760864 -0.99817520380020142 
		-0.99577188491821289 -0.90316200256347656 0.91797631978988647 0.99748104810714722 
		0.99954450130462646 0;
createNode animCurveTL -n "Mike_Rig_cnt_L_foot_Group_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1102230246299999e-16 1 1.123681669 3 -0.11819782285689472
		 6 0.085952215229217588 9 0.77758173700131583 12 0.35547376250268292 15 0.20236123393809957
		 24 1.123681669;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[6:7]"  1 18;
	setAttr -s 8 ".kix[6:7]"  0.36486548185348511 1;
	setAttr -s 8 ".kiy[6:7]"  -0.93106025457382202 0;
	setAttr -s 8 ".kox[6:7]"  0.36486557126045227 1;
	setAttr -s 8 ".koy[6:7]"  -0.93106019496917725 0;
createNode animCurveTL -n "Mike_Rig_cnt_L_foot_Group_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0.0031689768344 3 -0.002475500716213917
		 6 -0.0061339589569079011 9 -0.010086771372691887 12 -0.014676980711758911 15 -0.014676980711758911
		 18 2.0444227381360873 23 0 24 0.0031689768344;
	setAttr -s 10 ".kit[6:9]"  1 18 1 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".ktl[6:9]" no yes no yes;
	setAttr -s 10 ".kix[6:9]"  1 1 0.047337379306554794 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 -0.99887895584106445 0;
	setAttr -s 10 ".kox[6:9]"  0.02750852145254612 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0.99962162971496582 0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_L_foot_Group_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.01720288614e-13 1 0 3 0 6 0 9 0 12 0
		 15 0 18 42.316016135468786 23 0 24 0;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_L_foot_Group_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -6.4356536132700001e-15 1 0 3 0 6 0 9 0
		 12 0 15 0 18 74.437552253530967 23 -7.7390091060353869 24 0;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_L_foot_Group_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.28216110596e-14 1 -33.2915846191 3 -33.2915846191
		 6 -33.2915846191 9 -33.2915846191 12 -11.065885208547089 15 -11.065885208547089 18 16.842829165662209
		 23 -33.291584619100028 24 -33.2915846191;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  0.39391529560089111 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0.9191468358039856 0 0 0;
	setAttr -s 10 ".kox[6:9]"  0.39391529560089111 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0.9191468358039856 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_foot_Group_ikBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10 1 10 3 10 6 10 9 10 12 10 15 10 18 10
		 23 10 24 10;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_foot_Group_KneeTwist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 2.6 3 2.6 6 1.8298544305208728 9 0.42484288892153144
		 12 -0.30000000000000027 15 -0.30000000000000027 18 -0.0060536111519149394 23 2.6
		 24 2.6;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 0.14034624397754669 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0.99010252952575684 0 0;
	setAttr -s 10 ".kox[6:9]"  1 0.14034624397754669 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0.99010252952575684 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_foot_Group_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0 3 0 6 0 9 0 12 0 15 5.9 18 0 23 -2.3000000000000003
		 24 0;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 0.040616858750581741 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 -0.99917477369308472 0 0;
	setAttr -s 10 ".kox[6:9]"  1 0.040616855025291443 1 1;
	setAttr -s 10 ".koy[6:9]"  0 -0.99917477369308472 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_foot_Group_ToeTwist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0 3 0 6 0 9 0 12 0 15 0 18 0 23 0
		 24 0;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_foot_Group_FootLean";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0 3 0 6 0 9 0 12 0 15 0 18 0 23 0
		 24 0;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_foot_Group___KneeTWIST_OFFSET";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 90 1 90 3 90 6 90 9 90 12 90 15 90 18 90
		 23 90 24 90;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_foot_Group___rollHEEL_OFFSET";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 6 1 6 3 6 6 6 9 6 12 6 15 6 18 6 23 6
		 24 6;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_foot_Group___rollANKLE_OFFSET";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 4 1 4 3 4 6 4 9 4 12 4 15 4 18 4 23 4
		 24 4;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_L_foot_Group___rollTOE_OFFSET";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.5 1 3.5 3 3.5 6 3.5 9 3.5 12 3.5 15 3.5
		 18 3.5 23 3.5 24 3.5;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTL -n "Mike_Rig_cnt_R_foot_Group_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.1102230246299999e-16 1 3.6079006275802672
		 2 3.6079006275802672 6 0.10740485776264652 12 -3.503325699085956 13 -3.6375783403687056
		 15 -1.6946878231147009 18 0.95471674689149699 24 3.6079006275802672;
	setAttr -s 9 ".kit[0:8]"  18 1 1 1 1 18 1 18 
		18;
	setAttr -s 9 ".kot[0:8]"  18 1 1 1 1 18 1 18 
		18;
	setAttr -s 9 ".kix[1:8]"  1 0.026877395808696747 0.066094107925891876 
		0.04734325036406517 1 0.04354327917098999 0.070543989539146423 1;
	setAttr -s 9 ".kiy[1:8]"  0 -0.99963873624801636 -0.99781346321105957 
		-0.99887871742248535 0 0.99905157089233398 0.99750864505767822 0;
	setAttr -s 9 ".kox[1:8]"  1 0.026877392083406448 0.066094107925891876 
		0.047343257814645767 1 0.043543290346860886 0.070543989539146423 1;
	setAttr -s 9 ".koy[1:8]"  0 -0.99963873624801636 -0.99781346321105957 
		-0.99887871742248535 0 0.99905157089233398 0.99750864505767822 0;
createNode animCurveTL -n "Mike_Rig_cnt_R_foot_Group_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0.2300384619002048 2 0.2300384619002048
		 6 1.1604807449955017 12 0.15874678225599567 13 0.17297644804315121 15 0.18328303219453759
		 18 0.19900369385156499 24 0.2300384619002048;
	setAttr -s 9 ".kit[1:8]"  1 1 1 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 1 18 18 18 18 18;
	setAttr -s 9 ".ktl[2:8]" no yes yes yes yes yes yes;
	setAttr -s 9 ".kix[1:8]"  1 1 0.53788155317306519 1 0.98127448558807373 
		0.99228626489639282 0.99231672286987305 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.84302049875259399 0 0.1926143616437912 
		0.12396711111068726 0.12372318655252457 0;
	setAttr -s 9 ".kox[1:8]"  1 0.059305921196937561 0.53788173198699951 
		1 0.98127448558807373 0.9922863245010376 0.99231672286987305 1;
	setAttr -s 9 ".koy[1:8]"  0 0.99823987483978271 -0.84302031993865967 
		0 0.19261437654495239 0.12396711856126785 0.12372318655252457 0;
createNode animCurveTL -n "Mike_Rig_cnt_R_foot_Group_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.6736173798799997e-19 1 0.003193465718280171
		 2 0.003193465718280171 6 -1.782921748372053 12 -0.02050549461964938 13 -0.0053239449433252328
		 15 -0.00093846971053394292 18 -8.3216419239427988e-05 24 0.003193465718280171;
	setAttr -s 9 ".kit[1:8]"  1 1 18 1 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".ktl[2:8]" no yes yes yes yes yes yes;
	setAttr -s 9 ".kix[1:8]"  1 1 1 0.075823821127414703 0.98796886205673218 
		0.99978941679000854 0.99993932247161865 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0.99712127447128296 0.15465289354324341 
		0.020521756261587143 0.011017825454473495 0;
	setAttr -s 9 ".kox[1:8]"  1 0.038114193826913834 1 0.67499738931655884 
		0.98796886205673218 0.99978941679000854 0.99993932247161865 1;
	setAttr -s 9 ".koy[1:8]"  0 -0.99927341938018799 0 0.73782014846801758 
		0.15465289354324341 0.020521756261587143 0.011017825454473495 0;
createNode animCurveTA -n "Mike_Rig_cnt_R_foot_Group_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.3431785055899997e-13 1 5.3431785055899997e-13
		 2 5.3431785055899997e-13 6 0 12 0 13 0 15 0 18 0 24 5.3431785055899997e-13;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_R_foot_Group_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.2865651125800004e-15 1 0 2 0 6 70.362894375857991
		 12 0 13 0 15 0 18 0 24 0;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Mike_Rig_cnt_R_foot_Group_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.2722218725899999e-14 1 60.520441935599997
		 2 60.520441935599997 6 60.520441935600019 12 12.732358331200947 13 17.559607537780078
		 15 36.403444138863904 18 48.094340098797574 24 60.520441935599997;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 0.28959688544273376 0.36408841609954834 
		0.66520369052886963 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0.95714879035949707 0.93136441707611084 
		0.74666190147399902 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 0.28959685564041138 0.36408841609954834 
		0.66520369052886963 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0.95714867115020752 0.93136441707611084 
		0.74666190147399902 0;
createNode animCurveTU -n "Mike_Rig_cnt_R_foot_Group_ikBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10 1 10 2 10 6 10 12 10 13 10 15 10 18 10
		 24 10;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_R_foot_Group_KneeTwist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 6 0 12 2 13 2 15 0 18 0 24 0;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_R_foot_Group_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 7.1000000000000005 2 7.7 6 0 12 -3.1
		 13 0 15 0 18 0 24 7.1000000000000005;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 0.038551565259695053 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.99925661087036133 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 0.038551565259695053 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 -0.99925661087036133 0 0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_R_foot_Group_ToeTwist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 6 0 12 0 13 0 15 0 18 0 24 0;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_R_foot_Group_FootLean";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 6 0 12 0 13 0 15 0 18 0 24 0;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_R_foot_Group___KneeTWIST_OFFSET";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 90 1 90 2 90 6 90 12 90 13 90 15 90 18 90
		 24 90;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_R_foot_Group___rollHEEL_OFFSET";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6 1 6 2 6 6 6 12 6 13 6 15 6 18 6 24 6;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_R_foot_Group___rollANKLE_OFFSET";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4 1 4 2 4 6 4 12 4 13 4 15 4 18 4 24 4;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Mike_Rig_cnt_R_foot_Group___rollTOE_OFFSET";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.5 1 3.5 2 3.5 6 3.5 12 3.5 13 3.5 15 3.5
		 18 3.5 24 3.5;
	setAttr -s 9 ".kit[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Mike_Rig_cnt_L_wrist_World_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 3.5 6 3.5 12 3.5 24 3.5;
createNode animCurveTL -n "Mike_Rig_cnt_L_wrist_World_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.7763568394e-15 1 2 6 2 12 2 24 2;
createNode animCurveTL -n "Mike_Rig_cnt_L_wrist_World_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1102230246299999e-16 1 3 6 3 12 3 24 3;
createNode animCurveTA -n "Mike_Rig_cnt_L_wrist_World_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.9926699392100168e-31 1 163.76133578
		 6 163.76133578 12 163.76133578 24 163.76133578;
createNode animCurveTA -n "Mike_Rig_cnt_L_wrist_World_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.18055468146e-15 1 17.687548153900003
		 6 17.687548153900003 12 17.687548153900003 24 17.687548153900003;
createNode animCurveTA -n "Mike_Rig_cnt_L_wrist_World_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1299600123000001e-29 1 86.426200128999994
		 6 86.426200128999994 12 86.426200128999994 24 86.426200128999994;
createNode animCurveTL -n "Mike_Rig_cnt_R_wrist_World_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -5 6 -5 12 -5 24 -5;
createNode animCurveTL -n "Mike_Rig_cnt_R_wrist_World_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.5527136788e-15 1 -5.09567927285 6 -5.09567927285
		 12 -5.09567927285 24 -5.09567927285;
createNode animCurveTL -n "Mike_Rig_cnt_R_wrist_World_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 1.61870869415 6 1.61870869415 12 1.61870869415
		 24 1.61870869415;
createNode animCurveTA -n "Mike_Rig_cnt_R_wrist_World_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 169.43662675499999 6 169.43662675499999
		 12 169.43662675499999 24 169.43662675499999;
createNode animCurveTA -n "Mike_Rig_cnt_R_wrist_World_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.5444437451700006e-14 1 -18.463869348199999
		 6 -18.463869348199999 12 -18.463869348199999 24 -18.463869348199999;
createNode animCurveTA -n "Mike_Rig_cnt_R_wrist_World_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -21.246901100500001 6 -21.246901100500001
		 12 -21.246901100500001 24 -21.246901100500001;
createNode displayLayer -n "layer1";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode cameraView -n "cameraView1";
	setAttr ".e" -type "double3" -26.336861662996551 7.977890748034242 0.83778340754418357 ;
	setAttr ".coi" -type "double3" -0.025645711594769693 7.977890748034242 0.83778340754417757 ;
	setAttr ".tp" -type "double3" -0.025645711596268939 11.524561441268911 -0.96052849325085277 ;
	setAttr ".fl" 34.999999999999979;
createNode animLayer -n "BaseAnimation";
	setAttr ".ovrd" yes;
createNode animLayer -n "COG_adjust";
	setAttr -s 28 ".dsm";
	setAttr -s 20 ".bnds";
	setAttr ".mt" yes;
	setAttr ".lo" yes;
	setAttr ".pref" yes;
	setAttr ".slct" yes;
createNode animBlendNodeAdditiveDL -n "cnt_UpperBody_translateX_COG_adjust";
	setAttr ".o" 0.31041051286757837;
createNode animBlendNodeAdditiveDL -n "cnt_UpperBody_translateY_COG_adjust";
	setAttr ".o" 0.059736419973408297;
createNode animBlendNodeAdditiveDL -n "cnt_UpperBody_translateZ_COG_adjust";
	setAttr ".o" 0.1666458105186629;
createNode animBlendNodeAdditiveRotation -n "cnt_UpperBody_rotate_COG_adjust";
	setAttr ".o" -type "double3" -7.598734537000829 -17.340465686168255 9.3896290180424771 ;
createNode animBlendNodeAdditive -n "cnt_UpperBody_shoulderFlex_COG_adjust";
	setAttr ".o" 0.2;
createNode animBlendNodeAdditive -n "cnt_UpperBody_sideFlex_COG_adjust";
	setAttr ".o" 0.5;
createNode animBlendNodeAdditive -n "cnt_UpperBody_frontFlex_COG_adjust";
	setAttr ".o" 0.5;
createNode animBlendNodeAdditive -n "cnt_UpperBody_twistFlex_COG_adjust";
	setAttr ".o" 0.5;
createNode animCurveTU -n "COG_adjust_weight";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 1 24 1;
createNode animCurveTL -n "cnt_UpperBody_translateX_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0.26697453839798263;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTL -n "cnt_UpperBody_translateY_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0.05271823983925069;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTL -n "cnt_UpperBody_translateZ_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0.14484217355173198;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTA -n "cnt_UpperBody_rotate_COG_adjust_inputBX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTA -n "cnt_UpperBody_rotate_COG_adjust_inputBY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTA -n "cnt_UpperBody_rotate_COG_adjust_inputBZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTU -n "cnt_UpperBody_shoulderFlex_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTU -n "cnt_UpperBody_sideFlex_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTU -n "cnt_UpperBody_frontFlex_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTU -n "cnt_UpperBody_twistFlex_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animBlendNodeAdditiveRotation -n "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust";
	setAttr ".o" -type "double3" 23.3924922112 -16.285522567899999 0.67059416774299996 ;
createNode animCurveTA -n "cnt_L_shoulder_Loc_rotate_COG_adjust_inputBX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0.91409887934888001;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTA -n "cnt_L_shoulder_Loc_rotate_COG_adjust_inputBY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 25.454530828257493;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTA -n "cnt_L_shoulder_Loc_rotate_COG_adjust_inputBZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 2.5809577503818932;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animBlendNodeAdditiveDL -n "Psylocke_wHair:cnt_L_wristIK_Loc_translateX_COG_adjust";
	setAttr ".o" 0.48483451999299998;
createNode animBlendNodeAdditiveDL -n "Psylocke_wHair:cnt_L_wristIK_Loc_translateY_COG_adjust";
	setAttr ".o" 0.035477027371299999;
createNode animBlendNodeAdditiveDL -n "Psylocke_wHair:cnt_L_wristIK_Loc_translateZ_COG_adjust";
	setAttr ".o" 0.57954519068699994;
createNode animBlendNodeAdditiveRotation -n "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust";
	setAttr ".o" -type "double3" 87.845565979 3.3880501571899999 57.520686893499992 ;
createNode animBlendNodeAdditive -n "Psylocke_wHair:cnt_L_wristIK_Loc_ikBlend_COG_adjust";
	setAttr ".o" 10;
createNode animBlendNodeAdditive -n "Psylocke_wHair:cnt_L_wristIK_Loc_elbowTwist_COG_adjust";
	setAttr ".o" -5;
createNode animBlendNodeAdditive -n "Psylocke_wHair:cnt_L_wristIK_Loc_handToWorld_COG_adjust";
createNode animCurveTL -n "cnt_L_wristIK_Loc_translateX_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  1 0.96272012766564496 6 1.0251781515231893
		 12 0.96272012766564496 18 1.0169938813501711 24 0.96272012766564496;
	setAttr -l on ".ktv";
createNode animCurveTL -n "cnt_L_wristIK_Loc_translateY_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  1 0.54278647425008064 6 1.1053119820230848
		 12 0.54278647425008064 18 0.94721768668247397 24 0.54278647425008064;
	setAttr -l on ".ktv";
createNode animCurveTL -n "cnt_L_wristIK_Loc_translateZ_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  1 -0.34211428932449217 6 -0.31865560111162139
		 12 -0.34211428932449217 18 -0.31457617690368789 24 -0.34211428932449217;
	setAttr -l on ".ktv";
createNode animCurveTA -n "cnt_L_wristIK_Loc_rotate_COG_adjust_inputBX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  1 0 6 -0.85312363920590173 12 0 18 -0.7528620739058981
		 24 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "cnt_L_wristIK_Loc_rotate_COG_adjust_inputBY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  1 0 6 -0.72794560077699733 12 0 18 -0.61870515962228179
		 24 0;
	setAttr -l on ".ktv";
createNode animCurveTA -n "cnt_L_wristIK_Loc_rotate_COG_adjust_inputBZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  1 0 6 -16.065129141861981 12 0 18 -13.948502140877673
		 24 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "cnt_L_wristIK_Loc_ikBlend_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
	setAttr -l on ".ktv";
createNode animCurveTU -n "cnt_L_wristIK_Loc_elbowTwist_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  1 2.1 6 2.1 12 2.1 18 2.1 24 2.1;
	setAttr -l on ".ktv";
createNode animCurveTU -n "cnt_L_wristIK_Loc_handToWorld_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 -l on ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
	setAttr -l on ".ktv";
createNode animBlendNodeAdditiveDL -n "Psylocke_wHair:cnt_COG_translateX_COG_adjust";
	setAttr ".o" 0.16811971447700041;
createNode animBlendNodeAdditiveDL -n "Psylocke_wHair:cnt_COG_translateY_COG_adjust";
	setAttr ".o" -0.31063172699531394;
createNode animBlendNodeAdditiveDL -n "Psylocke_wHair:cnt_COG_translateZ_COG_adjust";
	setAttr ".o" -0.30445739709430986;
createNode animBlendNodeAdditiveRotation -n "Psylocke_wHair:cnt_COG_rotate_COG_adjust";
	setAttr ".o" -type "double3" 20 -59.999999999999993 -14.999999999999998 ;
createNode animCurveTL -n "cnt_COG_translateX_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 -2.2204460492503131e-16;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTL -n "cnt_COG_translateY_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTL -n "cnt_COG_translateZ_COG_adjust_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0.47285915866051464;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTA -n "cnt_COG_rotate_COG_adjust_inputBX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTA -n "cnt_COG_rotate_COG_adjust_inputBY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
createNode animCurveTA -n "cnt_COG_rotate_COG_adjust_inputBZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -l on ".ktv[0]"  1 0;
	setAttr -l on ".ktv";
	setAttr -l on ".ktv[0]";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 8;
	setAttr ".unw" 8;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
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
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :lightList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
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
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
select -ne :characterPartition;
select -ne :ikSystem;
select -ne :hyperGraphLayout;
	setAttr -s 3 ".hyp";
connectAttr "layer1.di" "Psylocke_wHairRN.phl[1]";
connectAttr "layer1.di" "Psylocke_wHairRN.phl[2]";
connectAttr "layer1.di" "Psylocke_wHairRN.phl[3]";
connectAttr "layer1.di" "Psylocke_wHairRN.phl[4]";
connectAttr "Psylocke_wHair:cnt_COG_translateX_COG_adjust.o" "Psylocke_wHairRN.phl[5]"
		;
connectAttr "Psylocke_wHairRN.phl[6]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_COG_translateY_COG_adjust.o" "Psylocke_wHairRN.phl[7]"
		;
connectAttr "Psylocke_wHairRN.phl[8]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_COG_translateZ_COG_adjust.o" "Psylocke_wHairRN.phl[9]"
		;
connectAttr "Psylocke_wHairRN.phl[10]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_COG_rotate_COG_adjust.ox" "Psylocke_wHairRN.phl[11]"
		;
connectAttr "Psylocke_wHairRN.phl[12]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_COG_rotate_COG_adjust.oy" "Psylocke_wHairRN.phl[13]"
		;
connectAttr "Psylocke_wHairRN.phl[14]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_COG_rotate_COG_adjust.oz" "Psylocke_wHairRN.phl[15]"
		;
connectAttr "Psylocke_wHairRN.phl[16]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHairRN.phl[17]" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.ro"
		;
connectAttr "cnt_UpperBody_translateX_COG_adjust.o" "Psylocke_wHairRN.phl[18]";
connectAttr "Psylocke_wHairRN.phl[19]" "COG_adjust.dsm" -na;
connectAttr "cnt_UpperBody_translateZ_COG_adjust.o" "Psylocke_wHairRN.phl[20]";
connectAttr "Psylocke_wHairRN.phl[21]" "COG_adjust.dsm" -na;
connectAttr "cnt_UpperBody_translateY_COG_adjust.o" "Psylocke_wHairRN.phl[22]";
connectAttr "Psylocke_wHairRN.phl[23]" "COG_adjust.dsm" -na;
connectAttr "cnt_UpperBody_rotate_COG_adjust.ox" "Psylocke_wHairRN.phl[24]";
connectAttr "Psylocke_wHairRN.phl[25]" "COG_adjust.dsm" -na;
connectAttr "cnt_UpperBody_rotate_COG_adjust.oy" "Psylocke_wHairRN.phl[26]";
connectAttr "Psylocke_wHairRN.phl[27]" "COG_adjust.dsm" -na;
connectAttr "cnt_UpperBody_rotate_COG_adjust.oz" "Psylocke_wHairRN.phl[28]";
connectAttr "Psylocke_wHairRN.phl[29]" "COG_adjust.dsm" -na;
connectAttr "cnt_UpperBody_shoulderFlex_COG_adjust.o" "Psylocke_wHairRN.phl[30]"
		;
connectAttr "Psylocke_wHairRN.phl[31]" "COG_adjust.dsm" -na;
connectAttr "cnt_UpperBody_sideFlex_COG_adjust.o" "Psylocke_wHairRN.phl[32]";
connectAttr "Psylocke_wHairRN.phl[33]" "COG_adjust.dsm" -na;
connectAttr "cnt_UpperBody_frontFlex_COG_adjust.o" "Psylocke_wHairRN.phl[34]";
connectAttr "Psylocke_wHairRN.phl[35]" "COG_adjust.dsm" -na;
connectAttr "cnt_UpperBody_twistFlex_COG_adjust.o" "Psylocke_wHairRN.phl[36]";
connectAttr "Psylocke_wHairRN.phl[37]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHairRN.phl[38]" "cnt_UpperBody_rotate_COG_adjust.ro";
connectAttr "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.ox" "Psylocke_wHairRN.phl[39]"
		;
connectAttr "Psylocke_wHairRN.phl[40]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.oy" "Psylocke_wHairRN.phl[41]"
		;
connectAttr "Psylocke_wHairRN.phl[42]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.oz" "Psylocke_wHairRN.phl[43]"
		;
connectAttr "Psylocke_wHairRN.phl[44]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHairRN.phl[45]" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.ro"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.oy" "Psylocke_wHairRN.phl[46]"
		;
connectAttr "Psylocke_wHairRN.phl[47]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.oz" "Psylocke_wHairRN.phl[48]"
		;
connectAttr "Psylocke_wHairRN.phl[49]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.ox" "Psylocke_wHairRN.phl[50]"
		;
connectAttr "Psylocke_wHairRN.phl[51]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHairRN.phl[52]" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.ro"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_translateX_COG_adjust.o" "Psylocke_wHairRN.phl[53]"
		;
connectAttr "Psylocke_wHairRN.phl[54]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_translateY_COG_adjust.o" "Psylocke_wHairRN.phl[55]"
		;
connectAttr "Psylocke_wHairRN.phl[56]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_translateZ_COG_adjust.o" "Psylocke_wHairRN.phl[57]"
		;
connectAttr "Psylocke_wHairRN.phl[58]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_ikBlend_COG_adjust.o" "Psylocke_wHairRN.phl[59]"
		;
connectAttr "Psylocke_wHairRN.phl[60]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_elbowTwist_COG_adjust.o" "Psylocke_wHairRN.phl[61]"
		;
connectAttr "Psylocke_wHairRN.phl[62]" "COG_adjust.dsm" -na;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_handToWorld_COG_adjust.o" "Psylocke_wHairRN.phl[63]"
		;
connectAttr "Psylocke_wHairRN.phl[64]" "COG_adjust.dsm" -na;
connectAttr "Mike_Rig_cnt_charRoot_translateZ.o" "Psylocke_wHairRN.phl[65]";
connectAttr "Mike_Rig_cnt_charRoot_translateY.o" "Psylocke_wHairRN.phl[66]";
connectAttr "Mike_Rig_cnt_charRoot_translateX.o" "Psylocke_wHairRN.phl[67]";
connectAttr "Mike_Rig_cnt_COG_translateZ.o" "Psylocke_wHairRN.phl[68]";
connectAttr "Psylocke_wHairRN.phl[69]" "Psylocke_wHair:cnt_COG_translateZ_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_COG_translateY.o" "Psylocke_wHairRN.phl[70]";
connectAttr "Psylocke_wHairRN.phl[71]" "Psylocke_wHair:cnt_COG_translateY_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_COG_translateX.o" "Psylocke_wHairRN.phl[72]";
connectAttr "Psylocke_wHairRN.phl[73]" "Psylocke_wHair:cnt_COG_translateX_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_MidBackLocator_translateZ.o" "Psylocke_wHairRN.phl[74]"
		;
connectAttr "Mike_Rig_cnt_MidBackLocator_translateY.o" "Psylocke_wHairRN.phl[75]"
		;
connectAttr "Mike_Rig_cnt_MidBackLocator_translateX.o" "Psylocke_wHairRN.phl[76]"
		;
connectAttr "Mike_Rig_cnt_UpperBody_translateZ.o" "Psylocke_wHairRN.phl[77]";
connectAttr "Psylocke_wHairRN.phl[78]" "cnt_UpperBody_translateZ_COG_adjust.ia";
connectAttr "Mike_Rig_cnt_UpperBody_translateY.o" "Psylocke_wHairRN.phl[79]";
connectAttr "Psylocke_wHairRN.phl[80]" "cnt_UpperBody_translateY_COG_adjust.ia";
connectAttr "Mike_Rig_cnt_UpperBody_translateX.o" "Psylocke_wHairRN.phl[81]";
connectAttr "Psylocke_wHairRN.phl[82]" "cnt_UpperBody_translateX_COG_adjust.ia";
connectAttr "Mike_Rig_cnt_HipLocator_translateZ.o" "Psylocke_wHairRN.phl[83]";
connectAttr "Mike_Rig_cnt_HipLocator_translateY.o" "Psylocke_wHairRN.phl[84]";
connectAttr "Mike_Rig_cnt_HipLocator_translateX.o" "Psylocke_wHairRN.phl[85]";
connectAttr "Mike_Rig_cnt_L_wristIK_poleConstraint_translateZ.o" "Psylocke_wHairRN.phl[86]"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_poleConstraint_translateY.o" "Psylocke_wHairRN.phl[87]"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_poleConstraint_translateX.o" "Psylocke_wHairRN.phl[88]"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_translateZ.o" "Psylocke_wHairRN.phl[89]"
		;
connectAttr "Psylocke_wHairRN.phl[90]" "Psylocke_wHair:cnt_L_wristIK_Loc_translateZ_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_translateY.o" "Psylocke_wHairRN.phl[91]"
		;
connectAttr "Psylocke_wHairRN.phl[92]" "Psylocke_wHair:cnt_L_wristIK_Loc_translateY_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_translateX.o" "Psylocke_wHairRN.phl[93]"
		;
connectAttr "Psylocke_wHairRN.phl[94]" "Psylocke_wHair:cnt_L_wristIK_Loc_translateX_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_L_wrist_World_translateZ.o" "Psylocke_wHairRN.phl[95]"
		;
connectAttr "Mike_Rig_cnt_L_wrist_World_translateY.o" "Psylocke_wHairRN.phl[96]"
		;
connectAttr "Mike_Rig_cnt_L_wrist_World_translateX.o" "Psylocke_wHairRN.phl[97]"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_poleConstraint_translateZ.o" "Psylocke_wHairRN.phl[98]"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_poleConstraint_translateY.o" "Psylocke_wHairRN.phl[99]"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_poleConstraint_translateX.o" "Psylocke_wHairRN.phl[100]"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_translateZ.o" "Psylocke_wHairRN.phl[101]"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_translateY.o" "Psylocke_wHairRN.phl[102]"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_translateX.o" "Psylocke_wHairRN.phl[103]"
		;
connectAttr "Mike_Rig_cnt_R_wrist_World_translateZ.o" "Psylocke_wHairRN.phl[104]"
		;
connectAttr "Mike_Rig_cnt_R_wrist_World_translateY.o" "Psylocke_wHairRN.phl[105]"
		;
connectAttr "Mike_Rig_cnt_R_wrist_World_translateX.o" "Psylocke_wHairRN.phl[106]"
		;
connectAttr "Mike_Rig_jStick_L_wrist_translateZ.o" "Psylocke_wHairRN.phl[107]";
connectAttr "Mike_Rig_jStick_L_wrist_translateY.o" "Psylocke_wHairRN.phl[108]";
connectAttr "Mike_Rig_jStick_L_wrist_translateX.o" "Psylocke_wHairRN.phl[109]";
connectAttr "Mike_Rig_jStick_R_wrist_translateZ.o" "Psylocke_wHairRN.phl[110]";
connectAttr "Mike_Rig_jStick_R_wrist_translateY.o" "Psylocke_wHairRN.phl[111]";
connectAttr "Mike_Rig_jStick_R_wrist_translateX.o" "Psylocke_wHairRN.phl[112]";
connectAttr "Mike_Rig_cnt_L_foot_Group_translateZ.o" "Psylocke_wHairRN.phl[113]"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group_translateY.o" "Psylocke_wHairRN.phl[114]"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group_translateX.o" "Psylocke_wHairRN.phl[115]"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group_translateZ.o" "Psylocke_wHairRN.phl[116]"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group_translateY.o" "Psylocke_wHairRN.phl[117]"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group_translateX.o" "Psylocke_wHairRN.phl[118]"
		;
connectAttr "Mike_Rig_cnt_charRoot_rotateZ.o" "Psylocke_wHairRN.phl[119]";
connectAttr "Mike_Rig_cnt_charRoot_rotateY.o" "Psylocke_wHairRN.phl[120]";
connectAttr "Mike_Rig_cnt_charRoot_rotateX.o" "Psylocke_wHairRN.phl[121]";
connectAttr "Mike_Rig_cnt_COG_rotateZ.o" "Psylocke_wHairRN.phl[122]";
connectAttr "Psylocke_wHairRN.phl[123]" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.iaz"
		;
connectAttr "Mike_Rig_cnt_COG_rotateY.o" "Psylocke_wHairRN.phl[124]";
connectAttr "Psylocke_wHairRN.phl[125]" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.iay"
		;
connectAttr "Mike_Rig_cnt_COG_rotateX.o" "Psylocke_wHairRN.phl[126]";
connectAttr "Psylocke_wHairRN.phl[127]" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.iax"
		;
connectAttr "Mike_Rig_cnt_UpperBody_rotateZ.o" "Psylocke_wHairRN.phl[128]";
connectAttr "Psylocke_wHairRN.phl[129]" "cnt_UpperBody_rotate_COG_adjust.iaz";
connectAttr "Mike_Rig_cnt_UpperBody_rotateY.o" "Psylocke_wHairRN.phl[130]";
connectAttr "Psylocke_wHairRN.phl[131]" "cnt_UpperBody_rotate_COG_adjust.iay";
connectAttr "Mike_Rig_cnt_UpperBody_rotateX.o" "Psylocke_wHairRN.phl[132]";
connectAttr "Psylocke_wHairRN.phl[133]" "cnt_UpperBody_rotate_COG_adjust.iax";
connectAttr "Mike_Rig_cnt_HipLocator_rotateZ.o" "Psylocke_wHairRN.phl[134]";
connectAttr "Mike_Rig_cnt_HipLocator_rotateY.o" "Psylocke_wHairRN.phl[135]";
connectAttr "Mike_Rig_cnt_HipLocator_rotateX.o" "Psylocke_wHairRN.phl[136]";
connectAttr "Mike_Rig_cnt_L_shoulder_Loc_rotateZ.o" "Psylocke_wHairRN.phl[137]";
connectAttr "Psylocke_wHairRN.phl[138]" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.iaz"
		;
connectAttr "Mike_Rig_cnt_L_shoulder_Loc_rotateY.o" "Psylocke_wHairRN.phl[139]";
connectAttr "Psylocke_wHairRN.phl[140]" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.iay"
		;
connectAttr "Mike_Rig_cnt_L_shoulder_Loc_rotateX.o" "Psylocke_wHairRN.phl[141]";
connectAttr "Psylocke_wHairRN.phl[142]" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.iax"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_rotateZ.o" "Psylocke_wHairRN.phl[143]";
connectAttr "Psylocke_wHairRN.phl[144]" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.iaz"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_rotateY.o" "Psylocke_wHairRN.phl[145]";
connectAttr "Psylocke_wHairRN.phl[146]" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.iay"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_rotateX.o" "Psylocke_wHairRN.phl[147]";
connectAttr "Psylocke_wHairRN.phl[148]" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.iax"
		;
connectAttr "Mike_Rig_cnt_L_wrist_World_rotateZ.o" "Psylocke_wHairRN.phl[149]";
connectAttr "Mike_Rig_cnt_L_wrist_World_rotateY.o" "Psylocke_wHairRN.phl[150]";
connectAttr "Mike_Rig_cnt_L_wrist_World_rotateX.o" "Psylocke_wHairRN.phl[151]";
connectAttr "Mike_Rig_cnt_R_shoulder_Loc_rotateZ.o" "Psylocke_wHairRN.phl[152]";
connectAttr "Mike_Rig_cnt_R_shoulder_Loc_rotateY.o" "Psylocke_wHairRN.phl[153]";
connectAttr "Mike_Rig_cnt_R_shoulder_Loc_rotateX.o" "Psylocke_wHairRN.phl[154]";
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_rotateZ.o" "Psylocke_wHairRN.phl[155]";
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_rotateY.o" "Psylocke_wHairRN.phl[156]";
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_rotateX.o" "Psylocke_wHairRN.phl[157]";
connectAttr "Mike_Rig_cnt_R_wrist_World_rotateZ.o" "Psylocke_wHairRN.phl[158]";
connectAttr "Mike_Rig_cnt_R_wrist_World_rotateY.o" "Psylocke_wHairRN.phl[159]";
connectAttr "Mike_Rig_cnt_R_wrist_World_rotateX.o" "Psylocke_wHairRN.phl[160]";
connectAttr "Mike_Rig_cnt_L_foot_Group_rotateZ.o" "Psylocke_wHairRN.phl[161]";
connectAttr "Mike_Rig_cnt_L_foot_Group_rotateY.o" "Psylocke_wHairRN.phl[162]";
connectAttr "Mike_Rig_cnt_L_foot_Group_rotateX.o" "Psylocke_wHairRN.phl[163]";
connectAttr "Mike_Rig_cnt_R_foot_Group_rotateZ.o" "Psylocke_wHairRN.phl[164]";
connectAttr "Mike_Rig_cnt_R_foot_Group_rotateY.o" "Psylocke_wHairRN.phl[165]";
connectAttr "Mike_Rig_cnt_R_foot_Group_rotateX.o" "Psylocke_wHairRN.phl[166]";
connectAttr "Mike_Rig_cnt_Neck_1_Loc_rotateZ.o" "Psylocke_wHairRN.phl[167]";
connectAttr "Mike_Rig_cnt_Neck_1_Loc_rotateY.o" "Psylocke_wHairRN.phl[168]";
connectAttr "Mike_Rig_cnt_Neck_1_Loc_rotateX.o" "Psylocke_wHairRN.phl[169]";
connectAttr "Mike_Rig_cnt_Head_1_Loc_rotateZ.o" "Psylocke_wHairRN.phl[170]";
connectAttr "Mike_Rig_cnt_Head_1_Loc_rotateY.o" "Psylocke_wHairRN.phl[171]";
connectAttr "Mike_Rig_cnt_Head_1_Loc_rotateX.o" "Psylocke_wHairRN.phl[172]";
connectAttr "Mike_Rig_cnt_UpperBody_twistFlex.o" "Psylocke_wHairRN.phl[173]";
connectAttr "Psylocke_wHairRN.phl[174]" "cnt_UpperBody_twistFlex_COG_adjust.ia";
connectAttr "Mike_Rig_cnt_UpperBody_frontFlex.o" "Psylocke_wHairRN.phl[175]";
connectAttr "Psylocke_wHairRN.phl[176]" "cnt_UpperBody_frontFlex_COG_adjust.ia";
connectAttr "Mike_Rig_cnt_UpperBody_sideFlex.o" "Psylocke_wHairRN.phl[177]";
connectAttr "Psylocke_wHairRN.phl[178]" "cnt_UpperBody_sideFlex_COG_adjust.ia";
connectAttr "Mike_Rig_cnt_UpperBody_shoulderFlex.o" "Psylocke_wHairRN.phl[179]";
connectAttr "Psylocke_wHairRN.phl[180]" "cnt_UpperBody_shoulderFlex_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_handToWorld.o" "Psylocke_wHairRN.phl[181]"
		;
connectAttr "Psylocke_wHairRN.phl[182]" "Psylocke_wHair:cnt_L_wristIK_Loc_handToWorld_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_elbowTwist.o" "Psylocke_wHairRN.phl[183]"
		;
connectAttr "Psylocke_wHairRN.phl[184]" "Psylocke_wHair:cnt_L_wristIK_Loc_elbowTwist_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_ikBlend.o" "Psylocke_wHairRN.phl[185]";
connectAttr "Psylocke_wHairRN.phl[186]" "Psylocke_wHair:cnt_L_wristIK_Loc_ikBlend_COG_adjust.ia"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_handToWorld.o" "Psylocke_wHairRN.phl[187]"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_elbowTwist.o" "Psylocke_wHairRN.phl[188]"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_ikBlend.o" "Psylocke_wHairRN.phl[189]";
connectAttr "Mike_Rig_cnt_L_foot_Group___rollTOE_OFFSET.o" "Psylocke_wHairRN.phl[190]"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group___rollANKLE_OFFSET.o" "Psylocke_wHairRN.phl[191]"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group___rollHEEL_OFFSET.o" "Psylocke_wHairRN.phl[192]"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group___KneeTWIST_OFFSET.o" "Psylocke_wHairRN.phl[193]"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group_FootLean.o" "Psylocke_wHairRN.phl[194]";
connectAttr "Mike_Rig_cnt_L_foot_Group_ToeTwist.o" "Psylocke_wHairRN.phl[195]";
connectAttr "Mike_Rig_cnt_L_foot_Group_Roll.o" "Psylocke_wHairRN.phl[196]";
connectAttr "Mike_Rig_cnt_L_foot_Group_KneeTwist.o" "Psylocke_wHairRN.phl[197]";
connectAttr "Mike_Rig_cnt_L_foot_Group_ikBlend.o" "Psylocke_wHairRN.phl[198]";
connectAttr "Mike_Rig_cnt_R_foot_Group___rollTOE_OFFSET.o" "Psylocke_wHairRN.phl[199]"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group___rollANKLE_OFFSET.o" "Psylocke_wHairRN.phl[200]"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group___rollHEEL_OFFSET.o" "Psylocke_wHairRN.phl[201]"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group___KneeTWIST_OFFSET.o" "Psylocke_wHairRN.phl[202]"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group_FootLean.o" "Psylocke_wHairRN.phl[203]";
connectAttr "Mike_Rig_cnt_R_foot_Group_ToeTwist.o" "Psylocke_wHairRN.phl[204]";
connectAttr "Mike_Rig_cnt_R_foot_Group_Roll.o" "Psylocke_wHairRN.phl[205]";
connectAttr "Mike_Rig_cnt_R_foot_Group_KneeTwist.o" "Psylocke_wHairRN.phl[206]";
connectAttr "Mike_Rig_cnt_R_foot_Group_ikBlend.o" "Psylocke_wHairRN.phl[207]";
connectAttr "cameraView1.msg" ":perspShape.b" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "Mike_Rig_cnt_charRoot_translateX.msg" "hyperLayout1.hyp[0].dn";
connectAttr "Mike_Rig_cnt_charRoot_translateY.msg" "hyperLayout1.hyp[1].dn";
connectAttr "Mike_Rig_cnt_charRoot_translateZ.msg" "hyperLayout1.hyp[2].dn";
connectAttr "Mike_Rig_cnt_charRoot_rotateX.msg" "hyperLayout1.hyp[3].dn";
connectAttr "Mike_Rig_cnt_charRoot_rotateY.msg" "hyperLayout1.hyp[4].dn";
connectAttr "Mike_Rig_cnt_charRoot_rotateZ.msg" "hyperLayout1.hyp[5].dn";
connectAttr "Mike_Rig_cnt_COG_translateX.msg" "hyperLayout1.hyp[6].dn";
connectAttr "Mike_Rig_cnt_COG_translateY.msg" "hyperLayout1.hyp[7].dn";
connectAttr "Mike_Rig_cnt_COG_translateZ.msg" "hyperLayout1.hyp[8].dn";
connectAttr "Mike_Rig_cnt_COG_rotateX.msg" "hyperLayout1.hyp[9].dn";
connectAttr "Mike_Rig_cnt_COG_rotateY.msg" "hyperLayout1.hyp[10].dn";
connectAttr "Mike_Rig_cnt_COG_rotateZ.msg" "hyperLayout1.hyp[11].dn";
connectAttr "Mike_Rig_cnt_MidBackLocator_translateX.msg" "hyperLayout1.hyp[12].dn"
		;
connectAttr "Mike_Rig_cnt_MidBackLocator_translateY.msg" "hyperLayout1.hyp[13].dn"
		;
connectAttr "Mike_Rig_cnt_MidBackLocator_translateZ.msg" "hyperLayout1.hyp[14].dn"
		;
connectAttr "Mike_Rig_cnt_UpperBody_translateX.msg" "hyperLayout1.hyp[15].dn";
connectAttr "Mike_Rig_cnt_UpperBody_translateY.msg" "hyperLayout1.hyp[16].dn";
connectAttr "Mike_Rig_cnt_UpperBody_translateZ.msg" "hyperLayout1.hyp[17].dn";
connectAttr "Mike_Rig_cnt_UpperBody_rotateX.msg" "hyperLayout1.hyp[18].dn";
connectAttr "Mike_Rig_cnt_UpperBody_rotateY.msg" "hyperLayout1.hyp[19].dn";
connectAttr "Mike_Rig_cnt_UpperBody_rotateZ.msg" "hyperLayout1.hyp[20].dn";
connectAttr "Mike_Rig_cnt_UpperBody_shoulderFlex.msg" "hyperLayout1.hyp[21].dn";
connectAttr "Mike_Rig_cnt_UpperBody_sideFlex.msg" "hyperLayout1.hyp[22].dn";
connectAttr "Mike_Rig_cnt_UpperBody_frontFlex.msg" "hyperLayout1.hyp[23].dn";
connectAttr "Mike_Rig_cnt_UpperBody_twistFlex.msg" "hyperLayout1.hyp[24].dn";
connectAttr "Mike_Rig_cnt_L_shoulder_Loc_rotateX.msg" "hyperLayout1.hyp[25].dn";
connectAttr "Mike_Rig_cnt_L_shoulder_Loc_rotateY.msg" "hyperLayout1.hyp[26].dn";
connectAttr "Mike_Rig_cnt_L_shoulder_Loc_rotateZ.msg" "hyperLayout1.hyp[27].dn";
connectAttr "Mike_Rig_cnt_R_shoulder_Loc_rotateX.msg" "hyperLayout1.hyp[28].dn";
connectAttr "Mike_Rig_cnt_R_shoulder_Loc_rotateY.msg" "hyperLayout1.hyp[29].dn";
connectAttr "Mike_Rig_cnt_R_shoulder_Loc_rotateZ.msg" "hyperLayout1.hyp[30].dn";
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_translateX.msg" "hyperLayout1.hyp[31].dn"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_translateY.msg" "hyperLayout1.hyp[32].dn"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_translateZ.msg" "hyperLayout1.hyp[33].dn"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_rotateX.msg" "hyperLayout1.hyp[34].dn";
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_rotateY.msg" "hyperLayout1.hyp[35].dn";
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_rotateZ.msg" "hyperLayout1.hyp[36].dn";
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_ikBlend.msg" "hyperLayout1.hyp[37].dn";
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_elbowTwist.msg" "hyperLayout1.hyp[38].dn"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_Loc_handToWorld.msg" "hyperLayout1.hyp[39].dn"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_translateX.msg" "hyperLayout1.hyp[40].dn"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_translateY.msg" "hyperLayout1.hyp[41].dn"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_translateZ.msg" "hyperLayout1.hyp[42].dn"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_rotateX.msg" "hyperLayout1.hyp[43].dn";
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_rotateY.msg" "hyperLayout1.hyp[44].dn";
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_rotateZ.msg" "hyperLayout1.hyp[45].dn";
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_ikBlend.msg" "hyperLayout1.hyp[46].dn";
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_elbowTwist.msg" "hyperLayout1.hyp[47].dn"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_Loc_handToWorld.msg" "hyperLayout1.hyp[48].dn"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_poleConstraint_translateX.msg" "hyperLayout1.hyp[49].dn"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_poleConstraint_translateY.msg" "hyperLayout1.hyp[50].dn"
		;
connectAttr "Mike_Rig_cnt_L_wristIK_poleConstraint_translateZ.msg" "hyperLayout1.hyp[51].dn"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_poleConstraint_translateX.msg" "hyperLayout1.hyp[52].dn"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_poleConstraint_translateY.msg" "hyperLayout1.hyp[53].dn"
		;
connectAttr "Mike_Rig_cnt_R_wristIK_poleConstraint_translateZ.msg" "hyperLayout1.hyp[54].dn"
		;
connectAttr "Mike_Rig_cnt_HipLocator_translateX.msg" "hyperLayout1.hyp[55].dn";
connectAttr "Mike_Rig_cnt_HipLocator_translateY.msg" "hyperLayout1.hyp[56].dn";
connectAttr "Mike_Rig_cnt_HipLocator_translateZ.msg" "hyperLayout1.hyp[57].dn";
connectAttr "Mike_Rig_cnt_HipLocator_rotateX.msg" "hyperLayout1.hyp[58].dn";
connectAttr "Mike_Rig_cnt_HipLocator_rotateY.msg" "hyperLayout1.hyp[59].dn";
connectAttr "Mike_Rig_cnt_HipLocator_rotateZ.msg" "hyperLayout1.hyp[60].dn";
connectAttr "Mike_Rig_cnt_Neck_1_Loc_rotateX.msg" "hyperLayout1.hyp[61].dn";
connectAttr "Mike_Rig_cnt_Neck_1_Loc_rotateY.msg" "hyperLayout1.hyp[62].dn";
connectAttr "Mike_Rig_cnt_Neck_1_Loc_rotateZ.msg" "hyperLayout1.hyp[63].dn";
connectAttr "Mike_Rig_cnt_Head_1_Loc_rotateX.msg" "hyperLayout1.hyp[64].dn";
connectAttr "Mike_Rig_cnt_Head_1_Loc_rotateY.msg" "hyperLayout1.hyp[65].dn";
connectAttr "Mike_Rig_cnt_Head_1_Loc_rotateZ.msg" "hyperLayout1.hyp[66].dn";
connectAttr "Mike_Rig_jStick_L_wrist_translateX.msg" "hyperLayout1.hyp[67].dn";
connectAttr "Mike_Rig_jStick_L_wrist_translateY.msg" "hyperLayout1.hyp[68].dn";
connectAttr "Mike_Rig_jStick_L_wrist_translateZ.msg" "hyperLayout1.hyp[69].dn";
connectAttr "Mike_Rig_jStick_R_wrist_translateX.msg" "hyperLayout1.hyp[70].dn";
connectAttr "Mike_Rig_jStick_R_wrist_translateY.msg" "hyperLayout1.hyp[71].dn";
connectAttr "Mike_Rig_jStick_R_wrist_translateZ.msg" "hyperLayout1.hyp[72].dn";
connectAttr "Mike_Rig_cnt_L_foot_Group_translateX.msg" "hyperLayout1.hyp[73].dn"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group_translateY.msg" "hyperLayout1.hyp[74].dn"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group_translateZ.msg" "hyperLayout1.hyp[75].dn"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group_rotateX.msg" "hyperLayout1.hyp[76].dn";
connectAttr "Mike_Rig_cnt_L_foot_Group_rotateY.msg" "hyperLayout1.hyp[77].dn";
connectAttr "Mike_Rig_cnt_L_foot_Group_rotateZ.msg" "hyperLayout1.hyp[78].dn";
connectAttr "Mike_Rig_cnt_L_foot_Group_ikBlend.msg" "hyperLayout1.hyp[79].dn";
connectAttr "Mike_Rig_cnt_L_foot_Group_KneeTwist.msg" "hyperLayout1.hyp[80].dn";
connectAttr "Mike_Rig_cnt_L_foot_Group_Roll.msg" "hyperLayout1.hyp[81].dn";
connectAttr "Mike_Rig_cnt_L_foot_Group_ToeTwist.msg" "hyperLayout1.hyp[82].dn";
connectAttr "Mike_Rig_cnt_L_foot_Group_FootLean.msg" "hyperLayout1.hyp[83].dn";
connectAttr "Mike_Rig_cnt_L_foot_Group___KneeTWIST_OFFSET.msg" "hyperLayout1.hyp[84].dn"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group___rollHEEL_OFFSET.msg" "hyperLayout1.hyp[85].dn"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group___rollANKLE_OFFSET.msg" "hyperLayout1.hyp[86].dn"
		;
connectAttr "Mike_Rig_cnt_L_foot_Group___rollTOE_OFFSET.msg" "hyperLayout1.hyp[87].dn"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group_translateX.msg" "hyperLayout1.hyp[88].dn"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group_translateY.msg" "hyperLayout1.hyp[89].dn"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group_translateZ.msg" "hyperLayout1.hyp[90].dn"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group_rotateX.msg" "hyperLayout1.hyp[91].dn";
connectAttr "Mike_Rig_cnt_R_foot_Group_rotateY.msg" "hyperLayout1.hyp[92].dn";
connectAttr "Mike_Rig_cnt_R_foot_Group_rotateZ.msg" "hyperLayout1.hyp[93].dn";
connectAttr "Mike_Rig_cnt_R_foot_Group_ikBlend.msg" "hyperLayout1.hyp[94].dn";
connectAttr "Mike_Rig_cnt_R_foot_Group_KneeTwist.msg" "hyperLayout1.hyp[95].dn";
connectAttr "Mike_Rig_cnt_R_foot_Group_Roll.msg" "hyperLayout1.hyp[96].dn";
connectAttr "Mike_Rig_cnt_R_foot_Group_ToeTwist.msg" "hyperLayout1.hyp[97].dn";
connectAttr "Mike_Rig_cnt_R_foot_Group_FootLean.msg" "hyperLayout1.hyp[98].dn";
connectAttr "Mike_Rig_cnt_R_foot_Group___KneeTWIST_OFFSET.msg" "hyperLayout1.hyp[99].dn"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group___rollHEEL_OFFSET.msg" "hyperLayout1.hyp[100].dn"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group___rollANKLE_OFFSET.msg" "hyperLayout1.hyp[101].dn"
		;
connectAttr "Mike_Rig_cnt_R_foot_Group___rollTOE_OFFSET.msg" "hyperLayout1.hyp[102].dn"
		;
connectAttr "Mike_Rig_cnt_L_wrist_World_translateX.msg" "hyperLayout1.hyp[103].dn"
		;
connectAttr "Mike_Rig_cnt_L_wrist_World_translateY.msg" "hyperLayout1.hyp[104].dn"
		;
connectAttr "Mike_Rig_cnt_L_wrist_World_translateZ.msg" "hyperLayout1.hyp[105].dn"
		;
connectAttr "Mike_Rig_cnt_L_wrist_World_rotateX.msg" "hyperLayout1.hyp[106].dn";
connectAttr "Mike_Rig_cnt_L_wrist_World_rotateY.msg" "hyperLayout1.hyp[107].dn";
connectAttr "Mike_Rig_cnt_L_wrist_World_rotateZ.msg" "hyperLayout1.hyp[108].dn";
connectAttr "Mike_Rig_cnt_R_wrist_World_translateX.msg" "hyperLayout1.hyp[109].dn"
		;
connectAttr "Mike_Rig_cnt_R_wrist_World_translateY.msg" "hyperLayout1.hyp[110].dn"
		;
connectAttr "Mike_Rig_cnt_R_wrist_World_translateZ.msg" "hyperLayout1.hyp[111].dn"
		;
connectAttr "Mike_Rig_cnt_R_wrist_World_rotateX.msg" "hyperLayout1.hyp[112].dn";
connectAttr "Mike_Rig_cnt_R_wrist_World_rotateY.msg" "hyperLayout1.hyp[113].dn";
connectAttr "Mike_Rig_cnt_R_wrist_World_rotateZ.msg" "hyperLayout1.hyp[114].dn";
connectAttr "layer1.msg" "hyperLayout1.hyp[115].dn";
connectAttr "locator1.msg" "hyperLayout1.hyp[116].dn";
connectAttr "locatorShape1.msg" "hyperLayout1.hyp[117].dn";
connectAttr "locator2.msg" "hyperLayout1.hyp[118].dn";
connectAttr "locatorShape2.msg" "hyperLayout1.hyp[119].dn";
connectAttr "cameraView1.msg" "hyperLayout1.hyp[120].dn";
connectAttr "BaseAnimation.msg" "hyperLayout1.hyp[121].dn";
connectAttr "COG_adjust.msg" "hyperLayout1.hyp[122].dn";
connectAttr "cnt_UpperBody_translateX_COG_adjust.msg" "hyperLayout1.hyp[123].dn"
		;
connectAttr "cnt_UpperBody_translateY_COG_adjust.msg" "hyperLayout1.hyp[124].dn"
		;
connectAttr "cnt_UpperBody_translateZ_COG_adjust.msg" "hyperLayout1.hyp[125].dn"
		;
connectAttr "cnt_UpperBody_rotate_COG_adjust.msg" "hyperLayout1.hyp[126].dn";
connectAttr "cnt_UpperBody_shoulderFlex_COG_adjust.msg" "hyperLayout1.hyp[127].dn"
		;
connectAttr "cnt_UpperBody_sideFlex_COG_adjust.msg" "hyperLayout1.hyp[128].dn";
connectAttr "cnt_UpperBody_frontFlex_COG_adjust.msg" "hyperLayout1.hyp[129].dn";
connectAttr "cnt_UpperBody_twistFlex_COG_adjust.msg" "hyperLayout1.hyp[130].dn";
connectAttr "COG_adjust_weight.msg" "hyperLayout1.hyp[131].dn";
connectAttr "cnt_UpperBody_translateX_COG_adjust_inputB.msg" "hyperLayout1.hyp[132].dn"
		;
connectAttr "cnt_UpperBody_translateY_COG_adjust_inputB.msg" "hyperLayout1.hyp[133].dn"
		;
connectAttr "cnt_UpperBody_translateZ_COG_adjust_inputB.msg" "hyperLayout1.hyp[134].dn"
		;
connectAttr "cnt_UpperBody_rotate_COG_adjust_inputBX.msg" "hyperLayout1.hyp[135].dn"
		;
connectAttr "cnt_UpperBody_rotate_COG_adjust_inputBY.msg" "hyperLayout1.hyp[136].dn"
		;
connectAttr "cnt_UpperBody_rotate_COG_adjust_inputBZ.msg" "hyperLayout1.hyp[137].dn"
		;
connectAttr "cnt_UpperBody_shoulderFlex_COG_adjust_inputB.msg" "hyperLayout1.hyp[138].dn"
		;
connectAttr "cnt_UpperBody_sideFlex_COG_adjust_inputB.msg" "hyperLayout1.hyp[139].dn"
		;
connectAttr "cnt_UpperBody_frontFlex_COG_adjust_inputB.msg" "hyperLayout1.hyp[140].dn"
		;
connectAttr "cnt_UpperBody_twistFlex_COG_adjust_inputB.msg" "hyperLayout1.hyp[141].dn"
		;
connectAttr "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.msg" "hyperLayout1.hyp[142].dn"
		;
connectAttr "cnt_L_shoulder_Loc_rotate_COG_adjust_inputBX.msg" "hyperLayout1.hyp[143].dn"
		;
connectAttr "cnt_L_shoulder_Loc_rotate_COG_adjust_inputBY.msg" "hyperLayout1.hyp[144].dn"
		;
connectAttr "cnt_L_shoulder_Loc_rotate_COG_adjust_inputBZ.msg" "hyperLayout1.hyp[145].dn"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_translateX_COG_adjust.msg" "hyperLayout1.hyp[146].dn"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_translateY_COG_adjust.msg" "hyperLayout1.hyp[147].dn"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_translateZ_COG_adjust.msg" "hyperLayout1.hyp[148].dn"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.msg" "hyperLayout1.hyp[149].dn"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_ikBlend_COG_adjust.msg" "hyperLayout1.hyp[150].dn"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_elbowTwist_COG_adjust.msg" "hyperLayout1.hyp[151].dn"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_handToWorld_COG_adjust.msg" "hyperLayout1.hyp[152].dn"
		;
connectAttr "cnt_L_wristIK_Loc_translateX_COG_adjust_inputB.msg" "hyperLayout1.hyp[153].dn"
		;
connectAttr "cnt_L_wristIK_Loc_translateY_COG_adjust_inputB.msg" "hyperLayout1.hyp[154].dn"
		;
connectAttr "cnt_L_wristIK_Loc_translateZ_COG_adjust_inputB.msg" "hyperLayout1.hyp[155].dn"
		;
connectAttr "cnt_L_wristIK_Loc_rotate_COG_adjust_inputBX.msg" "hyperLayout1.hyp[156].dn"
		;
connectAttr "cnt_L_wristIK_Loc_rotate_COG_adjust_inputBY.msg" "hyperLayout1.hyp[157].dn"
		;
connectAttr "cnt_L_wristIK_Loc_rotate_COG_adjust_inputBZ.msg" "hyperLayout1.hyp[158].dn"
		;
connectAttr "cnt_L_wristIK_Loc_ikBlend_COG_adjust_inputB.msg" "hyperLayout1.hyp[159].dn"
		;
connectAttr "cnt_L_wristIK_Loc_elbowTwist_COG_adjust_inputB.msg" "hyperLayout1.hyp[160].dn"
		;
connectAttr "cnt_L_wristIK_Loc_handToWorld_COG_adjust_inputB.msg" "hyperLayout1.hyp[161].dn"
		;
connectAttr "Psylocke_wHair:cnt_COG_translateX_COG_adjust.msg" "hyperLayout1.hyp[162].dn"
		;
connectAttr "Psylocke_wHair:cnt_COG_translateY_COG_adjust.msg" "hyperLayout1.hyp[163].dn"
		;
connectAttr "Psylocke_wHair:cnt_COG_translateZ_COG_adjust.msg" "hyperLayout1.hyp[164].dn"
		;
connectAttr "Psylocke_wHair:cnt_COG_rotate_COG_adjust.msg" "hyperLayout1.hyp[165].dn"
		;
connectAttr "cnt_COG_translateX_COG_adjust_inputB.msg" "hyperLayout1.hyp[166].dn"
		;
connectAttr "cnt_COG_translateY_COG_adjust_inputB.msg" "hyperLayout1.hyp[167].dn"
		;
connectAttr "cnt_COG_translateZ_COG_adjust_inputB.msg" "hyperLayout1.hyp[168].dn"
		;
connectAttr "cnt_COG_rotate_COG_adjust_inputBX.msg" "hyperLayout1.hyp[169].dn";
connectAttr "cnt_COG_rotate_COG_adjust_inputBY.msg" "hyperLayout1.hyp[170].dn";
connectAttr "cnt_COG_rotate_COG_adjust_inputBZ.msg" "hyperLayout1.hyp[171].dn";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "COG_adjust.sl" "BaseAnimation.chsl[0]";
connectAttr "COG_adjust.play" "BaseAnimation.cdly[0]";
connectAttr "BaseAnimation.csol" "COG_adjust.sslo";
connectAttr "BaseAnimation.fgwt" "COG_adjust.pwth";
connectAttr "BaseAnimation.omte" "COG_adjust.pmte";
connectAttr "cnt_UpperBody_translateX_COG_adjust.msg" "COG_adjust.bnds[0]";
connectAttr "cnt_UpperBody_translateY_COG_adjust.msg" "COG_adjust.bnds[1]";
connectAttr "cnt_UpperBody_translateZ_COG_adjust.msg" "COG_adjust.bnds[2]";
connectAttr "cnt_UpperBody_rotate_COG_adjust.msg" "COG_adjust.bnds[6]";
connectAttr "cnt_UpperBody_shoulderFlex_COG_adjust.msg" "COG_adjust.bnds[7]";
connectAttr "cnt_UpperBody_sideFlex_COG_adjust.msg" "COG_adjust.bnds[8]";
connectAttr "cnt_UpperBody_frontFlex_COG_adjust.msg" "COG_adjust.bnds[9]";
connectAttr "cnt_UpperBody_twistFlex_COG_adjust.msg" "COG_adjust.bnds[10]";
connectAttr "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.msg" "COG_adjust.bnds[14]"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_translateX_COG_adjust.msg" "COG_adjust.bnds[15]"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_translateY_COG_adjust.msg" "COG_adjust.bnds[16]"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_translateZ_COG_adjust.msg" "COG_adjust.bnds[17]"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.msg" "COG_adjust.bnds[21]"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_ikBlend_COG_adjust.msg" "COG_adjust.bnds[22]"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_elbowTwist_COG_adjust.msg" "COG_adjust.bnds[23]"
		;
connectAttr "Psylocke_wHair:cnt_L_wristIK_Loc_handToWorld_COG_adjust.msg" "COG_adjust.bnds[24]"
		;
connectAttr "Psylocke_wHair:cnt_COG_translateX_COG_adjust.msg" "COG_adjust.bnds[25]"
		;
connectAttr "Psylocke_wHair:cnt_COG_translateY_COG_adjust.msg" "COG_adjust.bnds[26]"
		;
connectAttr "Psylocke_wHair:cnt_COG_translateZ_COG_adjust.msg" "COG_adjust.bnds[27]"
		;
connectAttr "Psylocke_wHair:cnt_COG_rotate_COG_adjust.msg" "COG_adjust.bnds[31]"
		;
connectAttr "COG_adjust_weight.o" "COG_adjust.wgth";
connectAttr "COG_adjust.bgwt" "cnt_UpperBody_translateX_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "cnt_UpperBody_translateX_COG_adjust.wb";
connectAttr "cnt_UpperBody_translateX_COG_adjust_inputB.o" "cnt_UpperBody_translateX_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "cnt_UpperBody_translateY_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "cnt_UpperBody_translateY_COG_adjust.wb";
connectAttr "cnt_UpperBody_translateY_COG_adjust_inputB.o" "cnt_UpperBody_translateY_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "cnt_UpperBody_translateZ_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "cnt_UpperBody_translateZ_COG_adjust.wb";
connectAttr "cnt_UpperBody_translateZ_COG_adjust_inputB.o" "cnt_UpperBody_translateZ_COG_adjust.ib"
		;
connectAttr "COG_adjust.oram" "cnt_UpperBody_rotate_COG_adjust.acm";
connectAttr "COG_adjust.bgwt" "cnt_UpperBody_rotate_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "cnt_UpperBody_rotate_COG_adjust.wb";
connectAttr "cnt_UpperBody_rotate_COG_adjust_inputBX.o" "cnt_UpperBody_rotate_COG_adjust.ibx"
		;
connectAttr "cnt_UpperBody_rotate_COG_adjust_inputBY.o" "cnt_UpperBody_rotate_COG_adjust.iby"
		;
connectAttr "cnt_UpperBody_rotate_COG_adjust_inputBZ.o" "cnt_UpperBody_rotate_COG_adjust.ibz"
		;
connectAttr "COG_adjust.bgwt" "cnt_UpperBody_shoulderFlex_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "cnt_UpperBody_shoulderFlex_COG_adjust.wb";
connectAttr "cnt_UpperBody_shoulderFlex_COG_adjust_inputB.o" "cnt_UpperBody_shoulderFlex_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "cnt_UpperBody_sideFlex_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "cnt_UpperBody_sideFlex_COG_adjust.wb";
connectAttr "cnt_UpperBody_sideFlex_COG_adjust_inputB.o" "cnt_UpperBody_sideFlex_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "cnt_UpperBody_frontFlex_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "cnt_UpperBody_frontFlex_COG_adjust.wb";
connectAttr "cnt_UpperBody_frontFlex_COG_adjust_inputB.o" "cnt_UpperBody_frontFlex_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "cnt_UpperBody_twistFlex_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "cnt_UpperBody_twistFlex_COG_adjust.wb";
connectAttr "cnt_UpperBody_twistFlex_COG_adjust_inputB.o" "cnt_UpperBody_twistFlex_COG_adjust.ib"
		;
connectAttr "COG_adjust.oram" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.acm"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.wa"
		;
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.wb"
		;
connectAttr "cnt_L_shoulder_Loc_rotate_COG_adjust_inputBX.o" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.ibx"
		;
connectAttr "cnt_L_shoulder_Loc_rotate_COG_adjust_inputBY.o" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.iby"
		;
connectAttr "cnt_L_shoulder_Loc_rotate_COG_adjust_inputBZ.o" "Psylocke_wHair:cnt_L_shoulder_Loc_rotate_COG_adjust.ibz"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_translateX_COG_adjust.wa"
		;
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_translateX_COG_adjust.wb"
		;
connectAttr "cnt_L_wristIK_Loc_translateX_COG_adjust_inputB.o" "Psylocke_wHair:cnt_L_wristIK_Loc_translateX_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_translateY_COG_adjust.wa"
		;
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_translateY_COG_adjust.wb"
		;
connectAttr "cnt_L_wristIK_Loc_translateY_COG_adjust_inputB.o" "Psylocke_wHair:cnt_L_wristIK_Loc_translateY_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_translateZ_COG_adjust.wa"
		;
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_translateZ_COG_adjust.wb"
		;
connectAttr "cnt_L_wristIK_Loc_translateZ_COG_adjust_inputB.o" "Psylocke_wHair:cnt_L_wristIK_Loc_translateZ_COG_adjust.ib"
		;
connectAttr "COG_adjust.oram" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.acm"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.wa"
		;
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.wb"
		;
connectAttr "cnt_L_wristIK_Loc_rotate_COG_adjust_inputBY.o" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.iby"
		;
connectAttr "cnt_L_wristIK_Loc_rotate_COG_adjust_inputBZ.o" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.ibz"
		;
connectAttr "cnt_L_wristIK_Loc_rotate_COG_adjust_inputBX.o" "Psylocke_wHair:cnt_L_wristIK_Loc_rotate_COG_adjust.ibx"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_ikBlend_COG_adjust.wa"
		;
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_ikBlend_COG_adjust.wb"
		;
connectAttr "cnt_L_wristIK_Loc_ikBlend_COG_adjust_inputB.o" "Psylocke_wHair:cnt_L_wristIK_Loc_ikBlend_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_elbowTwist_COG_adjust.wa"
		;
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_elbowTwist_COG_adjust.wb"
		;
connectAttr "cnt_L_wristIK_Loc_elbowTwist_COG_adjust_inputB.o" "Psylocke_wHair:cnt_L_wristIK_Loc_elbowTwist_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_handToWorld_COG_adjust.wa"
		;
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_L_wristIK_Loc_handToWorld_COG_adjust.wb"
		;
connectAttr "cnt_L_wristIK_Loc_handToWorld_COG_adjust_inputB.o" "Psylocke_wHair:cnt_L_wristIK_Loc_handToWorld_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_COG_translateX_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_COG_translateX_COG_adjust.wb";
connectAttr "cnt_COG_translateX_COG_adjust_inputB.o" "Psylocke_wHair:cnt_COG_translateX_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_COG_translateY_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_COG_translateY_COG_adjust.wb";
connectAttr "cnt_COG_translateY_COG_adjust_inputB.o" "Psylocke_wHair:cnt_COG_translateY_COG_adjust.ib"
		;
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_COG_translateZ_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_COG_translateZ_COG_adjust.wb";
connectAttr "cnt_COG_translateZ_COG_adjust_inputB.o" "Psylocke_wHair:cnt_COG_translateZ_COG_adjust.ib"
		;
connectAttr "COG_adjust.oram" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.acm";
connectAttr "COG_adjust.bgwt" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.wa";
connectAttr "COG_adjust.fgwt" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.wb";
connectAttr "cnt_COG_rotate_COG_adjust_inputBX.o" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.ibx"
		;
connectAttr "cnt_COG_rotate_COG_adjust_inputBY.o" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.iby"
		;
connectAttr "cnt_COG_rotate_COG_adjust_inputBZ.o" "Psylocke_wHair:cnt_COG_rotate_COG_adjust.ibz"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of clip_Psy_Walk.ma
