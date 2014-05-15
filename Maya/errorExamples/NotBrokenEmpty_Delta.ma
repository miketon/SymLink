//Maya ASCII 2013 scene
//Name: Broken Empty.ma
//Last modified: Wed, May 14, 2014 01:08:06 PM
//Codeset: 1252
requires maya "2013";
requires "Mayatomr" "2013.0 - 3.10.1.4 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220241-825136";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.0836095891138564 1.5704207549184512 2.3918927783575126 ;
	setAttr ".r" -type "double3" 344.66164727036187 52.19999999993361 -3.8919702373741644e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 4.0466778854821772;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.49999899336052067 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4299317344563884 100.1 -1.558818039159898 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 44.280077019083343;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.14535611890656419 2.5680507079322759 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 31.023737154381479;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.40907691478807 6.2979632968913579 0.35127231076997517 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 64.085698723756849;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode materialInfo -n "materialInfo4";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 32 ".lnk";
	setAttr -s 32 ".slnk";
	setAttr -s 2 ".sign";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 7 ".dli[1:6]"  1 2 7 8 9 10;
	setAttr -s 7 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
	setAttr ".crl" 1;
	setAttr -s 5 ".rlmi[1:4]"  1 2 3 4;
	setAttr -s 5 ".rlmi";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
	setAttr ".rndr" no;
	setAttr -s 21 ".adjs";
	setAttr ".adjs[0].val" 1;
	setAttr ".adjs[13].val" -type "string" "mentalRay";
	setAttr ".adjs[14].val" 0;
	setAttr ".adjs[15].val" 0;
	setAttr ".adjs[16].val" 2;
	setAttr ".adjs[17].val" 2;
	setAttr ".adjs[18].val" 1;
	setAttr ".adjs[19].val" 1;
	setAttr ".adjs[20].val" 0.10000000149011612;
	setAttr ".adjs[21].val" 0.10000000149011612;
	setAttr ".adjs[22].val" 0.10000000149011612;
	setAttr ".adjs[23].val" 0.10000000149011612;
	setAttr ".adjs[24].val" 1;
	setAttr ".adjs[25].val" 10;
	setAttr ".adjs[26].val" 10;
	setAttr ".adjs[27].val" 20;
	setAttr ".adjs[28].val" 24;
	setAttr ".adjs[30].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[31].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[32].val" -type "float3" 0 0 0 ;
	setAttr ".adjs[33].val" -type "float3" 0 0 0 ;
	setAttr -s 4 ".oajs";
createNode script -n "Generic_Scene:uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n"
		+ "                -displayAppearance \"boundingBox\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n"
		+ "            -displayAppearance \"boundingBox\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n"
		+ "            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 1\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 2.273959\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"Hammer_Lo:pCube1\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 2.273959\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"Hammer_Lo:pCube1\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n"
		+ "                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"boundingBox\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"boundingBox\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "Generic_Scene:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode checker -n "Generic_Scene:checker1";
	setAttr ".c1" -type "float3" 1 0 0 ;
createNode place2dTexture -n "Generic_Scene:place2dTexture1";
	setAttr ".c" -type "float2" 1 2 ;
	setAttr ".re" -type "float2" 8 8 ;
createNode shadingEngine -n "Generic_Scene:phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Generic_Scene:materialInfo1";
createNode shadingEngine -n "Generic_Scene:phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Generic_Scene:materialInfo2";
createNode shadingEngine -n "Generic_Scene:blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Generic_Scene:materialInfo3";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 19 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 24;
	setAttr ".gi" yes;
	setAttr ".gia" 200;
	setAttr ".fg" yes;
	setAttr ".fgr" 512;
	setAttr ".fgm" 3;
	setAttr ".fgpd" 0.10000000149011612;
	setAttr ".fgtf" 1;
	setAttr -s 28 ".stringOptions";
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
	setAttr ".stringOptions[9].value" -type "string" "true";
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
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	setAttr ".dat" 5;
createNode mentalrayOptions -s -n "miContourPreset";
createNode mentalrayOptions -s -n "Draft";
	setAttr ".maxr" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
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
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" no;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -114.28571428571432 -270.71862128766531 ;
	setAttr ".vh" -type "double2" 783.33333333333326 275.48052604957007 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 28 ".hyp";
	setAttr ".hyp[0].nvs" 1808;
	setAttr ".hyp[1].nvs" 2288;
	setAttr ".hyp[2].x" 298.56112670898437;
	setAttr ".hyp[2].y" 50.121936798095703;
	setAttr ".hyp[2].nvs" 2240;
	setAttr ".hyp[3].x" 582.3634033203125;
	setAttr ".hyp[3].y" 63.724800109863281;
	setAttr ".hyp[3].nvs" 2496;
	setAttr ".hyp[4].x" 336.64913940429687;
	setAttr ".hyp[4].y" -0.20864947140216827;
	setAttr ".hyp[4].nvs" 2288;
	setAttr ".hyp[5].x" 336.64913940429687;
	setAttr ".hyp[5].y" -0.20864947140216827;
	setAttr ".hyp[5].nvs" 2960;
	setAttr ".hyp[6].x" 336.64913940429687;
	setAttr ".hyp[6].y" -0.20864947140216827;
	setAttr ".hyp[6].nvs" 2304;
	setAttr ".hyp[7].nvs" 2368;
	setAttr ".hyp[8].nvs" 2368;
	setAttr ".hyp[9].nvs" 2240;
	setAttr ".hyp[10].nvs" 3152;
	setAttr ".hyp[11].nvs" 1840;
	setAttr ".hyp[12].nvs" 1696;
	setAttr ".hyp[13].nvs" 2080;
	setAttr ".hyp[14].x" 337.24798583984375;
	setAttr ".hyp[14].y" -95.922935485839844;
	setAttr ".hyp[14].nvs" 2016;
	setAttr ".hyp[15].x" 534.390869140625;
	setAttr ".hyp[15].y" 156.58193969726562;
	setAttr ".hyp[15].nvs" 1952;
	setAttr ".hyp[16].x" 534.390869140625;
	setAttr ".hyp[16].y" -187.59556579589844;
	setAttr ".hyp[16].nvs" 1952;
	setAttr ".hyp[17].x" 337.24798583984375;
	setAttr ".hyp[17].y" 179.7662353515625;
	setAttr ".hyp[17].nvs" 1952;
	setAttr ".hyp[18].x" 337.24798583984375;
	setAttr ".hyp[18].y" 275.48052978515625;
	setAttr ".hyp[18].nvs" 1952;
	setAttr ".hyp[19].x" 140.10513305664062;
	setAttr ".hyp[19].y" 331.55050659179687;
	setAttr ".hyp[19].nvs" 1952;
	setAttr ".hyp[20].x" 140.10513305664062;
	setAttr ".hyp[20].y" 235.83622741699219;
	setAttr ".hyp[20].nvs" 1952;
	setAttr ".hyp[21].x" 140.10513305664062;
	setAttr ".hyp[21].y" 142.97908020019531;
	setAttr ".hyp[21].nvs" 1952;
	setAttr ".hyp[22].x" 140.10513305664062;
	setAttr ".hyp[22].y" -116.1669921875;
	setAttr ".hyp[22].nvs" 1952;
	setAttr ".hyp[23].x" 534.390869140625;
	setAttr ".hyp[23].y" 275.48052978515625;
	setAttr ".hyp[23].nvs" 2016;
	setAttr ".hyp[24].x" 534.390869140625;
	setAttr ".hyp[24].y" 275.48052978515625;
	setAttr ".hyp[24].nvs" 1952;
	setAttr ".hyp[25].nvs" 2528;
	setAttr ".hyp[26].nvs" 1808;
	setAttr ".hyp[27].nvs" 2496;
	setAttr ".anf" yes;
createNode physical_light -n "physical_light1";
createNode physical_light -n "physical_light2";
createNode mib_blackbody -n "mib_blackbody1";
	setAttr ".S00" 5700;
	setAttr ".S01" 500;
createNode shadingEngine -n "mia_material_x1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode shadingEngine -n "dgs_material1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode shadingEngine -n "mi_car_paint_phen_x1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode shadingEngine -n "mia_material1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode shadingEngine -n "mib_illum_phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode shadingEngine -n "mia_material2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".splck" no;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".scan" 1;
	setAttr ".ray" no;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".splck" no;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".scan" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode mi_car_paint_phen_x_passes -n "mi_car_paint_phen_x_passes1";
	setAttr ".S18" -type "float3" 1 0.579 0.579 ;
	setAttr ".S20" 0.10000000149011612;
	setAttr ".S22" 5;
	setAttr ".S25" 0.0010000000474974513;
	setAttr ".S26" -type "float3" 1 0.486 0.486 ;
createNode shadingEngine -n "mi_car_paint_phen_x_passes1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
createNode mia_material_x_passes -n "mia_material_x_passes1";
	setAttr ".S03" 0;
	setAttr ".S04" -type "float3" 0.91453421 0.91453421 0.91453421 ;
	setAttr ".S06" 1;
	setAttr ".S13" 0.89999997615814209;
	setAttr ".S16" 1.5;
	setAttr ".S25" yes;
	setAttr ".S62" yes;
createNode shadingEngine -n "mia_material_x_passes1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
createNode displayLayer -n "layer1";
	setAttr ".do" 1;
createNode displayLayer -n "layer2";
	setAttr ".do" 2;
createNode renderLayer -n "Main_Render";
	setAttr -s 3 ".oajs";
	setAttr ".do" 1;
createNode mia_material_x_passes -n "mia_material_x_passes2";
	setAttr ".S04" -type "float3" 1 1 1 ;
	setAttr ".S05" 0.20000000298023224;
	setAttr ".S06" 0;
	setAttr ".S16" 1;
	setAttr ".S20" -type "float3" 0.69999999 0.5 0.2 ;
	setAttr ".S39" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".S40" 4;
	setAttr ".S45" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".S46" 6;
	setAttr ".S53" 4;
	setAttr ".S62" yes;
createNode shadingEngine -n "mia_material_x_passes2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
createNode mia_material_x_passes -n "mia_material_x_passes3";
	setAttr ".S04" -type "float3" 0.30557811 0.28324002 0.73000002 ;
	setAttr ".S06" 1;
	setAttr ".S07" -type "float3" 0.69494045 0.68983197 0.792 ;
	setAttr ".S08" 0.34999999403953552;
	setAttr ".S09" 0;
	setAttr ".S13" 1;
	setAttr ".S14" -type "float3" 0 0 0 ;
	setAttr ".S20" -type "float3" 0.69999999 0.5 0.2 ;
	setAttr ".S39" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".S40" 3;
	setAttr ".S45" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".S46" 3;
	setAttr ".S53" 4;
createNode shadingEngine -n "mia_material_x_passes3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
createNode shadingEngine -n "mia_material_x_passes4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
createNode file -n "file1";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/vicb/Documents/maya/projects/default//scenes/Nuke Tests/Test Bump.tga";
createNode place2dTexture -n "place2dTexture1";
createNode bump2d -n "bump2d1";
	setAttr -av ".bv" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode renderLayer -n "Matte";
	setAttr ".rndr" no;
	setAttr ".do" 2;
createNode misss_fast_skin_maya -n "misss_fast_skin_maya1";
	setAttr ".S30" 10;
createNode shadingEngine -n "misss_fast_skin_maya1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
createNode mentalrayTexture -n "mentalrayTexture1";
	setAttr ".miw" yes;
	setAttr ".midp" 4;
createNode expression -n "expression1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]  = .I[0] * 2";
createNode expression -n "expression2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode misss_fast_lmap_maya -n "misss_fast_lmap_maya1";
createNode surfaceShader -n "mask_red";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".omo" -type "float3" 0 0 0 ;
createNode shadingEngine -n "surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
createNode renderLayer -n "ID";
	setAttr ".rndr" no;
	setAttr ".adjs[0].val" 1;
	setAttr -s 3 ".oajs";
	setAttr ".do" 3;
createNode shadingEngine -n "misss_fast_shader_x_passes1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
createNode surfaceShader -n "mask_blue";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".omo" -type "float3" 0 0 0 ;
createNode surfaceShader -n "mask_green";
	setAttr ".oc" -type "float3" 0 1 0 ;
	setAttr ".omo" -type "float3" 0 0 0 ;
createNode shadingEngine -n "mask_blueSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
createNode shadingEngine -n "mask_greenSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
createNode physical_light -n "pasted__physical_light2";
createNode mib_blackbody -n "pasted__mib_blackbody1";
	setAttr ".S00" 5700;
	setAttr ".S01" 500;
createNode renderPassSet -n "Test04";
createNode renderPass -n "AO";
	addAttr -ci true -sn "ust" -ln "useShadingEngineThreshold" -nn "Use Shading Engine Threshold" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tth" -ln "transparencyThreshold" -nn "Transparency Threshold" 
		-min -3.4028234663852882e+038 -max 3.4028234600000001e+038 -smn 0 -smx 1 -at "float";
	addAttr -ci true -sn "locs" -ln "useLocalSettings" -nn "Use Local AO Settings" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "rays" -ln "rays" -nn "Rays" -dv 64 -min 0 -max 2147483647 
		-smn 0 -smx 1024 -at "long";
	addAttr -ci true -uac -sn "brt" -ln "brightColor" -nn "Bright Color" -at "float3" 
		-nc 3;
	addAttr -ci true -sn "brtR" -ln "brightColorR" -dv 1 -at "float" -p "brightColor";
	addAttr -ci true -sn "brtG" -ln "brightColorG" -dv 1 -at "float" -p "brightColor";
	addAttr -ci true -sn "brtB" -ln "brightColorB" -dv 1 -at "float" -p "brightColor";
	addAttr -ci true -uac -sn "drk" -ln "darkColor" -nn "Dark Color" -at "float3" -nc 
		3;
	addAttr -ci true -sn "drkR" -ln "darkColorR" -at "float" -p "darkColor";
	addAttr -ci true -sn "drkG" -ln "darkColorG" -at "float" -p "darkColor";
	addAttr -ci true -sn "drkB" -ln "darkColorB" -at "float" -p "darkColor";
	addAttr -ci true -sn "sprd" -ln "spread" -nn "Spread" -min 0 -max 1 -smn 0 -smx 
		1 -at "float";
	addAttr -ci true -sn "spex" -ln "spreadExponent" -nn "Spread Exponent" -dv 1 -min 
		0 -max 3.4028234600000001e+038 -smn 0 -smx 3 -at "float";
	addAttr -ci true -sn "maxd" -ln "maxDistance" -nn "Maximum Distance" -min 0 -max 
		3.4028234600000001e+038 -smn 0 -smx 1000 -at "float";
	addAttr -ci true -sn "refl" -ln "reflective" -nn "Reflective" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cacp" -ln "cachePoints" -nn "Cache Points" -min 0 -max 2147483647 
		-smn 0 -smx 256 -at "long";
	addAttr -ci true -sn "oina" -ln "occInAlpha" -nn "Occlusion In Alpha" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "opm" -ln "outputMode" -nn "Output Mode" -min 0 -max 4 -en 
		"Occlusion:Sampled Environment:Bent Normals (world):Bent Normals (camera):Bent Normals (object)" 
		-at "enum";
	setAttr ".pid" -type "string" "AO";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
	setAttr ".cp" 2;
	setAttr ".locs" yes;
	setAttr ".rays" 256;
createNode renderPass -n "beauty";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "BEAUTY";
	setAttr ".fbt" 256;
	setAttr ".nc" 4;
	setAttr ".pgn" -type "string" "Beauties";
createNode renderPass -n "diffuseNoShadow";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ta" -ln "transparentAttenuation" -nn "Attenuate According to Transparency" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "DIFFNS";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "shadowRaw";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ta" -ln "transparentAttenuation" -nn "Attenuate According to Transparency" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "SHDRAW";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "reflection";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "REFL";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "refraction";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "REFR";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "shadow";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ta" -ln "transparentAttenuation" -nn "Attenuate According to Transparency" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "SHD";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "specular";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "SPEC";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPassSet -n "Test05";
createNode renderPass -n "depth";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ust" -ln "useShadingEngineThreshold" -nn "Use Shading Engine Threshold" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tth" -ln "transparencyThreshold" -nn "Transparency Threshold" 
		-min -3.4028234663852882e+038 -max 3.4028234600000001e+038 -smn 0 -smx 1 -at "float";
	addAttr -ci true -sn "rmap" -ln "remap" -nn "Remap depth values" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "nr" -ln "znear" -nn "Near clipping plane" -min 0 -max 100000 
		-smn 0 -smx 100000 -at "float";
	addAttr -ci true -sn "fr" -ln "zfar" -nn "Far clipping plane" -dv 1000 -min 0 -max 
		100000 -smn 0 -smx 100000 -at "float";
	addAttr -ci true -sn "minbuf" -ln "minbuffer" -nn "Minimum buffer value" -min -100000 
		-max 100000 -smn -100000 -smx 100000 -at "float";
	addAttr -ci true -sn "maxbuf" -ln "maxbuffer" -nn "Maximum buffer value" -dv 1 -min 
		-100000 -max 100000 -smn -100000 -smx 100000 -at "float";
	setAttr ".pid" -type "string" "CAMZ";
	setAttr ".fbt" 512;
	setAttr ".nc" 1;
	setAttr ".pgn" -type "string" "CGpost";
createNode displayLayer -n "Lights_for_viewing_MA:pasted__Lights";
	setAttr ".c" 22;
	setAttr ".do" 7;
createNode shadingEngine -n "Lights_for_viewing_MA:AnglerMonsterv:polySurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Lights_for_viewing_MA:AnglerMonsterv:materialInfo1";
createNode file -n "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse";
	setAttr ".ftn" -type "string" "C:/Users/aieuser/Documents/maya/projects/default//images/untitled-files/lambert1_Flattened_Diffuse.tif";
createNode place2dTexture -n "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1";
createNode bump2d -n "Lights_for_viewing_MA:AnglerMonsterv:bump2d1";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/aieuser/Documents/maya/projects/default//images/untitled-files/lambert1_Flattened_Normal Map.tif";
createNode place2dTexture -n "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2";
createNode file -n "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap";
	setAttr ".ftn" -type "string" "C:/Users/aieuser/Documents/maya/projects/default//images/untitled-files/horizon.exr";
createNode place2dTexture -n "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3";
createNode shadingEngine -n "Lights_for_viewing_MA:AnglerMonsterv:surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Lights_for_viewing_MA:AnglerMonsterv:materialInfo2";
createNode displayLayer -n "Lights_for_viewing_MA1:pasted__Lights";
	setAttr ".c" 22;
	setAttr ".do" 7;
createNode shadingEngine -n "Lights_for_viewing_MA1:AnglerMonsterv:polySurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Lights_for_viewing_MA1:AnglerMonsterv:materialInfo1";
createNode file -n "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse";
	setAttr ".ftn" -type "string" "C:/Users/aieuser/Documents/maya/projects/default//images/untitled-files/lambert1_Flattened_Diffuse.tif";
createNode place2dTexture -n "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1";
createNode bump2d -n "Lights_for_viewing_MA1:AnglerMonsterv:bump2d1";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/aieuser/Documents/maya/projects/default//images/untitled-files/lambert1_Flattened_Normal Map.tif";
createNode place2dTexture -n "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2";
createNode file -n "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap";
	setAttr ".ftn" -type "string" "C:/Users/aieuser/Documents/maya/projects/default//images/untitled-files/horizon.exr";
createNode place2dTexture -n "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3";
createNode shadingEngine -n "Lights_for_viewing_MA1:AnglerMonsterv:surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Lights_for_viewing_MA1:AnglerMonsterv:materialInfo2";
createNode displayLayer -n "Lights_for_viewing_MA2:pasted__Lights";
	setAttr ".c" 22;
	setAttr ".do" 7;
createNode shadingEngine -n "Lights_for_viewing_MA2:AnglerMonsterv:polySurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Lights_for_viewing_MA2:AnglerMonsterv:materialInfo1";
createNode file -n "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse";
	setAttr ".ftn" -type "string" "C:/Users/aieuser/Documents/maya/projects/default//images/untitled-files/lambert1_Flattened_Diffuse.tif";
createNode place2dTexture -n "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1";
createNode bump2d -n "Lights_for_viewing_MA2:AnglerMonsterv:bump2d1";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/aieuser/Documents/maya/projects/default//images/untitled-files/lambert1_Flattened_Normal Map.tif";
createNode place2dTexture -n "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2";
createNode file -n "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap";
	setAttr ".ftn" -type "string" "C:/Users/aieuser/Documents/maya/projects/default//images/untitled-files/horizon.exr";
createNode place2dTexture -n "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3";
createNode shadingEngine -n "Lights_for_viewing_MA2:AnglerMonsterv:surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Lights_for_viewing_MA2:AnglerMonsterv:materialInfo2";
createNode displayLayer -n "Lights_for_viewing_MA3:pasted__Lights";
	setAttr ".c" 22;
	setAttr ".do" 7;
createNode renderLayer -n "AO1";
	setAttr ".rndr" no;
	setAttr -s 20 ".adjs";
	setAttr ".adjs[0].val" -type "string" "mentalRay";
	setAttr ".adjs[1].val" 0;
	setAttr ".adjs[2].val" 0;
	setAttr ".adjs[3].val" 2;
	setAttr ".adjs[4].val" 1;
	setAttr ".adjs[5].val" 1;
	setAttr ".adjs[6].val" 1;
	setAttr ".adjs[7].val" 0.019999999552965164;
	setAttr ".adjs[8].val" 0.019999999552965164;
	setAttr ".adjs[9].val" 0.019999999552965164;
	setAttr ".adjs[10].val" 0.019999999552965164;
	setAttr ".adjs[11].val" 1;
	setAttr ".adjs[12].val" 1;
	setAttr ".adjs[13].val" 1;
	setAttr ".adjs[14].val" 1;
	setAttr ".adjs[15].val" 2;
	setAttr ".adjs[17].val" -type "float3" 1 1 1 ;
	setAttr ".adjs[18].val" -type "float3" 1 1 1 ;
	setAttr ".adjs[19].val" -type "float3" 1 1 1 ;
	setAttr ".adjs[20].val" -type "float3" 1 1 1 ;
	setAttr ".do" 4;
createNode mib_amb_occlusion -n "mib_amb_occlusion1";
createNode surfaceShader -n "surfaceShader2";
createNode shadingEngine -n "set1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo22";
createNode shadingEngine -n "Hammer_Lo:initialShadingGroup";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Hammer_Lo:materialInfo1";
createNode lambert -n "Hammer_Lo:initialShadingGroup1";
createNode shadingEngine -n "Hammer_Lo1:initialShadingGroup";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Hammer_Lo1:materialInfo1";
createNode lambert -n "Hammer_Lo1:initialShadingGroup1";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 32 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 14 ".s";
select -ne :defaultTextureList1;
	setAttr -s 12 ".tx";
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.4700847 0.4700847 0.4700847 ;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 20 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 14 ".r";
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".edl" no;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".outf" 19;
	setAttr ".imfkey" -type "string" "tga";
	setAttr ".an" yes;
	setAttr ".pff" yes;
	setAttr ".peie" 2;
	setAttr ".ifp" -type "string" "Test_05<RenderLayer>";
	setAttr ".bn" -type "string" "<RenderLayer>ass>.<Camera>";
	setAttr ".cpe" yes;
select -ne :defaultRenderQuality;
	setAttr ".rfl" 10;
	setAttr ".rfr" 10;
	setAttr ".sl" 10;
	setAttr ".eaa" 0;
	setAttr ".ufil" yes;
	setAttr ".ss" 2;
	setAttr ".ert" yes;
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultViewColorManager;
	setAttr ".ip" 2;
	setAttr ".dp" 2;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "lambert2SG.msg" "materialInfo4.sg";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Generic_Scene:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Generic_Scene:phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Generic_Scene:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "dgs_material1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mi_car_paint_phen_x1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mib_illum_phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mi_car_paint_phen_x_passes1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x_passes1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x_passes2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x_passes3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x_passes4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "misss_fast_skin_maya1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "misss_fast_shader_x_passes1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mask_blueSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mask_greenSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Lights_for_viewing_MA:AnglerMonsterv:polySurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Lights_for_viewing_MA:AnglerMonsterv:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Lights_for_viewing_MA1:AnglerMonsterv:polySurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Lights_for_viewing_MA1:AnglerMonsterv:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Lights_for_viewing_MA2:AnglerMonsterv:polySurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Lights_for_viewing_MA2:AnglerMonsterv:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Hammer_Lo:initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Hammer_Lo1:initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Generic_Scene:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Generic_Scene:phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Generic_Scene:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "dgs_material1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mi_car_paint_phen_x1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mib_illum_phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mi_car_paint_phen_x_passes1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x_passes1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x_passes2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x_passes3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x_passes4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "misss_fast_skin_maya1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "misss_fast_shader_x_passes1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mask_blueSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mask_greenSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Lights_for_viewing_MA:AnglerMonsterv:polySurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Lights_for_viewing_MA:AnglerMonsterv:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Lights_for_viewing_MA1:AnglerMonsterv:polySurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Lights_for_viewing_MA1:AnglerMonsterv:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Lights_for_viewing_MA2:AnglerMonsterv:polySurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Lights_for_viewing_MA2:AnglerMonsterv:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Hammer_Lo:initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Hammer_Lo1:initialShadingGroup.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":miDefaultOptions.fg" "defaultRenderLayer.adjs[0].plg";
connectAttr ":defaultRenderGlobals.ren" "defaultRenderLayer.adjs[13].plg";
connectAttr ":defaultRenderGlobals.edl" "defaultRenderLayer.adjs[14].plg";
connectAttr ":miDefaultOptions.minsp" "defaultRenderLayer.adjs[15].plg";
connectAttr ":miDefaultOptions.maxsp" "defaultRenderLayer.adjs[16].plg";
connectAttr ":miDefaultOptions.fil" "defaultRenderLayer.adjs[17].plg";
connectAttr ":miDefaultOptions.filw" "defaultRenderLayer.adjs[18].plg";
connectAttr ":miDefaultOptions.filh" "defaultRenderLayer.adjs[19].plg";
connectAttr ":miDefaultOptions.conr" "defaultRenderLayer.adjs[20].plg";
connectAttr ":miDefaultOptions.cong" "defaultRenderLayer.adjs[21].plg";
connectAttr ":miDefaultOptions.conb" "defaultRenderLayer.adjs[22].plg";
connectAttr ":miDefaultOptions.cona" "defaultRenderLayer.adjs[23].plg";
connectAttr ":miDefaultOptions.ray" "defaultRenderLayer.adjs[24].plg";
connectAttr ":miDefaultOptions.rflr" "defaultRenderLayer.adjs[25].plg";
connectAttr ":miDefaultOptions.rfrr" "defaultRenderLayer.adjs[26].plg";
connectAttr ":miDefaultOptions.maxr" "defaultRenderLayer.adjs[27].plg";
connectAttr ":miDefaultOptions.shrd" "defaultRenderLayer.adjs[28].plg";
connectAttr ":frontShape.col" "defaultRenderLayer.adjs[30].plg";
connectAttr ":perspShape.col" "defaultRenderLayer.adjs[31].plg";
connectAttr ":sideShape.col" "defaultRenderLayer.adjs[32].plg";
connectAttr ":topShape.col" "defaultRenderLayer.adjs[33].plg";
connectAttr "Generic_Scene:place2dTexture1.o" "Generic_Scene:checker1.uv";
connectAttr "Generic_Scene:place2dTexture1.ofs" "Generic_Scene:checker1.fs";
connectAttr "Generic_Scene:phong1SG.msg" "Generic_Scene:materialInfo1.sg";
connectAttr "Generic_Scene:phong2SG.msg" "Generic_Scene:materialInfo2.sg";
connectAttr "Generic_Scene:blinn1SG.msg" "Generic_Scene:materialInfo3.sg";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
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
connectAttr ":PreviewImrRayTracyOff.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewImrRayTracyOn.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "mentalrayTexture1.msg" ":mentalrayGlobals.tx[0]";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "mib_blackbody1.msg" "hyperLayout1.hyp[2].dn";
connectAttr "mia_material_x1SG.msg" "hyperLayout1.hyp[3].dn";
connectAttr "dgs_material1SG.msg" "hyperLayout1.hyp[4].dn";
connectAttr "mi_car_paint_phen_x1SG.msg" "hyperLayout1.hyp[5].dn";
connectAttr "mia_material1SG.msg" "hyperLayout1.hyp[6].dn";
connectAttr "Test04.msg" "hyperLayout1.hyp[14].dn";
connectAttr "AO.msg" "hyperLayout1.hyp[15].dn";
connectAttr "beauty.msg" "hyperLayout1.hyp[16].dn";
connectAttr "diffuseNoShadow.msg" "hyperLayout1.hyp[17].dn";
connectAttr "shadowRaw.msg" "hyperLayout1.hyp[18].dn";
connectAttr "reflection.msg" "hyperLayout1.hyp[19].dn";
connectAttr "refraction.msg" "hyperLayout1.hyp[20].dn";
connectAttr "shadow.msg" "hyperLayout1.hyp[21].dn";
connectAttr "specular.msg" "hyperLayout1.hyp[22].dn";
connectAttr "Test05.msg" "hyperLayout1.hyp[23].dn";
connectAttr "depth.msg" "hyperLayout1.hyp[24].dn";
connectAttr "mib_blackbody1.S02" "physical_light2.S00";
connectAttr "mib_blackbody1.S02A" "physical_light2.S00A";
connectAttr "mia_material_x1SG.msg" "materialInfo5.sg";
connectAttr "dgs_material1SG.msg" "materialInfo6.sg";
connectAttr "mi_car_paint_phen_x1SG.msg" "materialInfo7.sg";
connectAttr "mia_material1SG.msg" "materialInfo8.sg";
connectAttr "mib_illum_phong1SG.msg" "materialInfo9.sg";
connectAttr "mia_material2SG.msg" "materialInfo10.sg";
connectAttr "mi_car_paint_phen_x_passes1.msg" "mi_car_paint_phen_x_passes1SG.mims"
		;
connectAttr "mi_car_paint_phen_x_passes1SG.msg" "materialInfo11.sg";
connectAttr "mi_car_paint_phen_x_passes1.msg" "materialInfo11.m";
connectAttr "mia_material_x_passes1.msg" "mia_material_x_passes1SG.mims";
connectAttr "mia_material_x_passes1.msg" "mia_material_x_passes1SG.mips";
connectAttr "mia_material_x_passes1.msg" "mia_material_x_passes1SG.miss";
connectAttr "mia_material_x_passes1SG.msg" "materialInfo12.sg";
connectAttr "mia_material_x_passes1.msg" "materialInfo12.m";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "layerManager.dli[2]" "layer2.id";
connectAttr "renderLayerManager.rlmi[1]" "Main_Render.rlid";
connectAttr "mia_material_x_passes2.msg" "mia_material_x_passes2SG.mims";
connectAttr "mia_material_x_passes2.msg" "mia_material_x_passes2SG.mips";
connectAttr "mia_material_x_passes2.msg" "mia_material_x_passes2SG.miss";
connectAttr "mia_material_x_passes2SG.msg" "materialInfo13.sg";
connectAttr "mia_material_x_passes2.msg" "materialInfo13.m";
connectAttr "bump2d1.o" "mia_material_x_passes3.S71";
connectAttr "mia_material_x_passes3.msg" "mia_material_x_passes3SG.mims";
connectAttr "mia_material_x_passes3.msg" "mia_material_x_passes3SG.mips";
connectAttr "mia_material_x_passes3.msg" "mia_material_x_passes3SG.miss";
connectAttr "mia_material_x_passes3SG.msg" "materialInfo14.sg";
connectAttr "mia_material_x_passes3.msg" "materialInfo14.m";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo15.sg";
connectAttr "blinn1.msg" "materialInfo15.m";
connectAttr "mia_material_x_passes4SG.msg" "materialInfo16.sg";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file1.oa" "bump2d1.bv";
connectAttr "renderLayerManager.rlmi[2]" "Matte.rlid";
connectAttr "mentalrayTexture1.msg" "misss_fast_skin_maya1.s00";
connectAttr "misss_fast_skin_maya1.S36" "misss_fast_skin_maya1SG.mims";
connectAttr "misss_fast_lmap_maya1.msg" "misss_fast_skin_maya1SG.milm";
connectAttr "misss_fast_skin_maya1SG.msg" "materialInfo17.sg";
connectAttr "misss_fast_skin_maya1.msg" "materialInfo17.m";
connectAttr "expression1.out[0]" "mentalrayTexture1.miwd";
connectAttr "expression2.out[0]" "mentalrayTexture1.mihg";
connectAttr ":defaultResolution.w" "expression1.in[0]";
connectAttr ":time1.o" "expression1.tim";
connectAttr ":defaultResolution.h" "expression2.in[0]";
connectAttr ":time1.o" "expression2.tim";
connectAttr "mentalrayTexture1.msg" "misss_fast_lmap_maya1.s00";
connectAttr "mask_red.oc" "surfaceShader1SG.ss";
connectAttr "surfaceShader1SG.msg" "materialInfo18.sg";
connectAttr "mask_red.msg" "materialInfo18.m";
connectAttr "mask_red.msg" "materialInfo18.t" -na;
connectAttr "renderLayerManager.rlmi[3]" "ID.rlid";
connectAttr ":miDefaultOptions.fg" "ID.adjs[0].plg";
connectAttr "misss_fast_shader_x_passes1SG.msg" "materialInfo19.sg";
connectAttr "mask_blue.oc" "mask_blueSG.ss";
connectAttr "mask_blueSG.msg" "materialInfo20.sg";
connectAttr "mask_blue.msg" "materialInfo20.m";
connectAttr "mask_blue.msg" "materialInfo20.t" -na;
connectAttr "mask_green.oc" "mask_greenSG.ss";
connectAttr "mask_greenSG.msg" "materialInfo21.sg";
connectAttr "mask_green.msg" "materialInfo21.m";
connectAttr "mask_green.msg" "materialInfo21.t" -na;
connectAttr "pasted__mib_blackbody1.S02" "pasted__physical_light2.S00";
connectAttr "pasted__mib_blackbody1.S02A" "pasted__physical_light2.S00A";
connectAttr "ID.rps" "Test04.ow" -na;
connectAttr "Test04.rps" "AO.ow" -na;
connectAttr "Test04.rps" "beauty.ow" -na;
connectAttr "Test04.rps" "diffuseNoShadow.ow" -na;
connectAttr "Test04.rps" "shadowRaw.ow" -na;
connectAttr "Test04.rps" "reflection.ow" -na;
connectAttr "Test04.rps" "refraction.ow" -na;
connectAttr "Test04.rps" "shadow.ow" -na;
connectAttr "Test04.rps" "specular.ow" -na;
connectAttr "Test05.rps" "depth.ow" -na;
connectAttr "layerManager.dli[3]" "Lights_for_viewing_MA:pasted__Lights.id";
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:polySurface1SG.msg" "Lights_for_viewing_MA:AnglerMonsterv:materialInfo1.sg"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.o" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.uv"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.ofu" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.ofu"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.ofv" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.ofv"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.rf" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.rf"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.reu" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.reu"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.rev" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.rev"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.vt1" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.vt1"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.vt2" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.vt2"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.vt3" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.vt3"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.vc1" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.vc1"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.ofs" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.fs"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.oa" "Lights_for_viewing_MA:AnglerMonsterv:bump2d1.bv"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.o" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.uv"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.ofu" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.ofu"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.ofv" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.ofv"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.rf" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.rf"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.reu" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.reu"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.rev" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.rev"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.vt1" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vt1"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.vt2" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vt2"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.vt3" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vt3"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.vc1" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vc1"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.ofs" "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.fs"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.o" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.uv"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.ofu" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.ofu"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.ofv" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.ofv"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.rf" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.rf"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.reu" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.reu"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.rev" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.rev"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.vt1" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.vt1"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.vt2" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.vt2"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.vt3" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.vt3"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.vc1" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.vc1"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.ofs" "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.fs"
		;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:surfaceShader1SG.msg" "Lights_for_viewing_MA:AnglerMonsterv:materialInfo2.sg"
		;
connectAttr "layerManager.dli[4]" "Lights_for_viewing_MA1:pasted__Lights.id";
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:polySurface1SG.msg" "Lights_for_viewing_MA1:AnglerMonsterv:materialInfo1.sg"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.o" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.uv"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.ofu" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.ofu"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.ofv" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.ofv"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.rf" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.rf"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.reu" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.reu"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.rev" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.rev"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.vt1" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.vt1"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.vt2" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.vt2"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.vt3" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.vt3"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.vc1" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.vc1"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.ofs" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.fs"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.oa" "Lights_for_viewing_MA1:AnglerMonsterv:bump2d1.bv"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.o" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.uv"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.ofu" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.ofu"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.ofv" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.ofv"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.rf" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.rf"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.reu" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.reu"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.rev" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.rev"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.vt1" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vt1"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.vt2" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vt2"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.vt3" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vt3"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.vc1" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vc1"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.ofs" "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.fs"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.o" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.uv"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.ofu" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.ofu"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.ofv" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.ofv"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.rf" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.rf"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.reu" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.reu"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.rev" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.rev"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.vt1" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.vt1"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.vt2" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.vt2"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.vt3" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.vt3"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.vc1" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.vc1"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.ofs" "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.fs"
		;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:surfaceShader1SG.msg" "Lights_for_viewing_MA1:AnglerMonsterv:materialInfo2.sg"
		;
connectAttr "layerManager.dli[5]" "Lights_for_viewing_MA2:pasted__Lights.id";
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:polySurface1SG.msg" "Lights_for_viewing_MA2:AnglerMonsterv:materialInfo1.sg"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.o" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.uv"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.ofu" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.ofu"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.ofv" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.ofv"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.rf" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.rf"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.reu" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.reu"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.rev" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.rev"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.vt1" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.vt1"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.vt2" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.vt2"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.vt3" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.vt3"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.vc1" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.vc1"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.ofs" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.fs"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.oa" "Lights_for_viewing_MA2:AnglerMonsterv:bump2d1.bv"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.o" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.uv"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.ofu" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.ofu"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.ofv" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.ofv"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.rf" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.rf"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.reu" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.reu"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.rev" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.rev"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.vt1" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vt1"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.vt2" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vt2"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.vt3" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vt3"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.vc1" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.vc1"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.ofs" "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.fs"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.o" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.uv"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.ofu" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.ofu"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.ofv" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.ofv"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.rf" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.rf"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.reu" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.reu"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.rev" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.rev"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.vt1" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.vt1"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.vt2" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.vt2"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.vt3" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.vt3"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.vc1" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.vc1"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.ofs" "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.fs"
		;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:surfaceShader1SG.msg" "Lights_for_viewing_MA2:AnglerMonsterv:materialInfo2.sg"
		;
connectAttr "layerManager.dli[6]" "Lights_for_viewing_MA3:pasted__Lights.id";
connectAttr "renderLayerManager.rlmi[4]" "AO1.rlid";
connectAttr ":defaultRenderGlobals.ren" "AO1.adjs[0].plg";
connectAttr ":defaultRenderGlobals.edl" "AO1.adjs[1].plg";
connectAttr ":miDefaultOptions.minsp" "AO1.adjs[2].plg";
connectAttr ":miDefaultOptions.maxsp" "AO1.adjs[3].plg";
connectAttr ":miDefaultOptions.fil" "AO1.adjs[4].plg";
connectAttr ":miDefaultOptions.filw" "AO1.adjs[5].plg";
connectAttr ":miDefaultOptions.filh" "AO1.adjs[6].plg";
connectAttr ":miDefaultOptions.conr" "AO1.adjs[7].plg";
connectAttr ":miDefaultOptions.cong" "AO1.adjs[8].plg";
connectAttr ":miDefaultOptions.conb" "AO1.adjs[9].plg";
connectAttr ":miDefaultOptions.cona" "AO1.adjs[10].plg";
connectAttr ":miDefaultOptions.ray" "AO1.adjs[11].plg";
connectAttr ":miDefaultOptions.rflr" "AO1.adjs[12].plg";
connectAttr ":miDefaultOptions.rfrr" "AO1.adjs[13].plg";
connectAttr ":miDefaultOptions.maxr" "AO1.adjs[14].plg";
connectAttr ":miDefaultOptions.shrd" "AO1.adjs[15].plg";
connectAttr ":frontShape.col" "AO1.adjs[17].plg";
connectAttr ":perspShape.col" "AO1.adjs[18].plg";
connectAttr ":sideShape.col" "AO1.adjs[19].plg";
connectAttr ":topShape.col" "AO1.adjs[20].plg";
connectAttr "set1.msg" "AO1.sgo";
connectAttr "mib_amb_occlusion1.S11" "surfaceShader2.oc";
connectAttr "surfaceShader2.oc" "set1.ss";
connectAttr "set1.msg" "materialInfo22.sg";
connectAttr "surfaceShader2.msg" "materialInfo22.m";
connectAttr "surfaceShader2.msg" "materialInfo22.t" -na;
connectAttr "Hammer_Lo:initialShadingGroup1.oc" "Hammer_Lo:initialShadingGroup.ss"
		;
connectAttr "Hammer_Lo:initialShadingGroup.msg" "Hammer_Lo:materialInfo1.sg";
connectAttr "Hammer_Lo:initialShadingGroup1.msg" "Hammer_Lo:materialInfo1.m";
connectAttr "Hammer_Lo1:initialShadingGroup1.oc" "Hammer_Lo1:initialShadingGroup.ss"
		;
connectAttr "Hammer_Lo1:initialShadingGroup.msg" "Hammer_Lo1:materialInfo1.sg";
connectAttr "Hammer_Lo1:initialShadingGroup1.msg" "Hammer_Lo1:materialInfo1.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "Generic_Scene:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "Generic_Scene:phong2SG.pa" ":renderPartition.st" -na;
connectAttr "Generic_Scene:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x1SG.pa" ":renderPartition.st" -na;
connectAttr "dgs_material1SG.pa" ":renderPartition.st" -na;
connectAttr "mi_car_paint_phen_x1SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material1SG.pa" ":renderPartition.st" -na;
connectAttr "mib_illum_phong1SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material2SG.pa" ":renderPartition.st" -na;
connectAttr "mi_car_paint_phen_x_passes1SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x_passes1SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x_passes2SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x_passes3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x_passes4SG.pa" ":renderPartition.st" -na;
connectAttr "misss_fast_skin_maya1SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "misss_fast_shader_x_passes1SG.pa" ":renderPartition.st" -na;
connectAttr "mask_blueSG.pa" ":renderPartition.st" -na;
connectAttr "mask_greenSG.pa" ":renderPartition.st" -na;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:polySurface1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:surfaceShader1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:polySurface1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:surfaceShader1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:polySurface1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:surfaceShader1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "Hammer_Lo:initialShadingGroup.pa" ":renderPartition.st" -na;
connectAttr "Hammer_Lo1:initialShadingGroup.pa" ":renderPartition.st" -na;
connectAttr "mi_car_paint_phen_x_passes1.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_material_x_passes1.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_material_x_passes2.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_material_x_passes3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "misss_fast_skin_maya1.msg" ":defaultShaderList1.s" -na;
connectAttr "mask_red.msg" ":defaultShaderList1.s" -na;
connectAttr "mask_blue.msg" ":defaultShaderList1.s" -na;
connectAttr "mask_green.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "Hammer_Lo:initialShadingGroup1.msg" ":defaultShaderList1.s" -na;
connectAttr "Hammer_Lo1:initialShadingGroup1.msg" ":defaultShaderList1.s" -na;
connectAttr "Generic_Scene:checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_Diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:ReflectionMap.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_Diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:ReflectionMap.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_Diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:lambert1_Flattened_NormalFBXASC032Map.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:ReflectionMap.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "mib_amb_occlusion1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Generic_Scene:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "physical_light1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "physical_light2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mib_blackbody1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__physical_light2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__mib_blackbody1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:bump2d1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA:AnglerMonsterv:place2dTexture3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:bump2d1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA1:AnglerMonsterv:place2dTexture3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:bump2d1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Lights_for_viewing_MA2:AnglerMonsterv:place2dTexture3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Main_Render.msg" ":defaultRenderingList1.r" -na;
connectAttr "Matte.msg" ":defaultRenderingList1.r" -na;
connectAttr "ID.msg" ":defaultRenderingList1.r" -na;
connectAttr "AO.msg" ":defaultRenderingList1.r" -na;
connectAttr "beauty.msg" ":defaultRenderingList1.r" -na;
connectAttr "diffuseNoShadow.msg" ":defaultRenderingList1.r" -na;
connectAttr "shadowRaw.msg" ":defaultRenderingList1.r" -na;
connectAttr "reflection.msg" ":defaultRenderingList1.r" -na;
connectAttr "refraction.msg" ":defaultRenderingList1.r" -na;
connectAttr "shadow.msg" ":defaultRenderingList1.r" -na;
connectAttr "specular.msg" ":defaultRenderingList1.r" -na;
connectAttr "depth.msg" ":defaultRenderingList1.r" -na;
connectAttr "AO1.msg" ":defaultRenderingList1.r" -na;
connectAttr ":perspShape.msg" ":defaultRenderGlobals.sc";
// End of Broken Empty.ma

