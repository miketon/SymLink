//Maya ASCII 2015 scene
//Name: dota2_axeRig_walk.ma
//Last modified: Tue, Jul 15, 2014 07:38:14 AM
//Codeset: UTF-8
file -rdi 1 -ns "dota2_axeRig_mton_ScaleHack" -rfn "dota2_axeRig_mton_ScaleHackRN"
		 -op "v=0;" "/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/DOTA2/dota2_axeRig/dota2_axeRig_mton_ScaleHack.ma";
file -r -ns "dota2_axeRig_mton_ScaleHack" -dr 1 -rfn "dota2_axeRig_mton_ScaleHackRN"
		 -op "v=0;" "/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/DOTA2/dota2_axeRig/dota2_axeRig_mton_ScaleHack.ma";
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.12 ";
requires "vstUtils" "1.0";
requires "vsMaster" "1.0";
requires "PVstFlexSliderNode.py" "Unknown";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Mac OS X 10.9.4";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4276516141566935 2.0080998897885327 6.4035280024381747 ;
	setAttr ".r" -type "double3" -8.1383527306765053 36.600000000128624 -4.952175898873643e-16 ;
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" 1.7257424451833846e-15 1.9746642654648534e-16 -1.3010081742076103e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 7.8441484800852646;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.0498931301930079 1.5940558407983272 -0.019028095670999168 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr -s 3 ".b";
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
	setAttr ".t" -type "double3" -0.072841352341241422 0.59042733564217142 100.11035886782999 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 2.620371225953368;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.10462929745971 0.82995110838783759 -0.068657070269260378 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.7192493022223851;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 22 ".lnk";
	setAttr -s 22 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "dota2_axeRig_mton_ScaleHackRN";
	setAttr -s 355 ".phl";
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
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"dota2_axeRig_mton_ScaleHackRN"
		"dota2_axeRig_mton_ScaleHackRN" 0
		"dota2_axeRig_mton_ScaleHackRN" 474
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:axe_mesh|dota2_axeRig_mton_ScaleHack:AXE_6K_GROUP|dota2_axeRig_mton_ScaleHack:Axe_Weapon" 
		"visibility" " 1"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip" 
		"translate" " -type \"double3\" 1.3421688368275031 3.50322061418623587 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip" 
		"translateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder" 
		"translate" " -type \"double3\" 2.47610457304710874 -1.72925652895645543 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder" 
		"translateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder" 
		"translateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder" 
		"rotate" " -type \"double3\" 1.28392394503282103 -0.56087875844439627 5.65728254419083676"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head" 
		"rotate" " -type \"double3\" -2.50658179392927094 0 -5.76897632125145599"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02" 
		"rotate" " -type \"double3\" -20.62008224210000051 0 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"JawOpen" " -av -k 1 0.10370366131818108"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"JawSideways" " -av -k 1 -0.19259255020706623"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"LipPuckerer" " -av -k 1 -0.25925931224116727"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"Lip_Stretcher" " -av -k 1 -0.34951987927179079"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"LowerLipSuck" " -av -k 1 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"LowerLipsTowardAndPart" " -av -k 1 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"NoseWrinkler" " -av -k 1 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"NostrilDilator" " -av -k 1 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"OuterBrowRaiser" " -av -k 1 -0.14003666821922256"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"PhonemeBMP" " -av -k 1 0.025925931224116724"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"PhonemeFV" " -av -k 1 -0.48148169340909475"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"Squint" " -av -k 1 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1" 
		"UpperLipFunneler" " -av -k 1 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01" 
		"rotate" " -type \"double3\" -1.17547840015862914 0 -2.35932679312420923"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02" 
		"rotate" " -type \"double3\" -12.65399759503871735 -2.03193280392374742 -7.16944299181350164"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand" 
		"translate" " -type \"double3\" 8.3716805529840066 -14.02217300874237083 -11.39853435896959155"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand" 
		"translateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand" 
		"translateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand" 
		"rotate" " -type \"double3\" 10.82075034116070889 0 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02" 
		"rotate" " -type \"double3\" 19.11061518295105799 19.5232477834875624 37.64087181637590618"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04" 
		"rotate" " -type \"double3\" 9.00036610359248357 21.32024879032919529 34.36294334604362888"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01" 
		"rotate" " -type \"double3\" 3.21014619276340385 6.31989545067674907 6.85897143747525551"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02" 
		"rotate" " -type \"double3\" 33.82274772930330897 29.55669838673984984 36.83736264236612357"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03" 
		"rotate" " -type \"double3\" -43.61923969886696995 39.57119655239657874 16.06889890668429288"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01" 
		"rotate" " -type \"double3\" -22.98032693466889498 43.85410198216249711 -41.27813267435206512"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02" 
		"translateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02" 
		"translateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02" 
		"rotate" " -type \"double3\" 77.48455079498174314 0 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon" 
		"visibility" " -av 1"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon" 
		"translate" " -type \"double3\" 50.28471924956966888 1.13295273575489786 1.54208315833407372"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon" 
		"translateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon" 
		"translateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon" 
		"rotate" " -type \"double3\" -89.57474081876850391 -142.63265646902999606 89.74189744773677546"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_footPV" 
		"translate" " -type \"double3\" 5 0 0"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_footPV" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot" 
		"visibility" " -av 1"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot" 
		"translate" " -type \"double3\" 19.99999999999999289 16.55002488514557513 -42.52547766479737845"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot" 
		"translateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot" 
		"translateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot" 
		"rotate" " -type \"double3\" 33.76832209600883772 12.08493647027843565 7.40874267128151232"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_footPV" 
		"translate" " -type \"double3\" -5 0 -0.20671793855600001"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_footPV" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot" 
		"translate" " -type \"double3\" -20 0 17.27664868954676791"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot" 
		"translateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot" 
		"translateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot" 
		"rotate" " -type \"double3\" 0 -17.06665678570795563 -0.42648912395256017"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand" 
		"translate" " -type \"double3\" -6.28730630513187183 -1.81543883494820046 -37.05732358159224304"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand" 
		"translateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand" 
		"translateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand" 
		"translateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand" 
		"rotate" " -type \"double3\" 57.46453093009674262 -0.013189841096900957 -5.91229058284956288"
		
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand" 
		"rotateX" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand" 
		"rotateY" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand" 
		"rotateZ" " -av"
		2 "|dota2_axeRig_mton_ScaleHack:SurvivalKitAnimation_UVGuide_SurvivalKitAnimation_UVGuide" 
		"visibility" " 0"
		2 "dota2_axeRig_mton_ScaleHack:axe_lod0" "displayType" " 2"
		2 "dota2_axeRig_mton_ScaleHack:BaseAnimation" "preferred" " 0"
		2 "dota2_axeRig_mton_ScaleHack:BaseAnimation" "selected" " 0"
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[1]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[2]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[3]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[4]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[5]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[6]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[7]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[8]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[9]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[10]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[11]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[12]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[13]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[14]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[15]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[16]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[17]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[18]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[19]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[20]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[21]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[22]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[23]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[24]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[25]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[26]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[27]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[28]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[29]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[30]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[31]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[32]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[33]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[34]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[35]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[36]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[37]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[38]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[39]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[40]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.rotateOrder" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[41]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[42]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[43]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[44]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[45]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[46]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[47]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[48]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[49]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[50]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[51]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[52]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[53]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[54]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[55]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[56]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[57]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[58]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[59]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[60]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[61]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[62]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.rotateOrder" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[63]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[64]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[65]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:l_beard.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[66]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:l_beard.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[67]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:l_beard.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[68]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:l_beard.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[69]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:l_beard.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[70]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:l_beard.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[71]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:l_beard.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[72]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:r_beard.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[73]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:r_beard.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[74]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:r_beard.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[75]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:r_beard.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[76]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:r_beard.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[77]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:r_beard.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[78]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:r_beard.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[79]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[80]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[81]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[82]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[83]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[84]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[85]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[86]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[87]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[88]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[89]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[90]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[91]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[92]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[93]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[94]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[95]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[96]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[97]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[98]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[99]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[100]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[101]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[102]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[103]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[104]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[105]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[106]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[107]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04|dota2_axeRig_mton_ScaleHack:hair_1_05.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[108]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04|dota2_axeRig_mton_ScaleHack:hair_1_05.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[109]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04|dota2_axeRig_mton_ScaleHack:hair_1_05.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[110]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04|dota2_axeRig_mton_ScaleHack:hair_1_05.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[111]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04|dota2_axeRig_mton_ScaleHack:hair_1_05.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[112]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04|dota2_axeRig_mton_ScaleHack:hair_1_05.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[113]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:hair_1_01|dota2_axeRig_mton_ScaleHack:hair_1_02|dota2_axeRig_mton_ScaleHack:hair_1_03|dota2_axeRig_mton_ScaleHack:hair_1_04|dota2_axeRig_mton_ScaleHack:hair_1_05.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[114]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.InnerBrowRaiser" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[115]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.OuterBrowRaiser" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[116]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.BrowLowerer" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[117]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.Squint" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[118]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.CheekRaiser" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[119]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.Dimpler" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[120]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.NoseWrinkler" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[121]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.NostrilDilator" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[122]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.LipPressor" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[123]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.LipCornerPuller" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[124]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.Lip_Stretcher" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[125]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.LipPuckerer" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[126]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.LowerLipSuck" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[127]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.JawClencher" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[128]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.PhonemeBMP" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[129]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.PhonemeFV" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[130]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.EyeDownandUp" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[131]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.EyeRightandLeft" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[132]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.EyeClosedAndLidRaiser" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[133]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.UpperLipsTowardAndPart" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[134]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.LowerLipsTowardAndPart" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[135]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.UpperLipRaiser" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[136]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.Lower_Depressor_And_Chin_Raiser" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[137]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.LipCornerDepressorAndSharpLipPuller" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[138]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.UpperLipFunneler" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[139]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.LowerLipFunneler" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[140]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.LipSideways" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[141]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.JawSuckandThrust" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[142]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.JawSideways" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[143]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:neck|dota2_axeRig_mton_ScaleHack:head|dota2_axeRig_mton_ScaleHack:faceControl1.JawOpen" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[144]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[145]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[146]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[147]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[148]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[149]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[150]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_01.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[151]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[152]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[153]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[154]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[155]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[156]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[157]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:hip|dota2_axeRig_mton_ScaleHack:torso|dota2_axeRig_mton_ScaleHack:chest|dota2_axeRig_mton_ScaleHack:shoulder|dota2_axeRig_mton_ScaleHack:shoulder_armor_1_02.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[158]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_handPV.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[159]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_handPV.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[160]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_handPV.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[161]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_handPV.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[162]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_handPV.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[163]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_handPV.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[164]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_handPV.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[165]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[166]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[167]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[168]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[169]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[170]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[171]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.rotateOrder" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[172]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[173]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[174]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[175]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[176]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[177]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[178]" ""
		5 3 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[179]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[180]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[181]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[182]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[183]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[184]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[185]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[186]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[187]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[188]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[189]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[190]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[191]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[192]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[193]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[194]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[195]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[196]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[197]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[198]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[199]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[200]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_1_01|dota2_axeRig_mton_ScaleHack:r_finger_1_02|dota2_axeRig_mton_ScaleHack:r_finger_1_04.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[201]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[202]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[203]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[204]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[205]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[206]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[207]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[208]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[209]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[210]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[211]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[212]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[213]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[214]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[215]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[216]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[217]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[218]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[219]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[220]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[221]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_finger_2_01|dota2_axeRig_mton_ScaleHack:r_finger_2_02|dota2_axeRig_mton_ScaleHack:r_finger_2_03.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[222]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[223]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[224]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[225]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[226]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[227]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[228]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[229]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[230]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[231]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[232]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[233]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[234]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[235]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:r_thumb_1_01|dota2_axeRig_mton_ScaleHack:r_thumb_1_02.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[236]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[237]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[238]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[239]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[240]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[241]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[242]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_hand|dota2_axeRig_mton_ScaleHack:weapon.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[243]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_handPV.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[244]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_handPV.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[245]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_handPV.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[246]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_handPV.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[247]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_handPV.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[248]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_handPV.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[249]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_handPV.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[250]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_footPV.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[251]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_footPV.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[252]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_footPV.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[253]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_footPV.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[254]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_footPV.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[255]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_footPV.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[256]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_footPV.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[257]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[258]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[259]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[260]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[261]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[262]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[263]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[264]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot|dota2_axeRig_mton_ScaleHack:r_toe.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[265]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot|dota2_axeRig_mton_ScaleHack:r_toe.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[266]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot|dota2_axeRig_mton_ScaleHack:r_toe.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[267]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot|dota2_axeRig_mton_ScaleHack:r_toe.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[268]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot|dota2_axeRig_mton_ScaleHack:r_toe.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[269]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot|dota2_axeRig_mton_ScaleHack:r_toe.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[270]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:r_foot|dota2_axeRig_mton_ScaleHack:r_toe.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[271]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_footPV.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[272]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_footPV.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[273]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_footPV.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[274]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_footPV.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[275]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_footPV.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[276]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_footPV.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[277]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_footPV.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[278]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[279]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[280]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[281]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[282]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[283]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[284]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[285]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot|dota2_axeRig_mton_ScaleHack:l_toe.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[286]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot|dota2_axeRig_mton_ScaleHack:l_toe.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[287]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot|dota2_axeRig_mton_ScaleHack:l_toe.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[288]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot|dota2_axeRig_mton_ScaleHack:l_toe.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[289]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot|dota2_axeRig_mton_ScaleHack:l_toe.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[290]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot|dota2_axeRig_mton_ScaleHack:l_toe.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[291]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_foot|dota2_axeRig_mton_ScaleHack:l_toe.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[292]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[293]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[294]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[295]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[296]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[297]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[298]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[299]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[300]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[301]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[302]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[303]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[304]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[305]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[306]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[307]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[308]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[309]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[310]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[311]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[312]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[313]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02|dota2_axeRig_mton_ScaleHack:l_finger_1_04.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[314]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02|dota2_axeRig_mton_ScaleHack:l_finger_1_04.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[315]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02|dota2_axeRig_mton_ScaleHack:l_finger_1_04.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[316]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02|dota2_axeRig_mton_ScaleHack:l_finger_1_04.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[317]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02|dota2_axeRig_mton_ScaleHack:l_finger_1_04.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[318]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02|dota2_axeRig_mton_ScaleHack:l_finger_1_04.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[319]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_1_01|dota2_axeRig_mton_ScaleHack:l_finger_1_02|dota2_axeRig_mton_ScaleHack:l_finger_1_04.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[320]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[321]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[322]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[323]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[324]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[325]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[326]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[327]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[328]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[329]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[330]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[331]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[332]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[333]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[334]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02|dota2_axeRig_mton_ScaleHack:l_finger_2_03.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[335]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02|dota2_axeRig_mton_ScaleHack:l_finger_2_03.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[336]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02|dota2_axeRig_mton_ScaleHack:l_finger_2_03.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[337]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02|dota2_axeRig_mton_ScaleHack:l_finger_2_03.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[338]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02|dota2_axeRig_mton_ScaleHack:l_finger_2_03.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[339]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02|dota2_axeRig_mton_ScaleHack:l_finger_2_03.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[340]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_finger_2_01|dota2_axeRig_mton_ScaleHack:l_finger_2_02|dota2_axeRig_mton_ScaleHack:l_finger_2_03.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[341]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[342]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[343]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[344]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[345]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[346]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[347]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[348]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01|dota2_axeRig_mton_ScaleHack:l_thumb_1_02.rotateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[349]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01|dota2_axeRig_mton_ScaleHack:l_thumb_1_02.rotateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[350]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01|dota2_axeRig_mton_ScaleHack:l_thumb_1_02.rotateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[351]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01|dota2_axeRig_mton_ScaleHack:l_thumb_1_02.translateX" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[352]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01|dota2_axeRig_mton_ScaleHack:l_thumb_1_02.translateY" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[353]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01|dota2_axeRig_mton_ScaleHack:l_thumb_1_02.translateZ" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[354]" ""
		5 4 "dota2_axeRig_mton_ScaleHackRN" "|dota2_axeRig_mton_ScaleHack:axe_Rig|dota2_axeRig_mton_ScaleHack:scaleME|dota2_axeRig_mton_ScaleHack:axe_control|dota2_axeRig_mton_ScaleHack:global_control|dota2_axeRig_mton_ScaleHack:l_hand|dota2_axeRig_mton_ScaleHack:l_thumb_1_01|dota2_axeRig_mton_ScaleHack:l_thumb_1_02.visibility" 
		"dota2_axeRig_mton_ScaleHackRN.placeHolderList[355]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
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
createNode animLayer -n "BaseAnimation";
	setAttr -s 2 ".cdly";
	setAttr -s 2 ".chsl";
	setAttr ".pref" yes;
	setAttr ".slct" yes;
	setAttr ".ovrd" yes;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -105.84842371036135 -63.035729435860873 ;
	setAttr ".vh" -type "double2" 108.15276674387111 61.302925203056624 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 372 ".hyp";
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
	setAttr ".hyp[322].nvs" 1920;
	setAttr ".hyp[323].nvs" 1920;
	setAttr ".hyp[324].nvs" 1920;
	setAttr ".hyp[325].nvs" 1920;
	setAttr ".hyp[326].nvs" 1920;
	setAttr ".hyp[327].nvs" 1920;
	setAttr ".hyp[328].nvs" 1920;
	setAttr ".hyp[329].nvs" 1920;
	setAttr ".hyp[330].nvs" 1920;
	setAttr ".hyp[331].nvs" 1920;
	setAttr ".hyp[332].nvs" 1920;
	setAttr ".hyp[333].nvs" 1920;
	setAttr ".hyp[334].x" 198.46615600585938;
	setAttr ".hyp[334].y" 44.341930389404297;
	setAttr ".hyp[334].nvs" 1920;
	setAttr ".hyp[335].x" 198.46615600585938;
	setAttr ".hyp[335].y" 44.341930389404297;
	setAttr ".hyp[335].nvs" 1920;
	setAttr ".hyp[336].x" 395.6090087890625;
	setAttr ".hyp[336].y" 24.699073791503906;
	setAttr ".hyp[336].nvs" 1920;
	setAttr ".hyp[337].x" 1.3233025074005127;
	setAttr ".hyp[337].y" 77.377647399902344;
	setAttr ".hyp[337].nvs" 1920;
	setAttr ".hyp[338].x" 592.75189208984375;
	setAttr ".hyp[338].y" 44.341930389404297;
	setAttr ".hyp[338].nvs" 1920;
	setAttr ".hyp[339].x" 395.6090087890625;
	setAttr ".hyp[339].y" 24.699073791503906;
	setAttr ".hyp[339].nvs" 1920;
	setAttr ".hyp[340].x" 1.3233025074005127;
	setAttr ".hyp[340].y" -1.1937830448150635;
	setAttr ".hyp[340].nvs" 1920;
	setAttr ".hyp[341].x" 789.89471435546875;
	setAttr ".hyp[341].y" 24.699073791503906;
	setAttr ".hyp[341].nvs" 1920;
	setAttr ".hyp[342].x" 1.3233025074005127;
	setAttr ".hyp[342].y" -1.1937830448150635;
	setAttr ".hyp[342].nvs" 1920;
	setAttr ".hyp[343].x" 789.89471435546875;
	setAttr ".hyp[343].y" 24.699073791503906;
	setAttr ".hyp[343].nvs" 1920;
	setAttr ".hyp[344].x" 1.3233025074005127;
	setAttr ".hyp[344].y" -1.1937830448150635;
	setAttr ".hyp[344].nvs" 1920;
	setAttr ".hyp[345].x" 1.3233025074005127;
	setAttr ".hyp[345].y" -1.1937830448150635;
	setAttr ".hyp[345].nvs" 1920;
	setAttr ".hyp[346].x" 987.03759765625;
	setAttr ".hyp[346].y" 44.341930389404297;
	setAttr ".hyp[346].nvs" 1920;
	setAttr ".hyp[347].x" 1.3233025074005127;
	setAttr ".hyp[347].y" -1.1937830448150635;
	setAttr ".hyp[347].nvs" 1920;
	setAttr ".hyp[348].x" 1.3233025074005127;
	setAttr ".hyp[348].y" -1.1937830448150635;
	setAttr ".hyp[348].nvs" 1920;
	setAttr ".hyp[349].x" 1.3233025074005127;
	setAttr ".hyp[349].y" -1.1937830448150635;
	setAttr ".hyp[349].nvs" 1920;
	setAttr ".hyp[350].x" 1.3233025074005127;
	setAttr ".hyp[350].y" -1.1937830448150635;
	setAttr ".hyp[350].nvs" 1920;
	setAttr ".hyp[351].x" 1.3233025074005127;
	setAttr ".hyp[351].y" -1.1937830448150635;
	setAttr ".hyp[351].nvs" 1920;
	setAttr ".hyp[352].x" 1.3233025074005127;
	setAttr ".hyp[352].y" -1.1937830448150635;
	setAttr ".hyp[352].nvs" 1920;
	setAttr ".hyp[353].x" 1.3233025074005127;
	setAttr ".hyp[353].y" -1.1937830448150635;
	setAttr ".hyp[353].nvs" 1920;
	setAttr ".hyp[354].x" 1.3233025074005127;
	setAttr ".hyp[354].y" -1.1937830448150635;
	setAttr ".hyp[354].nvs" 1920;
	setAttr ".hyp[355].x" 1.3233025074005127;
	setAttr ".hyp[355].y" -1.1937830448150635;
	setAttr ".hyp[355].nvs" 1920;
	setAttr ".hyp[356].x" 1184.180419921875;
	setAttr ".hyp[356].y" 24.699073791503906;
	setAttr ".hyp[356].nvs" 1920;
	setAttr ".hyp[357].x" 1.3233025074005127;
	setAttr ".hyp[357].y" -1.1937830448150635;
	setAttr ".hyp[357].nvs" 1920;
	setAttr ".hyp[358].x" 1.3233025074005127;
	setAttr ".hyp[358].y" -1.1937830448150635;
	setAttr ".hyp[358].nvs" 1920;
	setAttr ".hyp[359].x" 1.3233025074005127;
	setAttr ".hyp[359].y" -1.1937830448150635;
	setAttr ".hyp[359].nvs" 1920;
	setAttr ".hyp[360].x" 1.3233025074005127;
	setAttr ".hyp[360].y" -1.1937830448150635;
	setAttr ".hyp[360].nvs" 1920;
	setAttr ".hyp[361].x" 1.3233025074005127;
	setAttr ".hyp[361].y" -1.1937830448150635;
	setAttr ".hyp[361].nvs" 1920;
	setAttr ".hyp[362].x" 1.3233025074005127;
	setAttr ".hyp[362].y" -1.1937830448150635;
	setAttr ".hyp[362].nvs" 1920;
	setAttr ".hyp[363].x" 1.3233025074005127;
	setAttr ".hyp[363].y" -1.1937830448150635;
	setAttr ".hyp[363].nvs" 1920;
	setAttr ".hyp[364].x" 1.3233025074005127;
	setAttr ".hyp[364].y" -1.1937830448150635;
	setAttr ".hyp[364].nvs" 1920;
	setAttr ".hyp[365].x" 1.3233025074005127;
	setAttr ".hyp[365].y" -1.1937830448150635;
	setAttr ".hyp[365].nvs" 1920;
	setAttr ".hyp[366].x" 1.3233025074005127;
	setAttr ".hyp[366].y" -1.1937830448150635;
	setAttr ".hyp[366].nvs" 1920;
	setAttr ".hyp[367].x" 1.3233025074005127;
	setAttr ".hyp[367].y" -1.1937830448150635;
	setAttr ".hyp[367].nvs" 1920;
	setAttr ".hyp[368].x" 1.3233025074005127;
	setAttr ".hyp[368].y" -1.1937830448150635;
	setAttr ".hyp[368].nvs" 1920;
	setAttr ".hyp[369].x" 1.3233025074005127;
	setAttr ".hyp[369].y" -1.1937830448150635;
	setAttr ".hyp[369].nvs" 1920;
	setAttr ".hyp[370].x" 1.3233025074005127;
	setAttr ".hyp[370].y" -1.1937830448150635;
	setAttr ".hyp[370].nvs" 1920;
	setAttr ".hyp[371].x" 2.1429178714752197;
	setAttr ".hyp[371].y" -1.8571484088897705;
	setAttr ".hyp[371].nvs" 1920;
	setAttr ".anf" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 0\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n"
		+ "                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 1\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 1\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 0\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 0\n                -pluginShapes 1\n                -dimensions 0\n                -handles 0\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 0\n            -pluginShapes 1\n            -dimensions 0\n            -handles 0\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 0\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 0\n                -pluginShapes 1\n                -dimensions 0\n                -handles 0\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 0\n            -pluginShapes 1\n            -dimensions 0\n            -handles 0\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 0\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 0\n                -pluginShapes 1\n                -dimensions 0\n                -handles 0\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 0\n            -pluginShapes 1\n            -dimensions 0\n            -handles 0\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 58 -ps 2 100 42 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 1\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 1\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode animCurveTL -n "global_control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "global_control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "global_control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hip_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 -3 12 0 18 3 24 0;
	setAttr -s 6 ".kit[1:5]"  1 18 1 18 1;
	setAttr -s 6 ".kot[1:5]"  1 18 1 18 1;
	setAttr -s 6 ".kix[1:5]"  0.053928762674331665 1 0.065482132136821747 
		1 0.053377393633127213;
	setAttr -s 6 ".kiy[1:5]"  -0.99854481220245361 0 0.99785375595092773 
		0 -0.99857443571090698;
	setAttr -s 6 ".kox[1:5]"  0.053928766399621964 1 0.06548212468624115 
		1 0.053377367556095123;
	setAttr -s 6 ".koy[1:5]"  -0.99854481220245361 0 0.99785375595092773 
		0 -0.99857443571090698;
createNode animCurveTL -n "hip_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 7 12 0 18 7 24 0;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[1:5]"  1 18 1 18 1;
	setAttr -s 6 ".ktl[1:5]" no yes no yes no;
	setAttr -s 6 ".kix[3:5]"  0.022352352738380432 1 0.022940274327993393;
	setAttr -s 6 ".kiy[3:5]"  -0.99975019693374634 0 -0.99973684549331665;
	setAttr -s 6 ".kox[1:5]"  0.022107070311903954 1 0.021930813789367676 
		1 0.021738536655902863;
	setAttr -s 6 ".koy[1:5]"  0.9997556209564209 0 0.9997594952583313 
		0 0.99976372718811035;
createNode animCurveTL -n "hip_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "torso_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "torso_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "torso_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "chest_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "chest_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "chest_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "shoulder_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "shoulder_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "shoulder_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "neck_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "neck_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "neck_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "head_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "head_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "head_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "hair_1_01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hair_1_01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hair_1_01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hair_1_02_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8882570057400001e-14;
createNode animCurveTL -n "hair_1_02_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 166.92498546900001;
createNode animCurveTL -n "hair_1_02_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.7360877670499999;
createNode animCurveTL -n "hair_1_03_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00020116829541699999;
createNode animCurveTL -n "hair_1_03_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.97915803244;
createNode animCurveTL -n "hair_1_03_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.2589218904099999;
createNode animCurveTL -n "hair_1_04_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00022329854329200001;
createNode animCurveTL -n "hair_1_04_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5859663429499999;
createNode animCurveTL -n "hair_1_04_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.46246770554099997;
createNode animCurveTL -n "hair_1_05_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00043781052218200002;
createNode animCurveTL -n "hair_1_05_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.16302900420700001;
createNode animCurveTL -n "hair_1_05_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.72658657440300001;
createNode animCurveTL -n "l_beard_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_beard_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_beard_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_beard_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_beard_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_beard_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "shoulder_armor_1_01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "shoulder_armor_1_01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "shoulder_armor_1_01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "shoulder_armor_1_02_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "shoulder_armor_1_02_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "shoulder_armor_1_02_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "l_foot_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -20.000000000000004 6 -20.000000000000004
		 12 -20 13 -20 24 -20.000000000000004;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "l_foot_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 4.4970255188666881 6 23.345854588721739
		 12 0 13 0 23 0 24 4.4970255188666881;
	setAttr -s 7 ".kit[1:6]"  3 18 1 18 18 1;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 1;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
	setAttr -s 7 ".kix[3:6]"  0.0058556315489113331 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  -0.99998289346694946 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.0049476376734673977 1 1 1 1 0.0049476376734673977;
	setAttr -s 7 ".koy[1:6]"  0.99998778104782104 0 0 0 0 0.99998778104782104;
createNode animCurveTL -n "l_foot_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -42.593811863976306 6 -32.334422965537058
		 12 22.363766324104017 13 21.329575846692837 24 -42.593811863976306;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "l_footPV_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 -5;
createNode animCurveTL -n "l_footPV_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "l_footPV_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.20671793855600001 1 -0.20671793855600001;
createNode animCurveTL -n "l_toe_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_toe_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_toe_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_hand_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -9.3163706504038846 6 -13.319053650063623
		 13 -6.3206542994304504 18 -6 24 -9.3163706504038846;
	setAttr -s 6 ".kit[0:5]"  18 3 3 3 18 1;
	setAttr -s 6 ".kot[0:5]"  18 3 3 3 18 1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "l_hand_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 -2.9064371553078949 13 -2.199161130754157
		 18 0 24 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "l_hand_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 8.1545421449282891 6 -9.2577803530275045
		 13 -38.135450742504126 24 8.1545421449282891;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "l_handPV_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_handPV_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_handPV_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_1_01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.71409296964299995;
createNode animCurveTL -n "l_finger_1_01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.79233147153500005;
createNode animCurveTL -n "l_finger_1_01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.076782367296199999;
createNode animCurveTL -n "l_finger_1_02_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_1_02_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_1_02_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_1_04_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_1_04_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_1_04_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_2_01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_2_01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_2_01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_2_02_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_2_02_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_2_02_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_2_03_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_2_03_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_finger_2_03_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_thumb_1_01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_thumb_1_01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_thumb_1_01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_thumb_1_02_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_thumb_1_02_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "l_thumb_1_02_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_foot_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 20.000000000000004 2 20 10 19.999999999999993
		 11 19.999999999999993 13 19.999999999999993 15 19.999999999999993 18 19.999999999999989
		 21 19.999999999999993 24 20.000000000000004;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTL -n "r_foot_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 1.439778689363 2 0 10 0 11 0 18 24.872874253310638
		 21 20.271674381490705 24 1.439778689363;
	setAttr -s 8 ".kit[4:7]"  3 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".ktl[4:7]" no yes yes yes;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[4:7]"  0.0060374396853148937 1 0.010668064467608929 
		1;
	setAttr -s 8 ".koy[4:7]"  0.99998176097869873 0 -0.99994313716888428 
		0;
createNode animCurveTL -n "r_foot_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 20.087173277570532 2 16.05269156173917
		 10 -33.005490778951483 11 -38.213122447477531 13 -43.101239310207561 15 -40.394274602684789
		 18 -27.546840609733074 21 -6.3480465868765599 24 20.087173277570532;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  0.015105126425623894;
	setAttr -s 10 ".kiy[9]"  0.9998859167098999;
	setAttr -s 10 ".kox[9]"  0.015105126425623894;
	setAttr -s 10 ".koy[9]"  0.9998859167098999;
createNode animCurveTL -n "r_footPV_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 5;
createNode animCurveTL -n "r_footPV_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_footPV_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_toe_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_toe_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_toe_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_hand_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 2 12 0 18 0 24 0;
	setAttr -s 6 ".kit[2:5]"  18 3 3 1;
	setAttr -s 6 ".kot[2:5]"  18 3 3 1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "r_hand_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -6.3966504333164096 6 -1.8813677745048238
		 12 -16.966105732506726 18 -5.6109320140712597 24 -6.3966504333164096;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "r_hand_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 -20 12 -12.77724352067035 18 -13.818488133923861
		 24 -20;
	setAttr -s 5 ".kit[0:4]"  18 1 1 18 1;
	setAttr -s 5 ".kot[0:4]"  18 1 1 18 1;
	setAttr -s 5 ".kix[1:4]"  0.010583781637251377 0.026123668998479843 
		0.079777345061302185 0.010583781637251377;
	setAttr -s 5 ".kiy[1:4]"  -0.99994403123855591 0.99965876340866089 
		-0.99681270122528076 -0.99994403123855591;
	setAttr -s 5 ".kox[1:4]"  0.010583778843283653 0.026123674586415291 
		0.079777345061302185 0.010583778843283653;
	setAttr -s 5 ".koy[1:4]"  -0.99994403123855591 0.99965876340866089 
		-0.99681270122528076 -0.99994403123855591;
createNode animCurveTL -n "r_handPV_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_handPV_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_handPV_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "r_finger_1_01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_1_01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_1_01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_1_02_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_1_02_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_1_02_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_1_04_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_1_04_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_1_04_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_2_01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_2_01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_2_01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_2_02_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_2_02_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_2_02_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_2_03_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_2_03_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_finger_2_03_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_thumb_1_01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_thumb_1_01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_thumb_1_01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_thumb_1_02_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_thumb_1_02_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "r_thumb_1_02_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTL -n "weapon_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 50.284719249569669;
createNode animCurveTL -n "weapon_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1.1329527357548979;
createNode animCurveTL -n "weapon_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1.5420831583340737;
createNode animCurveTU -n "global_control_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "global_control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "global_control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "global_control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hip_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTA -n "hip_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "hip_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "hip_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "torso_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "torso_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "torso_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "torso_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "chest_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "chest_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "chest_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "chest_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "shoulder_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTA -n "shoulder_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 8.3491211213297039 12 0 18 4.9522800977817614
		 24 0;
createNode animCurveTA -n "shoulder_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 -2.1633903810725514
		 24 0;
createNode animCurveTA -n "shoulder_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 -0.55882742041832489
		 24 0;
createNode animCurveTU -n "neck_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "neck_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "neck_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "neck_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "head_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 1 1 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
createNode animCurveTA -n "head_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 -9.6682480138811613 12 0 18 -9.6682480138811613
		 24 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "head_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "head_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 3.1892777084898589 6 3.1892777084898523
		 12 3.1892777084898589 18 3.1892777084898523 24 3.1892777084898589;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "l_beard_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_beard_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_beard_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_beard_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "r_beard_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "r_beard_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "r_beard_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "r_beard_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hair_1_01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "hair_1_01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hair_1_01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hair_1_01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hair_1_02_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "hair_1_02_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -20.620082242100001;
createNode animCurveTA -n "hair_1_02_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hair_1_02_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hair_1_03_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "hair_1_03_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -50.354408654099998;
createNode animCurveTA -n "hair_1_03_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hair_1_03_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hair_1_04_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "hair_1_04_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 147.413059597;
createNode animCurveTA -n "hair_1_04_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hair_1_04_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hair_1_05_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "hair_1_05_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -82.040254179300007;
createNode animCurveTA -n "hair_1_05_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hair_1_05_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "faceControl1_BrowLowerer";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_CheekRaiser";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_Dimpler";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_EyeClosedAndLidRaiser";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_EyeDownandUp";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_EyeRightandLeft";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_InnerBrowRaiser";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_JawClencher";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_JawOpen";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0.30000000000000004 12 0 18 0.4
		 24 0;
createNode animCurveTU -n "faceControl1_JawSideways";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0.4 18 -0.4;
createNode animCurveTU -n "faceControl1_JawSuckandThrust";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_LipCornerDepressorAndSharpLipPuller";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_LipCornerPuller";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_LipPressor";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_LipPuckerer";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 -1 18 0;
createNode animCurveTU -n "faceControl1_LipSideways";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_Lip_Stretcher";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 -0.4;
createNode animCurveTU -n "faceControl1_Lower_Depressor_And_Chin_Raiser";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_LowerLipFunneler";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_LowerLipSuck";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 -1 12 0 18 0;
createNode animCurveTU -n "faceControl1_LowerLipsTowardAndPart";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_NoseWrinkler";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_NostrilDilator";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_OuterBrowRaiser";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 -1 18 0;
createNode animCurveTU -n "faceControl1_PhonemeBMP";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0.1 18 0;
createNode animCurveTU -n "faceControl1_PhonemeFV";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 12 -1 18 1;
createNode animCurveTU -n "faceControl1_Squint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0.29999999999999993 6 -1 7 0 18 0;
createNode animCurveTU -n "faceControl1_UpperLipFunneler";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_UpperLipRaiser";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "faceControl1_UpperLipsTowardAndPart";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "shoulder_armor_1_01_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 9 9 1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "shoulder_armor_1_01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 2.822566160557642 6 0 12 -1.3769213288686717
		 18 0 24 2.822566160557642;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "shoulder_armor_1_01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 6.2120208622334312e-18 18 0
		 24 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "shoulder_armor_1_01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -2.3247338017024664 6 2.6059037867872052
		 12 -4.1496061704001095 18 2.7557599642940489 24 -2.3247338017024664;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "shoulder_armor_1_02_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 1 9 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
createNode animCurveTA -n "shoulder_armor_1_02_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 10.311355672296935 12 -14.491224969416249
		 24 10.311355672296935;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "shoulder_armor_1_02_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.8077714445291722 6 0 12 -2.5264004153451154
		 18 0 24 1.8077714445291722;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 0.98874831199645996 1;
	setAttr -s 6 ".kiy[3:5]"  0 0.14958885312080383 0;
	setAttr -s 6 ".kox[3:5]"  1 0.98874831199645996 1;
	setAttr -s 6 ".koy[3:5]"  0 0.14958885312080383 0;
createNode animCurveTA -n "shoulder_armor_1_02_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -9.8368764047881978 6 0 12 -9.6787466543924943
		 18 0 24 -9.8368764047881978;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "r_handPV_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "r_handPV_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "r_handPV_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "r_handPV_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "r_hand_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 9 9 1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "r_hand_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 29.12628796375812 12 10.820089325211161
		 18 21.780504634461852 24 29.12628796375812;
	setAttr -s 5 ".kit[0:4]"  18 1 1 18 1;
	setAttr -s 5 ".kot[0:4]"  18 1 1 18 1;
	setAttr -s 5 ".kix[1:4]"  0.78400391340255737 0.70033305883407593 
		0.8426511287689209 0.78400391340255737;
	setAttr -s 5 ".kiy[1:4]"  0.62075591087341309 -0.71381616592407227 
		0.53845983743667603 0.62075591087341309;
	setAttr -s 5 ".kox[1:4]"  0.78400373458862305 0.70033323764801025 
		0.8426511287689209 0.78400373458862305;
	setAttr -s 5 ".koy[1:4]"  0.62075608968734741 -0.71381604671478271 
		0.53845983743667603 0.62075608968734741;
createNode animCurveTA -n "r_hand_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "r_hand_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "r_finger_1_01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "r_finger_1_01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "r_finger_1_01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "r_finger_1_01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "r_finger_1_02_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "r_finger_1_02_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 19.110615182951058;
createNode animCurveTA -n "r_finger_1_02_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 19.523247783487562;
createNode animCurveTA -n "r_finger_1_02_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 37.640871816375906;
createNode animCurveTU -n "r_finger_1_04_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "r_finger_1_04_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 9.0003661035924836;
createNode animCurveTA -n "r_finger_1_04_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 21.320248790329195;
createNode animCurveTA -n "r_finger_1_04_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 34.362943346043629;
createNode animCurveTU -n "r_finger_2_01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "r_finger_2_01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 3.2101461927634038;
createNode animCurveTA -n "r_finger_2_01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 6.3198954506767491;
createNode animCurveTA -n "r_finger_2_01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 6.8589714374752555;
createNode animCurveTU -n "r_finger_2_02_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "r_finger_2_02_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 33.822747729303309;
createNode animCurveTA -n "r_finger_2_02_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 29.55669838673985;
createNode animCurveTA -n "r_finger_2_02_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 36.837362642366124;
createNode animCurveTU -n "r_finger_2_03_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "r_finger_2_03_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 -43.61923969886697;
createNode animCurveTA -n "r_finger_2_03_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 39.571196552396579;
createNode animCurveTA -n "r_finger_2_03_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 16.068898906684293;
createNode animCurveTU -n "r_thumb_1_01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "r_thumb_1_01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 -22.980326934668895;
createNode animCurveTA -n "r_thumb_1_01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 43.854101982162497;
createNode animCurveTA -n "r_thumb_1_01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 -41.278132674352065;
createNode animCurveTU -n "r_thumb_1_02_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "r_thumb_1_02_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 77.484550794981743;
createNode animCurveTA -n "r_thumb_1_02_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "r_thumb_1_02_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "weapon_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "weapon_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 -89.574740818768504;
createNode animCurveTA -n "weapon_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 -142.63265646903;
createNode animCurveTA -n "weapon_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 89.741897447736775;
createNode animCurveTU -n "l_handPV_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_handPV_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_handPV_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_handPV_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "r_footPV_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "r_footPV_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "r_footPV_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "r_footPV_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "r_foot_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 1 1 2 1 10 1 11 1 13 1 15 1 18 1 21 1
		 24 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 9 9 9 9 9 
		9 1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
createNode animCurveTA -n "r_foot_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 -11.788650609804781 2 -0.017494664072465659
		 10 0.4456932922225007 11 0.62422273221356706 13 26.083966845850114 15 42.078181055096834
		 18 84.156362110193669 21 67.251525402380494 24 -11.788650609804781;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTA -n "r_foot_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 16.882540998503352 2 17.028821037348362
		 10 16.40632307620875 11 16.114300010982213 13 14.360965128943077 15 9.3914539749906183
		 18 1.7829079499812333 21 4.8927844408507895 24 16.882540998503352;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  0.98352140188217163;
	setAttr -s 10 ".kiy[9]"  0.18079179525375366;
	setAttr -s 10 ".kox[9]"  0.98352140188217163;
	setAttr -s 10 ".koy[9]"  0.18079179525375366;
createNode animCurveTA -n "r_foot_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 -2.0246341983275049 2 -0.0017642942832184123
		 10 -0.29343533007368622 11 -0.26758021878763805 13 6.3305718386786527 15 8.454496873028237
		 18 16.908993746056474 21 11.63729480001969 24 -2.0246341983275049;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTU -n "r_toe_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "r_toe_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "r_toe_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "r_toe_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "l_footPV_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "l_footPV_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "l_footPV_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTA -n "l_footPV_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0;
createNode animCurveTU -n "l_foot_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 13 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 9 9 1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "l_foot_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 11.468772042097575 6 96.443183859663634
		 12 -12.980061130173356 13 0 23 0 24 11.468772042097575;
	setAttr -s 7 ".kit[4:6]"  3 18 3;
	setAttr -s 7 ".kot[4:6]"  3 18 3;
createNode animCurveTA -n "l_foot_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -16.679594724132134 6 1.9649590203904963
		 12 -16.589780329029825 13 -17.075886710526092 24 -16.679594724132134;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "l_foot_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -3.332676344143183 6 -16.889388102460838
		 12 3.7653339585373655 13 -0.094870784384728374 24 -3.332676344143183;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  0.6468082070350647;
	setAttr -s 6 ".kiy[5]"  -0.7626526951789856;
	setAttr -s 6 ".kox[5]"  0.6468082070350647;
	setAttr -s 6 ".koy[5]"  -0.7626526951789856;
createNode animCurveTU -n "l_toe_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_toe_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_toe_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_toe_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "l_hand_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 13 1 18 1 24 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 9 9 1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "l_hand_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 4.0940110839947028 6 14.3836287954576
		 13 52.635827350662915 24 4.0940110839947028;
	setAttr -s 5 ".kit[0:4]"  18 1 18 1 1;
	setAttr -s 5 ".kot[0:4]"  18 1 18 1 1;
	setAttr -s 5 ".kix[1:4]"  0.54885321855545044 0.50825703144073486 
		0.32922321557998657 0.54885321855545044;
	setAttr -s 5 ".kiy[1:4]"  -0.83591878414154053 0.86120545864105225 
		0.9442521333694458 -0.83591878414154053;
	setAttr -s 5 ".kox[1:4]"  0.54885309934616089 0.50825697183609009 
		0.32922321557998657 0.54885309934616089;
	setAttr -s 5 ".koy[1:4]"  -0.8359188437461853 0.86120539903640747 
		0.9442521333694458 -0.8359188437461853;
createNode animCurveTA -n "l_hand_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -7.3663014225408636 6 -6.3919038433320114
		 13 -0.025761392723058888 18 0 24 -7.3663014225408636;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "l_hand_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -5.1951004376473779 6 -9.1392068090862946
		 13 -7.1425373715336722 18 0 24 -5.1951004376473779;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  0.8430219292640686;
	setAttr -s 6 ".kiy[5]"  -0.53787916898727417;
	setAttr -s 6 ".kox[5]"  0.8430219292640686;
	setAttr -s 6 ".koy[5]"  -0.53787922859191895;
createNode animCurveTU -n "l_finger_1_01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_finger_1_01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_1_01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_1_01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "l_finger_1_02_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_finger_1_02_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_1_02_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_1_02_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "l_finger_1_04_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_finger_1_04_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_1_04_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_1_04_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "l_finger_2_01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_finger_2_01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_2_01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_2_01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "l_finger_2_02_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_finger_2_02_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_2_02_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_2_02_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "l_finger_2_03_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_finger_2_03_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_2_03_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_finger_2_03_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "l_thumb_1_01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_thumb_1_01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_thumb_1_01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_thumb_1_01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "l_thumb_1_02_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "l_thumb_1_02_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_thumb_1_02_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "l_thumb_1_02_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animLayer -n "AxeWeight";
	setAttr -s 21 ".dsm";
	setAttr -s 15 ".bnds";
createNode animBlendNodeBoolean -n "shoulder_visibility_AxeWeight";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "shoulder_translateX_AxeWeight";
	setAttr ".o" 2.4761045730471087;
createNode animBlendNodeAdditiveDL -n "shoulder_translateY_AxeWeight";
	setAttr ".o" -1.7292565289564554;
createNode animBlendNodeAdditiveDL -n "shoulder_translateZ_AxeWeight";
	setAttr ".o" 1.7989717583339661e-16;
createNode animBlendNodeAdditiveRotation -n "shoulder_rotate_AxeWeight";
	setAttr ".o" -type "double3" 1.283923945032821 -0.56087875844439627 5.6572825441908368 ;
createNode animCurveTL -n "shoulder_translateX_AxeWeight_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 2.4761045730471105 6 2.4761045730471136
		 12 2.4761045730471092 18 2.4761045730471078 24 2.4761045730471105;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "shoulder_translateY_AxeWeight_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -1.4145234893171654 6 1.4242305586039672
		 12 -2.8279076937366421 18 1.4097485309913615 24 -1.4145234893171654;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "shoulder_translateZ_AxeWeight_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 2.0816681711721685e-15 12 0 18 6.9388939039072284e-16
		 24 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "shoulder_visibility_AxeWeight_inputB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 6 1 12 1 18 1 24 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "shoulder_rotate_AxeWeight_inputBX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "shoulder_rotate_AxeWeight_inputBY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 6 0 12 0 18 0 24 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "shoulder_rotate_AxeWeight_inputBZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 5.8021636680467727 6 5.8021636680467727
		 12 5.8021636680467727 18 5.8021636680467727 24 5.8021636680467727;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animBlendNodeBoolean -n "dota2_axeRig_mton_ScaleHack:head_visibility_AxeWeight";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "dota2_axeRig_mton_ScaleHack:head_translateX_AxeWeight";
createNode animBlendNodeAdditiveDL -n "dota2_axeRig_mton_ScaleHack:head_translateY_AxeWeight";
createNode animBlendNodeAdditiveDL -n "dota2_axeRig_mton_ScaleHack:head_translateZ_AxeWeight";
createNode animBlendNodeAdditiveRotation -n "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight";
	setAttr ".o" -type "double3" -2.5065817939292709 0 -5.768976321251456 ;
createNode animCurveTA -n "head_rotate_AxeWeight_inputBX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "head_rotate_AxeWeight_inputBY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "head_rotate_AxeWeight_inputBZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -8.9582540297413136;
createNode animCurveTU -n "head_visibility_AxeWeight_inputB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "head_translateX_AxeWeight_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "head_translateY_AxeWeight_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "head_translateZ_AxeWeight_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animBlendNodeBoolean -n "dota2_axeRig_mton_ScaleHack:r_hand_visibility_AxeWeight";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "dota2_axeRig_mton_ScaleHack:r_hand_translateX_AxeWeight";
	setAttr ".o" 8.3716805529840066;
createNode animBlendNodeAdditiveDL -n "dota2_axeRig_mton_ScaleHack:r_hand_translateY_AxeWeight";
	setAttr ".o" -14.022173008742371;
createNode animBlendNodeAdditiveDL -n "dota2_axeRig_mton_ScaleHack:r_hand_translateZ_AxeWeight";
	setAttr ".o" -11.398534358969592;
createNode animBlendNodeAdditiveRotation -n "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight";
	setAttr ".o" -type "double3" 10.820750341160709 0 0 ;
createNode animCurveTL -n "r_hand_translateX_AxeWeight_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 8.3716805529840066;
createNode animCurveTL -n "r_hand_translateY_AxeWeight_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "r_hand_translateZ_AxeWeight_inputB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "r_hand_visibility_AxeWeight_inputB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "r_hand_rotate_AxeWeight_inputBX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "r_hand_rotate_AxeWeight_inputBY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "r_hand_rotate_AxeWeight_inputBZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode cameraView -n "cameraView1";
	setAttr ".e" -type "double3" 4.4276516141566935 2.0080998897885327 6.4035280024381747 ;
	setAttr ".coi" -type "double3" -0.20212456765427422 0.89765160919318654 0.16952908520353382 ;
	setAttr ".u" -type "double3" -0.084403920825393108 0.98992911925515714 -0.11364997580294316 ;
	setAttr ".tp" -type "double3" -1.0498931301930079 1.5940558407983272 -0.019028095670999168 ;
	setAttr ".fl" 34.999999999999986;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 14;
	setAttr ".unw" 14;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 22 ".st";
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
	setAttr -s 16 ".s";
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
	setAttr -s 578 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 13 ".tx";
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
	setAttr -s 22 ".gn";
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
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
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
select -ne :ikSystem;
	setAttr -av ".gsn";
select -ne :hyperGraphInfo;
connectAttr "global_control_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[1]"
		;
connectAttr "global_control_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[2]"
		;
connectAttr "global_control_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[3]"
		;
connectAttr "global_control_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[4]"
		;
connectAttr "global_control_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[5]";
connectAttr "global_control_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[6]";
connectAttr "global_control_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[7]";
connectAttr "hip_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[8]";
connectAttr "hip_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[9]";
connectAttr "hip_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[10]";
connectAttr "hip_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[11]";
connectAttr "hip_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[12]";
connectAttr "hip_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[13]";
connectAttr "hip_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[14]";
connectAttr "torso_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[15]";
connectAttr "torso_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[16]";
connectAttr "torso_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[17]";
connectAttr "torso_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[18]";
connectAttr "torso_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[19]";
connectAttr "torso_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[20]";
connectAttr "torso_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[21]";
connectAttr "chest_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[22]";
connectAttr "chest_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[23]";
connectAttr "chest_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[24]";
connectAttr "chest_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[25]";
connectAttr "chest_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[26]";
connectAttr "chest_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[27]";
connectAttr "chest_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[28]";
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[29]" "AxeWeight.dsm" -na;
connectAttr "shoulder_translateX_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[30]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[31]" "AxeWeight.dsm" -na;
connectAttr "shoulder_translateY_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[32]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[33]" "AxeWeight.dsm" -na;
connectAttr "shoulder_translateZ_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[34]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[35]" "AxeWeight.dsm" -na;
connectAttr "shoulder_rotate_AxeWeight.ox" "dota2_axeRig_mton_ScaleHackRN.phl[36]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[37]" "AxeWeight.dsm" -na;
connectAttr "shoulder_rotate_AxeWeight.oy" "dota2_axeRig_mton_ScaleHackRN.phl[38]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[39]" "AxeWeight.dsm" -na;
connectAttr "shoulder_rotate_AxeWeight.oz" "dota2_axeRig_mton_ScaleHackRN.phl[40]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[41]" "shoulder_rotate_AxeWeight.ro"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[42]" "AxeWeight.dsm" -na;
connectAttr "shoulder_visibility_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[43]"
		;
connectAttr "neck_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[44]";
connectAttr "neck_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[45]";
connectAttr "neck_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[46]";
connectAttr "neck_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[47]";
connectAttr "neck_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[48]";
connectAttr "neck_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[49]";
connectAttr "neck_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[50]";
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[51]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:head_translateX_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[52]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[53]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:head_translateY_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[54]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[55]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:head_translateZ_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[56]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[57]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.ox" "dota2_axeRig_mton_ScaleHackRN.phl[58]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[59]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.oy" "dota2_axeRig_mton_ScaleHackRN.phl[60]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[61]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.oz" "dota2_axeRig_mton_ScaleHackRN.phl[62]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[63]" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.ro"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[64]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:head_visibility_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[65]"
		;
connectAttr "l_beard_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[66]";
connectAttr "l_beard_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[67]";
connectAttr "l_beard_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[68]";
connectAttr "l_beard_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[69]";
connectAttr "l_beard_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[70]";
connectAttr "l_beard_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[71]";
connectAttr "l_beard_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[72]";
connectAttr "r_beard_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[73]";
connectAttr "r_beard_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[74]";
connectAttr "r_beard_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[75]";
connectAttr "r_beard_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[76]";
connectAttr "r_beard_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[77]";
connectAttr "r_beard_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[78]";
connectAttr "r_beard_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[79]";
connectAttr "hair_1_01_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[80]";
connectAttr "hair_1_01_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[81]";
connectAttr "hair_1_01_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[82]";
connectAttr "hair_1_01_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[83]";
connectAttr "hair_1_01_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[84]";
connectAttr "hair_1_01_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[85]";
connectAttr "hair_1_01_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[86]";
connectAttr "hair_1_02_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[87]";
connectAttr "hair_1_02_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[88]";
connectAttr "hair_1_02_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[89]";
connectAttr "hair_1_02_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[90]";
connectAttr "hair_1_02_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[91]";
connectAttr "hair_1_02_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[92]";
connectAttr "hair_1_02_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[93]";
connectAttr "hair_1_03_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[94]";
connectAttr "hair_1_03_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[95]";
connectAttr "hair_1_03_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[96]";
connectAttr "hair_1_03_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[97]";
connectAttr "hair_1_03_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[98]";
connectAttr "hair_1_03_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[99]";
connectAttr "hair_1_03_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[100]";
connectAttr "hair_1_04_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[101]";
connectAttr "hair_1_04_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[102]";
connectAttr "hair_1_04_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[103]";
connectAttr "hair_1_04_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[104]";
connectAttr "hair_1_04_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[105]";
connectAttr "hair_1_04_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[106]";
connectAttr "hair_1_04_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[107]";
connectAttr "hair_1_05_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[108]";
connectAttr "hair_1_05_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[109]";
connectAttr "hair_1_05_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[110]";
connectAttr "hair_1_05_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[111]";
connectAttr "hair_1_05_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[112]";
connectAttr "hair_1_05_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[113]";
connectAttr "hair_1_05_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[114]";
connectAttr "faceControl1_InnerBrowRaiser.o" "dota2_axeRig_mton_ScaleHackRN.phl[115]"
		;
connectAttr "faceControl1_OuterBrowRaiser.o" "dota2_axeRig_mton_ScaleHackRN.phl[116]"
		;
connectAttr "faceControl1_BrowLowerer.o" "dota2_axeRig_mton_ScaleHackRN.phl[117]"
		;
connectAttr "faceControl1_Squint.o" "dota2_axeRig_mton_ScaleHackRN.phl[118]";
connectAttr "faceControl1_CheekRaiser.o" "dota2_axeRig_mton_ScaleHackRN.phl[119]"
		;
connectAttr "faceControl1_Dimpler.o" "dota2_axeRig_mton_ScaleHackRN.phl[120]";
connectAttr "faceControl1_NoseWrinkler.o" "dota2_axeRig_mton_ScaleHackRN.phl[121]"
		;
connectAttr "faceControl1_NostrilDilator.o" "dota2_axeRig_mton_ScaleHackRN.phl[122]"
		;
connectAttr "faceControl1_LipPressor.o" "dota2_axeRig_mton_ScaleHackRN.phl[123]"
		;
connectAttr "faceControl1_LipCornerPuller.o" "dota2_axeRig_mton_ScaleHackRN.phl[124]"
		;
connectAttr "faceControl1_Lip_Stretcher.o" "dota2_axeRig_mton_ScaleHackRN.phl[125]"
		;
connectAttr "faceControl1_LipPuckerer.o" "dota2_axeRig_mton_ScaleHackRN.phl[126]"
		;
connectAttr "faceControl1_LowerLipSuck.o" "dota2_axeRig_mton_ScaleHackRN.phl[127]"
		;
connectAttr "faceControl1_JawClencher.o" "dota2_axeRig_mton_ScaleHackRN.phl[128]"
		;
connectAttr "faceControl1_PhonemeBMP.o" "dota2_axeRig_mton_ScaleHackRN.phl[129]"
		;
connectAttr "faceControl1_PhonemeFV.o" "dota2_axeRig_mton_ScaleHackRN.phl[130]";
connectAttr "faceControl1_EyeDownandUp.o" "dota2_axeRig_mton_ScaleHackRN.phl[131]"
		;
connectAttr "faceControl1_EyeRightandLeft.o" "dota2_axeRig_mton_ScaleHackRN.phl[132]"
		;
connectAttr "faceControl1_EyeClosedAndLidRaiser.o" "dota2_axeRig_mton_ScaleHackRN.phl[133]"
		;
connectAttr "faceControl1_UpperLipsTowardAndPart.o" "dota2_axeRig_mton_ScaleHackRN.phl[134]"
		;
connectAttr "faceControl1_LowerLipsTowardAndPart.o" "dota2_axeRig_mton_ScaleHackRN.phl[135]"
		;
connectAttr "faceControl1_UpperLipRaiser.o" "dota2_axeRig_mton_ScaleHackRN.phl[136]"
		;
connectAttr "faceControl1_Lower_Depressor_And_Chin_Raiser.o" "dota2_axeRig_mton_ScaleHackRN.phl[137]"
		;
connectAttr "faceControl1_LipCornerDepressorAndSharpLipPuller.o" "dota2_axeRig_mton_ScaleHackRN.phl[138]"
		;
connectAttr "faceControl1_UpperLipFunneler.o" "dota2_axeRig_mton_ScaleHackRN.phl[139]"
		;
connectAttr "faceControl1_LowerLipFunneler.o" "dota2_axeRig_mton_ScaleHackRN.phl[140]"
		;
connectAttr "faceControl1_LipSideways.o" "dota2_axeRig_mton_ScaleHackRN.phl[141]"
		;
connectAttr "faceControl1_JawSuckandThrust.o" "dota2_axeRig_mton_ScaleHackRN.phl[142]"
		;
connectAttr "faceControl1_JawSideways.o" "dota2_axeRig_mton_ScaleHackRN.phl[143]"
		;
connectAttr "faceControl1_JawOpen.o" "dota2_axeRig_mton_ScaleHackRN.phl[144]";
connectAttr "shoulder_armor_1_01_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[145]"
		;
connectAttr "shoulder_armor_1_01_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[146]"
		;
connectAttr "shoulder_armor_1_01_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[147]"
		;
connectAttr "shoulder_armor_1_01_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[148]"
		;
connectAttr "shoulder_armor_1_01_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[149]"
		;
connectAttr "shoulder_armor_1_01_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[150]"
		;
connectAttr "shoulder_armor_1_01_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[151]"
		;
connectAttr "shoulder_armor_1_02_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[152]"
		;
connectAttr "shoulder_armor_1_02_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[153]"
		;
connectAttr "shoulder_armor_1_02_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[154]"
		;
connectAttr "shoulder_armor_1_02_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[155]"
		;
connectAttr "shoulder_armor_1_02_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[156]"
		;
connectAttr "shoulder_armor_1_02_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[157]"
		;
connectAttr "shoulder_armor_1_02_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[158]"
		;
connectAttr "r_handPV_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[159]";
connectAttr "r_handPV_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[160]";
connectAttr "r_handPV_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[161]";
connectAttr "r_handPV_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[162]";
connectAttr "r_handPV_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[163]";
connectAttr "r_handPV_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[164]";
connectAttr "r_handPV_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[165]";
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[166]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.ox" "dota2_axeRig_mton_ScaleHackRN.phl[167]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[168]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.oy" "dota2_axeRig_mton_ScaleHackRN.phl[169]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[170]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.oz" "dota2_axeRig_mton_ScaleHackRN.phl[171]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[172]" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.ro"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[173]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_translateX_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[174]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[175]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_translateY_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[176]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[177]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_translateZ_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[178]"
		;
connectAttr "dota2_axeRig_mton_ScaleHackRN.phl[179]" "AxeWeight.dsm" -na;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_visibility_AxeWeight.o" "dota2_axeRig_mton_ScaleHackRN.phl[180]"
		;
connectAttr "r_finger_1_01_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[181]";
connectAttr "r_finger_1_01_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[182]";
connectAttr "r_finger_1_01_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[183]";
connectAttr "r_finger_1_01_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[184]"
		;
connectAttr "r_finger_1_01_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[185]"
		;
connectAttr "r_finger_1_01_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[186]"
		;
connectAttr "r_finger_1_01_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[187]"
		;
connectAttr "r_finger_1_02_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[188]";
connectAttr "r_finger_1_02_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[189]";
connectAttr "r_finger_1_02_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[190]";
connectAttr "r_finger_1_02_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[191]"
		;
connectAttr "r_finger_1_02_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[192]"
		;
connectAttr "r_finger_1_02_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[193]"
		;
connectAttr "r_finger_1_02_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[194]"
		;
connectAttr "r_finger_1_04_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[195]";
connectAttr "r_finger_1_04_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[196]";
connectAttr "r_finger_1_04_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[197]";
connectAttr "r_finger_1_04_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[198]"
		;
connectAttr "r_finger_1_04_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[199]"
		;
connectAttr "r_finger_1_04_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[200]"
		;
connectAttr "r_finger_1_04_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[201]"
		;
connectAttr "r_finger_2_01_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[202]";
connectAttr "r_finger_2_01_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[203]";
connectAttr "r_finger_2_01_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[204]";
connectAttr "r_finger_2_01_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[205]"
		;
connectAttr "r_finger_2_01_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[206]"
		;
connectAttr "r_finger_2_01_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[207]"
		;
connectAttr "r_finger_2_01_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[208]"
		;
connectAttr "r_finger_2_02_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[209]";
connectAttr "r_finger_2_02_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[210]";
connectAttr "r_finger_2_02_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[211]";
connectAttr "r_finger_2_02_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[212]"
		;
connectAttr "r_finger_2_02_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[213]"
		;
connectAttr "r_finger_2_02_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[214]"
		;
connectAttr "r_finger_2_02_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[215]"
		;
connectAttr "r_finger_2_03_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[216]";
connectAttr "r_finger_2_03_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[217]";
connectAttr "r_finger_2_03_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[218]";
connectAttr "r_finger_2_03_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[219]"
		;
connectAttr "r_finger_2_03_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[220]"
		;
connectAttr "r_finger_2_03_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[221]"
		;
connectAttr "r_finger_2_03_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[222]"
		;
connectAttr "r_thumb_1_01_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[223]";
connectAttr "r_thumb_1_01_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[224]";
connectAttr "r_thumb_1_01_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[225]";
connectAttr "r_thumb_1_01_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[226]"
		;
connectAttr "r_thumb_1_01_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[227]"
		;
connectAttr "r_thumb_1_01_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[228]"
		;
connectAttr "r_thumb_1_01_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[229]"
		;
connectAttr "r_thumb_1_02_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[230]";
connectAttr "r_thumb_1_02_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[231]";
connectAttr "r_thumb_1_02_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[232]";
connectAttr "r_thumb_1_02_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[233]"
		;
connectAttr "r_thumb_1_02_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[234]"
		;
connectAttr "r_thumb_1_02_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[235]"
		;
connectAttr "r_thumb_1_02_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[236]"
		;
connectAttr "weapon_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[237]";
connectAttr "weapon_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[238]";
connectAttr "weapon_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[239]";
connectAttr "weapon_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[240]";
connectAttr "weapon_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[241]";
connectAttr "weapon_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[242]";
connectAttr "weapon_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[243]";
connectAttr "l_handPV_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[244]";
connectAttr "l_handPV_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[245]";
connectAttr "l_handPV_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[246]";
connectAttr "l_handPV_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[247]";
connectAttr "l_handPV_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[248]";
connectAttr "l_handPV_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[249]";
connectAttr "l_handPV_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[250]";
connectAttr "r_footPV_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[251]";
connectAttr "r_footPV_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[252]";
connectAttr "r_footPV_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[253]";
connectAttr "r_footPV_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[254]";
connectAttr "r_footPV_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[255]";
connectAttr "r_footPV_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[256]";
connectAttr "r_footPV_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[257]";
connectAttr "r_foot_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[258]";
connectAttr "r_foot_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[259]";
connectAttr "r_foot_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[260]";
connectAttr "r_foot_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[261]";
connectAttr "r_foot_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[262]";
connectAttr "r_foot_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[263]";
connectAttr "r_foot_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[264]";
connectAttr "r_toe_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[265]";
connectAttr "r_toe_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[266]";
connectAttr "r_toe_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[267]";
connectAttr "r_toe_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[268]";
connectAttr "r_toe_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[269]";
connectAttr "r_toe_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[270]";
connectAttr "r_toe_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[271]";
connectAttr "l_footPV_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[272]";
connectAttr "l_footPV_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[273]";
connectAttr "l_footPV_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[274]";
connectAttr "l_footPV_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[275]";
connectAttr "l_footPV_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[276]";
connectAttr "l_footPV_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[277]";
connectAttr "l_footPV_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[278]";
connectAttr "l_foot_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[279]";
connectAttr "l_foot_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[280]";
connectAttr "l_foot_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[281]";
connectAttr "l_foot_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[282]";
connectAttr "l_foot_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[283]";
connectAttr "l_foot_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[284]";
connectAttr "l_foot_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[285]";
connectAttr "l_toe_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[286]";
connectAttr "l_toe_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[287]";
connectAttr "l_toe_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[288]";
connectAttr "l_toe_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[289]";
connectAttr "l_toe_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[290]";
connectAttr "l_toe_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[291]";
connectAttr "l_toe_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[292]";
connectAttr "l_hand_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[293]";
connectAttr "l_hand_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[294]";
connectAttr "l_hand_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[295]";
connectAttr "l_hand_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[296]";
connectAttr "l_hand_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[297]";
connectAttr "l_hand_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[298]";
connectAttr "l_hand_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[299]";
connectAttr "l_finger_1_01_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[300]";
connectAttr "l_finger_1_01_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[301]";
connectAttr "l_finger_1_01_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[302]";
connectAttr "l_finger_1_01_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[303]"
		;
connectAttr "l_finger_1_01_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[304]"
		;
connectAttr "l_finger_1_01_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[305]"
		;
connectAttr "l_finger_1_01_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[306]"
		;
connectAttr "l_finger_1_02_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[307]";
connectAttr "l_finger_1_02_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[308]";
connectAttr "l_finger_1_02_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[309]";
connectAttr "l_finger_1_02_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[310]"
		;
connectAttr "l_finger_1_02_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[311]"
		;
connectAttr "l_finger_1_02_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[312]"
		;
connectAttr "l_finger_1_02_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[313]"
		;
connectAttr "l_finger_1_04_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[314]";
connectAttr "l_finger_1_04_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[315]";
connectAttr "l_finger_1_04_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[316]";
connectAttr "l_finger_1_04_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[317]"
		;
connectAttr "l_finger_1_04_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[318]"
		;
connectAttr "l_finger_1_04_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[319]"
		;
connectAttr "l_finger_1_04_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[320]"
		;
connectAttr "l_finger_2_01_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[321]";
connectAttr "l_finger_2_01_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[322]";
connectAttr "l_finger_2_01_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[323]";
connectAttr "l_finger_2_01_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[324]"
		;
connectAttr "l_finger_2_01_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[325]"
		;
connectAttr "l_finger_2_01_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[326]"
		;
connectAttr "l_finger_2_01_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[327]"
		;
connectAttr "l_finger_2_02_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[328]";
connectAttr "l_finger_2_02_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[329]";
connectAttr "l_finger_2_02_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[330]";
connectAttr "l_finger_2_02_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[331]"
		;
connectAttr "l_finger_2_02_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[332]"
		;
connectAttr "l_finger_2_02_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[333]"
		;
connectAttr "l_finger_2_02_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[334]"
		;
connectAttr "l_finger_2_03_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[335]";
connectAttr "l_finger_2_03_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[336]";
connectAttr "l_finger_2_03_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[337]";
connectAttr "l_finger_2_03_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[338]"
		;
connectAttr "l_finger_2_03_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[339]"
		;
connectAttr "l_finger_2_03_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[340]"
		;
connectAttr "l_finger_2_03_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[341]"
		;
connectAttr "l_thumb_1_01_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[342]";
connectAttr "l_thumb_1_01_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[343]";
connectAttr "l_thumb_1_01_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[344]";
connectAttr "l_thumb_1_01_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[345]"
		;
connectAttr "l_thumb_1_01_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[346]"
		;
connectAttr "l_thumb_1_01_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[347]"
		;
connectAttr "l_thumb_1_01_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[348]"
		;
connectAttr "l_thumb_1_02_rotateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[349]";
connectAttr "l_thumb_1_02_rotateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[350]";
connectAttr "l_thumb_1_02_rotateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[351]";
connectAttr "l_thumb_1_02_translateX.o" "dota2_axeRig_mton_ScaleHackRN.phl[352]"
		;
connectAttr "l_thumb_1_02_translateY.o" "dota2_axeRig_mton_ScaleHackRN.phl[353]"
		;
connectAttr "l_thumb_1_02_translateZ.o" "dota2_axeRig_mton_ScaleHackRN.phl[354]"
		;
connectAttr "l_thumb_1_02_visibility.o" "dota2_axeRig_mton_ScaleHackRN.phl[355]"
		;
connectAttr "cameraView1.msg" ":perspShape.b" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "AxeWeight.sl" "BaseAnimation.chsl[1]";
connectAttr "AxeWeight.play" "BaseAnimation.cdly[2]";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "BaseAnimation.msg" "hyperLayout1.hyp[0].dn";
connectAttr "uiConfigurationScriptNode.msg" "hyperLayout1.hyp[1].dn";
connectAttr "sceneConfigurationScriptNode.msg" "hyperLayout1.hyp[2].dn";
connectAttr "global_control_translateX.msg" "hyperLayout1.hyp[3].dn";
connectAttr "global_control_translateY.msg" "hyperLayout1.hyp[4].dn";
connectAttr "global_control_translateZ.msg" "hyperLayout1.hyp[5].dn";
connectAttr "hip_translateX.msg" "hyperLayout1.hyp[6].dn";
connectAttr "hip_translateY.msg" "hyperLayout1.hyp[7].dn";
connectAttr "hip_translateZ.msg" "hyperLayout1.hyp[8].dn";
connectAttr "torso_translateX.msg" "hyperLayout1.hyp[9].dn";
connectAttr "torso_translateY.msg" "hyperLayout1.hyp[10].dn";
connectAttr "torso_translateZ.msg" "hyperLayout1.hyp[11].dn";
connectAttr "chest_translateX.msg" "hyperLayout1.hyp[12].dn";
connectAttr "chest_translateY.msg" "hyperLayout1.hyp[13].dn";
connectAttr "chest_translateZ.msg" "hyperLayout1.hyp[14].dn";
connectAttr "shoulder_translateX.msg" "hyperLayout1.hyp[15].dn";
connectAttr "shoulder_translateY.msg" "hyperLayout1.hyp[16].dn";
connectAttr "shoulder_translateZ.msg" "hyperLayout1.hyp[17].dn";
connectAttr "neck_translateX.msg" "hyperLayout1.hyp[18].dn";
connectAttr "neck_translateY.msg" "hyperLayout1.hyp[19].dn";
connectAttr "neck_translateZ.msg" "hyperLayout1.hyp[20].dn";
connectAttr "head_translateX.msg" "hyperLayout1.hyp[21].dn";
connectAttr "head_translateY.msg" "hyperLayout1.hyp[22].dn";
connectAttr "head_translateZ.msg" "hyperLayout1.hyp[23].dn";
connectAttr "hair_1_01_translateX.msg" "hyperLayout1.hyp[24].dn";
connectAttr "hair_1_01_translateY.msg" "hyperLayout1.hyp[25].dn";
connectAttr "hair_1_01_translateZ.msg" "hyperLayout1.hyp[26].dn";
connectAttr "hair_1_02_translateX.msg" "hyperLayout1.hyp[27].dn";
connectAttr "hair_1_02_translateY.msg" "hyperLayout1.hyp[28].dn";
connectAttr "hair_1_02_translateZ.msg" "hyperLayout1.hyp[29].dn";
connectAttr "hair_1_03_translateX.msg" "hyperLayout1.hyp[30].dn";
connectAttr "hair_1_03_translateY.msg" "hyperLayout1.hyp[31].dn";
connectAttr "hair_1_03_translateZ.msg" "hyperLayout1.hyp[32].dn";
connectAttr "hair_1_04_translateX.msg" "hyperLayout1.hyp[33].dn";
connectAttr "hair_1_04_translateY.msg" "hyperLayout1.hyp[34].dn";
connectAttr "hair_1_04_translateZ.msg" "hyperLayout1.hyp[35].dn";
connectAttr "hair_1_05_translateX.msg" "hyperLayout1.hyp[36].dn";
connectAttr "hair_1_05_translateY.msg" "hyperLayout1.hyp[37].dn";
connectAttr "hair_1_05_translateZ.msg" "hyperLayout1.hyp[38].dn";
connectAttr "l_beard_translateX.msg" "hyperLayout1.hyp[39].dn";
connectAttr "l_beard_translateY.msg" "hyperLayout1.hyp[40].dn";
connectAttr "l_beard_translateZ.msg" "hyperLayout1.hyp[41].dn";
connectAttr "r_beard_translateX.msg" "hyperLayout1.hyp[42].dn";
connectAttr "r_beard_translateY.msg" "hyperLayout1.hyp[43].dn";
connectAttr "r_beard_translateZ.msg" "hyperLayout1.hyp[44].dn";
connectAttr "shoulder_armor_1_01_translateX.msg" "hyperLayout1.hyp[45].dn";
connectAttr "shoulder_armor_1_01_translateY.msg" "hyperLayout1.hyp[46].dn";
connectAttr "shoulder_armor_1_01_translateZ.msg" "hyperLayout1.hyp[47].dn";
connectAttr "shoulder_armor_1_02_translateX.msg" "hyperLayout1.hyp[48].dn";
connectAttr "shoulder_armor_1_02_translateY.msg" "hyperLayout1.hyp[49].dn";
connectAttr "shoulder_armor_1_02_translateZ.msg" "hyperLayout1.hyp[50].dn";
connectAttr "l_foot_translateX.msg" "hyperLayout1.hyp[51].dn";
connectAttr "l_foot_translateY.msg" "hyperLayout1.hyp[52].dn";
connectAttr "l_foot_translateZ.msg" "hyperLayout1.hyp[53].dn";
connectAttr "l_footPV_translateX.msg" "hyperLayout1.hyp[54].dn";
connectAttr "l_footPV_translateY.msg" "hyperLayout1.hyp[55].dn";
connectAttr "l_footPV_translateZ.msg" "hyperLayout1.hyp[56].dn";
connectAttr "l_toe_translateX.msg" "hyperLayout1.hyp[57].dn";
connectAttr "l_toe_translateY.msg" "hyperLayout1.hyp[58].dn";
connectAttr "l_toe_translateZ.msg" "hyperLayout1.hyp[59].dn";
connectAttr "l_hand_translateX.msg" "hyperLayout1.hyp[60].dn";
connectAttr "l_hand_translateY.msg" "hyperLayout1.hyp[61].dn";
connectAttr "l_hand_translateZ.msg" "hyperLayout1.hyp[62].dn";
connectAttr "l_handPV_translateX.msg" "hyperLayout1.hyp[63].dn";
connectAttr "l_handPV_translateY.msg" "hyperLayout1.hyp[64].dn";
connectAttr "l_handPV_translateZ.msg" "hyperLayout1.hyp[65].dn";
connectAttr "l_finger_1_01_translateX.msg" "hyperLayout1.hyp[66].dn";
connectAttr "l_finger_1_01_translateY.msg" "hyperLayout1.hyp[67].dn";
connectAttr "l_finger_1_01_translateZ.msg" "hyperLayout1.hyp[68].dn";
connectAttr "l_finger_1_02_translateX.msg" "hyperLayout1.hyp[69].dn";
connectAttr "l_finger_1_02_translateY.msg" "hyperLayout1.hyp[70].dn";
connectAttr "l_finger_1_02_translateZ.msg" "hyperLayout1.hyp[71].dn";
connectAttr "l_finger_1_04_translateX.msg" "hyperLayout1.hyp[72].dn";
connectAttr "l_finger_1_04_translateY.msg" "hyperLayout1.hyp[73].dn";
connectAttr "l_finger_1_04_translateZ.msg" "hyperLayout1.hyp[74].dn";
connectAttr "l_finger_2_01_translateX.msg" "hyperLayout1.hyp[75].dn";
connectAttr "l_finger_2_01_translateY.msg" "hyperLayout1.hyp[76].dn";
connectAttr "l_finger_2_01_translateZ.msg" "hyperLayout1.hyp[77].dn";
connectAttr "l_finger_2_02_translateX.msg" "hyperLayout1.hyp[78].dn";
connectAttr "l_finger_2_02_translateY.msg" "hyperLayout1.hyp[79].dn";
connectAttr "l_finger_2_02_translateZ.msg" "hyperLayout1.hyp[80].dn";
connectAttr "l_finger_2_03_translateX.msg" "hyperLayout1.hyp[81].dn";
connectAttr "l_finger_2_03_translateY.msg" "hyperLayout1.hyp[82].dn";
connectAttr "l_finger_2_03_translateZ.msg" "hyperLayout1.hyp[83].dn";
connectAttr "l_thumb_1_01_translateX.msg" "hyperLayout1.hyp[84].dn";
connectAttr "l_thumb_1_01_translateY.msg" "hyperLayout1.hyp[85].dn";
connectAttr "l_thumb_1_01_translateZ.msg" "hyperLayout1.hyp[86].dn";
connectAttr "l_thumb_1_02_translateX.msg" "hyperLayout1.hyp[87].dn";
connectAttr "l_thumb_1_02_translateY.msg" "hyperLayout1.hyp[88].dn";
connectAttr "l_thumb_1_02_translateZ.msg" "hyperLayout1.hyp[89].dn";
connectAttr "r_foot_translateX.msg" "hyperLayout1.hyp[90].dn";
connectAttr "r_foot_translateY.msg" "hyperLayout1.hyp[91].dn";
connectAttr "r_foot_translateZ.msg" "hyperLayout1.hyp[92].dn";
connectAttr "r_footPV_translateX.msg" "hyperLayout1.hyp[93].dn";
connectAttr "r_footPV_translateY.msg" "hyperLayout1.hyp[94].dn";
connectAttr "r_footPV_translateZ.msg" "hyperLayout1.hyp[95].dn";
connectAttr "r_toe_translateX.msg" "hyperLayout1.hyp[96].dn";
connectAttr "r_toe_translateY.msg" "hyperLayout1.hyp[97].dn";
connectAttr "r_toe_translateZ.msg" "hyperLayout1.hyp[98].dn";
connectAttr "r_hand_translateX.msg" "hyperLayout1.hyp[99].dn";
connectAttr "r_hand_translateY.msg" "hyperLayout1.hyp[100].dn";
connectAttr "r_hand_translateZ.msg" "hyperLayout1.hyp[101].dn";
connectAttr "r_handPV_translateX.msg" "hyperLayout1.hyp[102].dn";
connectAttr "r_handPV_translateY.msg" "hyperLayout1.hyp[103].dn";
connectAttr "r_handPV_translateZ.msg" "hyperLayout1.hyp[104].dn";
connectAttr "r_finger_1_01_translateX.msg" "hyperLayout1.hyp[105].dn";
connectAttr "r_finger_1_01_translateY.msg" "hyperLayout1.hyp[106].dn";
connectAttr "r_finger_1_01_translateZ.msg" "hyperLayout1.hyp[107].dn";
connectAttr "r_finger_1_02_translateX.msg" "hyperLayout1.hyp[108].dn";
connectAttr "r_finger_1_02_translateY.msg" "hyperLayout1.hyp[109].dn";
connectAttr "r_finger_1_02_translateZ.msg" "hyperLayout1.hyp[110].dn";
connectAttr "r_finger_1_04_translateX.msg" "hyperLayout1.hyp[111].dn";
connectAttr "r_finger_1_04_translateY.msg" "hyperLayout1.hyp[112].dn";
connectAttr "r_finger_1_04_translateZ.msg" "hyperLayout1.hyp[113].dn";
connectAttr "r_finger_2_01_translateX.msg" "hyperLayout1.hyp[114].dn";
connectAttr "r_finger_2_01_translateY.msg" "hyperLayout1.hyp[115].dn";
connectAttr "r_finger_2_01_translateZ.msg" "hyperLayout1.hyp[116].dn";
connectAttr "r_finger_2_02_translateX.msg" "hyperLayout1.hyp[117].dn";
connectAttr "r_finger_2_02_translateY.msg" "hyperLayout1.hyp[118].dn";
connectAttr "r_finger_2_02_translateZ.msg" "hyperLayout1.hyp[119].dn";
connectAttr "r_finger_2_03_translateX.msg" "hyperLayout1.hyp[120].dn";
connectAttr "r_finger_2_03_translateY.msg" "hyperLayout1.hyp[121].dn";
connectAttr "r_finger_2_03_translateZ.msg" "hyperLayout1.hyp[122].dn";
connectAttr "r_thumb_1_01_translateX.msg" "hyperLayout1.hyp[123].dn";
connectAttr "r_thumb_1_01_translateY.msg" "hyperLayout1.hyp[124].dn";
connectAttr "r_thumb_1_01_translateZ.msg" "hyperLayout1.hyp[125].dn";
connectAttr "r_thumb_1_02_translateX.msg" "hyperLayout1.hyp[126].dn";
connectAttr "r_thumb_1_02_translateY.msg" "hyperLayout1.hyp[127].dn";
connectAttr "r_thumb_1_02_translateZ.msg" "hyperLayout1.hyp[128].dn";
connectAttr "weapon_translateX.msg" "hyperLayout1.hyp[129].dn";
connectAttr "weapon_translateY.msg" "hyperLayout1.hyp[130].dn";
connectAttr "weapon_translateZ.msg" "hyperLayout1.hyp[131].dn";
connectAttr "global_control_visibility.msg" "hyperLayout1.hyp[132].dn";
connectAttr "global_control_rotateX.msg" "hyperLayout1.hyp[133].dn";
connectAttr "global_control_rotateY.msg" "hyperLayout1.hyp[134].dn";
connectAttr "global_control_rotateZ.msg" "hyperLayout1.hyp[135].dn";
connectAttr "hip_visibility.msg" "hyperLayout1.hyp[136].dn";
connectAttr "hip_rotateX.msg" "hyperLayout1.hyp[137].dn";
connectAttr "hip_rotateY.msg" "hyperLayout1.hyp[138].dn";
connectAttr "hip_rotateZ.msg" "hyperLayout1.hyp[139].dn";
connectAttr "torso_visibility.msg" "hyperLayout1.hyp[140].dn";
connectAttr "torso_rotateX.msg" "hyperLayout1.hyp[141].dn";
connectAttr "torso_rotateY.msg" "hyperLayout1.hyp[142].dn";
connectAttr "torso_rotateZ.msg" "hyperLayout1.hyp[143].dn";
connectAttr "chest_visibility.msg" "hyperLayout1.hyp[144].dn";
connectAttr "chest_rotateX.msg" "hyperLayout1.hyp[145].dn";
connectAttr "chest_rotateY.msg" "hyperLayout1.hyp[146].dn";
connectAttr "chest_rotateZ.msg" "hyperLayout1.hyp[147].dn";
connectAttr "shoulder_visibility.msg" "hyperLayout1.hyp[148].dn";
connectAttr "shoulder_rotateX.msg" "hyperLayout1.hyp[149].dn";
connectAttr "shoulder_rotateY.msg" "hyperLayout1.hyp[150].dn";
connectAttr "shoulder_rotateZ.msg" "hyperLayout1.hyp[151].dn";
connectAttr "neck_visibility.msg" "hyperLayout1.hyp[152].dn";
connectAttr "neck_rotateX.msg" "hyperLayout1.hyp[153].dn";
connectAttr "neck_rotateY.msg" "hyperLayout1.hyp[154].dn";
connectAttr "neck_rotateZ.msg" "hyperLayout1.hyp[155].dn";
connectAttr "head_visibility.msg" "hyperLayout1.hyp[156].dn";
connectAttr "head_rotateX.msg" "hyperLayout1.hyp[157].dn";
connectAttr "head_rotateY.msg" "hyperLayout1.hyp[158].dn";
connectAttr "head_rotateZ.msg" "hyperLayout1.hyp[159].dn";
connectAttr "l_beard_visibility.msg" "hyperLayout1.hyp[160].dn";
connectAttr "l_beard_rotateX.msg" "hyperLayout1.hyp[161].dn";
connectAttr "l_beard_rotateY.msg" "hyperLayout1.hyp[162].dn";
connectAttr "l_beard_rotateZ.msg" "hyperLayout1.hyp[163].dn";
connectAttr "r_beard_visibility.msg" "hyperLayout1.hyp[164].dn";
connectAttr "r_beard_rotateX.msg" "hyperLayout1.hyp[165].dn";
connectAttr "r_beard_rotateY.msg" "hyperLayout1.hyp[166].dn";
connectAttr "r_beard_rotateZ.msg" "hyperLayout1.hyp[167].dn";
connectAttr "hair_1_01_visibility.msg" "hyperLayout1.hyp[168].dn";
connectAttr "hair_1_01_rotateX.msg" "hyperLayout1.hyp[169].dn";
connectAttr "hair_1_01_rotateY.msg" "hyperLayout1.hyp[170].dn";
connectAttr "hair_1_01_rotateZ.msg" "hyperLayout1.hyp[171].dn";
connectAttr "hair_1_02_visibility.msg" "hyperLayout1.hyp[172].dn";
connectAttr "hair_1_02_rotateX.msg" "hyperLayout1.hyp[173].dn";
connectAttr "hair_1_02_rotateY.msg" "hyperLayout1.hyp[174].dn";
connectAttr "hair_1_02_rotateZ.msg" "hyperLayout1.hyp[175].dn";
connectAttr "hair_1_03_visibility.msg" "hyperLayout1.hyp[176].dn";
connectAttr "hair_1_03_rotateX.msg" "hyperLayout1.hyp[177].dn";
connectAttr "hair_1_03_rotateY.msg" "hyperLayout1.hyp[178].dn";
connectAttr "hair_1_03_rotateZ.msg" "hyperLayout1.hyp[179].dn";
connectAttr "hair_1_04_visibility.msg" "hyperLayout1.hyp[180].dn";
connectAttr "hair_1_04_rotateX.msg" "hyperLayout1.hyp[181].dn";
connectAttr "hair_1_04_rotateY.msg" "hyperLayout1.hyp[182].dn";
connectAttr "hair_1_04_rotateZ.msg" "hyperLayout1.hyp[183].dn";
connectAttr "hair_1_05_visibility.msg" "hyperLayout1.hyp[184].dn";
connectAttr "hair_1_05_rotateX.msg" "hyperLayout1.hyp[185].dn";
connectAttr "hair_1_05_rotateY.msg" "hyperLayout1.hyp[186].dn";
connectAttr "hair_1_05_rotateZ.msg" "hyperLayout1.hyp[187].dn";
connectAttr "faceControl1_BrowLowerer.msg" "hyperLayout1.hyp[188].dn";
connectAttr "faceControl1_CheekRaiser.msg" "hyperLayout1.hyp[189].dn";
connectAttr "faceControl1_Dimpler.msg" "hyperLayout1.hyp[190].dn";
connectAttr "faceControl1_EyeClosedAndLidRaiser.msg" "hyperLayout1.hyp[191].dn";
connectAttr "faceControl1_EyeDownandUp.msg" "hyperLayout1.hyp[192].dn";
connectAttr "faceControl1_EyeRightandLeft.msg" "hyperLayout1.hyp[193].dn";
connectAttr "faceControl1_InnerBrowRaiser.msg" "hyperLayout1.hyp[194].dn";
connectAttr "faceControl1_JawClencher.msg" "hyperLayout1.hyp[195].dn";
connectAttr "faceControl1_JawOpen.msg" "hyperLayout1.hyp[196].dn";
connectAttr "faceControl1_JawSideways.msg" "hyperLayout1.hyp[197].dn";
connectAttr "faceControl1_JawSuckandThrust.msg" "hyperLayout1.hyp[198].dn";
connectAttr "faceControl1_LipCornerDepressorAndSharpLipPuller.msg" "hyperLayout1.hyp[199].dn"
		;
connectAttr "faceControl1_LipCornerPuller.msg" "hyperLayout1.hyp[200].dn";
connectAttr "faceControl1_LipPressor.msg" "hyperLayout1.hyp[201].dn";
connectAttr "faceControl1_LipPuckerer.msg" "hyperLayout1.hyp[202].dn";
connectAttr "faceControl1_LipSideways.msg" "hyperLayout1.hyp[203].dn";
connectAttr "faceControl1_Lip_Stretcher.msg" "hyperLayout1.hyp[204].dn";
connectAttr "faceControl1_Lower_Depressor_And_Chin_Raiser.msg" "hyperLayout1.hyp[205].dn"
		;
connectAttr "faceControl1_LowerLipFunneler.msg" "hyperLayout1.hyp[206].dn";
connectAttr "faceControl1_LowerLipSuck.msg" "hyperLayout1.hyp[207].dn";
connectAttr "faceControl1_LowerLipsTowardAndPart.msg" "hyperLayout1.hyp[208].dn"
		;
connectAttr "faceControl1_NoseWrinkler.msg" "hyperLayout1.hyp[209].dn";
connectAttr "faceControl1_NostrilDilator.msg" "hyperLayout1.hyp[210].dn";
connectAttr "faceControl1_OuterBrowRaiser.msg" "hyperLayout1.hyp[211].dn";
connectAttr "faceControl1_PhonemeBMP.msg" "hyperLayout1.hyp[212].dn";
connectAttr "faceControl1_PhonemeFV.msg" "hyperLayout1.hyp[213].dn";
connectAttr "faceControl1_Squint.msg" "hyperLayout1.hyp[214].dn";
connectAttr "faceControl1_UpperLipFunneler.msg" "hyperLayout1.hyp[215].dn";
connectAttr "faceControl1_UpperLipRaiser.msg" "hyperLayout1.hyp[216].dn";
connectAttr "faceControl1_UpperLipsTowardAndPart.msg" "hyperLayout1.hyp[217].dn"
		;
connectAttr "shoulder_armor_1_01_visibility.msg" "hyperLayout1.hyp[218].dn";
connectAttr "shoulder_armor_1_01_rotateX.msg" "hyperLayout1.hyp[219].dn";
connectAttr "shoulder_armor_1_01_rotateY.msg" "hyperLayout1.hyp[220].dn";
connectAttr "shoulder_armor_1_01_rotateZ.msg" "hyperLayout1.hyp[221].dn";
connectAttr "shoulder_armor_1_02_visibility.msg" "hyperLayout1.hyp[222].dn";
connectAttr "shoulder_armor_1_02_rotateX.msg" "hyperLayout1.hyp[223].dn";
connectAttr "shoulder_armor_1_02_rotateY.msg" "hyperLayout1.hyp[224].dn";
connectAttr "shoulder_armor_1_02_rotateZ.msg" "hyperLayout1.hyp[225].dn";
connectAttr "r_handPV_visibility.msg" "hyperLayout1.hyp[226].dn";
connectAttr "r_handPV_rotateX.msg" "hyperLayout1.hyp[227].dn";
connectAttr "r_handPV_rotateY.msg" "hyperLayout1.hyp[228].dn";
connectAttr "r_handPV_rotateZ.msg" "hyperLayout1.hyp[229].dn";
connectAttr "r_hand_visibility.msg" "hyperLayout1.hyp[230].dn";
connectAttr "r_hand_rotateX.msg" "hyperLayout1.hyp[231].dn";
connectAttr "r_hand_rotateY.msg" "hyperLayout1.hyp[232].dn";
connectAttr "r_hand_rotateZ.msg" "hyperLayout1.hyp[233].dn";
connectAttr "r_finger_1_01_visibility.msg" "hyperLayout1.hyp[234].dn";
connectAttr "r_finger_1_01_rotateX.msg" "hyperLayout1.hyp[235].dn";
connectAttr "r_finger_1_01_rotateY.msg" "hyperLayout1.hyp[236].dn";
connectAttr "r_finger_1_01_rotateZ.msg" "hyperLayout1.hyp[237].dn";
connectAttr "r_finger_1_02_visibility.msg" "hyperLayout1.hyp[238].dn";
connectAttr "r_finger_1_02_rotateX.msg" "hyperLayout1.hyp[239].dn";
connectAttr "r_finger_1_02_rotateY.msg" "hyperLayout1.hyp[240].dn";
connectAttr "r_finger_1_02_rotateZ.msg" "hyperLayout1.hyp[241].dn";
connectAttr "r_finger_1_04_visibility.msg" "hyperLayout1.hyp[242].dn";
connectAttr "r_finger_1_04_rotateX.msg" "hyperLayout1.hyp[243].dn";
connectAttr "r_finger_1_04_rotateY.msg" "hyperLayout1.hyp[244].dn";
connectAttr "r_finger_1_04_rotateZ.msg" "hyperLayout1.hyp[245].dn";
connectAttr "r_finger_2_01_visibility.msg" "hyperLayout1.hyp[246].dn";
connectAttr "r_finger_2_01_rotateX.msg" "hyperLayout1.hyp[247].dn";
connectAttr "r_finger_2_01_rotateY.msg" "hyperLayout1.hyp[248].dn";
connectAttr "r_finger_2_01_rotateZ.msg" "hyperLayout1.hyp[249].dn";
connectAttr "r_finger_2_02_visibility.msg" "hyperLayout1.hyp[250].dn";
connectAttr "r_finger_2_02_rotateX.msg" "hyperLayout1.hyp[251].dn";
connectAttr "r_finger_2_02_rotateY.msg" "hyperLayout1.hyp[252].dn";
connectAttr "r_finger_2_02_rotateZ.msg" "hyperLayout1.hyp[253].dn";
connectAttr "r_finger_2_03_visibility.msg" "hyperLayout1.hyp[254].dn";
connectAttr "r_finger_2_03_rotateX.msg" "hyperLayout1.hyp[255].dn";
connectAttr "r_finger_2_03_rotateY.msg" "hyperLayout1.hyp[256].dn";
connectAttr "r_finger_2_03_rotateZ.msg" "hyperLayout1.hyp[257].dn";
connectAttr "r_thumb_1_01_visibility.msg" "hyperLayout1.hyp[258].dn";
connectAttr "r_thumb_1_01_rotateX.msg" "hyperLayout1.hyp[259].dn";
connectAttr "r_thumb_1_01_rotateY.msg" "hyperLayout1.hyp[260].dn";
connectAttr "r_thumb_1_01_rotateZ.msg" "hyperLayout1.hyp[261].dn";
connectAttr "r_thumb_1_02_visibility.msg" "hyperLayout1.hyp[262].dn";
connectAttr "r_thumb_1_02_rotateX.msg" "hyperLayout1.hyp[263].dn";
connectAttr "r_thumb_1_02_rotateY.msg" "hyperLayout1.hyp[264].dn";
connectAttr "r_thumb_1_02_rotateZ.msg" "hyperLayout1.hyp[265].dn";
connectAttr "weapon_visibility.msg" "hyperLayout1.hyp[266].dn";
connectAttr "weapon_rotateX.msg" "hyperLayout1.hyp[267].dn";
connectAttr "weapon_rotateY.msg" "hyperLayout1.hyp[268].dn";
connectAttr "weapon_rotateZ.msg" "hyperLayout1.hyp[269].dn";
connectAttr "l_handPV_visibility.msg" "hyperLayout1.hyp[270].dn";
connectAttr "l_handPV_rotateX.msg" "hyperLayout1.hyp[271].dn";
connectAttr "l_handPV_rotateY.msg" "hyperLayout1.hyp[272].dn";
connectAttr "l_handPV_rotateZ.msg" "hyperLayout1.hyp[273].dn";
connectAttr "r_footPV_visibility.msg" "hyperLayout1.hyp[274].dn";
connectAttr "r_footPV_rotateX.msg" "hyperLayout1.hyp[275].dn";
connectAttr "r_footPV_rotateY.msg" "hyperLayout1.hyp[276].dn";
connectAttr "r_footPV_rotateZ.msg" "hyperLayout1.hyp[277].dn";
connectAttr "r_foot_visibility.msg" "hyperLayout1.hyp[278].dn";
connectAttr "r_foot_rotateX.msg" "hyperLayout1.hyp[279].dn";
connectAttr "r_foot_rotateY.msg" "hyperLayout1.hyp[280].dn";
connectAttr "r_foot_rotateZ.msg" "hyperLayout1.hyp[281].dn";
connectAttr "r_toe_visibility.msg" "hyperLayout1.hyp[282].dn";
connectAttr "r_toe_rotateX.msg" "hyperLayout1.hyp[283].dn";
connectAttr "r_toe_rotateY.msg" "hyperLayout1.hyp[284].dn";
connectAttr "r_toe_rotateZ.msg" "hyperLayout1.hyp[285].dn";
connectAttr "l_footPV_visibility.msg" "hyperLayout1.hyp[286].dn";
connectAttr "l_footPV_rotateX.msg" "hyperLayout1.hyp[287].dn";
connectAttr "l_footPV_rotateY.msg" "hyperLayout1.hyp[288].dn";
connectAttr "l_footPV_rotateZ.msg" "hyperLayout1.hyp[289].dn";
connectAttr "l_foot_visibility.msg" "hyperLayout1.hyp[290].dn";
connectAttr "l_foot_rotateX.msg" "hyperLayout1.hyp[291].dn";
connectAttr "l_foot_rotateY.msg" "hyperLayout1.hyp[292].dn";
connectAttr "l_foot_rotateZ.msg" "hyperLayout1.hyp[293].dn";
connectAttr "l_toe_visibility.msg" "hyperLayout1.hyp[294].dn";
connectAttr "l_toe_rotateX.msg" "hyperLayout1.hyp[295].dn";
connectAttr "l_toe_rotateY.msg" "hyperLayout1.hyp[296].dn";
connectAttr "l_toe_rotateZ.msg" "hyperLayout1.hyp[297].dn";
connectAttr "l_hand_visibility.msg" "hyperLayout1.hyp[298].dn";
connectAttr "l_hand_rotateX.msg" "hyperLayout1.hyp[299].dn";
connectAttr "l_hand_rotateY.msg" "hyperLayout1.hyp[300].dn";
connectAttr "l_hand_rotateZ.msg" "hyperLayout1.hyp[301].dn";
connectAttr "l_finger_1_01_visibility.msg" "hyperLayout1.hyp[302].dn";
connectAttr "l_finger_1_01_rotateX.msg" "hyperLayout1.hyp[303].dn";
connectAttr "l_finger_1_01_rotateY.msg" "hyperLayout1.hyp[304].dn";
connectAttr "l_finger_1_01_rotateZ.msg" "hyperLayout1.hyp[305].dn";
connectAttr "l_finger_1_02_visibility.msg" "hyperLayout1.hyp[306].dn";
connectAttr "l_finger_1_02_rotateX.msg" "hyperLayout1.hyp[307].dn";
connectAttr "l_finger_1_02_rotateY.msg" "hyperLayout1.hyp[308].dn";
connectAttr "l_finger_1_02_rotateZ.msg" "hyperLayout1.hyp[309].dn";
connectAttr "l_finger_1_04_visibility.msg" "hyperLayout1.hyp[310].dn";
connectAttr "l_finger_1_04_rotateX.msg" "hyperLayout1.hyp[311].dn";
connectAttr "l_finger_1_04_rotateY.msg" "hyperLayout1.hyp[312].dn";
connectAttr "l_finger_1_04_rotateZ.msg" "hyperLayout1.hyp[313].dn";
connectAttr "l_finger_2_01_visibility.msg" "hyperLayout1.hyp[314].dn";
connectAttr "l_finger_2_01_rotateX.msg" "hyperLayout1.hyp[315].dn";
connectAttr "l_finger_2_01_rotateY.msg" "hyperLayout1.hyp[316].dn";
connectAttr "l_finger_2_01_rotateZ.msg" "hyperLayout1.hyp[317].dn";
connectAttr "l_finger_2_02_visibility.msg" "hyperLayout1.hyp[318].dn";
connectAttr "l_finger_2_02_rotateX.msg" "hyperLayout1.hyp[319].dn";
connectAttr "l_finger_2_02_rotateY.msg" "hyperLayout1.hyp[320].dn";
connectAttr "l_finger_2_02_rotateZ.msg" "hyperLayout1.hyp[321].dn";
connectAttr "l_finger_2_03_visibility.msg" "hyperLayout1.hyp[322].dn";
connectAttr "l_finger_2_03_rotateX.msg" "hyperLayout1.hyp[323].dn";
connectAttr "l_finger_2_03_rotateY.msg" "hyperLayout1.hyp[324].dn";
connectAttr "l_finger_2_03_rotateZ.msg" "hyperLayout1.hyp[325].dn";
connectAttr "l_thumb_1_01_visibility.msg" "hyperLayout1.hyp[326].dn";
connectAttr "l_thumb_1_01_rotateX.msg" "hyperLayout1.hyp[327].dn";
connectAttr "l_thumb_1_01_rotateY.msg" "hyperLayout1.hyp[328].dn";
connectAttr "l_thumb_1_01_rotateZ.msg" "hyperLayout1.hyp[329].dn";
connectAttr "l_thumb_1_02_visibility.msg" "hyperLayout1.hyp[330].dn";
connectAttr "l_thumb_1_02_rotateX.msg" "hyperLayout1.hyp[331].dn";
connectAttr "l_thumb_1_02_rotateY.msg" "hyperLayout1.hyp[332].dn";
connectAttr "l_thumb_1_02_rotateZ.msg" "hyperLayout1.hyp[333].dn";
connectAttr "AxeWeight.msg" "hyperLayout1.hyp[334].dn";
connectAttr "shoulder_visibility_AxeWeight.msg" "hyperLayout1.hyp[335].dn";
connectAttr "shoulder_translateX_AxeWeight.msg" "hyperLayout1.hyp[336].dn";
connectAttr "shoulder_translateY_AxeWeight.msg" "hyperLayout1.hyp[337].dn";
connectAttr "shoulder_translateZ_AxeWeight.msg" "hyperLayout1.hyp[338].dn";
connectAttr "shoulder_rotate_AxeWeight.msg" "hyperLayout1.hyp[339].dn";
connectAttr "shoulder_translateX_AxeWeight_inputB.msg" "hyperLayout1.hyp[340].dn"
		;
connectAttr "shoulder_translateY_AxeWeight_inputB.msg" "hyperLayout1.hyp[341].dn"
		;
connectAttr "shoulder_translateZ_AxeWeight_inputB.msg" "hyperLayout1.hyp[342].dn"
		;
connectAttr "shoulder_visibility_AxeWeight_inputB.msg" "hyperLayout1.hyp[343].dn"
		;
connectAttr "shoulder_rotate_AxeWeight_inputBX.msg" "hyperLayout1.hyp[344].dn";
connectAttr "shoulder_rotate_AxeWeight_inputBY.msg" "hyperLayout1.hyp[345].dn";
connectAttr "shoulder_rotate_AxeWeight_inputBZ.msg" "hyperLayout1.hyp[346].dn";
connectAttr "dota2_axeRig_mton_ScaleHack:head_visibility_AxeWeight.msg" "hyperLayout1.hyp[347].dn"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:head_translateX_AxeWeight.msg" "hyperLayout1.hyp[348].dn"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:head_translateY_AxeWeight.msg" "hyperLayout1.hyp[349].dn"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:head_translateZ_AxeWeight.msg" "hyperLayout1.hyp[350].dn"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.msg" "hyperLayout1.hyp[351].dn"
		;
connectAttr "head_rotate_AxeWeight_inputBX.msg" "hyperLayout1.hyp[352].dn";
connectAttr "head_rotate_AxeWeight_inputBY.msg" "hyperLayout1.hyp[353].dn";
connectAttr "head_rotate_AxeWeight_inputBZ.msg" "hyperLayout1.hyp[354].dn";
connectAttr "head_visibility_AxeWeight_inputB.msg" "hyperLayout1.hyp[355].dn";
connectAttr "head_translateX_AxeWeight_inputB.msg" "hyperLayout1.hyp[356].dn";
connectAttr "head_translateY_AxeWeight_inputB.msg" "hyperLayout1.hyp[357].dn";
connectAttr "head_translateZ_AxeWeight_inputB.msg" "hyperLayout1.hyp[358].dn";
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_visibility_AxeWeight.msg" "hyperLayout1.hyp[359].dn"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_translateX_AxeWeight.msg" "hyperLayout1.hyp[360].dn"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_translateY_AxeWeight.msg" "hyperLayout1.hyp[361].dn"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_translateZ_AxeWeight.msg" "hyperLayout1.hyp[362].dn"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.msg" "hyperLayout1.hyp[363].dn"
		;
connectAttr "r_hand_translateX_AxeWeight_inputB.msg" "hyperLayout1.hyp[364].dn";
connectAttr "r_hand_translateY_AxeWeight_inputB.msg" "hyperLayout1.hyp[365].dn";
connectAttr "r_hand_translateZ_AxeWeight_inputB.msg" "hyperLayout1.hyp[366].dn";
connectAttr "r_hand_visibility_AxeWeight_inputB.msg" "hyperLayout1.hyp[367].dn";
connectAttr "r_hand_rotate_AxeWeight_inputBX.msg" "hyperLayout1.hyp[368].dn";
connectAttr "r_hand_rotate_AxeWeight_inputBY.msg" "hyperLayout1.hyp[369].dn";
connectAttr "r_hand_rotate_AxeWeight_inputBZ.msg" "hyperLayout1.hyp[370].dn";
connectAttr "cameraView1.msg" "hyperLayout1.hyp[371].dn";
connectAttr "BaseAnimation.csol" "AxeWeight.sslo";
connectAttr "BaseAnimation.fgwt" "AxeWeight.pwth";
connectAttr "BaseAnimation.omte" "AxeWeight.pmte";
connectAttr "shoulder_visibility_AxeWeight.msg" "AxeWeight.bnds[0]";
connectAttr "shoulder_translateX_AxeWeight.msg" "AxeWeight.bnds[1]";
connectAttr "shoulder_translateY_AxeWeight.msg" "AxeWeight.bnds[2]";
connectAttr "shoulder_translateZ_AxeWeight.msg" "AxeWeight.bnds[3]";
connectAttr "shoulder_rotate_AxeWeight.msg" "AxeWeight.bnds[7]";
connectAttr "dota2_axeRig_mton_ScaleHack:head_visibility_AxeWeight.msg" "AxeWeight.bnds[8]"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:head_translateX_AxeWeight.msg" "AxeWeight.bnds[9]"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:head_translateY_AxeWeight.msg" "AxeWeight.bnds[10]"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:head_translateZ_AxeWeight.msg" "AxeWeight.bnds[11]"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.msg" "AxeWeight.bnds[15]"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_visibility_AxeWeight.msg" "AxeWeight.bnds[16]"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_translateX_AxeWeight.msg" "AxeWeight.bnds[17]"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_translateY_AxeWeight.msg" "AxeWeight.bnds[18]"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_translateZ_AxeWeight.msg" "AxeWeight.bnds[19]"
		;
connectAttr "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.msg" "AxeWeight.bnds[23]"
		;
connectAttr "AxeWeight.bgwt" "shoulder_visibility_AxeWeight.wa";
connectAttr "AxeWeight.fgwt" "shoulder_visibility_AxeWeight.wb";
connectAttr "shoulder_visibility.o" "shoulder_visibility_AxeWeight.ia";
connectAttr "shoulder_visibility_AxeWeight_inputB.o" "shoulder_visibility_AxeWeight.ib"
		;
connectAttr "AxeWeight.bgwt" "shoulder_translateX_AxeWeight.wa";
connectAttr "AxeWeight.fgwt" "shoulder_translateX_AxeWeight.wb";
connectAttr "shoulder_translateX.o" "shoulder_translateX_AxeWeight.ia";
connectAttr "shoulder_translateX_AxeWeight_inputB.o" "shoulder_translateX_AxeWeight.ib"
		;
connectAttr "AxeWeight.bgwt" "shoulder_translateY_AxeWeight.wa";
connectAttr "AxeWeight.fgwt" "shoulder_translateY_AxeWeight.wb";
connectAttr "shoulder_translateY.o" "shoulder_translateY_AxeWeight.ia";
connectAttr "shoulder_translateY_AxeWeight_inputB.o" "shoulder_translateY_AxeWeight.ib"
		;
connectAttr "AxeWeight.bgwt" "shoulder_translateZ_AxeWeight.wa";
connectAttr "AxeWeight.fgwt" "shoulder_translateZ_AxeWeight.wb";
connectAttr "shoulder_translateZ.o" "shoulder_translateZ_AxeWeight.ia";
connectAttr "shoulder_translateZ_AxeWeight_inputB.o" "shoulder_translateZ_AxeWeight.ib"
		;
connectAttr "shoulder_rotateX.o" "shoulder_rotate_AxeWeight.iax";
connectAttr "shoulder_rotateY.o" "shoulder_rotate_AxeWeight.iay";
connectAttr "shoulder_rotateZ.o" "shoulder_rotate_AxeWeight.iaz";
connectAttr "AxeWeight.oram" "shoulder_rotate_AxeWeight.acm";
connectAttr "AxeWeight.bgwt" "shoulder_rotate_AxeWeight.wa";
connectAttr "AxeWeight.fgwt" "shoulder_rotate_AxeWeight.wb";
connectAttr "shoulder_rotate_AxeWeight_inputBX.o" "shoulder_rotate_AxeWeight.ibx"
		;
connectAttr "shoulder_rotate_AxeWeight_inputBY.o" "shoulder_rotate_AxeWeight.iby"
		;
connectAttr "shoulder_rotate_AxeWeight_inputBZ.o" "shoulder_rotate_AxeWeight.ibz"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:head_visibility_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:head_visibility_AxeWeight.wb"
		;
connectAttr "head_visibility.o" "dota2_axeRig_mton_ScaleHack:head_visibility_AxeWeight.ia"
		;
connectAttr "head_visibility_AxeWeight_inputB.o" "dota2_axeRig_mton_ScaleHack:head_visibility_AxeWeight.ib"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:head_translateX_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:head_translateX_AxeWeight.wb"
		;
connectAttr "head_translateX.o" "dota2_axeRig_mton_ScaleHack:head_translateX_AxeWeight.ia"
		;
connectAttr "head_translateX_AxeWeight_inputB.o" "dota2_axeRig_mton_ScaleHack:head_translateX_AxeWeight.ib"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:head_translateY_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:head_translateY_AxeWeight.wb"
		;
connectAttr "head_translateY.o" "dota2_axeRig_mton_ScaleHack:head_translateY_AxeWeight.ia"
		;
connectAttr "head_translateY_AxeWeight_inputB.o" "dota2_axeRig_mton_ScaleHack:head_translateY_AxeWeight.ib"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:head_translateZ_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:head_translateZ_AxeWeight.wb"
		;
connectAttr "head_translateZ.o" "dota2_axeRig_mton_ScaleHack:head_translateZ_AxeWeight.ia"
		;
connectAttr "head_translateZ_AxeWeight_inputB.o" "dota2_axeRig_mton_ScaleHack:head_translateZ_AxeWeight.ib"
		;
connectAttr "head_rotateX.o" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.iax"
		;
connectAttr "head_rotateY.o" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.iay"
		;
connectAttr "head_rotateZ.o" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.iaz"
		;
connectAttr "AxeWeight.oram" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.acm"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.wb"
		;
connectAttr "head_rotate_AxeWeight_inputBX.o" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.ibx"
		;
connectAttr "head_rotate_AxeWeight_inputBY.o" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.iby"
		;
connectAttr "head_rotate_AxeWeight_inputBZ.o" "dota2_axeRig_mton_ScaleHack:head_rotate_AxeWeight.ibz"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:r_hand_visibility_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:r_hand_visibility_AxeWeight.wb"
		;
connectAttr "r_hand_visibility.o" "dota2_axeRig_mton_ScaleHack:r_hand_visibility_AxeWeight.ia"
		;
connectAttr "r_hand_visibility_AxeWeight_inputB.o" "dota2_axeRig_mton_ScaleHack:r_hand_visibility_AxeWeight.ib"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:r_hand_translateX_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:r_hand_translateX_AxeWeight.wb"
		;
connectAttr "r_hand_translateX.o" "dota2_axeRig_mton_ScaleHack:r_hand_translateX_AxeWeight.ia"
		;
connectAttr "r_hand_translateX_AxeWeight_inputB.o" "dota2_axeRig_mton_ScaleHack:r_hand_translateX_AxeWeight.ib"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:r_hand_translateY_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:r_hand_translateY_AxeWeight.wb"
		;
connectAttr "r_hand_translateY.o" "dota2_axeRig_mton_ScaleHack:r_hand_translateY_AxeWeight.ia"
		;
connectAttr "r_hand_translateY_AxeWeight_inputB.o" "dota2_axeRig_mton_ScaleHack:r_hand_translateY_AxeWeight.ib"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:r_hand_translateZ_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:r_hand_translateZ_AxeWeight.wb"
		;
connectAttr "r_hand_translateZ.o" "dota2_axeRig_mton_ScaleHack:r_hand_translateZ_AxeWeight.ia"
		;
connectAttr "r_hand_translateZ_AxeWeight_inputB.o" "dota2_axeRig_mton_ScaleHack:r_hand_translateZ_AxeWeight.ib"
		;
connectAttr "r_hand_rotateX.o" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.iax"
		;
connectAttr "r_hand_rotateY.o" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.iay"
		;
connectAttr "r_hand_rotateZ.o" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.iaz"
		;
connectAttr "AxeWeight.oram" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.acm"
		;
connectAttr "AxeWeight.bgwt" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.wa"
		;
connectAttr "AxeWeight.fgwt" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.wb"
		;
connectAttr "r_hand_rotate_AxeWeight_inputBX.o" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.ibx"
		;
connectAttr "r_hand_rotate_AxeWeight_inputBY.o" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.iby"
		;
connectAttr "r_hand_rotate_AxeWeight_inputBZ.o" "dota2_axeRig_mton_ScaleHack:r_hand_rotate_AxeWeight.ibz"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"dota2_axeRig_mton_ScaleHackRN\" \"\" \"/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/DOTA2/dota2_axeRig/dota2_axeRig_mton_ScaleHack.ma\" 2914336745 \"/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE/Art/CHAR/anim/rigs/DOTA2/dota2_axeRig/dota2_axeRig_mton_ScaleHack.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of dota2_axeRig_walk.ma
