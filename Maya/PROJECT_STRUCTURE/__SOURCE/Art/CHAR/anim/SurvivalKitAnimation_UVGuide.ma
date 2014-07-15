//Maya ASCII 2015 scene
//Name: SurvivalKitAnimation_UVGuide.ma
//Last modified: Mon, Jul 14, 2014 07:56:23 AM
//Codeset: UTF-8
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_skin_maya"
		 -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.12 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Mac OS X 10.9.4";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -362.64947363664754 210.14045698482585 33.630559834432084 ;
	setAttr ".r" -type "double3" -5.4000000000019073 -86.799999999999798 0 ;
	setAttr ".rpt" -type "double3" -9.0507471059988619e-16 -3.1884671315911924e-15 2.4165148415272668e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 605.15170272062312;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 238.87715781231373 153.19065093994197 -7.815970093361102e-14 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.027201356366276741 167.57598747483644 2.9358108043670867 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 167.53093177041646;
	setAttr ".ow" 1.0526315789473684;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.027201356366276741 71.897148132324219 548.98631096262466 ;
	setAttr ".rp" -type "double3" 0 0 -2.4523882535463107e-16 ;
	setAttr ".rpt" -type "double3" 1.8932661725304283e-29 0 5.0635474087246662e-16 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 544.23235436769721;
	setAttr ".ow" 1.0526315789473684;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 182.32834934493007 71.897148132324219 2.9358108043671058 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 167.53093177041646;
	setAttr ".ow" 1.0526315789473684;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "SurvivalKitAnimation_UVGuide";
	addAttr -ci true -sn "UV_Frame" -ln "UV_Frame" -at "double";
	setAttr ".t" -type "double3" 238.87715781231373 0.8601746559148763 -4.1398253440857733 ;
	setAttr ".r" -type "double3" 90 -90 0 ;
	setAttr ".s" -type "double3" 20 20 20 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251563e-15 5 ;
	setAttr ".rpt" -type "double3" 0 -0.86017465591430653 -0.86017465591430653 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251563e-15 5 ;
	setAttr -k on ".UV_Frame";
createNode mesh -n "SurvivalKitAnimation_UVGuideShape" -p "SurvivalKitAnimation_UVGuide";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.074361979961395264 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 0.14872396 0
		 0 1 0.14872396 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 1.9721523e-31 -8.8817842e-16 
		0 1.9721523e-31 -8.8817842e-16 0 1.1810696e-15 -5.3190646 0 1.1810696e-15 -5.3190646 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 4 ".vt[0:3]"  -3 -1.110223e-15 5 3 -1.110223e-15 5 -3 1.110223e-15 -5
		 3 1.110223e-15 -5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bck" 3;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 5;
	setAttr -s 7 ".dli[1:6]"  5 1 6 2 3 4;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -particleInstancers 1\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n"
		+ "                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 1\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n"
		+ "            -locators 0\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n"
		+ "                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 19 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -s false -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr -s 27 ".stringOptions";
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
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	setAttr ".dat" 2;
createNode script -n "rtClickMenu";
	addAttr -ci true -sn "rtClick" -ln "rtClick" -dt "string";
	setAttr ".b" -type "string" (
		"JTDrunScripts;\nglobal proc JTDrunScripts()\n{\nstring $JTDnameSpace = \"\";\nstring $refs[] = `file -q -r`;\nfor($ref in $refs) \n{\n\t$JTDnameSpace = (`file -q -ns $ref` + \":\");\n\tif(!`objExists(($JTDnameSpace+\"rtClickMenu\"))`) $JTDnameSpace = \"\";\n}\nif ((getApplicationVersionAsFloat() >= 7.0) && (getApplicationVersionAsFloat() < 8.0))\n{\n\tscriptNode -executeBefore ($JTDnameSpace+\"dagMenuProc7\");\n}\nelse if ((getApplicationVersionAsFloat() >= 8.0) && (getApplicationVersionAsFloat() < 9.0))\n{\n\tscriptNode -executeBefore ($JTDnameSpace+\"dagMenuProc8\");\n}\n}\nglobal proc JTDdynParentSnap(string $control, int $enum)\n{\nfloat $JTDpos[];\nfloat $JTDrot[];\nint $onOff;\n$JTDpos = `xform -q -ws -rp $control`;\n$JTDrot = `xform -q -ws -ro $control`;\nif(objExists(($control+\".autoStretch\"))) {$onOff = `getAttr ($control+\".autoStretch\")`; setAttr ($control+\".autoStretch\") 0;}\nsetAttr ($control+\".Parent\") $enum;\nmove -a -ws -rpr $JTDpos[0] $JTDpos[1] $JTDpos[2] $control;\nrotate -a -ws $JTDrot[0] $JTDrot[1] $JTDrot[2] $control;\nif(objExists(($control+\".autoStretch\"))) setAttr ($control+\".autoStretch\") $onOff;\n"
		+ "}\nglobal proc JTDfollowSnap(string $control, int $enum)\n{\nfloat $JTDrot[];\n$JTDrot = `xform -q -ws -ro $control`;\nsetAttr ($control+\".Follow\") $enum;\nrotate -a -ws $JTDrot[0] $JTDrot[1] $JTDrot[2] $control;\n}\nproc JTDmatchFKIK(string $JTDswitcher, string $JTDupSW, string $JTDmidSW, string $JTDlowSW, string $JTDupFK, string $JTDmidFK, string $JTDlowFK, string $JTDupIK, string $JTDmidIK)\n{\nif(getAttr(($JTDswitcher+\".IKFK\")) != 0){\nfloat $upStretch = `getAttr ($JTDupIK+\".stretch\")`;\nfloat $midStretch = `getAttr ($JTDmidIK+\".stretch\")`;\nfloat $upRot[] = `xform -q -ws -ro $JTDupSW`;\nfloat $midRot[] = `xform -q -ws -ro $JTDmidSW`;\nfloat $lowRot[] = `xform -q -ws -ro $JTDlowSW`;\nrotate -a -ws $upRot[0] $upRot[1] $upRot[2] $JTDupFK;\nrotate -a -ws $midRot[0] $midRot[1] $midRot[2] $JTDmidFK;\nrotate -a -ws $lowRot[0] $lowRot[1] $lowRot[2] $JTDlowFK;\nsetAttr ($JTDupFK+\".stretch\") $upStretch;\nsetAttr ($JTDmidFK+\".stretch\") ($midStretch);\nsetAttr ($JTDswitcher+\".IKFK\") 0;}\nselect -r $JTDlowFK;\n}\nproc JTDmatchIKFK(string $JTDswitcher, string $JTDIKpos, string $JTDIKcntrl, string $JTDPV, string $JTDPVpos)\n"
		+ "{\nif(getAttr(($JTDswitcher+\".IKFK\")) != 1){\nfloat $lowRot[] = `xform -q -ws -ro $JTDIKpos`;\nfloat $lowPos[] = `xform -q -ws -rp $JTDIKpos`;\nfloat $midPos[] = `xform -q -ws -rp $JTDPVpos`;\nfloat $pivotPos[];\nif(objExists( ($JTDIKcntrl+\".js_pivotObj\") )) { $pivot = `js_pivot_get $JTDIKcntrl \"js_pivotObj\"`; $pivotPos[0] = `getAttr ($pivot+\".tx\")`; $pivotPos[1] = `getAttr ($pivot+\".ty\")`; $pivotPos[2] = `getAttr ($pivot+\".tz\")`; jd_pivot_reset($JTDIKcntrl);}\nmove -a -ws -rpr $lowPos[0] $lowPos[1] $lowPos[2] $JTDIKcntrl;\nrotate -a -ws $lowRot[0] $lowRot[1] $lowRot[2] $JTDIKcntrl;\nmove -a -ws -rpr $midPos[0] $midPos[1] $midPos[2] $JTDPV;\nsetAttr ($JTDswitcher+\".IKFK\") 1;\nif(objExists( ($JTDIKcntrl+\".js_pivotObj\") )) {$pivot = `js_pivot_get $JTDIKcntrl \"js_pivotMovObj\"`; setAttr ($pivot+\".tx\") $pivotPos[0]; setAttr ($pivot+\".ty\") $pivotPos[1]; setAttr ($pivot+\".tz\") $pivotPos[2]; js_pivot_snap($JTDIKcntrl, 0);}\n}\nselect -r $JTDIKcntrl;\n}\n");
	setAttr ".st" 1;
	setAttr -l on ".rtClick" -type "string" "rtClickMenu";
createNode script -n "dagMenuProc7";
	setAttr ".b" -type "string" (
		"proc optionalDagMenuProc( string $parent, string $item )\n{\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tstring $shape = \"\";\n\tint $gotVisible = 0;\n\tif( size($object) < 1 ) return;\n\tfor( $i=0; $i<size($object); $i+=1) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor( $i=0; $i<size($object); $i+=1) {\n\t\t\tif( 0 == getAttr($object[$i] + \".io\")) {\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tif( \"\" != $shape ) {\n\t\tstring $nt = `nodeType $shape`;\n\t\tswitch( $nt ) {\n\t\t  case \"subdiv\":\n\t\t\tsubdOptionalDagMenuProc( $parent, $item );\n\t\t\tmenuItem -d true; \n\t\t\tbreak;\n\t\t  default:\n\t\t\t// Check to make sure we have a kPlugin prefix\n\t\t\tstring $apiNt = `nodeType -api $shape`;\n\t\t\tif ( startsWith( $apiNt, \"kPlugin\" ) ) {\n\t\t\t\tstring $nodeMenuCommand = $nt + \"DagMenuProc\";\n\t\t\t\tstring $nodeMenuCommandWithArgs = $nodeMenuCommand + \"(\\\"\" + $parent + \"\\\" , \\\"\" + $item + \"\\\" )\";\n"
		+ "\t\t\t\tif ( exists( $nodeMenuCommand ) ) {\n\t\t\t\t   eval( $nodeMenuCommandWithArgs );\n\t\t\t\t}\n\t\t\t}\n\t\t\tbreak;\n\t\t}\n\t}\n}\nproc int objectIsTrimmed(string $item)\n// Return true if this is a trimmed surface\n{\n\tstring $command = (\"getAttr -size \" + $item + \".trimFace\");\n\tint $trimCount = eval($command);\n\treturn ($trimCount != 0);\n}\nproc string getControlledHandle(string $item)\n{\n\tstring $handle;\n\tif (size(`ls ($item+\".ikBlend\")`)) {\n\t\tstring $connHandles[] =\n\t\t\t`listConnections -type ikHandle ($item+\".ikBlend\")`;\n\t\tif (size($connHandles)) {\n\t\t\t$handle = $connHandles[0];\n\t\t}\n\t}\n\treturn $handle;\n}\nproc int isIKcontroller(string $item)\n{\n\tstring $handle = getControlledHandle($item);\n\treturn (size($handle) > 0);\n}\nproc\ncreateFBIKmenuItems(string $parent,\n\t\t\t\t\tstring $item,\n\t\t\t\t\tstring $ikReachModeLocation,\n\t\t\t\t\tstring $keyBodyPartLocation,\n\t\t\t\t\tstring $keyAllLocation,\n\t\t\t\t\tstring $keySelectedLocation)\n{\n\tstring $reachKeyingMode = \"Reach Mode:\";\n\tint $rkm = `optionVar -q setIKKey`;\n\tswitch ($rkm)\n\t{\n\t\tcase 1:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" IK\";\n"
		+ "\t\t\tbreak;\n\t\tcase 2:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" FK\";\n\t\t\tbreak;\n\t\tcase 3:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" Simple\";\n\t\t\tbreak;\n\t}\t\n\tmenuItem -rp $ikReachModeLocation -l $reachKeyingMode\n\t\t-subMenu true\n\t\t-annotation \"Determine how reach values get keyed when doing FBIK keying.\";\n\t\tmenuItem -rp \"S\" -label \"IK (Reach = 1)\"\n\t\t\t-command FBIKReachKeyingOptionIK;\n\t\tmenuItem -rp \"N\" -label \"FK (Reach = 0)\"\n\t\t\t-command FBIKReachKeyingOptionFK;\n\t\tmenuItem -rp \"E\" -label \"Simple (No Reach)\"\n\t\t\t-command FBIKReachKeyingOptionSimple;\n\tsetParent -m $parent;\n\t\n\tmenuItem -l \"Key All\"\n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"1\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyAllLocation\n\t\tkeyAllItem;\n\t\n\tmenuItem -l \"Key Body Part\"\n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"2\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyBodyPartLocation\n\t\tkeyBodyPartItem;\n\t\n\tmenuItem -l \"Key Selected\"\n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"4\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keySelectedLocation\n"
		+ "\t\tkeySelectedItem;\n}\nproc checkForSkinInfluenceItem(string $item, string $quadrant)\n{\n\tint $isJoint = (nodeType($item) == \"joint\");\n\t\n\t// Check if the current context is the skinPaint context \n\t// and the the joint is connected to a skinCluster\n\t//\n\tstring  $currContext = `currentCtx`;\n\tstring  $currTool    = \"\";\n\tif(`contextInfo -ex $currContext`) {\n\t\t$currTool = `contextInfo -c $currContext`;\n\t}\n\tif ( $currTool == \"artAttrSkin\" ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"skinWeights\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"skinCluster\")\n\t\t\t\t{\t\n\t\t\t\t\t// select the surface (not the joint) and set\n\t\t\t\t\t// the joint as the current influence\n\t\t\t\t\t//\n\t\t\t\t\tstring $currSel[] = `ls -sl`;\n\t\t\t\t\tstring $currSelString;\n\t\t\t\t\tif (size($currSel) > 0) {\n\t\t\t\t\t\tstring $currObj;\n\t\t\t\t\t\t$currSelString = \"select -r \";\n\t\t\t\t\t\tfor ($currObj in $currSel) {\n\t\t\t\t\t\t\t$currSelString += ($currObj+\" \");\n"
		+ "\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tmenuItem -l \"Paint Weights\"\n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t-c ($currSelString+\"; setSmoothSkinInfluence \" + $item)\n\t\t\t\t\t\t-rp $quadrant\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\t\t// menu for skinCluster paint\n\telse if ( $isJoint && ($currTool == \"artAttr\") ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"general\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"jointCluster\")\n\t\t\t\t{\n\t\t\t\t\tstring $artCommand = \"artAttrCtx\" ;\n\t\t\t\t\tstring $attribute = \"cluster.\" + $conn +  \".weights\" ;\n\t\t\t\t\tmenuItem -l \"Paint Weights\"\n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n\t\t\t\t\t\t//-c (\"artAttrCtx -e -pas \\\"cluster.\" + $conn +  \".weights\\\" `currentCtx`\")\n\t\t\t\t\t\t-c (\"artSetToolAndSelectAttr( \\\"\" + $artCommand + \"\\\", \\\"\" + $attribute + \"\\\" )\")\n\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n\t// menu for joint-set paint\n"
		+ "\t// Check if the current context is the setPaint context \n\t// and the the joint is connected to a objectSet via jointCluster\n\t//\n\telse if ( $isJoint && ($currTool == \"artSetPaint\") ) {\n\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\tstring $conn;\n\t\tfor($conn in $connL) {\n\t\t\tif (`nodeType $conn` == \"jointCluster\") {\t\n\t\t\t\tstring $connS[] = `listConnections ($conn+\".message\")`;\n\t\t\t\tfor($set in $connS) {\n\t\t\t\t\tif (`nodeType $set` == \"objectSet\") {\n\t\t\t\t\t\tmenuItem -l \"Paint Set Membership\"\n\t\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n\t\t\t\t\t\t\t//-c (\"artSetPaintCtx -e -settomodify \" + $set + \" `currentCtx`\")\n\t\t\t\t\t\t\t-c (\"artSetPaintSelectSet( \\\"\" + $set + \"\\\" )\")\n\t\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\t\tbreak;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n}\nglobal proc string[] objectSelectMasks(string $item)\n// Returns the component selection masks that apply to this object\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n"
		+ "\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tswitch ($nt) {\n\t\tcase \"lattice\":\n\t\t\t$maskList[0] = \"latticePoint\";\n\t\t\tbreak;\t\n\t\tcase \"locator\":\n\t\t\t$maskList[0] = \"locator\";\n\t\t\tbreak;\t\n\t\tcase \"nurbsCurve\":\n\t\t\t$maskList[0] = \"curveParameterPoint\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"editPoint\";\n\t\t\t$maskList[3] = \"hull\";\n\t\t\tbreak;\n\t\tcase \"nurbsSurface\":\n\t\t\t$maskList[0] = \"isoparm\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"surfaceParameterPoint\";\n\t\t\t$maskList[3] = \"hull\";\n\t\t\t$maskList[4] = \"surfaceFace\";\n\t\t\t$maskList[5] = \"surfaceUV\"; \n\t\t\tif (objectIsTrimmed($shape)) {\n\t\t\t\t$maskList[6] = \"surfaceEdge\";\n"
		+ "\t\t\t}\n\t\t\tbreak;\n\t\tcase \"mesh\":\n\t\t\t$maskList[0] = \"edge\";\n\t\t\t$maskList[1] = \"vertex\";\n\t\t\t$maskList[2] = \"facet\";\n\t\t\t$maskList[3] = \"puv\";\n\t\t\t$maskList[4] = \"pvf\";\n\t\t\tbreak;\n\t\tcase \"joint\":\n\t\t\t$maskList[0] = \"joint\";\t\t// special case\n\t\t\tbreak;\n\t\tcase \"ikHandle\":\n\t\t\t$maskList[0] = \"ikHandle\";\t// special case\n\t\t\tbreak;\n\t\tcase \"hikEffector\":\n\t\tcase \"hikFloorContactMarker\":\n\t\t\t$maskList[0] = \"hikEffector\";\t// special case\n\t\t\tbreak;\n\t\tcase \"particle\":\n\t\t\t$maskList[0] = \"particle\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"spring\":\n\t\t\t$maskList[0] = \"springComponent\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"subdiv\":\n \t\t\t$maskList[0] = \"subdivMeshPoint\";\t\n \t\t\t$maskList[1] = \"subdivMeshEdge\";\t\n \t\t\t$maskList[2] = \"subdivMeshFace\";\t\n \t\t\t$maskList[3] = \"subdivMeshUV\";\t\n\t\t\tbreak;\n\t}\n\tif (isIKcontroller($item)) {\n\t\t$maskList[size($maskList)] = \"ikfkHandle\";\n\t}\n\treturn $maskList;\n}\nglobal proc createSelectMenuItems(string $parent, string $item)\n// Create a menu that shows the dag parenting for this object\n{\n\tstring $maskList[] = `objectSelectMasks($item)`;\n"
		+ "\tstring $radialPosition[];\n\tstring $uiName;\n\tint $i;\n\tint $isNurbObject     = false;\n\tint $isPolyObject     = false;\n\tint $isLatticeObject  = false;\n\tint $isJointObject    = false;\n\tint $isHikEffector\t  = false;\n\tint $isIkHandleObject = false;\n\tint $isIkFkHandleObject = false;\t\n\tint $isParticleObject = false;\n\tint $isSpringObject   = false;\n\tint $isSubdivObject   = false;\n\tint $isLocatorObject  = false;\n\tint $hasComponents\t  = false;\n\tif (1 <= size($maskList)) {\n\t\t$isLatticeObject = ($maskList[0] == \"latticePoint\");\n\t\t$isJointObject = ($maskList[0] == \"joint\");\n\t\t$isHikEffector = ($maskList[0] == \"hikEffector\");\n\t\t$isIkHandleObject = ($maskList[0] == \"ikHandle\");\n\t\t$isParticleObject = ($maskList[0] == \"particle\");\n\t\t$isSpringObject = ($maskList[0] == \"springComponent\");\n\t\t$isSubdivObject = ($maskList[0] == \"subdivMeshPoint\");\n\t\t$isLocatorObject = ($maskList[0] == \"locator\");\n\t}\n\tif (2 <= size($maskList)) {\n\t\t$isNurbObject = ($maskList[1] == \"controlVertex\");\n\t\t$isPolyObject = ($maskList[1] == \"vertex\");\n\t}\n\t// $maxRadialPos keeps track of how many octants of the\n"
		+ "\t// RMB marking menu will be populated\n\t//\n\tint $maskSize = size($maskList);\n\tint $maxRadialPos = size($maskList);\n\tif (($maskSize > 0) && ($maskList[$maskSize-1] == \"ikfkHandle\")) {\n\t\t$isIkFkHandleObject = true;\n\t\t$maxRadialPos--; // ikfkHandle does not populate like other masks\n\t}\n\t$hasComponents = $isLatticeObject || \n\t\t\t\t\t $isParticleObject ||\n\t\t\t\t\t $isSubdivObject ||\n\t\t\t\t\t $isSpringObject ||\n\t\t\t\t\t $isNurbObject ||\n\t\t\t\t\t $isPolyObject;\n\t// NOTE: \n\t//\t\t\tIf the object has selectable components, then the\n\t//\t\tradial position \"NE\" will be used for the menuItem:  \n\t//\t\t\"Revert back to object mode.\"\n\t//\n\tsetParent -menu $parent;\n\t$radialPosition[0] = \"N\";\n\t$radialPosition[1] = \"W\";\n\t$radialPosition[2] = \"S\";\n\t$radialPosition[3] = \"E\";\n\t$radialPosition[4] = \"SW\";\n\t$radialPosition[5] = \"SE\";\n\t$radialPosition[6] = \"NW\";\n\t$radialPosition[7] = \"NE\";\n\tif ($isNurbObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tswitch ($maskList[$i]) {\n\t\t\t\tcase \"surfaceParameterPoint\":\n\t\t\t\t\t$uiName = \"Surface Point\";\n\t\t\t\t\tbreak;\n"
		+ "\t\t\t\tcase \"curveParameterPoint\":\n\t\t\t\t\t$uiName = \"Curve Point\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"surfaceEdge\":\n\t\t\t\t\t$uiName = \"Trim Edge\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"surfaceFace\":\n\t\t\t\t\t$uiName = \"Surface Patch\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"surfaceUV\":\n\t\t\t\t\t$uiName = \"UV\";\n\t\t\t\tdefault:\n\t\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t}\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -l $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuNURBComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isPolyObject) {\n\t\t\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tswitch ($maskList[$i]) {\n\t\t\t  case \"puv\":\n\t\t\t\t$uiName = \"UV\";\n\t\t\t\tbreak;\n\t\t\t  case \"facet\":\n\t\t\t\t$uiName = \"Face\";\n\t\t\t\tbreak;\n\t\t\t  case \"pvf\":\n\t\t\t\t$uiName = \"Vertex Faces\";\n\t\t\t\tbreak;\n\t\t\t  default:\n\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -l $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n"
		+ "\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the poly is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"NW\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isLatticeObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t\tmenuItem -l $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuLatticeComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t} else if ($isJointObject) {\n\t\tstring $setCmd = `performSetPrefAngle 2`;\n\t\tstring $assumeCmd = `performAssumePrefAngle 2`;\t\t\n\t\t$setCmd += (\" \"+$item);\n\t\t$assumeCmd += (\" \"+$item);\n\t\tstring $jts[] = `ls -sl -type joint`;\n\t\tfor ($jointItem in $jts) {\n\t\t\tif ($jointItem != $item) {\n\t\t\t\t$setCmd += (\" \"+$jointItem);\n\t\t\t\t$assumeCmd += (\" \"+$jointItem);\n\t\t\t}\n\t\t}\n\t\tmenuItem -l \"Set Preferred Angle\"\n\t\t\t-echoCommand true\n\t\t\t-c ($setCmd)\n"
		+ "\t\t\t-rp \"N\"\n\t\t\tsetPrefAngleItem;\n\t\t\n\t\tmenuItem -l \"Assume Preferred Angle\"\n\t\t\t-echoCommand true\n\t\t\t-c ($assumeCmd)\n\t\t\t-rp \"S\"\n\t\t\tassumePrefAngleItem;\n\t\tstring $hikHandle[] = `listConnections -type hikHandle $item`;\n\t\tint $isFBIKjoint = (size($hikHandle) > 0);\n\t\tif ($isFBIKjoint) {\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t\t\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isHikEffector){\n\t\tif (nodeType($item) == \"hikFloorContactMarker\") {\n\t\t\tstring $parentItems[] = `listRelatives -pa -p $item`;\n\t\t\tif (size($parentItems) &&\n\t\t\t\tnodeType($parentItems[0]) == \"hikEffector\") {\n\t\t\t\t$item = $parentItems[0];\n\t\t\t} else {\n\t\t\t\t$isHikEffector = false;\n\t\t\t}\n\t\t}\n\t\tif ($isHikEffector) {\n\t\t    string $pivotOffsetPlug = $item + \".pivotOffset\";\n\t\t    float $pivotOffset[] = `getAttr $pivotOffsetPlug`;\n\t\t    int $enablePin = (equivalentTol($pivotOffset[0],0.0,0.001) &&\n"
		+ "\t\t                      equivalentTol($pivotOffset[1],0.0,0.001) &&\n\t\t                      equivalentTol($pivotOffset[2],0.0,0.001));\n\t\t    \n\t\t\t// set pinning for hikEffectors\n\t\t\tmenuItem -l \"Pin Both\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"3\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"N\"\n\t\t\t\tpinAllItem;\n\t\t\t\n\t\t\tmenuItem -l \"Pin Translate\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"1\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"NW\"\n\t\t\t\tpinTransItem;\n\t\t\t\n\t\t\tmenuItem -l \"Pin Rotate\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"2\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"SW\"\n\t\t\t\tpinRotItem;\n\t\t\t\n\t\t\tmenuItem -l \"Unpin\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"0\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-rp \"S\"\n\t\t\t\tunpinItem;\n\t\t\t\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t} else if ($isLocatorObject) {\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n"
		+ "\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isIkHandleObject) {\n\t\tmenuItem -l \"Set Preferred Angle\"\n\t\t\t-annotation \"Set Preferred: Select ikHandles or joints\"\n\t\t\t-echoCommand true\n\t\t\t-c (`performSetPrefAngle 2` + \" \" + $item)\n\t\t\t-rp \"W\"\n\t\t\tsetPrefAngleItem;\n\t\tmenuItem -l \"Assume Preferred Angle\"\n\t\t\t-annotation \"Assume Preferred: Select ikHandles or joints\"\n\t\t\t-echoCommand true\n\t\t\t-c (`performAssumePrefAngle 2` + \" \" + $item)\n\t\t\t-rp \"E\"\n\t\t\tassumePrefAngleItem;\n\t\tmenuItem -l \"Enable ikHandle\"\n\t\t\t-annotation \"Enable IK Handles: Select ikHandles\"\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -eh \" + $item)\n\t\t\t-rp \"N\"\n\t\t\tenableIKHandlesItem;\n\t\tmenuItem -l \"Disable ikHandle\"\n\t\t\t-annotation \"Disable IK Handles: Select ikHandles\"\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -dh \" + $item)\n\t\t\t-rp \"S\"\n\t\t\tdisableIKHandlesItem;\n\t\tmenuItem -l \"Enable Snap\"\n\t\t\t-annotation \"Enable IK Handle Snapping: Select ikHandles\"\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -see \" + $item + \";\" +\n\t\t\t\t\"ikHandle -e -shf on \" + $item)\n\t\t\t-rp \"SE\"\n"
		+ "\t\t\tenableIKHandlesSnapItem;\n\t\tmenuItem -l \"Disable Snap\"\n\t\t\t-annotation \"Disable IK Handle Snapping: Select ikHandles\"\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -shf off \" + $item)\n\t\t\t-rp \"SW\"\n\t\t\tdisableIKHandlesSnapItem;\n\t\t$maxRadialPos = 6;\n\t} else if ($isParticleObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tswitch ($maskList[$i]) {\n\t\t\t\tcase \"particle\":\n\t\t\t\t\t$uiName = \"Particle\";\n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t}\n\t\t\tmenuItem -l $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuParticleComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} else if ($isSpringObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tswitch ($maskList[$i]) {\n\t\t\t\tcase \"springComponent\":\n\t\t\t\t\t$uiName = \"Spring\";\n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t}\n\t\t\tmenuItem -l $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuSpringComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n"
		+ "\t\t}\n\t} else if ($isSubdivObject) {\n\t\tsubdDagMenuProc( 0, $item, $maskList );\n\t} else {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] == \"ikfkHandle\") {\n\t\t\t\tcontinue;\n\t\t\t}\n\t\t\t\n\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\tmenuItem -l $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} \n\t// If components are present, provide the ability to \n\t// get back to object mode...\n\t//\n\tif ($hasComponents) {\n\t\tmenuItem -l \"Object Mode\"\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"hilite -unHilite \" + $item + \"; string $selection[] = `ls -sl`;\"\n\t\t\t\t\t+ \"changeSelectMode -object; select -r $selection;\" )\n\t\t\t\t-rp \"NE\";\n\t}\n\t// Since any object can be an ikfk handle, we only populate the ikfk items\n\t// in slots that are not already in use.\n\t//\n\tif ($isIkFkHandleObject) {\n\t\tstring $handle = getControlledHandle($item);\n\t\tif ($maxRadialPos < 8) {\n\t\t\tmenuItem -label \"Set IK/FK Key\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation \"Set keys on selected joint chains and handles.\"\n"
		+ "\t\t\t\t-rp $radialPosition[7]\n\t\t\t\t-command (\"select -r \"+$item+\"; SetIKFKKeyframe\");\n\t\t}\n\t\tif ($maxRadialPos < 7) {\n\t\t\tmenuItem -label \"Move IK to FK\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation \"Select an IK handle or IK/FK connected object.\"\n\t\t\t\t-rp $radialPosition[6]\n\t\t\t\t-command (\"select -r \"+$item+\"; MoveIKtoFK\");\n\t\t}\n\t\tif ($maxRadialPos < 5) {\n\t\t\tmenuItem -l \"Disable ikHandle\"\n\t\t\t\t-annotation \"Disable IK Handle\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -dh \" + $handle)\n\t\t\t\t-rp $radialPosition[5];\n\t\t\tmenuItem -l \"Enable ikHandle\"\n\t\t\t\t-annotation \"Enable IK Handle\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -eh \" + $handle)\n\t\t\t\t-rp $radialPosition[4];\n\t\t}\n\t}\n\t\n\t\n//\tfor ($i = 0; $i < size($maskList); $i++) {\n//       $itemName = \"SELM\" + string($i);\n//\t\t\tsetParent -menu $parent;\n//\t\t\tmenuItem\n//\t\t\t\t-c (\"doMenuComponentSelection(\\\"\" + \n//\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n//\t\t\t\t-l $maskList[$i]\n//\t\t\t\t-rp $radialPosition[$i]\n//\t\t\t\t$itemName;\n//\t}\n\tsetParent -menu $parent;\n}\nglobal proc doMenuNURBComponentSelection(string $item, string $mask)\n"
		+ "//\n// Change the selection/display state to allow selection of NURB components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t// UVs are not selectable. So issue a warning.\n\t\t//\n\t\tif( $mask == \"surfaceUV\" )\n\t\t{\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t\tstring $warn = \"Edit UV Mode is not enabled on \";\n\t\t\t\t$warn += $item;\n\t\t\t\t$warn += \". UVs will not be selectable.\";\n\t\t\t\twarning($warn);\n\t\t\t}\n\t\t}\n\t} else {\n\t\tselectType -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -isoparm 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"surfaceUV\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -uv \" + $item + \";\";\n"
		+ "\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\"; \n\t\t\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t\t\t//\n\t\t\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\t\t\tif( !$isExplicit[0] )\n\t\t\t\t\t{\n\t\t\t\t\t\tstring $warn = \"Edit UV Mode is not enabled on \";\n\t\t\t\t\t\t$warn += $item;\n\t\t\t\t\t\t$warn += \". UVs will not be selectable.\";\n\t\t\t\t\t\twarning($warn);\n\t\t\t\t\t}\n\t\t\t\t\tbreak; \n\t\t\t\tcase \"editPoint\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"controlVertex\":\n"
		+ "\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"hull\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item + \";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n"
		+ "\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t//\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t\tstring $warn = \"Edit UV Mode is not enabled on \";\n\t\t\t\t$warn += $item;\n\t\t\t\t$warn += \". UVs will not be selectable.\";\n\t\t\t\twarning($warn);\n\t\t\t}\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuLatticeComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n// selection of the Lattice control points\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"toggle -\" + $mask + \";\"; \n"
		+ "\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuParticleComponentSelection(string $item, string $mask)\n//\n// Change the selection/display state to allow selection of particle\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -particle 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"particle\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -particle \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuSpringComponentSelection(string $item, string $mask)\n"
		+ "//\n// Change the selection/display state to allow selection of spring\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -springComponent 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"springComponent\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -springComponent \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n"
		+ "// selection of the specified selection mask type.\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc undoMenuComponentSelection(string $item, string $mask)\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" false;\";\n\t} else {\n\t\t$selectCmd = \"selectType -\" + $mask + \" false;\";\n\t}\n\teval $selectCmd;\n}\nglobal proc toggleBoundingBoxDisplay ( string $parent )\n//\n// For each shape under the selected parent object, toggle the\n// state of bounding box display mode.\n//\n{\n\tstring $shapes[] = `listRelatives -shapes $parent`;\n\tstring $shape;\n\tfor ( $shape in $shapes ) {\n\t\tint $overrideOn = `getAttr ( $shape + \".overrideEnabled\")`;\n\t\tint $lodMode =    `getAttr ( $shape + \".overrideLevelOfDetail\")`;\n"
		+ "\t\tint $enabled =     $overrideOn && $lodMode == 1;\n\t\tif ( $enabled ) {\n\t\t\t// Don't reset the overrideEnabled attribute. It\n\t\t\t// is used for more than just bounding box display\n\t\t\t// and turning if off will mess things up of you\n\t\t\t// have temporarily enabled bounding box display \n\t\t\t// of an object in a layer.\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\" ) 0;\n\t\t} else {\n\t\t\tsetAttr ( $shape + \".overrideEnabled\") 1;\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\") 1;\n\t\t}\n\t}\n}\nglobal proc createActionsMenuItems(string $parent, string $item)\n//\n// Creates a menu with common operations to perform on an object\n//\n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tmenuItem -l \"Template\" -c (\"toggle -template -state on \" + $item);\n\tmenuItem -l \"Untemplate\" -c (\"toggle -template -state off \" + $item);\n\tmenuItem -l \"Unparent\" -c (\"parent -w \" + $item);\n\tmenuItem -l \"Bounding Box\" -c (\"toggleBoundingBoxDisplay \" + $item);\n}\nglobal proc showSG(string $item)\n{\n\t//check selection list for faces (polys, subds, nurbs)\n"
		+ "\tstring $shader = \"\";\n\tstring $selection[] = `filterExpand -sm 34 -sm 38 -sm 72`;\n\t// If there are components selected, try to find a component shader\n\tif( size( $selection ) > 0)\n\t{\n\t\tstring $nameBuffer[];\n\t\tint $numComps = size( $selection );\n\t\tint $comp;\n\t\tfor( $comp = 0; $comp < $numComps; $comp++)\n\t\t{\n\t\t\ttokenize $selection[ $comp] \".\" $nameBuffer;\n\t\t\t//if the selected component is on the object under the pointer\n\t\t\t//get it's shader\n\t\t\tif ($nameBuffer[0] == $item) {\n\t\t\t\t$shader = `getComponentShader $selection[$comp]`;\n\t\t\t\t//check if the shader is already selected - only toggle\n\t\t\t\t//selection if it is not selected\n\t\t\t\tstring $shaderSelected[] = `ls -selection $shader`;\n\t\t\t\tif ( size( $shaderSelected ) == 0){\n\t\t\t\t\tselect -tgl $shader;\n\t\t\t\t\n\t\t\t\t}\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we didn't find a component level shader, try for an object level one\n\tif( size( $shader ) == 0 ) {\n\t\tstring $allNodes[] = (`listHistory -f true $item` );\n\t\tstring $node = \"\";\n\t\tfor ($node in $allNodes) {\n\t\t\tif(`nodeType $node` == \"shadingEngine\") {\n"
		+ "\t\t\t\t$shader = $node;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we found a shader, show it\n\tif( size( $shader ) > 0) \n\t{\n\t\tshowEditor $shader;\n\t}\n}\n\t\nglobal proc showBakeSets(string $item, string $type)\n{\n\tstring $possibleBakeSets[] = (`listHistory -f true $item` );\n\tstring $node = \"\";\n    int $bakeSetExists = false;\n\tfor ($node in $possibleBakeSets) {\n\t\tif(`nodeType $node` == $type)\n        {\n\t\t\tshowEditor $node;\n            $bakeSetExists = true;\n\t\t\tbreak;\n\t\t}\n\t}\n    // If no bake set exists for the $item, then create the\n    // initial bake set of that $type and assign it to the $item.\n    //\n    if (!$bakeSetExists)\n    {\n        string $initialBakeSet = \"\";\n\t\tif($type == \"vertexBakeSet\") \n        {\n            $initialBakeSet = \"initialVertexBakeSet\";\n        }\n        else if($type == \"textureBakeSet\") \n        {\n            $initialBakeSet = \"initialTextureBakeSet\";\n\t\t}\n        else\n        {\n            error   -showLineNumber true\n                (\"Bake set type \"+$type + \" does not exist.\");\n            return;\n        }\n"
		+ "        // Create it if it does not exist yet.\n        //\n        if  ( size(`ls $initialBakeSet`) < 1)\n        {\n            createBakeSet($initialBakeSet, $type);\n        } \n    \n        // Assign the initial bake set to the item.\n        //\n        assignBakeSet($initialBakeSet, $item);\n        // Show the initial bake set.\n        //\n        showBakeSetAE($initialBakeSet);\n    }\n}\nglobal proc createShaderMenuItems(string $parent, string $item)\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n\tmenuItem -l \"Material Attributes...\" -c (\"showSG \" + $item);\n\tmenuItem -d true;\n\tbuildShaderMenus($item);\n}\nglobal proc refreshBakingAttributeMenu (string $parent, string $item)\n{\n    setParent -menu $parent;\n    int $suitable = bakeSetTypeSuitableForItem(\"textureBakeSet\", $item);\n    menuItem -edit -enable $suitable textureBakingAttributeItem;\n    $suitable = bakeSetTypeSuitableForItem(\"vertexBakeSet\", $item);\n    menuItem -edit -enable $suitable vertexBakingAttributeItem;\n}\n// Description:  This procedure is called to create the \n"
		+ "//  baking attribute menu.\n//\nproc createBakingAttributeMenu(string $parent, string $item)\n{\n    setParent -menu $parent;\n\tmenuItem -l \"Edit Attributes...\" \n        -subMenu true\n        -tearOff true\n        -postMenuCommand (\"refreshBakingAttributeMenu \\\"\"\n                            +$parent+\"|editAttributeItem\\\" \\\"\"\n                            +$item+\"\\\"\")\n        editAttributeItem; \n        menuItem -l \"texture\" \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"textureBakeSet\\\"\") \n            textureBakingAttributeItem;\n        menuItem -l \"vertex\" \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"vertexBakeSet\\\"\") \n            vertexBakingAttributeItem;\n    setParent -menu ..;\n}\n// Description:  This procedure is called to create the baking\n//  menu items.\n//\nglobal proc createBakingMenuItems(string $parent, string $item)\n//\n//\tCreate the Baking menus for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n    createBakingAttributeMenu($parent, $item);\n\tmenuItem -d true;\n\tif (!`about -evalVersion`) {\n"
		+ "\t\tbuildBakingMenus($item);\n\t}\n}\n// Description:  This procedure is called to create the switch proxy\n//  menu items.\n//\nglobal proc createSwitchProxyMenuItems(string $parent, string $item, string $refNode)\n//\n//\tCreate the switch proxy submenu for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\tint $i;\n\tstring $proxyLabel;\n\tstring $proxyTag;\n\tfor( $i=0; $i<size($proxyNodes); $i+=1) {\n\t\t$proxyTag = `getAttr ($proxyNodes[$i] + \".proxyTag\")`;\n\t\t\n\t\tmenuItem -l $proxyTag -c (\"proxySwitch \" + $proxyNodes[$i]);\n\t}\n}\nglobal proc createHistoryMenuItems(string $parent, string $item)\n//\n// Creates a menu on the toolbar that shows a list of\n// all operations that took place to create/modify\n// the currently selected object.  Note that the list\n// is not being filtered yet to get rid of things that\n// users won't really care about, nor are the operations\n// being listed as operations - their DG node names are\n// simply being stuck into the menu.  This should\n"
		+ "// change.\n//\n// Also note that the chain of operations limit is being\n// hardcoded to 20 here, for the sake of speed.\n//\n{\n\t//\n\t// Delete all menu entries currently in the popup\n\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, false, 1 );\n}\nglobal proc createFutureMenuItems(string $parent, string $item)\n//\n// Also note that the chain of operations limit is being\n// hardcoded to 20 here, for the sake of speed.\n//\n{\n\t//\n\t// Delete all menu entries currently in the popup\n\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, true, 1 );\n}\nglobal proc string objectHandlesUvSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n"
		+ "\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createUVsetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyUVSet -currentUVSet -uvSet \";\n\tstring $curSet[] = `polyUVSet -q -currentUVSet $shape`;\n\tstring $names[] = `polyUVSet -q -auv $shape`;\n\tstring $allProjects[] = `polyUVSet -pr -q $shape`;\n\tstring $setClearCmd = \"\";\n\tif (size($allProjects))\n\t{\n\t\t$setClearCmd = \"select -d \";\t\t\n\t\tfor ($p=0; $p<size($allProjects); $p++)\n\t\t\t$setClearCmd += (\" \" + $allProjects[$p]);\n\t\t$setClearCmd += \";\";\n\t}\n\tint $numNames = size($names);\n\t// Add in a menu to do uv-linking\n\tif ($numNames > 0)\n\t{\t\n\t\tstring $ann = `getRunTimeCommandAnnotation \"UVCentricUVLinkingEditor\"`;\n\t\tstring $cmd = \"UVCentricUVLinkingEditor; \" + \"select -r \" + $item;\n\t\tmenuItem -l \"UV Linking...\"\n"
		+ "\t\t\t-c $cmd\n\t\t\t-annotation $ann;\n\t\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i<$numNames; $i++)\n\t{\n\t\tstring $uvEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $uvname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $uvEditname + \" \" + $shape + \";\";\n\t\t// Find any projections associated with the uvset\n\t\tstring $projs[];\n\t\t$projs = `polyUVSet -pr -uvs $uvname -q $shape`;\n\t\tstring $projCmd;\n\t\t// Add a divider between items\n\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($uvname == $curSet[0])\n\t\t{\n\t\t\tmenuItem -l ($uvname) -c $setClearCmd -checkBox true;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -l $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -l ($uvname) -c ($setClearCmd + $setCurCmd) -checkBox false;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setCurCmd + $setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -l $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n"
		+ "\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n}\n//\nglobal proc string objectHandlesColorSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createColorSetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyColorSet -currentColorSet -colorSet \";\n\tstring $curSet[] = `polyColorSet -q -currentColorSet $shape`;\n\tstring $names[] = `polyColorSet -q -acs $shape`;\n\tint $numNames = size($names);\n"
		+ "\t// Add in a menu to access color set editor\n\tmenuItem -l \"Color Set Editor...\"\n\t\t-ann (getRunTimeCommandAnnotation(\"ColorSetEditor\"))\n\t\t-command \"colorSetEditor\"\n\t\t;\n\tif ($numNames > 0)\n\t{\t\n\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i < $numNames; $i++)\n\t{\n\t\tstring $colorEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $colorname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $colorEditname + \" \" + $shape + \";\";\n\t\t// Add a divider between items\n\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($colorname == $curSet[0])\n\t\t{\n\t\t\tmenuItem -l ($colorname) -checkBox true;\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -l ($colorname) -c ($setCurCmd) -checkBox false;\n\t\t}\n\t}\n}\nglobal proc createArtAttrMenuItems(\n\tstring \t\t$parent, \n\tstring \t\t$item\n)\n//\n//\tDescription:\n// \t\tCreates a menu that shows all the paintable attributes.\n// \n//\tNOTE: paintAttr are sorted by the paintable node type.\n// \n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\t\n\t// add default items which are always displayed in the context menu\n\tmenuItem -p $parent -label \"Paint Select\" -command \"ArtPaintSelectToolOptions\" ;\n"
		+ "\tmenuItem -p $parent -label \"3D Paint\" -command \"Art3dPaintToolOptions\" ;\n\tmenuItem -p $parent -label \"Sculpt\" -command \"SculptGeometryToolOptions\" ;\n\t// Get all paintable attributes\n\tstring $paintAttr = `artBuildPaintMenu $item`;\n\t\n\tif ($paintAttr != \"\")\n\t{\n\t\t// if the menu item has not been created, create it.\n\t\tif( $parent == \"\" )\n\t\t\t$parent = `menuItem -subMenu true -aob true -l \"Paint\"`;\n\t\t\t\n\t\n\t\t// Create the menu.\n\t\tartAttrCreateMenuItems( $parent, $paintAttr );\n\t\t\n\t\t// artAttrCreateMenuItems currently does not use $object\n\t\t// hence we are making a seperate call to this function to handle\n\t\t// cloth objects. We need the object name to select the object and detect \n\t\t// dynamic attributes available for painting.\n\t\t//\n\t\tcreatePaintingMenuItems( $parent, $item );\n\t}\n}\n// This has been called because a menu press happened on a DAG object\n// So find the Object submenu and add the DAG specific items to it.\n//\nglobal proc dagMenuProc(string $parent, string $object)\n{\n\tglobal string $artSelectObject ;\n\tstring $mode = \"All\";\n"
		+ "\tif (`optionVar -exists currentMenuBarTab`) {\n\t\t$mode = `optionVar -q currentMenuBarTab`;\n\t} else {\n\t\toptionVar -sv currentMenuBarTab $mode;\n\t}\n\tif (`popupMenu -e -exists $parent`) {\n\t\tsetParent -m $parent;\n\t\t// label the object\n\t\tstring $shortName = `substitute \".*|\" $object \"\"`;\n\t\tmenuItem -l ($shortName + \"...\") -c (\"showEditor \"+$object);\n\t\tmenuItem -divider true;\n\t\tmenuItem -divider true;\n\t\t// Create the list of selection masks\n\t\tcreateSelectMenuItems($parent, $object);\n\t\tmenuItem -d true;\n\t\tmenuItem -l \"Select\" -c (\"select -r \" + $object);\n\t\tmenuItem -l \"Select Hierarchy\" -c (\"select -hierarchy \" + $object);\n\t\tmenuItem -d true;\n\t\tif( (objExists(($object+\".Parent\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n\t\t\t\twhile(`objExists( ($object+\".Parent_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Parent_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n"
		+ "\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Parent to: \"+$parent) -c (\"JTDdynParentSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tmenuItem -d true;\n\t\tif( (objExists(($object+\".Follow\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n\t\t\t\twhile(`objExists( ($object+\".Follow_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Follow_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Follow: \"+$parent) -c (\"JTDfollowSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".IKFK\") ))\n"
		+ "\t\t{\n\t\t\t\tstring $JTDupSW[] = `listConnections ($object+\".SWup\")`;\n\t\t\t\tstring $JTDmidSW[] = `listConnections ($object+\".SWmid\")`;\n\t\t\t\tstring $JTDupFK[] = `listConnections ($object+\".FKup\")`;\n\t\t\t\tstring $JTDmidFK[] = `listConnections ($object+\".FKmid\")`;\n\t\t\t\tstring $JTDlowFK[] = `listConnections ($object+\".FKlow\")`;\n\t\t\t\tstring $JTDupIK[] = `listConnections ($object+\".IKup\")`;\n\t\t\t\tstring $JTDmidIK[] = `listConnections ($object+\".IKmid\")`;\n\t\t\t\tstring $JTDIKpos[] = `listConnections ($object+\".IKpos\")`;\n\t\t\t\tstring $JTDIKcntrl[] = `listConnections ($object+\".IKcntrl\")`;\n\t\t\t\tstring $JTDPV[] = `listConnections ($object+\".PV\")`;\n\t\t\t\tstring $JTDPVpos[] = `listConnections ($object+\".PVsnapPos\")`;\n\t\t\t\tif( `getAttr($object+\".IKFK\")` == 0 ) menuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\telse if( `getAttr($object+\".IKFK\")` == 1 ) menuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n"
		+ "\t\t\t\telse \n\t\t\t\t{\n\t\t\t\t\t\tmenuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\t\t\tmenuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n\t\t\t\t}\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".js_pivotObj\") ) )\n\t\t{\n\t\t\tmenuItem -l \"Select Moveable Pivot\" -c (\"js_pivot_createMov (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Apply & Key Moved Pivot\" -c (\"js_pivot_snap (\\\"\"+$object+\"\\\", 1)\");\n\t\t\tstring $menu = `menuItem -subMenu true -aob true -l \"Pivot Options\"`;\n\t\t\tmenuItem -l \"Toggle Moveable Pivot Locator\" -c (\"js_pivot_mov_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Toggle Actual Pivot Locator\" -c (\"js_pivot_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Reset Pivot\" -c (\"jd_pivot_reset (\\\"\"+$object+\"\\\")\");\n\t\t\tsetParent -m $parent;\n\t\t\tmenuItem -d true;\n"
		+ "\t\t}\n\t\toptionalDagMenuProc( $parent, $object );\n\t\tstring $menu = `menuItem -subMenu true -aob true -l \"Inputs\"`;\n\t\tmenu -e \n\t\t\t-pmc ( \"createHistoryMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n\t\t$menu = `menuItem -subMenu true -aob true -l \"Outputs\"`;\n\t\tmenu -e -pmc ( \"createFutureMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n\t \t// Look at the shape child of this object\n\t \t//\n \t\tstring $shapes[] = `listRelatives -path -s $object`;\n\t\t// get current selection of shapes\n\t\tstring $currentSel[] = `ls -sl -dagObjects -shapes` ;\n\t\tstring $paintParent = \"\" ;\n\t\tint $selIndex  ;\n \t\tint $i;\n \t\tfor ($i = 0; $i < size($shapes); ++$i) \n\t\t{\n\t\t\tstring $nodeType = `nodeType $shapes[$i]` ;\n\t\t\tif ( ( $nodeType == \"nurbsSurface\") ||\n\t\t\t\t ( $nodeType == \"mesh\") ||\n\t\t\t\t ( $nodeType == \"subdiv\")) \n\t\t\t{\n\t\t\t\t// save the object name if it is not already selected by the user\n\t\t\t\t// We use this info to select the object if user chooses a paint option\n\t\t\t\t//\n\t\t\t\t// If user has selected multiple objects and is using context menu on one of them\n"
		+ "\t\t\t\t// we do not change the selection list as user may want to paint some attribute \n\t\t\t\t// on all of them. (It is the way it has been working all along...we don't want to \n\t\t\t\t// break it )\n\t\t\t\t\n\t\t\t\tint $found = 0 ;\n\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t{\n\t\t\t\t\tif( $shapes[$i] == $currentSel[ $selIndex  ] )\n\t\t\t\t\t{\n\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\tbreak ;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\tif( $found )\n\t\t\t\t{\n\t\t\t\t\t$artSelectObject = \"\" ;\n\t\t\t\t}\n\t\t\t\telse\n\t\t\t\t{\n\t\t\t\t\t// check if the object is in component selection mode\n\t\t\t\t\t// and if it is, do not do any further selection.\n\t\t\t\t\t// We are assuming that if the object is in hilite mode\n\t\t\t\t\t// then the user is in component selection mode.\n\t\t\t\t\t\n\t\t\t\t\t$currentSel = `ls -hilite` ;\n\t\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t\t{\n\t\t\t\t\t\tif( $object == $currentSel[ $selIndex  ] )\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\t\tbreak ;\n\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tif( !$found ) \n\t\t\t\t\t\t$artSelectObject = $object ;\n\t\t\t\t\telse\n\t\t\t\t\t\t$artSelectObject = \"\" ;\n"
		+ "\t\t\t\t}\n\t\t\t\t\n\t\t\t\t$paintParent = `menuItem -subMenu true -aob true -l \"Paint\"`;\n\t\t\t\tmenu -e\t-pmc ( \"createArtAttrMenuItems \\\"\"+ $paintParent +\"\\\" \"+$object ) $paintParent ;\n\t\t\t\tsetParent -m $parent;\n\t\t\t\tbreak ;\n\t\t\t}\n\t\t}\n\t    $menu = `menuItem -subMenu true -l \"Actions\"`;\n\t\tmenu -e -pmc ( \"createActionsMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n\t\t// If the object can handle uv sets then add the uvset menu\n\t\t//\n\t\tstring $shape = objectHandlesUvSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -l \"UV Sets\"`;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createUVsetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+\n\t\t\t\t\t  $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\tstring $shape = objectHandlesColorSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -l \"Color Sets\"`;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createColorSetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+\n\t\t\t\t\t  $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\t// Shader menu to be able to quickly assign existing shaders\n\t\t// to the object under the pointer.\n"
		+ "\t\t//\n    \tmenuItem -d true;\n \t\t$menu = `menuItem -subMenu true -l \"Materials\"`;\n \t\tmenu -e\n\t\t\t-pmc ( \"createShaderMenuItems \\\"\"+$menu+\"\\\" \"+$object )\n\t\t\t$menu;\n \t\tsetParent -m $parent;\n\t\tint $mentalIsLoaded = 0;\n\t\tstring $renderer;\n\t    for ($renderer in `renderer -query -namesOfAvailableRenderers`) {\n\t\t\tif( $renderer == \"mentalRay\" ) {\n\t\t\t\t$mentalIsLoaded = 1;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\tif ($mentalIsLoaded) {\n \t\t\t$menu = `menuItem -subMenu true -l \"Baking\"`;\n \t\t\tmenu -e\n\t\t\t\t-pmc ( \"createBakingMenuItems \\\"\"+$menu+\"\\\" \"+$object )\n\t\t\t\t$menu;\n \t\t\tsetParent -m $parent;\n\t\t}\n//\t\t{\n// \t\t\t$menu = `menuItem -subMenu true -l \"Paint\"`;\n//\t\t\tmenu -e\n//\t\t\t\t-pmc ( \"createPaintingMenuItems \\\"\"+$menu+\"\\\" \"+$object )\n//\t\t\t\t$menu;\n// \t\t\tsetParent -m $parent;\n//\t\t}\n\t\tif ($mode == \"Dynamics\") {\n\t\t\tmenuItem -d true;\n\t\t\tmenuItem -l \"Connect Field\" -c (\"connectDynamic -f \" + $object);\n\t\t\tmenuItem -l \"Connect Emitter\" -c (\"connectDynamic -em \" + $object);\n\t\t\tmenuItem -l \"Connect Collision\" -c (\"connectDynamic -c \" + $object);\n\t\t}\n\t\t// is there a reference associated with the object ?\n"
		+ "\t\t// and if so, is it in a loaded or unloaded state?\n\t\tstring $refNode = `getRelatedReference $object`;\n\t\tif( size($refNode) > 0) {\n\t\t\tmenuItem -d true;\n\t\t\tif( `file -rfn $refNode -q -dr` ) {\n\t\t\t\tmenuItem -l \"Load Related Reference\" -c (\"loadRelatedReference \" + $object);\n\t\t\t} else {\n\t\t\t\tmenuItem -l \"Reload Related Reference\" -c (\"loadRelatedReference \" + $object);\n\t\t\t\tmenuItem -l \"Unload Related Reference\" -c (\"unloadRelatedReference \" + $object);\n\t\t\t}\n\t\t\t// Is this reference a proxy? If so, add proxy switch submenu\n\t\t\t//\n\t\t\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\t\t\tif(size($proxyNodes) > 0) {\n\t\t\t\t$menu = `menuItem -subMenu true -l \"Reload Proxy As\"`;\n\t\t\t\tmenu -e\n\t\t\t\t\t-pmc ( \"createSwitchProxyMenuItems \\\"\"+$menu+\"\\\" \"+$object + \" \" + $refNode )\n\t\t\t\t\t$menu;\n\t\t\t\tsetParent -m $parent;\n\t\t\t}\n\t\t}\n\t\tsetParent -m $parent;\n\t} else {\n\t\twarning(\"Menu \" + $parent + \" doesn't exist.\");\n\t}\n}\n");
	setAttr ".st" 1;
createNode script -n "dagMenuProc8";
	setAttr ".b" -type "string" (
		"proc optionalDagMenuProc( string $parent, string $item )\n{\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tstring $shape = \"\";\n\tint $gotVisible = 0;\n\tif( size($object) < 1 ) return;\n\tfor( $i=0; $i<size($object); $i+=1) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor( $i=0; $i<size($object); $i+=1) {\n\t\t\tif( 0 == getAttr($object[$i] + \".io\")) {\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tif( \"\" != $shape ) {\n\t\tstring $nt = `nodeType $shape`;\n\t\tswitch( $nt ) {\n\t\t  case \"subdiv\":\n\t\t\tsubdOptionalDagMenuProc( $parent, $item );\n\t\t\tmenuItem -d true; \n\t\t\tbreak;\n\t\t  default:\n\t\t\t// Check to make sure we have a kPlugin prefix\n\t\t\tstring $apiNt = `nodeType -api $shape`;\n\t\t\tif ( startsWith( $apiNt, \"kPlugin\" ) ) {\n\t\t\t\tstring $nodeMenuCommand = $nt + \"DagMenuProc\";\n\t\t\t\tstring $nodeMenuCommandWithArgs = $nodeMenuCommand + \"(\\\"\" + $parent + \"\\\" , \\\"\" + $item + \"\\\" )\";\n"
		+ "\t\t\t\tif ( exists( $nodeMenuCommand ) ) {\n\t\t\t\t   eval( $nodeMenuCommandWithArgs );\n\t\t\t\t}\n\t\t\t}\n\t\t\tbreak;\n\t\t}\n\t}\n}\nproc int objectIsTrimmed(string $item)\n// Return true if this is a trimmed surface\n{\n\tstring $command = (\"getAttr -size \" + $item + \".trimFace\");\n\tint $trimCount = eval($command);\n\treturn ($trimCount != 0);\n}\nproc string getControlledHandle(string $item)\n{\n\tstring $handle;\n\tif (size(`ls ($item+\".ikBlend\")`)) {\n\t\tstring $connHandles[] =\n\t\t\t`listConnections -type ikHandle ($item+\".ikBlend\")`;\n\t\tif (size($connHandles)) {\n\t\t\t$handle = $connHandles[0];\n\t\t}\n\t}\n\treturn $handle;\n}\nproc int isIKcontroller(string $item)\n{\n\tstring $handle = getControlledHandle($item);\n\treturn (size($handle) > 0);\n}\nproc\ncreateFBIKmenuItems(string $parent,\n\t\t\t\t\tstring $item,\n\t\t\t\t\tstring $ikReachModeLocation,\n\t\t\t\t\tstring $keyBodyPartLocation,\n\t\t\t\t\tstring $keyAllLocation,\n\t\t\t\t\tstring $keySelectedLocation)\n{\n\tstring $reachKeyingMode = \"Reach Mode:\";\n\tint $rkm = `optionVar -q setIKKey`;\n\tswitch ($rkm)\n\t{\n\t\tcase 1:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" IK\";\n"
		+ "\t\t\tbreak;\n\t\tcase 2:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" FK\";\n\t\t\tbreak;\n\t\tcase 3:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" Simple\";\n\t\t\tbreak;\n\t}\t\n\tmenuItem -rp $ikReachModeLocation -label $reachKeyingMode\n\t\t-subMenu true\n\t\t-annotation (uiRes(\"m_dagMenuProc.kDetermineHowAnnot\")) ;\n\t\tmenuItem -rp \"S\" -label (uiRes(\"m_dagMenuProc.kIK\")) \n\t\t\t-command FBIKReachKeyingOptionIK;\n\t\tmenuItem -rp \"N\" -label (uiRes(\"m_dagMenuProc.kFK\")) \n\t\t\t-command FBIKReachKeyingOptionFK;\n\t\tmenuItem -rp \"E\" -label (uiRes(\"m_dagMenuProc.kSimpleNoReach\")) \n\t\t\t-command FBIKReachKeyingOptionSimple;\n\tsetParent -m $parent;\n\t\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kKeyAll\")) \n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"1\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyAllLocation\n\t\tkeyAllItem;\n\t\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kKeyBodyPart\")) \n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"2\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyBodyPartLocation\n\t\tkeyBodyPartItem;\n\t\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kKeySelected\")) \n"
		+ "\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"4\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keySelectedLocation\n\t\tkeySelectedItem;\n}\nproc checkForSkinInfluenceItem(string $item, string $quadrant)\n{\n\tint $isJoint = (nodeType($item) == \"joint\");\n\t\n\t// Check if the current context is the skinPaint context \n\t// and the the joint is connected to a skinCluster\n\t//\n\tstring  $currContext = `currentCtx`;\n\tstring  $currTool    = \"\";\n\tif(`contextInfo -ex $currContext`) {\n\t\t$currTool = `contextInfo -c $currContext`;\n\t}\n\tstring $paintWeights = (uiRes(\"m_dagMenuProc.kPaintWeights\"));\n\tif ( $currTool == \"artAttrSkin\" ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"skinWeights\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"skinCluster\")\n\t\t\t\t{\t\n\t\t\t\t\t// select the surface (not the joint) and set\n\t\t\t\t\t// the joint as the current influence\n\t\t\t\t\t//\n\t\t\t\t\tstring $currSel[] = `ls -sl`;\n\t\t\t\t\tstring $currSelString;\n"
		+ "\t\t\t\t\tif (size($currSel) > 0) {\n\t\t\t\t\t\tstring $currObj;\n\t\t\t\t\t\t$currSelString = \"select -r \";\n\t\t\t\t\t\tfor ($currObj in $currSel) {\n\t\t\t\t\t\t\t$currSelString += ($currObj+\" \");\n\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tmenuItem -label $paintWeights \n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t-c ($currSelString+\"; setSmoothSkinInfluence \" + $item)\n\t\t\t\t\t\t-rp $quadrant\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\t\t// menu for skinCluster paint\n\t// Check if the current context is the clusterPaint context \n\t// and the the joint is connected to a jointCluster\n\t//\n\telse if ( $isJoint && ($currTool == \"artAttr\") ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"general\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"jointCluster\")\n\t\t\t\t{\n\t\t\t\t\tstring $artCommand = \"artAttrCtx\" ;\n\t\t\t\t\tstring $attribute = \"cluster.\" + $conn +  \".weights\" ;\n\t\t\t\t\tmenuItem -label $paintWeights \n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n"
		+ "\t\t\t\t\t\t//-c (\"artAttrCtx -e -pas \\\"cluster.\" + $conn +  \".weights\\\" `currentCtx`\")\n\t\t\t\t\t\t-c (\"artSetToolAndSelectAttr( \\\"\" + $artCommand + \"\\\", \\\"\" + $attribute + \"\\\" )\")\n\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n\t// menu for joint-set paint\n\t// Check if the current context is the setPaint context \n\t// and the the joint is connected to a objectSet via jointCluster\n\t//\n\telse if ( $isJoint && ($currTool == \"artSetPaint\") ) {\n\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\tstring $conn;\n\t\tfor($conn in $connL) {\n\t\t\tif (`nodeType $conn` == \"jointCluster\") {\t\n\t\t\t\tstring $connS[] = `listConnections ($conn+\".message\")`;\n\t\t\t\tfor($set in $connS) {\n\t\t\t\t\tif (`nodeType $set` == \"objectSet\") {\n\t\t\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPaintSetMembership\")) \n\t\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n\t\t\t\t\t\t\t//-c (\"artSetPaintCtx -e -settomodify \" + $set + \" `currentCtx`\")\n\t\t\t\t\t\t\t-c (\"artSetPaintSelectSet( \\\"\" + $set + \"\\\" )\")\n"
		+ "\t\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\t\tbreak;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n}\nglobal proc string[] objectSelectMasks(string $item)\n// Returns the component selection masks that apply to this object\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tswitch ($nt) {\n\t\tcase \"lattice\":\n\t\t\t$maskList[0] = \"latticePoint\";\n\t\t\tbreak;\t\n\t\tcase \"locator\":\n\t\t\t$maskList[0] = \"locator\";\n\t\t\tbreak;\t\n\t\tcase \"nurbsCurve\":\n\t\t\t$maskList[0] = \"curveParameterPoint\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"editPoint\";\n\t\t\t$maskList[3] = \"hull\";\n"
		+ "\t\t\tbreak;\n\t\tcase \"nurbsSurface\":\n\t\t\t$maskList[0] = \"isoparm\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"surfaceParameterPoint\";\n\t\t\t$maskList[3] = \"hull\";\n\t\t\t$maskList[4] = \"surfaceFace\";\n\t\t\t$maskList[5] = \"surfaceUV\"; \n\t\t\tif (objectIsTrimmed($shape)) {\n\t\t\t\t$maskList[6] = \"surfaceEdge\";\n\t\t\t}\n\t\t\tbreak;\n\t\tcase \"mesh\":\n\t\t\t$maskList[0] = \"edge\";\n\t\t\t$maskList[1] = \"vertex\";\n\t\t\t$maskList[2] = \"facet\";\n\t\t\t$maskList[3] = \"puv\";\n\t\t\t$maskList[4] = \"pvf\";\n\t\t\tbreak;\n\t\tcase \"joint\":\n\t\t\t$maskList[0] = \"joint\";\t\t// special case\n\t\t\tbreak;\n\t\tcase \"ikHandle\":\n\t\t\t$maskList[0] = \"ikHandle\";\t// special case\n\t\t\tbreak;\n\t\tcase \"hikEffector\":\n\t\t// fall through\n\t\tcase \"hikFloorContactMarker\":\n\t\t\t$maskList[0] = \"hikEffector\";\t// special case\n\t\t\tbreak;\n\t\tcase \"particle\":\n\t\t\t$maskList[0] = \"particle\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"spring\":\n\t\t\t$maskList[0] = \"springComponent\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"subdiv\":\n \t\t\t$maskList[0] = \"subdivMeshPoint\";\t\n \t\t\t$maskList[1] = \"subdivMeshEdge\";\t\n \t\t\t$maskList[2] = \"subdivMeshFace\";\t\n"
		+ " \t\t\t$maskList[3] = \"subdivMeshUV\";\t\n\t\t\tbreak;\n\t}\n\tif (isIKcontroller($item)) {\n\t\t$maskList[size($maskList)] = \"ikfkHandle\";\n\t}\n\treturn $maskList;\n}\nglobal proc string dagMenuProc_selectionMask_melToUI( string $mel )\n{\n\tstring $result = $mel; \n \n\tswitch ($mel) \n\t{\n\t\tcase \"latticePoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kLatticePoint\"));\n\t\t\tbreak;\n\t\tcase \"locator\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kLocator\"));\n\t\t\tbreak;\t\t \n\t\tcase \"controlVertex\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kControlVertex\"));\n\t\t\tbreak;\n\t\tcase \"editPoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kEditPoint\"));\n\t\t\tbreak;\n\t\tcase \"hull\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kHull\"));\n\t\t\tbreak;\n\t\tcase \"isoparm\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kIsoparm\"));\n\t\t\tbreak;\t \t \n\t\tcase \"subdivMeshEdge\":\n\t\t\t// fall through\n\t\tcase \"edge\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kEdge\"));\n\t\t\tbreak;\n\t\tcase \"subdivMeshPoint\":\n\t\t\t// fall through\n\t\tcase \"vertex\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kVertex\"));\n\t\t\tbreak;\n\t\tcase \"joint\":\t\t\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kJoint\"));\n"
		+ "\t\t\tbreak;\n\t\tcase \"ikHandle\":\t\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kIkHandle\"));\n\t\t\tbreak;\n\t\tcase \"hikEffector\":\t\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kHikEffector\"));\n\t\t\tbreak;\t \n\t\tcase \"ikfkHandle\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kIkfkHandle\"));\n\t\t\tbreak;\n\t\tcase \"surfaceUV\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSurfaceUV\"));\n\t\t\tbreak;\n\t\tcase \"surfaceParameterPoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSurfacePoint\"));\n\t\t\tbreak;\t\n\t\tcase \"curveParameterPoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kCurvePoint\"));\n\t\t\tbreak;\n\t\tcase \"surfaceEdge\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kTrimEdge\"));\n\t\t\tbreak;\n\t\tcase \"surfaceFace\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSurfacePatch\"));\n\t\t\tbreak;\n\t\tcase \"subdivMeshUV\":\n\t\t\t// fall through\n\t\tcase \"puv\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kUV\"));\n\t\t\tbreak;\n\t\tcase \"subdivMeshFace\":\n\t\t\t// fall through\n\t\tcase \"facet\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kFace\"));\n\t\t\tbreak;\t\n\t\tcase \"pvf\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kVertexFace\"));\n\t\t\tbreak;\n\t\tcase \"particle\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kParticle\"));\n"
		+ "\t\t\tbreak;\n\t\tcase \"springComponent\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSpring\"));\n\t\t\tbreak;\t \t \n\t\tdefault:\n\t\t\tuiToMelMsg( \"dagMenuProc_selectionMask_melToUI\", $mel, 1 );\n\t\t\tbreak;\n\t}\n\treturn $result;\t\t \t \n}\nglobal proc createSelectMenuItems(string $parent, string $item)\n// Create a menu that shows the dag parenting for this object\n{\n\tstring $maskList[] = `objectSelectMasks($item)`;\n\tstring $radialPosition[];\n\tstring $uiName;\n\tint $i;\n\tint $isNurbObject     = false;\n\tint $isPolyObject     = false;\n\tint $isLatticeObject  = false;\n\tint $isJointObject    = false;\n\tint $isHikEffector\t  = false;\n\tint $isIkHandleObject = false;\n\tint $isIkFkHandleObject = false;\t\n\tint $isParticleObject = false;\n\tint $isSpringObject   = false;\n\tint $isSubdivObject   = false;\n\tint $isLocatorObject  = false;\n\tint $hasComponents\t  = false;\n\tif (1 <= size($maskList)) {\n\t\t$isLatticeObject = ($maskList[0] == \"latticePoint\");\n\t\t$isJointObject = ($maskList[0] == \"joint\");\n\t\t$isHikEffector = ($maskList[0] == \"hikEffector\");\n\t\t$isIkHandleObject = ($maskList[0] == \"ikHandle\");\n"
		+ "\t\t$isParticleObject = ($maskList[0] == \"particle\");\n\t\t$isSpringObject = ($maskList[0] == \"springComponent\");\n\t\t$isSubdivObject = ($maskList[0] == \"subdivMeshPoint\");\n\t\t$isLocatorObject = ($maskList[0] == \"locator\");\n\t}\n\tif (2 <= size($maskList)) {\n\t\t$isNurbObject = ($maskList[1] == \"controlVertex\");\n\t\t$isPolyObject = ($maskList[1] == \"vertex\");\n\t}\n\t// $maxRadialPos keeps track of how many octants of the\n\t// RMB marking menu will be populated\n\t//\n\tint $maskSize = size($maskList);\n\tint $maxRadialPos = size($maskList);\n\tif (($maskSize > 0) && ($maskList[$maskSize-1] == \"ikfkHandle\")) {\n\t\t$isIkFkHandleObject = true;\n\t\t$maxRadialPos--; // ikfkHandle does not populate like other masks\n\t}\n\t$hasComponents = $isLatticeObject || \n\t\t\t\t\t $isParticleObject ||\n\t\t\t\t\t $isSubdivObject ||\n\t\t\t\t\t $isSpringObject ||\n\t\t\t\t\t $isNurbObject ||\n\t\t\t\t\t $isPolyObject;\n\t// NOTE: \n\t//\t\t\tIf the object has selectable components, then the\n\t//\t\tradial position \"NE\" will be used for the menuItem:  \n\t//\t\t\"Revert back to object mode.\"\n\t//\n\tsetParent -menu $parent;\n"
		+ "\t$radialPosition[0] = \"N\";\n\t$radialPosition[1] = \"W\";\n\t$radialPosition[2] = \"S\";\n\t$radialPosition[3] = \"E\";\n\t$radialPosition[4] = \"SW\";\n\t$radialPosition[5] = \"SE\";\n\t$radialPosition[6] = \"NW\";\n\t$radialPosition[7] = \"NE\";\n    \n    string $disableikHandle = (uiRes(\"m_dagMenuProc.kDisableIkHandle\")); \n    string $enableIkHandle  = (uiRes(\"m_dagMenuProc.kEnableIkHandle\"));\n\tstring $setPreferred\t= (uiRes(\"m_dagMenuProc.kSetPreferredAngle\"));\n\tstring $assumePreferred = (uiRes(\"m_dagMenuProc.kAssumePreferredAngle\")); \n\t\n\tif ($isNurbObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t  \n\t\t\t  $uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\t\t\t  \n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -label $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuNURBComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the nurbs is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"NW\") quadrant\n"
		+ "\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isPolyObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t\t\n\t\t\t\t$uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -label $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the poly is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"NW\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isLatticeObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\t$uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\n\t\t\t\tmenuItem -label $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuLatticeComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t} else if ($isJointObject) {\n\t\tstring $setCmd = `performSetPrefAngle 2`;\n"
		+ "\t\tstring $assumeCmd = `performAssumePrefAngle 2`;\t\t\n\t\t$setCmd += (\" \"+$item);\n\t\t$assumeCmd += (\" \"+$item);\n\t\tstring $jts[] = `ls -sl -type joint`;\n\t\tfor ($jointItem in $jts) {\n\t\t\tif ($jointItem != $item) {\n\t\t\t\t$setCmd += (\" \"+$jointItem);\n\t\t\t\t$assumeCmd += (\" \"+$jointItem);\n\t\t\t}\n\t\t}\n\t\tmenuItem -label $setPreferred \n\t\t\t-echoCommand true\n\t\t\t-c ($setCmd)\n\t\t\t-rp \"N\"\n\t\t\tsetPrefAngleItem;\n\t\t\n\t\tmenuItem -label $assumePreferred \n\t\t\t-echoCommand true\n\t\t\t-c ($assumeCmd)\n\t\t\t-rp \"S\"\n\t\t\tassumePrefAngleItem;\n\t\tstring $hikHandle[] = `listConnections -type hikHandle $item`;\n\t\tint $isFBIKjoint = (size($hikHandle) > 0);\n\t\tif ($isFBIKjoint) {\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t\t\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isHikEffector){\n\t\tif (nodeType($item) == \"hikFloorContactMarker\") {\n\t\t\tstring $parentItems[] = `listRelatives -pa -p $item`;\n"
		+ "\t\t\tif (size($parentItems) &&\n\t\t\t\tnodeType($parentItems[0]) == \"hikEffector\") {\n\t\t\t\t$item = $parentItems[0];\n\t\t\t} else {\n\t\t\t\t$isHikEffector = false;\n\t\t\t}\n\t\t}\n\t\tif ($isHikEffector) {\n\t\t    string $pivotOffsetPlug = $item + \".pivotOffset\";\n\t\t    float $pivotOffset[] = `getAttr $pivotOffsetPlug`;\n\t\t    int $enablePin = (equivalentTol($pivotOffset[0],0.0,0.001) &&\n\t\t                      equivalentTol($pivotOffset[1],0.0,0.001) &&\n\t\t                      equivalentTol($pivotOffset[2],0.0,0.001));\n\t\t    \n\t\t\t// set pinning for hikEffectors\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPinBoth\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"3\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"N\"\n\t\t\t\tpinAllItem;\n\t\t\t\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPinTranslate\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"1\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"NW\"\n\t\t\t\tpinTransItem;\n\t\t\t\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPinRotate\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"2\\\",\\\"\" + $item + \"\\\"};\")\n"
		+ "\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"SW\"\n\t\t\t\tpinRotItem;\n\t\t\t\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kUnpin\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"0\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-rp \"S\"\n\t\t\t\tunpinItem;\n\t\t\t\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t} else if ($isLocatorObject) {\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isIkHandleObject) {\n\t\tstring $selectikHandlesJointsAnnot = (uiRes(\"m_dagMenuProc.kSelectikHandlesAnnot\"));\n\t\tstring $selectikHandlesAnnot = (uiRes(\"m_dagMenuProc.kEnableIKHandlesAnnot\"));\n\t\tmenuItem -label $setPreferred\n\t\t\t-annotation $selectikHandlesJointsAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (`performSetPrefAngle 2` + \" \" + $item)\n\t\t\t-rp \"W\"\n\t\t\tsetPrefAngleItem;\n\t\tmenuItem -label $assumePreferred \n\t\t\t-annotation $selectikHandlesJointsAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (`performAssumePrefAngle 2` + \" \" + $item)\n"
		+ "\t\t\t-rp \"E\"\n\t\t\tassumePrefAngleItem;\n\t\tmenuItem -label $enableIkHandle \n\t\t\t-annotation $selectikHandlesAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -eh \" + $item)\n\t\t\t-rp \"N\"\n\t\t\tenableIKHandlesItem;\n\t\tmenuItem -label $disableikHandle \n\t\t\t-annotation $selectikHandlesAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -dh \" + $item)\n\t\t\t-rp \"S\"\n\t\t\tdisableIKHandlesItem;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kEnableSnap\")) \n\t\t\t-annotation $selectikHandlesAnnot\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -see \" + $item + \";\" +\n\t\t\t\t\"ikHandle -e -shf on \" + $item)\n\t\t\t-rp \"SE\"\n\t\t\tenableIKHandlesSnapItem;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kDisableSnap\")) \n\t\t\t-annotation $selectikHandlesAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -shf off \" + $item)\n\t\t\t-rp \"SW\"\n\t\t\tdisableIKHandlesSnapItem;\n\t\t$maxRadialPos = 6;\n\t} else if ($isParticleObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t   \n\t\t\t   $uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\t\t\t   \t\t\t\n\t\t\tmenuItem -label $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuParticleComponentSelection(\\\"\" +\n"
		+ "\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} else if ($isSpringObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t   \n\t\t\t   $uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\t\t\t\n\t\t\tmenuItem -label $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuSpringComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} else if ($isSubdivObject) {\n\t\tsubdDagMenuProc( 0, $item, $maskList );\n\t} else {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] == \"ikfkHandle\") {\n\t\t\t\tcontinue;\n\t\t\t}\n\t\t\t\n\t\t\t$uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\n\t\t\tmenuItem -label $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} \n\t// If components are present, provide the ability to \n\t// get back to object mode...\n\t//\n\tif ($hasComponents) {\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kObjectMode\")) \n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"hilite -unHilite \" + $item + \"; string $selection[] = `ls -sl`;\"\n"
		+ "\t\t\t\t\t+ \"changeSelectMode -object; select -r $selection;\" )\n\t\t\t\t-rp \"NE\";\n\t}\n\t// Since any object can be an ikfk handle, we only populate the ikfk items\n\t// in slots that are not already in use.\n\t//\n\tif ($isIkFkHandleObject) {\n\t\tstring $handle = getControlledHandle($item);\n\t\tif ($maxRadialPos < 8) {\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kSetIKFKKey\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kSetKeysAnnot\")) \n\t\t\t\t-rp $radialPosition[7]\n\t\t\t\t-command (\"select -r \"+$item+\"; SetIKFKKeyframe\");\n\t\t}\n\t\tif ($maxRadialPos < 7) {\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kMoveIKToFK\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kSelectAnIKHandleOrIKFKAnnot\")) \n\t\t\t\t-rp $radialPosition[6]\n\t\t\t\t-command (\"select -r \"+$item+\"; MoveIKtoFK\");\n\t\t}\n\t\tif ($maxRadialPos < 5) {\n\t\t\tmenuItem -label $disableikHandle \n\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kDisableIKHandleAnnot\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -dh \" + $handle)\n\t\t\t\t-rp $radialPosition[5];\n\t\t\tmenuItem -label $enableIkHandle \n"
		+ "\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kEnableIKHandleAnnot\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -eh \" + $handle)\n\t\t\t\t-rp $radialPosition[4];\n\t\t}\n\t}\n\tsetParent -menu $parent;\n}\nglobal proc doMenuNURBComponentSelection(string $item, string $mask)\n//\n// Change the selection/display state to allow selection of NURB components\n//\n{\n\tstring $selectCmd;\n\tstring $warn = (uiRes(\"m_dagMenuProc.kEditUVModeWarn\"));\n\t\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t// UVs are not selectable. So issue a warning.\n\t\t//\n\t\tif( $mask == \"surfaceUV\" )\n\t\t{\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t\twarning(`format -s $item $warn`);\n\t\t\t}\n\t\t}\n\t} else {\n\t\tselectType -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -isoparm 2;\";\n"
		+ "\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"surfaceUV\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -uv \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\"; \n\t\t\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t\t\t//\n\t\t\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\t\t\tif( !$isExplicit[0] )\n\t\t\t\t\t{\n\t\t\t\t\t\twarning(`format -s $item $warn`);\n\t\t\t\t\t}\n\t\t\t\t\tbreak; \n\t\t\t\tcase \"editPoint\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n"
		+ "\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"controlVertex\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"hull\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item + \";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n"
		+ "\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t//\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t    warning(`format -s $item $warn`);\n\t\t\t}\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuLatticeComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n// selection of the Lattice control points\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"toggle -\" + $mask + \";\"; \n"
		+ "\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuParticleComponentSelection(string $item, string $mask)\n//\n// Change the selection/display state to allow selection of particle\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -particle 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"particle\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -particle \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuSpringComponentSelection(string $item, string $mask)\n"
		+ "//\n// Change the selection/display state to allow selection of spring\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -springComponent 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"springComponent\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -springComponent \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n"
		+ "// selection of the specified selection mask type.\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc undoMenuComponentSelection(string $item, string $mask)\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" false;\";\n\t} else {\n\t\t$selectCmd = \"selectType -\" + $mask + \" false;\";\n\t}\n\teval $selectCmd;\n}\nglobal proc toggleBoundingBoxDisplay ( string $parent )\n//\n// For each shape under the selected parent object, toggle the\n// state of bounding box display mode.\n//\n{\n\tstring $shapes[] = `listRelatives -shapes $parent`;\n\tstring $shape;\n\tfor ( $shape in $shapes ) {\n\t\tint $overrideOn = `getAttr ( $shape + \".overrideEnabled\")`;\n\t\tint $lodMode =    `getAttr ( $shape + \".overrideLevelOfDetail\")`;\n"
		+ "\t\tint $enabled =     $overrideOn && $lodMode == 1;\n\t\tif ( $enabled ) {\n\t\t\t// Don't reset the overrideEnabled attribute. It\n\t\t\t// is used for more than just bounding box display\n\t\t\t// and turning if off will mess things up of you\n\t\t\t// have temporarily enabled bounding box display \n\t\t\t// of an object in a layer.\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\" ) 0;\n\t\t} else {\n\t\t\tsetAttr ( $shape + \".overrideEnabled\") 1;\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\") 1;\n\t\t}\n\t}\n}\nglobal proc createActionsMenuItems(string $parent, string $item)\n//\n// Creates a menu with common operations to perform on an object\n//\n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kTemplate\"))  -c (\"toggle -template -state on \" + $item);\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kUntemplate\"))  -c (\"toggle -template -state off \" + $item);\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kUnparent\"))  -c (\"parent -w \" + $item);\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kBoundingBox\"))  -c (\"toggleBoundingBoxDisplay \" + $item);\n"
		+ "}\nglobal proc showSG(string $item)\n{\n\t//check selection list for faces (polys, subds, nurbs)\n\tstring $shader = \"\";\n\tstring $selection[] = `filterExpand -sm 34 -sm 38 -sm 72`;\n\t// If there are components selected, try to find a component shader\n\tif( size( $selection ) > 0)\n\t{\n\t\tstring $nameBuffer[];\n\t\tint $numComps = size( $selection );\n\t\tint $comp;\n\t\tfor( $comp = 0; $comp < $numComps; $comp++)\n\t\t{\n\t\t\ttokenize $selection[ $comp] \".\" $nameBuffer;\n\t\t\t//if the selected component is on the object under the pointer\n\t\t\t//get it's shader\n\t\t\tif ($nameBuffer[0] == $item) {\n\t\t\t\t$shader = `getComponentShader $selection[$comp]`;\n\t\t\t\t//check if the shader is already selected - only toggle\n\t\t\t\t//selection if it is not selected\n\t\t\t\tstring $shaderSelected[] = `ls -selection $shader`;\n\t\t\t\tif ( size( $shaderSelected ) == 0){\n\t\t\t\t\tselect -tgl $shader;\n\t\t\t\t\n\t\t\t\t}\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we didn't find a component level shader, try for an object level one\n\tif( size( $shader ) == 0 ) {\n\t\tstring $allNodes[] = (`listHistory -f true $item` );\n"
		+ "\t\tstring $node = \"\";\n\t\tfor ($node in $allNodes) {\n\t\t\tif(`nodeType $node` == \"shadingEngine\") {\n\t\t\t\t$shader = $node;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we found a shader, show it\n\tif( size( $shader ) > 0) \n\t{\n\t\tshowEditor $shader;\n\t}\n}\n\t\nglobal proc showBakeSets(string $item, string $type)\n{\n\tstring $possibleBakeSets[] = (`listHistory -f true $item` );\n\tstring $node = \"\";\n    int $bakeSetExists = false;\n\tfor ($node in $possibleBakeSets) {\n\t\tif(`nodeType $node` == $type)\n        {\n\t\t\tshowEditor $node;\n            $bakeSetExists = true;\n\t\t\tbreak;\n\t\t}\n\t}\n    // If no bake set exists for the $item, then create the\n    // initial bake set of that $type and assign it to the $item.\n    //\n    if (!$bakeSetExists)\n    {\n        string $initialBakeSet = \"\";\n\t\tif($type == \"vertexBakeSet\") \n        {\n            $initialBakeSet = \"initialVertexBakeSet\";\n        }\n        else if($type == \"textureBakeSet\") \n        {\n            $initialBakeSet = \"initialTextureBakeSet\";\n\t\t}\n        else\n        {\n            string $errorMsg = (uiRes(\"m_dagMenuProc.kBakeSetError\"));\n"
		+ "            error   -showLineNumber true\n                (`format -s $type $errorMsg`);\n            return;\n        }\n        // Create it if it does not exist yet.\n        //\n        if  ( size(`ls $initialBakeSet`) < 1)\n        {\n            createBakeSet($initialBakeSet, $type);\n        } \n    \n        // Assign the initial bake set to the item.\n        //\n        assignBakeSet($initialBakeSet, $item);\n        // Show the initial bake set.\n        //\n        showBakeSetAE($initialBakeSet);\n    }\n}\n// Description:  This procedure is called to refresh the baking \n//  attribute menu items.\n//\nglobal proc refreshBakingAttributeMenu (string $parent, string $item)\n{\n    setParent -menu $parent;\n    int $suitable = bakeSetTypeSuitableForItem(\"textureBakeSet\", $item);\n    menuItem -edit -enable $suitable textureBakingAttributeItem;\n    $suitable = bakeSetTypeSuitableForItem(\"vertexBakeSet\", $item);\n    menuItem -edit -enable $suitable vertexBakingAttributeItem;\n}\n// Description:  This procedure is called to create the \n"
		+ "//  baking attribute menu.\n//\nproc createBakingAttributeMenu(string $parent, string $item)\n{\n    setParent -menu $parent;\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kEditAttributes\"))  \n        -subMenu true\n        -tearOff true\n        -postMenuCommand (\"refreshBakingAttributeMenu \\\"\"\n                            +$parent+\"|editAttributeItem\\\" \\\"\"\n                            +$item+\"\\\"\")\n        editAttributeItem; \n        menuItem -label (uiRes(\"m_dagMenuProc.kTexture\"))  \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"textureBakeSet\\\"\") \n            textureBakingAttributeItem;\n        menuItem -label (uiRes(\"m_dagMenuProc.kVertexMenuLabel\"))  \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"vertexBakeSet\\\"\") \n            vertexBakingAttributeItem;\n    setParent -menu ..;\n}\n// Description:  This procedure is called to create the baking\n//  menu items.\n//\nglobal proc createBakingMenuItems(string $parent, string $item)\n//\n//\tCreate the Baking menus for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n"
		+ "    createBakingAttributeMenu($parent, $item);\n\tmenuItem -d true;\n\tif (!`about -evalVersion`) {\n\t\tbuildBakingMenus($item);\n\t}\n}\n// Description:  This procedure is called to create the switch proxy\n//  menu items.\n//\nglobal proc createSwitchProxyMenuItems(string $parent, string $item, string $refNode)\n//\n//\tCreate the switch proxy submenu for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\tint $i;\n\tstring $proxyLabel;\n\tstring $proxyTag;\n\tfor( $i=0; $i<size($proxyNodes); $i+=1) {\n\t\t$proxyTag = `getAttr ($proxyNodes[$i] + \".proxyTag\")`;\n\t\t\n\t\tmenuItem -label $proxyTag -c (\"proxySwitch \" + $proxyNodes[$i]);\n\t}\n}\nglobal proc createHistoryMenuItems(string $parent, string $item)\n{\n\t//\n\t// Delete all menu entries currently in the popup\n\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, false, 1 );\n}\nglobal proc createFutureMenuItems(string $parent, string $item)\n{\n\t//\n\t// Delete all menu entries currently in the popup\n"
		+ "\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, true, 1 );\n}\nglobal proc string objectHandlesUvSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createUVsetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyUVSet -currentUVSet -uvSet \";\n\tstring $curSet[] = `polyUVSet -q -currentUVSet $shape`;\n\tstring $names[] = `polyUVSet -q -auv $shape`;\n"
		+ "\tstring $allProjects[] = `polyUVSet -pr -q $shape`;\n\tstring $setClearCmd = \"\";\n\tif (size($allProjects))\n\t{\n\t\t$setClearCmd = \"select -d \";\t\t\n\t\tfor ($p=0; $p<size($allProjects); $p++)\n\t\t\t$setClearCmd += (\" \" + $allProjects[$p]);\n\t\t$setClearCmd += \";\";\n\t}\n\tint $numNames = size($names);\n\t// Add in a menu to do uv-linking\n\tif ($numNames > 0)\n\t{\t\n\t\tstring $ann = `getRunTimeCommandAnnotation \"UVCentricUVLinkingEditor\"`;\n\t\tstring $cmd = \"UVCentricUVLinkingEditor; \" + \"select -r \" + $item;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kUVLinking\")) \n\t\t\t-c $cmd\n\t\t\t-annotation $ann;\n\t\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i<$numNames; $i++)\n\t{\n\t\tstring $uvEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $uvname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $uvEditname + \" \" + $shape + \";\";\n\t\t// Find any projections associated with the uvset\n\t\tstring $projs[];\n\t\t$projs = `polyUVSet -pr -uvs $uvname -q $shape`;\n\t\tstring $projCmd;\n\t\t// Add a divider between items\n\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($uvname == $curSet[0])\n"
		+ "\t\t{\n\t\t\tmenuItem -label ($uvname) -c $setClearCmd -checkBox true;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -label $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -label ($uvname) -c ($setClearCmd + $setCurCmd) -checkBox false;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setCurCmd + $setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -label $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n}\n//\nglobal proc string objectHandlesColorSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n"
		+ "\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createColorSetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyColorSet -currentColorSet -colorSet \";\n\tstring $curSet[] = `polyColorSet -q -currentColorSet $shape`;\n\tstring $names[] = `polyColorSet -q -acs $shape`;\n\tint $numNames = size($names);\n\t// Add in a menu to access color set editor\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kColorSetEditor\")) \n\t\t-ann (getRunTimeCommandAnnotation(\"ColorSetEditor\"))\n\t\t-command \"colorSetEditor\"\n\t\t;\n\tif ($numNames > 0)\n\t{\t\n\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i < $numNames; $i++)\n\t{\n\t\tstring $colorEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $colorname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $colorEditname + \" \" + $shape + \";\";\n\t\t// Add a divider between items\n"
		+ "\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($colorname == $curSet[0])\n\t\t{\n\t\t\tmenuItem -label ($colorname) -checkBox true;\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -label ($colorname) -c ($setCurCmd) -checkBox false;\n\t\t}\n\t}\n}\nglobal proc createArtAttrMenuItems(\n\tstring \t\t$parent, \n\tstring \t\t$item\n)\n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\t\n\t// add default items which are always displayed in the context menu\n\tmenuItem -p $parent -label (uiRes(\"m_dagMenuProc.kPaintSelect\"))  -command \"ArtPaintSelectToolOptions\" ;\n\tmenuItem -p $parent -label (uiRes(\"m_dagMenuProc.kThreeDPaint\"))  -command \"Art3dPaintToolOptions\" ;\n\tmenuItem -p $parent -label (uiRes(\"m_dagMenuProc.kSculpt\"))  -command \"SculptGeometryToolOptions\" ;\n\t// Get all paintable attributes\n\tstring $paintAttr = `artBuildPaintMenu $item`;\n\tstring $paint = (uiRes(\"m_dagMenuProc.kPaint\"));\n\t\n\tif ($paintAttr != \"\")\n\t{\n\t\t// if the menu item has not been created, create it.\n\t\tif( $parent == \"\" )\n\t\t\t$parent = `menuItem -subMenu true -aob true -label $paint `;\n"
		+ "\t\t\t\n\t\n\t\t// create special purpose painting menu items for objects\n\t\t// such as cloth\n\t\t//\n\t\tstring $excludeNodes[] = createPaintingMenuItems( $parent, $item );\n\t\t// Create the menu.\n\t\tartAttrCreateMenuItems( $parent, $paintAttr, $excludeNodes );\n\t\t\n\t}\n}\n// This has been called because a menu press happened on a DAG object\n// So find the Object submenu and add the DAG specific items to it.\n//\nglobal proc dagMenuProc(string $parent, string $object)\n{\n\tglobal string $artSelectObject ;\n\tstring $mode = \"\";\n\tif (`optionVar -exists currentMenuBarTab`) {\n\t\t$mode = `optionVar -q currentMenuBarTab`;\n\t} else {\n\t\toptionVar -sv currentMenuBarTab $mode;\n\t}\n\tif (`popupMenu -e -exists $parent`) {\n\t\tsetParent -m $parent;\n\t\t// label the object\n\t\tstring $shortName = `substitute \".*|\" $object \"\"`;\n\t\tmenuItem -label ($shortName + \"...\") -c (\"showEditor \"+$object);\n\t\tmenuItem -divider true;\n\t\tmenuItem -divider true;\n\t\t// Create the list of selection masks\n\t\tcreateSelectMenuItems($parent, $object);\n\t\tmenuItem -d true;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kSelect\"))  -c (\"select -r \" + $object);\n"
		+ "\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kSelectHierarchy\"))  -c (\"select -hierarchy \" + $object);\n    \tmenuItem -d true;\n\tif( (objExists(($object+\".Parent\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n\t\t\t\twhile(`objExists( ($object+\".Parent_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Parent_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Parent to: \"+$parent) -c (\"JTDdynParentSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tmenuItem -d true;\n\t\tif( (objExists(($object+\".Follow\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n"
		+ "\t\t\t\twhile(`objExists( ($object+\".Follow_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Follow_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Follow: \"+$parent) -c (\"JTDfollowSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".IKFK\") ))\n\t\t{\n\t\t\t\tstring $JTDupSW[] = `listConnections ($object+\".SWup\")`;\n\t\t\t\tstring $JTDmidSW[] = `listConnections ($object+\".SWmid\")`;\n\t\t\t\tstring $JTDupFK[] = `listConnections ($object+\".FKup\")`;\n\t\t\t\tstring $JTDmidFK[] = `listConnections ($object+\".FKmid\")`;\n\t\t\t\tstring $JTDlowFK[] = `listConnections ($object+\".FKlow\")`;\n\t\t\t\tstring $JTDupIK[] = `listConnections ($object+\".IKup\")`;\n\t\t\t\tstring $JTDmidIK[] = `listConnections ($object+\".IKmid\")`;\n\t\t\t\tstring $JTDIKpos[] = `listConnections ($object+\".IKpos\")`;\n"
		+ "\t\t\t\tstring $JTDIKcntrl[] = `listConnections ($object+\".IKcntrl\")`;\n\t\t\t\tstring $JTDPV[] = `listConnections ($object+\".PV\")`;\n\t\t\t\tstring $JTDPVpos[] = `listConnections ($object+\".PVsnapPos\")`;\n\t\t\t\tif( `getAttr($object+\".IKFK\")` == 0 ) menuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\telse if( `getAttr($object+\".IKFK\")` == 1 ) menuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n\t\t\t\telse \n\t\t\t\t{\n\t\t\t\t\t\tmenuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\t\t\tmenuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n"
		+ "\t\t\t\t}\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".js_pivotObj\") ) )\n\t\t{\n\t\t\tmenuItem -l \"Select Moveable Pivot\" -c (\"js_pivot_createMov (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Apply & Key Moved Pivot\" -c (\"js_pivot_snap (\\\"\"+$object+\"\\\", 1)\");\n\t\t\tstring $menu = `menuItem -subMenu true -aob true -l \"Pivot Options\"`;\n\t\t\tmenuItem -l \"Toggle Moveable Pivot Locator\" -c (\"js_pivot_mov_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Toggle Actual Pivot Locator\" -c (\"js_pivot_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Reset Pivot\" -c (\"jd_pivot_reset (\\\"\"+$object+\"\\\")\");\n\t\t\tsetParent -m $parent;\n\t\t\tmenuItem -d true;\n\t\t}\n\t\t\n\t\toptionalDagMenuProc( $parent, $object );\n\t\tstring $menu = `menuItem -subMenu true -aob true -label (uiRes(\"m_dagMenuProc.kInputs\")) `;\n\t\tmenu -e \n\t\t\t-pmc ( \"createHistoryMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n\t\t$menu = `menuItem -subMenu true -aob true -label (uiRes(\"m_dagMenuProc.kOutputs\")) `;\n\t\tmenu -e -pmc ( \"createFutureMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n"
		+ "\t \t// Look at the shape child of this object\n\t \t//\n \t\tstring $shapes[] = `listRelatives -path -s $object`;\n\t\t// get current selection of shapes\n\t\tstring $currentSel[] = `ls -sl -dagObjects -shapes` ;\n\t\tstring $paintParent = \"\" ;\n\t\tint $selIndex  ;\n \t\tint $i;\n \t\tfor ($i = 0; $i < size($shapes); ++$i) \n\t\t{\n\t\t\tstring $nodeType = `nodeType $shapes[$i]` ;\n\t\t\tif ( ( $nodeType == \"nurbsSurface\") ||\n\t\t\t\t ( $nodeType == \"mesh\") ||\n\t\t\t\t ( $nodeType == \"subdiv\")) \n\t\t\t{\n\t\t\t\t// save the object name if it is not already selected by the user\n\t\t\t\t// We use this info to select the object if user chooses a paint option\n\t\t\t\t//\n\t\t\t\t// If user has selected multiple objects and is using context menu on one of them\n\t\t\t\t// we do not change the selection list as user may want to paint some attribute \n\t\t\t\t// on all of them. (It is the way it has been working all along...we don't want to \n\t\t\t\t// break it )\n\t\t\t\t\n\t\t\t\tint $found = 0 ;\n\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t{\n\t\t\t\t\tif( $shapes[$i] == $currentSel[ $selIndex  ] )\n"
		+ "\t\t\t\t\t{\n\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\tbreak ;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\tif( $found )\n\t\t\t\t{\n\t\t\t\t\t$artSelectObject = \"\" ;\n\t\t\t\t}\n\t\t\t\telse\n\t\t\t\t{\n\t\t\t\t\t// check if the object is in component selection mode\n\t\t\t\t\t// and if it is, do not do any further selection.\n\t\t\t\t\t// We are assuming that if the object is in hilite mode\n\t\t\t\t\t// then the user is in component selection mode.\n\t\t\t\t\t\n\t\t\t\t\t$currentSel = `ls -hilite` ;\n\t\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t\t{\n\t\t\t\t\t\tif( $object == $currentSel[ $selIndex  ] )\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\t\tbreak ;\n\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tif( !$found ) \n\t\t\t\t\t\t$artSelectObject = $object ;\n\t\t\t\t\telse\n\t\t\t\t\t\t$artSelectObject = \"\" ;\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\t$paintParent = `menuItem -subMenu true -aob true -label (uiRes(\"m_dagMenuProc.kPaintSubmenu\")) `;\n\t\t\t\tmenu -e\t-pmc ( \"createArtAttrMenuItems \\\"\"+ $paintParent +\"\\\" \"+$object ) $paintParent ;\n\t\t\t\tsetParent -m $parent;\n\t\t\t\tbreak ;\n\t\t\t}\n\t\t}\n\t    $menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kActions\")) `;\n\t\tmenu -e -pmc ( \"createActionsMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n"
		+ "\t\tsetParent -m $parent;\n\t\t// If the object can handle uv sets then add the uvset menu\n\t\t//\n\t\tstring $shape = objectHandlesUvSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kUVSets\")) `;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createUVsetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+ $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\tstring $shape = objectHandlesColorSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kColorSets\")) `;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createColorSetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+ $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\t// Shader menu to be able to quickly assign existing shaders\n\t\t// to the object under the pointer.\n\t\t//\n    \tmenuItem -d true;\n \t\tmenuItem -label (uiRes(\"m_dagMenuProc.kMaterialAttributes\")) -c (\"showSG \"+$object);\n    \t\n    \tmenuItem -d true;\n        \n        buildShaderMenus($object);\n        \n        menuItem -d true;\n        menuItem -divider true;\n        string $removeOverrideMenuItem = `menuItem \n"
		+ "\t\t\t-label (uiRes(\"m_dagMenuProc.kRemoveMaterialOverride\"))\n            -subMenu true`;\n        menuItem -edit -postMenuCommand\n            (\"buildMaterialRemoveOverrideMenu -surface \"+$object+\" \"+$removeOverrideMenuItem)\n            $removeOverrideMenuItem;\n        setParent -m ..;\n\t\tint $mentalIsLoaded = 0;\n\t\tstring $renderer;\n\t    for ($renderer in `renderer -query -namesOfAvailableRenderers`) {\n\t\t\tif( $renderer == \"mentalRay\" ) {\n\t\t\t\t$mentalIsLoaded = 1;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\tif ($mentalIsLoaded) {\n \t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kBaking\")) `;\n \t\t\tmenu -e\n\t\t\t\t-pmc ( \"createBakingMenuItems \\\"\"+$menu+\"\\\" \"+$object )\n\t\t\t\t$menu;\n \t\t\tsetParent -m $parent;\n\t\t}\n\t\tif ($mode == \"dynamicsMenuSet\") {\n\t\t\tmenuItem -d true;\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kConnectField\"))  -c (\"connectDynamic -f \" + $object);\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kConnectEmitter\"))  -c (\"connectDynamic -em \" + $object);\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kConnectCollision\"))  -c (\"connectDynamic -c \" + $object);\n"
		+ "\t\t}\n\t\t// is there a reference associated with the object ?\n\t\t// and if so, is it in a loaded or unloaded state?\n\t\tstring $refNode = `getRelatedReference $object`;\n\t\tif( size($refNode) > 0) {\n\t\t\tmenuItem -d true;\n\t\t\tif( `file -rfn $refNode -q -dr` ) {\n\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kLoadRelatedReference\"))  -c (\"loadRelatedReference \" + $object);\n\t\t\t} else {\n\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kReloadRelatedReference\"))  -c (\"loadRelatedReference \" + $object);\n\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kUnloadRelatedReference\"))  -c (\"unloadRelatedReference \" + $object);\n\t\t\t}\n\t\t\t// Is this reference a proxy? If so, add proxy switch submenu\n\t\t\t//\n\t\t\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\t\t\tif(size($proxyNodes) > 0) {\n\t\t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kReloadProxy\")) `;\n\t\t\t\tmenu -e\n\t\t\t\t\t-pmc ( \"createSwitchProxyMenuItems \\\"\"+$menu+\"\\\" \"+$object + \" \" + $refNode )\n\t\t\t\t\t$menu;\n\t\t\t\tsetParent -m $parent;\n\t\t\t}\n\t\t}\n\t\tsetParent -m $parent;\n\t} else {\n\t\tstring $warn = (uiRes(\"m_dagMenuProc.kMenuWarn\"));\n"
		+ "\t\twarning(`format -s $parent $warn`);\n\t}\n}\n");
	setAttr ".st" 1;
createNode script -n "pivotScripts";
	setAttr ".b" -type "string" (
		"//These scripts based on Jason Schliefer's jspivot.mel  All props go to him.  Please support him by visiting his website at www.jonhandhisdog.com\nglobal proc js_pivot_createMov (string $control)\n{\n    // this proc will toggle the visibility of the mov pivot on, and then select it.  That way the animator can grab it and move\n    // it to the right place.\n\tfloat $t[];\n\tstring $truePiv;\n        $pivot = `js_pivot_get $control \"js_pivotMovObj\"`;\n        if ($pivot != \"\")\n        {\n            showHidden $pivot;\n            $truePiv = `js_pivot_get $pivot \"js_pivotObj\"`;\n            $t = `getAttr ($truePiv + \".t\")`;\n            setAttr ($pivot + \".t\") $t[0] $t[1] $t[2];\n        }\n\tselect $pivot;\n\tsetToolTo moveSuperContext;\n}\nglobal proc js_pivot_snap (string $control, int $keyOption)\n{\n    // Based on the selected object, this procedure will snap the object to the position of the new pivot.\n        string $object;\n        string $pivot;\n        string $pivotMov;\n        $object = `js_pivot_getObj $control`;\n        $pivot  = `js_pivot_get $control \"js_pivotObj\"`;\n"
		+ "        $pivotMov  = `js_pivot_get $control \"js_pivotMovObj\"`;\n        if (($object == \"\") || ($pivot == \"\") || ($pivotMov == \"\"))\n        {\n            error ($control + \" was not set up to handle pivot modification.\\n\");\n        }\n        // first, save a keyframe at the previous frame for the object, and the pivot\n \t$frame = `currentTime -q`;\n\tif($keyOption == 1)\n\t{ \n\t        print (\"Saving a key for \" + $object + \" and \" + $pivot + \" at frame \" + ($frame-1) + \"\\n\");\n       \t setKeyframe -t ($frame-1) -itt \"linear\" -ott \"linear\" $pivot; \n\t        setKeyframe -t ($frame-1) $object;\n\t}\n        // now get the local translation of pivotMov\n        $trans = `getAttr ($pivotMov + \".t\")`;\n        // get the world position\n        $world = `xform -q -ws -rp $pivotMov`;\n        // set the position of old pivot to be the same as the new pivot\n        setAttr ($pivot + \".t\") $trans[0] $trans[1] $trans[2];\n        // now move the object\n        move -rpr $world[0] $world[1] $world[2] ($object);\n        // now save a keyframe\n"
		+ "\tif($keyOption == 1)\n\t{\n        \tsetKeyframe -t ($frame) -itt \"linear\" -ott \"linear\" $pivot; \n\t        setKeyframe -t ($frame) $object;\n\t}\n\t setAttr ($pivotMov+\".v\") 0;\n        select $object;\n}\nglobal proc string js_pivot_get (string $object, string $type)\n{\n    string $return;\n    string $tmp[0];\n    // we're going to grab the object's pivot, or the pivot move object.  If $type is \"js_pivotObj\", we'll\n    // grab the pivot.  If it's \"js_pivotMovObj\", we'll return the move pivot.\n    //\n   \n    // get the object\n    $object = `js_pivot_getObj $object`;\n    if ($object != \"\")\n    {\n        if (`attributeQuery -exists -node $object $type`)\n        {\n            // yep, this object has a pivot.  Let's get it\n            $tmp = `listConnections -type transform ($object + \".\" + $type)`;\n            $return = $tmp[0];\n        }\n    }\n    return $return;\n}\nglobal proc string js_pivot_getObj (string $sel)\n{\n    // based on the selected item, return the object\n    string $return;\n    \n    if (`attributeQuery -exists -node $sel \"js_pivotObj\"`)\n"
		+ "    {\n        $return = $sel;\n    }\n    else\n    {\n        // okay, we probably have one of the pivots selected..\n        if ((`attributeQuery -exists -node $sel \"js_pivot\"`) || (`attributeQuery -exists -node $sel \"js_pivotMov\"`))\n        {\n            $tmp = `listConnections -p true -d true ($sel + \".message\")`;\n            string $item;\n            for ($item in $tmp)\n            {\n                // check each one and see if what's connected contains \"js_pivotObj\"\n                if (`gmatch $item \"*js_pivot*\"`)\n                {\n                    // okay, we've got a pivot selected, and we know that the item that we've just found will\n                    // have the connection to the object we want.\n                    // let's get rid of the attribute\n                    string $break[0];\n                    tokenize ($item, \".\", $break);\n                    $return = $break[0];\n                }\n            }\n            \n        }\n    }\n    return $return;\n}\nglobal proc js_pivot_toggle (string $control)\n"
		+ "{\n        $pivot = `js_pivot_get $control \"js_pivotObj\"`; \n        $onOff = (!`getAttr ($pivot + \".v\")`); \n\t setAttr ($pivot + \".v\") $onOff;\n\t if($onOff == 1) select $pivot;\n\t else select $control;\n}\nglobal proc js_pivot_mov_toggle (string $control)\n{\n        $pivot = `js_pivot_get $control \"js_pivotMovObj\"`; \n        $onOff = (!`getAttr ($pivot + \".v\")`); \n        setAttr ($pivot + \".v\") $onOff;\n\t if($onOff == 1) select $pivot;\n\t else select $control;\n}\nglobal proc jd_pivot_reset (string $control)\n{\n       $pivot = `js_pivot_get $control \"js_pivotMovObj\"`; \n\tif(objExists(($pivot+\".pivotX\")) ) setAttr ($pivot+\".tx\") `getAttr ($pivot+\".pivotX\")`;\n\tif(objExists(($pivot+\".pivotY\")) ) setAttr ($pivot+\".ty\") `getAttr ($pivot+\".pivotY\")`;\n\tif(objExists(($pivot+\".pivotZ\")) ) setAttr ($pivot+\".tz\") `getAttr ($pivot+\".pivotZ\")`;\n\tjs_pivot_snap($control, 0);\n}\nglobal proc string[] js_pivot_create ()\n{\n    // This procedure will create a pivot control on the currently selected objects.\n    // it will actually create 2 pivots.. one which is hooked up to the pivot, and the other\n"
		+ "    // which can be used to toggle the re-position of the pivot.\n    //\n    // get the selected objects that the user has picked in the 3dView\n    string $objs[0];\n    string $pivotObjects[0];\n    int $pivotCount = 0;\n    $objs = `ls -sl`;\n    // for each item selected, we will check and see if a pivot is connected.\n    // if there isn't one, then we'll create one.  If there is, then we will \n    // go on to the next object\n    for ($obj in $objs)\n    {\n        string $pivotObj;\n        $pivotObj = `js_pivot_get $obj \"js_pivotObj\"`;\n        if ($pivotObj == \"\")\n        {\n            // time to create a new pivot\n            // create a locator\n            string $locator[0];\n            $locator = `spaceLocator`;\n            $locator[0] = `rename $locator[0] ($obj + \"_pivot_anim\")`;\n            // get the position of the object\n            $pos = `xform -q -ws -rp $obj`;\n            // set the position of the locator\n            move -a -ws $pos[0] $pos[1] $pos[2] $locator[0];\n            // parent the locator under the $object\n"
		+ "            parent $locator[0] $obj;\n            // set the locator's rotation to 0\n            setAttr ($locator[0] + \".r\") 0 0 0;\n\t\t//makeIdentity -apply true -t 1 -r 0 -s 0 -n 0 $locator[0];\n            // create a new locator which will be used as the second pivot\n            $dup = `duplicate $locator[0]`;\n            $dupLoc = `rename $dup[0] ($obj + \"_pivot_mov\")`;\n            // scale the duplicated locator a bit smaller\n            scale .8 .8 .8 $dupLoc;\n            // connect the locator's translation to the objects rotatePivot\n            connectAttr -f ($locator[0] + \".t\") ($obj + \".rotatePivot\");\n            // set the locator's scale and rotate attributes locked and unkeyable\n            $attrs = {\"rx\", \"ry\", \"rz\", \"sx\", \"sy\", \"sz\"};\n            for ($at in $attrs)\n            {\n                setAttr -l 1 -k 0 ($locator[0] + \".\" + $at);\n                setAttr -l 1 -k 0 ($dupLoc + \".\" + $at);\n            }\n            // set the visibility unkeyable, but not locked\n            setAttr -k 0 ($locator[0] + \".v\");\n"
		+ "            setAttr -k 0 ($dupLoc + \".v\");\n        \n            hide $dupLoc;\n            // add an attribute called \"js_pivot\";\n            addAttr -ln \"js_pivot\" -at \"message\" $locator[0];\n            addAttr -ln \"js_pivotMov\" -at \"message\" $dupLoc;\n            addAttr -ln \"js_pivotObj\" -at \"message\" $obj;\n            addAttr -ln \"js_pivotMovObj\" -at \"message\" $obj;\n\t\n\taddAttr -ln pivotX -at double $dupLoc;\n\tsetAttr -l 1 -k 0 ($dupLoc+\".pivotX\") `getAttr ($dupLoc+\".tx\")`;\n\taddAttr -ln pivotY -at double $dupLoc;\n\tsetAttr -l 1 -k 0 ($dupLoc+\".pivotY\") `getAttr ($dupLoc+\".ty\")`;\n\taddAttr -ln pivotZ -at double $dupLoc;\n\tsetAttr -l 1 -k 0 ($dupLoc+\".pivotZ\") `getAttr ($dupLoc+\".tz\")`;\n            connectAttr ($locator[0] + \".message\") ($obj + \".js_pivotObj\") ;\n            connectAttr ($dupLoc + \".message\") ($obj + \".js_pivotMovObj\") ;\n            $pivotObjects[$pivotCount++] = $locator[0];\n            $pivotObjects[$pivotCount++] = $dupLoc;\n        }\n    }\n    return $pivotObjects;\n}\n");
	setAttr ".st" 1;
createNode curveInfo -n "curveInfo1";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "back_curve_normalizedScale";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode script -n "m_spine_Prim_0";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -s false -ci true -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -sn "start" -ln "start" -at "message";
	addAttr -s false -ci true -sn "end" -ln "end" -at "message";
	addAttr -s false -ci true -sn "shoulderCntrl" -ln "shoulderCntrl" -at "message";
	addAttr -s false -ci true -sn "hipsCntrl" -ln "hipsCntrl" -at "message";
	addAttr -s false -ci true -sn "rig_spine_0FK1" -ln "rig_spine_0FK1" -at "message";
	addAttr -s false -ci true -sn "rig_spine_0FK2" -ln "rig_spine_0FK2" -at "message";
	addAttr -s false -ci true -sn "rig_spine_0FK3" -ln "rig_spine_0FK3" -at "message";
	addAttr -s false -ci true -sn "splineDiv0" -ln "splineDiv0" -at "message";
	setAttr -l on ".name" -type "string" "m_spine";
createNode script -n "m_neck_Prim_0";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -s false -ci true -sn "start" -ln "start" -at "message";
	addAttr -s false -ci true -sn "end" -ln "end" -at "message";
	addAttr -s false -ci true -sn "neckFKCntrl" -ln "neckFKCntrl" -at "message";
	addAttr -s false -ci true -sn "neckIKCntrl" -ln "neckIKCntrl" -at "message";
	addAttr -s false -ci true -sn "splineDiv0" -ln "splineDiv0" -at "message";
	setAttr -l on ".name" -type "string" "m_neck";
createNode script -n "m_arm_Prim_0";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "aimAxis" -ln "aimAxis" -dt "string";
	addAttr -ci true -sn "lr" -ln "lr" -dt "string";
	addAttr -ci true -sn "numRoll" -ln "numRoll" -dt "string";
	addAttr -s false -ci true -sn "up" -ln "up" -at "message";
	addAttr -s false -ci true -sn "mid" -ln "mid" -at "message";
	addAttr -s false -ci true -sn "low" -ln "low" -at "message";
	addAttr -s false -ci true -sn "FKup" -ln "FKup" -at "message";
	addAttr -s false -ci true -sn "FKmid" -ln "FKmid" -at "message";
	addAttr -s false -ci true -sn "FKlow" -ln "FKlow" -at "message";
	addAttr -s false -ci true -sn "IKcntrl" -ln "IKcntrl" -at "message";
	addAttr -s false -ci true -sn "PV" -ln "PV" -at "message";
	addAttr -s false -ci true -sn "switcher" -ln "switcher" -at "message";
	addAttr -s false -ci true -sn "splineDiv0" -ln "splineDiv0" -at "message";
	addAttr -s false -ci true -sn "bendy0" -ln "bendy0" -at "message";
	addAttr -s false -ci true -sn "splineDiv1" -ln "splineDiv1" -at "message";
	addAttr -s false -ci true -sn "bendy1" -ln "bendy1" -at "message";
	addAttr -s false -ci true -sn "twist" -ln "twist" -at "message";
	setAttr -l on ".name" -type "string" "m_arm";
	setAttr -l on ".aimAxis" -type "string" "x";
	setAttr -l on ".lr" -type "string" "l";
	setAttr -l on ".numRoll" -type "string" "3";
createNode script -n "m_arm_Prim_1";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "aimAxis" -ln "aimAxis" -dt "string";
	addAttr -ci true -sn "lr" -ln "lr" -dt "string";
	addAttr -ci true -sn "numRoll" -ln "numRoll" -dt "string";
	addAttr -s false -ci true -sn "up" -ln "up" -at "message";
	addAttr -s false -ci true -sn "mid" -ln "mid" -at "message";
	addAttr -s false -ci true -sn "low" -ln "low" -at "message";
	addAttr -s false -ci true -sn "FKup" -ln "FKup" -at "message";
	addAttr -s false -ci true -sn "FKmid" -ln "FKmid" -at "message";
	addAttr -s false -ci true -sn "FKlow" -ln "FKlow" -at "message";
	addAttr -s false -ci true -sn "IKcntrl" -ln "IKcntrl" -at "message";
	addAttr -s false -ci true -sn "PV" -ln "PV" -at "message";
	addAttr -s false -ci true -sn "switcher" -ln "switcher" -at "message";
	addAttr -s false -ci true -sn "splineDiv0" -ln "splineDiv0" -at "message";
	addAttr -s false -ci true -sn "bendy0" -ln "bendy0" -at "message";
	addAttr -s false -ci true -sn "splineDiv1" -ln "splineDiv1" -at "message";
	addAttr -s false -ci true -sn "bendy1" -ln "bendy1" -at "message";
	addAttr -s false -ci true -sn "twist" -ln "twist" -at "message";
	setAttr -l on ".name" -type "string" "m_arm";
	setAttr -l on ".aimAxis" -type "string" "-x";
	setAttr -l on ".lr" -type "string" "r";
	setAttr -l on ".numRoll" -type "string" "3";
createNode script -n "m_leg_Prim_0";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "aimAxis" -ln "aimAxis" -dt "string";
	addAttr -ci true -sn "lr" -ln "lr" -dt "string";
	addAttr -ci true -sn "numRoll" -ln "numRoll" -dt "string";
	addAttr -s false -ci true -sn "hip" -ln "hip" -at "message";
	addAttr -s false -ci true -sn "knee" -ln "knee" -at "message";
	addAttr -s false -ci true -sn "ankle" -ln "ankle" -at "message";
	addAttr -s false -ci true -sn "FKup" -ln "FKup" -at "message";
	addAttr -s false -ci true -sn "FKmid" -ln "FKmid" -at "message";
	addAttr -s false -ci true -sn "FKlow" -ln "FKlow" -at "message";
	addAttr -s false -ci true -sn "IKcntrl" -ln "IKcntrl" -at "message";
	addAttr -s false -ci true -sn "PV" -ln "PV" -at "message";
	addAttr -s false -ci true -sn "switcher" -ln "switcher" -at "message";
	addAttr -s false -ci true -sn "splineDiv0" -ln "splineDiv0" -at "message";
	addAttr -s false -ci true -sn "bendy0" -ln "bendy0" -at "message";
	addAttr -s false -ci true -sn "splineDiv1" -ln "splineDiv1" -at "message";
	addAttr -s false -ci true -sn "bendy1" -ln "bendy1" -at "message";
	setAttr -l on ".name" -type "string" "m_leg";
	setAttr -l on ".aimAxis" -type "string" "-x";
	setAttr -l on ".lr" -type "string" "r";
	setAttr -l on ".numRoll" -type "string" "3";
createNode script -n "m_leg_Prim_1";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "aimAxis" -ln "aimAxis" -dt "string";
	addAttr -ci true -sn "lr" -ln "lr" -dt "string";
	addAttr -ci true -sn "numRoll" -ln "numRoll" -dt "string";
	addAttr -s false -ci true -sn "hip" -ln "hip" -at "message";
	addAttr -s false -ci true -sn "knee" -ln "knee" -at "message";
	addAttr -s false -ci true -sn "ankle" -ln "ankle" -at "message";
	addAttr -s false -ci true -sn "FKup" -ln "FKup" -at "message";
	addAttr -s false -ci true -sn "FKmid" -ln "FKmid" -at "message";
	addAttr -s false -ci true -sn "FKlow" -ln "FKlow" -at "message";
	addAttr -s false -ci true -sn "IKcntrl" -ln "IKcntrl" -at "message";
	addAttr -s false -ci true -sn "PV" -ln "PV" -at "message";
	addAttr -s false -ci true -sn "switcher" -ln "switcher" -at "message";
	addAttr -s false -ci true -sn "splineDiv1" -ln "splineDiv1" -at "message";
	addAttr -s false -ci true -sn "bendy1" -ln "bendy1" -at "message";
	addAttr -s false -ci true -sn "splineDiv2" -ln "splineDiv2" -at "message";
	addAttr -s false -ci true -sn "bendy2" -ln "bendy2" -at "message";
	setAttr -l on ".name" -type "string" "m_leg";
	setAttr -l on ".aimAxis" -type "string" "x";
	setAttr -l on ".lr" -type "string" "l";
	setAttr -l on ".numRoll" -type "string" "3";
createNode curveInfo -n "Marcus_curveInfo1";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "back_curve_normalizedScale1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode mentalrayOptions -s -n "miContourPreset";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "Draft";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
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
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
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
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
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
createNode animCurveTU -n "head:head_mover_ctrl_scaleX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  8 1 11 0.830566 14 1.068689264876618 15 0.830566
		 18 0.830566 19 0.830566 21 0.830566 22 0.830566;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "head:head_mover_ctrl_scaleY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  8 1 11 0.830566 14 1.068689264876618 15 0.830566
		 18 0.830566 19 0.830566 21 0.830566 22 0.830566;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "head:head_mover_ctrl_scaleZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  8 1 11 0.830566 14 1.068689264876618 15 0.830566
		 18 0.830566 19 0.830566 21 0.830566 22 0.830566;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "head:head_mover_ctrl_translateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 14 0 15 0 18 0 19 0 21 0 22 0;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "head:head_mover_ctrl_translateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 14 0 15 0 18 0 19 0 21 0 22 0;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "head:head_mover_ctrl_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 14 0 15 0 18 0 19 0 21 0 22 0;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTA -n "head:head_mover_ctrl_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 14 0 15 0 18 0 19 0 21 0 22 0;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTA -n "head:head_mover_ctrl_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 14 0 15 0 18 0 19 0 21 0 22 0;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTA -n "head:head_mover_ctrl_rotateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 14 0 15 0 18 0 19 0 21 0 22 0;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode groupId -n "groupId1307";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "arms_LeftArm_plusMinusAverage9";
	setAttr -s 2 ".i1[0:1]"  -8.8956137e-15 0;
	setAttr -s 2 ".i3[0:1]" -type "float3"  0 0 0 0 0 0;
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "arms_LeftArm_plusMinusAverage8";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide15";
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide16";
createNode unitConversion -n "arms_LeftArm_unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "arms_LeftArm_halfX_axis";
createNode unitConversion -n "arms_LeftArm_unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "arms_LeftArm_unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "arms_LeftArm_devideformiddlejoints";
createNode unitConversion -n "arms_LeftArm_unitConversion34";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "arms_RightArm_unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "arms_RightArm_halfX_axis";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode unitConversion -n "arms_RightArm_unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "arms_RightArm_unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "arms_RightArm_devideformiddlejoints";
createNode unitConversion -n "arms_RightArm_unitConversion42";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide50";
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide51";
createNode plusMinusAverage -n "arms_LeftArm_plusMinusAverage35";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide53";
	setAttr ".i2" -type "float3" 0 -0.5 1 ;
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide52";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "arms_LeftArm_reverse1";
createNode unitConversion -n "arms_unitConversion23";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "arms_unitConversion24";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide54";
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide55";
createNode plusMinusAverage -n "arms_LeftArm_plusMinusAverage37";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide56";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "arms_LeftArm_reverse3";
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide58";
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide57";
createNode plusMinusAverage -n "arms_LeftArm_plusMinusAverage39";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "arms_LeftArm_multiplyDivide59";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "arms_LeftArm_reverse4";
createNode multiplyDivide -n "arms_RightArm_multiplyDivide56";
createNode multiplyDivide -n "arms_RightArm_multiplyDivide55";
createNode plusMinusAverage -n "arms_RightArm_plusMinusAverage36";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "arms_RightArm_reverse1";
createNode multiplyDivide -n "arms_RightArm_multiplyDivide57";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "legs_LeftLeg_unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "legs_LeftLeg_multiplyDivide32";
createNode unitConversion -n "legs_LeftLeg_unitConversion28";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "legs_RightLeg_unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "legs_RightLeg_multiplyDivide32";
createNode unitConversion -n "legs_RightLeg_unitConversion28";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "legs_LeftLeg_multiplyDivide45";
createNode multiplyDivide -n "legs_LeftLeg_multiplyDivide46";
createNode plusMinusAverage -n "legs_LeftLeg_plusMinusAverage33";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "legs_LeftLeg_reverse3";
createNode multiplyDivide -n "legs_LeftLeg_multiplyDivide48";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode multiplyDivide -n "legs_RightLeg_multiplyDivide45";
createNode multiplyDivide -n "legs_RightLeg_multiplyDivide46";
createNode plusMinusAverage -n "legs_RightLeg_plusMinusAverage37";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "legs_reverse1";
createNode multiplyDivide -n "legs_RightLeg_multiplyDivide48";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode curveInfo -n "Marcus_curveInfo2";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "Marcus_back_curve_normalizedScale1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -7.68 -150.64777429467085 ;
	setAttr ".vh" -type "double2" 337.68 115.68 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
createNode groupId -n "Marcus_groupId1307";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "Marcus_arms_LeftArm_plusMinusAverage9";
	setAttr -s 2 ".i1[0:1]"  -8.8956137e-15 0;
	setAttr -s 2 ".i3[0:1]" -type "float3"  0 0 0 0 0 0;
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "Marcus_arms_LeftArm_plusMinusAverage8";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide15";
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide16";
createNode unitConversion -n "Marcus_arms_LeftArm_unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Marcus_arms_LeftArm_halfX_axis";
createNode unitConversion -n "Marcus_arms_LeftArm_unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Marcus_arms_LeftArm_unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Marcus_arms_LeftArm_devideformiddlejoints";
createNode unitConversion -n "Marcus_arms_LeftArm_unitConversion34";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Marcus_arms_RightArm_unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Marcus_arms_RightArm_halfX_axis";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode unitConversion -n "Marcus_arms_RightArm_unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Marcus_arms_RightArm_unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Marcus_arms_RightArm_devideformiddlejoints";
createNode unitConversion -n "Marcus_arms_RightArm_unitConversion42";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide50";
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide51";
createNode plusMinusAverage -n "Marcus_arms_LeftArm_plusMinusAverage35";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide53";
	setAttr ".i2" -type "float3" 0 -0.5 1 ;
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide52";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "Marcus_arms_LeftArm_reverse1";
createNode unitConversion -n "Marcus_arms_unitConversion23";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Marcus_arms_unitConversion24";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide54";
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide55";
createNode plusMinusAverage -n "Marcus_arms_LeftArm_plusMinusAverage37";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide56";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "Marcus_arms_LeftArm_reverse3";
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide58";
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide57";
createNode plusMinusAverage -n "Marcus_arms_LeftArm_plusMinusAverage39";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "Marcus_arms_LeftArm_multiplyDivide59";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "Marcus_arms_LeftArm_reverse4";
createNode multiplyDivide -n "Marcus_arms_RightArm_multiplyDivide56";
createNode multiplyDivide -n "Marcus_arms_RightArm_multiplyDivide55";
createNode plusMinusAverage -n "Marcus_arms_RightArm_plusMinusAverage36";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "Marcus_arms_RightArm_reverse1";
createNode multiplyDivide -n "Marcus_arms_RightArm_multiplyDivide57";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "Marcus_legs_LeftLeg_unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Marcus_legs_LeftLeg_multiplyDivide32";
createNode unitConversion -n "Marcus_legs_LeftLeg_unitConversion28";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Marcus_legs_RightLeg_unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Marcus_legs_RightLeg_multiplyDivide32";
createNode unitConversion -n "Marcus_legs_RightLeg_unitConversion28";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Marcus_legs_LeftLeg_multiplyDivide45";
createNode multiplyDivide -n "Marcus_legs_LeftLeg_multiplyDivide46";
createNode plusMinusAverage -n "Marcus_legs_LeftLeg_plusMinusAverage33";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "Marcus_legs_LeftLeg_reverse3";
createNode multiplyDivide -n "Marcus_legs_LeftLeg_multiplyDivide48";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode multiplyDivide -n "Marcus_legs_RightLeg_multiplyDivide45";
createNode multiplyDivide -n "Marcus_legs_RightLeg_multiplyDivide46";
createNode plusMinusAverage -n "Marcus_legs_RightLeg_plusMinusAverage37";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "Marcus_legs_reverse1";
createNode multiplyDivide -n "Marcus_legs_RightLeg_multiplyDivide48";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode curveInfo -n "Marcus_Marcus_curveInfo1";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "Marcus_back_curve_normalizedScale";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode multiplyDivide -n "rig_spine_0_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_spine_0_skin_DivAdj";
	setAttr ".i1" -type "float3" 32.029408 0 0 ;
createNode script -n "m_spine_Prim_1";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -s false -ci true -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -sn "start" -ln "start" -at "message";
	addAttr -s false -ci true -sn "end" -ln "end" -at "message";
	addAttr -s false -ci true -sn "shoulderCntrl" -ln "shoulderCntrl" -at "message";
	addAttr -s false -ci true -sn "hipsCntrl" -ln "hipsCntrl" -at "message";
	addAttr -s false -ci true -sn "rig_spine_0_skinFK1" -ln "rig_spine_0_skinFK1" -at "message";
	addAttr -s false -ci true -sn "rig_spine_0_skinFK2" -ln "rig_spine_0_skinFK2" -at "message";
	addAttr -s false -ci true -sn "rig_spine_0_skinFK3" -ln "rig_spine_0_skinFK3" -at "message";
	setAttr -l on ".name" -type "string" "m_spine";
createNode multiplyDivide -n "rig_neck_0_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_neck_0_skin_DivAdj";
	setAttr ".i1" -type "float3" 13.050588 0 0 ;
createNode script -n "m_neck_Prim_1";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -s false -ci true -sn "start" -ln "start" -at "message";
	addAttr -s false -ci true -sn "end" -ln "end" -at "message";
	addAttr -s false -ci true -sn "neckFKCntrl" -ln "neckFKCntrl" -at "message";
	addAttr -s false -ci true -sn "neckIKCntrl" -ln "neckIKCntrl" -at "message";
	setAttr -l on ".name" -type "string" "m_neck";
createNode script -n "m_arm_Prim_2";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "aimAxis" -ln "aimAxis" -dt "string";
	addAttr -ci true -sn "lr" -ln "lr" -dt "string";
	addAttr -ci true -sn "numRoll" -ln "numRoll" -dt "string";
	addAttr -s false -ci true -sn "up" -ln "up" -at "message";
	addAttr -s false -ci true -sn "mid" -ln "mid" -at "message";
	addAttr -s false -ci true -sn "low" -ln "low" -at "message";
	addAttr -s false -ci true -sn "FKup" -ln "FKup" -at "message";
	addAttr -s false -ci true -sn "FKmid" -ln "FKmid" -at "message";
	addAttr -s false -ci true -sn "FKlow" -ln "FKlow" -at "message";
	addAttr -s false -ci true -sn "IKcntrl" -ln "IKcntrl" -at "message";
	addAttr -s false -ci true -sn "PV" -ln "PV" -at "message";
	addAttr -s false -ci true -sn "switcher" -ln "switcher" -at "message";
	addAttr -s false -ci true -sn "splineDiv0" -ln "splineDiv0" -at "message";
	addAttr -s false -ci true -sn "bendy0" -ln "bendy0" -at "message";
	addAttr -s false -ci true -sn "splineDiv1" -ln "splineDiv1" -at "message";
	addAttr -s false -ci true -sn "bendy1" -ln "bendy1" -at "message";
	addAttr -s false -ci true -sn "twist" -ln "twist" -at "message";
	setAttr -l on ".name" -type "string" "m_arm";
	setAttr -l on ".aimAxis" -type "string" "x";
	setAttr -l on ".lr" -type "string" "l";
	setAttr -l on ".numRoll" -type "string" "4";
createNode multiplyDivide -n "rig_shoulder_l_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_shoulder_l_skin_DivAdj";
	setAttr ".i1" -type "float3" 24.364618 0 0 ;
createNode multiplyDivide -n "rig_elbow_l_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_elbow_l_skin_DivAdj";
	setAttr ".i1" -type "float3" 21.321033 0 0 ;
createNode script -n "m_arm_Prim_3";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "aimAxis" -ln "aimAxis" -dt "string";
	addAttr -ci true -sn "lr" -ln "lr" -dt "string";
	addAttr -ci true -sn "numRoll" -ln "numRoll" -dt "string";
	addAttr -s false -ci true -sn "up" -ln "up" -at "message";
	addAttr -s false -ci true -sn "mid" -ln "mid" -at "message";
	addAttr -s false -ci true -sn "low" -ln "low" -at "message";
	addAttr -s false -ci true -sn "FKup" -ln "FKup" -at "message";
	addAttr -s false -ci true -sn "FKmid" -ln "FKmid" -at "message";
	addAttr -s false -ci true -sn "FKlow" -ln "FKlow" -at "message";
	addAttr -s false -ci true -sn "IKcntrl" -ln "IKcntrl" -at "message";
	addAttr -s false -ci true -sn "PV" -ln "PV" -at "message";
	addAttr -s false -ci true -sn "switcher" -ln "switcher" -at "message";
	addAttr -s false -ci true -sn "splineDiv0" -ln "splineDiv0" -at "message";
	addAttr -s false -ci true -sn "bendy0" -ln "bendy0" -at "message";
	addAttr -s false -ci true -sn "splineDiv1" -ln "splineDiv1" -at "message";
	addAttr -s false -ci true -sn "bendy1" -ln "bendy1" -at "message";
	addAttr -s false -ci true -sn "twist" -ln "twist" -at "message";
	setAttr -l on ".name" -type "string" "m_arm";
	setAttr -l on ".aimAxis" -type "string" "-x";
	setAttr -l on ".lr" -type "string" "r";
	setAttr -l on ".numRoll" -type "string" "4";
createNode multiplyDivide -n "rig_shoulder_r_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_shoulder_r_skin_DivAdj";
	setAttr ".i1" -type "float3" 24.364609 0 0 ;
createNode multiplyDivide -n "rig_elbow_r_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_elbow_r_skin_DivAdj";
	setAttr ".i1" -type "float3" 21.321028 0 0 ;
createNode script -n "m_leg_Prim_2";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "aimAxis" -ln "aimAxis" -dt "string";
	addAttr -ci true -sn "lr" -ln "lr" -dt "string";
	addAttr -ci true -sn "numRoll" -ln "numRoll" -dt "string";
	addAttr -s false -ci true -sn "hip" -ln "hip" -at "message";
	addAttr -s false -ci true -sn "knee" -ln "knee" -at "message";
	addAttr -s false -ci true -sn "ankle" -ln "ankle" -at "message";
	addAttr -s false -ci true -sn "FKup" -ln "FKup" -at "message";
	addAttr -s false -ci true -sn "FKmid" -ln "FKmid" -at "message";
	addAttr -s false -ci true -sn "FKlow" -ln "FKlow" -at "message";
	addAttr -s false -ci true -sn "IKcntrl" -ln "IKcntrl" -at "message";
	addAttr -s false -ci true -sn "PV" -ln "PV" -at "message";
	addAttr -s false -ci true -sn "switcher" -ln "switcher" -at "message";
	addAttr -s false -ci true -sn "splineDiv2" -ln "splineDiv2" -at "message";
	addAttr -s false -ci true -sn "bendy2" -ln "bendy2" -at "message";
	addAttr -s false -ci true -sn "splineDiv3" -ln "splineDiv3" -at "message";
	addAttr -s false -ci true -sn "bendy3" -ln "bendy3" -at "message";
	setAttr -l on ".name" -type "string" "m_leg";
	setAttr -l on ".aimAxis" -type "string" "x";
	setAttr -l on ".lr" -type "string" "l";
	setAttr -l on ".numRoll" -type "string" "4";
createNode multiplyDivide -n "rig_hip_l_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_hip_l_skin_DivAdj";
	setAttr ".i1" -type "float3" 40.35384 0 0 ;
createNode multiplyDivide -n "rig_knee_l_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_knee_l_skin_DivAdj";
	setAttr ".i1" -type "float3" 38.492435 0 0 ;
createNode script -n "m_leg_Prim_3";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "aimAxis" -ln "aimAxis" -dt "string";
	addAttr -ci true -sn "lr" -ln "lr" -dt "string";
	addAttr -ci true -sn "numRoll" -ln "numRoll" -dt "string";
	addAttr -s false -ci true -sn "hip" -ln "hip" -at "message";
	addAttr -s false -ci true -sn "knee" -ln "knee" -at "message";
	addAttr -s false -ci true -sn "ankle" -ln "ankle" -at "message";
	addAttr -s false -ci true -sn "FKup" -ln "FKup" -at "message";
	addAttr -s false -ci true -sn "FKmid" -ln "FKmid" -at "message";
	addAttr -s false -ci true -sn "FKlow" -ln "FKlow" -at "message";
	addAttr -s false -ci true -sn "IKcntrl" -ln "IKcntrl" -at "message";
	addAttr -s false -ci true -sn "PV" -ln "PV" -at "message";
	addAttr -s false -ci true -sn "switcher" -ln "switcher" -at "message";
	addAttr -s false -ci true -sn "splineDiv3" -ln "splineDiv3" -at "message";
	addAttr -s false -ci true -sn "bendy3" -ln "bendy3" -at "message";
	addAttr -s false -ci true -sn "splineDiv4" -ln "splineDiv4" -at "message";
	addAttr -s false -ci true -sn "bendy4" -ln "bendy4" -at "message";
	setAttr -l on ".name" -type "string" "m_leg";
	setAttr -l on ".aimAxis" -type "string" "-x";
	setAttr -l on ".lr" -type "string" "r";
	setAttr -l on ".numRoll" -type "string" "4";
createNode multiplyDivide -n "rig_hip_r_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_hip_r_skin_DivAdj";
	setAttr ".i1" -type "float3" 40.353821 0 0 ;
createNode multiplyDivide -n "rig_knee_r_skin_Div";
	setAttr ".op" 2;
createNode multiplyDivide -n "rig_knee_r_skin_DivAdj";
	setAttr ".i1" -type "float3" 38.492432 0 0 ;
createNode groupId -n "FIXMEJOSH_groupId1307";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage9";
	setAttr -s 2 ".i1[0:1]"  -8.8956137e-15 0;
	setAttr -s 2 ".i3[0:1]" -type "float3"  0 0 0 0 0 0;
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage8";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide15";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide16";
createNode unitConversion -n "FIXMEJOSH_arms_LeftArm_unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_halfX_axis";
createNode unitConversion -n "FIXMEJOSH_arms_LeftArm_unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_arms_LeftArm_unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_devideformiddlejoints";
createNode unitConversion -n "FIXMEJOSH_arms_LeftArm_unitConversion34";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_arms_RightArm_unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_halfX_axis";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode unitConversion -n "FIXMEJOSH_arms_RightArm_unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_arms_RightArm_unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_devideformiddlejoints";
createNode unitConversion -n "FIXMEJOSH_arms_RightArm_unitConversion42";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide50";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide51";
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage35";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide53";
	setAttr ".i2" -type "float3" 0 -0.5 1 ;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide52";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "FIXMEJOSH_arms_LeftArm_reverse1";
createNode unitConversion -n "FIXMEJOSH_arms_unitConversion23";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_arms_unitConversion24";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide54";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide55";
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage37";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide56";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "FIXMEJOSH_arms_LeftArm_reverse3";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide58";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide57";
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage39";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide59";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "FIXMEJOSH_arms_LeftArm_reverse4";
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_multiplyDivide56";
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_multiplyDivide55";
createNode plusMinusAverage -n "FIXMEJOSH_arms_RightArm_plusMinusAverage36";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "FIXMEJOSH_arms_RightArm_reverse1";
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_multiplyDivide57";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "FIXMEJOSH_legs_LeftLeg_unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_legs_LeftLeg_multiplyDivide32";
createNode unitConversion -n "FIXMEJOSH_legs_LeftLeg_unitConversion28";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_legs_RightLeg_unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_legs_RightLeg_multiplyDivide32";
createNode unitConversion -n "FIXMEJOSH_legs_RightLeg_unitConversion28";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_legs_LeftLeg_multiplyDivide45";
createNode multiplyDivide -n "FIXMEJOSH_legs_LeftLeg_multiplyDivide46";
createNode plusMinusAverage -n "FIXMEJOSH_legs_LeftLeg_plusMinusAverage33";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "FIXMEJOSH_legs_LeftLeg_reverse3";
createNode multiplyDivide -n "FIXMEJOSH_legs_LeftLeg_multiplyDivide48";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode multiplyDivide -n "FIXMEJOSH_legs_RightLeg_multiplyDivide45";
createNode multiplyDivide -n "FIXMEJOSH_legs_RightLeg_multiplyDivide46";
createNode plusMinusAverage -n "FIXMEJOSH_legs_RightLeg_plusMinusAverage37";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "FIXMEJOSH_legs_reverse1";
createNode multiplyDivide -n "FIXMEJOSH_legs_RightLeg_multiplyDivide48";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode curveInfo -n "FIXMEJOSH_curveInfo1";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_back_curve_normalizedScale";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode curveInfo -n "FIXMEJOSH_curveInfo3";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_back_curve_normalizedScale4";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode curveInfo -n "FIXMEJOSH_Marcus_curveInfo5";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_back_curve_normalizedScale5";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode curveInfo -n "FIXMEJOSH_Marcus_curveInfo6";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_Marcus_back_curve_normalizedScale5";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode hyperView -n "FIXMEJOSH_hyperView3";
	setAttr ".vl" -type "double2" -7.68 -150.64777429467085 ;
	setAttr ".vh" -type "double2" 337.68 115.68 ;
	setAttr ".dag" no;
createNode hyperLayout -n "FIXMEJOSH_hyperLayout3";
createNode curveInfo -n "FIXMEJOSH_Marcus_Marcus_curveInfo3";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_Marcus_back_curve_normalizedScale4";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode clamp -n "neckSkinTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "neckBigTopLeftXClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "neckBigTopLeftYClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "neckBigTopLeftAdd1";
	setAttr ".i2" 1;
createNode multiplyDivide -n "neckBigTopLeftMultDivide1";
createNode multiplyDivide -n "neckBigTopLeftXMultDivide1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "neckBigTopLeftDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "neckBigTopRightXClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "neckBigTopRightYClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "neckBigTopRightMultDivide1";
createNode multiplyDivide -n "neckBigTopRightDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "torsoBigRightTopLeftXClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "torsoBigRightTopLeftYClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "torsoBigRightTopLeftAdd1";
	setAttr ".i2" 1;
createNode multiplyDivide -n "torsoBigRightTopLeftMultDivide1";
createNode multiplyDivide -n "torsoBigRightTopLeftXMultDivide1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "torsoBigRightTopLeftDivide1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "torsoBigRightTopRightXClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "torsoBigRightTopRightYClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "torsoBigRightTopRightMultDivide1";
createNode multiplyDivide -n "torsoBigRightTopRightDivide1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "torsoBigLeftTopRightXClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "torsoBigLeftTopRightYClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "torsoBigLeftTopRightMultDivide1";
createNode multiplyDivide -n "torsoBigLeftTopRightDivide1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "torsoBigLeftTopLeftXClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "torsoBigLeftTopLeftYClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "torsoBigLeftTopLeftAdd1";
	setAttr ".i2" 1;
createNode multiplyDivide -n "torsoBigLeftTopLeftMultDivide1";
createNode multiplyDivide -n "torsoBigLeftTopLeftXMultDivide1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "torsoBigLeftTopLeftDivide1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "torsoSkinnyRightTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "torsoSkinnyLeftTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprArmRightTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprArmRightTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "uprArmRightTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "uprArmRightTopLeftMultDivide";
createNode multiplyDivide -n "uprArmRightTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "uprArmRightTopLeftDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "uprArmRightTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprArmRightTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprArmRightTopRightMultDivide";
createNode multiplyDivide -n "uprArmRightTopRightDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "uprArmLeftTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprArmLeftTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "uprArmLeftTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "uprArmLeftTopLeftMultDivide";
createNode multiplyDivide -n "uprArmLeftTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "uprArmLeftTopLeftDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "uprArmLeftTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprArmLeftTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprArmLeftTopRightMultDivide";
createNode multiplyDivide -n "uprArmLeftTopRightDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "uprArmSkinRightTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprArmSkinLeftTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrArmRightTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrArmRightTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "lwrArmRightTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "lwrArmRightTopLeftMultDivide";
createNode multiplyDivide -n "lwrArmRightTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lwrArmRightTopLeftDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "lwrArmRightTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrArmRightTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrArmRightTopRightMultDivide";
createNode multiplyDivide -n "lwrArmRightTopRightDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "lwrArmLeftTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrArmLeftTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "lwrArmLeftTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "lwrArmLeftTopLeftMultDivide";
createNode multiplyDivide -n "lwrArmLeftTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lwrArmLeftTopLeftDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "lwrArmLeftTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrArmLeftTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrArmLeftTopRightMultDivide";
createNode multiplyDivide -n "lwrArmLeftTopRightDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "lwrArmSkinRightTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrArmSkinLeftTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLegRightTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLegRightTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "uprLegRightTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "uprLegRightTopLeftMultDivide";
createNode multiplyDivide -n "uprLegRightTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "uprLegRightTopLeftDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "uprLegRightTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLegRightTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprLegRightTopRightMultDivide";
createNode multiplyDivide -n "uprLegRightTopRightDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "uprLegLeftTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLegLeftTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "uprLegLeftTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "uprLegLeftTopLeftMultDivide";
createNode multiplyDivide -n "uprLegLeftTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "uprLegLeftTopLeftDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "uprLegLeftTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLegLeftTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprLegLeftTopRightMultDivide";
createNode multiplyDivide -n "uprLegLeftTopRightDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "uprLegSkinRightTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLegSkinLeftTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLegRightTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLegRightTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "lwrLegRightTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "lwrLegRightTopLeftMultDivide";
createNode multiplyDivide -n "lwrLegRightTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lwrLegRightTopLeftDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "lwrLegRightTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLegRightTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrLegRightTopRightMultDivide";
createNode multiplyDivide -n "lwrLegRightTopRightDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "lwrLegLeftTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLegLeftTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "lwrLegLeftTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "lwrLegLeftTopLeftMultDivide";
createNode multiplyDivide -n "lwrLegLeftTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lwrLegLeftTopLeftDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "lwrLegLeftTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLegLeftTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrLegLeftTopRightMultDivide";
createNode multiplyDivide -n "lwrLegLeftTopRightDivide";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode clamp -n "lwrLegSkinLeftTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLegSkinRightTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "feminineTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "feminineRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "BellyRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "BellyLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "BellyLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode curveInfo -n "FIXMEJOSH_FIXMEJOSH_curveInfo1";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_FIXMEJOSH_back_curve_normalizedScale";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode curveInfo -n "FIXMEJOSH_Marcus_curveInfo1";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_back_curve_normalizedScale1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode curveInfo -n "FIXMEJOSH_Marcus_curveInfo2";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_Marcus_back_curve_normalizedScale1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode hyperView -n "FIXMEJOSH_hyperView1";
	setAttr ".vl" -type "double2" -7.68 -150.64777429467085 ;
	setAttr ".vh" -type "double2" 337.68 115.68 ;
	setAttr ".dag" no;
createNode hyperLayout -n "FIXMEJOSH_hyperLayout1";
createNode curveInfo -n "FIXMEJOSH_Marcus_Marcus_curveInfo1";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_Marcus_back_curve_normalizedScale";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode curveInfo -n "FIXMEJOSH_curveInfo2";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_back_curve_normalizedScale2";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode curveInfo -n "FIXMEJOSH_Marcus_curveInfo3";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_back_curve_normalizedScale3";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode shadingEngine -n "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
createNode materialInfo -n "FIXMEJOSH_Marcus_Marcus_FixMe_materialInfo11";
createNode lambert -n "bodySuit_shdr";
	setAttr ".dc" 0.53658539056777954;
createNode curveInfo -n "FIXMEJOSH_Marcus_curveInfo4";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_Marcus_back_curve_normalizedScale3";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode hyperView -n "FIXMEJOSH_hyperView2";
	setAttr ".vl" -type "double2" -7.68 -150.64777429467085 ;
	setAttr ".vh" -type "double2" 337.68 115.68 ;
	setAttr ".dag" no;
createNode hyperLayout -n "FIXMEJOSH_hyperLayout2";
createNode curveInfo -n "FIXMEJOSH_Marcus_Marcus_curveInfo2";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_Marcus_back_curve_normalizedScale2";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode reference -n "headRN";
	setAttr -s 28 ".phl";
	setAttr ".phl[1]" -141.62803021625905;
	setAttr ".phl[2]" -2.5414124663162466e-14;
	setAttr ".phl[3]" -3.928005464850425;
	setAttr ".phl[4]" 0.027870039136607988;
	setAttr ".phl[5]" 1.7347234759768071e-18;
	setAttr ".phl[6]" -1.5707963267948961;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 1.0000000000000002;
	setAttr ".phl[13]" 1.0000000000000002;
	setAttr ".phl[14]" 1.0000000000000002;
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
	setAttr ".phl[26]" 1;
	setAttr ".phl[27]" 1;
	setAttr ".phl[28]" 1;
	setAttr ".ed" -type "dataReferenceEdits" 
		"headRN"
		"headRN" 87
		0 "|headRNfosterParent1|head2:ConstrainMeToNeck_grp_parentConstraint1" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp" 
		"-s -r "
		0 "|headRNfosterParent1|head2:ConstrainMeToNeck_grp_scaleConstraint1" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp" 
		"-s -r "
		0 "|headRNfosterParent1|head2:eye_masterIK_worldSpace_loc_parentConstraint1" 
		"|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc" "-s -r "
		0 "|headRNfosterParent1|head2:eye_masterIK_worldSpace_loc_scaleConstraint1" 
		"|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc" "-s -r "
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim" 
		"scaleX" " -k 0 1"
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim" 
		"scaleY" " -k 0 1"
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim" 
		"scaleZ" " -k 0 1"
		2 "|head2:FacialMorphDeformation_ctrls_grp|head2:NeckGrp|head2:NeckCircleCtrl_anim" 
		"scaleX" " -k 0 0.5"
		2 "|head2:FacialMorphDeformation_ctrls_grp|head2:HeavyGrp|head2:HeavyCircleCtrl_anim" 
		"scaleX" " -k 0 0.25"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:head_mover_ctrl" 
		"translate" " -type \"double3\" 0 133.754481 -0.163398"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:head_mover_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:head_mover_ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:head_mover_ctrl" 
		"rotatePivot" " -type \"double3\" 0 6.206225 -1.08247"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:head_mover_ctrl" 
		"scalePivot" " -type \"double3\" 0 6.206225 -1.08247"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:lwrFace_mover_ctrl" 
		"translateY" " 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:lwrFace_mover_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:lwrFace_mover_ctrl" 
		"rotatePivot" " -type \"double3\" 0 9.218065 1.43525"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:lwrFace_mover_ctrl" 
		"scalePivot" " -type \"double3\" 0 9.218065 1.43525"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:sideHead_left_mover_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:uprHead_mover_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:lwrSide_left_mover_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:Cheekbone_left_mover_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:brow_left_mover_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceShaper_grp|head2:ear_mover_ctrl_transform|head2:ear_left_mover_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongueBase_anim|head2:tongue01_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongueBase_anim|head2:tongue01_anim" 
		"rotatePivot" " -type \"double3\" 0 0.546504 1.836866"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongueBase_anim|head2:tongue01_anim" 
		"scalePivot" " -type \"double3\" 0 0.546504 1.836866"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongueBase_anim|head2:tongue01_anim|head2:tongue03_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongueBase_anim|head2:tongue01_anim|head2:tongue03_anim" 
		"rotatePivot" " -type \"double3\" 0 0.546504 5.406796"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongueBase_anim|head2:tongue01_anim|head2:tongue03_anim" 
		"scalePivot" " -type \"double3\" 0 0.546504 5.406796"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongueBase_anim|head2:tongue01_anim|head2:tongue03_anim|head2:tongueTipTweak_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongueBase_anim|head2:tongue01_anim|head2:tongue03_anim|head2:tongueTipTweak_anim" 
		"rotatePivot" " -type \"double3\" 0 0.546504 3.418092"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongueBase_anim|head2:tongue01_anim|head2:tongue03_anim|head2:tongueTipTweak_anim" 
		"scalePivot" " -type \"double3\" 0 0.546504 3.418092"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongue_ik" 
		"translate" " -type \"double3\" 0 0.546504 5.406796"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:tongueRig_grp|head2:tongue_ik" 
		"rotate" " -type \"double3\" -0.0283243 -90 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:DeformationRig|head2:head_skin_jnt|head2:left_lwrFace_skin_jnt" 
		"translate" " -type \"double3\" 5.512054 -4.795063 5.233371"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:DeformationRig|head2:head_skin_jnt|head2:left_lwrFace_skin_jnt" 
		"translateX" " -av"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:DeformationRig|head2:head_skin_jnt|head2:left_lwrFace_skin_jnt" 
		"translateY" " -av"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:DeformationRig|head2:head_skin_jnt|head2:left_lwrFace_skin_jnt" 
		"translateZ" " -av"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceControls_grp|head2:jaw_anim_grp|head2:jaw_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceControls_grp|head2:jaw_anim_grp|head2:jaw_anim" 
		"rotatePivot" " -type \"double3\" 0 3.975063 10.896218"
		2 "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp|head2:FacialRig_deforming_grp|head2:FaceDeformation_grp|head2:FaceControls_grp|head2:jaw_anim_grp|head2:jaw_anim" 
		"scalePivot" " -type \"double3\" 0 3.975063 10.896218"
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim" 
		"rotateOrder" " 2"
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim" 
		"rotatePivot" " -type \"double3\" 0 17.7466 18.269992"
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim" 
		"scalePivot" " -type \"double3\" 0 17.7466 18.269992"
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim" 
		"scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim" 
		"Parent" " -k 1 0"
		2 "|head2:FacialRig_grp|head2:EyeRig_grp|head2:eye_masterIK_Pos_grp|head2:eye_masterIK_anim_grp|head2:eye_masterIK_anim_DynDriven_grp|head2:eye_masterIK_anim|head2:eyeIK_left_anim_grp|head2:eyeIK_left_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|head2:FacialMorphDeformation_ctrls_grp" "translate" " -type \"double3\" 155.87739 114.21275 0"
		
		2 "|head2:FacialMorphDeformation_ctrls_grp" "scale" " -type \"double3\" 0.918472 0.918472 0.918472"
		
		2 "|head2:FacialMorphDeformation_ctrls_grp|head2:NoseGrp|head2:NoseCircleCtrl_anim" 
		"translateX" " 0"
		2 "|head2:FacialMorphDeformation_ctrls_grp|head2:NoseGrp|head2:NoseCircleCtrl_anim" 
		"translateY" " 0"
		2 "|head2:FacialMorphDeformation_ctrls_grp|head2:HeavyGrp|head2:HeavyCircleCtrl_anim" 
		"translateX" " 0"
		2 "|head2:FacialMorphDeformation_ctrls_grp|head2:NeckGrp|head2:NeckCircleCtrl_anim" 
		"translateX" " -1"
		2 "|head2:FacialMorphDeformation_ctrls_grp|head2:customgeoCntrl_grp|head2:CustomGeo_anim" 
		"translate" " -type \"double3\" -22.154375 11.051548 0"
		2 "|head2:FacialMorphDeformation_ctrls_grp|head2:customgeoCntrl_grp|head2:CustomGeo_anim" 
		"scale" " -type \"double3\" 1.560408 1.560408 1.560408"
		2 "head2:btrTrigGrp_faceTriggers" "before" (" -type \"string\" \"//boTriggers v1.3\\n\\t\\n//GROUP_TRIGGER\\nglobal proc btrTrigGrp_faceTriggers__head2_btrTrigProc() {\\n\\tglobal int $btrTrigSelectionMode;\\n\\tif ($btrTrigSelectionMode == 1) return;\\nstring $selString = (\\\"^\\\" + stringArrayToString(`ls -sl -r 1`, \\\"^\\\") + \\\"^\\\");\\n\\n//BEGIN_TRIGGERS\\n//TRIGGER_001\\nif (size(`match \\\"\\\\\\\\^head2:eyes_Select_pick\\\\\\\\^\\\" $selString`)) {;\\n\\t//ACTIONS_BEGIN\\n\\tselect -d head2:eyes_Select_pick;\\n\\t\\n\\t//SELECT\\n\\tselect -add head2:eyeIK_left_anim;\\n\\tselect -add head2:eyeIK_right_anim;\\n\\tselect -add head2:eyeFK_left_anim;\\n\\tselect -add head2:iris_left_anim;\\n\\tselect -add head2:pupil_left_anim;\\n\\tselect -add head2:eye_left_fkikSwitch_anim;\\n\\tselect -add head2:eyeFK_right_anim;\\n\\tselect -add head2:iris_right_anim;\\n\\tselect -add head2:pupil_right_anim;\\n\\tselect -add head2:eye_right_fkikSwitch_anim;\\n\\t//ENDSELECT\\n\\t\\n\\t//ACTIONS_END\\n}\\n//TRIGGER_END_001\\n//TRIGGER_002\\nif (size(`match \\\"\\\\\\\\^head2:face_Select_pick\\\\\\\\^\\\" $selString`)) {;\\n\\t//ACTIONS_BEGIN\\n\\ts"
		+ "elect -d head2:face_Select_pick;\\n\\t\\n\\t//SELECT\\n\\tselect -add head2:eye_masterIK_anim;\\n\\tselect -add head2:eyeIK_left_anim;\\n\\tselect -add head2:eyeIK_right_anim;\\n\\tselect -add head2:eyeFK_left_anim;\\n\\tselect -add head2:iris_left_anim;\\n\\tselect -add head2:pupil_left_anim;\\n\\tselect -add head2:eye_left_fkikSwitch_anim;\\n\\tselect -add head2:uprLidAll_left_anim;\\n\\tselect -add head2:center_uprLid_left_anim;\\n\\tselect -add head2:inner_uprLid_left_anim;\\n\\tselect -add head2:outer_uprLid_left_anim;\\n\\tselect -add head2:lwrLidAll_left_anim;\\n\\tselect -add head2:outer_lwrLid_left_anim;\\n\\tselect -add head2:inner_lwrLid_left_anim;\\n\\tselect -add head2:center_lwrLid_left_anim;\\n\\tselect -add head2:blink_left_anim;\\n\\tselect -add head2:eyeFK_right_anim;\\n\\tselect -add head2:iris_right_anim;\\n\\tselect -add head2:pupil_right_anim;\\n\\tselect -add head2:eye_right_fkikSwitch_anim;\\n\\tselect -add head2:uprLidAll_right_anim;\\n\\tselect -add head2:inner_uprLid_right_anim;\\n\\tselect -add head2:center_uprLid_right_anim;\\n\\ts"
		+ "elect -add head2:outer_uprLid_right_anim;\\n\\tselect -add head2:lwrLidAll_right_anim;\\n\\tselect -add head2:outer_lwrLid_right_anim;\\n\\tselect -add head2:center_lwrLid_right_anim;\\n\\tselect -add head2:inner_lwrLid_right_anim;\\n\\tselect -add head2:blink_right_anim;\\n\\tselect -add head2:tongueBase_anim;\\n\\tselect -add head2:tongue01_anim;\\n\\tselect -add head2:tongue03_anim;\\n\\tselect -add head2:tongueTipTweak_anim;\\n\\tselect -add head2:tongueShape_anim;\\n\\tselect -add head2:jaw_anim;\\n\\tselect -add head2:mouthSeal_anim;\\n\\tselect -add head2:browInner_left_anim;\\n\\tselect -add head2:browOuter_left_anim;\\n\\tselect -add head2:browMidTweak_left_anim;\\n\\tselect -add head2:browInner_right_anim;\\n\\tselect -add head2:browOuter_right_anim;\\n\\tselect -add head2:browMidTweak_right_anim;\\n\\tselect -add head2:mouthMove_anim;\\n\\tselect -add head2:mouthEmote_left_anim;\\n\\tselect -add head2:cornerCompress_left_anim;\\n\\tselect -add head2:uprLip_left_anim;\\n\\tselect -add head2:uprLip_right_anim;\\n\\tselect -add head2:mouthEmote_rig"
		+ "ht_anim;\\n\\tselect -add head2:cornerCompress_right_anim;\\n\\tselect -add head2:uprLip_center_anim;\\n\\tselect -add head2:lwrLip_left_anim;\\n\\tselect -add head2:lwrLip_right_anim;\\n\\tselect -add head2:lwrLip_center_anim;\\n\\tselect -add head2:cheek_left_anim;\\n\\tselect -add head2:cheek_right_anim;\\n\\tselect -add head2:sneer_left_anim;\\n\\tselect -add head2:sneer_right_anim;\\n\\tselect -add head2:eyeSqueeze_left_anim;\\n\\tselect -add head2:eyeSqueeze_right_anim;\\n\\tselect -add head2:lwrTeeth_anim;\\n\\tselect -add head2:uprTeeth_anim;\\n\\t//ENDSELECT\\n\\t\\n\\t//ACTIONS_END\\n}\\n//TRIGGER_END_002\\n//TRIGGER_003\\nif (size(`match \\\"\\\\\\\\^head2:lwr_Select_pick\\\\\\\\^\\\" $selString`)) {;\\n\\t//ACTIONS_BEGIN\\n\\tselect -d head2:lwr_Select_pick;\\n\\t\\n\\t//SELECT\\n\\tselect -add head2:jaw_anim;\\n\\tselect -add head2:mouthSeal_anim;\\n\\tselect -add head2:mouthMove_anim;\\n\\tselect -add head2:mouthEmote_left_anim;\\n\\tselect -add head2:cornerCompress_left_anim;\\n\\tselect -add head2:uprLip_left_anim;\\n\\tselect -add head2:uprLip_right_anim;\\n\\tse"
		+ "lect -add head2:mouthEmote_right_anim;\\n\\tselect -add head2:cornerCompress_right_anim;\\n\\tselect -add head2:uprLip_center_anim;\\n\\tselect -add head2:lwrLip_left_anim;\\n\\tselect -add head2:lwrLip_right_anim;\\n\\tselect -add head2:lwrLip_center_anim;\\n\\tselect -add head2:cheek_left_anim;\\n\\tselect -add head2:cheek_right_anim;\\n\\tselect -add head2:sneer_left_anim;\\n\\tselect -add head2:sneer_right_anim;\\n\\tselect -add head2:lwrTeeth_anim;\\n\\tselect -add head2:uprTeeth_anim;\\n\\t//ENDSELECT\\n\\t\\n\\t//ACTIONS_END\\n}\\n//TRIGGER_END_003\\n//TRIGGER_004\\nif (size(`match \\\"\\\\\\\\^head2:tongue01_picker\\\\\\\\^\\\" $selString`)) {;\\n\\t//ACTIONS_BEGIN\\n\\tselect -d head2:tongue01_picker;\\n\\t\\n\\t//SELECT\\n\\tselect -add head2:tongue01_anim;\\n\\t//ENDSELECT\\n\\t\\n\\t//ACTIONS_END\\n}\\n//TRIGGER_END_004\\n//TRIGGER_005\\nif (size(`match \\\"\\\\\\\\^head2:tongue03_picker\\\\\\\\^\\\" $selString`)) {;\\n\\t//ACTIONS_BEGIN\\n\\tselect -d head2:tongue03_picker;\\n\\t\\n\\t//SELECT\\n\\tselect -add head2:tongue03_anim;\\n\\t//ENDSELECT\\n\\t\\n\\t//ACTIONS_END\\n}\\n//TRIGGER_"
		+ "END_005\\n//TRIGGER_006\\nif (size(`match \\\"\\\\\\\\^head2:tongueShape_Picker\\\\\\\\^\\\" $selString`)) {;\\n\\t//ACTIONS_BEGIN\\n\\tselect -d head2:tongueShape_Picker;\\n\\t\\n\\t//SELECT\\n\\tselect -add head2:tongueShape_anim;\\n\\t//ENDSELECT\\n\\t\\n\\t//ACTIONS_END\\n}\\n//TRIGGER_END_006\\n//TRIGGER_007\\nif (size(`match \\\"\\\\\\\\^head2:tongueTipTweak_picker\\\\\\\\^\\\" $selString`)) {;\\n\\t//ACTIONS_BEGIN\\n\\tselect -d head2:tongueTipTweak_picker;\\n\\t\\n\\t//SELECT\\n\\tselect -add head2:tongueTipTweak_anim;\\n\\t//ENDSELECT\\n\\t\\n\\t//ACTIONS_END\\n}\\n//TRIGGER_END_007\\n//TRIGGER_008\\nif (size(`match \\\"\\\\\\\\^head2:upr_Select_pick\\\\\\\\^\\\" $selString`)) {;\\n\\t//ACTIONS_BEGIN\\n\\tselect -d head2:upr_Select_pick;\\n\\t\\n\\t//SELECT\\n\\tselect -add head2:center_uprLid_left_anim;\\n\\tselect -add head2:inner_uprLid_left_anim;\\n\\tselect -add head2:outer_uprLid_left_anim;\\n\\tselect -add head2:center_lwrLid_left_anim;\\n\\tselect -add head2:outer_lwrLid_left_anim;\\n\\tselect -add head2:inner_lwrLid_left_anim;\\n\\tselect -add head2:blink_left_anim;\\n\\tselect -add head2:ce"
		+ "nter_uprLid_right_anim;\\n\\tselect -add head2:inner_uprLid_right_anim;\\n\\tselect -add head2:outer_uprLid_right_anim;\\n\\tselect -add head2:center_lwrLid_right_anim;\\n\\tselect -add head2:outer_lwrLid_right_anim;\\n\\tselect -add head2:inner_lwrLid_right_anim;\\n\\tselect -add head2:blink_right_anim;\\n\\tselect -add head2:browInner_left_anim;\\n\\tselect -add head2:browOuter_left_anim;\\n\\tselect -add head2:browMidTweak_left_anim;\\n\\tselect -add head2:browInner_right_anim;\\n\\tselect -add head2:browOuter_right_anim;\\n\\tselect -add head2:browMidTweak_right_anim;\\n\\tselect -add head2:eyeSqueeze_left_anim;\\n\\tselect -add head2:eyeSqueeze_right_anim;\\n\\tselect -add head2:uprLidAll_right_anim;\\n\\tselect -add head2:uprLidAll_left_anim;\\n\\tselect -add head2:lwrLidAll_right_anim;\\n\\tselect -add head2:lwrLidAll_left_anim;\\n\\t//ENDSELECT\\n\\t\\n\\t//ACTIONS_END\\n}\\n//TRIGGER_END_008\\n\\t//END_TRIGGERS\\n}\\nscriptJob -cu 1 -kws -e \\\"SelectionChanged\\\" \\\"btrTrigGrp_faceTriggers__head2_btrTrigProc\\\";\""
		)
		2 "head2:btrTrigGrp_faceTriggers" "after" " -type \"string\" \"proc btrTrigGrp_faceTriggers__head2_btrTrigKillProc() {\\n\\tstring $scriptJobList[] = `scriptJob -lj`;\\n\\tfor ($job in $scriptJobList) {\\n\\t\\tstring $num = `match \\\"^[0-9]*[^:]*\\\" $job`;\\n\\t\\tstring $matchStr = \\\"\\\\\\\"SelectionChanged\\\\\\\" \\\\\\\"btrTrigGrp_faceTriggers__head2_btrTrigProc\\\\\\\"\\\";\\n\\t\\tstring $match = (`match $matchStr $job`);\\n\\t\\tif (size($match) > 0)\\n\\t\\t\\tscriptJob -k ((int)$num);\\n\\t}\\n}\\nbtrTrigGrp_faceTriggers__head2_btrTrigKillProc;\""
		
		5 4 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.translateX" 
		"headRN.placeHolderList[1]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.translateY" 
		"headRN.placeHolderList[2]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.translateZ" 
		"headRN.placeHolderList[3]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.rotateX" 
		"headRN.placeHolderList[4]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.rotateY" 
		"headRN.placeHolderList[5]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.rotateZ" 
		"headRN.placeHolderList[6]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.rotateOrder" 
		"headRN.placeHolderList[7]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.parentInverseMatrix" 
		"headRN.placeHolderList[8]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.parentInverseMatrix" 
		"headRN.placeHolderList[9]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.rotatePivot" 
		"headRN.placeHolderList[10]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.rotatePivotTranslate" 
		"headRN.placeHolderList[11]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.scaleX" 
		"headRN.placeHolderList[12]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.scaleY" 
		"headRN.placeHolderList[13]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:ConstrainMeToNeck_grp.scaleZ" 
		"headRN.placeHolderList[14]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.translateX" 
		"headRN.placeHolderList[15]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.translateY" 
		"headRN.placeHolderList[16]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.translateZ" 
		"headRN.placeHolderList[17]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.rotateX" 
		"headRN.placeHolderList[18]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.rotateY" 
		"headRN.placeHolderList[19]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.rotateZ" 
		"headRN.placeHolderList[20]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.rotateOrder" 
		"headRN.placeHolderList[21]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.parentInverseMatrix" 
		"headRN.placeHolderList[22]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.parentInverseMatrix" 
		"headRN.placeHolderList[23]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.rotatePivot" 
		"headRN.placeHolderList[24]" ""
		5 3 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.rotatePivotTranslate" 
		"headRN.placeHolderList[25]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.scaleX" 
		"headRN.placeHolderList[26]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.scaleY" 
		"headRN.placeHolderList[27]" ""
		5 4 "headRN" "|head2:FacialRig_grp|head2:eye_masterIK_worldSpace_loc.scaleZ" 
		"headRN.placeHolderList[28]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode displayLayer -n "doNotTouch";
	setAttr ".dt" 1;
	setAttr ".do" 1;
createNode groupId -n "groupId1744";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1748";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1937";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2021";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2029";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2037";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2041";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2061";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2065";
	setAttr ".ihi" 0;
createNode groupId -n "FIXMEJOSH_groupId1308";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage41";
	setAttr -s 2 ".i1[0:1]"  -8.8956137e-15 0;
	setAttr -s 2 ".i3[0:1]" -type "float3"  0 0 0 0 0 0;
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage40";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide60";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide61";
createNode unitConversion -n "FIXMEJOSH_arms_LeftArm_unitConversion35";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_halfX_axis1";
createNode unitConversion -n "FIXMEJOSH_arms_LeftArm_unitConversion36";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_arms_LeftArm_unitConversion37";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_devideformiddlejoints1";
createNode unitConversion -n "FIXMEJOSH_arms_LeftArm_unitConversion38";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_arms_RightArm_unitConversion43";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_halfX_axis1";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode unitConversion -n "FIXMEJOSH_arms_RightArm_unitConversion44";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_arms_RightArm_unitConversion45";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_devideformiddlejoints1";
createNode unitConversion -n "FIXMEJOSH_arms_RightArm_unitConversion46";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide62";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide63";
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage42";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide65";
	setAttr ".i2" -type "float3" 0 -0.5 1 ;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide64";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "FIXMEJOSH_arms_LeftArm_reverse5";
createNode unitConversion -n "FIXMEJOSH_arms_unitConversion25";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_arms_unitConversion26";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide66";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide67";
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage43";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide68";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "FIXMEJOSH_arms_LeftArm_reverse6";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide70";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide69";
createNode plusMinusAverage -n "FIXMEJOSH_arms_LeftArm_plusMinusAverage44";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "FIXMEJOSH_arms_LeftArm_multiplyDivide71";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode reverse -n "FIXMEJOSH_arms_LeftArm_reverse7";
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_multiplyDivide59";
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_multiplyDivide58";
createNode plusMinusAverage -n "FIXMEJOSH_arms_RightArm_plusMinusAverage37";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "FIXMEJOSH_arms_RightArm_reverse2";
createNode multiplyDivide -n "FIXMEJOSH_arms_RightArm_multiplyDivide60";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "FIXMEJOSH_legs_LeftLeg_unitConversion35";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_legs_LeftLeg_multiplyDivide49";
createNode unitConversion -n "FIXMEJOSH_legs_LeftLeg_unitConversion34";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "FIXMEJOSH_legs_RightLeg_unitConversion35";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_legs_RightLeg_multiplyDivide49";
createNode unitConversion -n "FIXMEJOSH_legs_RightLeg_unitConversion34";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FIXMEJOSH_legs_LeftLeg_multiplyDivide50";
createNode multiplyDivide -n "FIXMEJOSH_legs_LeftLeg_multiplyDivide51";
createNode plusMinusAverage -n "FIXMEJOSH_legs_LeftLeg_plusMinusAverage34";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "FIXMEJOSH_legs_LeftLeg_reverse4";
createNode multiplyDivide -n "FIXMEJOSH_legs_LeftLeg_multiplyDivide52";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode multiplyDivide -n "FIXMEJOSH_legs_RightLeg_multiplyDivide50";
createNode multiplyDivide -n "FIXMEJOSH_legs_RightLeg_multiplyDivide51";
createNode plusMinusAverage -n "FIXMEJOSH_legs_RightLeg_plusMinusAverage38";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode reverse -n "FIXMEJOSH_legs_reverse2";
createNode multiplyDivide -n "FIXMEJOSH_legs_RightLeg_multiplyDivide52";
	setAttr ".i2" -type "float3" 0.5 -0.5 1 ;
createNode script -n "Morpheus_spine_Prim_0";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -s false -ci true -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -sn "start" -ln "start" -at "message";
	addAttr -s false -ci true -sn "end" -ln "end" -at "message";
	addAttr -s false -ci true -sn "shoulderCntrl" -ln "shoulderCntrl" -at "message";
	addAttr -s false -ci true -sn "hipsCntrl" -ln "hipsCntrl" -at "message";
	addAttr -s false -ci true -sn "rig_spine_0FK1" -ln "rig_spine_0FK1" -at "message";
	addAttr -s false -ci true -sn "rig_spine_0FK2" -ln "rig_spine_0FK2" -at "message";
	addAttr -s false -ci true -sn "rig_spine_0FK3" -ln "rig_spine_0FK3" -at "message";
	setAttr -l on ".name" -type "string" "Morpheus_spine";
createNode script -n "Morpheus_neck_Prim_0";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -s false -ci true -sn "start" -ln "start" -at "message";
	addAttr -s false -ci true -sn "end" -ln "end" -at "message";
	addAttr -s false -ci true -sn "neckFKCntrl" -ln "neckFKCntrl" -at "message";
	addAttr -s false -ci true -sn "neckIKCntrl" -ln "neckIKCntrl" -at "message";
	setAttr -l on ".name" -type "string" "Morpheus_neck";
createNode script -n "FIXMEJOSH_rtClickMenu";
	addAttr -ci true -sn "rtClick" -ln "rtClick" -dt "string";
	setAttr ".b" -type "string" (
		"JTDrunScripts;\nglobal proc JTDrunScripts()\n{\nstring $JTDnameSpace = \"\";\nstring $refs[] = `file -q -r`;\nfor($ref in $refs) \n{\n\t$JTDnameSpace = (`file -q -ns $ref` + \":\");\n\tif(!`objExists(($JTDnameSpace+\"rtClickMenu\"))`) $JTDnameSpace = \"\";\n}\nif ((getApplicationVersionAsFloat() >= 7.0) && (getApplicationVersionAsFloat() < 8.0))\n{\n\tscriptNode -executeBefore ($JTDnameSpace+\"dagMenuProc7\");\n}\nelse if ((getApplicationVersionAsFloat() >= 8.0) && (getApplicationVersionAsFloat() < 9.0))\n{\n\tscriptNode -executeBefore ($JTDnameSpace+\"dagMenuProc8\");\n}\n}\nglobal proc JTDdynParentSnap(string $control, int $enum)\n{\nfloat $JTDpos[];\nfloat $JTDrot[];\nint $onOff;\n$JTDpos = `xform -q -ws -rp $control`;\n$JTDrot = `xform -q -ws -ro $control`;\nif(objExists(($control+\".autoStretch\"))) {$onOff = `getAttr ($control+\".autoStretch\")`; setAttr ($control+\".autoStretch\") 0;}\nsetAttr ($control+\".Parent\") $enum;\nmove -a -ws -rpr $JTDpos[0] $JTDpos[1] $JTDpos[2] $control;\nrotate -a -ws $JTDrot[0] $JTDrot[1] $JTDrot[2] $control;\nif(objExists(($control+\".autoStretch\"))) setAttr ($control+\".autoStretch\") $onOff;\n"
		+ "}\nglobal proc JTDfollowSnap(string $control, int $enum)\n{\nfloat $JTDrot[];\n$JTDrot = `xform -q -ws -ro $control`;\nsetAttr ($control+\".Follow\") $enum;\nrotate -a -ws $JTDrot[0] $JTDrot[1] $JTDrot[2] $control;\n}\nproc JTDmatchFKIK(string $JTDswitcher, string $JTDupSW, string $JTDmidSW, string $JTDlowSW, string $JTDupFK, string $JTDmidFK, string $JTDlowFK, string $JTDupIK, string $JTDmidIK)\n{\nif(getAttr(($JTDswitcher+\".IKFK\")) != 0){\nfloat $upStretch = `getAttr ($JTDupIK+\".stretch\")`;\nfloat $midStretch = `getAttr ($JTDmidIK+\".stretch\")`;\nfloat $upRot[] = `xform -q -ws -ro $JTDupSW`;\nfloat $midRot[] = `xform -q -ws -ro $JTDmidSW`;\nfloat $lowRot[] = `xform -q -ws -ro $JTDlowSW`;\nrotate -a -ws $upRot[0] $upRot[1] $upRot[2] $JTDupFK;\nrotate -a -ws $midRot[0] $midRot[1] $midRot[2] $JTDmidFK;\nrotate -a -ws $lowRot[0] $lowRot[1] $lowRot[2] $JTDlowFK;\nsetAttr ($JTDupFK+\".stretch\") $upStretch;\nsetAttr ($JTDmidFK+\".stretch\") ($midStretch);\nsetAttr ($JTDswitcher+\".IKFK\") 0;}\nselect -r $JTDlowFK;\n}\nproc JTDmatchIKFK(string $JTDswitcher, string $JTDIKpos, string $JTDIKcntrl, string $JTDPV, string $JTDPVpos)\n"
		+ "{\nif(getAttr(($JTDswitcher+\".IKFK\")) != 1){\nfloat $lowRot[] = `xform -q -ws -ro $JTDIKpos`;\nfloat $lowPos[] = `xform -q -ws -rp $JTDIKpos`;\nfloat $midPos[] = `xform -q -ws -rp $JTDPVpos`;\nfloat $pivotPos[];\nif(objExists( ($JTDIKcntrl+\".js_pivotObj\") )) { $pivot = `js_pivot_get $JTDIKcntrl \"js_pivotObj\"`; $pivotPos[0] = `getAttr ($pivot+\".tx\")`; $pivotPos[1] = `getAttr ($pivot+\".ty\")`; $pivotPos[2] = `getAttr ($pivot+\".tz\")`; jd_pivot_reset($JTDIKcntrl);}\nmove -a -ws -rpr $lowPos[0] $lowPos[1] $lowPos[2] $JTDIKcntrl;\nrotate -a -ws $lowRot[0] $lowRot[1] $lowRot[2] $JTDIKcntrl;\nmove -a -ws -rpr $midPos[0] $midPos[1] $midPos[2] $JTDPV;\nsetAttr ($JTDswitcher+\".IKFK\") 1;\nif(objExists( ($JTDIKcntrl+\".js_pivotObj\") )) {$pivot = `js_pivot_get $JTDIKcntrl \"js_pivotMovObj\"`; setAttr ($pivot+\".tx\") $pivotPos[0]; setAttr ($pivot+\".ty\") $pivotPos[1]; setAttr ($pivot+\".tz\") $pivotPos[2]; js_pivot_snap($JTDIKcntrl, 0);}\n}\nselect -r $JTDIKcntrl;\n}\n");
	setAttr ".st" 1;
	setAttr -l on ".rtClick" -type "string" "rtClickMenu";
createNode script -n "FIXMEJOSH_dagMenuProc7";
	setAttr ".b" -type "string" (
		"proc optionalDagMenuProc( string $parent, string $item )\n{\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tstring $shape = \"\";\n\tint $gotVisible = 0;\n\tif( size($object) < 1 ) return;\n\tfor( $i=0; $i<size($object); $i+=1) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor( $i=0; $i<size($object); $i+=1) {\n\t\t\tif( 0 == getAttr($object[$i] + \".io\")) {\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tif( \"\" != $shape ) {\n\t\tstring $nt = `nodeType $shape`;\n\t\tswitch( $nt ) {\n\t\t  case \"subdiv\":\n\t\t\tsubdOptionalDagMenuProc( $parent, $item );\n\t\t\tmenuItem -d true; \n\t\t\tbreak;\n\t\t  default:\n\t\t\t// Check to make sure we have a kPlugin prefix\n\t\t\tstring $apiNt = `nodeType -api $shape`;\n\t\t\tif ( startsWith( $apiNt, \"kPlugin\" ) ) {\n\t\t\t\tstring $nodeMenuCommand = $nt + \"DagMenuProc\";\n\t\t\t\tstring $nodeMenuCommandWithArgs = $nodeMenuCommand + \"(\\\"\" + $parent + \"\\\" , \\\"\" + $item + \"\\\" )\";\n"
		+ "\t\t\t\tif ( exists( $nodeMenuCommand ) ) {\n\t\t\t\t   eval( $nodeMenuCommandWithArgs );\n\t\t\t\t}\n\t\t\t}\n\t\t\tbreak;\n\t\t}\n\t}\n}\nproc int objectIsTrimmed(string $item)\n// Return true if this is a trimmed surface\n{\n\tstring $command = (\"getAttr -size \" + $item + \".trimFace\");\n\tint $trimCount = eval($command);\n\treturn ($trimCount != 0);\n}\nproc string getControlledHandle(string $item)\n{\n\tstring $handle;\n\tif (size(`ls ($item+\".ikBlend\")`)) {\n\t\tstring $connHandles[] =\n\t\t\t`listConnections -type ikHandle ($item+\".ikBlend\")`;\n\t\tif (size($connHandles)) {\n\t\t\t$handle = $connHandles[0];\n\t\t}\n\t}\n\treturn $handle;\n}\nproc int isIKcontroller(string $item)\n{\n\tstring $handle = getControlledHandle($item);\n\treturn (size($handle) > 0);\n}\nproc\ncreateFBIKmenuItems(string $parent,\n\t\t\t\t\tstring $item,\n\t\t\t\t\tstring $ikReachModeLocation,\n\t\t\t\t\tstring $keyBodyPartLocation,\n\t\t\t\t\tstring $keyAllLocation,\n\t\t\t\t\tstring $keySelectedLocation)\n{\n\tstring $reachKeyingMode = \"Reach Mode:\";\n\tint $rkm = `optionVar -q setIKKey`;\n\tswitch ($rkm)\n\t{\n\t\tcase 1:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" IK\";\n"
		+ "\t\t\tbreak;\n\t\tcase 2:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" FK\";\n\t\t\tbreak;\n\t\tcase 3:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" Simple\";\n\t\t\tbreak;\n\t}\t\n\tmenuItem -rp $ikReachModeLocation -l $reachKeyingMode\n\t\t-subMenu true\n\t\t-annotation \"Determine how reach values get keyed when doing FBIK keying.\";\n\t\tmenuItem -rp \"S\" -label \"IK (Reach = 1)\"\n\t\t\t-command FBIKReachKeyingOptionIK;\n\t\tmenuItem -rp \"N\" -label \"FK (Reach = 0)\"\n\t\t\t-command FBIKReachKeyingOptionFK;\n\t\tmenuItem -rp \"E\" -label \"Simple (No Reach)\"\n\t\t\t-command FBIKReachKeyingOptionSimple;\n\tsetParent -m $parent;\n\t\n\tmenuItem -l \"Key All\"\n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"1\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyAllLocation\n\t\tkeyAllItem;\n\t\n\tmenuItem -l \"Key Body Part\"\n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"2\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyBodyPartLocation\n\t\tkeyBodyPartItem;\n\t\n\tmenuItem -l \"Key Selected\"\n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"4\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keySelectedLocation\n"
		+ "\t\tkeySelectedItem;\n}\nproc checkForSkinInfluenceItem(string $item, string $quadrant)\n{\n\tint $isJoint = (nodeType($item) == \"joint\");\n\t\n\t// Check if the current context is the skinPaint context \n\t// and the the joint is connected to a skinCluster\n\t//\n\tstring  $currContext = `currentCtx`;\n\tstring  $currTool    = \"\";\n\tif(`contextInfo -ex $currContext`) {\n\t\t$currTool = `contextInfo -c $currContext`;\n\t}\n\tif ( $currTool == \"artAttrSkin\" ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"skinWeights\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"skinCluster\")\n\t\t\t\t{\t\n\t\t\t\t\t// select the surface (not the joint) and set\n\t\t\t\t\t// the joint as the current influence\n\t\t\t\t\t//\n\t\t\t\t\tstring $currSel[] = `ls -sl`;\n\t\t\t\t\tstring $currSelString;\n\t\t\t\t\tif (size($currSel) > 0) {\n\t\t\t\t\t\tstring $currObj;\n\t\t\t\t\t\t$currSelString = \"select -r \";\n\t\t\t\t\t\tfor ($currObj in $currSel) {\n\t\t\t\t\t\t\t$currSelString += ($currObj+\" \");\n"
		+ "\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tmenuItem -l \"Paint Weights\"\n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t-c ($currSelString+\"; setSmoothSkinInfluence \" + $item)\n\t\t\t\t\t\t-rp $quadrant\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\t\t// menu for skinCluster paint\n\telse if ( $isJoint && ($currTool == \"artAttr\") ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"general\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"jointCluster\")\n\t\t\t\t{\n\t\t\t\t\tstring $artCommand = \"artAttrCtx\" ;\n\t\t\t\t\tstring $attribute = \"cluster.\" + $conn +  \".weights\" ;\n\t\t\t\t\tmenuItem -l \"Paint Weights\"\n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n\t\t\t\t\t\t//-c (\"artAttrCtx -e -pas \\\"cluster.\" + $conn +  \".weights\\\" `currentCtx`\")\n\t\t\t\t\t\t-c (\"artSetToolAndSelectAttr( \\\"\" + $artCommand + \"\\\", \\\"\" + $attribute + \"\\\" )\")\n\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n\t// menu for joint-set paint\n"
		+ "\t// Check if the current context is the setPaint context \n\t// and the the joint is connected to a objectSet via jointCluster\n\t//\n\telse if ( $isJoint && ($currTool == \"artSetPaint\") ) {\n\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\tstring $conn;\n\t\tfor($conn in $connL) {\n\t\t\tif (`nodeType $conn` == \"jointCluster\") {\t\n\t\t\t\tstring $connS[] = `listConnections ($conn+\".message\")`;\n\t\t\t\tfor($set in $connS) {\n\t\t\t\t\tif (`nodeType $set` == \"objectSet\") {\n\t\t\t\t\t\tmenuItem -l \"Paint Set Membership\"\n\t\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n\t\t\t\t\t\t\t//-c (\"artSetPaintCtx -e -settomodify \" + $set + \" `currentCtx`\")\n\t\t\t\t\t\t\t-c (\"artSetPaintSelectSet( \\\"\" + $set + \"\\\" )\")\n\t\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\t\tbreak;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n}\nglobal proc string[] objectSelectMasks(string $item)\n// Returns the component selection masks that apply to this object\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n"
		+ "\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tswitch ($nt) {\n\t\tcase \"lattice\":\n\t\t\t$maskList[0] = \"latticePoint\";\n\t\t\tbreak;\t\n\t\tcase \"locator\":\n\t\t\t$maskList[0] = \"locator\";\n\t\t\tbreak;\t\n\t\tcase \"nurbsCurve\":\n\t\t\t$maskList[0] = \"curveParameterPoint\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"editPoint\";\n\t\t\t$maskList[3] = \"hull\";\n\t\t\tbreak;\n\t\tcase \"nurbsSurface\":\n\t\t\t$maskList[0] = \"isoparm\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"surfaceParameterPoint\";\n\t\t\t$maskList[3] = \"hull\";\n\t\t\t$maskList[4] = \"surfaceFace\";\n\t\t\t$maskList[5] = \"surfaceUV\"; \n\t\t\tif (objectIsTrimmed($shape)) {\n\t\t\t\t$maskList[6] = \"surfaceEdge\";\n"
		+ "\t\t\t}\n\t\t\tbreak;\n\t\tcase \"mesh\":\n\t\t\t$maskList[0] = \"edge\";\n\t\t\t$maskList[1] = \"vertex\";\n\t\t\t$maskList[2] = \"facet\";\n\t\t\t$maskList[3] = \"puv\";\n\t\t\t$maskList[4] = \"pvf\";\n\t\t\tbreak;\n\t\tcase \"joint\":\n\t\t\t$maskList[0] = \"joint\";\t\t// special case\n\t\t\tbreak;\n\t\tcase \"ikHandle\":\n\t\t\t$maskList[0] = \"ikHandle\";\t// special case\n\t\t\tbreak;\n\t\tcase \"hikEffector\":\n\t\tcase \"hikFloorContactMarker\":\n\t\t\t$maskList[0] = \"hikEffector\";\t// special case\n\t\t\tbreak;\n\t\tcase \"particle\":\n\t\t\t$maskList[0] = \"particle\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"spring\":\n\t\t\t$maskList[0] = \"springComponent\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"subdiv\":\n \t\t\t$maskList[0] = \"subdivMeshPoint\";\t\n \t\t\t$maskList[1] = \"subdivMeshEdge\";\t\n \t\t\t$maskList[2] = \"subdivMeshFace\";\t\n \t\t\t$maskList[3] = \"subdivMeshUV\";\t\n\t\t\tbreak;\n\t}\n\tif (isIKcontroller($item)) {\n\t\t$maskList[size($maskList)] = \"ikfkHandle\";\n\t}\n\treturn $maskList;\n}\nglobal proc createSelectMenuItems(string $parent, string $item)\n// Create a menu that shows the dag parenting for this object\n{\n\tstring $maskList[] = `objectSelectMasks($item)`;\n"
		+ "\tstring $radialPosition[];\n\tstring $uiName;\n\tint $i;\n\tint $isNurbObject     = false;\n\tint $isPolyObject     = false;\n\tint $isLatticeObject  = false;\n\tint $isJointObject    = false;\n\tint $isHikEffector\t  = false;\n\tint $isIkHandleObject = false;\n\tint $isIkFkHandleObject = false;\t\n\tint $isParticleObject = false;\n\tint $isSpringObject   = false;\n\tint $isSubdivObject   = false;\n\tint $isLocatorObject  = false;\n\tint $hasComponents\t  = false;\n\tif (1 <= size($maskList)) {\n\t\t$isLatticeObject = ($maskList[0] == \"latticePoint\");\n\t\t$isJointObject = ($maskList[0] == \"joint\");\n\t\t$isHikEffector = ($maskList[0] == \"hikEffector\");\n\t\t$isIkHandleObject = ($maskList[0] == \"ikHandle\");\n\t\t$isParticleObject = ($maskList[0] == \"particle\");\n\t\t$isSpringObject = ($maskList[0] == \"springComponent\");\n\t\t$isSubdivObject = ($maskList[0] == \"subdivMeshPoint\");\n\t\t$isLocatorObject = ($maskList[0] == \"locator\");\n\t}\n\tif (2 <= size($maskList)) {\n\t\t$isNurbObject = ($maskList[1] == \"controlVertex\");\n\t\t$isPolyObject = ($maskList[1] == \"vertex\");\n\t}\n\t// $maxRadialPos keeps track of how many octants of the\n"
		+ "\t// RMB marking menu will be populated\n\t//\n\tint $maskSize = size($maskList);\n\tint $maxRadialPos = size($maskList);\n\tif (($maskSize > 0) && ($maskList[$maskSize-1] == \"ikfkHandle\")) {\n\t\t$isIkFkHandleObject = true;\n\t\t$maxRadialPos--; // ikfkHandle does not populate like other masks\n\t}\n\t$hasComponents = $isLatticeObject || \n\t\t\t\t\t $isParticleObject ||\n\t\t\t\t\t $isSubdivObject ||\n\t\t\t\t\t $isSpringObject ||\n\t\t\t\t\t $isNurbObject ||\n\t\t\t\t\t $isPolyObject;\n\t// NOTE: \n\t//\t\t\tIf the object has selectable components, then the\n\t//\t\tradial position \"NE\" will be used for the menuItem:  \n\t//\t\t\"Revert back to object mode.\"\n\t//\n\tsetParent -menu $parent;\n\t$radialPosition[0] = \"N\";\n\t$radialPosition[1] = \"W\";\n\t$radialPosition[2] = \"S\";\n\t$radialPosition[3] = \"E\";\n\t$radialPosition[4] = \"SW\";\n\t$radialPosition[5] = \"SE\";\n\t$radialPosition[6] = \"NW\";\n\t$radialPosition[7] = \"NE\";\n\tif ($isNurbObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tswitch ($maskList[$i]) {\n\t\t\t\tcase \"surfaceParameterPoint\":\n\t\t\t\t\t$uiName = \"Surface Point\";\n\t\t\t\t\tbreak;\n"
		+ "\t\t\t\tcase \"curveParameterPoint\":\n\t\t\t\t\t$uiName = \"Curve Point\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"surfaceEdge\":\n\t\t\t\t\t$uiName = \"Trim Edge\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"surfaceFace\":\n\t\t\t\t\t$uiName = \"Surface Patch\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"surfaceUV\":\n\t\t\t\t\t$uiName = \"UV\";\n\t\t\t\tdefault:\n\t\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t}\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -l $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuNURBComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isPolyObject) {\n\t\t\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tswitch ($maskList[$i]) {\n\t\t\t  case \"puv\":\n\t\t\t\t$uiName = \"UV\";\n\t\t\t\tbreak;\n\t\t\t  case \"facet\":\n\t\t\t\t$uiName = \"Face\";\n\t\t\t\tbreak;\n\t\t\t  case \"pvf\":\n\t\t\t\t$uiName = \"Vertex Faces\";\n\t\t\t\tbreak;\n\t\t\t  default:\n\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -l $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n"
		+ "\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the poly is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"NW\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isLatticeObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t\tmenuItem -l $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuLatticeComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t} else if ($isJointObject) {\n\t\tstring $setCmd = `performSetPrefAngle 2`;\n\t\tstring $assumeCmd = `performAssumePrefAngle 2`;\t\t\n\t\t$setCmd += (\" \"+$item);\n\t\t$assumeCmd += (\" \"+$item);\n\t\tstring $jts[] = `ls -sl -type joint`;\n\t\tfor ($jointItem in $jts) {\n\t\t\tif ($jointItem != $item) {\n\t\t\t\t$setCmd += (\" \"+$jointItem);\n\t\t\t\t$assumeCmd += (\" \"+$jointItem);\n\t\t\t}\n\t\t}\n\t\tmenuItem -l \"Set Preferred Angle\"\n\t\t\t-echoCommand true\n\t\t\t-c ($setCmd)\n"
		+ "\t\t\t-rp \"N\"\n\t\t\tsetPrefAngleItem;\n\t\t\n\t\tmenuItem -l \"Assume Preferred Angle\"\n\t\t\t-echoCommand true\n\t\t\t-c ($assumeCmd)\n\t\t\t-rp \"S\"\n\t\t\tassumePrefAngleItem;\n\t\tstring $hikHandle[] = `listConnections -type hikHandle $item`;\n\t\tint $isFBIKjoint = (size($hikHandle) > 0);\n\t\tif ($isFBIKjoint) {\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t\t\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isHikEffector){\n\t\tif (nodeType($item) == \"hikFloorContactMarker\") {\n\t\t\tstring $parentItems[] = `listRelatives -pa -p $item`;\n\t\t\tif (size($parentItems) &&\n\t\t\t\tnodeType($parentItems[0]) == \"hikEffector\") {\n\t\t\t\t$item = $parentItems[0];\n\t\t\t} else {\n\t\t\t\t$isHikEffector = false;\n\t\t\t}\n\t\t}\n\t\tif ($isHikEffector) {\n\t\t    string $pivotOffsetPlug = $item + \".pivotOffset\";\n\t\t    float $pivotOffset[] = `getAttr $pivotOffsetPlug`;\n\t\t    int $enablePin = (equivalentTol($pivotOffset[0],0.0,0.001) &&\n"
		+ "\t\t                      equivalentTol($pivotOffset[1],0.0,0.001) &&\n\t\t                      equivalentTol($pivotOffset[2],0.0,0.001));\n\t\t    \n\t\t\t// set pinning for hikEffectors\n\t\t\tmenuItem -l \"Pin Both\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"3\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"N\"\n\t\t\t\tpinAllItem;\n\t\t\t\n\t\t\tmenuItem -l \"Pin Translate\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"1\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"NW\"\n\t\t\t\tpinTransItem;\n\t\t\t\n\t\t\tmenuItem -l \"Pin Rotate\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"2\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"SW\"\n\t\t\t\tpinRotItem;\n\t\t\t\n\t\t\tmenuItem -l \"Unpin\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"0\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-rp \"S\"\n\t\t\t\tunpinItem;\n\t\t\t\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t} else if ($isLocatorObject) {\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n"
		+ "\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isIkHandleObject) {\n\t\tmenuItem -l \"Set Preferred Angle\"\n\t\t\t-annotation \"Set Preferred: Select ikHandles or joints\"\n\t\t\t-echoCommand true\n\t\t\t-c (`performSetPrefAngle 2` + \" \" + $item)\n\t\t\t-rp \"W\"\n\t\t\tsetPrefAngleItem;\n\t\tmenuItem -l \"Assume Preferred Angle\"\n\t\t\t-annotation \"Assume Preferred: Select ikHandles or joints\"\n\t\t\t-echoCommand true\n\t\t\t-c (`performAssumePrefAngle 2` + \" \" + $item)\n\t\t\t-rp \"E\"\n\t\t\tassumePrefAngleItem;\n\t\tmenuItem -l \"Enable ikHandle\"\n\t\t\t-annotation \"Enable IK Handles: Select ikHandles\"\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -eh \" + $item)\n\t\t\t-rp \"N\"\n\t\t\tenableIKHandlesItem;\n\t\tmenuItem -l \"Disable ikHandle\"\n\t\t\t-annotation \"Disable IK Handles: Select ikHandles\"\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -dh \" + $item)\n\t\t\t-rp \"S\"\n\t\t\tdisableIKHandlesItem;\n\t\tmenuItem -l \"Enable Snap\"\n\t\t\t-annotation \"Enable IK Handle Snapping: Select ikHandles\"\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -see \" + $item + \";\" +\n\t\t\t\t\"ikHandle -e -shf on \" + $item)\n\t\t\t-rp \"SE\"\n"
		+ "\t\t\tenableIKHandlesSnapItem;\n\t\tmenuItem -l \"Disable Snap\"\n\t\t\t-annotation \"Disable IK Handle Snapping: Select ikHandles\"\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -shf off \" + $item)\n\t\t\t-rp \"SW\"\n\t\t\tdisableIKHandlesSnapItem;\n\t\t$maxRadialPos = 6;\n\t} else if ($isParticleObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tswitch ($maskList[$i]) {\n\t\t\t\tcase \"particle\":\n\t\t\t\t\t$uiName = \"Particle\";\n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t}\n\t\t\tmenuItem -l $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuParticleComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} else if ($isSpringObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tswitch ($maskList[$i]) {\n\t\t\t\tcase \"springComponent\":\n\t\t\t\t\t$uiName = \"Spring\";\n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\t}\n\t\t\tmenuItem -l $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuSpringComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n"
		+ "\t\t}\n\t} else if ($isSubdivObject) {\n\t\tsubdDagMenuProc( 0, $item, $maskList );\n\t} else {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] == \"ikfkHandle\") {\n\t\t\t\tcontinue;\n\t\t\t}\n\t\t\t\n\t\t\t$uiName = `interToUI $maskList[$i]`;\n\t\t\tmenuItem -l $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} \n\t// If components are present, provide the ability to \n\t// get back to object mode...\n\t//\n\tif ($hasComponents) {\n\t\tmenuItem -l \"Object Mode\"\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"hilite -unHilite \" + $item + \"; string $selection[] = `ls -sl`;\"\n\t\t\t\t\t+ \"changeSelectMode -object; select -r $selection;\" )\n\t\t\t\t-rp \"NE\";\n\t}\n\t// Since any object can be an ikfk handle, we only populate the ikfk items\n\t// in slots that are not already in use.\n\t//\n\tif ($isIkFkHandleObject) {\n\t\tstring $handle = getControlledHandle($item);\n\t\tif ($maxRadialPos < 8) {\n\t\t\tmenuItem -label \"Set IK/FK Key\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation \"Set keys on selected joint chains and handles.\"\n"
		+ "\t\t\t\t-rp $radialPosition[7]\n\t\t\t\t-command (\"select -r \"+$item+\"; SetIKFKKeyframe\");\n\t\t}\n\t\tif ($maxRadialPos < 7) {\n\t\t\tmenuItem -label \"Move IK to FK\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation \"Select an IK handle or IK/FK connected object.\"\n\t\t\t\t-rp $radialPosition[6]\n\t\t\t\t-command (\"select -r \"+$item+\"; MoveIKtoFK\");\n\t\t}\n\t\tif ($maxRadialPos < 5) {\n\t\t\tmenuItem -l \"Disable ikHandle\"\n\t\t\t\t-annotation \"Disable IK Handle\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -dh \" + $handle)\n\t\t\t\t-rp $radialPosition[5];\n\t\t\tmenuItem -l \"Enable ikHandle\"\n\t\t\t\t-annotation \"Enable IK Handle\"\n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -eh \" + $handle)\n\t\t\t\t-rp $radialPosition[4];\n\t\t}\n\t}\n\t\n\t\n//\tfor ($i = 0; $i < size($maskList); $i++) {\n//       $itemName = \"SELM\" + string($i);\n//\t\t\tsetParent -menu $parent;\n//\t\t\tmenuItem\n//\t\t\t\t-c (\"doMenuComponentSelection(\\\"\" + \n//\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n//\t\t\t\t-l $maskList[$i]\n//\t\t\t\t-rp $radialPosition[$i]\n//\t\t\t\t$itemName;\n//\t}\n\tsetParent -menu $parent;\n}\nglobal proc doMenuNURBComponentSelection(string $item, string $mask)\n"
		+ "//\n// Change the selection/display state to allow selection of NURB components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t// UVs are not selectable. So issue a warning.\n\t\t//\n\t\tif( $mask == \"surfaceUV\" )\n\t\t{\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t\tstring $warn = \"Edit UV Mode is not enabled on \";\n\t\t\t\t$warn += $item;\n\t\t\t\t$warn += \". UVs will not be selectable.\";\n\t\t\t\twarning($warn);\n\t\t\t}\n\t\t}\n\t} else {\n\t\tselectType -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -isoparm 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"surfaceUV\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -uv \" + $item + \";\";\n"
		+ "\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\"; \n\t\t\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t\t\t//\n\t\t\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\t\t\tif( !$isExplicit[0] )\n\t\t\t\t\t{\n\t\t\t\t\t\tstring $warn = \"Edit UV Mode is not enabled on \";\n\t\t\t\t\t\t$warn += $item;\n\t\t\t\t\t\t$warn += \". UVs will not be selectable.\";\n\t\t\t\t\t\twarning($warn);\n\t\t\t\t\t}\n\t\t\t\t\tbreak; \n\t\t\t\tcase \"editPoint\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"controlVertex\":\n"
		+ "\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"hull\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item + \";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n"
		+ "\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t//\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t\tstring $warn = \"Edit UV Mode is not enabled on \";\n\t\t\t\t$warn += $item;\n\t\t\t\t$warn += \". UVs will not be selectable.\";\n\t\t\t\twarning($warn);\n\t\t\t}\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuLatticeComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n// selection of the Lattice control points\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"toggle -\" + $mask + \";\"; \n"
		+ "\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuParticleComponentSelection(string $item, string $mask)\n//\n// Change the selection/display state to allow selection of particle\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -particle 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"particle\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -particle \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuSpringComponentSelection(string $item, string $mask)\n"
		+ "//\n// Change the selection/display state to allow selection of spring\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -springComponent 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"springComponent\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -springComponent \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n"
		+ "// selection of the specified selection mask type.\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc undoMenuComponentSelection(string $item, string $mask)\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" false;\";\n\t} else {\n\t\t$selectCmd = \"selectType -\" + $mask + \" false;\";\n\t}\n\teval $selectCmd;\n}\nglobal proc toggleBoundingBoxDisplay ( string $parent )\n//\n// For each shape under the selected parent object, toggle the\n// state of bounding box display mode.\n//\n{\n\tstring $shapes[] = `listRelatives -shapes $parent`;\n\tstring $shape;\n\tfor ( $shape in $shapes ) {\n\t\tint $overrideOn = `getAttr ( $shape + \".overrideEnabled\")`;\n\t\tint $lodMode =    `getAttr ( $shape + \".overrideLevelOfDetail\")`;\n"
		+ "\t\tint $enabled =     $overrideOn && $lodMode == 1;\n\t\tif ( $enabled ) {\n\t\t\t// Don't reset the overrideEnabled attribute. It\n\t\t\t// is used for more than just bounding box display\n\t\t\t// and turning if off will mess things up of you\n\t\t\t// have temporarily enabled bounding box display \n\t\t\t// of an object in a layer.\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\" ) 0;\n\t\t} else {\n\t\t\tsetAttr ( $shape + \".overrideEnabled\") 1;\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\") 1;\n\t\t}\n\t}\n}\nglobal proc createActionsMenuItems(string $parent, string $item)\n//\n// Creates a menu with common operations to perform on an object\n//\n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tmenuItem -l \"Template\" -c (\"toggle -template -state on \" + $item);\n\tmenuItem -l \"Untemplate\" -c (\"toggle -template -state off \" + $item);\n\tmenuItem -l \"Unparent\" -c (\"parent -w \" + $item);\n\tmenuItem -l \"Bounding Box\" -c (\"toggleBoundingBoxDisplay \" + $item);\n}\nglobal proc showSG(string $item)\n{\n\t//check selection list for faces (polys, subds, nurbs)\n"
		+ "\tstring $shader = \"\";\n\tstring $selection[] = `filterExpand -sm 34 -sm 38 -sm 72`;\n\t// If there are components selected, try to find a component shader\n\tif( size( $selection ) > 0)\n\t{\n\t\tstring $nameBuffer[];\n\t\tint $numComps = size( $selection );\n\t\tint $comp;\n\t\tfor( $comp = 0; $comp < $numComps; $comp++)\n\t\t{\n\t\t\ttokenize $selection[ $comp] \".\" $nameBuffer;\n\t\t\t//if the selected component is on the object under the pointer\n\t\t\t//get it's shader\n\t\t\tif ($nameBuffer[0] == $item) {\n\t\t\t\t$shader = `getComponentShader $selection[$comp]`;\n\t\t\t\t//check if the shader is already selected - only toggle\n\t\t\t\t//selection if it is not selected\n\t\t\t\tstring $shaderSelected[] = `ls -selection $shader`;\n\t\t\t\tif ( size( $shaderSelected ) == 0){\n\t\t\t\t\tselect -tgl $shader;\n\t\t\t\t\n\t\t\t\t}\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we didn't find a component level shader, try for an object level one\n\tif( size( $shader ) == 0 ) {\n\t\tstring $allNodes[] = (`listHistory -f true $item` );\n\t\tstring $node = \"\";\n\t\tfor ($node in $allNodes) {\n\t\t\tif(`nodeType $node` == \"shadingEngine\") {\n"
		+ "\t\t\t\t$shader = $node;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we found a shader, show it\n\tif( size( $shader ) > 0) \n\t{\n\t\tshowEditor $shader;\n\t}\n}\n\t\nglobal proc showBakeSets(string $item, string $type)\n{\n\tstring $possibleBakeSets[] = (`listHistory -f true $item` );\n\tstring $node = \"\";\n    int $bakeSetExists = false;\n\tfor ($node in $possibleBakeSets) {\n\t\tif(`nodeType $node` == $type)\n        {\n\t\t\tshowEditor $node;\n            $bakeSetExists = true;\n\t\t\tbreak;\n\t\t}\n\t}\n    // If no bake set exists for the $item, then create the\n    // initial bake set of that $type and assign it to the $item.\n    //\n    if (!$bakeSetExists)\n    {\n        string $initialBakeSet = \"\";\n\t\tif($type == \"vertexBakeSet\") \n        {\n            $initialBakeSet = \"initialVertexBakeSet\";\n        }\n        else if($type == \"textureBakeSet\") \n        {\n            $initialBakeSet = \"initialTextureBakeSet\";\n\t\t}\n        else\n        {\n            error   -showLineNumber true\n                (\"Bake set type \"+$type + \" does not exist.\");\n            return;\n        }\n"
		+ "        // Create it if it does not exist yet.\n        //\n        if  ( size(`ls $initialBakeSet`) < 1)\n        {\n            createBakeSet($initialBakeSet, $type);\n        } \n    \n        // Assign the initial bake set to the item.\n        //\n        assignBakeSet($initialBakeSet, $item);\n        // Show the initial bake set.\n        //\n        showBakeSetAE($initialBakeSet);\n    }\n}\nglobal proc createShaderMenuItems(string $parent, string $item)\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n\tmenuItem -l \"Material Attributes...\" -c (\"showSG \" + $item);\n\tmenuItem -d true;\n\tbuildShaderMenus($item);\n}\nglobal proc refreshBakingAttributeMenu (string $parent, string $item)\n{\n    setParent -menu $parent;\n    int $suitable = bakeSetTypeSuitableForItem(\"textureBakeSet\", $item);\n    menuItem -edit -enable $suitable textureBakingAttributeItem;\n    $suitable = bakeSetTypeSuitableForItem(\"vertexBakeSet\", $item);\n    menuItem -edit -enable $suitable vertexBakingAttributeItem;\n}\n// Description:  This procedure is called to create the \n"
		+ "//  baking attribute menu.\n//\nproc createBakingAttributeMenu(string $parent, string $item)\n{\n    setParent -menu $parent;\n\tmenuItem -l \"Edit Attributes...\" \n        -subMenu true\n        -tearOff true\n        -postMenuCommand (\"refreshBakingAttributeMenu \\\"\"\n                            +$parent+\"|editAttributeItem\\\" \\\"\"\n                            +$item+\"\\\"\")\n        editAttributeItem; \n        menuItem -l \"texture\" \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"textureBakeSet\\\"\") \n            textureBakingAttributeItem;\n        menuItem -l \"vertex\" \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"vertexBakeSet\\\"\") \n            vertexBakingAttributeItem;\n    setParent -menu ..;\n}\n// Description:  This procedure is called to create the baking\n//  menu items.\n//\nglobal proc createBakingMenuItems(string $parent, string $item)\n//\n//\tCreate the Baking menus for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n    createBakingAttributeMenu($parent, $item);\n\tmenuItem -d true;\n\tif (!`about -evalVersion`) {\n"
		+ "\t\tbuildBakingMenus($item);\n\t}\n}\n// Description:  This procedure is called to create the switch proxy\n//  menu items.\n//\nglobal proc createSwitchProxyMenuItems(string $parent, string $item, string $refNode)\n//\n//\tCreate the switch proxy submenu for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\tint $i;\n\tstring $proxyLabel;\n\tstring $proxyTag;\n\tfor( $i=0; $i<size($proxyNodes); $i+=1) {\n\t\t$proxyTag = `getAttr ($proxyNodes[$i] + \".proxyTag\")`;\n\t\t\n\t\tmenuItem -l $proxyTag -c (\"proxySwitch \" + $proxyNodes[$i]);\n\t}\n}\nglobal proc createHistoryMenuItems(string $parent, string $item)\n//\n// Creates a menu on the toolbar that shows a list of\n// all operations that took place to create/modify\n// the currently selected object.  Note that the list\n// is not being filtered yet to get rid of things that\n// users won't really care about, nor are the operations\n// being listed as operations - their DG node names are\n// simply being stuck into the menu.  This should\n"
		+ "// change.\n//\n// Also note that the chain of operations limit is being\n// hardcoded to 20 here, for the sake of speed.\n//\n{\n\t//\n\t// Delete all menu entries currently in the popup\n\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, false, 1 );\n}\nglobal proc createFutureMenuItems(string $parent, string $item)\n//\n// Also note that the chain of operations limit is being\n// hardcoded to 20 here, for the sake of speed.\n//\n{\n\t//\n\t// Delete all menu entries currently in the popup\n\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, true, 1 );\n}\nglobal proc string objectHandlesUvSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n"
		+ "\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createUVsetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyUVSet -currentUVSet -uvSet \";\n\tstring $curSet[] = `polyUVSet -q -currentUVSet $shape`;\n\tstring $names[] = `polyUVSet -q -auv $shape`;\n\tstring $allProjects[] = `polyUVSet -pr -q $shape`;\n\tstring $setClearCmd = \"\";\n\tif (size($allProjects))\n\t{\n\t\t$setClearCmd = \"select -d \";\t\t\n\t\tfor ($p=0; $p<size($allProjects); $p++)\n\t\t\t$setClearCmd += (\" \" + $allProjects[$p]);\n\t\t$setClearCmd += \";\";\n\t}\n\tint $numNames = size($names);\n\t// Add in a menu to do uv-linking\n\tif ($numNames > 0)\n\t{\t\n\t\tstring $ann = `getRunTimeCommandAnnotation \"UVCentricUVLinkingEditor\"`;\n\t\tstring $cmd = \"UVCentricUVLinkingEditor; \" + \"select -r \" + $item;\n\t\tmenuItem -l \"UV Linking...\"\n"
		+ "\t\t\t-c $cmd\n\t\t\t-annotation $ann;\n\t\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i<$numNames; $i++)\n\t{\n\t\tstring $uvEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $uvname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $uvEditname + \" \" + $shape + \";\";\n\t\t// Find any projections associated with the uvset\n\t\tstring $projs[];\n\t\t$projs = `polyUVSet -pr -uvs $uvname -q $shape`;\n\t\tstring $projCmd;\n\t\t// Add a divider between items\n\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($uvname == $curSet[0])\n\t\t{\n\t\t\tmenuItem -l ($uvname) -c $setClearCmd -checkBox true;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -l $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -l ($uvname) -c ($setClearCmd + $setCurCmd) -checkBox false;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setCurCmd + $setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -l $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n"
		+ "\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n}\n//\nglobal proc string objectHandlesColorSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createColorSetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyColorSet -currentColorSet -colorSet \";\n\tstring $curSet[] = `polyColorSet -q -currentColorSet $shape`;\n\tstring $names[] = `polyColorSet -q -acs $shape`;\n\tint $numNames = size($names);\n"
		+ "\t// Add in a menu to access color set editor\n\tmenuItem -l \"Color Set Editor...\"\n\t\t-ann (getRunTimeCommandAnnotation(\"ColorSetEditor\"))\n\t\t-command \"colorSetEditor\"\n\t\t;\n\tif ($numNames > 0)\n\t{\t\n\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i < $numNames; $i++)\n\t{\n\t\tstring $colorEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $colorname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $colorEditname + \" \" + $shape + \";\";\n\t\t// Add a divider between items\n\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($colorname == $curSet[0])\n\t\t{\n\t\t\tmenuItem -l ($colorname) -checkBox true;\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -l ($colorname) -c ($setCurCmd) -checkBox false;\n\t\t}\n\t}\n}\nglobal proc createArtAttrMenuItems(\n\tstring \t\t$parent, \n\tstring \t\t$item\n)\n//\n//\tDescription:\n// \t\tCreates a menu that shows all the paintable attributes.\n// \n//\tNOTE: paintAttr are sorted by the paintable node type.\n// \n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\t\n\t// add default items which are always displayed in the context menu\n\tmenuItem -p $parent -label \"Paint Select\" -command \"ArtPaintSelectToolOptions\" ;\n"
		+ "\tmenuItem -p $parent -label \"3D Paint\" -command \"Art3dPaintToolOptions\" ;\n\tmenuItem -p $parent -label \"Sculpt\" -command \"SculptGeometryToolOptions\" ;\n\t// Get all paintable attributes\n\tstring $paintAttr = `artBuildPaintMenu $item`;\n\t\n\tif ($paintAttr != \"\")\n\t{\n\t\t// if the menu item has not been created, create it.\n\t\tif( $parent == \"\" )\n\t\t\t$parent = `menuItem -subMenu true -aob true -l \"Paint\"`;\n\t\t\t\n\t\n\t\t// Create the menu.\n\t\tartAttrCreateMenuItems( $parent, $paintAttr );\n\t\t\n\t\t// artAttrCreateMenuItems currently does not use $object\n\t\t// hence we are making a seperate call to this function to handle\n\t\t// cloth objects. We need the object name to select the object and detect \n\t\t// dynamic attributes available for painting.\n\t\t//\n\t\tcreatePaintingMenuItems( $parent, $item );\n\t}\n}\n// This has been called because a menu press happened on a DAG object\n// So find the Object submenu and add the DAG specific items to it.\n//\nglobal proc dagMenuProc(string $parent, string $object)\n{\n\tglobal string $artSelectObject ;\n\tstring $mode = \"All\";\n"
		+ "\tif (`optionVar -exists currentMenuBarTab`) {\n\t\t$mode = `optionVar -q currentMenuBarTab`;\n\t} else {\n\t\toptionVar -sv currentMenuBarTab $mode;\n\t}\n\tif (`popupMenu -e -exists $parent`) {\n\t\tsetParent -m $parent;\n\t\t// label the object\n\t\tstring $shortName = `substitute \".*|\" $object \"\"`;\n\t\tmenuItem -l ($shortName + \"...\") -c (\"showEditor \"+$object);\n\t\tmenuItem -divider true;\n\t\tmenuItem -divider true;\n\t\t// Create the list of selection masks\n\t\tcreateSelectMenuItems($parent, $object);\n\t\tmenuItem -d true;\n\t\tmenuItem -l \"Select\" -c (\"select -r \" + $object);\n\t\tmenuItem -l \"Select Hierarchy\" -c (\"select -hierarchy \" + $object);\n\t\tmenuItem -d true;\n\t\tif( (objExists(($object+\".Parent\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n\t\t\t\twhile(`objExists( ($object+\".Parent_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Parent_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n"
		+ "\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Parent to: \"+$parent) -c (\"JTDdynParentSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tmenuItem -d true;\n\t\tif( (objExists(($object+\".Follow\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n\t\t\t\twhile(`objExists( ($object+\".Follow_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Follow_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Follow: \"+$parent) -c (\"JTDfollowSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".IKFK\") ))\n"
		+ "\t\t{\n\t\t\t\tstring $JTDupSW[] = `listConnections ($object+\".SWup\")`;\n\t\t\t\tstring $JTDmidSW[] = `listConnections ($object+\".SWmid\")`;\n\t\t\t\tstring $JTDupFK[] = `listConnections ($object+\".FKup\")`;\n\t\t\t\tstring $JTDmidFK[] = `listConnections ($object+\".FKmid\")`;\n\t\t\t\tstring $JTDlowFK[] = `listConnections ($object+\".FKlow\")`;\n\t\t\t\tstring $JTDupIK[] = `listConnections ($object+\".IKup\")`;\n\t\t\t\tstring $JTDmidIK[] = `listConnections ($object+\".IKmid\")`;\n\t\t\t\tstring $JTDIKpos[] = `listConnections ($object+\".IKpos\")`;\n\t\t\t\tstring $JTDIKcntrl[] = `listConnections ($object+\".IKcntrl\")`;\n\t\t\t\tstring $JTDPV[] = `listConnections ($object+\".PV\")`;\n\t\t\t\tstring $JTDPVpos[] = `listConnections ($object+\".PVsnapPos\")`;\n\t\t\t\tif( `getAttr($object+\".IKFK\")` == 0 ) menuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\telse if( `getAttr($object+\".IKFK\")` == 1 ) menuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n"
		+ "\t\t\t\telse \n\t\t\t\t{\n\t\t\t\t\t\tmenuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\t\t\tmenuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n\t\t\t\t}\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".js_pivotObj\") ) )\n\t\t{\n\t\t\tmenuItem -l \"Select Moveable Pivot\" -c (\"js_pivot_createMov (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Apply & Key Moved Pivot\" -c (\"js_pivot_snap (\\\"\"+$object+\"\\\", 1)\");\n\t\t\tstring $menu = `menuItem -subMenu true -aob true -l \"Pivot Options\"`;\n\t\t\tmenuItem -l \"Toggle Moveable Pivot Locator\" -c (\"js_pivot_mov_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Toggle Actual Pivot Locator\" -c (\"js_pivot_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Reset Pivot\" -c (\"jd_pivot_reset (\\\"\"+$object+\"\\\")\");\n\t\t\tsetParent -m $parent;\n\t\t\tmenuItem -d true;\n"
		+ "\t\t}\n\t\toptionalDagMenuProc( $parent, $object );\n\t\tstring $menu = `menuItem -subMenu true -aob true -l \"Inputs\"`;\n\t\tmenu -e \n\t\t\t-pmc ( \"createHistoryMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n\t\t$menu = `menuItem -subMenu true -aob true -l \"Outputs\"`;\n\t\tmenu -e -pmc ( \"createFutureMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n\t \t// Look at the shape child of this object\n\t \t//\n \t\tstring $shapes[] = `listRelatives -path -s $object`;\n\t\t// get current selection of shapes\n\t\tstring $currentSel[] = `ls -sl -dagObjects -shapes` ;\n\t\tstring $paintParent = \"\" ;\n\t\tint $selIndex  ;\n \t\tint $i;\n \t\tfor ($i = 0; $i < size($shapes); ++$i) \n\t\t{\n\t\t\tstring $nodeType = `nodeType $shapes[$i]` ;\n\t\t\tif ( ( $nodeType == \"nurbsSurface\") ||\n\t\t\t\t ( $nodeType == \"mesh\") ||\n\t\t\t\t ( $nodeType == \"subdiv\")) \n\t\t\t{\n\t\t\t\t// save the object name if it is not already selected by the user\n\t\t\t\t// We use this info to select the object if user chooses a paint option\n\t\t\t\t//\n\t\t\t\t// If user has selected multiple objects and is using context menu on one of them\n"
		+ "\t\t\t\t// we do not change the selection list as user may want to paint some attribute \n\t\t\t\t// on all of them. (It is the way it has been working all along...we don't want to \n\t\t\t\t// break it )\n\t\t\t\t\n\t\t\t\tint $found = 0 ;\n\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t{\n\t\t\t\t\tif( $shapes[$i] == $currentSel[ $selIndex  ] )\n\t\t\t\t\t{\n\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\tbreak ;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\tif( $found )\n\t\t\t\t{\n\t\t\t\t\t$artSelectObject = \"\" ;\n\t\t\t\t}\n\t\t\t\telse\n\t\t\t\t{\n\t\t\t\t\t// check if the object is in component selection mode\n\t\t\t\t\t// and if it is, do not do any further selection.\n\t\t\t\t\t// We are assuming that if the object is in hilite mode\n\t\t\t\t\t// then the user is in component selection mode.\n\t\t\t\t\t\n\t\t\t\t\t$currentSel = `ls -hilite` ;\n\t\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t\t{\n\t\t\t\t\t\tif( $object == $currentSel[ $selIndex  ] )\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\t\tbreak ;\n\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tif( !$found ) \n\t\t\t\t\t\t$artSelectObject = $object ;\n\t\t\t\t\telse\n\t\t\t\t\t\t$artSelectObject = \"\" ;\n"
		+ "\t\t\t\t}\n\t\t\t\t\n\t\t\t\t$paintParent = `menuItem -subMenu true -aob true -l \"Paint\"`;\n\t\t\t\tmenu -e\t-pmc ( \"createArtAttrMenuItems \\\"\"+ $paintParent +\"\\\" \"+$object ) $paintParent ;\n\t\t\t\tsetParent -m $parent;\n\t\t\t\tbreak ;\n\t\t\t}\n\t\t}\n\t    $menu = `menuItem -subMenu true -l \"Actions\"`;\n\t\tmenu -e -pmc ( \"createActionsMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n\t\t// If the object can handle uv sets then add the uvset menu\n\t\t//\n\t\tstring $shape = objectHandlesUvSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -l \"UV Sets\"`;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createUVsetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+\n\t\t\t\t\t  $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\tstring $shape = objectHandlesColorSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -l \"Color Sets\"`;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createColorSetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+\n\t\t\t\t\t  $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\t// Shader menu to be able to quickly assign existing shaders\n\t\t// to the object under the pointer.\n"
		+ "\t\t//\n    \tmenuItem -d true;\n \t\t$menu = `menuItem -subMenu true -l \"Materials\"`;\n \t\tmenu -e\n\t\t\t-pmc ( \"createShaderMenuItems \\\"\"+$menu+\"\\\" \"+$object )\n\t\t\t$menu;\n \t\tsetParent -m $parent;\n\t\tint $mentalIsLoaded = 0;\n\t\tstring $renderer;\n\t    for ($renderer in `renderer -query -namesOfAvailableRenderers`) {\n\t\t\tif( $renderer == \"mentalRay\" ) {\n\t\t\t\t$mentalIsLoaded = 1;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\tif ($mentalIsLoaded) {\n \t\t\t$menu = `menuItem -subMenu true -l \"Baking\"`;\n \t\t\tmenu -e\n\t\t\t\t-pmc ( \"createBakingMenuItems \\\"\"+$menu+\"\\\" \"+$object )\n\t\t\t\t$menu;\n \t\t\tsetParent -m $parent;\n\t\t}\n//\t\t{\n// \t\t\t$menu = `menuItem -subMenu true -l \"Paint\"`;\n//\t\t\tmenu -e\n//\t\t\t\t-pmc ( \"createPaintingMenuItems \\\"\"+$menu+\"\\\" \"+$object )\n//\t\t\t\t$menu;\n// \t\t\tsetParent -m $parent;\n//\t\t}\n\t\tif ($mode == \"Dynamics\") {\n\t\t\tmenuItem -d true;\n\t\t\tmenuItem -l \"Connect Field\" -c (\"connectDynamic -f \" + $object);\n\t\t\tmenuItem -l \"Connect Emitter\" -c (\"connectDynamic -em \" + $object);\n\t\t\tmenuItem -l \"Connect Collision\" -c (\"connectDynamic -c \" + $object);\n\t\t}\n\t\t// is there a reference associated with the object ?\n"
		+ "\t\t// and if so, is it in a loaded or unloaded state?\n\t\tstring $refNode = `getRelatedReference $object`;\n\t\tif( size($refNode) > 0) {\n\t\t\tmenuItem -d true;\n\t\t\tif( `file -rfn $refNode -q -dr` ) {\n\t\t\t\tmenuItem -l \"Load Related Reference\" -c (\"loadRelatedReference \" + $object);\n\t\t\t} else {\n\t\t\t\tmenuItem -l \"Reload Related Reference\" -c (\"loadRelatedReference \" + $object);\n\t\t\t\tmenuItem -l \"Unload Related Reference\" -c (\"unloadRelatedReference \" + $object);\n\t\t\t}\n\t\t\t// Is this reference a proxy? If so, add proxy switch submenu\n\t\t\t//\n\t\t\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\t\t\tif(size($proxyNodes) > 0) {\n\t\t\t\t$menu = `menuItem -subMenu true -l \"Reload Proxy As\"`;\n\t\t\t\tmenu -e\n\t\t\t\t\t-pmc ( \"createSwitchProxyMenuItems \\\"\"+$menu+\"\\\" \"+$object + \" \" + $refNode )\n\t\t\t\t\t$menu;\n\t\t\t\tsetParent -m $parent;\n\t\t\t}\n\t\t}\n\t\tsetParent -m $parent;\n\t} else {\n\t\twarning(\"Menu \" + $parent + \" doesn't exist.\");\n\t}\n}\n");
	setAttr ".st" 1;
createNode script -n "FIXMEJOSH_dagMenuProc8";
	setAttr ".b" -type "string" (
		"proc optionalDagMenuProc( string $parent, string $item )\n{\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tstring $shape = \"\";\n\tint $gotVisible = 0;\n\tif( size($object) < 1 ) return;\n\tfor( $i=0; $i<size($object); $i+=1) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor( $i=0; $i<size($object); $i+=1) {\n\t\t\tif( 0 == getAttr($object[$i] + \".io\")) {\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tif( \"\" != $shape ) {\n\t\tstring $nt = `nodeType $shape`;\n\t\tswitch( $nt ) {\n\t\t  case \"subdiv\":\n\t\t\tsubdOptionalDagMenuProc( $parent, $item );\n\t\t\tmenuItem -d true; \n\t\t\tbreak;\n\t\t  default:\n\t\t\t// Check to make sure we have a kPlugin prefix\n\t\t\tstring $apiNt = `nodeType -api $shape`;\n\t\t\tif ( startsWith( $apiNt, \"kPlugin\" ) ) {\n\t\t\t\tstring $nodeMenuCommand = $nt + \"DagMenuProc\";\n\t\t\t\tstring $nodeMenuCommandWithArgs = $nodeMenuCommand + \"(\\\"\" + $parent + \"\\\" , \\\"\" + $item + \"\\\" )\";\n"
		+ "\t\t\t\tif ( exists( $nodeMenuCommand ) ) {\n\t\t\t\t   eval( $nodeMenuCommandWithArgs );\n\t\t\t\t}\n\t\t\t}\n\t\t\tbreak;\n\t\t}\n\t}\n}\nproc int objectIsTrimmed(string $item)\n// Return true if this is a trimmed surface\n{\n\tstring $command = (\"getAttr -size \" + $item + \".trimFace\");\n\tint $trimCount = eval($command);\n\treturn ($trimCount != 0);\n}\nproc string getControlledHandle(string $item)\n{\n\tstring $handle;\n\tif (size(`ls ($item+\".ikBlend\")`)) {\n\t\tstring $connHandles[] =\n\t\t\t`listConnections -type ikHandle ($item+\".ikBlend\")`;\n\t\tif (size($connHandles)) {\n\t\t\t$handle = $connHandles[0];\n\t\t}\n\t}\n\treturn $handle;\n}\nproc int isIKcontroller(string $item)\n{\n\tstring $handle = getControlledHandle($item);\n\treturn (size($handle) > 0);\n}\nproc\ncreateFBIKmenuItems(string $parent,\n\t\t\t\t\tstring $item,\n\t\t\t\t\tstring $ikReachModeLocation,\n\t\t\t\t\tstring $keyBodyPartLocation,\n\t\t\t\t\tstring $keyAllLocation,\n\t\t\t\t\tstring $keySelectedLocation)\n{\n\tstring $reachKeyingMode = \"Reach Mode:\";\n\tint $rkm = `optionVar -q setIKKey`;\n\tswitch ($rkm)\n\t{\n\t\tcase 1:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" IK\";\n"
		+ "\t\t\tbreak;\n\t\tcase 2:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" FK\";\n\t\t\tbreak;\n\t\tcase 3:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" Simple\";\n\t\t\tbreak;\n\t}\t\n\tmenuItem -rp $ikReachModeLocation -label $reachKeyingMode\n\t\t-subMenu true\n\t\t-annotation (uiRes(\"m_dagMenuProc.kDetermineHowAnnot\")) ;\n\t\tmenuItem -rp \"S\" -label (uiRes(\"m_dagMenuProc.kIK\")) \n\t\t\t-command FBIKReachKeyingOptionIK;\n\t\tmenuItem -rp \"N\" -label (uiRes(\"m_dagMenuProc.kFK\")) \n\t\t\t-command FBIKReachKeyingOptionFK;\n\t\tmenuItem -rp \"E\" -label (uiRes(\"m_dagMenuProc.kSimpleNoReach\")) \n\t\t\t-command FBIKReachKeyingOptionSimple;\n\tsetParent -m $parent;\n\t\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kKeyAll\")) \n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"1\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyAllLocation\n\t\tkeyAllItem;\n\t\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kKeyBodyPart\")) \n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"2\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyBodyPartLocation\n\t\tkeyBodyPartItem;\n\t\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kKeySelected\")) \n"
		+ "\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"4\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keySelectedLocation\n\t\tkeySelectedItem;\n}\nproc checkForSkinInfluenceItem(string $item, string $quadrant)\n{\n\tint $isJoint = (nodeType($item) == \"joint\");\n\t\n\t// Check if the current context is the skinPaint context \n\t// and the the joint is connected to a skinCluster\n\t//\n\tstring  $currContext = `currentCtx`;\n\tstring  $currTool    = \"\";\n\tif(`contextInfo -ex $currContext`) {\n\t\t$currTool = `contextInfo -c $currContext`;\n\t}\n\tstring $paintWeights = (uiRes(\"m_dagMenuProc.kPaintWeights\"));\n\tif ( $currTool == \"artAttrSkin\" ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"skinWeights\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"skinCluster\")\n\t\t\t\t{\t\n\t\t\t\t\t// select the surface (not the joint) and set\n\t\t\t\t\t// the joint as the current influence\n\t\t\t\t\t//\n\t\t\t\t\tstring $currSel[] = `ls -sl`;\n\t\t\t\t\tstring $currSelString;\n"
		+ "\t\t\t\t\tif (size($currSel) > 0) {\n\t\t\t\t\t\tstring $currObj;\n\t\t\t\t\t\t$currSelString = \"select -r \";\n\t\t\t\t\t\tfor ($currObj in $currSel) {\n\t\t\t\t\t\t\t$currSelString += ($currObj+\" \");\n\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tmenuItem -label $paintWeights \n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t-c ($currSelString+\"; setSmoothSkinInfluence \" + $item)\n\t\t\t\t\t\t-rp $quadrant\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\t\t// menu for skinCluster paint\n\t// Check if the current context is the clusterPaint context \n\t// and the the joint is connected to a jointCluster\n\t//\n\telse if ( $isJoint && ($currTool == \"artAttr\") ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"general\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"jointCluster\")\n\t\t\t\t{\n\t\t\t\t\tstring $artCommand = \"artAttrCtx\" ;\n\t\t\t\t\tstring $attribute = \"cluster.\" + $conn +  \".weights\" ;\n\t\t\t\t\tmenuItem -label $paintWeights \n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n"
		+ "\t\t\t\t\t\t//-c (\"artAttrCtx -e -pas \\\"cluster.\" + $conn +  \".weights\\\" `currentCtx`\")\n\t\t\t\t\t\t-c (\"artSetToolAndSelectAttr( \\\"\" + $artCommand + \"\\\", \\\"\" + $attribute + \"\\\" )\")\n\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n\t// menu for joint-set paint\n\t// Check if the current context is the setPaint context \n\t// and the the joint is connected to a objectSet via jointCluster\n\t//\n\telse if ( $isJoint && ($currTool == \"artSetPaint\") ) {\n\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\tstring $conn;\n\t\tfor($conn in $connL) {\n\t\t\tif (`nodeType $conn` == \"jointCluster\") {\t\n\t\t\t\tstring $connS[] = `listConnections ($conn+\".message\")`;\n\t\t\t\tfor($set in $connS) {\n\t\t\t\t\tif (`nodeType $set` == \"objectSet\") {\n\t\t\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPaintSetMembership\")) \n\t\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n\t\t\t\t\t\t\t//-c (\"artSetPaintCtx -e -settomodify \" + $set + \" `currentCtx`\")\n\t\t\t\t\t\t\t-c (\"artSetPaintSelectSet( \\\"\" + $set + \"\\\" )\")\n"
		+ "\t\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\t\tbreak;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n}\nglobal proc string[] objectSelectMasks(string $item)\n// Returns the component selection masks that apply to this object\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tswitch ($nt) {\n\t\tcase \"lattice\":\n\t\t\t$maskList[0] = \"latticePoint\";\n\t\t\tbreak;\t\n\t\tcase \"locator\":\n\t\t\t$maskList[0] = \"locator\";\n\t\t\tbreak;\t\n\t\tcase \"nurbsCurve\":\n\t\t\t$maskList[0] = \"curveParameterPoint\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"editPoint\";\n\t\t\t$maskList[3] = \"hull\";\n"
		+ "\t\t\tbreak;\n\t\tcase \"nurbsSurface\":\n\t\t\t$maskList[0] = \"isoparm\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"surfaceParameterPoint\";\n\t\t\t$maskList[3] = \"hull\";\n\t\t\t$maskList[4] = \"surfaceFace\";\n\t\t\t$maskList[5] = \"surfaceUV\"; \n\t\t\tif (objectIsTrimmed($shape)) {\n\t\t\t\t$maskList[6] = \"surfaceEdge\";\n\t\t\t}\n\t\t\tbreak;\n\t\tcase \"mesh\":\n\t\t\t$maskList[0] = \"edge\";\n\t\t\t$maskList[1] = \"vertex\";\n\t\t\t$maskList[2] = \"facet\";\n\t\t\t$maskList[3] = \"puv\";\n\t\t\t$maskList[4] = \"pvf\";\n\t\t\tbreak;\n\t\tcase \"joint\":\n\t\t\t$maskList[0] = \"joint\";\t\t// special case\n\t\t\tbreak;\n\t\tcase \"ikHandle\":\n\t\t\t$maskList[0] = \"ikHandle\";\t// special case\n\t\t\tbreak;\n\t\tcase \"hikEffector\":\n\t\t// fall through\n\t\tcase \"hikFloorContactMarker\":\n\t\t\t$maskList[0] = \"hikEffector\";\t// special case\n\t\t\tbreak;\n\t\tcase \"particle\":\n\t\t\t$maskList[0] = \"particle\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"spring\":\n\t\t\t$maskList[0] = \"springComponent\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"subdiv\":\n \t\t\t$maskList[0] = \"subdivMeshPoint\";\t\n \t\t\t$maskList[1] = \"subdivMeshEdge\";\t\n \t\t\t$maskList[2] = \"subdivMeshFace\";\t\n"
		+ " \t\t\t$maskList[3] = \"subdivMeshUV\";\t\n\t\t\tbreak;\n\t}\n\tif (isIKcontroller($item)) {\n\t\t$maskList[size($maskList)] = \"ikfkHandle\";\n\t}\n\treturn $maskList;\n}\nglobal proc string dagMenuProc_selectionMask_melToUI( string $mel )\n{\n\tstring $result = $mel; \n \n\tswitch ($mel) \n\t{\n\t\tcase \"latticePoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kLatticePoint\"));\n\t\t\tbreak;\n\t\tcase \"locator\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kLocator\"));\n\t\t\tbreak;\t\t \n\t\tcase \"controlVertex\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kControlVertex\"));\n\t\t\tbreak;\n\t\tcase \"editPoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kEditPoint\"));\n\t\t\tbreak;\n\t\tcase \"hull\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kHull\"));\n\t\t\tbreak;\n\t\tcase \"isoparm\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kIsoparm\"));\n\t\t\tbreak;\t \t \n\t\tcase \"subdivMeshEdge\":\n\t\t\t// fall through\n\t\tcase \"edge\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kEdge\"));\n\t\t\tbreak;\n\t\tcase \"subdivMeshPoint\":\n\t\t\t// fall through\n\t\tcase \"vertex\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kVertex\"));\n\t\t\tbreak;\n\t\tcase \"joint\":\t\t\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kJoint\"));\n"
		+ "\t\t\tbreak;\n\t\tcase \"ikHandle\":\t\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kIkHandle\"));\n\t\t\tbreak;\n\t\tcase \"hikEffector\":\t\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kHikEffector\"));\n\t\t\tbreak;\t \n\t\tcase \"ikfkHandle\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kIkfkHandle\"));\n\t\t\tbreak;\n\t\tcase \"surfaceUV\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSurfaceUV\"));\n\t\t\tbreak;\n\t\tcase \"surfaceParameterPoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSurfacePoint\"));\n\t\t\tbreak;\t\n\t\tcase \"curveParameterPoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kCurvePoint\"));\n\t\t\tbreak;\n\t\tcase \"surfaceEdge\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kTrimEdge\"));\n\t\t\tbreak;\n\t\tcase \"surfaceFace\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSurfacePatch\"));\n\t\t\tbreak;\n\t\tcase \"subdivMeshUV\":\n\t\t\t// fall through\n\t\tcase \"puv\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kUV\"));\n\t\t\tbreak;\n\t\tcase \"subdivMeshFace\":\n\t\t\t// fall through\n\t\tcase \"facet\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kFace\"));\n\t\t\tbreak;\t\n\t\tcase \"pvf\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kVertexFace\"));\n\t\t\tbreak;\n\t\tcase \"particle\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kParticle\"));\n"
		+ "\t\t\tbreak;\n\t\tcase \"springComponent\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSpring\"));\n\t\t\tbreak;\t \t \n\t\tdefault:\n\t\t\tuiToMelMsg( \"dagMenuProc_selectionMask_melToUI\", $mel, 1 );\n\t\t\tbreak;\n\t}\n\treturn $result;\t\t \t \n}\nglobal proc createSelectMenuItems(string $parent, string $item)\n// Create a menu that shows the dag parenting for this object\n{\n\tstring $maskList[] = `objectSelectMasks($item)`;\n\tstring $radialPosition[];\n\tstring $uiName;\n\tint $i;\n\tint $isNurbObject     = false;\n\tint $isPolyObject     = false;\n\tint $isLatticeObject  = false;\n\tint $isJointObject    = false;\n\tint $isHikEffector\t  = false;\n\tint $isIkHandleObject = false;\n\tint $isIkFkHandleObject = false;\t\n\tint $isParticleObject = false;\n\tint $isSpringObject   = false;\n\tint $isSubdivObject   = false;\n\tint $isLocatorObject  = false;\n\tint $hasComponents\t  = false;\n\tif (1 <= size($maskList)) {\n\t\t$isLatticeObject = ($maskList[0] == \"latticePoint\");\n\t\t$isJointObject = ($maskList[0] == \"joint\");\n\t\t$isHikEffector = ($maskList[0] == \"hikEffector\");\n\t\t$isIkHandleObject = ($maskList[0] == \"ikHandle\");\n"
		+ "\t\t$isParticleObject = ($maskList[0] == \"particle\");\n\t\t$isSpringObject = ($maskList[0] == \"springComponent\");\n\t\t$isSubdivObject = ($maskList[0] == \"subdivMeshPoint\");\n\t\t$isLocatorObject = ($maskList[0] == \"locator\");\n\t}\n\tif (2 <= size($maskList)) {\n\t\t$isNurbObject = ($maskList[1] == \"controlVertex\");\n\t\t$isPolyObject = ($maskList[1] == \"vertex\");\n\t}\n\t// $maxRadialPos keeps track of how many octants of the\n\t// RMB marking menu will be populated\n\t//\n\tint $maskSize = size($maskList);\n\tint $maxRadialPos = size($maskList);\n\tif (($maskSize > 0) && ($maskList[$maskSize-1] == \"ikfkHandle\")) {\n\t\t$isIkFkHandleObject = true;\n\t\t$maxRadialPos--; // ikfkHandle does not populate like other masks\n\t}\n\t$hasComponents = $isLatticeObject || \n\t\t\t\t\t $isParticleObject ||\n\t\t\t\t\t $isSubdivObject ||\n\t\t\t\t\t $isSpringObject ||\n\t\t\t\t\t $isNurbObject ||\n\t\t\t\t\t $isPolyObject;\n\t// NOTE: \n\t//\t\t\tIf the object has selectable components, then the\n\t//\t\tradial position \"NE\" will be used for the menuItem:  \n\t//\t\t\"Revert back to object mode.\"\n\t//\n\tsetParent -menu $parent;\n"
		+ "\t$radialPosition[0] = \"N\";\n\t$radialPosition[1] = \"W\";\n\t$radialPosition[2] = \"S\";\n\t$radialPosition[3] = \"E\";\n\t$radialPosition[4] = \"SW\";\n\t$radialPosition[5] = \"SE\";\n\t$radialPosition[6] = \"NW\";\n\t$radialPosition[7] = \"NE\";\n    \n    string $disableikHandle = (uiRes(\"m_dagMenuProc.kDisableIkHandle\")); \n    string $enableIkHandle  = (uiRes(\"m_dagMenuProc.kEnableIkHandle\"));\n\tstring $setPreferred\t= (uiRes(\"m_dagMenuProc.kSetPreferredAngle\"));\n\tstring $assumePreferred = (uiRes(\"m_dagMenuProc.kAssumePreferredAngle\")); \n\t\n\tif ($isNurbObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t  \n\t\t\t  $uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\t\t\t  \n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -label $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuNURBComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the nurbs is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"NW\") quadrant\n"
		+ "\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isPolyObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t\t\n\t\t\t\t$uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -label $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the poly is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"NW\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isLatticeObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\t$uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\n\t\t\t\tmenuItem -label $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuLatticeComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t} else if ($isJointObject) {\n\t\tstring $setCmd = `performSetPrefAngle 2`;\n"
		+ "\t\tstring $assumeCmd = `performAssumePrefAngle 2`;\t\t\n\t\t$setCmd += (\" \"+$item);\n\t\t$assumeCmd += (\" \"+$item);\n\t\tstring $jts[] = `ls -sl -type joint`;\n\t\tfor ($jointItem in $jts) {\n\t\t\tif ($jointItem != $item) {\n\t\t\t\t$setCmd += (\" \"+$jointItem);\n\t\t\t\t$assumeCmd += (\" \"+$jointItem);\n\t\t\t}\n\t\t}\n\t\tmenuItem -label $setPreferred \n\t\t\t-echoCommand true\n\t\t\t-c ($setCmd)\n\t\t\t-rp \"N\"\n\t\t\tsetPrefAngleItem;\n\t\t\n\t\tmenuItem -label $assumePreferred \n\t\t\t-echoCommand true\n\t\t\t-c ($assumeCmd)\n\t\t\t-rp \"S\"\n\t\t\tassumePrefAngleItem;\n\t\tstring $hikHandle[] = `listConnections -type hikHandle $item`;\n\t\tint $isFBIKjoint = (size($hikHandle) > 0);\n\t\tif ($isFBIKjoint) {\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t\t\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isHikEffector){\n\t\tif (nodeType($item) == \"hikFloorContactMarker\") {\n\t\t\tstring $parentItems[] = `listRelatives -pa -p $item`;\n"
		+ "\t\t\tif (size($parentItems) &&\n\t\t\t\tnodeType($parentItems[0]) == \"hikEffector\") {\n\t\t\t\t$item = $parentItems[0];\n\t\t\t} else {\n\t\t\t\t$isHikEffector = false;\n\t\t\t}\n\t\t}\n\t\tif ($isHikEffector) {\n\t\t    string $pivotOffsetPlug = $item + \".pivotOffset\";\n\t\t    float $pivotOffset[] = `getAttr $pivotOffsetPlug`;\n\t\t    int $enablePin = (equivalentTol($pivotOffset[0],0.0,0.001) &&\n\t\t                      equivalentTol($pivotOffset[1],0.0,0.001) &&\n\t\t                      equivalentTol($pivotOffset[2],0.0,0.001));\n\t\t    \n\t\t\t// set pinning for hikEffectors\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPinBoth\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"3\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"N\"\n\t\t\t\tpinAllItem;\n\t\t\t\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPinTranslate\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"1\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"NW\"\n\t\t\t\tpinTransItem;\n\t\t\t\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPinRotate\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"2\\\",\\\"\" + $item + \"\\\"};\")\n"
		+ "\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"SW\"\n\t\t\t\tpinRotItem;\n\t\t\t\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kUnpin\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"0\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-rp \"S\"\n\t\t\t\tunpinItem;\n\t\t\t\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t} else if ($isLocatorObject) {\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isIkHandleObject) {\n\t\tstring $selectikHandlesJointsAnnot = (uiRes(\"m_dagMenuProc.kSelectikHandlesAnnot\"));\n\t\tstring $selectikHandlesAnnot = (uiRes(\"m_dagMenuProc.kEnableIKHandlesAnnot\"));\n\t\tmenuItem -label $setPreferred\n\t\t\t-annotation $selectikHandlesJointsAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (`performSetPrefAngle 2` + \" \" + $item)\n\t\t\t-rp \"W\"\n\t\t\tsetPrefAngleItem;\n\t\tmenuItem -label $assumePreferred \n\t\t\t-annotation $selectikHandlesJointsAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (`performAssumePrefAngle 2` + \" \" + $item)\n"
		+ "\t\t\t-rp \"E\"\n\t\t\tassumePrefAngleItem;\n\t\tmenuItem -label $enableIkHandle \n\t\t\t-annotation $selectikHandlesAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -eh \" + $item)\n\t\t\t-rp \"N\"\n\t\t\tenableIKHandlesItem;\n\t\tmenuItem -label $disableikHandle \n\t\t\t-annotation $selectikHandlesAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -dh \" + $item)\n\t\t\t-rp \"S\"\n\t\t\tdisableIKHandlesItem;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kEnableSnap\")) \n\t\t\t-annotation $selectikHandlesAnnot\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -see \" + $item + \";\" +\n\t\t\t\t\"ikHandle -e -shf on \" + $item)\n\t\t\t-rp \"SE\"\n\t\t\tenableIKHandlesSnapItem;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kDisableSnap\")) \n\t\t\t-annotation $selectikHandlesAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -shf off \" + $item)\n\t\t\t-rp \"SW\"\n\t\t\tdisableIKHandlesSnapItem;\n\t\t$maxRadialPos = 6;\n\t} else if ($isParticleObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t   \n\t\t\t   $uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\t\t\t   \t\t\t\n\t\t\tmenuItem -label $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuParticleComponentSelection(\\\"\" +\n"
		+ "\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} else if ($isSpringObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t   \n\t\t\t   $uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\t\t\t\n\t\t\tmenuItem -label $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuSpringComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} else if ($isSubdivObject) {\n\t\tsubdDagMenuProc( 0, $item, $maskList );\n\t} else {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] == \"ikfkHandle\") {\n\t\t\t\tcontinue;\n\t\t\t}\n\t\t\t\n\t\t\t$uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\n\t\t\tmenuItem -label $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} \n\t// If components are present, provide the ability to \n\t// get back to object mode...\n\t//\n\tif ($hasComponents) {\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kObjectMode\")) \n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"hilite -unHilite \" + $item + \"; string $selection[] = `ls -sl`;\"\n"
		+ "\t\t\t\t\t+ \"changeSelectMode -object; select -r $selection;\" )\n\t\t\t\t-rp \"NE\";\n\t}\n\t// Since any object can be an ikfk handle, we only populate the ikfk items\n\t// in slots that are not already in use.\n\t//\n\tif ($isIkFkHandleObject) {\n\t\tstring $handle = getControlledHandle($item);\n\t\tif ($maxRadialPos < 8) {\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kSetIKFKKey\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kSetKeysAnnot\")) \n\t\t\t\t-rp $radialPosition[7]\n\t\t\t\t-command (\"select -r \"+$item+\"; SetIKFKKeyframe\");\n\t\t}\n\t\tif ($maxRadialPos < 7) {\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kMoveIKToFK\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kSelectAnIKHandleOrIKFKAnnot\")) \n\t\t\t\t-rp $radialPosition[6]\n\t\t\t\t-command (\"select -r \"+$item+\"; MoveIKtoFK\");\n\t\t}\n\t\tif ($maxRadialPos < 5) {\n\t\t\tmenuItem -label $disableikHandle \n\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kDisableIKHandleAnnot\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -dh \" + $handle)\n\t\t\t\t-rp $radialPosition[5];\n\t\t\tmenuItem -label $enableIkHandle \n"
		+ "\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kEnableIKHandleAnnot\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -eh \" + $handle)\n\t\t\t\t-rp $radialPosition[4];\n\t\t}\n\t}\n\tsetParent -menu $parent;\n}\nglobal proc doMenuNURBComponentSelection(string $item, string $mask)\n//\n// Change the selection/display state to allow selection of NURB components\n//\n{\n\tstring $selectCmd;\n\tstring $warn = (uiRes(\"m_dagMenuProc.kEditUVModeWarn\"));\n\t\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t// UVs are not selectable. So issue a warning.\n\t\t//\n\t\tif( $mask == \"surfaceUV\" )\n\t\t{\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t\twarning(`format -s $item $warn`);\n\t\t\t}\n\t\t}\n\t} else {\n\t\tselectType -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -isoparm 2;\";\n"
		+ "\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"surfaceUV\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -uv \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\"; \n\t\t\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t\t\t//\n\t\t\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\t\t\tif( !$isExplicit[0] )\n\t\t\t\t\t{\n\t\t\t\t\t\twarning(`format -s $item $warn`);\n\t\t\t\t\t}\n\t\t\t\t\tbreak; \n\t\t\t\tcase \"editPoint\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n"
		+ "\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"controlVertex\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"hull\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item + \";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n"
		+ "\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t//\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t    warning(`format -s $item $warn`);\n\t\t\t}\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuLatticeComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n// selection of the Lattice control points\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"toggle -\" + $mask + \";\"; \n"
		+ "\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuParticleComponentSelection(string $item, string $mask)\n//\n// Change the selection/display state to allow selection of particle\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -particle 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"particle\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -particle \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuSpringComponentSelection(string $item, string $mask)\n"
		+ "//\n// Change the selection/display state to allow selection of spring\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -springComponent 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"springComponent\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -springComponent \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n"
		+ "// selection of the specified selection mask type.\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc undoMenuComponentSelection(string $item, string $mask)\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" false;\";\n\t} else {\n\t\t$selectCmd = \"selectType -\" + $mask + \" false;\";\n\t}\n\teval $selectCmd;\n}\nglobal proc toggleBoundingBoxDisplay ( string $parent )\n//\n// For each shape under the selected parent object, toggle the\n// state of bounding box display mode.\n//\n{\n\tstring $shapes[] = `listRelatives -shapes $parent`;\n\tstring $shape;\n\tfor ( $shape in $shapes ) {\n\t\tint $overrideOn = `getAttr ( $shape + \".overrideEnabled\")`;\n\t\tint $lodMode =    `getAttr ( $shape + \".overrideLevelOfDetail\")`;\n"
		+ "\t\tint $enabled =     $overrideOn && $lodMode == 1;\n\t\tif ( $enabled ) {\n\t\t\t// Don't reset the overrideEnabled attribute. It\n\t\t\t// is used for more than just bounding box display\n\t\t\t// and turning if off will mess things up of you\n\t\t\t// have temporarily enabled bounding box display \n\t\t\t// of an object in a layer.\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\" ) 0;\n\t\t} else {\n\t\t\tsetAttr ( $shape + \".overrideEnabled\") 1;\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\") 1;\n\t\t}\n\t}\n}\nglobal proc createActionsMenuItems(string $parent, string $item)\n//\n// Creates a menu with common operations to perform on an object\n//\n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kTemplate\"))  -c (\"toggle -template -state on \" + $item);\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kUntemplate\"))  -c (\"toggle -template -state off \" + $item);\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kUnparent\"))  -c (\"parent -w \" + $item);\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kBoundingBox\"))  -c (\"toggleBoundingBoxDisplay \" + $item);\n"
		+ "}\nglobal proc showSG(string $item)\n{\n\t//check selection list for faces (polys, subds, nurbs)\n\tstring $shader = \"\";\n\tstring $selection[] = `filterExpand -sm 34 -sm 38 -sm 72`;\n\t// If there are components selected, try to find a component shader\n\tif( size( $selection ) > 0)\n\t{\n\t\tstring $nameBuffer[];\n\t\tint $numComps = size( $selection );\n\t\tint $comp;\n\t\tfor( $comp = 0; $comp < $numComps; $comp++)\n\t\t{\n\t\t\ttokenize $selection[ $comp] \".\" $nameBuffer;\n\t\t\t//if the selected component is on the object under the pointer\n\t\t\t//get it's shader\n\t\t\tif ($nameBuffer[0] == $item) {\n\t\t\t\t$shader = `getComponentShader $selection[$comp]`;\n\t\t\t\t//check if the shader is already selected - only toggle\n\t\t\t\t//selection if it is not selected\n\t\t\t\tstring $shaderSelected[] = `ls -selection $shader`;\n\t\t\t\tif ( size( $shaderSelected ) == 0){\n\t\t\t\t\tselect -tgl $shader;\n\t\t\t\t\n\t\t\t\t}\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we didn't find a component level shader, try for an object level one\n\tif( size( $shader ) == 0 ) {\n\t\tstring $allNodes[] = (`listHistory -f true $item` );\n"
		+ "\t\tstring $node = \"\";\n\t\tfor ($node in $allNodes) {\n\t\t\tif(`nodeType $node` == \"shadingEngine\") {\n\t\t\t\t$shader = $node;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we found a shader, show it\n\tif( size( $shader ) > 0) \n\t{\n\t\tshowEditor $shader;\n\t}\n}\n\t\nglobal proc showBakeSets(string $item, string $type)\n{\n\tstring $possibleBakeSets[] = (`listHistory -f true $item` );\n\tstring $node = \"\";\n    int $bakeSetExists = false;\n\tfor ($node in $possibleBakeSets) {\n\t\tif(`nodeType $node` == $type)\n        {\n\t\t\tshowEditor $node;\n            $bakeSetExists = true;\n\t\t\tbreak;\n\t\t}\n\t}\n    // If no bake set exists for the $item, then create the\n    // initial bake set of that $type and assign it to the $item.\n    //\n    if (!$bakeSetExists)\n    {\n        string $initialBakeSet = \"\";\n\t\tif($type == \"vertexBakeSet\") \n        {\n            $initialBakeSet = \"initialVertexBakeSet\";\n        }\n        else if($type == \"textureBakeSet\") \n        {\n            $initialBakeSet = \"initialTextureBakeSet\";\n\t\t}\n        else\n        {\n            string $errorMsg = (uiRes(\"m_dagMenuProc.kBakeSetError\"));\n"
		+ "            error   -showLineNumber true\n                (`format -s $type $errorMsg`);\n            return;\n        }\n        // Create it if it does not exist yet.\n        //\n        if  ( size(`ls $initialBakeSet`) < 1)\n        {\n            createBakeSet($initialBakeSet, $type);\n        } \n    \n        // Assign the initial bake set to the item.\n        //\n        assignBakeSet($initialBakeSet, $item);\n        // Show the initial bake set.\n        //\n        showBakeSetAE($initialBakeSet);\n    }\n}\n// Description:  This procedure is called to refresh the baking \n//  attribute menu items.\n//\nglobal proc refreshBakingAttributeMenu (string $parent, string $item)\n{\n    setParent -menu $parent;\n    int $suitable = bakeSetTypeSuitableForItem(\"textureBakeSet\", $item);\n    menuItem -edit -enable $suitable textureBakingAttributeItem;\n    $suitable = bakeSetTypeSuitableForItem(\"vertexBakeSet\", $item);\n    menuItem -edit -enable $suitable vertexBakingAttributeItem;\n}\n// Description:  This procedure is called to create the \n"
		+ "//  baking attribute menu.\n//\nproc createBakingAttributeMenu(string $parent, string $item)\n{\n    setParent -menu $parent;\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kEditAttributes\"))  \n        -subMenu true\n        -tearOff true\n        -postMenuCommand (\"refreshBakingAttributeMenu \\\"\"\n                            +$parent+\"|editAttributeItem\\\" \\\"\"\n                            +$item+\"\\\"\")\n        editAttributeItem; \n        menuItem -label (uiRes(\"m_dagMenuProc.kTexture\"))  \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"textureBakeSet\\\"\") \n            textureBakingAttributeItem;\n        menuItem -label (uiRes(\"m_dagMenuProc.kVertexMenuLabel\"))  \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"vertexBakeSet\\\"\") \n            vertexBakingAttributeItem;\n    setParent -menu ..;\n}\n// Description:  This procedure is called to create the baking\n//  menu items.\n//\nglobal proc createBakingMenuItems(string $parent, string $item)\n//\n//\tCreate the Baking menus for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n"
		+ "    createBakingAttributeMenu($parent, $item);\n\tmenuItem -d true;\n\tif (!`about -evalVersion`) {\n\t\tbuildBakingMenus($item);\n\t}\n}\n// Description:  This procedure is called to create the switch proxy\n//  menu items.\n//\nglobal proc createSwitchProxyMenuItems(string $parent, string $item, string $refNode)\n//\n//\tCreate the switch proxy submenu for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\tint $i;\n\tstring $proxyLabel;\n\tstring $proxyTag;\n\tfor( $i=0; $i<size($proxyNodes); $i+=1) {\n\t\t$proxyTag = `getAttr ($proxyNodes[$i] + \".proxyTag\")`;\n\t\t\n\t\tmenuItem -label $proxyTag -c (\"proxySwitch \" + $proxyNodes[$i]);\n\t}\n}\nglobal proc createHistoryMenuItems(string $parent, string $item)\n{\n\t//\n\t// Delete all menu entries currently in the popup\n\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, false, 1 );\n}\nglobal proc createFutureMenuItems(string $parent, string $item)\n{\n\t//\n\t// Delete all menu entries currently in the popup\n"
		+ "\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, true, 1 );\n}\nglobal proc string objectHandlesUvSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createUVsetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyUVSet -currentUVSet -uvSet \";\n\tstring $curSet[] = `polyUVSet -q -currentUVSet $shape`;\n\tstring $names[] = `polyUVSet -q -auv $shape`;\n"
		+ "\tstring $allProjects[] = `polyUVSet -pr -q $shape`;\n\tstring $setClearCmd = \"\";\n\tif (size($allProjects))\n\t{\n\t\t$setClearCmd = \"select -d \";\t\t\n\t\tfor ($p=0; $p<size($allProjects); $p++)\n\t\t\t$setClearCmd += (\" \" + $allProjects[$p]);\n\t\t$setClearCmd += \";\";\n\t}\n\tint $numNames = size($names);\n\t// Add in a menu to do uv-linking\n\tif ($numNames > 0)\n\t{\t\n\t\tstring $ann = `getRunTimeCommandAnnotation \"UVCentricUVLinkingEditor\"`;\n\t\tstring $cmd = \"UVCentricUVLinkingEditor; \" + \"select -r \" + $item;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kUVLinking\")) \n\t\t\t-c $cmd\n\t\t\t-annotation $ann;\n\t\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i<$numNames; $i++)\n\t{\n\t\tstring $uvEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $uvname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $uvEditname + \" \" + $shape + \";\";\n\t\t// Find any projections associated with the uvset\n\t\tstring $projs[];\n\t\t$projs = `polyUVSet -pr -uvs $uvname -q $shape`;\n\t\tstring $projCmd;\n\t\t// Add a divider between items\n\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($uvname == $curSet[0])\n"
		+ "\t\t{\n\t\t\tmenuItem -label ($uvname) -c $setClearCmd -checkBox true;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -label $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -label ($uvname) -c ($setClearCmd + $setCurCmd) -checkBox false;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setCurCmd + $setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -label $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n}\n//\nglobal proc string objectHandlesColorSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n"
		+ "\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createColorSetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyColorSet -currentColorSet -colorSet \";\n\tstring $curSet[] = `polyColorSet -q -currentColorSet $shape`;\n\tstring $names[] = `polyColorSet -q -acs $shape`;\n\tint $numNames = size($names);\n\t// Add in a menu to access color set editor\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kColorSetEditor\")) \n\t\t-ann (getRunTimeCommandAnnotation(\"ColorSetEditor\"))\n\t\t-command \"colorSetEditor\"\n\t\t;\n\tif ($numNames > 0)\n\t{\t\n\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i < $numNames; $i++)\n\t{\n\t\tstring $colorEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $colorname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $colorEditname + \" \" + $shape + \";\";\n\t\t// Add a divider between items\n"
		+ "\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($colorname == $curSet[0])\n\t\t{\n\t\t\tmenuItem -label ($colorname) -checkBox true;\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -label ($colorname) -c ($setCurCmd) -checkBox false;\n\t\t}\n\t}\n}\nglobal proc createArtAttrMenuItems(\n\tstring \t\t$parent, \n\tstring \t\t$item\n)\n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\t\n\t// add default items which are always displayed in the context menu\n\tmenuItem -p $parent -label (uiRes(\"m_dagMenuProc.kPaintSelect\"))  -command \"ArtPaintSelectToolOptions\" ;\n\tmenuItem -p $parent -label (uiRes(\"m_dagMenuProc.kThreeDPaint\"))  -command \"Art3dPaintToolOptions\" ;\n\tmenuItem -p $parent -label (uiRes(\"m_dagMenuProc.kSculpt\"))  -command \"SculptGeometryToolOptions\" ;\n\t// Get all paintable attributes\n\tstring $paintAttr = `artBuildPaintMenu $item`;\n\tstring $paint = (uiRes(\"m_dagMenuProc.kPaint\"));\n\t\n\tif ($paintAttr != \"\")\n\t{\n\t\t// if the menu item has not been created, create it.\n\t\tif( $parent == \"\" )\n\t\t\t$parent = `menuItem -subMenu true -aob true -label $paint `;\n"
		+ "\t\t\t\n\t\n\t\t// create special purpose painting menu items for objects\n\t\t// such as cloth\n\t\t//\n\t\tstring $excludeNodes[] = createPaintingMenuItems( $parent, $item );\n\t\t// Create the menu.\n\t\tartAttrCreateMenuItems( $parent, $paintAttr, $excludeNodes );\n\t\t\n\t}\n}\n// This has been called because a menu press happened on a DAG object\n// So find the Object submenu and add the DAG specific items to it.\n//\nglobal proc dagMenuProc(string $parent, string $object)\n{\n\tglobal string $artSelectObject ;\n\tstring $mode = \"\";\n\tif (`optionVar -exists currentMenuBarTab`) {\n\t\t$mode = `optionVar -q currentMenuBarTab`;\n\t} else {\n\t\toptionVar -sv currentMenuBarTab $mode;\n\t}\n\tif (`popupMenu -e -exists $parent`) {\n\t\tsetParent -m $parent;\n\t\t// label the object\n\t\tstring $shortName = `substitute \".*|\" $object \"\"`;\n\t\tmenuItem -label ($shortName + \"...\") -c (\"showEditor \"+$object);\n\t\tmenuItem -divider true;\n\t\tmenuItem -divider true;\n\t\t// Create the list of selection masks\n\t\tcreateSelectMenuItems($parent, $object);\n\t\tmenuItem -d true;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kSelect\"))  -c (\"select -r \" + $object);\n"
		+ "\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kSelectHierarchy\"))  -c (\"select -hierarchy \" + $object);\n    \tmenuItem -d true;\n\tif( (objExists(($object+\".Parent\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n\t\t\t\twhile(`objExists( ($object+\".Parent_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Parent_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Parent to: \"+$parent) -c (\"JTDdynParentSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tmenuItem -d true;\n\t\tif( (objExists(($object+\".Follow\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n"
		+ "\t\t\t\twhile(`objExists( ($object+\".Follow_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Follow_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Follow: \"+$parent) -c (\"JTDfollowSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".IKFK\") ))\n\t\t{\n\t\t\t\tstring $JTDupSW[] = `listConnections ($object+\".SWup\")`;\n\t\t\t\tstring $JTDmidSW[] = `listConnections ($object+\".SWmid\")`;\n\t\t\t\tstring $JTDupFK[] = `listConnections ($object+\".FKup\")`;\n\t\t\t\tstring $JTDmidFK[] = `listConnections ($object+\".FKmid\")`;\n\t\t\t\tstring $JTDlowFK[] = `listConnections ($object+\".FKlow\")`;\n\t\t\t\tstring $JTDupIK[] = `listConnections ($object+\".IKup\")`;\n\t\t\t\tstring $JTDmidIK[] = `listConnections ($object+\".IKmid\")`;\n\t\t\t\tstring $JTDIKpos[] = `listConnections ($object+\".IKpos\")`;\n"
		+ "\t\t\t\tstring $JTDIKcntrl[] = `listConnections ($object+\".IKcntrl\")`;\n\t\t\t\tstring $JTDPV[] = `listConnections ($object+\".PV\")`;\n\t\t\t\tstring $JTDPVpos[] = `listConnections ($object+\".PVsnapPos\")`;\n\t\t\t\tif( `getAttr($object+\".IKFK\")` == 0 ) menuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\telse if( `getAttr($object+\".IKFK\")` == 1 ) menuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n\t\t\t\telse \n\t\t\t\t{\n\t\t\t\t\t\tmenuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\t\t\tmenuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n"
		+ "\t\t\t\t}\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".js_pivotObj\") ) )\n\t\t{\n\t\t\tmenuItem -l \"Select Moveable Pivot\" -c (\"js_pivot_createMov (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Apply & Key Moved Pivot\" -c (\"js_pivot_snap (\\\"\"+$object+\"\\\", 1)\");\n\t\t\tstring $menu = `menuItem -subMenu true -aob true -l \"Pivot Options\"`;\n\t\t\tmenuItem -l \"Toggle Moveable Pivot Locator\" -c (\"js_pivot_mov_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Toggle Actual Pivot Locator\" -c (\"js_pivot_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Reset Pivot\" -c (\"jd_pivot_reset (\\\"\"+$object+\"\\\")\");\n\t\t\tsetParent -m $parent;\n\t\t\tmenuItem -d true;\n\t\t}\n\t\t\n\t\toptionalDagMenuProc( $parent, $object );\n\t\tstring $menu = `menuItem -subMenu true -aob true -label (uiRes(\"m_dagMenuProc.kInputs\")) `;\n\t\tmenu -e \n\t\t\t-pmc ( \"createHistoryMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n\t\t$menu = `menuItem -subMenu true -aob true -label (uiRes(\"m_dagMenuProc.kOutputs\")) `;\n\t\tmenu -e -pmc ( \"createFutureMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n"
		+ "\t \t// Look at the shape child of this object\n\t \t//\n \t\tstring $shapes[] = `listRelatives -path -s $object`;\n\t\t// get current selection of shapes\n\t\tstring $currentSel[] = `ls -sl -dagObjects -shapes` ;\n\t\tstring $paintParent = \"\" ;\n\t\tint $selIndex  ;\n \t\tint $i;\n \t\tfor ($i = 0; $i < size($shapes); ++$i) \n\t\t{\n\t\t\tstring $nodeType = `nodeType $shapes[$i]` ;\n\t\t\tif ( ( $nodeType == \"nurbsSurface\") ||\n\t\t\t\t ( $nodeType == \"mesh\") ||\n\t\t\t\t ( $nodeType == \"subdiv\")) \n\t\t\t{\n\t\t\t\t// save the object name if it is not already selected by the user\n\t\t\t\t// We use this info to select the object if user chooses a paint option\n\t\t\t\t//\n\t\t\t\t// If user has selected multiple objects and is using context menu on one of them\n\t\t\t\t// we do not change the selection list as user may want to paint some attribute \n\t\t\t\t// on all of them. (It is the way it has been working all along...we don't want to \n\t\t\t\t// break it )\n\t\t\t\t\n\t\t\t\tint $found = 0 ;\n\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t{\n\t\t\t\t\tif( $shapes[$i] == $currentSel[ $selIndex  ] )\n"
		+ "\t\t\t\t\t{\n\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\tbreak ;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\tif( $found )\n\t\t\t\t{\n\t\t\t\t\t$artSelectObject = \"\" ;\n\t\t\t\t}\n\t\t\t\telse\n\t\t\t\t{\n\t\t\t\t\t// check if the object is in component selection mode\n\t\t\t\t\t// and if it is, do not do any further selection.\n\t\t\t\t\t// We are assuming that if the object is in hilite mode\n\t\t\t\t\t// then the user is in component selection mode.\n\t\t\t\t\t\n\t\t\t\t\t$currentSel = `ls -hilite` ;\n\t\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t\t{\n\t\t\t\t\t\tif( $object == $currentSel[ $selIndex  ] )\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\t\tbreak ;\n\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tif( !$found ) \n\t\t\t\t\t\t$artSelectObject = $object ;\n\t\t\t\t\telse\n\t\t\t\t\t\t$artSelectObject = \"\" ;\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\t$paintParent = `menuItem -subMenu true -aob true -label (uiRes(\"m_dagMenuProc.kPaintSubmenu\")) `;\n\t\t\t\tmenu -e\t-pmc ( \"createArtAttrMenuItems \\\"\"+ $paintParent +\"\\\" \"+$object ) $paintParent ;\n\t\t\t\tsetParent -m $parent;\n\t\t\t\tbreak ;\n\t\t\t}\n\t\t}\n\t    $menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kActions\")) `;\n\t\tmenu -e -pmc ( \"createActionsMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n"
		+ "\t\tsetParent -m $parent;\n\t\t// If the object can handle uv sets then add the uvset menu\n\t\t//\n\t\tstring $shape = objectHandlesUvSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kUVSets\")) `;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createUVsetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+ $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\tstring $shape = objectHandlesColorSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kColorSets\")) `;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createColorSetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+ $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\t// Shader menu to be able to quickly assign existing shaders\n\t\t// to the object under the pointer.\n\t\t//\n    \tmenuItem -d true;\n \t\tmenuItem -label (uiRes(\"m_dagMenuProc.kMaterialAttributes\")) -c (\"showSG \"+$object);\n    \t\n    \tmenuItem -d true;\n        \n        buildShaderMenus($object);\n        \n        menuItem -d true;\n        menuItem -divider true;\n        string $removeOverrideMenuItem = `menuItem \n"
		+ "\t\t\t-label (uiRes(\"m_dagMenuProc.kRemoveMaterialOverride\"))\n            -subMenu true`;\n        menuItem -edit -postMenuCommand\n            (\"buildMaterialRemoveOverrideMenu -surface \"+$object+\" \"+$removeOverrideMenuItem)\n            $removeOverrideMenuItem;\n        setParent -m ..;\n\t\tint $mentalIsLoaded = 0;\n\t\tstring $renderer;\n\t    for ($renderer in `renderer -query -namesOfAvailableRenderers`) {\n\t\t\tif( $renderer == \"mentalRay\" ) {\n\t\t\t\t$mentalIsLoaded = 1;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\tif ($mentalIsLoaded) {\n \t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kBaking\")) `;\n \t\t\tmenu -e\n\t\t\t\t-pmc ( \"createBakingMenuItems \\\"\"+$menu+\"\\\" \"+$object )\n\t\t\t\t$menu;\n \t\t\tsetParent -m $parent;\n\t\t}\n\t\tif ($mode == \"dynamicsMenuSet\") {\n\t\t\tmenuItem -d true;\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kConnectField\"))  -c (\"connectDynamic -f \" + $object);\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kConnectEmitter\"))  -c (\"connectDynamic -em \" + $object);\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kConnectCollision\"))  -c (\"connectDynamic -c \" + $object);\n"
		+ "\t\t}\n\t\t// is there a reference associated with the object ?\n\t\t// and if so, is it in a loaded or unloaded state?\n\t\tstring $refNode = `getRelatedReference $object`;\n\t\tif( size($refNode) > 0) {\n\t\t\tmenuItem -d true;\n\t\t\tif( `file -rfn $refNode -q -dr` ) {\n\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kLoadRelatedReference\"))  -c (\"loadRelatedReference \" + $object);\n\t\t\t} else {\n\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kReloadRelatedReference\"))  -c (\"loadRelatedReference \" + $object);\n\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kUnloadRelatedReference\"))  -c (\"unloadRelatedReference \" + $object);\n\t\t\t}\n\t\t\t// Is this reference a proxy? If so, add proxy switch submenu\n\t\t\t//\n\t\t\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\t\t\tif(size($proxyNodes) > 0) {\n\t\t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kReloadProxy\")) `;\n\t\t\t\tmenu -e\n\t\t\t\t\t-pmc ( \"createSwitchProxyMenuItems \\\"\"+$menu+\"\\\" \"+$object + \" \" + $refNode )\n\t\t\t\t\t$menu;\n\t\t\t\tsetParent -m $parent;\n\t\t\t}\n\t\t}\n\t\tsetParent -m $parent;\n\t} else {\n\t\tstring $warn = (uiRes(\"m_dagMenuProc.kMenuWarn\"));\n"
		+ "\t\twarning(`format -s $parent $warn`);\n\t}\n}\n");
	setAttr ".st" 1;
createNode script -n "FIXMEJOSH_pivotScripts";
	setAttr ".b" -type "string" (
		"//These scripts based on Jason Schliefer's jspivot.mel  All props go to him.  Please support him by visiting his website at www.jonhandhisdog.com\nglobal proc js_pivot_createMov (string $control)\n{\n    // this proc will toggle the visibility of the mov pivot on, and then select it.  That way the animator can grab it and move\n    // it to the right place.\n\tfloat $t[];\n\tstring $truePiv;\n        $pivot = `js_pivot_get $control \"js_pivotMovObj\"`;\n        if ($pivot != \"\")\n        {\n            showHidden $pivot;\n            $truePiv = `js_pivot_get $pivot \"js_pivotObj\"`;\n            $t = `getAttr ($truePiv + \".t\")`;\n            setAttr ($pivot + \".t\") $t[0] $t[1] $t[2];\n        }\n\tselect $pivot;\n\tsetToolTo moveSuperContext;\n}\nglobal proc js_pivot_snap (string $control, int $keyOption)\n{\n    // Based on the selected object, this procedure will snap the object to the position of the new pivot.\n        string $object;\n        string $pivot;\n        string $pivotMov;\n        $object = `js_pivot_getObj $control`;\n        $pivot  = `js_pivot_get $control \"js_pivotObj\"`;\n"
		+ "        $pivotMov  = `js_pivot_get $control \"js_pivotMovObj\"`;\n        if (($object == \"\") || ($pivot == \"\") || ($pivotMov == \"\"))\n        {\n            error ($control + \" was not set up to handle pivot modification.\\n\");\n        }\n        // first, save a keyframe at the previous frame for the object, and the pivot\n \t$frame = `currentTime -q`;\n\tif($keyOption == 1)\n\t{ \n\t        print (\"Saving a key for \" + $object + \" and \" + $pivot + \" at frame \" + ($frame-1) + \"\\n\");\n       \t setKeyframe -t ($frame-1) -itt \"linear\" -ott \"linear\" $pivot; \n\t        setKeyframe -t ($frame-1) $object;\n\t}\n        // now get the local translation of pivotMov\n        $trans = `getAttr ($pivotMov + \".t\")`;\n        // get the world position\n        $world = `xform -q -ws -rp $pivotMov`;\n        // set the position of old pivot to be the same as the new pivot\n        setAttr ($pivot + \".t\") $trans[0] $trans[1] $trans[2];\n        // now move the object\n        move -rpr $world[0] $world[1] $world[2] ($object);\n        // now save a keyframe\n"
		+ "\tif($keyOption == 1)\n\t{\n        \tsetKeyframe -t ($frame) -itt \"linear\" -ott \"linear\" $pivot; \n\t        setKeyframe -t ($frame) $object;\n\t}\n\t setAttr ($pivotMov+\".v\") 0;\n        select $object;\n}\nglobal proc string js_pivot_get (string $object, string $type)\n{\n    string $return;\n    string $tmp[0];\n    // we're going to grab the object's pivot, or the pivot move object.  If $type is \"js_pivotObj\", we'll\n    // grab the pivot.  If it's \"js_pivotMovObj\", we'll return the move pivot.\n    //\n   \n    // get the object\n    $object = `js_pivot_getObj $object`;\n    if ($object != \"\")\n    {\n        if (`attributeQuery -exists -node $object $type`)\n        {\n            // yep, this object has a pivot.  Let's get it\n            $tmp = `listConnections -type transform ($object + \".\" + $type)`;\n            $return = $tmp[0];\n        }\n    }\n    return $return;\n}\nglobal proc string js_pivot_getObj (string $sel)\n{\n    // based on the selected item, return the object\n    string $return;\n    \n    if (`attributeQuery -exists -node $sel \"js_pivotObj\"`)\n"
		+ "    {\n        $return = $sel;\n    }\n    else\n    {\n        // okay, we probably have one of the pivots selected..\n        if ((`attributeQuery -exists -node $sel \"js_pivot\"`) || (`attributeQuery -exists -node $sel \"js_pivotMov\"`))\n        {\n            $tmp = `listConnections -p true -d true ($sel + \".message\")`;\n            string $item;\n            for ($item in $tmp)\n            {\n                // check each one and see if what's connected contains \"js_pivotObj\"\n                if (`gmatch $item \"*js_pivot*\"`)\n                {\n                    // okay, we've got a pivot selected, and we know that the item that we've just found will\n                    // have the connection to the object we want.\n                    // let's get rid of the attribute\n                    string $break[0];\n                    tokenize ($item, \".\", $break);\n                    $return = $break[0];\n                }\n            }\n            \n        }\n    }\n    return $return;\n}\nglobal proc js_pivot_toggle (string $control)\n"
		+ "{\n        $pivot = `js_pivot_get $control \"js_pivotObj\"`; \n        $onOff = (!`getAttr ($pivot + \".v\")`); \n\t setAttr ($pivot + \".v\") $onOff;\n\t if($onOff == 1) select $pivot;\n\t else select $control;\n}\nglobal proc js_pivot_mov_toggle (string $control)\n{\n        $pivot = `js_pivot_get $control \"js_pivotMovObj\"`; \n        $onOff = (!`getAttr ($pivot + \".v\")`); \n        setAttr ($pivot + \".v\") $onOff;\n\t if($onOff == 1) select $pivot;\n\t else select $control;\n}\nglobal proc jd_pivot_reset (string $control)\n{\n       $pivot = `js_pivot_get $control \"js_pivotMovObj\"`; \n\tif(objExists(($pivot+\".pivotX\")) ) setAttr ($pivot+\".tx\") `getAttr ($pivot+\".pivotX\")`;\n\tif(objExists(($pivot+\".pivotY\")) ) setAttr ($pivot+\".ty\") `getAttr ($pivot+\".pivotY\")`;\n\tif(objExists(($pivot+\".pivotZ\")) ) setAttr ($pivot+\".tz\") `getAttr ($pivot+\".pivotZ\")`;\n\tjs_pivot_snap($control, 0);\n}\nglobal proc string[] js_pivot_create ()\n{\n    // This procedure will create a pivot control on the currently selected objects.\n    // it will actually create 2 pivots.. one which is hooked up to the pivot, and the other\n"
		+ "    // which can be used to toggle the re-position of the pivot.\n    //\n    // get the selected objects that the user has picked in the 3dView\n    string $objs[0];\n    string $pivotObjects[0];\n    int $pivotCount = 0;\n    $objs = `ls -sl`;\n    // for each item selected, we will check and see if a pivot is connected.\n    // if there isn't one, then we'll create one.  If there is, then we will \n    // go on to the next object\n    for ($obj in $objs)\n    {\n        string $pivotObj;\n        $pivotObj = `js_pivot_get $obj \"js_pivotObj\"`;\n        if ($pivotObj == \"\")\n        {\n            // time to create a new pivot\n            // create a locator\n            string $locator[0];\n            $locator = `spaceLocator`;\n            $locator[0] = `rename $locator[0] ($obj + \"_pivot_anim\")`;\n            // get the position of the object\n            $pos = `xform -q -ws -rp $obj`;\n            // set the position of the locator\n            move -a -ws $pos[0] $pos[1] $pos[2] $locator[0];\n            // parent the locator under the $object\n"
		+ "            parent $locator[0] $obj;\n            // set the locator's rotation to 0\n            setAttr ($locator[0] + \".r\") 0 0 0;\n\t\t//makeIdentity -apply true -t 1 -r 0 -s 0 -n 0 $locator[0];\n            // create a new locator which will be used as the second pivot\n            $dup = `duplicate $locator[0]`;\n            $dupLoc = `rename $dup[0] ($obj + \"_pivot_mov\")`;\n            // scale the duplicated locator a bit smaller\n            scale .8 .8 .8 $dupLoc;\n            // connect the locator's translation to the objects rotatePivot\n            connectAttr -f ($locator[0] + \".t\") ($obj + \".rotatePivot\");\n            // set the locator's scale and rotate attributes locked and unkeyable\n            $attrs = {\"rx\", \"ry\", \"rz\", \"sx\", \"sy\", \"sz\"};\n            for ($at in $attrs)\n            {\n                setAttr -l 1 -k 0 ($locator[0] + \".\" + $at);\n                setAttr -l 1 -k 0 ($dupLoc + \".\" + $at);\n            }\n            // set the visibility unkeyable, but not locked\n            setAttr -k 0 ($locator[0] + \".v\");\n"
		+ "            setAttr -k 0 ($dupLoc + \".v\");\n        \n            hide $dupLoc;\n            // add an attribute called \"js_pivot\";\n            addAttr -ln \"js_pivot\" -at \"message\" $locator[0];\n            addAttr -ln \"js_pivotMov\" -at \"message\" $dupLoc;\n            addAttr -ln \"js_pivotObj\" -at \"message\" $obj;\n            addAttr -ln \"js_pivotMovObj\" -at \"message\" $obj;\n\t\n\taddAttr -ln pivotX -at double $dupLoc;\n\tsetAttr -l 1 -k 0 ($dupLoc+\".pivotX\") `getAttr ($dupLoc+\".tx\")`;\n\taddAttr -ln pivotY -at double $dupLoc;\n\tsetAttr -l 1 -k 0 ($dupLoc+\".pivotY\") `getAttr ($dupLoc+\".ty\")`;\n\taddAttr -ln pivotZ -at double $dupLoc;\n\tsetAttr -l 1 -k 0 ($dupLoc+\".pivotZ\") `getAttr ($dupLoc+\".tz\")`;\n            connectAttr ($locator[0] + \".message\") ($obj + \".js_pivotObj\") ;\n            connectAttr ($dupLoc + \".message\") ($obj + \".js_pivotMovObj\") ;\n            $pivotObjects[$pivotCount++] = $locator[0];\n            $pivotObjects[$pivotCount++] = $dupLoc;\n        }\n    }\n    return $pivotObjects;\n}\n");
	setAttr ".st" 1;
createNode curveInfo -n "FIXMEJOSH_curveInfo4";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "FIXMEJOSH_back_curve_normalizedScale6";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40.923817 1 1 ;
createNode animCurveUL -n "animCurveUL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
createNode animCurveUL -n "animCurveUL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
createNode animCurveUL -n "animCurveUL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
createNode shadingEngine -n "FixMe_Default";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "Default";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FixMe_materialInfo43";
createNode phong -n "phong10";
	setAttr ".dc" 0.84552848339080811;
	setAttr ".c" -type "float3" 0.98900002 0.79045761 0.718014 ;
	setAttr ".sc" -type "float3" 0.23576714 0.23576714 0.23576714 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 25.902439117431641;
	setAttr ".miic" -type "float3" 3.1415927 3.1415927 3.1415927 ;
createNode shadingEngine -n "L_EyeSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Marcus_materialInfo1";
createNode phong -n "L_EyeSG1";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0.18184000253677368;
	setAttr ".cp" 5;
createNode shadingEngine -n "phong8SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Marcus_materialInfo3";
createNode phong -n "phong8SG1";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0 0 0 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "CorrineSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Marcus_materialInfo5";
createNode phong -n "Corrine";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.92941201 0.941176 0.89411801 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 253.72000122070312;
createNode clamp -n "mouthEmote_left_animLeftClamp5";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "mouthEmote_left_animLeftMultDivide5";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode remapValue -n "leftEmote_rmNode";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "subtrWideFromEmotes_pmAvNode";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  0 0;
createNode multiplyDivide -n "MultTX_mdNode";
createNode multiplyDivide -n "Limiter_mdNode";
	setAttr ".i2" -type "float3" 0.0099999998 0.0099999998 1 ;
createNode multiplyDivide -n "absoluteMaker_mdNode";
createNode clamp -n "mouthEmote_left_animTopClamp4";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "mouthEmote_left_animBottomClamp4";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "mouthEmote_left_animBottomMultDivide4";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "mouthEmote_right_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "mouthEmote_right_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode remapValue -n "rightEmote_rmNode";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "subtrWideFromEmotesRight_pmAvNode";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  0 0;
createNode clamp -n "mouthEmote_right_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "mouthEmote_right_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "mouthEmote_right_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprLip_center_animTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLip_center_animTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprLip_center_animTopRightMultDivide";
createNode clamp -n "uprLip_center_animTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLip_center_animTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "uprLip_center_animTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "uprLip_center_animTopLeftMultDivide";
createNode multiplyDivide -n "uprLip_center_animTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprLip_center_animBottomRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLip_center_animBottomRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprLip_center_animBottomRightMultDivide";
createNode multiplyDivide -n "uprLip_center_animBottomRightYMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprLip_center_animBottomLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLip_center_animBottomLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "uprLip_center_animBottomLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "uprLip_center_animBottomLeftMultDivide";
createNode multiplyDivide -n "uprLip_center_animBottomLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "uprLip_center_animBottomLeftYMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrLip_center_animTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLip_center_animTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrLip_center_animTopRightMultDivide";
createNode clamp -n "lwrLip_center_animTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLip_center_animTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "lwrLip_center_animTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "lwrLip_center_animTopLeftMultDivide";
createNode multiplyDivide -n "lwrLip_center_animTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrLip_center_animBottomRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLip_center_animBottomRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrLip_center_animBottomRightMultDivide";
createNode multiplyDivide -n "lwrLip_center_animBottomRightYMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrLip_center_animBottomLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLip_center_animBottomLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "lwrLip_center_animBottomLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "lwrLip_center_animBottomLeftMultDivide";
createNode multiplyDivide -n "lwrLip_center_animBottomLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "lwrLip_center_animBottomLeftYMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "mouthMove_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "mouthMove_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "mouthMove_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "mouthMove_animRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "mouthMove_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "mouthMove_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprLip_left_animTopClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLip_left_animLeftClamp3";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprLip_left_animLeftMultDivide3";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprLip_left_animRightClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLip_left_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrLip_left_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrLip_left_animRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLip_left_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLip_right_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrLip_right_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrLip_right_animRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrLip_right_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLip_right_animLeftClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprLip_right_animLeftMultDivide1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprLip_right_animRightClamp2";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprLip_right_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "cheek_left_animRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "cheek_left_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "cheek_left_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "cheek_left_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "cheek_left_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "cheek_left_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "cheek_right_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "cheek_right_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "cheek_right_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "cheek_right_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "cheek_right_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "cheek_right_animRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "browInner_left_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "browInner_left_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "browInner_left_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "browInner_left_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "browInner_left_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "browInner_right_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "browInner_right_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "browInner_right_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "browInner_right_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "browInner_right_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "browMid_left_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "browMid_left_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "browMid_left_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "browMid_right_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "browMid_right_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "browMid_right_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "browOuter_left_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "browOuter_left_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "browOuter_left_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "browOuter_right_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "browOuter_right_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "browOuter_right_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode shadingEngine -n "MorphyFace5:MorphyFace:FixMe_lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "MorphyFace5:MorphyFace:FixMe_materialInfo40";
createNode shadingEngine -n "Marcus_Marcus_phong9SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Marcus_Marcus_materialInfo7";
createNode groupId -n "groupId1166";
	setAttr ".ihi" 0;
createNode curveInfo -n "FIXMEJOSH_curveInfo5";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "tongueIK_crv_normalizedScale";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 7.1398597 1 1 ;
createNode curveInfo -n "curveInfo2";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "tongueIK_crv_normalizedScale1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 7.1398597 1 1 ;
createNode clamp -n "tongueCurl_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "tongueCurl_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "tongueCurl_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "tongueCurl_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "tongueCurl_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "tongueCurl_animRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode phong -n "Tongue";
	setAttr ".c" -type "float3" 0.61900002 0.18254104 0.134942 ;
	setAttr ".sc" -type "float3" 0.58678001 0.58678001 0.58678001 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 22.24799919128418;
createNode misss_fast_skin_maya -n "misss_fast_skin_maya1";
	setAttr ".S05" 1;
createNode shadingEngine -n "misss_fast_skin_maya1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode mentalrayTexture -n "mentalrayTexture1";
	setAttr ".miw" yes;
	setAttr ".midp" 4;
createNode misss_fast_lmap_maya -n "misss_fast_lmap_maya1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "D:/My Dropbox/jbHumanRig//Maya/sourceimages/Diffuse.png";
createNode place2dTexture -n "place2dTexture2";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "D:/My Dropbox/jbHumanRig//Maya/sourceimages/HeadTextureLight.png";
createNode place2dTexture -n "place2dTexture3";
createNode phong -n "teeth_shdr";
	setAttr ".dc" 0.90908002853393555;
	setAttr ".c" -type "float3" 0.94700003 1 0.96373034 ;
	setAttr ".sc" -type "float3" 0.57852 0.57852 0.57852 ;
	setAttr ".rfl" 0.15703999996185303;
	setAttr ".cp" 91.900001525878906;
createNode phong -n "hair_phong";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.221 0.14100143 0.050608993 ;
	setAttr ".sc" -type "float3" 0.19834 0.19834 0.19834 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 22.24799919128418;
createNode clamp -n "uprEarTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprEarLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprEarLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprEarBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprEarBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprEarRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrEarRightClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrEarBottomClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrEarBottomMultDivide1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrEarTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrEarLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrEarLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode file -n "file4";
	setAttr ".ftn" -type "string" "D:/My Dropbox/jbHumanRig//Maya/sourceimages/mary_Spec.png";
createNode place2dTexture -n "place2dTexture4";
createNode file -n "file5";
	setAttr ".ftn" -type "string" "D:/My Dropbox/jbHumanRig//Maya/sourceimages/Eyes/GreenEye.png";
createNode place2dTexture -n "place2dTexture5";
createNode clamp -n "BrowRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "BrowLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "BrowLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "LidsRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "LidsLeftClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "LidsLeftMultDivide1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "CheekRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NoseLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "NoseLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "NoseRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NoseBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "NoseBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "NoseTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NoseTipLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "NoseTipLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "NoseTipRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NoseTipBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "NoseTipBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "NoseTipTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "LipsRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "LipsLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "LipsLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "HeavyRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NeckRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NeckLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "NeckLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "ChinRightClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "ChinLeftClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "ChinLeftMultDivide1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "JawLineRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "JawLineLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "JawLineLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "JawLineTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "JawLineBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "JawLineBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "BrowRTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "BrowRTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "BrowRTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "BrowRTopLeftMultDivide";
createNode multiplyDivide -n "BrowRTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "BrowRTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "BrowRTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "BrowRTopRightMultDivide";
createNode clamp -n "BrowLTopRightXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "BrowLTopRightYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "BrowLTopRightMultDivide";
createNode clamp -n "BrowLTopLeftXClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "BrowLTopLeftYClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "BrowLTopLeftAdd";
	setAttr ".i2" 1;
createNode multiplyDivide -n "BrowLTopLeftMultDivide";
createNode multiplyDivide -n "BrowLTopLeftXMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode lambert -n "accessory_shdr";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode script -n "FIXMEJOSH_rtClickMenu1";
	addAttr -ci true -sn "rtClick" -ln "rtClick" -dt "string";
	setAttr ".b" -type "string" (
		"JTDrunScripts;\nglobal proc JTDrunScripts()\n{\nstring $JTDnameSpace = \"\";\nstring $refs[] = `file -q -r`;\nfor($ref in $refs) \n{\n\t$JTDnameSpace = (`file -q -ns $ref` + \":\");\n\tif(!`objExists(($JTDnameSpace+\"rtClickMenu\"))`) $JTDnameSpace = \"\";\n}\nif ((getApplicationVersionAsFloat() >= 7.0) && (getApplicationVersionAsFloat() < 8.0))\n{\n\tscriptNode -executeBefore ($JTDnameSpace+\"dagMenuProc7\");\n}\nelse if ((getApplicationVersionAsFloat() >= 8.0) && (getApplicationVersionAsFloat() < 9.0))\n{\n\tscriptNode -executeBefore ($JTDnameSpace+\"dagMenuProc8\");\n}\n}\nglobal proc JTDdynParentSnap(string $control, int $enum)\n{\nfloat $JTDpos[];\nfloat $JTDrot[];\nstring $hasParentAttr[];\nint $onOff;\n$JTDpos = `xform -q -ws -rp $control`;\n$JTDrot = `xform -q -ws -ro $control`;\nif(objExists(($control+\".autoStretch\"))) {$onOff = `getAttr ($control+\".autoStretch\")`; setAttr ($control+\".autoStretch\") 0;}\nif(objExists(($control+\".parentPtr\"))) {$hasParentAttr = `listConnections ($control+\".parentPtr\")`;}\nif($hasParentAttr[0] != \"\") setAttr ($hasParentAttr[0]+\".Parent\") $enum;\n"
		+ "else setAttr ($control+\".Parent\") $enum;\nmove -a -ws -rpr $JTDpos[0] $JTDpos[1] $JTDpos[2] $control;\nrotate -a -ws $JTDrot[0] $JTDrot[1] $JTDrot[2] $control;\nif(objExists(($control+\".autoStretch\"))) setAttr ($control+\".autoStretch\") $onOff;\n}\nglobal proc JTDfollowSnap(string $control, int $enum)\n{\nfloat $JTDrot[];\n$JTDrot = `xform -q -ws -ro $control`;\nsetAttr ($control+\".Follow\") $enum;\nrotate -a -ws $JTDrot[0] $JTDrot[1] $JTDrot[2] $control;\n}\nproc JTDmatchFKIK(string $JTDswitcher, string $JTDupSW, string $JTDmidSW, string $JTDlowSW, string $JTDupFK, string $JTDmidFK, string $JTDlowFK, string $JTDupIK, string $JTDmidIK)\n{\nif(getAttr(($JTDswitcher+\".IKFK\")) != 0){\nfloat $upStretch = `getAttr ($JTDupIK+\".stretch\")`;\nfloat $midStretch = `getAttr ($JTDmidIK+\".stretch\")`;\nfloat $upRot[] = `xform -q -ws -ro $JTDupSW`;\nfloat $midRot[] = `xform -q -ws -ro $JTDmidSW`;\nfloat $lowRot[] = `xform -q -ws -ro $JTDlowSW`;\nrotate -a -ws $upRot[0] $upRot[1] $upRot[2] $JTDupFK;\nrotate -a -ws $midRot[0] $midRot[1] $midRot[2] $JTDmidFK;\n"
		+ "rotate -a -ws $lowRot[0] $lowRot[1] $lowRot[2] $JTDlowFK;\nsetAttr ($JTDupFK+\".stretch\") $upStretch;\nsetAttr ($JTDmidFK+\".stretch\") ($midStretch);\nsetAttr ($JTDswitcher+\".IKFK\") 0;}\nselect -r $JTDlowFK;\n}\nproc JTDmatchIKFK(string $JTDswitcher, string $JTDIKpos, string $JTDIKcntrl, string $JTDPV, string $JTDPVpos)\n{\nif(getAttr(($JTDswitcher+\".IKFK\")) != 1){\nfloat $lowRot[] = `xform -q -ws -ro $JTDIKpos`;\nfloat $lowPos[] = `xform -q -ws -rp $JTDIKpos`;\nfloat $midPos[] = `xform -q -ws -rp $JTDPVpos`;\nfloat $pivotPos[];\nif(objExists( ($JTDIKcntrl+\".js_pivotObj\") )) { $pivot = `js_pivot_get $JTDIKcntrl \"js_pivotObj\"`; $pivotPos[0] = `getAttr ($pivot+\".tx\")`; $pivotPos[1] = `getAttr ($pivot+\".ty\")`; $pivotPos[2] = `getAttr ($pivot+\".tz\")`; jd_pivot_reset($JTDIKcntrl);}\nmove -a -ws -rpr $lowPos[0] $lowPos[1] $lowPos[2] $JTDIKcntrl;\nrotate -a -ws $lowRot[0] $lowRot[1] $lowRot[2] $JTDIKcntrl;\nmove -a -ws -rpr $midPos[0] $midPos[1] $midPos[2] $JTDPV;\nsetAttr ($JTDswitcher+\".IKFK\") 1;\nif(objExists( ($JTDIKcntrl+\".js_pivotObj\") )) {$pivot = `js_pivot_get $JTDIKcntrl \"js_pivotMovObj\"`; setAttr ($pivot+\".tx\") $pivotPos[0]; setAttr ($pivot+\".ty\") $pivotPos[1]; setAttr ($pivot+\".tz\") $pivotPos[2]; js_pivot_snap($JTDIKcntrl, 0);}\n"
		+ "}\nselect -r $JTDIKcntrl;\n}\n");
	setAttr ".st" 1;
	setAttr -l on ".rtClick" -type "string" "rtClickMenu";
createNode script -n "dagMenuProc_eyes";
	setAttr ".b" -type "string" (
		"proc optionalDagMenuProc( string $parent, string $item )\n{\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tstring $shape = \"\";\n\tint $gotVisible = 0;\n\tif( size($object) < 1 ) return;\n\tfor( $i=0; $i<size($object); $i+=1) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor( $i=0; $i<size($object); $i+=1) {\n\t\t\tif( 0 == getAttr($object[$i] + \".io\")) {\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tif( \"\" != $shape ) {\n\t\tstring $nt = `nodeType $shape`;\n\t\tswitch( $nt ) {\n\t\t  case \"subdiv\":\n\t\t\tsubdOptionalDagMenuProc( $parent, $item );\n\t\t\tmenuItem -d true; \n\t\t\tbreak;\n\t\t  default:\n\t\t\t// Check to make sure we have a kPlugin prefix\n\t\t\tstring $apiNt = `nodeType -api $shape`;\n\t\t\tif ( startsWith( $apiNt, \"kPlugin\" ) ) {\n\t\t\t\tstring $nodeMenuCommand = $nt + \"DagMenuProc\";\n\t\t\t\tstring $nodeMenuCommandWithArgs = $nodeMenuCommand + \"(\\\"\" + $parent + \"\\\" , \\\"\" + $item + \"\\\" )\";\n"
		+ "\t\t\t\tif ( exists( $nodeMenuCommand ) ) {\n\t\t\t\t   eval( $nodeMenuCommandWithArgs );\n\t\t\t\t}\n\t\t\t}\n\t\t\tbreak;\n\t\t}\n\t}\n}\nproc int objectIsTrimmed(string $item)\n// Return true if this is a trimmed surface\n{\n\tstring $command = (\"getAttr -size \" + $item + \".trimFace\");\n\tint $trimCount = eval($command);\n\treturn ($trimCount != 0);\n}\nproc string getControlledHandle(string $item)\n{\n\tstring $handle;\n\tif (size(`ls ($item+\".ikBlend\")`)) {\n\t\tstring $connHandles[] =\n\t\t\t`listConnections -type ikHandle ($item+\".ikBlend\")`;\n\t\tif (size($connHandles)) {\n\t\t\t$handle = $connHandles[0];\n\t\t}\n\t}\n\treturn $handle;\n}\nproc int isIKcontroller(string $item)\n{\n\tstring $handle = getControlledHandle($item);\n\treturn (size($handle) > 0);\n}\nproc\ncreateFBIKmenuItems(string $parent,\n\t\t\t\t\tstring $item,\n\t\t\t\t\tstring $ikReachModeLocation,\n\t\t\t\t\tstring $keyBodyPartLocation,\n\t\t\t\t\tstring $keyAllLocation,\n\t\t\t\t\tstring $keySelectedLocation)\n{\n\tstring $reachKeyingMode = \"Reach Mode:\";\n\tint $rkm = `optionVar -q setIKKey`;\n\tswitch ($rkm)\n\t{\n\t\tcase 1:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" IK\";\n"
		+ "\t\t\tbreak;\n\t\tcase 2:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" FK\";\n\t\t\tbreak;\n\t\tcase 3:\n\t\t\t$reachKeyingMode = $reachKeyingMode + \" Simple\";\n\t\t\tbreak;\n\t}\t\n\tmenuItem -rp $ikReachModeLocation -label $reachKeyingMode\n\t\t-subMenu true\n\t\t-annotation (uiRes(\"m_dagMenuProc.kDetermineHowAnnot\")) ;\n\t\tmenuItem -rp \"S\" -label (uiRes(\"m_dagMenuProc.kIK\")) \n\t\t\t-command FBIKReachKeyingOptionIK;\n\t\tmenuItem -rp \"N\" -label (uiRes(\"m_dagMenuProc.kFK\")) \n\t\t\t-command FBIKReachKeyingOptionFK;\n\t\tmenuItem -rp \"E\" -label (uiRes(\"m_dagMenuProc.kSimpleNoReach\")) \n\t\t\t-command FBIKReachKeyingOptionSimple;\n\tsetParent -m $parent;\n\t\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kKeyAll\")) \n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"1\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyAllLocation\n\t\tkeyAllItem;\n\t\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kKeyBodyPart\")) \n\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"2\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keyBodyPartLocation\n\t\tkeyBodyPartItem;\n\t\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kKeySelected\")) \n"
		+ "\t\t-echoCommand true\n\t\t-c (\"doSetFullBodyIKKeysArgList 2 {\\\"4\\\", \\\"2\\\", \\\"\"+$item+\"\\\"};\")\n\t\t-rp $keySelectedLocation\n\t\tkeySelectedItem;\n}\nproc checkForSkinInfluenceItem(string $item, string $quadrant)\n{\n\tint $isJoint = (nodeType($item) == \"joint\");\n\t\n\t// Check if the current context is the skinPaint context \n\t// and the the joint is connected to a skinCluster\n\t//\n\tstring  $currContext = `currentCtx`;\n\tstring  $currTool    = \"\";\n\tif(`contextInfo -ex $currContext`) {\n\t\t$currTool = `contextInfo -c $currContext`;\n\t}\n\tstring $paintWeights = (uiRes(\"m_dagMenuProc.kPaintWeights\"));\n\tif ( $currTool == \"artAttrSkin\" ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"skinWeights\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"skinCluster\")\n\t\t\t\t{\t\n\t\t\t\t\t// select the surface (not the joint) and set\n\t\t\t\t\t// the joint as the current influence\n\t\t\t\t\t//\n\t\t\t\t\tstring $currSel[] = `ls -sl`;\n\t\t\t\t\tstring $currSelString;\n"
		+ "\t\t\t\t\tif (size($currSel) > 0) {\n\t\t\t\t\t\tstring $currObj;\n\t\t\t\t\t\t$currSelString = \"select -r \";\n\t\t\t\t\t\tfor ($currObj in $currSel) {\n\t\t\t\t\t\t\t$currSelString += ($currObj+\" \");\n\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tmenuItem -label $paintWeights \n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t-c ($currSelString+\"; setSmoothSkinInfluence \" + $item)\n\t\t\t\t\t\t-rp $quadrant\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\t\t// menu for skinCluster paint\n\t// Check if the current context is the clusterPaint context \n\t// and the the joint is connected to a jointCluster\n\t//\n\telse if ( $isJoint && ($currTool == \"artAttr\") ) {\n\t\tstring $whichTool = `artAttrCtx -q -whichTool $currContext`;\n\t\tif ( $whichTool == \"general\" )  {\n\t\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\t\tstring $conn;\n\t\t\tfor($conn in $connL) {\n\t\t\t\tif (`nodeType $conn` == \"jointCluster\")\n\t\t\t\t{\n\t\t\t\t\tstring $artCommand = \"artAttrCtx\" ;\n\t\t\t\t\tstring $attribute = \"cluster.\" + $conn +  \".weights\" ;\n\t\t\t\t\tmenuItem -label $paintWeights \n\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n"
		+ "\t\t\t\t\t\t//-c (\"artAttrCtx -e -pas \\\"cluster.\" + $conn +  \".weights\\\" `currentCtx`\")\n\t\t\t\t\t\t-c (\"artSetToolAndSelectAttr( \\\"\" + $artCommand + \"\\\", \\\"\" + $attribute + \"\\\" )\")\n\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n\t// menu for joint-set paint\n\t// Check if the current context is the setPaint context \n\t// and the the joint is connected to a objectSet via jointCluster\n\t//\n\telse if ( $isJoint && ($currTool == \"artSetPaint\") ) {\n\t\tstring $connL[] = `listConnections ($item+\".worldMatrix\")`;\n\t\tstring $conn;\n\t\tfor($conn in $connL) {\n\t\t\tif (`nodeType $conn` == \"jointCluster\") {\t\n\t\t\t\tstring $connS[] = `listConnections ($conn+\".message\")`;\n\t\t\t\tfor($set in $connS) {\n\t\t\t\t\tif (`nodeType $set` == \"objectSet\") {\n\t\t\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPaintSetMembership\")) \n\t\t\t\t\t\t\t-echoCommand true\n\t\t\t\t\t\t\t// the following command doesnot update the UI hence we use the next one\n\t\t\t\t\t\t\t//-c (\"artSetPaintCtx -e -settomodify \" + $set + \" `currentCtx`\")\n\t\t\t\t\t\t\t-c (\"artSetPaintSelectSet( \\\"\" + $set + \"\\\" )\")\n"
		+ "\t\t\t\t\t\t\t-rp \"N\"\n\t\t\t\t\t\t\tpaintWeightItem;\n\t\t\t\t\t\tbreak;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n}\nglobal proc string[] objectSelectMasks(string $item)\n// Returns the component selection masks that apply to this object\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tswitch ($nt) {\n\t\tcase \"lattice\":\n\t\t\t$maskList[0] = \"latticePoint\";\n\t\t\tbreak;\t\n\t\tcase \"locator\":\n\t\t\t$maskList[0] = \"locator\";\n\t\t\tbreak;\t\n\t\tcase \"nurbsCurve\":\n\t\t\t$maskList[0] = \"curveParameterPoint\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"editPoint\";\n\t\t\t$maskList[3] = \"hull\";\n"
		+ "\t\t\tbreak;\n\t\tcase \"nurbsSurface\":\n\t\t\t$maskList[0] = \"isoparm\";\n\t\t\t$maskList[1] = \"controlVertex\";\n\t\t\t$maskList[2] = \"surfaceParameterPoint\";\n\t\t\t$maskList[3] = \"hull\";\n\t\t\t$maskList[4] = \"surfaceFace\";\n\t\t\t$maskList[5] = \"surfaceUV\"; \n\t\t\tif (objectIsTrimmed($shape)) {\n\t\t\t\t$maskList[6] = \"surfaceEdge\";\n\t\t\t}\n\t\t\tbreak;\n\t\tcase \"mesh\":\n\t\t\t$maskList[0] = \"edge\";\n\t\t\t$maskList[1] = \"vertex\";\n\t\t\t$maskList[2] = \"facet\";\n\t\t\t$maskList[3] = \"puv\";\n\t\t\t$maskList[4] = \"pvf\";\n\t\t\tbreak;\n\t\tcase \"joint\":\n\t\t\t$maskList[0] = \"joint\";\t\t// special case\n\t\t\tbreak;\n\t\tcase \"ikHandle\":\n\t\t\t$maskList[0] = \"ikHandle\";\t// special case\n\t\t\tbreak;\n\t\tcase \"hikEffector\":\n\t\t// fall through\n\t\tcase \"hikFloorContactMarker\":\n\t\t\t$maskList[0] = \"hikEffector\";\t// special case\n\t\t\tbreak;\n\t\tcase \"particle\":\n\t\t\t$maskList[0] = \"particle\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"spring\":\n\t\t\t$maskList[0] = \"springComponent\";\t// only one choice\n\t\t\tbreak;\n\t\tcase \"subdiv\":\n \t\t\t$maskList[0] = \"subdivMeshPoint\";\t\n \t\t\t$maskList[1] = \"subdivMeshEdge\";\t\n \t\t\t$maskList[2] = \"subdivMeshFace\";\t\n"
		+ " \t\t\t$maskList[3] = \"subdivMeshUV\";\t\n\t\t\tbreak;\n\t}\n\tif (isIKcontroller($item)) {\n\t\t$maskList[size($maskList)] = \"ikfkHandle\";\n\t}\n\treturn $maskList;\n}\nglobal proc string dagMenuProc_selectionMask_melToUI( string $mel )\n{\n\tstring $result = $mel; \n \n\tswitch ($mel) \n\t{\n\t\tcase \"latticePoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kLatticePoint\"));\n\t\t\tbreak;\n\t\tcase \"locator\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kLocator\"));\n\t\t\tbreak;\t\t \n\t\tcase \"controlVertex\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kControlVertex\"));\n\t\t\tbreak;\n\t\tcase \"editPoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kEditPoint\"));\n\t\t\tbreak;\n\t\tcase \"hull\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kHull\"));\n\t\t\tbreak;\n\t\tcase \"isoparm\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kIsoparm\"));\n\t\t\tbreak;\t \t \n\t\tcase \"subdivMeshEdge\":\n\t\t\t// fall through\n\t\tcase \"edge\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kEdge\"));\n\t\t\tbreak;\n\t\tcase \"subdivMeshPoint\":\n\t\t\t// fall through\n\t\tcase \"vertex\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kVertex\"));\n\t\t\tbreak;\n\t\tcase \"joint\":\t\t\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kJoint\"));\n"
		+ "\t\t\tbreak;\n\t\tcase \"ikHandle\":\t\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kIkHandle\"));\n\t\t\tbreak;\n\t\tcase \"hikEffector\":\t\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kHikEffector\"));\n\t\t\tbreak;\t \n\t\tcase \"ikfkHandle\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kIkfkHandle\"));\n\t\t\tbreak;\n\t\tcase \"surfaceUV\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSurfaceUV\"));\n\t\t\tbreak;\n\t\tcase \"surfaceParameterPoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSurfacePoint\"));\n\t\t\tbreak;\t\n\t\tcase \"curveParameterPoint\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kCurvePoint\"));\n\t\t\tbreak;\n\t\tcase \"surfaceEdge\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kTrimEdge\"));\n\t\t\tbreak;\n\t\tcase \"surfaceFace\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSurfacePatch\"));\n\t\t\tbreak;\n\t\tcase \"subdivMeshUV\":\n\t\t\t// fall through\n\t\tcase \"puv\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kUV\"));\n\t\t\tbreak;\n\t\tcase \"subdivMeshFace\":\n\t\t\t// fall through\n\t\tcase \"facet\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kFace\"));\n\t\t\tbreak;\t\n\t\tcase \"pvf\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kVertexFace\"));\n\t\t\tbreak;\n\t\tcase \"particle\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kParticle\"));\n"
		+ "\t\t\tbreak;\n\t\tcase \"springComponent\":\n\t\t\t$result = (uiRes(\"m_dagMenuProc.kSpring\"));\n\t\t\tbreak;\t \t \n\t\tdefault:\n\t\t\tuiToMelMsg( \"dagMenuProc_selectionMask_melToUI\", $mel, 1 );\n\t\t\tbreak;\n\t}\n\treturn $result;\t\t \t \n}\nglobal proc createSelectMenuItems(string $parent, string $item)\n// Create a menu that shows the dag parenting for this object\n{\n\tstring $maskList[] = `objectSelectMasks($item)`;\n\tstring $radialPosition[];\n\tstring $uiName;\n\tint $i;\n\tint $isNurbObject     = false;\n\tint $isPolyObject     = false;\n\tint $isLatticeObject  = false;\n\tint $isJointObject    = false;\n\tint $isHikEffector\t  = false;\n\tint $isIkHandleObject = false;\n\tint $isIkFkHandleObject = false;\t\n\tint $isParticleObject = false;\n\tint $isSpringObject   = false;\n\tint $isSubdivObject   = false;\n\tint $isLocatorObject  = false;\n\tint $hasComponents\t  = false;\n\tif (1 <= size($maskList)) {\n\t\t$isLatticeObject = ($maskList[0] == \"latticePoint\");\n\t\t$isJointObject = ($maskList[0] == \"joint\");\n\t\t$isHikEffector = ($maskList[0] == \"hikEffector\");\n\t\t$isIkHandleObject = ($maskList[0] == \"ikHandle\");\n"
		+ "\t\t$isParticleObject = ($maskList[0] == \"particle\");\n\t\t$isSpringObject = ($maskList[0] == \"springComponent\");\n\t\t$isSubdivObject = ($maskList[0] == \"subdivMeshPoint\");\n\t\t$isLocatorObject = ($maskList[0] == \"locator\");\n\t}\n\tif (2 <= size($maskList)) {\n\t\t$isNurbObject = ($maskList[1] == \"controlVertex\");\n\t\t$isPolyObject = ($maskList[1] == \"vertex\");\n\t}\n\t// $maxRadialPos keeps track of how many octants of the\n\t// RMB marking menu will be populated\n\t//\n\tint $maskSize = size($maskList);\n\tint $maxRadialPos = size($maskList);\n\tif (($maskSize > 0) && ($maskList[$maskSize-1] == \"ikfkHandle\")) {\n\t\t$isIkFkHandleObject = true;\n\t\t$maxRadialPos--; // ikfkHandle does not populate like other masks\n\t}\n\t$hasComponents = $isLatticeObject || \n\t\t\t\t\t $isParticleObject ||\n\t\t\t\t\t $isSubdivObject ||\n\t\t\t\t\t $isSpringObject ||\n\t\t\t\t\t $isNurbObject ||\n\t\t\t\t\t $isPolyObject;\n\t// NOTE: \n\t//\t\t\tIf the object has selectable components, then the\n\t//\t\tradial position \"NE\" will be used for the menuItem:  \n\t//\t\t\"Revert back to object mode.\"\n\t//\n\tsetParent -menu $parent;\n"
		+ "\t$radialPosition[0] = \"N\";\n\t$radialPosition[1] = \"W\";\n\t$radialPosition[2] = \"S\";\n\t$radialPosition[3] = \"E\";\n\t$radialPosition[4] = \"SW\";\n\t$radialPosition[5] = \"SE\";\n\t$radialPosition[6] = \"NW\";\n\t$radialPosition[7] = \"NE\";\n    \n    string $disableikHandle = (uiRes(\"m_dagMenuProc.kDisableIkHandle\")); \n    string $enableIkHandle  = (uiRes(\"m_dagMenuProc.kEnableIkHandle\"));\n\tstring $setPreferred\t= (uiRes(\"m_dagMenuProc.kSetPreferredAngle\"));\n\tstring $assumePreferred = (uiRes(\"m_dagMenuProc.kAssumePreferredAngle\")); \n\t\n\tif ($isNurbObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t  \n\t\t\t  $uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\t\t\t  \n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -label $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuNURBComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the nurbs is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"NW\") quadrant\n"
		+ "\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isPolyObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t\t\n\t\t\t\t$uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\tmenuItem -label $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the poly is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"NW\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"NW\");\n\t} else if ($isLatticeObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] != \"ikfkHandle\") {\n\t\t\t\t$uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\n\t\t\t\tmenuItem -label $uiName\n\t\t\t\t\t-ecr false\n\t\t\t\t\t-c ( \"doMenuLatticeComponentSelection(\\\"\" +\n\t\t\t\t\t\t $item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t\t-rp $radialPosition[$i];\n\t\t\t}\n\t\t}\n\t} else if ($isJointObject) {\n\t\tstring $setCmd = `performSetPrefAngle 2`;\n"
		+ "\t\tstring $assumeCmd = `performAssumePrefAngle 2`;\t\t\n\t\t$setCmd += (\" \"+$item);\n\t\t$assumeCmd += (\" \"+$item);\n\t\tstring $jts[] = `ls -sl -type joint`;\n\t\tfor ($jointItem in $jts) {\n\t\t\tif ($jointItem != $item) {\n\t\t\t\t$setCmd += (\" \"+$jointItem);\n\t\t\t\t$assumeCmd += (\" \"+$jointItem);\n\t\t\t}\n\t\t}\n\t\tmenuItem -label $setPreferred \n\t\t\t-echoCommand true\n\t\t\t-c ($setCmd)\n\t\t\t-rp \"N\"\n\t\t\tsetPrefAngleItem;\n\t\t\n\t\tmenuItem -label $assumePreferred \n\t\t\t-echoCommand true\n\t\t\t-c ($assumeCmd)\n\t\t\t-rp \"S\"\n\t\t\tassumePrefAngleItem;\n\t\tstring $hikHandle[] = `listConnections -type hikHandle $item`;\n\t\tint $isFBIKjoint = (size($hikHandle) > 0);\n\t\tif ($isFBIKjoint) {\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t\t\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isHikEffector){\n\t\tif (nodeType($item) == \"hikFloorContactMarker\") {\n\t\t\tstring $parentItems[] = `listRelatives -pa -p $item`;\n"
		+ "\t\t\tif (size($parentItems) &&\n\t\t\t\tnodeType($parentItems[0]) == \"hikEffector\") {\n\t\t\t\t$item = $parentItems[0];\n\t\t\t} else {\n\t\t\t\t$isHikEffector = false;\n\t\t\t}\n\t\t}\n\t\tif ($isHikEffector) {\n\t\t    string $pivotOffsetPlug = $item + \".pivotOffset\";\n\t\t    float $pivotOffset[] = `getAttr $pivotOffsetPlug`;\n\t\t    int $enablePin = (equivalentTol($pivotOffset[0],0.0,0.001) &&\n\t\t                      equivalentTol($pivotOffset[1],0.0,0.001) &&\n\t\t                      equivalentTol($pivotOffset[2],0.0,0.001));\n\t\t    \n\t\t\t// set pinning for hikEffectors\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPinBoth\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"3\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"N\"\n\t\t\t\tpinAllItem;\n\t\t\t\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPinTranslate\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"1\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"NW\"\n\t\t\t\tpinTransItem;\n\t\t\t\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kPinRotate\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"2\\\",\\\"\" + $item + \"\\\"};\")\n"
		+ "\t\t\t\t-enable $enablePin\n\t\t\t\t-rp \"SW\"\n\t\t\t\tpinRotItem;\n\t\t\t\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kUnpin\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"doPinHikEffectors 1 {\\\"0\\\",\\\"\" + $item + \"\\\"};\")\n\t\t\t\t-rp \"S\"\n\t\t\t\tunpinItem;\n\t\t\t\n\t\t\tcreateFBIKmenuItems($parent, $item,\"W\",\"NE\",\"E\",\"SE\");\n\t\t}\n\t} else if ($isLocatorObject) {\n\t\t// Check if the current context is the skinPaint context \n\t\t// and the the joint is connected to a skinCluster. If so, add\n\t\t// Paint Skin Weights to north (\"N\") quadrant\n\t\t//\n\t\tcheckForSkinInfluenceItem($item, \"N\");\n\t} else if ($isIkHandleObject) {\n\t\tstring $selectikHandlesJointsAnnot = (uiRes(\"m_dagMenuProc.kSelectikHandlesAnnot\"));\n\t\tstring $selectikHandlesAnnot = (uiRes(\"m_dagMenuProc.kEnableIKHandlesAnnot\"));\n\t\tmenuItem -label $setPreferred\n\t\t\t-annotation $selectikHandlesJointsAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (`performSetPrefAngle 2` + \" \" + $item)\n\t\t\t-rp \"W\"\n\t\t\tsetPrefAngleItem;\n\t\tmenuItem -label $assumePreferred \n\t\t\t-annotation $selectikHandlesJointsAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (`performAssumePrefAngle 2` + \" \" + $item)\n"
		+ "\t\t\t-rp \"E\"\n\t\t\tassumePrefAngleItem;\n\t\tmenuItem -label $enableIkHandle \n\t\t\t-annotation $selectikHandlesAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -eh \" + $item)\n\t\t\t-rp \"N\"\n\t\t\tenableIKHandlesItem;\n\t\tmenuItem -label $disableikHandle \n\t\t\t-annotation $selectikHandlesAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -dh \" + $item)\n\t\t\t-rp \"S\"\n\t\t\tdisableIKHandlesItem;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kEnableSnap\")) \n\t\t\t-annotation $selectikHandlesAnnot\n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -see \" + $item + \";\" +\n\t\t\t\t\"ikHandle -e -shf on \" + $item)\n\t\t\t-rp \"SE\"\n\t\t\tenableIKHandlesSnapItem;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kDisableSnap\")) \n\t\t\t-annotation $selectikHandlesAnnot \n\t\t\t-echoCommand true\n\t\t\t-c (\"ikHandle -e -shf off \" + $item)\n\t\t\t-rp \"SW\"\n\t\t\tdisableIKHandlesSnapItem;\n\t\t$maxRadialPos = 6;\n\t} else if ($isParticleObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t   \n\t\t\t   $uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\t\t\t   \t\t\t\n\t\t\tmenuItem -label $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuParticleComponentSelection(\\\"\" +\n"
		+ "\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} else if ($isSpringObject) {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\t\t\t   \n\t\t\t   $uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\t\t\t\n\t\t\tmenuItem -label $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuSpringComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} else if ($isSubdivObject) {\n\t\tsubdDagMenuProc( 0, $item, $maskList );\n\t} else {\n\t\tfor ($i = 0; $i < size($maskList); $i++) {\n\t\t\tif ($maskList[$i] == \"ikfkHandle\") {\n\t\t\t\tcontinue;\n\t\t\t}\n\t\t\t\n\t\t\t$uiName = `dagMenuProc_selectionMask_melToUI $maskList[$i]`;\n\t\t\tmenuItem -label $uiName\n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"doMenuComponentSelection(\\\"\" +\n\t\t\t\t\t$item + \"\\\", \\\"\" +  $maskList[$i] + \"\\\")\")\n\t\t\t\t-rp $radialPosition[$i];\n\t\t}\n\t} \n\t// If components are present, provide the ability to \n\t// get back to object mode...\n\t//\n\tif ($hasComponents) {\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kObjectMode\")) \n\t\t\t\t-ecr false\n\t\t\t\t-c ( \"hilite -unHilite \" + $item + \"; string $selection[] = `ls -sl`;\"\n"
		+ "\t\t\t\t\t+ \"changeSelectMode -object; select -r $selection;\" )\n\t\t\t\t-rp \"NE\";\n\t}\n\t// Since any object can be an ikfk handle, we only populate the ikfk items\n\t// in slots that are not already in use.\n\t//\n\tif ($isIkFkHandleObject) {\n\t\tstring $handle = getControlledHandle($item);\n\t\tif ($maxRadialPos < 8) {\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kSetIKFKKey\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kSetKeysAnnot\")) \n\t\t\t\t-rp $radialPosition[7]\n\t\t\t\t-command (\"select -r \"+$item+\"; SetIKFKKeyframe\");\n\t\t}\n\t\tif ($maxRadialPos < 7) {\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kMoveIKToFK\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kSelectAnIKHandleOrIKFKAnnot\")) \n\t\t\t\t-rp $radialPosition[6]\n\t\t\t\t-command (\"select -r \"+$item+\"; MoveIKtoFK\");\n\t\t}\n\t\tif ($maxRadialPos < 5) {\n\t\t\tmenuItem -label $disableikHandle \n\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kDisableIKHandleAnnot\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -dh \" + $handle)\n\t\t\t\t-rp $radialPosition[5];\n\t\t\tmenuItem -label $enableIkHandle \n"
		+ "\t\t\t\t-annotation (uiRes(\"m_dagMenuProc.kEnableIKHandleAnnot\")) \n\t\t\t\t-echoCommand true\n\t\t\t\t-c (\"ikHandle -e -eh \" + $handle)\n\t\t\t\t-rp $radialPosition[4];\n\t\t}\n\t}\n\tsetParent -menu $parent;\n}\nglobal proc doMenuNURBComponentSelection(string $item, string $mask)\n//\n// Change the selection/display state to allow selection of NURB components\n//\n{\n\tstring $selectCmd;\n\tstring $warn = (uiRes(\"m_dagMenuProc.kEditUVModeWarn\"));\n\t\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t// UVs are not selectable. So issue a warning.\n\t\t//\n\t\tif( $mask == \"surfaceUV\" )\n\t\t{\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t\twarning(`format -s $item $warn`);\n\t\t\t}\n\t\t}\n\t} else {\n\t\tselectType -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -isoparm 2;\";\n"
		+ "\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"surfaceUV\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -uv \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\"; \n\t\t\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t\t\t//\n\t\t\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\t\t\tif( !$isExplicit[0] )\n\t\t\t\t\t{\n\t\t\t\t\t\twarning(`format -s $item $warn`);\n\t\t\t\t\t}\n\t\t\t\t\tbreak; \n\t\t\t\tcase \"editPoint\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n"
		+ "\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"controlVertex\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tcase \"hull\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item + \";\"; \n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -hull \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -controlVertex \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd + \n"
		+ "\t\t\t\t\t\t\"toggle -state false -editPoint \" + $item + \";\";\n\t\t\t\t\t$selectCmd = $selectCmd +\n\t\t\t\t\t\t\"toggle -state false -uv \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t\t// Test for implicit UVs - If we are in implicit UV mode\n\t\t\t// UVs are not selectable. So issue a warning.\n\t\t\t//\n\t\t\tint $isExplicit[] = `nurbsUVSet -q -ue $item`;\n\t\t\tif( !$isExplicit[0] )\n\t\t\t{\n\t\t\t    warning(`format -s $item $warn`);\n\t\t\t}\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuLatticeComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n// selection of the Lattice control points\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"toggle -\" + $mask + \";\"; \n"
		+ "\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuParticleComponentSelection(string $item, string $mask)\n//\n// Change the selection/display state to allow selection of particle\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -particle 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"particle\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -particle \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuSpringComponentSelection(string $item, string $mask)\n"
		+ "//\n// Change the selection/display state to allow selection of spring\n// components\n//\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -allComponents 1;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -springComponent 2;\";\n\t\t\t$selectCmd = $selectCmd +\"selectPriority -\" + $mask + \" 3;\";\n\t\t\tswitch ($mask) {\n\t\t\t\tcase \"springComponent\":\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state true -\" + $mask + \" \" + $item +\";\"; \n\t\t\t\t\tbreak;\n\t\t\t\tdefault:\n\t\t\t\t\t$selectCmd = $selectCmd + \n\t\t\t\t\t\t\"toggle -state false -springComponent \" + $item + \";\";\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t} else {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc doMenuComponentSelection(string $item, string $mask)\n//\n// Changes the selection/display state on this object to allow\n"
		+ "// selection of the specified selection mask type.\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\thilite $item;\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" true;\";\n\t} else {\n\t\tselectType -ocm -alc false;\n\t\t$selectCmd = \"selectType -\" + $mask + \" true;\";\n\t\tif (!`selectMode -q -preset`) {\n\t\t\t$selectCmd = $selectCmd + \"hilite \" + $item + \";\";\n\t\t}\n\t}\n\teval $selectCmd;\n}\nglobal proc undoMenuComponentSelection(string $item, string $mask)\n{\n\tstring $selectCmd;\n\tif (`selectMode -q -object`) {\n\t\t$selectCmd = \"selectType -ocm -\" + $mask + \" false;\";\n\t} else {\n\t\t$selectCmd = \"selectType -\" + $mask + \" false;\";\n\t}\n\teval $selectCmd;\n}\nglobal proc toggleBoundingBoxDisplay ( string $parent )\n//\n// For each shape under the selected parent object, toggle the\n// state of bounding box display mode.\n//\n{\n\tstring $shapes[] = `listRelatives -shapes $parent`;\n\tstring $shape;\n\tfor ( $shape in $shapes ) {\n\t\tint $overrideOn = `getAttr ( $shape + \".overrideEnabled\")`;\n\t\tint $lodMode =    `getAttr ( $shape + \".overrideLevelOfDetail\")`;\n"
		+ "\t\tint $enabled =     $overrideOn && $lodMode == 1;\n\t\tif ( $enabled ) {\n\t\t\t// Don't reset the overrideEnabled attribute. It\n\t\t\t// is used for more than just bounding box display\n\t\t\t// and turning if off will mess things up of you\n\t\t\t// have temporarily enabled bounding box display \n\t\t\t// of an object in a layer.\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\" ) 0;\n\t\t} else {\n\t\t\tsetAttr ( $shape + \".overrideEnabled\") 1;\n\t\t\tsetAttr ( $shape + \".overrideLevelOfDetail\") 1;\n\t\t}\n\t}\n}\nglobal proc createActionsMenuItems(string $parent, string $item)\n//\n// Creates a menu with common operations to perform on an object\n//\n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kTemplate\"))  -c (\"toggle -template -state on \" + $item);\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kUntemplate\"))  -c (\"toggle -template -state off \" + $item);\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kUnparent\"))  -c (\"parent -w \" + $item);\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kBoundingBox\"))  -c (\"toggleBoundingBoxDisplay \" + $item);\n"
		+ "}\nglobal proc showSG(string $item)\n{\n\t//check selection list for faces (polys, subds, nurbs)\n\tstring $shader = \"\";\n\tstring $selection[] = `filterExpand -sm 34 -sm 38 -sm 72`;\n\t// If there are components selected, try to find a component shader\n\tif( size( $selection ) > 0)\n\t{\n\t\tstring $nameBuffer[];\n\t\tint $numComps = size( $selection );\n\t\tint $comp;\n\t\tfor( $comp = 0; $comp < $numComps; $comp++)\n\t\t{\n\t\t\ttokenize $selection[ $comp] \".\" $nameBuffer;\n\t\t\t//if the selected component is on the object under the pointer\n\t\t\t//get it's shader\n\t\t\tif ($nameBuffer[0] == $item) {\n\t\t\t\t$shader = `getComponentShader $selection[$comp]`;\n\t\t\t\t//check if the shader is already selected - only toggle\n\t\t\t\t//selection if it is not selected\n\t\t\t\tstring $shaderSelected[] = `ls -selection $shader`;\n\t\t\t\tif ( size( $shaderSelected ) == 0){\n\t\t\t\t\tselect -tgl $shader;\n\t\t\t\t\n\t\t\t\t}\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we didn't find a component level shader, try for an object level one\n\tif( size( $shader ) == 0 ) {\n\t\tstring $allNodes[] = (`listHistory -f true $item` );\n"
		+ "\t\tstring $node = \"\";\n\t\tfor ($node in $allNodes) {\n\t\t\tif(`nodeType $node` == \"shadingEngine\") {\n\t\t\t\t$shader = $node;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\t// If we found a shader, show it\n\tif( size( $shader ) > 0) \n\t{\n\t\tshowEditor $shader;\n\t}\n}\n\t\nglobal proc showBakeSets(string $item, string $type)\n{\n\tstring $possibleBakeSets[] = (`listHistory -f true $item` );\n\tstring $node = \"\";\n    int $bakeSetExists = false;\n\tfor ($node in $possibleBakeSets) {\n\t\tif(`nodeType $node` == $type)\n        {\n\t\t\tshowEditor $node;\n            $bakeSetExists = true;\n\t\t\tbreak;\n\t\t}\n\t}\n    // If no bake set exists for the $item, then create the\n    // initial bake set of that $type and assign it to the $item.\n    //\n    if (!$bakeSetExists)\n    {\n        string $initialBakeSet = \"\";\n\t\tif($type == \"vertexBakeSet\") \n        {\n            $initialBakeSet = \"initialVertexBakeSet\";\n        }\n        else if($type == \"textureBakeSet\") \n        {\n            $initialBakeSet = \"initialTextureBakeSet\";\n\t\t}\n        else\n        {\n            string $errorMsg = (uiRes(\"m_dagMenuProc.kBakeSetError\"));\n"
		+ "            error   -showLineNumber true\n                (`format -s $type $errorMsg`);\n            return;\n        }\n        // Create it if it does not exist yet.\n        //\n        if  ( size(`ls $initialBakeSet`) < 1)\n        {\n            createBakeSet($initialBakeSet, $type);\n        } \n    \n        // Assign the initial bake set to the item.\n        //\n        assignBakeSet($initialBakeSet, $item);\n        // Show the initial bake set.\n        //\n        showBakeSetAE($initialBakeSet);\n    }\n}\n// Description:  This procedure is called to refresh the baking \n//  attribute menu items.\n//\nglobal proc refreshBakingAttributeMenu (string $parent, string $item)\n{\n    setParent -menu $parent;\n    int $suitable = bakeSetTypeSuitableForItem(\"textureBakeSet\", $item);\n    menuItem -edit -enable $suitable textureBakingAttributeItem;\n    $suitable = bakeSetTypeSuitableForItem(\"vertexBakeSet\", $item);\n    menuItem -edit -enable $suitable vertexBakingAttributeItem;\n}\n// Description:  This procedure is called to create the \n"
		+ "//  baking attribute menu.\n//\nproc createBakingAttributeMenu(string $parent, string $item)\n{\n    setParent -menu $parent;\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kEditAttributes\"))  \n        -subMenu true\n        -tearOff true\n        -postMenuCommand (\"refreshBakingAttributeMenu \\\"\"\n                            +$parent+\"|editAttributeItem\\\" \\\"\"\n                            +$item+\"\\\"\")\n        editAttributeItem; \n        menuItem -label (uiRes(\"m_dagMenuProc.kTexture\"))  \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"textureBakeSet\\\"\") \n            textureBakingAttributeItem;\n        menuItem -label (uiRes(\"m_dagMenuProc.kVertexMenuLabel\"))  \n            -c (\"showBakeSets \\\"\"+$item+\"\\\" \\\"vertexBakeSet\\\"\") \n            vertexBakingAttributeItem;\n    setParent -menu ..;\n}\n// Description:  This procedure is called to create the baking\n//  menu items.\n//\nglobal proc createBakingMenuItems(string $parent, string $item)\n//\n//\tCreate the Baking menus for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n"
		+ "    createBakingAttributeMenu($parent, $item);\n\tmenuItem -d true;\n\tif (!`about -evalVersion`) {\n\t\tbuildBakingMenus($item);\n\t}\n}\n// Description:  This procedure is called to create the switch proxy\n//  menu items.\n//\nglobal proc createSwitchProxyMenuItems(string $parent, string $item, string $refNode)\n//\n//\tCreate the switch proxy submenu for the RMB popup menu.\n//\n{\n\tpopupMenu -e -deleteAllItems $parent;\n\tsetParent -menu $parent;\n\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\tint $i;\n\tstring $proxyLabel;\n\tstring $proxyTag;\n\tfor( $i=0; $i<size($proxyNodes); $i+=1) {\n\t\t$proxyTag = `getAttr ($proxyNodes[$i] + \".proxyTag\")`;\n\t\t\n\t\tmenuItem -label $proxyTag -c (\"proxySwitch \" + $proxyNodes[$i]);\n\t}\n}\nglobal proc createHistoryMenuItems(string $parent, string $item)\n{\n\t//\n\t// Delete all menu entries currently in the popup\n\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, false, 1 );\n}\nglobal proc createFutureMenuItems(string $parent, string $item)\n{\n\t//\n\t// Delete all menu entries currently in the popup\n"
		+ "\t//\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\thistoryPopupFill( $item, true, 1 );\n}\nglobal proc string objectHandlesUvSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createUVsetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyUVSet -currentUVSet -uvSet \";\n\tstring $curSet[] = `polyUVSet -q -currentUVSet $shape`;\n\tstring $names[] = `polyUVSet -q -auv $shape`;\n"
		+ "\tstring $allProjects[] = `polyUVSet -pr -q $shape`;\n\tstring $setClearCmd = \"\";\n\tif (size($allProjects))\n\t{\n\t\t$setClearCmd = \"select -d \";\t\t\n\t\tfor ($p=0; $p<size($allProjects); $p++)\n\t\t\t$setClearCmd += (\" \" + $allProjects[$p]);\n\t\t$setClearCmd += \";\";\n\t}\n\tint $numNames = size($names);\n\t// Add in a menu to do uv-linking\n\tif ($numNames > 0)\n\t{\t\n\t\tstring $ann = `getRunTimeCommandAnnotation \"UVCentricUVLinkingEditor\"`;\n\t\tstring $cmd = \"UVCentricUVLinkingEditor; \" + \"select -r \" + $item;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kUVLinking\")) \n\t\t\t-c $cmd\n\t\t\t-annotation $ann;\n\t\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i<$numNames; $i++)\n\t{\n\t\tstring $uvEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $uvname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $uvEditname + \" \" + $shape + \";\";\n\t\t// Find any projections associated with the uvset\n\t\tstring $projs[];\n\t\t$projs = `polyUVSet -pr -uvs $uvname -q $shape`;\n\t\tstring $projCmd;\n\t\t// Add a divider between items\n\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($uvname == $curSet[0])\n"
		+ "\t\t{\n\t\t\tmenuItem -label ($uvname) -c $setClearCmd -checkBox true;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -label $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -label ($uvname) -c ($setClearCmd + $setCurCmd) -checkBox false;\n\t\t\tfor ($j=0; $j<size($projs); $j++)\n\t\t\t{\n\t\t\t\t$projCmd = ($setCurCmd + $setClearCmd + \"select -add \"+ $projs[$j] + \";setToolTo ShowManips;\"); \n\t\t\t\tmenuItem -label $projs[$j] -c $projCmd;\n\t\t\t\tif ($j >= 5)\n\t\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n}\n//\nglobal proc string objectHandlesColorSets(string $item)\n{\n\tstring $maskList[];\n\tstring $shape = $item;\n\tint $i;\n\t// Look at the shape child of this object\n\t//\n\tstring $object[] = `listRelatives -path -s $item`;\n\tint $gotVisible = 0;\n\tfor ($i = 0; $i < size($object); ++$i) {\n\t\tif( (0 == getAttr($object[$i] + \".io\")) &&\n\t\t\tgetAttr($object[$i] + \".v\") ) {\n\t\t\t$shape = $object[$i];\n\t\t\t$gotVisible = 1;\n\t\t\tbreak;\n\t\t}\n\t}\n\tif( !$gotVisible ) {\n"
		+ "\t\tfor ($i = 0; $i < size($object); ++$i)\n\t\t{\n\t\t\tif (getAttr($object[$i] + \".io\") == 0)\n\t\t\t{\n\t\t\t\t$shape = $object[$i];\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t}\n\tstring $nt = `nodeType $shape`;\n\tif ($nt == \"mesh\")\t\n\t\treturn $shape;\n\treturn \"\";\n}\nglobal proc createColorSetMenuItems(string $parent, string $item,\n\t\t\t\t\t\t\t\t string $shape)\n{\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\tstring $cmd = \"polyColorSet -currentColorSet -colorSet \";\n\tstring $curSet[] = `polyColorSet -q -currentColorSet $shape`;\n\tstring $names[] = `polyColorSet -q -acs $shape`;\n\tint $numNames = size($names);\n\t// Add in a menu to access color set editor\n\tmenuItem -label (uiRes(\"m_dagMenuProc.kColorSetEditor\")) \n\t\t-ann (getRunTimeCommandAnnotation(\"ColorSetEditor\"))\n\t\t-command \"colorSetEditor\"\n\t\t;\n\tif ($numNames > 0)\n\t{\t\n\tmenuItem -divider true;\n\t}\n\tfor ($i=0; $i < $numNames; $i++)\n\t{\n\t\tstring $colorEditname = (\"\\\"\" + $names[$i] + \"\\\"\");\n\t\tstring $colorname = $names[$i];\n\t\tstring $setCurCmd = $cmd + $colorEditname + \" \" + $shape + \";\";\n\t\t// Add a divider between items\n"
		+ "\t\tif ($i > 0)\n\t\t\tmenuItem -divider true;\n\t\tif ($colorname == $curSet[0])\n\t\t{\n\t\t\tmenuItem -label ($colorname) -checkBox true;\n\t\t}\n\t\telse\n\t\t{\n\t\t\tmenuItem -label ($colorname) -c ($setCurCmd) -checkBox false;\n\t\t}\n\t}\n}\nglobal proc createArtAttrMenuItems(\n\tstring \t\t$parent, \n\tstring \t\t$item\n)\n{\t\n\tpopupMenu -e -dai $parent;\n\tsetParent -menu $parent;\n\t\n\t// add default items which are always displayed in the context menu\n\tmenuItem -p $parent -label (uiRes(\"m_dagMenuProc.kPaintSelect\"))  -command \"ArtPaintSelectToolOptions\" ;\n\tmenuItem -p $parent -label (uiRes(\"m_dagMenuProc.kThreeDPaint\"))  -command \"Art3dPaintToolOptions\" ;\n\tmenuItem -p $parent -label (uiRes(\"m_dagMenuProc.kSculpt\"))  -command \"SculptGeometryToolOptions\" ;\n\t// Get all paintable attributes\n\tstring $paintAttr = `artBuildPaintMenu $item`;\n\tstring $paint = (uiRes(\"m_dagMenuProc.kPaint\"));\n\t\n\tif ($paintAttr != \"\")\n\t{\n\t\t// if the menu item has not been created, create it.\n\t\tif( $parent == \"\" )\n\t\t\t$parent = `menuItem -subMenu true -aob true -label $paint `;\n"
		+ "\t\t\t\n\t\n\t\t// create special purpose painting menu items for objects\n\t\t// such as cloth\n\t\t//\n\t\tstring $excludeNodes[] = createPaintingMenuItems( $parent, $item );\n\t\t// Create the menu.\n\t\tartAttrCreateMenuItems( $parent, $paintAttr, $excludeNodes );\n\t\t\n\t}\n}\n// This has been called because a menu press happened on a DAG object\n// So find the Object submenu and add the DAG specific items to it.\n//\nglobal proc dagMenuProc(string $parent, string $object)\n{\n\tglobal string $artSelectObject ;\n\tstring $mode = \"\";\n\tif (`optionVar -exists currentMenuBarTab`) {\n\t\t$mode = `optionVar -q currentMenuBarTab`;\n\t} else {\n\t\toptionVar -sv currentMenuBarTab $mode;\n\t}\n\tif (`popupMenu -e -exists $parent`) {\n\t\tsetParent -m $parent;\n\t\t// label the object\n\t\tstring $shortName = `substitute \".*|\" $object \"\"`;\n\t\tmenuItem -label ($shortName + \"...\") -c (\"showEditor \"+$object);\n\t\tmenuItem -divider true;\n\t\tmenuItem -divider true;\n\t\t// Create the list of selection masks\n\t\tcreateSelectMenuItems($parent, $object);\n\t\tmenuItem -d true;\n\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kSelect\"))  -c (\"select -r \" + $object);\n"
		+ "\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kSelectHierarchy\"))  -c (\"select -hierarchy \" + $object);\n    \tmenuItem -d true;\n\tif( (objExists(($object+\".Parent\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n\t\t\t\twhile(`objExists( ($object+\".Parent_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Parent_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Parent to: \"+$parent) -c (\"JTDdynParentSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tmenuItem -d true;\n\t\tif( (objExists(($object+\".Follow\"))) || (objExists(($object+\".childPtr\"))) ) \n\t\t{\n\t\t\t\tint $cnt = 0;\n\t\t\t\tstring $connections[];\n\t\t\t\tstring $parent;\n\t\t\t\tstring $child = $object;\n"
		+ "\t\t\t\twhile(`objExists( ($object+\".Follow_\"+$cnt) )` ) \n\t\t\t\t{ \n\t\t\t\t\t\t$connections = `listConnections ($object+\".Follow_\"+$cnt)`;\n\t\t\t\t\t\tif(endsWith($connections[0], \"_DynDriver\")) $parent = substitute(\"_DynDriver\", $connections[0], \"\");\n\t\t\t\t\t\tif(objExists(($object+\".childPtr\")))\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$connections = `listConnections ($object+\".childPtr\")`;\n\t\t\t\t\t\t\t$child = $connections[0];\n\t\t\t\t\t\t}\n\t\t\t\t\t\tmenuItem -l (\"Follow: \"+$parent) -c (\"JTDfollowSnap(\\\"\"+$child+\"\\\",\"+$cnt+\")\");\n\t\t\t\t\t\t$cnt++;\n\t\t\t\t}\n\t\t\t\t\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".IKFK\") ))\n\t\t{\n\t\t\t\tstring $JTDupSW[] = `listConnections ($object+\".SWup\")`;\n\t\t\t\tstring $JTDmidSW[] = `listConnections ($object+\".SWmid\")`;\n\t\t\t\tstring $JTDupFK[] = `listConnections ($object+\".FKup\")`;\n\t\t\t\tstring $JTDmidFK[] = `listConnections ($object+\".FKmid\")`;\n\t\t\t\tstring $JTDlowFK[] = `listConnections ($object+\".FKlow\")`;\n\t\t\t\tstring $JTDupIK[] = `listConnections ($object+\".IKup\")`;\n\t\t\t\tstring $JTDmidIK[] = `listConnections ($object+\".IKmid\")`;\n\t\t\t\tstring $JTDIKpos[] = `listConnections ($object+\".IKpos\")`;\n"
		+ "\t\t\t\tstring $JTDIKcntrl[] = `listConnections ($object+\".IKcntrl\")`;\n\t\t\t\tstring $JTDPV[] = `listConnections ($object+\".PV\")`;\n\t\t\t\tstring $JTDPVpos[] = `listConnections ($object+\".PVsnapPos\")`;\n\t\t\t\tif( `getAttr($object+\".IKFK\")` == 0 ) menuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\telse if( `getAttr($object+\".IKFK\")` == 1 ) menuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n\t\t\t\telse \n\t\t\t\t{\n\t\t\t\t\t\tmenuItem -l \"Snap to IK Mode!\" -c (\"JTDmatchIKFK(\\\"\"+$object+\"\\\",\\\"\"+$JTDIKpos[0]+\"\\\",\\\"\"+$JTDIKcntrl[0]+\"\\\",\\\"\"+$JTDPV[0]+\"\\\",\\\"\"+$JTDPVpos[0]+\"\\\")\");\n\t\t\t\t\t\tmenuItem -l \"Snap to FK Mode!\" -c (\"JTDmatchFKIK(\\\"\"+$object+\"\\\",\\\"\"+$JTDupSW[0]+\"\\\",\\\"\"+$JTDmidSW[0]+\"\\\",\\\"\"+$object+\"\\\",\\\"\"+$JTDupFK[0]+\"\\\",\\\"\"+$JTDmidFK[0]+\"\\\",\\\"\"+$JTDlowFK[0]+\"\\\",\\\"\"+$JTDupIK[0]+\"\\\",\\\"\"+$JTDmidIK[0]+\"\\\")\");\n"
		+ "\t\t\t\t}\n\t\tmenuItem -d true;\n\t\t}\n\t\tif(objExists( ($object+\".js_pivotObj\") ) )\n\t\t{\n\t\t\tmenuItem -l \"Select Moveable Pivot\" -c (\"js_pivot_createMov (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Apply & Key Moved Pivot\" -c (\"js_pivot_snap (\\\"\"+$object+\"\\\", 1)\");\n\t\t\tstring $menu = `menuItem -subMenu true -aob true -l \"Pivot Options\"`;\n\t\t\tmenuItem -l \"Toggle Moveable Pivot Locator\" -c (\"js_pivot_mov_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Toggle Actual Pivot Locator\" -c (\"js_pivot_toggle (\\\"\"+$object+\"\\\")\");\n\t\t\tmenuItem -l \"Reset Pivot\" -c (\"jd_pivot_reset (\\\"\"+$object+\"\\\")\");\n\t\t\tsetParent -m $parent;\n\t\t\tmenuItem -d true;\n\t\t}\n\t\t\n\t\toptionalDagMenuProc( $parent, $object );\n\t\tstring $menu = `menuItem -subMenu true -aob true -label (uiRes(\"m_dagMenuProc.kInputs\")) `;\n\t\tmenu -e \n\t\t\t-pmc ( \"createHistoryMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n\t\t$menu = `menuItem -subMenu true -aob true -label (uiRes(\"m_dagMenuProc.kOutputs\")) `;\n\t\tmenu -e -pmc ( \"createFutureMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n\t\tsetParent -m $parent;\n"
		+ "\t \t// Look at the shape child of this object\n\t \t//\n \t\tstring $shapes[] = `listRelatives -path -s $object`;\n\t\t// get current selection of shapes\n\t\tstring $currentSel[] = `ls -sl -dagObjects -shapes` ;\n\t\tstring $paintParent = \"\" ;\n\t\tint $selIndex  ;\n \t\tint $i;\n \t\tfor ($i = 0; $i < size($shapes); ++$i) \n\t\t{\n\t\t\tstring $nodeType = `nodeType $shapes[$i]` ;\n\t\t\tif ( ( $nodeType == \"nurbsSurface\") ||\n\t\t\t\t ( $nodeType == \"mesh\") ||\n\t\t\t\t ( $nodeType == \"subdiv\")) \n\t\t\t{\n\t\t\t\t// save the object name if it is not already selected by the user\n\t\t\t\t// We use this info to select the object if user chooses a paint option\n\t\t\t\t//\n\t\t\t\t// If user has selected multiple objects and is using context menu on one of them\n\t\t\t\t// we do not change the selection list as user may want to paint some attribute \n\t\t\t\t// on all of them. (It is the way it has been working all along...we don't want to \n\t\t\t\t// break it )\n\t\t\t\t\n\t\t\t\tint $found = 0 ;\n\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t{\n\t\t\t\t\tif( $shapes[$i] == $currentSel[ $selIndex  ] )\n"
		+ "\t\t\t\t\t{\n\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\tbreak ;\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\tif( $found )\n\t\t\t\t{\n\t\t\t\t\t$artSelectObject = \"\" ;\n\t\t\t\t}\n\t\t\t\telse\n\t\t\t\t{\n\t\t\t\t\t// check if the object is in component selection mode\n\t\t\t\t\t// and if it is, do not do any further selection.\n\t\t\t\t\t// We are assuming that if the object is in hilite mode\n\t\t\t\t\t// then the user is in component selection mode.\n\t\t\t\t\t\n\t\t\t\t\t$currentSel = `ls -hilite` ;\n\t\t\t\t\tfor( $selIndex  = 0 ; $selIndex  < size( $currentSel ); ++$selIndex  )\n\t\t\t\t\t{\n\t\t\t\t\t\tif( $object == $currentSel[ $selIndex  ] )\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t$found = 1 ;\n\t\t\t\t\t\t\tbreak ;\n\t\t\t\t\t\t}\n\t\t\t\t\t}\n\t\t\t\t\tif( !$found ) \n\t\t\t\t\t\t$artSelectObject = $object ;\n\t\t\t\t\telse\n\t\t\t\t\t\t$artSelectObject = \"\" ;\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\t$paintParent = `menuItem -subMenu true -aob true -label (uiRes(\"m_dagMenuProc.kPaintSubmenu\")) `;\n\t\t\t\tmenu -e\t-pmc ( \"createArtAttrMenuItems \\\"\"+ $paintParent +\"\\\" \"+$object ) $paintParent ;\n\t\t\t\tsetParent -m $parent;\n\t\t\t\tbreak ;\n\t\t\t}\n\t\t}\n\t    $menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kActions\")) `;\n\t\tmenu -e -pmc ( \"createActionsMenuItems \\\"\"+$menu+\"\\\" \"+$object ) $menu;\n"
		+ "\t\tsetParent -m $parent;\n\t\t// If the object can handle uv sets then add the uvset menu\n\t\t//\n\t\tstring $shape = objectHandlesUvSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kUVSets\")) `;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createUVsetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+ $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\tstring $shape = objectHandlesColorSets( $object );\n\t\tif ($shape != \"\")\n\t\t{\n\t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kColorSets\")) `;\n\t\t\tmenu -e \n\t\t\t\t-pmc ( \"createColorSetMenuItems \\\"\"+$menu+\"\\\" \" +$object + \" \"+ $shape )\n\t\t\t\t$menu;\n\t\t\tsetParent -m $parent;\n\t\t}\n\t\t// Shader menu to be able to quickly assign existing shaders\n\t\t// to the object under the pointer.\n\t\t//\n    \tmenuItem -d true;\n \t\tmenuItem -label (uiRes(\"m_dagMenuProc.kMaterialAttributes\")) -c (\"showSG \"+$object);\n    \t\n    \tmenuItem -d true;\n        \n        buildShaderMenus($object);\n        \n        menuItem -d true;\n        menuItem -divider true;\n        string $removeOverrideMenuItem = `menuItem \n"
		+ "\t\t\t-label (uiRes(\"m_dagMenuProc.kRemoveMaterialOverride\"))\n            -subMenu true`;\n        menuItem -edit -postMenuCommand\n            (\"buildMaterialRemoveOverrideMenu -surface \"+$object+\" \"+$removeOverrideMenuItem)\n            $removeOverrideMenuItem;\n        setParent -m ..;\n\t\tint $mentalIsLoaded = 0;\n\t\tstring $renderer;\n\t    for ($renderer in `renderer -query -namesOfAvailableRenderers`) {\n\t\t\tif( $renderer == \"mentalRay\" ) {\n\t\t\t\t$mentalIsLoaded = 1;\n\t\t\t\tbreak;\n\t\t\t}\n\t\t}\n\t\tif ($mentalIsLoaded) {\n \t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kBaking\")) `;\n \t\t\tmenu -e\n\t\t\t\t-pmc ( \"createBakingMenuItems \\\"\"+$menu+\"\\\" \"+$object )\n\t\t\t\t$menu;\n \t\t\tsetParent -m $parent;\n\t\t}\n\t\tif ($mode == \"dynamicsMenuSet\") {\n\t\t\tmenuItem -d true;\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kConnectField\"))  -c (\"connectDynamic -f \" + $object);\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kConnectEmitter\"))  -c (\"connectDynamic -em \" + $object);\n\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kConnectCollision\"))  -c (\"connectDynamic -c \" + $object);\n"
		+ "\t\t}\n\t\t// is there a reference associated with the object ?\n\t\t// and if so, is it in a loaded or unloaded state?\n\t\tstring $refNode = `getRelatedReference $object`;\n\t\tif( size($refNode) > 0) {\n\t\t\tmenuItem -d true;\n\t\t\tif( `file -rfn $refNode -q -dr` ) {\n\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kLoadRelatedReference\"))  -c (\"loadRelatedReference \" + $object);\n\t\t\t} else {\n\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kReloadRelatedReference\"))  -c (\"loadRelatedReference \" + $object);\n\t\t\t\tmenuItem -label (uiRes(\"m_dagMenuProc.kUnloadRelatedReference\"))  -c (\"unloadRelatedReference \" + $object);\n\t\t\t}\n\t\t\t// Is this reference a proxy? If so, add proxy switch submenu\n\t\t\t//\n\t\t\tstring $proxyNodes[] = `getRelatedProxies $refNode`;\n\t\t\tif(size($proxyNodes) > 0) {\n\t\t\t\t$menu = `menuItem -subMenu true -label (uiRes(\"m_dagMenuProc.kReloadProxy\")) `;\n\t\t\t\tmenu -e\n\t\t\t\t\t-pmc ( \"createSwitchProxyMenuItems \\\"\"+$menu+\"\\\" \"+$object + \" \" + $refNode )\n\t\t\t\t\t$menu;\n\t\t\t\tsetParent -m $parent;\n\t\t\t}\n\t\t}\n\t\tsetParent -m $parent;\n\t} else {\n\t\tstring $warn = (uiRes(\"m_dagMenuProc.kMenuWarn\"));\n"
		+ "\t\twarning(`format -s $parent $warn`);\n\t}\n}\n");
	setAttr ".st" 1;
createNode clamp -n "NoseBridgeRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NoseBridgeLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "NoseBridgeLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "FacialHairBottomClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "FacialHairBottomMultDivide1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "FacialHairTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprTeethBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprTeethBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprTeethTopClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprTeethRightClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "uprTeethLeftClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprTeethLeftMultDivide1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrTeethBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrTeethBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrTeethTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrTeethRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "lwrTeethLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrTeethLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "teethBreakerRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "teethBreakerRightClamp1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode shadingEngine -n "FIXMEJOSH_lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode phong -n "gums_shdr";
	setAttr ".c" -type "float3" 0.41 0.029999999 0.050000001 ;
	setAttr ".cp" 2.059999942779541;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode clamp -n "uprLip_left_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprLip_left_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "uprLip_right_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "uprLip_right_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrLip_left_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrLip_left_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "lwrLip_right_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "lwrLip_right_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "noseMove_animTopClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "noseMove_animBottomClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "noseMove_animBottomMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "noseMove_animRightClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "noseMove_animLeftClamp";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "noseMove_animLeftMultDivide";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode script -n "btrTrigGrp_morphyTriggers";
	setAttr ".b" -type "string" (
		"//boTriggers v1.3\n\t\n//GROUP_TRIGGER\nglobal proc btrTrigGrp_morphyTriggers_btrTrigProc() {\n\tglobal int $btrTrigSelectionMode;\n\tif ($btrTrigSelectionMode == 1) return;\nstring $selString = (\"^\" + stringArrayToString(`ls -sl -r 1`, \"^\") + \"^\");\n\n//BEGIN_TRIGGERS\n//TRIGGER_001\nif (size(`match \"\\\\^All_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d All_picker;\n\t\n\t//SELECT\n\tselect -add rig_knee_r_skin_Bendy_anim;\n\tselect -add rig_hip_r_skin_Bendy_anim;\n\tselect -add rig_hip_r_skin_twist_anim;\n\tselect -add rig_spine_0_skin_Mid_anim;\n\tselect -add rig_spine_0_skin_Shoulders_anim;\n\tselect -add m_neck_FK_anim;\n\tselect -add rig_elbow_l_skin_Bendy_anim;\n\tselect -add rig_shoulder_l_skin_Bendy_anim;\n\tselect -add rig_shoulder_l_skin_twist_anim;\n\tselect -add rig_clavicle_l_skin_FK_anim;\n\tselect -add rig_elbow_r_skin_Bendy_anim;\n\tselect -add rig_shoulder_r_skin_Bendy_anim;\n\tselect -add rig_shoulder_r_skin_twist_anim;\n\tselect -add rig_clavicle_r_skin_FK_anim;\n\tselect -add m_neck_IK_anim;\n\tselect -add m_arm_IK_Cntrl_l_anim;\n"
		+ "\tselect -add rig_wrist_l_skin_GimbleCntrl_l_anim;\n\tselect -add m_arm_PV_Cntrl_l_anim;\n\tselect -add m_arm_IK_Cntrl_r_anim;\n\tselect -add rig_wrist_r_skin_GimbleCntrl_r_anim;\n\tselect -add m_arm_PV_Cntrl_r_anim;\n\tselect -add m_leg_IKleg_Cntrl_l_anim;\n\tselect -add m_spine_Root_anim;\n\tselect -add rig_spine_0_skin_Hips_anim;\n\tselect -add rig_knee_l_skin_Bendy_anim;\n\tselect -add rig_hip_l_skin_Bendy_anim;\n\tselect -add rig_hip_l_skin_twist_anim;\n\tselect -add m_leg_GimbleCntrl_l_anim;\n\tselect -add m_leg_PV_Cntrl_l_anim;\n\tselect -add m_leg_IKleg_Cntrl_r_anim;\n\tselect -add m_leg_GimbleCntrl_r_anim;\n\tselect -add m_leg_PV_Cntrl_r_anim;\n\tselect -add r_fingers_anim;\n\tselect -add r_pinky_anim;\n\tselect -add r_ring_anim;\n\tselect -add r_mid_anim;\n\tselect -add r_index_anim;\n\tselect -add r_thumb_anim;\n\tselect -add l_fingers_anim;\n\tselect -add l_pinky_anim;\n\tselect -add l_ring_anim;\n\tselect -add l_mid_anim;\n\tselect -add l_index_anim;\n\tselect -add l_thumb_anim;\n\tselect -add m_arm_prop_IK_Cntrl_l_anim;\n\tselect -add m_arm_prop_IK_Cntrl_r_anim;\n"
		+ "\tselect -add m_leg_prop_IKleg_Cntrl_r_anim;\n\tselect -add m_leg_prop_IKleg_Cntrl_l_anim;\n\tselect -add rig_wrist_l_skin_SW_anim;\n\tselect -add rig_shoulder_r_skin_FK_anim;\n\tselect -add rig_elbow_r_skin_FK_anim;\n\tselect -add rig_wrist_r_skin_FK_anim;\n\tselect -add rig_shoulder_l_skin_FK_anim;\n\tselect -add rig_elbow_l_skin_FK_anim;\n\tselect -add rig_wrist_l_skin_FK_anim;\n\tselect -add rig_wrist_r_skin_SW_anim;\n\tselect -add rig_spine_0_skinFK1_anim;\n\tselect -add rig_spine_0_skinFK2_anim;\n\tselect -add rig_spine_0_skinFK3_anim;\n\tselect -add rig_ankle_r_skin_SW_anim;\n\tselect -add rig_ankle_l_skin_SW_anim;\n\tselect -add rig_clavicle_l_skin_IK_anim;\n\tselect -add rig_clavicle_r_skin_IK_anim;\n\tselect -add rig_hip_r_skin_FK_anim;\n\tselect -add rig_knee_r_skin_FK_anim;\n\tselect -add rig_ankle_r_skin_FK_anim;\n\tselect -add rig_ball_r_skin_FK_anim;\n\tselect -add rig_hip_l_skin_FK_anim;\n\tselect -add rig_knee_l_skin_FK_anim;\n\tselect -add rig_ankle_l_skin_FK_anim;\n\tselect -add rig_ball_l_skin_FK_anim;\n\tselect -add m_cog_prop_IK_Cntrl_anim;\n"
		+ "\tselect -add tongueBase_anim;\n\tselect -add tongue01_anim;\n\tselect -add tongue03_anim;\n\tselect -add tongueMid_anim;\n\tselect -add tongueShape_anim;\n\tselect -add jaw_anim;\n\tselect -add mouthSeal_anim;\n\tselect -add browInner_left_anim;\n\tselect -add browOuter_left_anim;\n\tselect -add browMidTweak_left_anim;\n\tselect -add browInner_right_anim;\n\tselect -add browOuter_right_anim;\n\tselect -add browMidTweak_right_anim;\n\tselect -add mouthMove_anim;\n\tselect -add mouthEmote_left_anim;\n\tselect -add cornerCompress_left_anim;\n\tselect -add uprLip_left_anim;\n\tselect -add uprLip_right_anim;\n\tselect -add mouthEmote_right_anim;\n\tselect -add cornerCompress_right_anim;\n\tselect -add uprLip_center_anim;\n\tselect -add lwrLip_left_anim;\n\tselect -add lwrLip_right_anim;\n\tselect -add ponyTailCtrl_1_anim;\n\tselect -add ponyTailCtrl_2_anim;\n\tselect -add ponyTailCtrl_3_anim;\n\tselect -add ponyTailCtrl_4_anim;\n\tselect -add ponyTailCtrl_5_anim;\n\tselect -add ponyTailCtrl_6_anim;\n\tselect -add ponyTailCtrl_7_anim;\n\tselect -add ponyTailCtrl_8_anim;\n\tselect -add ponyTailCtrl_9_anim;\n"
		+ "\tselect -add pigTailLeftCtrl_1_anim;\n\tselect -add pigTailLeftCtrl_2_anim;\n\tselect -add pigTailLeftCtrl_3_anim;\n\tselect -add pigTailLeftCtrl_4_anim;\n\tselect -add pigTailLeftCtrl_5_anim;\n\tselect -add pigTailLeftCtrl_6_anim;\n\tselect -add pigTailLeftCtrl_7_anim;\n\tselect -add pigTailRightCtrl_1_anim;\n\tselect -add pigTailRightCtrl_2_anim;\n\tselect -add pigTailRightCtrl_3_anim;\n\tselect -add pigTailRightCtrl_4anim;\n\tselect -add pigTailRightCtrl_5_anim;\n\tselect -add pigTailRightCtrl_6_anim;\n\tselect -add pigTailRightCtrl_7_anim;\n\tselect -add eye_masterIK_anim;\n\tselect -add eyeIK_left_anim;\n\tselect -add eyeIK_right_anim;\n\tselect -add eyeFK_left_anim;\n\tselect -add iris_left_anim;\n\tselect -add pupil_left_anim;\n\tselect -add eye_left_fkikSwitch_anim;\n\tselect -add uprLidAll_left_anim;\n\tselect -add center_uprLid_left_anim;\n\tselect -add inner_uprLid_left_anim;\n\tselect -add outer_uprLid_left_anim;\n\tselect -add lwrLidAll_left_anim;\n\tselect -add outer_lwrLid_left_anim;\n\tselect -add inner_lwrLid_left_anim;\n\tselect -add center_lwrLid_left_anim;\n"
		+ "\tselect -add blink_left_anim;\n\tselect -add eyeFK_right_anim;\n\tselect -add iris_right_anim;\n\tselect -add pupil_right_anim;\n\tselect -add eye_right_fkikSwitch_anim;\n\tselect -add uprLidAll_right_anim;\n\tselect -add inner_uprLid_right_anim;\n\tselect -add center_uprLid_right_anim;\n\tselect -add outer_uprLid_right_anim;\n\tselect -add lwrLidAll_right_anim;\n\tselect -add outer_lwrLid_right_anim;\n\tselect -add center_lwrLid_right_anim;\n\tselect -add inner_lwrLid_right_anim;\n\tselect -add blink_right_anim;\n\tselect -add lwrLip_center_anim;\n\tselect -add cheek_left_anim;\n\tselect -add cheek_right_anim;\n\tselect -add sneer_left_anim;\n\tselect -add sneer_right_anim;\n\tselect -add eyeSqueeze_left_anim;\n\tselect -add eyeSqueeze_right_anim;\n\tselect -add noseMove_anim;\n\tselect -add earLeft_anim;\n\tselect -add left_uprEar_anim;\n\tselect -add left_uprEarTip_anim;\n\tselect -add left_lwrEar_anim;\n\tselect -add left_lwrEarTip_anim;\n\tselect -add earRight_anim;\n\tselect -add right_uprEarTip_anim;\n\tselect -add right_lwrEar_anim;\n\tselect -add right_lwrEarTip_anim;\n"
		+ "\tselect -add uprTeeth_anim;\n\tselect -add lwrTeeth_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_001\n//TRIGGER_002\nif (size(`match \"\\\\^All_txt_crv\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d All_txt_crv;\n\t\n\t//SELECT\n\tselect -add torsoSkinnyLeft_skinnyDeform_anim;\n\tselect -add torsoSkinnyRight_skinnyDeform_anim;\n\tselect -add uprLegSkinLeft_skinnyDeform_anim;\n\tselect -add uprLegSkinRight_skinnyDeform_anim;\n\tselect -add lwrLegSkinRight_skinnyDeform_anim;\n\tselect -add lwrLegSkinLeft_skinnyDeform_anim;\n\tselect -add lwrArmSkinLeft_skinnyDeform_anim;\n\tselect -add lwrArmSkinRight_skinnyDeform_anim;\n\tselect -add uprArmSkinRight_skinnyDeform_anim;\n\tselect -add uprArmSkinLeft_skinnyDeform_anim;\n\tselect -add neckSkin_skinnyDeform_anim;\n\tselect -add neck_bigDeform_anim;\n\tselect -add torsoBigLeft_bigDeform_anim;\n\tselect -add torsoBigRight_bigDeform_anim;\n\tselect -add uprLegLeft_bigDeform_anim;\n\tselect -add uprLegRight_bigDeform_anim;\n\tselect -add lwrLegRight_bigDeform_anim;\n\tselect -add lwrLegLeft_bigDeform_anim;\n"
		+ "\tselect -add uprArmLeft_bigDeform_anim;\n\tselect -add uprArmRight_bigDeform_anim;\n\tselect -add lwrArmRight_bigDeform_anim;\n\tselect -add lwrArmLeft_bigDeform_anim;\n\tselect -add feminine_deform_anim;\n\tselect -add Belly_deform_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_002\n//TRIGGER_003\nif (size(`match \"\\\\^Big_txt_crv\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d Big_txt_crv;\n\t\n\t//SELECT\n\tselect -add neck_bigDeform_anim;\n\tselect -add torsoBigLeft_bigDeform_anim;\n\tselect -add torsoBigRight_bigDeform_anim;\n\tselect -add uprLegLeft_bigDeform_anim;\n\tselect -add uprLegRight_bigDeform_anim;\n\tselect -add lwrLegRight_bigDeform_anim;\n\tselect -add lwrLegLeft_bigDeform_anim;\n\tselect -add uprArmLeft_bigDeform_anim;\n\tselect -add uprArmRight_bigDeform_anim;\n\tselect -add lwrArmRight_bigDeform_anim;\n\tselect -add lwrArmLeft_bigDeform_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_003\n//TRIGGER_004\nif (size(`match \"\\\\^Skinny_txt_crv\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d Skinny_txt_crv;\n\t\n\t//SELECT\n\tselect -add torsoSkinnyLeft_skinnyDeform_anim;\n"
		+ "\tselect -add torsoSkinnyRight_skinnyDeform_anim;\n\tselect -add uprLegSkinLeft_skinnyDeform_anim;\n\tselect -add uprLegSkinRight_skinnyDeform_anim;\n\tselect -add lwrLegSkinRight_skinnyDeform_anim;\n\tselect -add lwrLegSkinLeft_skinnyDeform_anim;\n\tselect -add lwrArmSkinLeft_skinnyDeform_anim;\n\tselect -add lwrArmSkinRight_skinnyDeform_anim;\n\tselect -add uprArmSkinRight_skinnyDeform_anim;\n\tselect -add uprArmSkinLeft_skinnyDeform_anim;\n\tselect -add neckSkin_skinnyDeform_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_004\n//TRIGGER_005\nif (size(`match \"\\\\^all_noEyes_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d all_noEyes_picker;\n\t\n\t//SELECT\n\tselect -add m_leg_PV_Cntrl_r_anim;\n\tselect -add m_spine_Root_anim;\n\tselect -add rig_spine_0_skin_Hips_anim;\n\tselect -add rig_knee_l_skin_Bendy_anim;\n\tselect -add rig_hip_l_skin_Bendy_anim;\n\tselect -add rig_hip_l_skin_twist_anim;\n\tselect -add rig_knee_r_skin_Bendy_anim;\n\tselect -add rig_hip_r_skin_Bendy_anim;\n\tselect -add rig_hip_r_skin_twist_anim;\n\tselect -add rig_spine_0_skin_Mid_anim;\n"
		+ "\tselect -add rig_spine_0_skin_Shoulders_anim;\n\tselect -add m_neck_FK_anim;\n\tselect -add rig_elbow_l_skin_Bendy_anim;\n\tselect -add rig_shoulder_l_skin_Bendy_anim;\n\tselect -add rig_shoulder_l_skin_twist_anim;\n\tselect -add rig_clavicle_l_skin_FK_anim;\n\tselect -add m_neck_IK_anim;\n\tselect -add m_arm_IK_Cntrl_l_anim;\n\tselect -add rig_wrist_l_skin_GimbleCntrl_l_anim;\n\tselect -add m_arm_PV_Cntrl_l_anim;\n\tselect -add m_arm_IK_Cntrl_r_anim;\n\tselect -add rig_wrist_r_skin_GimbleCntrl_r_anim;\n\tselect -add m_arm_PV_Cntrl_r_anim;\n\tselect -add m_leg_IKleg_Cntrl_l_anim;\n\tselect -add m_leg_GimbleCntrl_l_anim;\n\tselect -add m_leg_PV_Cntrl_l_anim;\n\tselect -add m_leg_IKleg_Cntrl_r_anim;\n\tselect -add m_leg_GimbleCntrl_r_anim;\n\tselect -add tongueBase_anim;\n\tselect -add tongue01_anim;\n\tselect -add tongue03_anim;\n\tselect -add tongueMid_anim;\n\tselect -add tongueShape_anim;\n\tselect -add rig_hip_r_skin_FK_anim;\n\tselect -add rig_knee_r_skin_FK_anim;\n\tselect -add rig_ankle_r_skin_FK_anim;\n\tselect -add rig_wrist_l_skin_SW_anim;\n\tselect -add rig_shoulder_l_skin_FK_anim;\n"
		+ "\tselect -add rig_elbow_l_skin_FK_anim;\n\tselect -add rig_wrist_l_skin_FK_anim;\n\tselect -add jaw_anim;\n\tselect -add mouthSeal_anim;\n\tselect -add browInner_left_anim;\n\tselect -add browOuter_left_anim;\n\tselect -add browMidTweak_left_anim;\n\tselect -add browInner_right_anim;\n\tselect -add browOuter_right_anim;\n\tselect -add browMidTweak_right_anim;\n\tselect -add mouthMove_anim;\n\tselect -add mouthEmote_left_anim;\n\tselect -add cornerCompress_left_anim;\n\tselect -add uprLip_left_anim;\n\tselect -add uprLip_right_anim;\n\tselect -add mouthEmote_right_anim;\n\tselect -add cornerCompress_right_anim;\n\tselect -add uprLip_center_anim;\n\tselect -add lwrLip_left_anim;\n\tselect -add lwrLip_right_anim;\n\tselect -add ponyTailCtrl_1_anim;\n\tselect -add ponyTailCtrl_2_anim;\n\tselect -add ponyTailCtrl_3_anim;\n\tselect -add ponyTailCtrl_4_anim;\n\tselect -add ponyTailCtrl_5_anim;\n\tselect -add ponyTailCtrl_6_anim;\n\tselect -add ponyTailCtrl_7_anim;\n\tselect -add ponyTailCtrl_8_anim;\n\tselect -add ponyTailCtrl_9_anim;\n\tselect -add pigTailLeftCtrl_1_anim;\n\tselect -add pigTailLeftCtrl_2_anim;\n"
		+ "\tselect -add pigTailLeftCtrl_3_anim;\n\tselect -add pigTailLeftCtrl_4_anim;\n\tselect -add pigTailLeftCtrl_5_anim;\n\tselect -add pigTailLeftCtrl_6_anim;\n\tselect -add pigTailLeftCtrl_7_anim;\n\tselect -add pigTailRightCtrl_1_anim;\n\tselect -add pigTailRightCtrl_2_anim;\n\tselect -add pigTailRightCtrl_3_anim;\n\tselect -add pigTailRightCtrl_4anim;\n\tselect -add pigTailRightCtrl_5_anim;\n\tselect -add pigTailRightCtrl_6_anim;\n\tselect -add pigTailRightCtrl_7_anim;\n\tselect -add uprLidAll_left_anim;\n\tselect -add center_uprLid_left_anim;\n\tselect -add inner_uprLid_left_anim;\n\tselect -add outer_uprLid_left_anim;\n\tselect -add lwrLidAll_left_anim;\n\tselect -add outer_lwrLid_left_anim;\n\tselect -add inner_lwrLid_left_anim;\n\tselect -add center_lwrLid_left_anim;\n\tselect -add blink_left_anim;\n\tselect -add uprLidAll_right_anim;\n\tselect -add inner_uprLid_right_anim;\n\tselect -add center_uprLid_right_anim;\n\tselect -add outer_uprLid_right_anim;\n\tselect -add lwrLidAll_right_anim;\n\tselect -add outer_lwrLid_right_anim;\n\tselect -add center_lwrLid_right_anim;\n"
		+ "\tselect -add inner_lwrLid_right_anim;\n\tselect -add blink_right_anim;\n\tselect -add lwrLip_center_anim;\n\tselect -add cheek_left_anim;\n\tselect -add cheek_right_anim;\n\tselect -add sneer_left_anim;\n\tselect -add sneer_right_anim;\n\tselect -add eyeSqueeze_left_anim;\n\tselect -add eyeSqueeze_right_anim;\n\tselect -add noseMove_anim;\n\tselect -add earLeft_anim;\n\tselect -add left_uprEar_anim;\n\tselect -add left_uprEarTip_anim;\n\tselect -add left_lwrEar_anim;\n\tselect -add left_lwrEarTip_anim;\n\tselect -add earRight_anim;\n\tselect -add right_uprEarTip_anim;\n\tselect -add right_lwrEar_anim;\n\tselect -add right_lwrEarTip_anim;\n\tselect -add uprTeeth_anim;\n\tselect -add lwrTeeth_anim;\n\tselect -add rig_elbow_r_skin_Bendy_anim;\n\tselect -add rig_shoulder_r_skin_Bendy_anim;\n\tselect -add rig_shoulder_r_skin_twist_anim;\n\tselect -add rig_clavicle_r_skin_FK_anim;\n\tselect -add l_fingers_anim;\n\tselect -add l_pinky_anim;\n\tselect -add l_ring_anim;\n\tselect -add l_mid_anim;\n\tselect -add l_index_anim;\n\tselect -add l_thumb_anim;\n\tselect -add r_fingers_anim;\n"
		+ "\tselect -add r_pinky_anim;\n\tselect -add r_ring_anim;\n\tselect -add r_mid_anim;\n\tselect -add r_index_anim;\n\tselect -add r_thumb_anim;\n\tselect -add m_arm_prop_IK_Cntrl_l_anim;\n\tselect -add m_arm_prop_IK_Cntrl_r_anim;\n\tselect -add m_leg_prop_IKleg_Cntrl_r_anim;\n\tselect -add m_leg_prop_IKleg_Cntrl_l_anim;\n\tselect -add m_cog_prop_IK_Cntrl_anim;\n\tselect -add rig_wrist_r_skin_SW_anim;\n\tselect -add rig_shoulder_r_skin_FK_anim;\n\tselect -add rig_elbow_r_skin_FK_anim;\n\tselect -add rig_wrist_r_skin_FK_anim;\n\tselect -add rig_ball_r_skin_FK_anim;\n\tselect -add rig_spine_0_skinFK1_anim;\n\tselect -add rig_spine_0_skinFK2_anim;\n\tselect -add rig_spine_0_skinFK3_anim;\n\tselect -add rig_ankle_r_skin_SW_anim;\n\tselect -add rig_hip_l_skin_FK_anim;\n\tselect -add rig_knee_l_skin_FK_anim;\n\tselect -add rig_ankle_l_skin_FK_anim;\n\tselect -add rig_ball_l_skin_FK_anim;\n\tselect -add rig_ankle_l_skin_SW_anim;\n\tselect -add rig_clavicle_l_skin_IK_anim;\n\tselect -add rig_clavicle_r_skin_IK_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_005\n//TRIGGER_006\n"
		+ "if (size(`match \"\\\\^armLeft_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d armLeft_picker;\n\t\n\t//SELECT\n\tselect -add rig_elbow_l_skin_Bendy_anim;\n\tselect -add rig_shoulder_l_skin_Bendy_anim;\n\tselect -add rig_shoulder_l_skin_twist_anim;\n\tselect -add rig_clavicle_l_skin_FK_anim;\n\tselect -add m_arm_IK_Cntrl_l_anim;\n\tselect -add rig_wrist_l_skin_GimbleCntrl_l_anim;\n\tselect -add m_arm_PV_Cntrl_l_anim;\n\tselect -add m_arm_prop_IK_Cntrl_l_anim;\n\tselect -add rig_wrist_l_skin_SW_anim;\n\tselect -add rig_shoulder_l_skin_FK_anim;\n\tselect -add rig_elbow_l_skin_FK_anim;\n\tselect -add rig_wrist_l_skin_FK_anim;\n\tselect -add rig_clavicle_l_skin_IK_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_006\n//TRIGGER_007\nif (size(`match \"\\\\^armRight_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d armRight_picker;\n\t\n\t//SELECT\n\tselect -add rig_elbow_r_skin_Bendy_anim;\n\tselect -add rig_shoulder_r_skin_Bendy_anim;\n\tselect -add rig_shoulder_r_skin_twist_anim;\n\tselect -add rig_clavicle_r_skin_FK_anim;\n\tselect -add m_arm_IK_Cntrl_r_anim;\n"
		+ "\tselect -add rig_wrist_r_skin_GimbleCntrl_r_anim;\n\tselect -add m_arm_PV_Cntrl_r_anim;\n\tselect -add m_arm_prop_IK_Cntrl_r_anim;\n\tselect -add rig_shoulder_r_skin_FK_anim;\n\tselect -add rig_elbow_r_skin_FK_anim;\n\tselect -add rig_wrist_r_skin_FK_anim;\n\tselect -add rig_wrist_r_skin_SW_anim;\n\tselect -add rig_clavicle_r_skin_IK_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_007\n//TRIGGER_008\nif (size(`match \"\\\\^elbow_l_locCrv\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d elbow_l_locCrv;\n\t\n\t//SELECT\n\tselect -add m_arm_PV_Cntrl_l_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_008\n//TRIGGER_009\nif (size(`match \"\\\\^elbow_r_locCrv\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d elbow_r_locCrv;\n\t\n\t//SELECT\n\tselect -add m_arm_PV_Cntrl_r_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_009\n//TRIGGER_010\nif (size(`match \"\\\\^eye_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d eye_picker;\n\t\n\t//SELECT\n\tselect -add eye_masterIK_prop_anim;\n\tselect -add eye_masterIK_anim;\n\tselect -add eyeIK_left_anim;\n\tselect -add eyeIK_right_anim;\n"
		+ "\tselect -add eyeFK_left_anim;\n\tselect -add iris_left_anim;\n\tselect -add pupil_left_anim;\n\tselect -add eye_left_fkikSwitch_anim;\n\tselect -add eyeFK_right_anim;\n\tselect -add iris_right_anim;\n\tselect -add pupil_right_anim;\n\tselect -add eye_right_fkikSwitch_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_010\n//TRIGGER_011\nif (size(`match \"\\\\^eyes_Select_pick\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d eyes_Select_pick;\n\t\n\t//SELECT\n\tselect -add eyeIK_left_anim;\n\tselect -add eyeIK_right_anim;\n\tselect -add eyeFK_left_anim;\n\tselect -add iris_left_anim;\n\tselect -add pupil_left_anim;\n\tselect -add eye_left_fkikSwitch_anim;\n\tselect -add eyeFK_right_anim;\n\tselect -add iris_right_anim;\n\tselect -add pupil_right_anim;\n\tselect -add eye_right_fkikSwitch_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_011\n//TRIGGER_012\nif (size(`match \"\\\\^faceAll_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d faceAll_picker;\n\t\n\t//SELECT\n\tselect -add tongueBase_anim;\n\tselect -add tongue01_anim;\n\tselect -add tongue03_anim;\n\tselect -add tongueMid_anim;\n"
		+ "\tselect -add tongueShape_anim;\n\tselect -add jaw_anim;\n\tselect -add mouthSeal_anim;\n\tselect -add browInner_left_anim;\n\tselect -add browOuter_left_anim;\n\tselect -add browMidTweak_left_anim;\n\tselect -add browInner_right_anim;\n\tselect -add browOuter_right_anim;\n\tselect -add browMidTweak_right_anim;\n\tselect -add mouthMove_anim;\n\tselect -add mouthEmote_left_anim;\n\tselect -add cornerCompress_left_anim;\n\tselect -add uprLip_left_anim;\n\tselect -add uprLip_right_anim;\n\tselect -add mouthEmote_right_anim;\n\tselect -add cornerCompress_right_anim;\n\tselect -add uprLip_center_anim;\n\tselect -add lwrLip_left_anim;\n\tselect -add lwrLip_right_anim;\n\tselect -add ponyTailCtrl_1_anim;\n\tselect -add ponyTailCtrl_2_anim;\n\tselect -add ponyTailCtrl_3_anim;\n\tselect -add ponyTailCtrl_4_anim;\n\tselect -add ponyTailCtrl_5_anim;\n\tselect -add ponyTailCtrl_6_anim;\n\tselect -add ponyTailCtrl_7_anim;\n\tselect -add ponyTailCtrl_8_anim;\n\tselect -add ponyTailCtrl_9_anim;\n\tselect -add pigTailLeftCtrl_1_anim;\n\tselect -add pigTailLeftCtrl_2_anim;\n\tselect -add pigTailLeftCtrl_3_anim;\n"
		+ "\tselect -add pigTailLeftCtrl_4_anim;\n\tselect -add pigTailLeftCtrl_5_anim;\n\tselect -add pigTailLeftCtrl_6_anim;\n\tselect -add pigTailLeftCtrl_7_anim;\n\tselect -add pigTailRightCtrl_1_anim;\n\tselect -add pigTailRightCtrl_2_anim;\n\tselect -add pigTailRightCtrl_3_anim;\n\tselect -add pigTailRightCtrl_4anim;\n\tselect -add pigTailRightCtrl_5_anim;\n\tselect -add pigTailRightCtrl_6_anim;\n\tselect -add pigTailRightCtrl_7_anim;\n\tselect -add eye_masterIK_anim;\n\tselect -add eyeIK_left_anim;\n\tselect -add eyeIK_right_anim;\n\tselect -add eyeFK_left_anim;\n\tselect -add iris_left_anim;\n\tselect -add pupil_left_anim;\n\tselect -add eye_left_fkikSwitch_anim;\n\tselect -add uprLidAll_left_anim;\n\tselect -add center_uprLid_left_anim;\n\tselect -add inner_uprLid_left_anim;\n\tselect -add outer_uprLid_left_anim;\n\tselect -add lwrLidAll_left_anim;\n\tselect -add outer_lwrLid_left_anim;\n\tselect -add inner_lwrLid_left_anim;\n\tselect -add center_lwrLid_left_anim;\n\tselect -add blink_left_anim;\n\tselect -add eyeFK_right_anim;\n\tselect -add iris_right_anim;\n\tselect -add pupil_right_anim;\n"
		+ "\tselect -add eye_right_fkikSwitch_anim;\n\tselect -add uprLidAll_right_anim;\n\tselect -add inner_uprLid_right_anim;\n\tselect -add center_uprLid_right_anim;\n\tselect -add outer_uprLid_right_anim;\n\tselect -add lwrLidAll_right_anim;\n\tselect -add outer_lwrLid_right_anim;\n\tselect -add center_lwrLid_right_anim;\n\tselect -add inner_lwrLid_right_anim;\n\tselect -add blink_right_anim;\n\tselect -add lwrLip_center_anim;\n\tselect -add cheek_left_anim;\n\tselect -add cheek_right_anim;\n\tselect -add sneer_left_anim;\n\tselect -add sneer_right_anim;\n\tselect -add eyeSqueeze_left_anim;\n\tselect -add eyeSqueeze_right_anim;\n\tselect -add noseMove_anim;\n\tselect -add earLeft_anim;\n\tselect -add left_uprEar_anim;\n\tselect -add left_uprEarTip_anim;\n\tselect -add left_lwrEar_anim;\n\tselect -add left_lwrEarTip_anim;\n\tselect -add earRight_anim;\n\tselect -add right_uprEarTip_anim;\n\tselect -add right_lwrEar_anim;\n\tselect -add right_lwrEarTip_anim;\n\tselect -add uprTeeth_anim;\n\tselect -add lwrTeeth_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_012\n//TRIGGER_013\n"
		+ "if (size(`match \"\\\\^face_Select_pick\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d face_Select_pick;\n\t\n\t//SELECT\n\tselect -add browInner_right_anim;\n\tselect -add tongueBase_anim;\n\tselect -add tongue01_anim;\n\tselect -add tongue03_anim;\n\tselect -add tongueMid_anim;\n\tselect -add tongueShape_anim;\n\tselect -add jaw_anim;\n\tselect -add mouthSeal_anim;\n\tselect -add browInner_left_anim;\n\tselect -add browOuter_left_anim;\n\tselect -add browMidTweak_left_anim;\n\tselect -add uprLidAll_right_anim;\n\tselect -add inner_uprLid_right_anim;\n\tselect -add center_uprLid_right_anim;\n\tselect -add outer_uprLid_right_anim;\n\tselect -add lwrLidAll_right_anim;\n\tselect -add outer_lwrLid_right_anim;\n\tselect -add center_lwrLid_right_anim;\n\tselect -add inner_lwrLid_right_anim;\n\tselect -add blink_right_anim;\n\tselect -add eye_masterIK_anim;\n\tselect -add eyeIK_left_anim;\n\tselect -add eyeIK_right_anim;\n\tselect -add eyeFK_left_anim;\n\tselect -add iris_left_anim;\n\tselect -add pupil_left_anim;\n\tselect -add eye_left_fkikSwitch_anim;\n\tselect -add uprLidAll_left_anim;\n"
		+ "\tselect -add center_uprLid_left_anim;\n\tselect -add inner_uprLid_left_anim;\n\tselect -add outer_uprLid_left_anim;\n\tselect -add lwrLidAll_left_anim;\n\tselect -add outer_lwrLid_left_anim;\n\tselect -add inner_lwrLid_left_anim;\n\tselect -add center_lwrLid_left_anim;\n\tselect -add blink_left_anim;\n\tselect -add eyeFK_right_anim;\n\tselect -add iris_right_anim;\n\tselect -add pupil_right_anim;\n\tselect -add eye_right_fkikSwitch_anim;\n\tselect -add right_lwrEarTip_anim;\n\tselect -add uprTeeth_anim;\n\tselect -add lwrTeeth_anim;\n\tselect -add ponyTailCtrl_1_anim;\n\tselect -add ponyTailCtrl_2_anim;\n\tselect -add ponyTailCtrl_3_anim;\n\tselect -add ponyTailCtrl_4_anim;\n\tselect -add ponyTailCtrl_5_anim;\n\tselect -add ponyTailCtrl_6_anim;\n\tselect -add ponyTailCtrl_7_anim;\n\tselect -add ponyTailCtrl_8_anim;\n\tselect -add ponyTailCtrl_9_anim;\n\tselect -add pigTailLeftCtrl_1_anim;\n\tselect -add pigTailLeftCtrl_2_anim;\n\tselect -add pigTailLeftCtrl_3_anim;\n\tselect -add pigTailLeftCtrl_4_anim;\n\tselect -add pigTailLeftCtrl_5_anim;\n\tselect -add pigTailLeftCtrl_6_anim;\n"
		+ "\tselect -add pigTailLeftCtrl_7_anim;\n\tselect -add pigTailRightCtrl_1_anim;\n\tselect -add pigTailRightCtrl_2_anim;\n\tselect -add pigTailRightCtrl_3_anim;\n\tselect -add pigTailRightCtrl_4anim;\n\tselect -add pigTailRightCtrl_5_anim;\n\tselect -add pigTailRightCtrl_6_anim;\n\tselect -add pigTailRightCtrl_7_anim;\n\tselect -add browOuter_right_anim;\n\tselect -add browMidTweak_right_anim;\n\tselect -add mouthMove_anim;\n\tselect -add mouthEmote_left_anim;\n\tselect -add cornerCompress_left_anim;\n\tselect -add uprLip_left_anim;\n\tselect -add uprLip_right_anim;\n\tselect -add mouthEmote_right_anim;\n\tselect -add cornerCompress_right_anim;\n\tselect -add uprLip_center_anim;\n\tselect -add lwrLip_left_anim;\n\tselect -add lwrLip_right_anim;\n\tselect -add lwrLip_center_anim;\n\tselect -add cheek_left_anim;\n\tselect -add cheek_right_anim;\n\tselect -add sneer_left_anim;\n\tselect -add sneer_right_anim;\n\tselect -add eyeSqueeze_left_anim;\n\tselect -add eyeSqueeze_right_anim;\n\tselect -add noseMove_anim;\n\tselect -add earLeft_anim;\n\tselect -add left_uprEar_anim;\n"
		+ "\tselect -add left_uprEarTip_anim;\n\tselect -add left_lwrEar_anim;\n\tselect -add left_lwrEarTip_anim;\n\tselect -add earRight_anim;\n\tselect -add right_uprEarTip_anim;\n\tselect -add right_lwrEar_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_013\n//TRIGGER_014\nif (size(`match \"\\\\^fingersLeft_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d fingersLeft_picker;\n\t\n\t//SELECT\n\tselect -add l_fingers_anim;\n\tselect -add l_pinky_anim;\n\tselect -add l_ring_anim;\n\tselect -add l_mid_anim;\n\tselect -add l_index_anim;\n\tselect -add l_thumb_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_014\n//TRIGGER_015\nif (size(`match \"\\\\^fingersRight_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d fingersRight_picker;\n\t\n\t//SELECT\n\tselect -add r_fingers_anim;\n\tselect -add r_pinky_anim;\n\tselect -add r_ring_anim;\n\tselect -add r_mid_anim;\n\tselect -add r_index_anim;\n\tselect -add r_thumb_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_015\n//TRIGGER_016\nif (size(`match \"\\\\^knee_l_locCrv\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d knee_l_locCrv;\n"
		+ "\t\n\t//SELECT\n\tselect -add m_leg_PV_Cntrl_l_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_016\n//TRIGGER_017\nif (size(`match \"\\\\^knee_r_locCrv\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d knee_r_locCrv;\n\t\n\t//SELECT\n\tselect -add m_leg_PV_Cntrl_r_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_017\n//TRIGGER_018\nif (size(`match \"\\\\^legLeft_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d legLeft_picker;\n\t\n\t//SELECT\n\tselect -add m_leg_IKleg_Cntrl_l_anim;\n\tselect -add rig_knee_l_skin_Bendy_anim;\n\tselect -add rig_hip_l_skin_Bendy_anim;\n\tselect -add rig_hip_l_skin_twist_anim;\n\tselect -add m_leg_GimbleCntrl_l_anim;\n\tselect -add m_leg_PV_Cntrl_l_anim;\n\tselect -add m_leg_prop_IKleg_Cntrl_l_anim;\n\tselect -add rig_ankle_l_skin_SW_anim;\n\tselect -add rig_hip_l_skin_FK_anim;\n\tselect -add rig_knee_l_skin_FK_anim;\n\tselect -add rig_ankle_l_skin_FK_anim;\n\tselect -add rig_ball_l_skin_FK_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_018\n//TRIGGER_019\nif (size(`match \"\\\\^legRight_picker\\\\^\" $selString`)) {;\n"
		+ "\t//ACTIONS_BEGIN\n\tselect -d legRight_picker;\n\t\n\t//SELECT\n\tselect -add rig_knee_r_skin_Bendy_anim;\n\tselect -add rig_hip_r_skin_Bendy_anim;\n\tselect -add rig_hip_r_skin_twist_anim;\n\tselect -add m_leg_IKleg_Cntrl_r_anim;\n\tselect -add m_leg_GimbleCntrl_r_anim;\n\tselect -add m_leg_PV_Cntrl_r_anim;\n\tselect -add m_leg_prop_IKleg_Cntrl_r_anim;\n\tselect -add rig_ankle_r_skin_SW_anim;\n\tselect -add rig_hip_r_skin_FK_anim;\n\tselect -add rig_knee_r_skin_FK_anim;\n\tselect -add rig_ankle_r_skin_FK_anim;\n\tselect -add rig_ball_r_skin_FK_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_019\n//TRIGGER_020\nif (size(`match \"\\\\^lwrFace_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d lwrFace_picker;\n\t\n\t//SELECT\n\tselect -add jaw_anim;\n\tselect -add mouthSeal_anim;\n\tselect -add mouthMove_anim;\n\tselect -add mouthEmote_left_anim;\n\tselect -add cornerCompress_left_anim;\n\tselect -add uprLip_left_anim;\n\tselect -add uprLip_right_anim;\n\tselect -add mouthEmote_right_anim;\n\tselect -add cornerCompress_right_anim;\n\tselect -add uprLip_center_anim;\n"
		+ "\tselect -add lwrLip_left_anim;\n\tselect -add lwrLip_right_anim;\n\tselect -add lwrLip_center_anim;\n\tselect -add cheek_left_anim;\n\tselect -add cheek_right_anim;\n\tselect -add sneer_left_anim;\n\tselect -add sneer_right_anim;\n\tselect -add noseMove_anim;\n\tselect -add earLeft_anim;\n\tselect -add left_uprEar_anim;\n\tselect -add left_uprEarTip_anim;\n\tselect -add left_lwrEar_anim;\n\tselect -add left_lwrEarTip_anim;\n\tselect -add earRight_anim;\n\tselect -add right_uprEarTip_anim;\n\tselect -add right_lwrEar_anim;\n\tselect -add right_lwrEarTip_anim;\n\tselect -add uprTeeth_anim;\n\tselect -add lwrTeeth_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_020\n//TRIGGER_021\nif (size(`match \"\\\\^lwr_Select_pick\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d lwr_Select_pick;\n\t\n\t//SELECT\n\tselect -add earRight_anim;\n\tselect -add right_uprEar_anim;\n\tselect -add right_uprEarTip_anim;\n\tselect -add right_lwrEar_anim;\n\tselect -add right_lwrEarTip_anim;\n\tselect -add earLeft_anim;\n\tselect -add left_uprEar_anim;\n\tselect -add left_uprEarTip_anim;\n\tselect -add left_lwrEar_anim;\n"
		+ "\tselect -add left_lwrEarTip_anim;\n\tselect -add jaw_anim;\n\tselect -add mouthSeal_anim;\n\tselect -add mouthMove_anim;\n\tselect -add mouthEmote_left_anim;\n\tselect -add cornerCompress_left_anim;\n\tselect -add uprLip_left_anim;\n\tselect -add uprLip_right_anim;\n\tselect -add mouthEmote_right_anim;\n\tselect -add cornerCompress_right_anim;\n\tselect -add uprLip_center_anim;\n\tselect -add lwrLip_left_anim;\n\tselect -add lwrLip_right_anim;\n\tselect -add lwrLip_center_anim;\n\tselect -add cheek_left_anim;\n\tselect -add cheek_right_anim;\n\tselect -add sneer_left_anim;\n\tselect -add sneer_right_anim;\n\tselect -add lwrTeeth_anim;\n\tselect -add uprTeeth_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_021\n//TRIGGER_022\nif (size(`match \"\\\\^tongueBase_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d tongueBase_picker;\n\t\n\t//SELECT\n\tselect -add tongue01_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_022\n//TRIGGER_023\nif (size(`match \"\\\\^tongueMid_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d tongueMid_picker;\n\t\n\t//SELECT\n"
		+ "\tselect -add tongueMid_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_023\n//TRIGGER_024\nif (size(`match \"\\\\^tongueShape_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d tongueShape_picker;\n\t\n\t//SELECT\n\tselect -add tongueShape_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_024\n//TRIGGER_025\nif (size(`match \"\\\\^tongueTip_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d tongueTip_picker;\n\t\n\t//SELECT\n\tselect -add tongue03_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_025\n//TRIGGER_026\nif (size(`match \"\\\\^torso_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d torso_picker;\n\t\n\t//SELECT\n\tselect -add rig_spine_0_skin_Mid_anim;\n\tselect -add rig_spine_0_skin_Shoulders_anim;\n\tselect -add m_neck_FK_anim;\n\tselect -add m_neck_IK_anim;\n\tselect -add m_spine_Root_anim;\n\tselect -add rig_spine_0_skin_Hips_anim;\n\tselect -add rig_spine_0_skinFK1_anim;\n\tselect -add rig_spine_0_skinFK2_anim;\n\tselect -add rig_spine_0_skinFK3_anim;\n\tselect -add m_cog_prop_IK_Cntrl_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n"
		+ "}\n//TRIGGER_END_026\n//TRIGGER_027\nif (size(`match \"\\\\^uprFace_picker\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d uprFace_picker;\n\t\n\t//SELECT\n\tselect -add browInner_left_anim;\n\tselect -add browOuter_left_anim;\n\tselect -add browMidTweak_left_anim;\n\tselect -add browInner_right_anim;\n\tselect -add browOuter_right_anim;\n\tselect -add browMidTweak_right_anim;\n\tselect -add uprLidAll_left_anim;\n\tselect -add center_uprLid_left_anim;\n\tselect -add inner_uprLid_left_anim;\n\tselect -add outer_uprLid_left_anim;\n\tselect -add lwrLidAll_left_anim;\n\tselect -add outer_lwrLid_left_anim;\n\tselect -add inner_lwrLid_left_anim;\n\tselect -add center_lwrLid_left_anim;\n\tselect -add blink_left_anim;\n\tselect -add uprLidAll_right_anim;\n\tselect -add inner_uprLid_right_anim;\n\tselect -add center_uprLid_right_anim;\n\tselect -add outer_uprLid_right_anim;\n\tselect -add lwrLidAll_right_anim;\n\tselect -add outer_lwrLid_right_anim;\n\tselect -add center_lwrLid_right_anim;\n\tselect -add inner_lwrLid_right_anim;\n\tselect -add blink_right_anim;\n\tselect -add eyeSqueeze_left_anim;\n"
		+ "\tselect -add eyeSqueeze_right_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_027\n//TRIGGER_028\nif (size(`match \"\\\\^upr_Select_pick\\\\^\" $selString`)) {;\n\t//ACTIONS_BEGIN\n\tselect -d upr_Select_pick;\n\t\n\t//SELECT\n\tselect -add center_uprLid_left_anim;\n\tselect -add inner_uprLid_left_anim;\n\tselect -add outer_uprLid_left_anim;\n\tselect -add center_lwrLid_left_anim;\n\tselect -add outer_lwrLid_left_anim;\n\tselect -add inner_lwrLid_left_anim;\n\tselect -add blink_left_anim;\n\tselect -add center_uprLid_right_anim;\n\tselect -add inner_uprLid_right_anim;\n\tselect -add outer_uprLid_right_anim;\n\tselect -add center_lwrLid_right_anim;\n\tselect -add outer_lwrLid_right_anim;\n\tselect -add inner_lwrLid_right_anim;\n\tselect -add blink_right_anim;\n\tselect -add browInner_left_anim;\n\tselect -add browOuter_left_anim;\n\tselect -add browMidTweak_left_anim;\n\tselect -add browInner_right_anim;\n\tselect -add browOuter_right_anim;\n\tselect -add browMidTweak_right_anim;\n\tselect -add eyeSqueeze_left_anim;\n\tselect -add eyeSqueeze_right_anim;\n\tselect -add uprLidAll_right_anim;\n"
		+ "\tselect -add uprLidAll_left_anim;\n\tselect -add lwrLidAll_right_anim;\n\tselect -add lwrLidAll_left_anim;\n\t//ENDSELECT\n\t\n\t//ACTIONS_END\n}\n//TRIGGER_END_028\n\t//END_TRIGGERS\n}\nscriptJob -cu 1 -kws -e \"SelectionChanged\" \"btrTrigGrp_morphyTriggers_btrTrigProc\";");
	setAttr ".a" -type "string" "proc btrTrigGrp_morphyTriggers_btrTrigKillProc() {\n\tstring $scriptJobList[] = `scriptJob -lj`;\n\tfor ($job in $scriptJobList) {\n\t\tstring $num = `match \"^[0-9]*[^:]*\" $job`;\n\t\tstring $matchStr = \"\\\"SelectionChanged\\\" \\\"btrTrigGrp_morphyTriggers_btrTrigProc\\\"\";\n\t\tstring $match = (`match $matchStr $job`);\n\t\tif (size($match) > 0)\n\t\t\tscriptJob -k ((int)$num);\n\t}\n}\nbtrTrigGrp_morphyTriggers_btrTrigKillProc;";
	setAttr ".st" 1;
createNode lambert -n "SurvivalKitAnimation:AnimationRef";
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".ic" -type "float3" 1 1 1 ;
createNode shadingEngine -n "SurvivalKitAnimation:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "SurvivalKitAnimation:materialInfo1";
createNode file -n "SurvivalKitAnimation:file1";
	setAttr ".ftn" -type "string" "/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/SurvivalKit_WalkCycle.jpg";
createNode place2dTexture -n "SurvivalKitAnimation:place2dTexture1";
createNode animCurveTU -n "SurvivalKitAnimation:place2dTexture1_offsetU";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "SurvivalKitAnimation:place2dTexture1_offsetV";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode blendWeighted -n "SurvivalKitAnimation:blendWeighted1";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode animCurveUU -n "SurvivalKitAnimation:animCurveUU1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.0099999997764825821 1 0.11500000208616255 
		2 0.21799999475479129 3 0.31999999284744263 4 0.42500001192092896 5 0.5350000262260437 
		6 0.63999998569488525 7 0.74199998378753662 8 0.85000002384185791 9 0.84500002861022949;
createNode animCurveTU -n "SurvivalKitAnimation:uv_Frame_UV_Frame";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 1 7 2 10 3 13 4 16 5 19 6 22 7 24 9;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView2";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout2";
	setAttr ".ihi" 0;
	setAttr ".anf" yes;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 14 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 14 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 504 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".tx";
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
	setAttr -k on ".ro" yes;
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
	setAttr -k on ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".macc";
	setAttr -cb on ".macd";
	setAttr -cb on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -cb on ".ren" -type "string" "mentalRay";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep" 1;
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff";
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -cb on ".ope";
	setAttr -cb on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w" 640;
	setAttr -av ".h" 480;
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar" 1.3333332538604736;
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
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
	setAttr -av -k on ".bf";
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
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
select -ne :hyperGraphInfo;
connectAttr "SurvivalKitAnimation:uv_Frame_UV_Frame.o" "SurvivalKitAnimation_UVGuide.UV_Frame"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "misss_fast_skin_maya1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FixMe_Default.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SurvivalKitAnimation:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FIXMEJOSH_lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Default.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "L_EyeSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CorrineSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MorphyFace5:MorphyFace:FixMe_lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Marcus_Marcus_phong9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "misss_fast_skin_maya1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FixMe_Default.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SurvivalKitAnimation:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FIXMEJOSH_lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Default.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "L_EyeSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CorrineSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MorphyFace5:MorphyFace:FixMe_lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Marcus_Marcus_phong9SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewImrRayTracyOff.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewImrRayTracyOn.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Draft.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftMotionBlur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Preview.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewCaustics.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewGlobalIllum.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewFinalGather.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Production.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionFineTrace.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidFur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidHair.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "mentalrayTexture1.msg" ":mentalrayGlobals.tx[0]";
connectAttr "back_curve_normalizedScale.ox" "curveInfo1.normalizedScale";
connectAttr "curveInfo1.al" "back_curve_normalizedScale.i1x";
connectAttr "rig_spine_0_skin_Div.msg" "m_spine_Prim_0.splineDiv0";
connectAttr "rig_neck_0_skin_Div.msg" "m_neck_Prim_0.splineDiv0";
connectAttr "back_curve_normalizedScale1.ox" "Marcus_curveInfo1.normalizedScale"
		;
connectAttr "Marcus_curveInfo1.al" "back_curve_normalizedScale1.i1x";
connectAttr "arms_LeftArm_multiplyDivide53.ox" "arms_LeftArm_plusMinusAverage9.i3[0].i3x"
		;
connectAttr "arms_LeftArm_plusMinusAverage8.o3x" "arms_LeftArm_plusMinusAverage9.i3[1].i3y"
		;
connectAttr "arms_LeftArm_plusMinusAverage8.o3y" "arms_LeftArm_plusMinusAverage9.i3[1].i3z"
		;
connectAttr "arms_LeftArm_plusMinusAverage35.o3y" "arms_LeftArm_plusMinusAverage9.i3[1].i3x"
		;
connectAttr "arms_LeftArm_multiplyDivide15.o" "arms_LeftArm_plusMinusAverage8.i3[0]"
		;
connectAttr "arms_LeftArm_multiplyDivide16.o" "arms_LeftArm_plusMinusAverage8.i3[1]"
		;
connectAttr "arms_LeftArm_halfX_axis.ox" "arms_LeftArm_unitConversion2.i";
connectAttr "arms_LeftArm_multiplyDivide52.ox" "arms_LeftArm_halfX_axis.i2x";
connectAttr "arms_LeftArm_halfX_axis.ox" "arms_LeftArm_unitConversion3.i";
connectAttr "arms_LeftArm_devideformiddlejoints.ox" "arms_LeftArm_unitConversion8.i"
		;
connectAttr "arms_LeftArm_multiplyDivide59.ox" "arms_LeftArm_devideformiddlejoints.i2x"
		;
connectAttr "arms_LeftArm_devideformiddlejoints.ox" "arms_LeftArm_unitConversion34.i"
		;
connectAttr "arms_RightArm_halfX_axis.ox" "arms_RightArm_unitConversion2.i";
connectAttr "arms_LeftArm_plusMinusAverage37.o3y" "arms_RightArm_halfX_axis.i1y"
		;
connectAttr "arms_LeftArm_multiplyDivide56.ox" "arms_RightArm_halfX_axis.i2x";
connectAttr "arms_RightArm_halfX_axis.ox" "arms_RightArm_unitConversion3.i";
connectAttr "arms_RightArm_devideformiddlejoints.ox" "arms_RightArm_unitConversion8.i"
		;
connectAttr "arms_RightArm_multiplyDivide57.ox" "arms_RightArm_devideformiddlejoints.i2x"
		;
connectAttr "arms_RightArm_devideformiddlejoints.ox" "arms_RightArm_unitConversion42.i"
		;
connectAttr "arms_LeftArm_multiplyDivide51.o" "arms_LeftArm_plusMinusAverage35.i3[0]"
		;
connectAttr "arms_LeftArm_multiplyDivide50.o" "arms_LeftArm_plusMinusAverage35.i3[1]"
		;
connectAttr "arms_LeftArm_plusMinusAverage35.o3y" "arms_LeftArm_multiplyDivide53.i1y"
		;
connectAttr "arms_LeftArm_plusMinusAverage35.o3x" "arms_LeftArm_multiplyDivide53.i2x"
		;
connectAttr "arms_LeftArm_reverse1.ox" "arms_LeftArm_multiplyDivide52.i1x";
connectAttr "arms_LeftArm_plusMinusAverage35.o3x" "arms_LeftArm_reverse1.ix";
connectAttr "arms_LeftArm_plusMinusAverage9.o3x" "arms_unitConversion23.i";
connectAttr "arms_LeftArm_plusMinusAverage9.o3y" "arms_unitConversion24.i";
connectAttr "arms_LeftArm_multiplyDivide55.o" "arms_LeftArm_plusMinusAverage37.i3[0]"
		;
connectAttr "arms_LeftArm_multiplyDivide54.o" "arms_LeftArm_plusMinusAverage37.i3[1]"
		;
connectAttr "arms_LeftArm_reverse3.ox" "arms_LeftArm_multiplyDivide56.i1x";
connectAttr "arms_LeftArm_plusMinusAverage37.o3x" "arms_LeftArm_multiplyDivide56.i1y"
		;
connectAttr "arms_LeftArm_plusMinusAverage37.o3x" "arms_LeftArm_reverse3.ix";
connectAttr "arms_LeftArm_multiplyDivide58.o" "arms_LeftArm_plusMinusAverage39.i3[0]"
		;
connectAttr "arms_LeftArm_multiplyDivide57.o" "arms_LeftArm_plusMinusAverage39.i3[1]"
		;
connectAttr "arms_LeftArm_reverse4.ox" "arms_LeftArm_multiplyDivide59.i1x";
connectAttr "arms_LeftArm_plusMinusAverage39.o3x" "arms_LeftArm_reverse4.ix";
connectAttr "arms_RightArm_multiplyDivide55.o" "arms_RightArm_plusMinusAverage36.i3[0]"
		;
connectAttr "arms_RightArm_multiplyDivide56.o" "arms_RightArm_plusMinusAverage36.i3[1]"
		;
connectAttr "arms_RightArm_plusMinusAverage36.o3x" "arms_RightArm_reverse1.ix";
connectAttr "arms_RightArm_reverse1.ox" "arms_RightArm_multiplyDivide57.i1x";
connectAttr "legs_LeftLeg_multiplyDivide32.ox" "legs_LeftLeg_unitConversion33.i"
		;
connectAttr "legs_LeftLeg_multiplyDivide48.ox" "legs_LeftLeg_multiplyDivide32.i2x"
		;
connectAttr "legs_LeftLeg_multiplyDivide32.o" "legs_LeftLeg_unitConversion28.i";
connectAttr "legs_RightLeg_multiplyDivide32.ox" "legs_RightLeg_unitConversion33.i"
		;
connectAttr "legs_RightLeg_multiplyDivide48.ox" "legs_RightLeg_multiplyDivide32.i2x"
		;
connectAttr "legs_RightLeg_multiplyDivide32.o" "legs_RightLeg_unitConversion28.i"
		;
connectAttr "legs_LeftLeg_multiplyDivide46.o" "legs_LeftLeg_plusMinusAverage33.i3[0]"
		;
connectAttr "legs_LeftLeg_multiplyDivide45.o" "legs_LeftLeg_plusMinusAverage33.i3[1]"
		;
connectAttr "legs_LeftLeg_plusMinusAverage33.o3x" "legs_LeftLeg_reverse3.ix";
connectAttr "legs_LeftLeg_reverse3.ox" "legs_LeftLeg_multiplyDivide48.i1x";
connectAttr "legs_LeftLeg_plusMinusAverage33.o3y" "legs_LeftLeg_multiplyDivide48.i1y"
		;
connectAttr "legs_RightLeg_multiplyDivide45.o" "legs_RightLeg_plusMinusAverage37.i3[0]"
		;
connectAttr "legs_RightLeg_multiplyDivide46.o" "legs_RightLeg_plusMinusAverage37.i3[1]"
		;
connectAttr "legs_RightLeg_plusMinusAverage37.o3x" "legs_reverse1.ix";
connectAttr "legs_reverse1.ox" "legs_RightLeg_multiplyDivide48.i1x";
connectAttr "legs_RightLeg_plusMinusAverage37.o3y" "legs_RightLeg_multiplyDivide48.i1y"
		;
connectAttr "Marcus_back_curve_normalizedScale1.ox" "Marcus_curveInfo2.normalizedScale"
		;
connectAttr "Marcus_curveInfo2.al" "Marcus_back_curve_normalizedScale1.i1x";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "Marcus_arms_LeftArm_multiplyDivide53.ox" "Marcus_arms_LeftArm_plusMinusAverage9.i3[0].i3x"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage8.o3x" "Marcus_arms_LeftArm_plusMinusAverage9.i3[1].i3y"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage8.o3y" "Marcus_arms_LeftArm_plusMinusAverage9.i3[1].i3z"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage35.o3y" "Marcus_arms_LeftArm_plusMinusAverage9.i3[1].i3x"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide15.o" "Marcus_arms_LeftArm_plusMinusAverage8.i3[0]"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide16.o" "Marcus_arms_LeftArm_plusMinusAverage8.i3[1]"
		;
connectAttr "Marcus_arms_LeftArm_halfX_axis.ox" "Marcus_arms_LeftArm_unitConversion2.i"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide52.ox" "Marcus_arms_LeftArm_halfX_axis.i2x"
		;
connectAttr "Marcus_arms_LeftArm_halfX_axis.ox" "Marcus_arms_LeftArm_unitConversion3.i"
		;
connectAttr "Marcus_arms_LeftArm_devideformiddlejoints.ox" "Marcus_arms_LeftArm_unitConversion8.i"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide59.ox" "Marcus_arms_LeftArm_devideformiddlejoints.i2x"
		;
connectAttr "Marcus_arms_LeftArm_devideformiddlejoints.ox" "Marcus_arms_LeftArm_unitConversion34.i"
		;
connectAttr "Marcus_arms_RightArm_halfX_axis.ox" "Marcus_arms_RightArm_unitConversion2.i"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage37.o3y" "Marcus_arms_RightArm_halfX_axis.i1y"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide56.ox" "Marcus_arms_RightArm_halfX_axis.i2x"
		;
connectAttr "Marcus_arms_RightArm_halfX_axis.ox" "Marcus_arms_RightArm_unitConversion3.i"
		;
connectAttr "Marcus_arms_RightArm_devideformiddlejoints.ox" "Marcus_arms_RightArm_unitConversion8.i"
		;
connectAttr "Marcus_arms_RightArm_multiplyDivide57.ox" "Marcus_arms_RightArm_devideformiddlejoints.i2x"
		;
connectAttr "Marcus_arms_RightArm_devideformiddlejoints.ox" "Marcus_arms_RightArm_unitConversion42.i"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide51.o" "Marcus_arms_LeftArm_plusMinusAverage35.i3[0]"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide50.o" "Marcus_arms_LeftArm_plusMinusAverage35.i3[1]"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage35.o3y" "Marcus_arms_LeftArm_multiplyDivide53.i1y"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage35.o3x" "Marcus_arms_LeftArm_multiplyDivide53.i2x"
		;
connectAttr "Marcus_arms_LeftArm_reverse1.ox" "Marcus_arms_LeftArm_multiplyDivide52.i1x"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage35.o3x" "Marcus_arms_LeftArm_reverse1.ix"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage9.o3x" "Marcus_arms_unitConversion23.i"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage9.o3y" "Marcus_arms_unitConversion24.i"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide55.o" "Marcus_arms_LeftArm_plusMinusAverage37.i3[0]"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide54.o" "Marcus_arms_LeftArm_plusMinusAverage37.i3[1]"
		;
connectAttr "Marcus_arms_LeftArm_reverse3.ox" "Marcus_arms_LeftArm_multiplyDivide56.i1x"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage37.o3x" "Marcus_arms_LeftArm_multiplyDivide56.i1y"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage37.o3x" "Marcus_arms_LeftArm_reverse3.ix"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide58.o" "Marcus_arms_LeftArm_plusMinusAverage39.i3[0]"
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide57.o" "Marcus_arms_LeftArm_plusMinusAverage39.i3[1]"
		;
connectAttr "Marcus_arms_LeftArm_reverse4.ox" "Marcus_arms_LeftArm_multiplyDivide59.i1x"
		;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage39.o3x" "Marcus_arms_LeftArm_reverse4.ix"
		;
connectAttr "Marcus_arms_RightArm_multiplyDivide55.o" "Marcus_arms_RightArm_plusMinusAverage36.i3[0]"
		;
connectAttr "Marcus_arms_RightArm_multiplyDivide56.o" "Marcus_arms_RightArm_plusMinusAverage36.i3[1]"
		;
connectAttr "Marcus_arms_RightArm_plusMinusAverage36.o3x" "Marcus_arms_RightArm_reverse1.ix"
		;
connectAttr "Marcus_arms_RightArm_reverse1.ox" "Marcus_arms_RightArm_multiplyDivide57.i1x"
		;
connectAttr "Marcus_legs_LeftLeg_multiplyDivide32.ox" "Marcus_legs_LeftLeg_unitConversion33.i"
		;
connectAttr "Marcus_legs_LeftLeg_multiplyDivide48.ox" "Marcus_legs_LeftLeg_multiplyDivide32.i2x"
		;
connectAttr "Marcus_legs_LeftLeg_multiplyDivide32.o" "Marcus_legs_LeftLeg_unitConversion28.i"
		;
connectAttr "Marcus_legs_RightLeg_multiplyDivide32.ox" "Marcus_legs_RightLeg_unitConversion33.i"
		;
connectAttr "Marcus_legs_RightLeg_multiplyDivide48.ox" "Marcus_legs_RightLeg_multiplyDivide32.i2x"
		;
connectAttr "Marcus_legs_RightLeg_multiplyDivide32.o" "Marcus_legs_RightLeg_unitConversion28.i"
		;
connectAttr "Marcus_legs_LeftLeg_multiplyDivide46.o" "Marcus_legs_LeftLeg_plusMinusAverage33.i3[0]"
		;
connectAttr "Marcus_legs_LeftLeg_multiplyDivide45.o" "Marcus_legs_LeftLeg_plusMinusAverage33.i3[1]"
		;
connectAttr "Marcus_legs_LeftLeg_plusMinusAverage33.o3x" "Marcus_legs_LeftLeg_reverse3.ix"
		;
connectAttr "Marcus_legs_LeftLeg_reverse3.ox" "Marcus_legs_LeftLeg_multiplyDivide48.i1x"
		;
connectAttr "Marcus_legs_LeftLeg_plusMinusAverage33.o3y" "Marcus_legs_LeftLeg_multiplyDivide48.i1y"
		;
connectAttr "Marcus_legs_RightLeg_multiplyDivide45.o" "Marcus_legs_RightLeg_plusMinusAverage37.i3[0]"
		;
connectAttr "Marcus_legs_RightLeg_multiplyDivide46.o" "Marcus_legs_RightLeg_plusMinusAverage37.i3[1]"
		;
connectAttr "Marcus_legs_RightLeg_plusMinusAverage37.o3x" "Marcus_legs_reverse1.ix"
		;
connectAttr "Marcus_legs_reverse1.ox" "Marcus_legs_RightLeg_multiplyDivide48.i1x"
		;
connectAttr "Marcus_legs_RightLeg_plusMinusAverage37.o3y" "Marcus_legs_RightLeg_multiplyDivide48.i1y"
		;
connectAttr "Marcus_back_curve_normalizedScale.ox" "Marcus_Marcus_curveInfo1.normalizedScale"
		;
connectAttr "Marcus_Marcus_curveInfo1.al" "Marcus_back_curve_normalizedScale.i1x"
		;
connectAttr "rig_spine_0_skin_DivAdj.ox" "rig_spine_0_skin_Div.i2x";
connectAttr "rig_neck_0_skin_DivAdj.ox" "rig_neck_0_skin_Div.i2x";
connectAttr "rig_shoulder_l_skin_Div.msg" "m_arm_Prim_2.splineDiv0";
connectAttr "rig_elbow_l_skin_Div.msg" "m_arm_Prim_2.splineDiv1";
connectAttr "rig_shoulder_l_skin_DivAdj.ox" "rig_shoulder_l_skin_Div.i2x";
connectAttr "rig_elbow_l_skin_DivAdj.ox" "rig_elbow_l_skin_Div.i2x";
connectAttr "rig_shoulder_r_skin_Div.msg" "m_arm_Prim_3.splineDiv0";
connectAttr "rig_elbow_r_skin_Div.msg" "m_arm_Prim_3.splineDiv1";
connectAttr "rig_shoulder_r_skin_DivAdj.ox" "rig_shoulder_r_skin_Div.i2x";
connectAttr "rig_elbow_r_skin_DivAdj.ox" "rig_elbow_r_skin_Div.i2x";
connectAttr "rig_hip_l_skin_Div.msg" "m_leg_Prim_2.splineDiv2";
connectAttr "rig_knee_l_skin_Div.msg" "m_leg_Prim_2.splineDiv3";
connectAttr "rig_hip_l_skin_DivAdj.ox" "rig_hip_l_skin_Div.i2x";
connectAttr "rig_knee_l_skin_DivAdj.ox" "rig_knee_l_skin_Div.i2x";
connectAttr "rig_hip_r_skin_Div.msg" "m_leg_Prim_3.splineDiv3";
connectAttr "rig_knee_r_skin_Div.msg" "m_leg_Prim_3.splineDiv4";
connectAttr "rig_hip_r_skin_DivAdj.ox" "rig_hip_r_skin_Div.i2x";
connectAttr "rig_knee_r_skin_DivAdj.ox" "rig_knee_r_skin_Div.i2x";
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide53.ox" "FIXMEJOSH_arms_LeftArm_plusMinusAverage9.i3[0].i3x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage8.o3x" "FIXMEJOSH_arms_LeftArm_plusMinusAverage9.i3[1].i3y"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage8.o3y" "FIXMEJOSH_arms_LeftArm_plusMinusAverage9.i3[1].i3z"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage35.o3y" "FIXMEJOSH_arms_LeftArm_plusMinusAverage9.i3[1].i3x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide15.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage8.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide16.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage8.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_halfX_axis.ox" "FIXMEJOSH_arms_LeftArm_unitConversion2.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide52.ox" "FIXMEJOSH_arms_LeftArm_halfX_axis.i2x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_halfX_axis.ox" "FIXMEJOSH_arms_LeftArm_unitConversion3.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_devideformiddlejoints.ox" "FIXMEJOSH_arms_LeftArm_unitConversion8.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide59.ox" "FIXMEJOSH_arms_LeftArm_devideformiddlejoints.i2x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_devideformiddlejoints.ox" "FIXMEJOSH_arms_LeftArm_unitConversion34.i"
		;
connectAttr "FIXMEJOSH_arms_RightArm_halfX_axis.ox" "FIXMEJOSH_arms_RightArm_unitConversion2.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage37.o3y" "FIXMEJOSH_arms_RightArm_halfX_axis.i1y"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide56.ox" "FIXMEJOSH_arms_RightArm_halfX_axis.i2x"
		;
connectAttr "FIXMEJOSH_arms_RightArm_halfX_axis.ox" "FIXMEJOSH_arms_RightArm_unitConversion3.i"
		;
connectAttr "FIXMEJOSH_arms_RightArm_devideformiddlejoints.ox" "FIXMEJOSH_arms_RightArm_unitConversion8.i"
		;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide57.ox" "FIXMEJOSH_arms_RightArm_devideformiddlejoints.i2x"
		;
connectAttr "FIXMEJOSH_arms_RightArm_devideformiddlejoints.ox" "FIXMEJOSH_arms_RightArm_unitConversion42.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide51.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage35.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide50.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage35.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage35.o3y" "FIXMEJOSH_arms_LeftArm_multiplyDivide53.i1y"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage35.o3x" "FIXMEJOSH_arms_LeftArm_multiplyDivide53.i2x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse1.ox" "FIXMEJOSH_arms_LeftArm_multiplyDivide52.i1x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage35.o3x" "FIXMEJOSH_arms_LeftArm_reverse1.ix"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage9.o3x" "FIXMEJOSH_arms_unitConversion23.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage9.o3y" "FIXMEJOSH_arms_unitConversion24.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide55.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage37.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide54.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage37.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse3.ox" "FIXMEJOSH_arms_LeftArm_multiplyDivide56.i1x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage37.o3x" "FIXMEJOSH_arms_LeftArm_multiplyDivide56.i1y"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage37.o3x" "FIXMEJOSH_arms_LeftArm_reverse3.ix"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide58.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage39.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide57.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage39.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse4.ox" "FIXMEJOSH_arms_LeftArm_multiplyDivide59.i1x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage39.o3x" "FIXMEJOSH_arms_LeftArm_reverse4.ix"
		;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide55.o" "FIXMEJOSH_arms_RightArm_plusMinusAverage36.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide56.o" "FIXMEJOSH_arms_RightArm_plusMinusAverage36.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_RightArm_plusMinusAverage36.o3x" "FIXMEJOSH_arms_RightArm_reverse1.ix"
		;
connectAttr "FIXMEJOSH_arms_RightArm_reverse1.ox" "FIXMEJOSH_arms_RightArm_multiplyDivide57.i1x"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide32.ox" "FIXMEJOSH_legs_LeftLeg_unitConversion33.i"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide48.ox" "FIXMEJOSH_legs_LeftLeg_multiplyDivide32.i2x"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide32.o" "FIXMEJOSH_legs_LeftLeg_unitConversion28.i"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide32.ox" "FIXMEJOSH_legs_RightLeg_unitConversion33.i"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide48.ox" "FIXMEJOSH_legs_RightLeg_multiplyDivide32.i2x"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide32.o" "FIXMEJOSH_legs_RightLeg_unitConversion28.i"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide46.o" "FIXMEJOSH_legs_LeftLeg_plusMinusAverage33.i3[0]"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide45.o" "FIXMEJOSH_legs_LeftLeg_plusMinusAverage33.i3[1]"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_plusMinusAverage33.o3x" "FIXMEJOSH_legs_LeftLeg_reverse3.ix"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_reverse3.ox" "FIXMEJOSH_legs_LeftLeg_multiplyDivide48.i1x"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_plusMinusAverage33.o3y" "FIXMEJOSH_legs_LeftLeg_multiplyDivide48.i1y"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide45.o" "FIXMEJOSH_legs_RightLeg_plusMinusAverage37.i3[0]"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide46.o" "FIXMEJOSH_legs_RightLeg_plusMinusAverage37.i3[1]"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_plusMinusAverage37.o3x" "FIXMEJOSH_legs_reverse1.ix"
		;
connectAttr "FIXMEJOSH_legs_reverse1.ox" "FIXMEJOSH_legs_RightLeg_multiplyDivide48.i1x"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_plusMinusAverage37.o3y" "FIXMEJOSH_legs_RightLeg_multiplyDivide48.i1y"
		;
connectAttr "FIXMEJOSH_back_curve_normalizedScale.ox" "FIXMEJOSH_curveInfo1.normalizedScale"
		;
connectAttr "FIXMEJOSH_curveInfo1.al" "FIXMEJOSH_back_curve_normalizedScale.i1x"
		;
connectAttr "FIXMEJOSH_back_curve_normalizedScale4.ox" "FIXMEJOSH_curveInfo3.normalizedScale"
		;
connectAttr "FIXMEJOSH_curveInfo3.al" "FIXMEJOSH_back_curve_normalizedScale4.i1x"
		;
connectAttr "FIXMEJOSH_back_curve_normalizedScale5.ox" "FIXMEJOSH_Marcus_curveInfo5.normalizedScale"
		;
connectAttr "FIXMEJOSH_Marcus_curveInfo5.al" "FIXMEJOSH_back_curve_normalizedScale5.i1x"
		;
connectAttr "FIXMEJOSH_Marcus_back_curve_normalizedScale5.ox" "FIXMEJOSH_Marcus_curveInfo6.normalizedScale"
		;
connectAttr "FIXMEJOSH_Marcus_curveInfo6.al" "FIXMEJOSH_Marcus_back_curve_normalizedScale5.i1x"
		;
connectAttr "FIXMEJOSH_hyperLayout3.msg" "FIXMEJOSH_hyperView3.hl";
connectAttr "FIXMEJOSH_Marcus_back_curve_normalizedScale4.ox" "FIXMEJOSH_Marcus_Marcus_curveInfo3.normalizedScale"
		;
connectAttr "FIXMEJOSH_Marcus_Marcus_curveInfo3.al" "FIXMEJOSH_Marcus_back_curve_normalizedScale4.i1x"
		;
connectAttr "neckBigTopLeftDivide.ox" "neckBigTopLeftXClamp1.ipr";
connectAttr "neckBigTopLeftXMultDivide1.ox" "neckBigTopLeftAdd1.i1";
connectAttr "neckBigTopLeftXClamp1.opr" "neckBigTopLeftMultDivide1.i1x";
connectAttr "neckBigTopLeftYClamp1.opr" "neckBigTopLeftMultDivide1.i2x";
connectAttr "neckBigTopLeftAdd1.o" "neckBigTopLeftDivide.i1x";
connectAttr "neckBigTopRightDivide.ox" "neckBigTopRightXClamp1.ipr";
connectAttr "neckBigTopRightXClamp1.opr" "neckBigTopRightMultDivide1.i1x";
connectAttr "neckBigTopRightYClamp1.opr" "neckBigTopRightMultDivide1.i2x";
connectAttr "torsoBigRightTopLeftDivide1.ox" "torsoBigRightTopLeftXClamp1.ipr";
connectAttr "torsoBigRightTopLeftXMultDivide1.ox" "torsoBigRightTopLeftAdd1.i1";
connectAttr "torsoBigRightTopLeftXClamp1.opr" "torsoBigRightTopLeftMultDivide1.i1x"
		;
connectAttr "torsoBigRightTopLeftYClamp1.opr" "torsoBigRightTopLeftMultDivide1.i2x"
		;
connectAttr "torsoBigRightTopLeftAdd1.o" "torsoBigRightTopLeftDivide1.i1x";
connectAttr "torsoBigRightTopRightDivide1.ox" "torsoBigRightTopRightXClamp1.ipr"
		;
connectAttr "torsoBigRightTopRightXClamp1.opr" "torsoBigRightTopRightMultDivide1.i1x"
		;
connectAttr "torsoBigRightTopRightYClamp1.opr" "torsoBigRightTopRightMultDivide1.i2x"
		;
connectAttr "torsoBigLeftTopRightDivide1.ox" "torsoBigLeftTopRightXClamp1.ipr";
connectAttr "torsoBigLeftTopRightXClamp1.opr" "torsoBigLeftTopRightMultDivide1.i1x"
		;
connectAttr "torsoBigLeftTopRightYClamp1.opr" "torsoBigLeftTopRightMultDivide1.i2x"
		;
connectAttr "torsoBigLeftTopLeftDivide1.ox" "torsoBigLeftTopLeftXClamp1.ipr";
connectAttr "torsoBigLeftTopLeftXMultDivide1.ox" "torsoBigLeftTopLeftAdd1.i1";
connectAttr "torsoBigLeftTopLeftXClamp1.opr" "torsoBigLeftTopLeftMultDivide1.i1x"
		;
connectAttr "torsoBigLeftTopLeftYClamp1.opr" "torsoBigLeftTopLeftMultDivide1.i2x"
		;
connectAttr "torsoBigLeftTopLeftAdd1.o" "torsoBigLeftTopLeftDivide1.i1x";
connectAttr "uprArmRightTopLeftDivide.ox" "uprArmRightTopLeftXClamp.ipr";
connectAttr "uprArmRightTopLeftXMultDivide.ox" "uprArmRightTopLeftAdd.i1";
connectAttr "uprArmRightTopLeftXClamp.opr" "uprArmRightTopLeftMultDivide.i1x";
connectAttr "uprArmRightTopLeftYClamp.opr" "uprArmRightTopLeftMultDivide.i2x";
connectAttr "uprArmRightTopLeftAdd.o" "uprArmRightTopLeftDivide.i1x";
connectAttr "uprArmRightTopRightDivide.ox" "uprArmRightTopRightXClamp.ipr";
connectAttr "uprArmRightTopRightXClamp.opr" "uprArmRightTopRightMultDivide.i1x";
connectAttr "uprArmRightTopRightYClamp.opr" "uprArmRightTopRightMultDivide.i2x";
connectAttr "uprArmLeftTopLeftDivide.ox" "uprArmLeftTopLeftXClamp.ipr";
connectAttr "uprArmLeftTopLeftXMultDivide.ox" "uprArmLeftTopLeftAdd.i1";
connectAttr "uprArmLeftTopLeftXClamp.opr" "uprArmLeftTopLeftMultDivide.i1x";
connectAttr "uprArmLeftTopLeftYClamp.opr" "uprArmLeftTopLeftMultDivide.i2x";
connectAttr "uprArmLeftTopLeftAdd.o" "uprArmLeftTopLeftDivide.i1x";
connectAttr "uprArmLeftTopRightDivide.ox" "uprArmLeftTopRightXClamp.ipr";
connectAttr "uprArmLeftTopRightXClamp.opr" "uprArmLeftTopRightMultDivide.i1x";
connectAttr "uprArmLeftTopRightYClamp.opr" "uprArmLeftTopRightMultDivide.i2x";
connectAttr "lwrArmRightTopLeftDivide.ox" "lwrArmRightTopLeftXClamp.ipr";
connectAttr "lwrArmRightTopLeftXMultDivide.ox" "lwrArmRightTopLeftAdd.i1";
connectAttr "lwrArmRightTopLeftXClamp.opr" "lwrArmRightTopLeftMultDivide.i1x";
connectAttr "lwrArmRightTopLeftYClamp.opr" "lwrArmRightTopLeftMultDivide.i2x";
connectAttr "lwrArmRightTopLeftAdd.o" "lwrArmRightTopLeftDivide.i1x";
connectAttr "lwrArmRightTopRightDivide.ox" "lwrArmRightTopRightXClamp.ipr";
connectAttr "lwrArmRightTopRightXClamp.opr" "lwrArmRightTopRightMultDivide.i1x";
connectAttr "lwrArmRightTopRightYClamp.opr" "lwrArmRightTopRightMultDivide.i2x";
connectAttr "lwrArmLeftTopLeftDivide.ox" "lwrArmLeftTopLeftXClamp.ipr";
connectAttr "lwrArmLeftTopLeftXMultDivide.ox" "lwrArmLeftTopLeftAdd.i1";
connectAttr "lwrArmLeftTopLeftXClamp.opr" "lwrArmLeftTopLeftMultDivide.i1x";
connectAttr "lwrArmLeftTopLeftYClamp.opr" "lwrArmLeftTopLeftMultDivide.i2x";
connectAttr "lwrArmLeftTopLeftAdd.o" "lwrArmLeftTopLeftDivide.i1x";
connectAttr "lwrArmLeftTopRightDivide.ox" "lwrArmLeftTopRightXClamp.ipr";
connectAttr "lwrArmLeftTopRightXClamp.opr" "lwrArmLeftTopRightMultDivide.i1x";
connectAttr "lwrArmLeftTopRightYClamp.opr" "lwrArmLeftTopRightMultDivide.i2x";
connectAttr "uprLegRightTopLeftDivide.ox" "uprLegRightTopLeftXClamp.ipr";
connectAttr "uprLegRightTopLeftXMultDivide.ox" "uprLegRightTopLeftAdd.i1";
connectAttr "uprLegRightTopLeftXClamp.opr" "uprLegRightTopLeftMultDivide.i1x";
connectAttr "uprLegRightTopLeftYClamp.opr" "uprLegRightTopLeftMultDivide.i2x";
connectAttr "uprLegRightTopLeftAdd.o" "uprLegRightTopLeftDivide.i1x";
connectAttr "uprLegRightTopRightDivide.ox" "uprLegRightTopRightXClamp.ipr";
connectAttr "uprLegRightTopRightXClamp.opr" "uprLegRightTopRightMultDivide.i1x";
connectAttr "uprLegRightTopRightYClamp.opr" "uprLegRightTopRightMultDivide.i2x";
connectAttr "uprLegLeftTopLeftDivide.ox" "uprLegLeftTopLeftXClamp.ipr";
connectAttr "uprLegLeftTopLeftXMultDivide.ox" "uprLegLeftTopLeftAdd.i1";
connectAttr "uprLegLeftTopLeftXClamp.opr" "uprLegLeftTopLeftMultDivide.i1x";
connectAttr "uprLegLeftTopLeftYClamp.opr" "uprLegLeftTopLeftMultDivide.i2x";
connectAttr "uprLegLeftTopLeftAdd.o" "uprLegLeftTopLeftDivide.i1x";
connectAttr "uprLegLeftTopRightDivide.ox" "uprLegLeftTopRightXClamp.ipr";
connectAttr "uprLegLeftTopRightXClamp.opr" "uprLegLeftTopRightMultDivide.i1x";
connectAttr "uprLegLeftTopRightYClamp.opr" "uprLegLeftTopRightMultDivide.i2x";
connectAttr "lwrLegRightTopLeftDivide.ox" "lwrLegRightTopLeftXClamp.ipr";
connectAttr "lwrLegRightTopLeftXMultDivide.ox" "lwrLegRightTopLeftAdd.i1";
connectAttr "lwrLegRightTopLeftXClamp.opr" "lwrLegRightTopLeftMultDivide.i1x";
connectAttr "lwrLegRightTopLeftYClamp.opr" "lwrLegRightTopLeftMultDivide.i2x";
connectAttr "lwrLegRightTopLeftAdd.o" "lwrLegRightTopLeftDivide.i1x";
connectAttr "lwrLegRightTopRightDivide.ox" "lwrLegRightTopRightXClamp.ipr";
connectAttr "lwrLegRightTopRightXClamp.opr" "lwrLegRightTopRightMultDivide.i1x";
connectAttr "lwrLegRightTopRightYClamp.opr" "lwrLegRightTopRightMultDivide.i2x";
connectAttr "lwrLegLeftTopLeftDivide.ox" "lwrLegLeftTopLeftXClamp.ipr";
connectAttr "lwrLegLeftTopLeftXMultDivide.ox" "lwrLegLeftTopLeftAdd.i1";
connectAttr "lwrLegLeftTopLeftXClamp.opr" "lwrLegLeftTopLeftMultDivide.i1x";
connectAttr "lwrLegLeftTopLeftYClamp.opr" "lwrLegLeftTopLeftMultDivide.i2x";
connectAttr "lwrLegLeftTopLeftAdd.o" "lwrLegLeftTopLeftDivide.i1x";
connectAttr "lwrLegLeftTopRightDivide.ox" "lwrLegLeftTopRightXClamp.ipr";
connectAttr "lwrLegLeftTopRightXClamp.opr" "lwrLegLeftTopRightMultDivide.i1x";
connectAttr "lwrLegLeftTopRightYClamp.opr" "lwrLegLeftTopRightMultDivide.i2x";
connectAttr "BellyLeftMultDivide.ox" "BellyLeftClamp.ipr";
connectAttr "FIXMEJOSH_FIXMEJOSH_back_curve_normalizedScale.ox" "FIXMEJOSH_FIXMEJOSH_curveInfo1.normalizedScale"
		;
connectAttr "FIXMEJOSH_FIXMEJOSH_curveInfo1.al" "FIXMEJOSH_FIXMEJOSH_back_curve_normalizedScale.i1x"
		;
connectAttr "FIXMEJOSH_back_curve_normalizedScale1.ox" "FIXMEJOSH_Marcus_curveInfo1.normalizedScale"
		;
connectAttr "FIXMEJOSH_Marcus_curveInfo1.al" "FIXMEJOSH_back_curve_normalizedScale1.i1x"
		;
connectAttr "FIXMEJOSH_Marcus_back_curve_normalizedScale1.ox" "FIXMEJOSH_Marcus_curveInfo2.normalizedScale"
		;
connectAttr "FIXMEJOSH_Marcus_curveInfo2.al" "FIXMEJOSH_Marcus_back_curve_normalizedScale1.i1x"
		;
connectAttr "FIXMEJOSH_hyperLayout1.msg" "FIXMEJOSH_hyperView1.hl";
connectAttr "FIXMEJOSH_Marcus_back_curve_normalizedScale.ox" "FIXMEJOSH_Marcus_Marcus_curveInfo1.normalizedScale"
		;
connectAttr "FIXMEJOSH_Marcus_Marcus_curveInfo1.al" "FIXMEJOSH_Marcus_back_curve_normalizedScale.i1x"
		;
connectAttr "FIXMEJOSH_back_curve_normalizedScale2.ox" "FIXMEJOSH_curveInfo2.normalizedScale"
		;
connectAttr "FIXMEJOSH_curveInfo2.al" "FIXMEJOSH_back_curve_normalizedScale2.i1x"
		;
connectAttr "FIXMEJOSH_back_curve_normalizedScale3.ox" "FIXMEJOSH_Marcus_curveInfo3.normalizedScale"
		;
connectAttr "FIXMEJOSH_Marcus_curveInfo3.al" "FIXMEJOSH_back_curve_normalizedScale3.i1x"
		;
connectAttr "bodySuit_shdr.oc" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.ss";
connectAttr "groupId1744.msg" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.gn" -na;
connectAttr "groupId1748.msg" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.gn" -na;
connectAttr "groupId1937.msg" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.gn" -na;
connectAttr "groupId2021.msg" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.gn" -na;
connectAttr "groupId2029.msg" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.gn" -na;
connectAttr "groupId2037.msg" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.gn" -na;
connectAttr "groupId2041.msg" "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.gn" -na;
connectAttr "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.msg" "FIXMEJOSH_Marcus_Marcus_FixMe_materialInfo11.sg"
		;
connectAttr "bodySuit_shdr.msg" "FIXMEJOSH_Marcus_Marcus_FixMe_materialInfo11.m"
		;
connectAttr "FIXMEJOSH_Marcus_back_curve_normalizedScale3.ox" "FIXMEJOSH_Marcus_curveInfo4.normalizedScale"
		;
connectAttr "FIXMEJOSH_Marcus_curveInfo4.al" "FIXMEJOSH_Marcus_back_curve_normalizedScale3.i1x"
		;
connectAttr "FIXMEJOSH_hyperLayout2.msg" "FIXMEJOSH_hyperView2.hl";
connectAttr "FIXMEJOSH_Marcus_back_curve_normalizedScale2.ox" "FIXMEJOSH_Marcus_Marcus_curveInfo2.normalizedScale"
		;
connectAttr "FIXMEJOSH_Marcus_Marcus_curveInfo2.al" "FIXMEJOSH_Marcus_back_curve_normalizedScale2.i1x"
		;
connectAttr "sharedReferenceNode.sr" "headRN.sr";
connectAttr "layerManager.dli[1]" "doNotTouch.id";
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide65.ox" "FIXMEJOSH_arms_LeftArm_plusMinusAverage41.i3[0].i3x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage40.o3x" "FIXMEJOSH_arms_LeftArm_plusMinusAverage41.i3[1].i3y"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage40.o3y" "FIXMEJOSH_arms_LeftArm_plusMinusAverage41.i3[1].i3z"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage42.o3y" "FIXMEJOSH_arms_LeftArm_plusMinusAverage41.i3[1].i3x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide60.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage40.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide61.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage40.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_halfX_axis1.ox" "FIXMEJOSH_arms_LeftArm_unitConversion35.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide64.ox" "FIXMEJOSH_arms_LeftArm_halfX_axis1.i2x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_halfX_axis1.ox" "FIXMEJOSH_arms_LeftArm_unitConversion36.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_devideformiddlejoints1.ox" "FIXMEJOSH_arms_LeftArm_unitConversion37.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide71.ox" "FIXMEJOSH_arms_LeftArm_devideformiddlejoints1.i2x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_devideformiddlejoints1.ox" "FIXMEJOSH_arms_LeftArm_unitConversion38.i"
		;
connectAttr "FIXMEJOSH_arms_RightArm_halfX_axis1.ox" "FIXMEJOSH_arms_RightArm_unitConversion43.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage43.o3y" "FIXMEJOSH_arms_RightArm_halfX_axis1.i1y"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide68.ox" "FIXMEJOSH_arms_RightArm_halfX_axis1.i2x"
		;
connectAttr "FIXMEJOSH_arms_RightArm_halfX_axis1.ox" "FIXMEJOSH_arms_RightArm_unitConversion44.i"
		;
connectAttr "FIXMEJOSH_arms_RightArm_devideformiddlejoints1.ox" "FIXMEJOSH_arms_RightArm_unitConversion45.i"
		;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide60.ox" "FIXMEJOSH_arms_RightArm_devideformiddlejoints1.i2x"
		;
connectAttr "FIXMEJOSH_arms_RightArm_devideformiddlejoints1.ox" "FIXMEJOSH_arms_RightArm_unitConversion46.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide63.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage42.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide62.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage42.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage42.o3y" "FIXMEJOSH_arms_LeftArm_multiplyDivide65.i1y"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage42.o3x" "FIXMEJOSH_arms_LeftArm_multiplyDivide65.i2x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse5.ox" "FIXMEJOSH_arms_LeftArm_multiplyDivide64.i1x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage42.o3x" "FIXMEJOSH_arms_LeftArm_reverse5.ix"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage41.o3x" "FIXMEJOSH_arms_unitConversion25.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage41.o3y" "FIXMEJOSH_arms_unitConversion26.i"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide67.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage43.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide66.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage43.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse6.ox" "FIXMEJOSH_arms_LeftArm_multiplyDivide68.i1x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage43.o3x" "FIXMEJOSH_arms_LeftArm_multiplyDivide68.i1y"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage43.o3x" "FIXMEJOSH_arms_LeftArm_reverse6.ix"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide70.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage44.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide69.o" "FIXMEJOSH_arms_LeftArm_plusMinusAverage44.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse7.ox" "FIXMEJOSH_arms_LeftArm_multiplyDivide71.i1x"
		;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage44.o3x" "FIXMEJOSH_arms_LeftArm_reverse7.ix"
		;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide58.o" "FIXMEJOSH_arms_RightArm_plusMinusAverage37.i3[0]"
		;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide59.o" "FIXMEJOSH_arms_RightArm_plusMinusAverage37.i3[1]"
		;
connectAttr "FIXMEJOSH_arms_RightArm_plusMinusAverage37.o3x" "FIXMEJOSH_arms_RightArm_reverse2.ix"
		;
connectAttr "FIXMEJOSH_arms_RightArm_reverse2.ox" "FIXMEJOSH_arms_RightArm_multiplyDivide60.i1x"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide49.ox" "FIXMEJOSH_legs_LeftLeg_unitConversion35.i"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide52.ox" "FIXMEJOSH_legs_LeftLeg_multiplyDivide49.i2x"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide49.o" "FIXMEJOSH_legs_LeftLeg_unitConversion34.i"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide49.ox" "FIXMEJOSH_legs_RightLeg_unitConversion35.i"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide52.ox" "FIXMEJOSH_legs_RightLeg_multiplyDivide49.i2x"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide49.o" "FIXMEJOSH_legs_RightLeg_unitConversion34.i"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide51.o" "FIXMEJOSH_legs_LeftLeg_plusMinusAverage34.i3[0]"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide50.o" "FIXMEJOSH_legs_LeftLeg_plusMinusAverage34.i3[1]"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_plusMinusAverage34.o3x" "FIXMEJOSH_legs_LeftLeg_reverse4.ix"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_reverse4.ox" "FIXMEJOSH_legs_LeftLeg_multiplyDivide52.i1x"
		;
connectAttr "FIXMEJOSH_legs_LeftLeg_plusMinusAverage34.o3y" "FIXMEJOSH_legs_LeftLeg_multiplyDivide52.i1y"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide50.o" "FIXMEJOSH_legs_RightLeg_plusMinusAverage38.i3[0]"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide51.o" "FIXMEJOSH_legs_RightLeg_plusMinusAverage38.i3[1]"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_plusMinusAverage38.o3x" "FIXMEJOSH_legs_reverse2.ix"
		;
connectAttr "FIXMEJOSH_legs_reverse2.ox" "FIXMEJOSH_legs_RightLeg_multiplyDivide52.i1x"
		;
connectAttr "FIXMEJOSH_legs_RightLeg_plusMinusAverage38.o3y" "FIXMEJOSH_legs_RightLeg_multiplyDivide52.i1y"
		;
connectAttr "FIXMEJOSH_back_curve_normalizedScale6.ox" "FIXMEJOSH_curveInfo4.normalizedScale"
		;
connectAttr "FIXMEJOSH_curveInfo4.al" "FIXMEJOSH_back_curve_normalizedScale6.i1x"
		;
connectAttr "hair_phong.oc" "FixMe_Default.ss";
connectAttr "FixMe_Default.msg" "materialInfo1.sg";
connectAttr "hair_phong.msg" "materialInfo1.m";
connectAttr "phong10.oc" "Default.ss";
connectAttr "Default.msg" "FixMe_materialInfo43.sg";
connectAttr "phong10.msg" "FixMe_materialInfo43.m";
connectAttr "L_EyeSG1.oc" "L_EyeSG.ss";
connectAttr "L_EyeSG.msg" "Marcus_materialInfo1.sg";
connectAttr "L_EyeSG1.msg" "Marcus_materialInfo1.m";
connectAttr "file5.msg" "Marcus_materialInfo1.t" -na;
connectAttr "file5.oc" "L_EyeSG1.c";
connectAttr "phong8SG1.oc" "phong8SG.ss";
connectAttr "phong8SG.msg" "Marcus_materialInfo3.sg";
connectAttr "phong8SG1.msg" "Marcus_materialInfo3.m";
connectAttr "Corrine.oc" "CorrineSG.ss";
connectAttr "CorrineSG.msg" "Marcus_materialInfo5.sg";
connectAttr "Corrine.msg" "Marcus_materialInfo5.m";
connectAttr "mouthEmote_left_animLeftMultDivide5.ox" "mouthEmote_left_animLeftClamp5.ipr"
		;
connectAttr "subtrWideFromEmotes_pmAvNode.o1" "leftEmote_rmNode.omx";
connectAttr "MultTX_mdNode.ox" "subtrWideFromEmotes_pmAvNode.i1[1]";
connectAttr "Limiter_mdNode.ox" "MultTX_mdNode.i2x";
connectAttr "Limiter_mdNode.oy" "MultTX_mdNode.i2y";
connectAttr "absoluteMaker_mdNode.ox" "Limiter_mdNode.i1x";
connectAttr "absoluteMaker_mdNode.oy" "Limiter_mdNode.i1y";
connectAttr "mouthEmote_left_animBottomMultDivide4.ox" "mouthEmote_left_animBottomClamp4.ipr"
		;
connectAttr "mouthEmote_right_animLeftMultDivide.ox" "mouthEmote_right_animLeftClamp.ipr"
		;
connectAttr "subtrWideFromEmotesRight_pmAvNode.o1" "rightEmote_rmNode.omx";
connectAttr "MultTX_mdNode.oy" "subtrWideFromEmotesRight_pmAvNode.i1[1]";
connectAttr "mouthEmote_right_animBottomMultDivide.ox" "mouthEmote_right_animBottomClamp.ipr"
		;
connectAttr "uprLip_center_animTopRightXClamp.opr" "uprLip_center_animTopRightMultDivide.i1x"
		;
connectAttr "uprLip_center_animTopRightYClamp.opr" "uprLip_center_animTopRightMultDivide.i2x"
		;
connectAttr "uprLip_center_animTopLeftAdd.o" "uprLip_center_animTopLeftXClamp.ipr"
		;
connectAttr "uprLip_center_animTopLeftXMultDivide.ox" "uprLip_center_animTopLeftAdd.i1"
		;
connectAttr "uprLip_center_animTopLeftXClamp.opr" "uprLip_center_animTopLeftMultDivide.i1x"
		;
connectAttr "uprLip_center_animTopLeftYClamp.opr" "uprLip_center_animTopLeftMultDivide.i2x"
		;
connectAttr "uprLip_center_animBottomRightYMultDivide.ox" "uprLip_center_animBottomRightYClamp.ipr"
		;
connectAttr "uprLip_center_animBottomRightXClamp.opr" "uprLip_center_animBottomRightMultDivide.i1x"
		;
connectAttr "uprLip_center_animBottomRightYClamp.opr" "uprLip_center_animBottomRightMultDivide.i2x"
		;
connectAttr "uprLip_center_animBottomLeftAdd.o" "uprLip_center_animBottomLeftXClamp.ipr"
		;
connectAttr "uprLip_center_animBottomLeftYMultDivide.ox" "uprLip_center_animBottomLeftYClamp.ipr"
		;
connectAttr "uprLip_center_animBottomLeftXMultDivide.ox" "uprLip_center_animBottomLeftAdd.i1"
		;
connectAttr "uprLip_center_animBottomLeftXClamp.opr" "uprLip_center_animBottomLeftMultDivide.i1x"
		;
connectAttr "uprLip_center_animBottomLeftYClamp.opr" "uprLip_center_animBottomLeftMultDivide.i2x"
		;
connectAttr "lwrLip_center_animTopRightXClamp.opr" "lwrLip_center_animTopRightMultDivide.i1x"
		;
connectAttr "lwrLip_center_animTopRightYClamp.opr" "lwrLip_center_animTopRightMultDivide.i2x"
		;
connectAttr "lwrLip_center_animTopLeftAdd.o" "lwrLip_center_animTopLeftXClamp.ipr"
		;
connectAttr "lwrLip_center_animTopLeftXMultDivide.ox" "lwrLip_center_animTopLeftAdd.i1"
		;
connectAttr "lwrLip_center_animTopLeftXClamp.opr" "lwrLip_center_animTopLeftMultDivide.i1x"
		;
connectAttr "lwrLip_center_animTopLeftYClamp.opr" "lwrLip_center_animTopLeftMultDivide.i2x"
		;
connectAttr "lwrLip_center_animBottomRightYMultDivide.ox" "lwrLip_center_animBottomRightYClamp.ipr"
		;
connectAttr "lwrLip_center_animBottomRightXClamp.opr" "lwrLip_center_animBottomRightMultDivide.i1x"
		;
connectAttr "lwrLip_center_animBottomRightYClamp.opr" "lwrLip_center_animBottomRightMultDivide.i2x"
		;
connectAttr "lwrLip_center_animBottomLeftAdd.o" "lwrLip_center_animBottomLeftXClamp.ipr"
		;
connectAttr "lwrLip_center_animBottomLeftYMultDivide.ox" "lwrLip_center_animBottomLeftYClamp.ipr"
		;
connectAttr "lwrLip_center_animBottomLeftXMultDivide.ox" "lwrLip_center_animBottomLeftAdd.i1"
		;
connectAttr "lwrLip_center_animBottomLeftXClamp.opr" "lwrLip_center_animBottomLeftMultDivide.i1x"
		;
connectAttr "lwrLip_center_animBottomLeftYClamp.opr" "lwrLip_center_animBottomLeftMultDivide.i2x"
		;
connectAttr "mouthMove_animBottomMultDivide.ox" "mouthMove_animBottomClamp.ipr";
connectAttr "mouthMove_animLeftMultDivide.ox" "mouthMove_animLeftClamp.ipr";
connectAttr "uprLip_left_animLeftMultDivide3.ox" "uprLip_left_animLeftClamp3.ipr"
		;
connectAttr "lwrLip_left_animLeftMultDivide.ox" "lwrLip_left_animLeftClamp.ipr";
connectAttr "lwrLip_right_animLeftMultDivide.ox" "lwrLip_right_animLeftClamp.ipr"
		;
connectAttr "uprLip_right_animLeftMultDivide1.ox" "uprLip_right_animLeftClamp1.ipr"
		;
connectAttr "cheek_left_animLeftMultDivide.ox" "cheek_left_animLeftClamp.ipr";
connectAttr "cheek_left_animBottomMultDivide.ox" "cheek_left_animBottomClamp.ipr"
		;
connectAttr "cheek_right_animBottomMultDivide.ox" "cheek_right_animBottomClamp.ipr"
		;
connectAttr "cheek_right_animLeftMultDivide.ox" "cheek_right_animLeftClamp.ipr";
connectAttr "browInner_left_animLeftMultDivide.ox" "browInner_left_animLeftClamp.ipr"
		;
connectAttr "browInner_left_animBottomMultDivide.ox" "browInner_left_animBottomClamp.ipr"
		;
connectAttr "browInner_right_animLeftMultDivide.ox" "browInner_right_animLeftClamp.ipr"
		;
connectAttr "browInner_right_animBottomMultDivide.ox" "browInner_right_animBottomClamp.ipr"
		;
connectAttr "browMid_left_animBottomMultDivide.ox" "browMid_left_animBottomClamp.ipr"
		;
connectAttr "browMid_right_animBottomMultDivide.ox" "browMid_right_animBottomClamp.ipr"
		;
connectAttr "browOuter_left_animBottomMultDivide.ox" "browOuter_left_animBottomClamp.ipr"
		;
connectAttr "browOuter_right_animBottomMultDivide.ox" "browOuter_right_animBottomClamp.ipr"
		;
connectAttr "teeth_shdr.oc" "MorphyFace5:MorphyFace:FixMe_lambert5SG.ss";
connectAttr "MorphyFace5:MorphyFace:FixMe_lambert5SG.msg" "MorphyFace5:MorphyFace:FixMe_materialInfo40.sg"
		;
connectAttr "teeth_shdr.msg" "MorphyFace5:MorphyFace:FixMe_materialInfo40.m";
connectAttr "Tongue.oc" "Marcus_Marcus_phong9SG.ss";
connectAttr "groupId1166.msg" "Marcus_Marcus_phong9SG.gn" -na;
connectAttr "Marcus_Marcus_phong9SG.msg" "Marcus_Marcus_materialInfo7.sg";
connectAttr "Tongue.msg" "Marcus_Marcus_materialInfo7.m";
connectAttr "tongueIK_crv_normalizedScale.ox" "FIXMEJOSH_curveInfo5.normalizedScale"
		;
connectAttr "FIXMEJOSH_curveInfo5.al" "tongueIK_crv_normalizedScale.i1x";
connectAttr "tongueIK_crv_normalizedScale1.ox" "curveInfo2.normalizedScale";
connectAttr "curveInfo2.al" "tongueIK_crv_normalizedScale1.i1x";
connectAttr "tongueCurl_animBottomMultDivide.ox" "tongueCurl_animBottomClamp.ipr"
		;
connectAttr "tongueCurl_animLeftMultDivide.ox" "tongueCurl_animLeftClamp.ipr";
connectAttr "mentalrayTexture1.msg" "misss_fast_skin_maya1.s00";
connectAttr "file3.oc" "misss_fast_skin_maya1.S03";
connectAttr "file3.oa" "misss_fast_skin_maya1.S03A";
connectAttr "file2.oc" "misss_fast_skin_maya1.S04";
connectAttr "file2.oa" "misss_fast_skin_maya1.S04A";
connectAttr "file4.oc" "misss_fast_skin_maya1.S18";
connectAttr "file4.oa" "misss_fast_skin_maya1.S18A";
connectAttr "file4.oc" "misss_fast_skin_maya1.S22";
connectAttr "file4.oa" "misss_fast_skin_maya1.S22A";
connectAttr "misss_fast_skin_maya1.S36" "misss_fast_skin_maya1SG.mims";
connectAttr "misss_fast_lmap_maya1.msg" "misss_fast_skin_maya1SG.milm";
connectAttr "misss_fast_skin_maya1SG.msg" "materialInfo4.sg";
connectAttr "misss_fast_skin_maya1.msg" "materialInfo4.m";
connectAttr "file3.msg" "materialInfo4.t" -na;
connectAttr "file3.oc" "materialInfo4.tc";
connectAttr "mentalrayTexture1.msg" "misss_fast_lmap_maya1.s00";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "uprEarLeftMultDivide.ox" "uprEarLeftClamp.ipr";
connectAttr "uprEarBottomMultDivide.ox" "uprEarBottomClamp.ipr";
connectAttr "lwrEarBottomMultDivide1.ox" "lwrEarBottomClamp1.ipr";
connectAttr "lwrEarLeftMultDivide.ox" "lwrEarLeftClamp.ipr";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "BrowLeftMultDivide.ox" "BrowLeftClamp.ipr";
connectAttr "LidsLeftMultDivide1.ox" "LidsLeftClamp1.ipr";
connectAttr "NoseLeftMultDivide.ox" "NoseLeftClamp.ipr";
connectAttr "NoseBottomMultDivide.ox" "NoseBottomClamp.ipr";
connectAttr "NoseTipLeftMultDivide.ox" "NoseTipLeftClamp.ipr";
connectAttr "NoseTipBottomMultDivide.ox" "NoseTipBottomClamp.ipr";
connectAttr "LipsLeftMultDivide.ox" "LipsLeftClamp.ipr";
connectAttr "NeckLeftMultDivide.ox" "NeckLeftClamp.ipr";
connectAttr "ChinLeftMultDivide1.ox" "ChinLeftClamp1.ipr";
connectAttr "JawLineLeftMultDivide.ox" "JawLineLeftClamp.ipr";
connectAttr "JawLineBottomMultDivide.ox" "JawLineBottomClamp.ipr";
connectAttr "BrowRTopLeftAdd.o" "BrowRTopLeftXClamp.ipr";
connectAttr "BrowRTopLeftXMultDivide.ox" "BrowRTopLeftAdd.i1";
connectAttr "BrowRTopLeftXClamp.opr" "BrowRTopLeftMultDivide.i1x";
connectAttr "BrowRTopLeftYClamp.opr" "BrowRTopLeftMultDivide.i2x";
connectAttr "BrowRTopRightXClamp.opr" "BrowRTopRightMultDivide.i1x";
connectAttr "BrowRTopRightYClamp.opr" "BrowRTopRightMultDivide.i2x";
connectAttr "BrowLTopRightXClamp.opr" "BrowLTopRightMultDivide.i1x";
connectAttr "BrowLTopRightYClamp.opr" "BrowLTopRightMultDivide.i2x";
connectAttr "BrowLTopLeftAdd.o" "BrowLTopLeftXClamp.ipr";
connectAttr "BrowLTopLeftXMultDivide.ox" "BrowLTopLeftAdd.i1";
connectAttr "BrowLTopLeftXClamp.opr" "BrowLTopLeftMultDivide.i1x";
connectAttr "BrowLTopLeftYClamp.opr" "BrowLTopLeftMultDivide.i2x";
connectAttr "accessory_shdr.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo5.sg";
connectAttr "accessory_shdr.msg" "materialInfo5.m";
connectAttr "NoseBridgeLeftMultDivide.ox" "NoseBridgeLeftClamp.ipr";
connectAttr "FacialHairBottomMultDivide1.ox" "FacialHairBottomClamp1.ipr";
connectAttr "uprTeethBottomMultDivide.ox" "uprTeethBottomClamp.ipr";
connectAttr "uprTeethLeftMultDivide1.ox" "uprTeethLeftClamp1.ipr";
connectAttr "lwrTeethBottomMultDivide.ox" "lwrTeethBottomClamp.ipr";
connectAttr "lwrTeethLeftMultDivide.ox" "lwrTeethLeftClamp.ipr";
connectAttr "gums_shdr.oc" "FIXMEJOSH_lambert3SG.ss";
connectAttr "groupId26.msg" "FIXMEJOSH_lambert3SG.gn" -na;
connectAttr "FIXMEJOSH_lambert3SG.msg" "materialInfo2.sg";
connectAttr "gums_shdr.msg" "materialInfo2.m";
connectAttr "uprLip_left_animBottomMultDivide.ox" "uprLip_left_animBottomClamp.ipr"
		;
connectAttr "uprLip_right_animBottomMultDivide.ox" "uprLip_right_animBottomClamp.ipr"
		;
connectAttr "lwrLip_left_animBottomMultDivide.ox" "lwrLip_left_animBottomClamp.ipr"
		;
connectAttr "lwrLip_right_animBottomMultDivide.ox" "lwrLip_right_animBottomClamp.ipr"
		;
connectAttr "noseMove_animBottomMultDivide.ox" "noseMove_animBottomClamp.ipr";
connectAttr "noseMove_animLeftMultDivide.ox" "noseMove_animLeftClamp.ipr";
connectAttr "SurvivalKitAnimation:file1.oc" "SurvivalKitAnimation:AnimationRef.c"
		;
connectAttr "SurvivalKitAnimation:AnimationRef.oc" "SurvivalKitAnimation:lambert2SG.ss"
		;
connectAttr "SurvivalKitAnimation_UVGuideShape.iog" "SurvivalKitAnimation:lambert2SG.dsm"
		 -na;
connectAttr "SurvivalKitAnimation:lambert2SG.msg" "SurvivalKitAnimation:materialInfo1.sg"
		;
connectAttr "SurvivalKitAnimation:AnimationRef.msg" "SurvivalKitAnimation:materialInfo1.m"
		;
connectAttr "SurvivalKitAnimation:file1.msg" "SurvivalKitAnimation:materialInfo1.t"
		 -na;
connectAttr "SurvivalKitAnimation:place2dTexture1.c" "SurvivalKitAnimation:file1.c"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.tf" "SurvivalKitAnimation:file1.tf"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.rf" "SurvivalKitAnimation:file1.rf"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.mu" "SurvivalKitAnimation:file1.mu"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.mv" "SurvivalKitAnimation:file1.mv"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.s" "SurvivalKitAnimation:file1.s"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.wu" "SurvivalKitAnimation:file1.wu"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.wv" "SurvivalKitAnimation:file1.wv"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.re" "SurvivalKitAnimation:file1.re"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.of" "SurvivalKitAnimation:file1.of"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.r" "SurvivalKitAnimation:file1.ro"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.n" "SurvivalKitAnimation:file1.n"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.vt1" "SurvivalKitAnimation:file1.vt1"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.vt2" "SurvivalKitAnimation:file1.vt2"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.vt3" "SurvivalKitAnimation:file1.vt3"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.vc1" "SurvivalKitAnimation:file1.vc1"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.o" "SurvivalKitAnimation:file1.uv"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.ofs" "SurvivalKitAnimation:file1.fs"
		;
connectAttr "SurvivalKitAnimation:blendWeighted1.o" "SurvivalKitAnimation:place2dTexture1.ofu"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1_offsetV.o" "SurvivalKitAnimation:place2dTexture1.ofv"
		;
connectAttr "SurvivalKitAnimation:place2dTexture1_offsetU.o" "SurvivalKitAnimation:blendWeighted1.i[0]"
		;
connectAttr "SurvivalKitAnimation:animCurveUU1.o" "SurvivalKitAnimation:blendWeighted1.i[1]"
		;
connectAttr "SurvivalKitAnimation_UVGuide.UV_Frame" "SurvivalKitAnimation:animCurveUU1.i"
		;
connectAttr "hyperView2.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout2.msg" "hyperView2.hl";
connectAttr "FIXMEJOSH_Marcus_Marcus_FixMe_phongE1SG1.pa" ":renderPartition.st" 
		-na;
connectAttr "FixMe_Default.pa" ":renderPartition.st" -na;
connectAttr "Default.pa" ":renderPartition.st" -na;
connectAttr "L_EyeSG.pa" ":renderPartition.st" -na;
connectAttr "phong8SG.pa" ":renderPartition.st" -na;
connectAttr "CorrineSG.pa" ":renderPartition.st" -na;
connectAttr "MorphyFace5:MorphyFace:FixMe_lambert5SG.pa" ":renderPartition.st" -na
		;
connectAttr "Marcus_Marcus_phong9SG.pa" ":renderPartition.st" -na;
connectAttr "misss_fast_skin_maya1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "FIXMEJOSH_lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "SurvivalKitAnimation:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "bodySuit_shdr.msg" ":defaultShaderList1.s" -na;
connectAttr "hair_phong.msg" ":defaultShaderList1.s" -na;
connectAttr "phong10.msg" ":defaultShaderList1.s" -na;
connectAttr "L_EyeSG1.msg" ":defaultShaderList1.s" -na;
connectAttr "phong8SG1.msg" ":defaultShaderList1.s" -na;
connectAttr "Corrine.msg" ":defaultShaderList1.s" -na;
connectAttr "teeth_shdr.msg" ":defaultShaderList1.s" -na;
connectAttr "Tongue.msg" ":defaultShaderList1.s" -na;
connectAttr "misss_fast_skin_maya1.msg" ":defaultShaderList1.s" -na;
connectAttr "accessory_shdr.msg" ":defaultShaderList1.s" -na;
connectAttr "gums_shdr.msg" ":defaultShaderList1.s" -na;
connectAttr "SurvivalKitAnimation:AnimationRef.msg" ":defaultShaderList1.s" -na;
connectAttr "arms_LeftArm_halfX_axis.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arms_LeftArm_devideformiddlejoints.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arms_LeftArm_multiplyDivide15.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_multiplyDivide16.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_plusMinusAverage8.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "arms_LeftArm_plusMinusAverage9.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "arms_RightArm_halfX_axis.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arms_RightArm_devideformiddlejoints.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arms_LeftArm_multiplyDivide50.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_multiplyDivide51.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_plusMinusAverage35.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arms_LeftArm_multiplyDivide53.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_multiplyDivide52.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arms_LeftArm_multiplyDivide54.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_multiplyDivide55.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_plusMinusAverage37.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arms_LeftArm_multiplyDivide56.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_reverse3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arms_LeftArm_multiplyDivide58.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_multiplyDivide57.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_plusMinusAverage39.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arms_LeftArm_multiplyDivide59.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "arms_LeftArm_reverse4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arms_RightArm_multiplyDivide56.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "arms_RightArm_multiplyDivide55.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "arms_RightArm_plusMinusAverage36.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "arms_RightArm_reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arms_RightArm_multiplyDivide57.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "legs_LeftLeg_multiplyDivide32.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "legs_RightLeg_multiplyDivide32.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "legs_LeftLeg_multiplyDivide45.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "legs_LeftLeg_multiplyDivide46.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "legs_LeftLeg_plusMinusAverage33.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "legs_LeftLeg_reverse3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "legs_LeftLeg_multiplyDivide48.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "legs_RightLeg_multiplyDivide45.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "legs_RightLeg_multiplyDivide46.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "legs_RightLeg_plusMinusAverage37.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "legs_reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "legs_RightLeg_multiplyDivide48.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "Marcus_arms_LeftArm_halfX_axis.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "Marcus_arms_LeftArm_devideformiddlejoints.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide15.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide16.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage8.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage9.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_RightArm_halfX_axis.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_RightArm_devideformiddlejoints.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide50.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide51.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage35.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide53.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide52.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_reverse1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide54.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide55.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage37.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide56.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_reverse3.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Marcus_arms_LeftArm_multiplyDivide58.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide57.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_plusMinusAverage39.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_multiplyDivide59.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_LeftArm_reverse4.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Marcus_arms_RightArm_multiplyDivide56.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_RightArm_multiplyDivide55.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_RightArm_plusMinusAverage36.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_arms_RightArm_reverse1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Marcus_arms_RightArm_multiplyDivide57.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_LeftLeg_multiplyDivide32.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_RightLeg_multiplyDivide32.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_LeftLeg_multiplyDivide45.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_LeftLeg_multiplyDivide46.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_LeftLeg_plusMinusAverage33.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_LeftLeg_reverse3.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Marcus_legs_LeftLeg_multiplyDivide48.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_RightLeg_multiplyDivide45.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_RightLeg_multiplyDivide46.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_RightLeg_plusMinusAverage37.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Marcus_legs_reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Marcus_legs_RightLeg_multiplyDivide48.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_halfX_axis.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_devideformiddlejoints.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide15.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide16.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage8.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage9.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_halfX_axis.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_devideformiddlejoints.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide50.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide51.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage35.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide53.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide52.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide54.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide55.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage37.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide56.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide58.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide57.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage39.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide59.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide56.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide55.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_plusMinusAverage36.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_reverse1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide57.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide32.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide32.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide45.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide46.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_plusMinusAverage33.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_reverse3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide48.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide45.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide46.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_RightLeg_plusMinusAverage37.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide48.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neckSkinTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopLeftXClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopLeftYClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopLeftAdd1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopLeftMultDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopLeftXMultDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopLeftDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopRightXClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopRightYClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopRightMultDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckBigTopRightDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "torsoBigRightTopLeftXClamp1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "torsoBigRightTopLeftYClamp1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "torsoBigRightTopLeftAdd1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "torsoBigRightTopLeftMultDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "torsoBigRightTopLeftXMultDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "torsoBigRightTopLeftDivide1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "torsoBigRightTopRightXClamp1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "torsoBigRightTopRightYClamp1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "torsoBigRightTopRightMultDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "torsoBigRightTopRightDivide1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "torsoBigLeftTopRightXClamp1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "torsoBigLeftTopRightYClamp1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "torsoBigLeftTopRightMultDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "torsoBigLeftTopRightDivide1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "torsoBigLeftTopLeftXClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "torsoBigLeftTopLeftYClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "torsoBigLeftTopLeftAdd1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "torsoBigLeftTopLeftMultDivide1.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "torsoBigLeftTopLeftXMultDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "torsoBigLeftTopLeftDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "torsoSkinnyRightTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "torsoSkinnyLeftTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmRightTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmRightTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmRightTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmRightTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprArmRightTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprArmRightTopLeftDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmRightTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmRightTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmRightTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprArmRightTopRightDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmLeftTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmLeftTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmLeftTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmLeftTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprArmLeftTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprArmLeftTopLeftDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmLeftTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmLeftTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmLeftTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprArmLeftTopRightDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmSkinRightTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprArmSkinLeftTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmRightTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmRightTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmRightTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmRightTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrArmRightTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrArmRightTopLeftDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmRightTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmRightTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmRightTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrArmRightTopRightDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmLeftTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmLeftTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmLeftTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmLeftTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrArmLeftTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrArmLeftTopLeftDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmLeftTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmLeftTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmLeftTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrArmLeftTopRightDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmSkinRightTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrArmSkinLeftTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegRightTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegRightTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegRightTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegRightTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLegRightTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLegRightTopLeftDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegRightTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegRightTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegRightTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLegRightTopRightDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegLeftTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegLeftTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegLeftTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegLeftTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLegLeftTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLegLeftTopLeftDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegLeftTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegLeftTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegLeftTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLegLeftTopRightDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegSkinRightTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLegSkinLeftTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegRightTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegRightTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegRightTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegRightTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLegRightTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLegRightTopLeftDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegRightTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegRightTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegRightTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLegRightTopRightDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegLeftTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegLeftTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegLeftTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegLeftTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLegLeftTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLegLeftTopLeftDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegLeftTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegLeftTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegLeftTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLegLeftTopRightDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegSkinLeftTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLegSkinRightTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "feminineTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "feminineRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BellyRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BellyLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BellyLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FIXMEJOSH_arms_LeftArm_halfX_axis1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_devideformiddlejoints1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide60.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide61.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage40.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage41.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_halfX_axis1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_devideformiddlejoints1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide62.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide63.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage42.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide65.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide64.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse5.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide66.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide67.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage43.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide68.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse6.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide70.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide69.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_plusMinusAverage44.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_multiplyDivide71.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_LeftArm_reverse7.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide59.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide58.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_plusMinusAverage37.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_reverse2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_arms_RightArm_multiplyDivide60.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide49.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide49.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide50.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide51.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_plusMinusAverage34.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_reverse4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_LeftLeg_multiplyDivide52.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide50.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide51.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_RightLeg_plusMinusAverage38.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FIXMEJOSH_legs_reverse2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FIXMEJOSH_legs_RightLeg_multiplyDivide52.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mouthEmote_left_animLeftClamp5.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "mouthEmote_left_animLeftMultDivide5.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mouthEmote_left_animTopClamp4.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "absoluteMaker_mdNode.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Limiter_mdNode.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mouthEmote_left_animBottomClamp4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mouthEmote_left_animBottomMultDivide4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leftEmote_rmNode.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rightEmote_rmNode.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mouthEmote_right_animLeftClamp.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "mouthEmote_right_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mouthEmote_right_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "mouthEmote_right_animBottomClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mouthEmote_right_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animTopRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animTopRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animTopRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animTopLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animTopLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLip_center_animTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomRightYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomLeftAdd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_center_animBottomLeftYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animTopRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animTopRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animTopRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animTopLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animTopLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLip_center_animTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomRightYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomLeftAdd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_center_animBottomLeftYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mouthMove_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mouthMove_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mouthMove_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "mouthMove_animRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mouthMove_animLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mouthMove_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLip_left_animTopClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLip_left_animLeftClamp3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLip_left_animLeftMultDivide3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_left_animRightClamp1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLip_left_animLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLip_left_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "lwrLip_left_animRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLip_left_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLip_right_animLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrLip_right_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_right_animRightClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLip_right_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLip_right_animLeftClamp1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLip_right_animLeftMultDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_right_animRightClamp2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLip_right_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cheek_left_animRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cheek_left_animLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cheek_left_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "cheek_left_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cheek_left_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cheek_left_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "cheek_right_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cheek_right_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "cheek_right_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "cheek_right_animLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cheek_right_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "cheek_right_animRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "browInner_left_animLeftClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "browInner_left_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browInner_left_animBottomClamp.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "browInner_left_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browInner_left_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "browInner_right_animLeftClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "browInner_right_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browInner_right_animBottomClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browInner_right_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browInner_right_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "browMid_left_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "browMid_left_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "browMid_left_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browMid_right_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "browMid_right_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browMid_right_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "browOuter_left_animBottomClamp.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "browOuter_left_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browOuter_left_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "browOuter_right_animBottomClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browOuter_right_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "browOuter_right_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "tongueCurl_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tongueCurl_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tongueCurl_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tongueCurl_animLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tongueCurl_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "tongueCurl_animRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprEarTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprEarLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprEarLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprEarBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprEarBottomMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprEarRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrEarRightClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrEarBottomClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrEarBottomMultDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrEarTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrEarLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrEarLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LidsRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LidsLeftClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LidsLeftMultDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CheekRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseBottomMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseTipLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseTipLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseTipRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseTipBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseTipBottomMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseTipTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LipsRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LipsLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LipsLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "HeavyRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NeckRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NeckLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NeckLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ChinRightClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ChinLeftClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ChinLeftMultDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawLineRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawLineLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawLineLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawLineTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawLineBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "JawLineBottomMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowRTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowRTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowRTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowRTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowRTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowRTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowRTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowRTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLTopRightXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLTopRightYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLTopRightMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLTopLeftXClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLTopLeftYClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLTopLeftAdd.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BrowLTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseBridgeRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseBridgeLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseBridgeLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FacialHairBottomClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FacialHairBottomMultDivide1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FacialHairTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprTeethBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprTeethBottomMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprTeethTopClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprTeethRightClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprTeethLeftClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprTeethLeftMultDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrTeethBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrTeethBottomMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrTeethTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrTeethRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrTeethLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lwrTeethLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "teethBreakerRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "teethBreakerRightClamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uprLip_left_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLip_left_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "uprLip_right_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "uprLip_right_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_left_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLip_left_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lwrLip_right_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "lwrLip_right_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "noseMove_animTopClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "noseMove_animBottomClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "noseMove_animBottomMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "noseMove_animRightClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "noseMove_animLeftClamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "noseMove_animLeftMultDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "SurvivalKitAnimation:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "SurvivalKitAnimation:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "hyperView1.msg" ":hyperGraphInfo.b[0]";
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file2\" \"fileTextureName\" \"D:/My Dropbox/jbHumanRig//Maya/sourceimages/Diffuse.png\" 3115462626 \"\" \"sourceImages\"\n1\n\"file3\" \"fileTextureName\" \"D:/My Dropbox/jbHumanRig//Maya/sourceimages/HeadTextureLight.png\" 921164653 \"\" \"sourceImages\"\n2\n\"file4\" \"fileTextureName\" \"D:/My Dropbox/jbHumanRig//Maya/sourceimages/mary_Spec.png\" 1332268112 \"\" \"sourceImages\"\n3\n\"file5\" \"fileTextureName\" \"D:/My Dropbox/jbHumanRig//Maya/sourceimages/Eyes/GreenEye.png\" 2090194391 \"\" \"sourceImages\"\n4\n\"SurvivalKitAnimation:file1\" \"fileTextureName\" \"/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE/Art/CHAR/anim/SurvivalKit_WalkCycle.jpg\" 3154729461 \"/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE/Art/CHAR/anim/SurvivalKit_WalkCycle.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of SurvivalKitAnimation_UVGuide.ma
