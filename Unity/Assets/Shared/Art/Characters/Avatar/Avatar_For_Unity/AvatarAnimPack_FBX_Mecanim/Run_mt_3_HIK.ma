//Maya ASCII 2014 scene
//Name: Run_mt_3_HIK.ma
//Last modified: Sun, Apr 20, 2014 06:40:36 PM
//Codeset: UTF-8
requires maya "2014";
requires -nodeType "HIKSolverNode" -nodeType "HIKRetargeterNode" -nodeType "HIKCharacterNode"
		 -nodeType "HIKSkeletonGeneratorNode" -nodeType "HIKControlSetNode" -nodeType "HIKEffectorFromCharacter"
		 -nodeType "HIKSK2State" -nodeType "HIKFK2State" -nodeType "HIKState2FK" -nodeType "HIKState2SK"
		 -nodeType "HIKState2GlobalSK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -nodeType "ComputeGlobal"
		 -nodeType "ComputeLocal" -nodeType "HIKCharacterStateClient" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2013.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.9.2";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -51.697684056767692 194.80308559221538 271.13166302128008 ;
	setAttr ".r" -type "double3" 159.86164727039537 -168.99999999999815 179.99999999999923 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 288.21998879189658;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.064889693344842292 95.572335863837381 5.5039634232010064 ;
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
	setAttr ".t" -type "double3" -0.21322176525388414 70.707447212211093 123.83983628835787 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 336.0036498637653;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 122.69641679679853 70.707447212211093 6.6703597550459248 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 336.0036498637653;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "BASE__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "Base_Control" -ln "Base_Control" -smn 0 -smx 
		0 -at "long";
	addAttr -is true -ci true -k true -sn "Controls" -ln "Controls" -smn 0 -smx 0 -at "long";
	addAttr -is true -ci true -k true -sn "DONT_TOUCH" -ln "DONT_TOUCH" -smn 0 -smx 
		0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".typ" 1;
	setAttr -k on ".liw";
	setAttr -l on -k on ".Base_Control";
	setAttr -l on -k on ".Controls";
	setAttr -l on -k on ".DONT_TOUCH";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "BACKA__Skeleton" -p "BASE__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "Waist_Control" -ln "Waist_Control" -smn 0 
		-smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".typ" 6;
	setAttr -k on ".liw";
	setAttr -l on -k on ".Waist_Control";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "BACKB__Skeleton" -p "BACKA__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "Torso_Control_Rotate" -ln "Torso_Control_Rotate" 
		-smn 0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".typ" 6;
	setAttr -k on ".liw";
	setAttr -l on -k on ".Torso_Control_Rotate";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "SC_BACKB__Skeleton" -p "BACKB__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "SC_BACKB_END__Skeleton" -p "SC_BACKB__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "NECK__Skeleton" -p "BACKB__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "Neck_Control" -ln "Neck_Control" -smn 0 -smx 
		0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".typ" 7;
	setAttr -k on ".liw";
	setAttr -l on -k on ".Neck_Control";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "SC_NECK__Skeleton" -p "NECK__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "SC_NECK_END__Skeleton" -p "SC_NECK__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "HEAD__Skeleton" -p "NECK__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "Head_Control" -ln "Head_Control" -smn 0 -smx 
		0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".typ" 8;
	setAttr -k on ".liw";
	setAttr -l on -k on ".Head_Control";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "HEAD_END__Skeleton" -p "HEAD__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_C__Skeleton" -p "BACKB__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "LF_C_Control" -ln "LF_C_Control" -smn 0 -smx 
		0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 3;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr -k on ".liw";
	setAttr -l on -k on ".LF_C_Control";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_S__Skeleton" -p "LF_C__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "ArmBackOrFwdSkinAdjust" -ln "ArmBackOrFwdSkinAdjust" 
		-smn 0 -smx 1 -at "double";
	addAttr -is true -ci true -k true -sn "MonitorSkinTwist" -ln "MonitorSkinTwist" 
		-smn 1.00395572185516 -smx 1.00395572185516 -at "double";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr -k on ".liw";
	setAttr -k on ".ArmBackOrFwdSkinAdjust";
	setAttr -l on -k on ".MonitorSkinTwist" 1.00395572185516;
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_E__Skeleton" -p "LF_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 3;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 10 ;
	setAttr ".pa" -type "double3" 0 -10 0 ;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_W__Skeleton" -p "LF_E__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 5;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGD__Skeleton" -p "LF_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGD1__Skeleton" -p "LF_FINGD__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGD2__Skeleton" -p "LF_FINGD1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGD_END__Skeleton" -p "LF_FINGD2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGC__Skeleton" -p "LF_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 1 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGC1__Skeleton" -p "LF_FINGC__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGC2__Skeleton" -p "LF_FINGC1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGC_END__Skeleton" -p "LF_FINGC2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGB__Skeleton" -p "LF_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 1 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGB1__Skeleton" -p "LF_FINGB__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGB2__Skeleton" -p "LF_FINGB1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGB_END__Skeleton" -p "LF_FINGB2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGA__Skeleton" -p "LF_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 1 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGA1__Skeleton" -p "LF_FINGA__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGA2__Skeleton" -p "LF_FINGA1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_FINGA_END__Skeleton" -p "LF_FINGA2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_THUMB__Skeleton" -p "LF_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".ro" 1;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 1 1 10 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_THUMB1__Skeleton" -p "LF_THUMB__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".ro" 3;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 5 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_THUMB2__Skeleton" -p "LF_THUMB1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_THUMB_END__Skeleton" -p "LF_THUMB2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_PROP__Skeleton" -p "LF_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_PROP_END__Skeleton" -p "LF_PROP__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SPECIAL__Skeleton" -p "LF_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SPECIAL_END__Skeleton" -p "LF_SPECIAL__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_E_TWIST__Skeleton" -p "LF_E__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_E_TWIST_END__Skeleton" -p "LF_E_TWIST__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_E__Skeleton" -p "LF_E__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_E_END__Skeleton" -p "LF_SC_E__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_S__Skeleton" -p "LF_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_S_END__Skeleton" -p "LF_SC_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_TWIST_S__Skeleton" -p "LF_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_TWIST_S_END__Skeleton" -p "LF_SC_TWIST_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_C__Skeleton" -p "BACKB__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "RT_C_Control" -ln "RT_C_Control" -smn 0 -smx 
		0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 3;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr -k on ".liw";
	setAttr -l on -k on ".RT_C_Control";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_S__Skeleton" -p "RT_C__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "ArmBackOrFwdSkinAdjust" -ln "ArmBackOrFwdSkinAdjust" 
		-smn 0 -smx 1 -at "double";
	addAttr -is true -ci true -k true -sn "MonitorSkinTwist" -ln "MonitorSkinTwist" 
		-smn -1.3068721294403101 -smx -1.3068721294403101 -at "double";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr -k on ".liw";
	setAttr -k on ".ArmBackOrFwdSkinAdjust";
	setAttr -l on -k on ".MonitorSkinTwist" -1.3068721294403101;
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_E__Skeleton" -p "RT_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 3;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 10 ;
	setAttr ".pa" -type "double3" 0 10 0 ;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_W__Skeleton" -p "RT_E__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 5;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGD__Skeleton" -p "RT_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGD1__Skeleton" -p "RT_FINGD__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGD2__Skeleton" -p "RT_FINGD1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGD_END__Skeleton" -p "RT_FINGD2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGC__Skeleton" -p "RT_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 1 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGC1__Skeleton" -p "RT_FINGC__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGC2__Skeleton" -p "RT_FINGC1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGC_END__Skeleton" -p "RT_FINGC2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGB__Skeleton" -p "RT_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 1 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGB1__Skeleton" -p "RT_FINGB__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGB2__Skeleton" -p "RT_FINGB1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGB_END__Skeleton" -p "RT_FINGB2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGA__Skeleton" -p "RT_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 1 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGA1__Skeleton" -p "RT_FINGA__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGA2__Skeleton" -p "RT_FINGA1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnrl" -type "double3" 0 0 -45 ;
	setAttr ".mxrl" -type "double3" 0 0 45 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_FINGA_END__Skeleton" -p "RT_FINGA2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_THUMB__Skeleton" -p "RT_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".ro" 1;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 1 1 10 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_THUMB1__Skeleton" -p "RT_THUMB__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".ro" 3;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 10 1 5 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_THUMB2__Skeleton" -p "RT_THUMB1__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_THUMB_END__Skeleton" -p "RT_THUMB2__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_PROP__Skeleton" -p "RT_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_PROP_END__Skeleton" -p "RT_PROP__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SPECIAL__Skeleton" -p "RT_W__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SPECIAL_END__Skeleton" -p "RT_SPECIAL__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_E_TWIST__Skeleton" -p "RT_E__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_E_TWIST_END__Skeleton" -p "RT_E_TWIST__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_E__Skeleton" -p "RT_E__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_E_END__Skeleton" -p "RT_SC_E__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_S__Skeleton" -p "RT_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_S_END__Skeleton" -p "RT_SC_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_TWIST_S__Skeleton" -p "RT_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_TWIST_S_END__Skeleton" -p "RT_SC_TWIST_S__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "SC_BACKA__Skeleton" -p "BACKA__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "SC_BACKA_END__Skeleton" -p "SC_BACKA__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "SC_BASE__Skeleton" -p "BASE__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "SC_BASE_END__Skeleton" -p "SC_BASE__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_H__Skeleton" -p "BASE__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_K__Skeleton" -p "LF_H__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 1;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 1 10 10 ;
	setAttr ".pa" -type "double3" 10 0 0 ;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_A__Skeleton" -p "LF_K__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 3;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_T__Skeleton" -p "LF_A__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_T_END__Skeleton" -p "LF_T__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_K__Skeleton" -p "LF_K__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_K_END__Skeleton" -p "LF_SC_K__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_H__Skeleton" -p "LF_H__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "LF_SC_H_END__Skeleton" -p "LF_SC_H__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_H__Skeleton" -p "BASE__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_K__Skeleton" -p "RT_H__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 1;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".st" -type "double3" 1 10 10 ;
	setAttr ".pa" -type "double3" 10 0 0 ;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_A__Skeleton" -p "RT_K__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".ro" 3;
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_T__Skeleton" -p "RT_A__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_T_END__Skeleton" -p "RT_T__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_K__Skeleton" -p "RT_K__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_K_END__Skeleton" -p "RT_SC_K__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_H__Skeleton" -p "RT_H__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode joint -n "RT_SC_H_END__Skeleton" -p "RT_SC_H__Skeleton";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".mnsl" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".ssc" no;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode animCurveTL -n "BASE__Skeleton_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "BASE__Skeleton_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 78 1 66.571563720703125 2 66.688209533691406
		 3 70.740562438964844 4 76.776100158691406 5 83.130783081054688 6 88.140556335449219
		 7 90.141372680664062 8 86.3665771484375 9 78.135391235351562 10 69.912620544433594
		 11 66.163063049316406 12 68.215019226074219 13 73.298820495605469 14 79.732231140136719
		 15 85.83306884765625 16 89.919113159179688 17 85.526466369628906 18 79.4906005859375
		 19 72.5989990234375 20 72.5989990234375 21 72.5989990234375 22 72.5989990234375 23 72.5989990234375
		 24 72.5989990234375 25 72.5989990234375 26 72.5989990234375 27 72.5989990234375 28 72.5989990234375
		 29 72.5989990234375 30 72.5989990234375 31 72.5989990234375 32 72.5989990234375 33 72.5989990234375
		 34 72.5989990234375 35 72.5989990234375 36 72.5989990234375 37 72.5989990234375 38 72.5989990234375
		 39 72.5989990234375 40 72.5989990234375 41 72.5989990234375 42 72.5989990234375 43 72.5989990234375
		 44 72.5989990234375 45 72.5989990234375 46 72.5989990234375 47 72.5989990234375 48 72.5989990234375;
	setAttr -s 49 ".kit[0:48]"  1 1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 49 ".kot[0:48]"  1 1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 49 ".kix[0:48]"  0.0059382356703281403 0.015937354415655136 
		0.019984818994998932 0.0082604475319385529 0.0067255813628435135 0.0073326067067682743 
		0.011885939165949821 0.046923629939556122 0.0069408183917403221 0.0050645717419683933 
		0.0069603272713720798 0.049029834568500519 0.01167747937142849 0.0072353566065430641 
		0.0066483025439083576 0.0081801861524581909 0.26228082180023193 0.0079906554892659187 
		0.0064460919238626957 0.0059042274951934814 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[0:48]"  -0.99998235702514648 -0.99987304210662842 
		0.99980026483535767 0.99996590614318848 0.99997729063034058 0.9999731183052063 0.99992936849594116 
		-0.99889844655990601 -0.99997597932815552 -0.99998718500137329 -0.99997580051422119 
		-0.99879729747772217 0.99993187189102173 0.9999738335609436 0.99997788667678833 0.99996656179428101 
		-0.96499162912368774 -0.99996805191040039 -0.99997925758361816 -0.99998259544372559 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[0:48]"  0.0059382356703281403 0.015937354415655136 
		0.019984818994998932 0.0082604475319385529 0.0067255813628435135 0.0073326067067682743 
		0.011885939165949821 0.046923629939556122 0.0069408183917403221 0.0050645717419683933 
		0.0069603272713720798 0.049029834568500519 0.01167747937142849 0.0072353566065430641 
		0.0066483025439083576 0.0081801861524581909 0.26228082180023193 0.0079906554892659187 
		0.0064460919238626957 0.0059042274951934814 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[0:48]"  -0.99998235702514648 -0.99987304210662842 
		0.99980026483535767 0.99996590614318848 0.99997729063034058 0.9999731183052063 0.99992936849594116 
		-0.99889844655990601 -0.99997597932815552 -0.99998718500137329 -0.99997580051422119 
		-0.99879729747772217 0.99993187189102173 0.9999738335609436 0.99997788667678833 0.99996656179428101 
		-0.96499162912368774 -0.99996805191040039 -0.99997925758361816 -0.99998259544372559 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "BASE__Skeleton_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -0.86643087863922119 2 -1.3574190139770508
		 3 -1.3934739828109741 4 -1.0533909797668457 5 -0.36862888932228088 6 0.15757860243320465
		 7 -0.27673089504241943 8 -0.45335289835929871 9 -0.73502582311630249 10 2.4098300933837891
		 11 2.7205419540405273 12 0.8562701940536499 13 0.86117798089981079 14 0.87288117408752441
		 15 0.88684952259063721 16 0.89855271577835083 17 1.3819639682769775 18 1.8877270221710205
		 19 1.3359999656677246 20 1.3359999656677246 21 1.3359999656677246 22 1.3359999656677246
		 23 1.3359999656677246 24 1.3359999656677246 25 1.3359999656677246 26 1.3359999656677246
		 27 1.3359999656677246 28 1.3359999656677246 29 1.3359999656677246 30 1.3359999656677246
		 31 1.3359999656677246 32 1.3359999656677246 33 1.3359999656677246 34 1.3359999656677246
		 35 1.3359999656677246 36 1.3359999656677246 37 1.3359999656677246 38 1.3359999656677246
		 39 1.3359999656677246 40 1.3359999656677246 41 1.3359999656677246 42 1.3359999656677246
		 43 1.3359999656677246 44 1.3359999656677246 45 1.3359999656677246 46 1.3359999656677246
		 47 1.3359999656677246 48 1.3359999656677246;
	setAttr -s 49 ".kit[0:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 49 ".kot[0:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 49 ".kix[0:48]"  0.029692253097891808 0.061275657266378403 
		0.15617465972900391 0.26434722542762756 0.081045612692832947 0.068653009831905365 
		0.67174410820007324 0.13515222072601318 0.17889997363090515 0.029092811048030853 
		0.024108663201332092 0.053563248366117477 0.044773254543542862 0.98070645332336426 
		0.9556804895401001 0.95568060874938965 0.16597667336463928 0.083947956562042236 0.87563556432723999 
		0.028914663940668106 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[0:48]"  -0.99955910444259644 -0.99812090396881104 
		-0.98772943019866943 0.96442759037017822 0.99671041965484619 0.99764055013656616 
		0.74078333377838135 -0.99082487821578979 -0.98386722803115845 0.99957674741744995 
		0.99970930814743042 -0.99856448173522949 -0.99899715185165405 0.19548599421977997 
		0.29440554976463318 0.29440540075302124 0.98612964153289795 0.99647009372711182 -0.48297238349914551 
		-0.99958187341690063 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[0:48]"  0.029692253097891808 0.061275657266378403 
		0.15617465972900391 0.26434722542762756 0.081045612692832947 0.068653009831905365 
		0.67174410820007324 0.13515222072601318 0.17889997363090515 0.029092811048030853 
		0.024108663201332092 0.053563248366117477 0.044773254543542862 0.98070645332336426 
		0.9556804895401001 0.95568060874938965 0.16597667336463928 0.083947956562042236 0.87563556432723999 
		0.028914663940668106 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[0:48]"  -0.99955910444259644 -0.99812090396881104 
		-0.98772943019866943 0.96442759037017822 0.99671041965484619 0.99764055013656616 
		0.74078333377838135 -0.99082487821578979 -0.98386722803115845 0.99957674741744995 
		0.99970930814743042 -0.99856448173522949 -0.99899715185165405 0.19548599421977997 
		0.29440554976463318 0.29440540075302124 0.98612964153289795 0.99647009372711182 -0.48297238349914551 
		-0.99958187341690063 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "BASE__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 17.88031005859375 2 20.790439605712891
		 3 16.655000686645508 4 10.443449974060059 5 5.8875827789306641 6 1.783424973487854
		 7 0 8 3.254951000213623 9 12.635000228881836 10 18.536439895629883 11 21.411750793457031
		 12 12.922160148620605 13 13.741399765014648 14 11.63578987121582 15 6.9813261032104492
		 16 2.2715449333190918 17 0 18 0 19 12.656000137329102 20 12.656000137329102 21 12.656000137329102
		 22 12.656000137329102 23 12.656000137329102 24 12.656000137329102 25 12.656000137329102
		 26 12.656000137329102 27 12.656000137329102 28 12.656000137329102 29 12.656000137329102
		 30 12.656000137329102 31 12.656000137329102 32 12.656000137329102 33 12.656000137329102
		 34 12.656000137329102 35 12.656000137329102 36 12.656000137329102 37 12.656000137329102
		 38 12.656000137329102 39 12.656000137329102 40 12.656000137329102 41 12.656000137329102
		 42 12.656000137329102 43 12.656000137329102 44 12.656000137329102 45 12.656000137329102
		 46 12.656000137329102 47 12.656000137329102 48 12.656000137329102;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.50619524717330933 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.86241888999938965 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.50619524717330933 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.86241888999938965 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "BASE__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 2.2012059688568115 2 1.810683012008667
		 3 1.3393629789352417 4 0.85493737459182739 5 0.42510271072387695 6 0.11755800247192383
		 7 0 8 0 9 2.2929999828338623 10 2.2929999828338623 11 2.2929999828338623 12 2.2929999828338623
		 13 2.2929999828338623 14 2.2929999828338623 15 2.2929999828338623 16 2.2929999828338623
		 17 0 18 0 19 2.2929999828338623 20 2.2929999828338623 21 2.2929999828338623 22 2.2929999828338623
		 23 2.2929999828338623 24 2.2929999828338623 25 2.2929999828338623 26 2.2929999828338623
		 27 2.2929999828338623 28 2.2929999828338623 29 2.2929999828338623 30 2.2929999828338623
		 31 2.2929999828338623 32 2.2929999828338623 33 2.2929999828338623 34 2.2929999828338623
		 35 2.2929999828338623 36 2.2929999828338623 37 2.2929999828338623 38 2.2929999828338623
		 39 2.2929999828338623 40 2.2929999828338623 41 2.2929999828338623 42 2.2929999828338623
		 43 2.2929999828338623 44 2.2929999828338623 45 2.2929999828338623 46 2.2929999828338623
		 47 2.2929999828338623 48 2.2929999828338623;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99493402242660522 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.10053049772977829 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99493402242660522 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.10053049772977829 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "BASE__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0.49409881234169001 2 0.40633711218833923
		 3 0.30049639940261841 4 0.19177919626235962 5 0.095350436866283417 6 0.026367530226707458
		 7 0 8 0 9 0 10 0 11 0 12 0 13 4.9735991261371852e-17 14 0 15 0 16 0 17 0 18 0 19 0.51499998569488525
		 20 0.51499998569488525 21 0.51499998569488525 22 0.51499998569488525 23 0.51499998569488525
		 24 0.51499998569488525 25 0.51499998569488525 26 0.51499998569488525 27 0.51499998569488525
		 28 0.51499998569488525 29 0.51499998569488525 30 0.51499998569488525 31 0.51499998569488525
		 32 0.51499998569488525 33 0.51499998569488525 34 0.51499998569488525 35 0.51499998569488525
		 36 0.51499998569488525 37 0.51499998569488525 38 0.51499998569488525 39 0.51499998569488525
		 40 0.51499998569488525 41 0.51499998569488525 42 0.51499998569488525 43 0.51499998569488525
		 44 0.51499998569488525 45 0.51499998569488525 46 0.51499998569488525 47 0.51499998569488525
		 48 0.51499998569488525;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99974220991134644 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.02270335890352726 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99974220991134644 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.02270335890352726 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "BACKA__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 4.411719799041748 1 1.4384490251541138
		 2 -0.79954719543457031 3 0.27286919951438904 4 2.1452031135559082 5 2.5670130252838135
		 6 3.4236629009246826 7 6.3391208648681641 8 8.4684543609619141 9 5.7895960807800293
		 10 1.5335789918899536 11 -1.9259370565414429 12 0.845458984375 13 -0.7685316801071167
		 14 -0.5800812840461731 15 1.0798269510269165 16 3.1671469211578369 17 7.5278830528259277
		 18 7.5278830528259277 19 1.4384490251541138 20 1.4384490251541138 21 1.4384490251541138
		 22 1.4384490251541138 23 1.4384490251541138 24 1.4384490251541138 25 1.4384490251541138
		 26 1.4384490251541138 27 1.4384490251541138 28 1.4384490251541138 29 1.4384490251541138
		 30 1.4384490251541138 31 1.4384490251541138 32 1.4384490251541138 33 1.4384490251541138
		 34 1.4384490251541138 35 1.4384490251541138 36 1.4384490251541138 37 1.4384490251541138
		 38 1.4384490251541138 39 1.4384490251541138 40 1.4384490251541138 41 1.4384490251541138
		 42 1.4384490251541138 43 1.4384490251541138 44 1.4384490251541138 45 1.4384490251541138
		 46 1.4384490251541138 47 1.4384490251541138 48 1.4384490251541138;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.67554420232772827 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.73731952905654907 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.67554420232772827 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.73731952905654907 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "BACKA__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -0.0080434270203113556 1 0.05104701966047287
		 2 0.25491470098495483 3 0.48419210314750677 4 0.71307861804962158 5 0.91060888767242421
		 6 1.0416549444198608 7 1.0973969697952271 8 1.1262120008468628 9 0.055653989315032959
		 10 0.089664526283740997 11 0.10050120204687119 12 0.047084860503673553 13 0.046569079160690308
		 14 0.031109660863876346 15 0.0016257109818980098 16 -0.026655539870262146 17 1.1189939975738525
		 18 1.1189939975738525 19 0.05104701966047287 20 0.05104701966047287 21 0.05104701966047287
		 22 0.05104701966047287 23 0.05104701966047287 24 0.05104701966047287 25 0.05104701966047287
		 26 0.05104701966047287 27 0.05104701966047287 28 0.05104701966047287 29 0.05104701966047287
		 30 0.05104701966047287 31 0.05104701966047287 32 0.05104701966047287 33 0.05104701966047287
		 34 0.05104701966047287 35 0.05104701966047287 36 0.05104701966047287 37 0.05104701966047287
		 38 0.05104701966047287 39 0.05104701966047287 40 0.05104701966047287 41 0.05104701966047287
		 42 0.05104701966047287 43 0.05104701966047287 44 0.05104701966047287 45 0.05104701966047287
		 46 0.05104701966047287 47 0.05104701966047287 48 0.05104701966047287;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99848693609237671 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.054990489035844803 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99848693609237671 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.054990489035844803 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "BACKA__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0.18985719978809357 1 0.18691049516201019
		 2 0.16347000002861023 3 0.16917799413204193 4 0.22664959728717804 5 0.31009399890899658
		 6 0.40140381455421448 7 0.42477509379386902 8 0.34631660580635071 9 0.49419209361076361
		 10 0.46420779824256903 11 0.43058869242668152 12 0.43618199229240417 13 0.43964961171150208
		 14 0.44100889563560486 15 0.44211581349372864 16 0.44146409630775452 17 0.36695748567581177
		 18 0.36695748567581177 19 0.18691049516201019 20 0.18691049516201019 21 0.18691049516201019
		 22 0.18691049516201019 23 0.18691049516201019 24 0.18691049516201019 25 0.18691049516201019
		 26 0.18691049516201019 27 0.18691049516201019 28 0.18691049516201019 29 0.18691049516201019
		 30 0.18691049516201019 31 0.18691049516201019 32 0.18691049516201019 33 0.18691049516201019
		 34 0.18691049516201019 35 0.18691049516201019 36 0.18691049516201019 37 0.18691049516201019
		 38 0.18691049516201019 39 0.18691049516201019 40 0.18691049516201019 41 0.18691049516201019
		 42 0.18691049516201019 43 0.18691049516201019 44 0.18691049516201019 45 0.18691049516201019
		 46 0.18691049516201019 47 0.18691049516201019 48 0.18691049516201019;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.9999847412109375 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.0055264378897845745 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.9999847412109375 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.0055264378897845745 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "BACKB__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 4.411719799041748 1 1.4384490251541138
		 2 -0.79954719543457031 3 0.27286919951438904 4 2.1452031135559082 5 2.5670130252838135
		 6 3.4236629009246826 7 6.3391208648681641 8 8.4684543609619141 9 5.7895960807800293
		 10 1.5335789918899536 11 -1.9259370565414429 12 0.845458984375 13 -0.7685316801071167
		 14 -0.5800812840461731 15 1.0798269510269165 16 3.1671469211578369 17 7.5278830528259277
		 18 7.5278830528259277 19 1.4384490251541138 20 1.4384490251541138 21 1.4384490251541138
		 22 1.4384490251541138 23 1.4384490251541138 24 1.4384490251541138 25 1.4384490251541138
		 26 1.4384490251541138 27 1.4384490251541138 28 1.4384490251541138 29 1.4384490251541138
		 30 1.4384490251541138 31 1.4384490251541138 32 1.4384490251541138 33 1.4384490251541138
		 34 1.4384490251541138 35 1.4384490251541138 36 1.4384490251541138 37 1.4384490251541138
		 38 1.4384490251541138 39 1.4384490251541138 40 1.4384490251541138 41 1.4384490251541138
		 42 1.4384490251541138 43 1.4384490251541138 44 1.4384490251541138 45 1.4384490251541138
		 46 1.4384490251541138 47 1.4384490251541138 48 1.4384490251541138;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.67554420232772827 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.73731952905654907 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.67554420232772827 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.73731952905654907 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "BACKB__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -0.0080434270203113556 1 0.05104701966047287
		 2 0.25491470098495483 3 0.48419210314750677 4 0.71307861804962158 5 0.91060888767242421
		 6 1.0416549444198608 7 1.0973969697952271 8 1.1262120008468628 9 0.055653989315032959
		 10 0.089664526283740997 11 0.10050120204687119 12 0.047084860503673553 13 0.046569079160690308
		 14 0.031109660863876346 15 0.0016257109818980098 16 -0.026655539870262146 17 1.1189939975738525
		 18 1.1189939975738525 19 0.05104701966047287 20 0.05104701966047287 21 0.05104701966047287
		 22 0.05104701966047287 23 0.05104701966047287 24 0.05104701966047287 25 0.05104701966047287
		 26 0.05104701966047287 27 0.05104701966047287 28 0.05104701966047287 29 0.05104701966047287
		 30 0.05104701966047287 31 0.05104701966047287 32 0.05104701966047287 33 0.05104701966047287
		 34 0.05104701966047287 35 0.05104701966047287 36 0.05104701966047287 37 0.05104701966047287
		 38 0.05104701966047287 39 0.05104701966047287 40 0.05104701966047287 41 0.05104701966047287
		 42 0.05104701966047287 43 0.05104701966047287 44 0.05104701966047287 45 0.05104701966047287
		 46 0.05104701966047287 47 0.05104701966047287 48 0.05104701966047287;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99848693609237671 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.054990489035844803 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99848693609237671 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.054990489035844803 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "BACKB__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0.18985719978809357 1 0.18691049516201019
		 2 0.16347000002861023 3 0.16917799413204193 4 0.22664959728717804 5 0.31009399890899658
		 6 0.40140381455421448 7 0.42477509379386902 8 0.34631660580635071 9 0.49419209361076361
		 10 0.46420779824256903 11 0.43058869242668152 12 0.43618199229240417 13 0.43964961171150208
		 14 0.44100889563560486 15 0.44211581349372864 16 0.44146409630775452 17 0.36695748567581177
		 18 0.36695748567581177 19 0.18691049516201019 20 0.18691049516201019 21 0.18691049516201019
		 22 0.18691049516201019 23 0.18691049516201019 24 0.18691049516201019 25 0.18691049516201019
		 26 0.18691049516201019 27 0.18691049516201019 28 0.18691049516201019 29 0.18691049516201019
		 30 0.18691049516201019 31 0.18691049516201019 32 0.18691049516201019 33 0.18691049516201019
		 34 0.18691049516201019 35 0.18691049516201019 36 0.18691049516201019 37 0.18691049516201019
		 38 0.18691049516201019 39 0.18691049516201019 40 0.18691049516201019 41 0.18691049516201019
		 42 0.18691049516201019 43 0.18691049516201019 44 0.18691049516201019 45 0.18691049516201019
		 46 0.18691049516201019 47 0.18691049516201019 48 0.18691049516201019;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.9999847412109375 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.0055264378897845745 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.9999847412109375 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.0055264378897845745 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "SC_BACKB__Skeleton_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "SC_BACKB__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "NECK__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -11.388239860534668 1 -8.7218923568725586
		 2 -5.6339449882507324 3 -5.2166891098022461 4 -5.3012561798095703 5 -4.88031005859375
		 6 -4.6153388023376465 7 -6.6002421379089355 8 -9.7917022705078125 9 -11.461770057678223
		 10 -10.155799865722656 11 -4.8267579078674316 12 -3.6915140151977544 13 -3.3340439796447754
		 14 -3.5741748809814453 15 -4.0174927711486816 16 -4.6152620315551758 17 -8.1664562225341797
		 18 -8.1664562225341797 19 -8.7218923568725586 20 -8.7218923568725586 21 -8.7218923568725586
		 22 -8.7218923568725586 23 -8.7218923568725586 24 -8.7218923568725586 25 -8.7218923568725586
		 26 -8.7218923568725586 27 -8.7218923568725586 28 -8.7218923568725586 29 -8.7218923568725586
		 30 -8.7218923568725586 31 -8.7218923568725586 32 -8.7218923568725586 33 -8.7218923568725586
		 34 -8.7218923568725586 35 -8.7218923568725586 36 -8.7218923568725586 37 -8.7218923568725586
		 38 -8.7218923568725586 39 -8.7218923568725586 40 -8.7218923568725586 41 -8.7218923568725586
		 42 -8.7218923568725586 43 -8.7218923568725586 44 -8.7218923568725586 45 -8.7218923568725586
		 46 -8.7218923568725586 47 -8.7218923568725586 48 -8.7218923568725586;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.63855725526809692 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.76957428455352783 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.63855725526809692 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.76957428455352783 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "NECK__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -1.1741440296173096 1 -1.1727869510650635
		 2 -1.1701380014419556 3 -1.1644769906997681 4 -1.1544569730758667 5 -1.1360249519348145
		 6 -1.1204550266265869 7 -1.1370079517364502 8 -1.1638699769973755 9 -1.1741379499435425
		 10 -1.1707710027694702 11 -1.1679600477218628 12 -1.1614279747009277 13 -1.1525299549102783
		 14 -1.1445280313491821 15 -1.1369529962539673 16 -1.1326930522918701 17 -1.1566150188446045
		 18 -1.1566150188446045 19 -1.1727869510650635 20 -1.1727869510650635 21 -1.1727869510650635
		 22 -1.1727869510650635 23 -1.1727869510650635 24 -1.1727869510650635 25 -1.1727869510650635
		 26 -1.1727869510650635 27 -1.1727869510650635 28 -1.1727869510650635 29 -1.1727869510650635
		 30 -1.1727869510650635 31 -1.1727869510650635 32 -1.1727869510650635 33 -1.1727869510650635
		 34 -1.1727869510650635 35 -1.1727869510650635 36 -1.1727869510650635 37 -1.1727869510650635
		 38 -1.1727869510650635 39 -1.1727869510650635 40 -1.1727869510650635 41 -1.1727869510650635
		 42 -1.1727869510650635 43 -1.1727869510650635 44 -1.1727869510650635 45 -1.1727869510650635
		 46 -1.1727869510650635 47 -1.1727869510650635 48 -1.1727869510650635;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99999964237213135 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.00083902018377557397 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99999964237213135 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.00083902018377557397 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "NECK__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -0.12624570727348328 1 -0.11539520323276521
		 2 -0.12077949941158295 3 -0.164518803358078 4 -0.22413510084152222 5 -0.30333051085472107
		 6 -0.35643219947814941 7 -0.30378139019012451 8 -0.19041259586811066 9 -0.12700720131397247
		 10 -0.14223009347915649 11 -0.13835540413856506 12 -0.18317760527133942 13 -0.23166589438915253
		 14 -0.26875090599060059 15 -0.29977700114250183 16 -0.31635621190071106 17 -0.22384549677371979
		 18 -0.22384549677371979 19 -0.11539520323276521 20 -0.11539520323276521 21 -0.11539520323276521
		 22 -0.11539520323276521 23 -0.11539520323276521 24 -0.11539520323276521 25 -0.11539520323276521
		 26 -0.11539520323276521 27 -0.11539520323276521 28 -0.11539520323276521 29 -0.11539520323276521
		 30 -0.11539520323276521 31 -0.11539520323276521 32 -0.11539520323276521 33 -0.11539520323276521
		 34 -0.11539520323276521 35 -0.11539520323276521 36 -0.11539520323276521 37 -0.11539520323276521
		 38 -0.11539520323276521 39 -0.11539520323276521 40 -0.11539520323276521 41 -0.11539520323276521
		 42 -0.11539520323276521 43 -0.11539520323276521 44 -0.11539520323276521 45 -0.11539520323276521
		 46 -0.11539520323276521 47 -0.11539520323276521 48 -0.11539520323276521;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99999934434890747 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.0011448392178863287 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99999934434890747 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.0011448392178863287 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "SC_NECK__Skeleton_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "SC_NECK__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "HEAD__Skeleton_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "HEAD__Skeleton_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "HEAD__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "HEAD__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -11.388239860534668 1 -8.7218923568725586
		 2 -5.6339449882507324 3 -5.2166891098022461 4 -5.3012561798095703 5 -4.88031005859375
		 6 -4.6153388023376465 7 -6.6002421379089355 8 -9.7917022705078125 9 -11.461770057678223
		 10 -10.155799865722656 11 -4.8267579078674316 12 -3.6915140151977544 13 -3.3340439796447754
		 14 -3.5741748809814453 15 -4.0174927711486816 16 -4.6152620315551758 17 -8.1664562225341797
		 18 -8.1664562225341797 19 -8.7218923568725586 20 -8.7218923568725586 21 -8.7218923568725586
		 22 -8.7218923568725586 23 -8.7218923568725586 24 -8.7218923568725586 25 -8.7218923568725586
		 26 -8.7218923568725586 27 -8.7218923568725586 28 -8.7218923568725586 29 -8.7218923568725586
		 30 -8.7218923568725586 31 -8.7218923568725586 32 -8.7218923568725586 33 -8.7218923568725586
		 34 -8.7218923568725586 35 -8.7218923568725586 36 -8.7218923568725586 37 -8.7218923568725586
		 38 -8.7218923568725586 39 -8.7218923568725586 40 -8.7218923568725586 41 -8.7218923568725586
		 42 -8.7218923568725586 43 -8.7218923568725586 44 -8.7218923568725586 45 -8.7218923568725586
		 46 -8.7218923568725586 47 -8.7218923568725586 48 -8.7218923568725586;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.63855725526809692 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.76957428455352783 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.63855725526809692 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.76957428455352783 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "HEAD__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -1.1741440296173096 1 -1.1727869510650635
		 2 -1.1701380014419556 3 -1.1644769906997681 4 -1.1544569730758667 5 -1.1360249519348145
		 6 -1.1204550266265869 7 -1.1370079517364502 8 -1.1638699769973755 9 -1.1741379499435425
		 10 -1.1707710027694702 11 -1.1679600477218628 12 -1.1614279747009277 13 -1.1525299549102783
		 14 -1.1445280313491821 15 -1.1369529962539673 16 -1.1326930522918701 17 -1.1566150188446045
		 18 -1.1566150188446045 19 -1.1727869510650635 20 -1.1727869510650635 21 -1.1727869510650635
		 22 -1.1727869510650635 23 -1.1727869510650635 24 -1.1727869510650635 25 -1.1727869510650635
		 26 -1.1727869510650635 27 -1.1727869510650635 28 -1.1727869510650635 29 -1.1727869510650635
		 30 -1.1727869510650635 31 -1.1727869510650635 32 -1.1727869510650635 33 -1.1727869510650635
		 34 -1.1727869510650635 35 -1.1727869510650635 36 -1.1727869510650635 37 -1.1727869510650635
		 38 -1.1727869510650635 39 -1.1727869510650635 40 -1.1727869510650635 41 -1.1727869510650635
		 42 -1.1727869510650635 43 -1.1727869510650635 44 -1.1727869510650635 45 -1.1727869510650635
		 46 -1.1727869510650635 47 -1.1727869510650635 48 -1.1727869510650635;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99999964237213135 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.00083902018377557397 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99999964237213135 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.00083902018377557397 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "HEAD__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -0.12624570727348328 1 -0.11539520323276521
		 2 -0.12077949941158295 3 -0.164518803358078 4 -0.22413510084152222 5 -0.30333051085472107
		 6 -0.35643219947814941 7 -0.30378139019012451 8 -0.19041259586811066 9 -0.12700720131397247
		 10 -0.14223009347915649 11 -0.13835540413856506 12 -0.18317760527133942 13 -0.23166589438915253
		 14 -0.26875090599060059 15 -0.29977700114250183 16 -0.31635621190071106 17 -0.22384549677371979
		 18 -0.22384549677371979 19 -0.11539520323276521 20 -0.11539520323276521 21 -0.11539520323276521
		 22 -0.11539520323276521 23 -0.11539520323276521 24 -0.11539520323276521 25 -0.11539520323276521
		 26 -0.11539520323276521 27 -0.11539520323276521 28 -0.11539520323276521 29 -0.11539520323276521
		 30 -0.11539520323276521 31 -0.11539520323276521 32 -0.11539520323276521 33 -0.11539520323276521
		 34 -0.11539520323276521 35 -0.11539520323276521 36 -0.11539520323276521 37 -0.11539520323276521
		 38 -0.11539520323276521 39 -0.11539520323276521 40 -0.11539520323276521 41 -0.11539520323276521
		 42 -0.11539520323276521 43 -0.11539520323276521 44 -0.11539520323276521 45 -0.11539520323276521
		 46 -0.11539520323276521 47 -0.11539520323276521 48 -0.11539520323276521;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99999934434890747 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.0011448392178863287 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99999934434890747 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.0011448392178863287 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_C__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_C__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_C__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_S__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -2.4563350677490234 2 -5.1287388801574707
		 3 -9.9418268203735352 4 -18.648019790649414 5 -21.691059112548828 6 -20.0435791015625
		 7 -13.59412956237793 8 -10.112549781799316 9 -12.17057991027832 10 -17.733579635620117
		 11 -10.230130195617676 12 14.881039619445803 13 19.340190887451172 14 35.919879913330078
		 15 68.349586486816406 16 30.003700256347653 17 21.898239135742188 18 21.898239135742188
		 19 -2.4563350677490234 20 -2.4563350677490234 21 -2.4563350677490234 22 -2.4563350677490234
		 23 -2.4563350677490234 24 -2.4563350677490234 25 -2.4563350677490234 26 -2.4563350677490234
		 27 -2.4563350677490234 28 -2.4563350677490234 29 -2.4563350677490234 30 -2.4563350677490234
		 31 -2.4563350677490234 32 -2.4563350677490234 33 -2.4563350677490234 34 -2.4563350677490234
		 35 -2.4563350677490234 36 -2.4563350677490234 37 -2.4563350677490234 38 -2.4563350677490234
		 39 -2.4563350677490234 40 -2.4563350677490234 41 -2.4563350677490234 42 -2.4563350677490234
		 43 -2.4563350677490234 44 -2.4563350677490234 45 -2.4563350677490234 46 -2.4563350677490234
		 47 -2.4563350677490234 48 -2.4563350677490234;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.8370545506477356 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.54711949825286865 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.8370545506477356 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.54711949825286865 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_S__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 39.049888610839844 2 8.5159988403320312
		 3 -3.8868300914764404 4 -8.3026828765869141 5 -16.740510940551758 6 -21.97477912902832
		 7 -21.071369171142578 8 -12.419449806213379 9 3.8917379379272461 10 29.892160415649418
		 11 52.180648803710938 12 52.306121826171875 13 63.555370330810554 14 74.556106567382812
		 15 74.504051208496094 16 68.450279235839844 17 63.443431854248047 18 63.443431854248047
		 19 39.049888610839844 20 39.049888610839844 21 39.049888610839844 22 39.049888610839844
		 23 39.049888610839844 24 39.049888610839844 25 39.049888610839844 26 39.049888610839844
		 27 39.049888610839844 28 39.049888610839844 29 39.049888610839844 30 39.049888610839844
		 31 39.049888610839844 32 39.049888610839844 33 39.049888610839844 34 39.049888610839844
		 35 39.049888610839844 36 39.049888610839844 37 39.049888610839844 38 39.049888610839844
		 39 39.049888610839844 40 39.049888610839844 41 39.049888610839844 42 39.049888610839844
		 43 39.049888610839844 44 39.049888610839844 45 39.049888610839844 46 39.049888610839844
		 47 39.049888610839844 48 39.049888610839844;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.12211444228887558 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.99251604080200195 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.12211444228887558 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.99251604080200195 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_S__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -48.230510711669922 2 -46.380229949951172
		 3 -49.269561767578125 4 -35.141471862792969 5 -16.464420318603516 6 -11.589550018310547
		 7 -44.476528167724609 8 -53.460819244384766 9 -60.027641296386719 10 -67.454421997070312
		 11 -60.449611663818359 12 -46.771961212158203 13 -37.455570220947266 14 -10.600979804992676
		 15 26.277849197387695 16 -22.810640335083008 17 -32.746688842773438 18 -32.746688842773438
		 19 -48.230510711669922 20 -48.230510711669922 21 -48.230510711669922 22 -48.230510711669922
		 23 -48.230510711669922 24 -48.230510711669922 25 -48.230510711669922 26 -48.230510711669922
		 27 -48.230510711669922 28 -48.230510711669922 29 -48.230510711669922 30 -48.230510711669922
		 31 -48.230510711669922 32 -48.230510711669922 33 -48.230510711669922 34 -48.230510711669922
		 35 -48.230510711669922 36 -48.230510711669922 37 -48.230510711669922 38 -48.230510711669922
		 39 -48.230510711669922 40 -48.230510711669922 41 -48.230510711669922 42 -48.230510711669922
		 43 -48.230510711669922 44 -48.230510711669922 45 -48.230510711669922 46 -48.230510711669922
		 47 -48.230510711669922 48 -48.230510711669922;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.4811704158782959 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.87662708759307861 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.4811704158782959 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.87662708759307861 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_E__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -0.21339060366153717 2 -0.19934569299221039
		 3 -0.17585280537605286 4 -0.21072660386562347 5 -0.19798949360847473 6 -0.1788627952337265
		 7 -0.14968900382518768 8 -0.14206290245056152 9 -0.14715249836444855 10 -0.11624699831008911
		 11 -0.14482049643993378 12 -0.14238500595092773 13 -0.14334569871425629 14 -0.14373089373111725
		 15 -0.13893879950046539 16 -0.13533620536327362 17 -0.16084380447864532 18 -0.16084380447864532
		 19 -0.21339060366153717 20 -0.21339060366153717 21 -0.21339060366153717 22 -0.21339060366153717
		 23 -0.21339060366153717 24 -0.21339060366153717 25 -0.21339060366153717 26 -0.21339060366153717
		 27 -0.21339060366153717 28 -0.21339060366153717 29 -0.21339060366153717 30 -0.21339060366153717
		 31 -0.21339060366153717 32 -0.21339060366153717 33 -0.21339060366153717 34 -0.21339060366153717
		 35 -0.21339060366153717 36 -0.21339060366153717 37 -0.21339060366153717 38 -0.21339060366153717
		 39 -0.21339060366153717 40 -0.21339060366153717 41 -0.21339060366153717 42 -0.21339060366153717
		 43 -0.21339060366153717 44 -0.21339060366153717 45 -0.21339060366153717 46 -0.21339060366153717
		 47 -0.21339060366153717 48 -0.21339060366153717;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99996340274810791 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.0085549755021929741 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99996340274810791 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.0085549755021929741 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_E__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -100.84400177001953 2 -94.816116333007812
		 3 -84.742530822753906 4 -99.70037841796875 5 -94.234230041503906 6 -86.032470703125
		 7 -73.541007995605469 8 -70.280166625976562 9 -72.456199645996094 10 -59.257789611816413
		 11 -71.459068298339844 12 -70.417877197265625 13 -70.828536987304688 14 -70.993240356445312
		 15 -68.944961547851562 16 -67.405632019042969 17 -78.314201354980469 18 -78.314201354980469
		 19 -100.84400177001953 20 -100.84400177001953 21 -100.84400177001953 22 -100.84400177001953
		 23 -100.84400177001953 24 -100.84400177001953 25 -100.84400177001953 26 -100.84400177001953
		 27 -100.84400177001953 28 -100.84400177001953 29 -100.84400177001953 30 -100.84400177001953
		 31 -100.84400177001953 32 -100.84400177001953 33 -100.84400177001953 34 -100.84400177001953
		 35 -100.84400177001953 36 -100.84400177001953 37 -100.84400177001953 38 -100.84400177001953
		 39 -100.84400177001953 40 -100.84400177001953 41 -100.84400177001953 42 -100.84400177001953
		 43 -100.84400177001953 44 -100.84400177001953 45 -100.84400177001953 46 -100.84400177001953
		 47 -100.84400177001953 48 -100.84400177001953;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.26312649250030518 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.96476131677627563 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.26312649250030518 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.96476131677627563 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_E__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0.23655809462070465 2 0.20692090690135956
		 3 0.16288159787654877 4 0.23073939979076385 5 0.20419329404830933 6 0.16815310716629028
		 7 0.12133649736642836 8 0.11059069633483887 9 0.11769700050354005 10 0.078376039862632751
		 11 0.11440879851579666 12 0.11103279888629913 13 0.11235730350017548 14 0.11289110034704208
		 15 0.10635630041360855 16 0.10159140080213547 17 0.13813689351081848 18 0.13813689351081848
		 19 0.23655809462070465 20 0.23655809462070465 21 0.23655809462070465 22 0.23655809462070465
		 23 0.23655809462070465 24 0.23655809462070465 25 0.23655809462070465 26 0.23655809462070465
		 27 0.23655809462070465 28 0.23655809462070465 29 0.23655809462070465 30 0.23655809462070465
		 31 0.23655809462070465 32 0.23655809462070465 33 0.23655809462070465 34 0.23655809462070465
		 35 0.23655809462070465 36 0.23655809462070465 37 0.23655809462070465 38 0.23655809462070465
		 39 0.23655809462070465 40 0.23655809462070465 41 0.23655809462070465 42 0.23655809462070465
		 43 0.23655809462070465 44 0.23655809462070465 45 0.23655809462070465 46 0.23655809462070465
		 47 0.23655809462070465 48 0.23655809462070465;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99988502264022827 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.015167523175477982 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99988502264022827 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.015167523175477982 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_W__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -20.426719665527344 2 -29.084419250488281
		 3 -30.361349105834957 4 -44.084270477294922 5 -53.101650238037109 6 -56.172748565673828
		 7 -27.125110626220703 8 -40.497169494628906 9 -41.363449096679688 10 -8.4119911193847656
		 11 2.1448729038238525 12 14.14922046661377 13 8.1402950286865234 14 2.4363059997558594
		 15 -5.6453838348388672 16 -15.343390464782713 17 -23.160749435424805 18 -23.160749435424805
		 19 -20.426719665527344 20 -20.426719665527344 21 -20.426719665527344 22 -20.426719665527344
		 23 -20.426719665527344 24 -20.426719665527344 25 -20.426719665527344 26 -20.426719665527344
		 27 -20.426719665527344 28 -20.426719665527344 29 -20.426719665527344 30 -20.426719665527344
		 31 -20.426719665527344 32 -20.426719665527344 33 -20.426719665527344 34 -20.426719665527344
		 35 -20.426719665527344 36 -20.426719665527344 37 -20.426719665527344 38 -20.426719665527344
		 39 -20.426719665527344 40 -20.426719665527344 41 -20.426719665527344 42 -20.426719665527344
		 43 -20.426719665527344 44 -20.426719665527344 45 -20.426719665527344 46 -20.426719665527344
		 47 -20.426719665527344 48 -20.426719665527344;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.309742271900177 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.95082056522369385 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.309742271900177 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.95082056522369385 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_W__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -6.726128101348877 2 -14.639069557189941
		 3 -24.848350524902344 4 -21.476320266723633 5 -22.137870788574219 6 -19.743410110473633
		 7 -9.926788330078125 8 -5.2151970863342285 9 -19.708690643310547 10 -6.0567588806152344
		 11 -17.17664909362793 12 -18.096790313720703 13 -11.281220436096191 14 4.1451878547668457
		 15 14.372420310974121 16 20.760269165039062 17 12.582719802856445 18 12.582719802856445
		 19 -6.726128101348877 20 -6.726128101348877 21 -6.726128101348877 22 -6.726128101348877
		 23 -6.726128101348877 24 -6.726128101348877 25 -6.726128101348877 26 -6.726128101348877
		 27 -6.726128101348877 28 -6.726128101348877 29 -6.726128101348877 30 -6.726128101348877
		 31 -6.726128101348877 32 -6.726128101348877 33 -6.726128101348877 34 -6.726128101348877
		 35 -6.726128101348877 36 -6.726128101348877 37 -6.726128101348877 38 -6.726128101348877
		 39 -6.726128101348877 40 -6.726128101348877 41 -6.726128101348877 42 -6.726128101348877
		 43 -6.726128101348877 44 -6.726128101348877 45 -6.726128101348877 46 -6.726128101348877
		 47 -6.726128101348877 48 -6.726128101348877;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.49924486875534058 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.86646097898483276 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.49924486875534058 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.86646097898483276 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_W__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -21.846370697021484 2 -12.752389907836914
		 3 -24.841930389404297 4 -10.618630409240723 5 7.3690648078918466 6 10.145919799804688
		 7 -2.1672608852386475 8 -1.7899219989776611 9 -46.823219299316406 10 -13.05836009979248
		 11 -17.2476806640625 12 -10.064229965209961 13 -24.462020874023438 14 -38.286880493164062
		 15 -40.737030029296875 16 -23.642309188842773 17 -13.870590209960938 18 -13.870590209960938
		 19 -21.846370697021484 20 -21.846370697021484 21 -21.846370697021484 22 -21.846370697021484
		 23 -21.846370697021484 24 -21.846370697021484 25 -21.846370697021484 26 -21.846370697021484
		 27 -21.846370697021484 28 -21.846370697021484 29 -21.846370697021484 30 -21.846370697021484
		 31 -21.846370697021484 32 -21.846370697021484 33 -21.846370697021484 34 -21.846370697021484
		 35 -21.846370697021484 36 -21.846370697021484 37 -21.846370697021484 38 -21.846370697021484
		 39 -21.846370697021484 40 -21.846370697021484 41 -21.846370697021484 42 -21.846370697021484
		 43 -21.846370697021484 44 -21.846370697021484 45 -21.846370697021484 46 -21.846370697021484
		 47 -21.846370697021484 48 -21.846370697021484;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.88515979051589966 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.46528717875480652 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.88515979051589966 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.46528717875480652 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 2.9159359931945801 2 2.8362140655517578
		 3 2.7488598823547363 4 2.6598169803619385 5 2.5761730670928955 6 2.5058779716491699
		 7 2.4574799537658691 8 2.983130931854248 9 2.9831418991088867 10 2.9832251071929932
		 11 2.9831230640411377 12 2.9831230640411377 13 2.9831249713897705 14 2.983130931854248
		 15 2.9831390380859375 16 2.9831399917602539 17 2.9832079410552979 18 2.9832079410552979
		 19 2.9159359931945801 20 2.9159359931945801 21 2.9159359931945801 22 2.9159359931945801
		 23 2.9159359931945801 24 2.9159359931945801 25 2.9159359931945801 26 2.9159359931945801
		 27 2.9159359931945801 28 2.9159359931945801 29 2.9159359931945801 30 2.9159359931945801
		 31 2.9159359931945801 32 2.9159359931945801 33 2.9159359931945801 34 2.9159359931945801
		 35 2.9159359931945801 36 2.9159359931945801 37 2.9159359931945801 38 2.9159359931945801
		 39 2.9159359931945801 40 2.9159359931945801 41 2.9159359931945801 42 2.9159359931945801
		 43 2.9159359931945801 44 2.9159359931945801 45 2.9159359931945801 46 2.9159359931945801
		 47 2.9159359931945801 48 2.9159359931945801;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99952703714370728 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.030752945691347122 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99952703714370728 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.030752945691347122 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 5.9694061279296875 2 6.0747051239013672
		 3 6.1868991851806641 4 6.2980461120605469 5 6.4000420570373535 6 6.483889102935791
		 7 6.5407090187072754 8 5.8783450126647949 9 5.8782458305358887 10 5.8780112266540527
		 11 5.8783688545227051 12 5.8783860206604004 13 5.8783698081970215 14 5.8783397674560547
		 15 5.8783121109008789 16 5.8783211708068848 17 5.8780899047851562 18 5.8780899047851562
		 19 5.9694061279296875 20 5.9694061279296875 21 5.9694061279296875 22 5.9694061279296875
		 23 5.9694061279296875 24 5.9694061279296875 25 5.9694061279296875 26 5.9694061279296875
		 27 5.9694061279296875 28 5.9694061279296875 29 5.9694061279296875 30 5.9694061279296875
		 31 5.9694061279296875 32 5.9694061279296875 33 5.9694061279296875 34 5.9694061279296875
		 35 5.9694061279296875 36 5.9694061279296875 37 5.9694061279296875 38 5.9694061279296875
		 39 5.9694061279296875 40 5.9694061279296875 41 5.9694061279296875 42 5.9694061279296875
		 43 5.9694061279296875 44 5.9694061279296875 45 5.9694061279296875 46 5.9694061279296875
		 47 5.9694061279296875 48 5.9694061279296875;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99915575981140137 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.041082467883825302 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99915575981140137 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.041082467883825302 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -35.998870849609375 2 -36.848110198974609
		 3 -37.752799987792969 4 -38.649059295654297 5 -39.469520568847656 6 -40.143531799316406
		 7 -40.599811553955078 8 -35.264320373535156 9 -35.263969421386719 10 -35.262718200683594
		 11 -35.264450073242188 12 -35.264499664306641 13 -35.264438629150391 14 -35.264308929443359
		 15 -35.264171600341797 16 -35.264190673828125 17 -35.263050079345703 18 -35.263050079345703
		 19 -35.998870849609375 20 -35.998870849609375 21 -35.998870849609375 22 -35.998870849609375
		 23 -35.998870849609375 24 -35.998870849609375 25 -35.998870849609375 26 -35.998870849609375
		 27 -35.998870849609375 28 -35.998870849609375 29 -35.998870849609375 30 -35.998870849609375
		 31 -35.998870849609375 32 -35.998870849609375 33 -35.998870849609375 34 -35.998870849609375
		 35 -35.998870849609375 36 -35.998870849609375 37 -35.998870849609375 38 -35.998870849609375
		 39 -35.998870849609375 40 -35.998870849609375 41 -35.998870849609375 42 -35.998870849609375
		 43 -35.998870849609375 44 -35.998870849609375 45 -35.998870849609375 46 -35.998870849609375
		 47 -35.998870849609375 48 -35.998870849609375;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.94915753602981567 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.31480154395103455 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.94915753602981567 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.31480154395103455 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -51.293560028076172 2 -51.497230529785156
		 3 -51.702678680419922 4 -51.894889831542969 5 -52.061389923095703 6 -52.191570281982422
		 7 -52.276409149169922 8 -51.108631134033203 9 -51.108528137207031 10 -51.108230590820312
		 11 -51.108669281005859 12 -51.108688354492188 13 -51.108669281005859 14 -51.108631134033203
		 15 -51.108589172363281 16 -51.108600616455078 17 -51.108341217041016 18 -51.108341217041016
		 19 -51.293560028076172 20 -51.293560028076172 21 -51.293560028076172 22 -51.293560028076172
		 23 -51.293560028076172 24 -51.293560028076172 25 -51.293560028076172 26 -51.293560028076172
		 27 -51.293560028076172 28 -51.293560028076172 29 -51.293560028076172 30 -51.293560028076172
		 31 -51.293560028076172 32 -51.293560028076172 33 -51.293560028076172 34 -51.293560028076172
		 35 -51.293560028076172 36 -51.293560028076172 37 -51.293560028076172 38 -51.293560028076172
		 39 -51.293560028076172 40 -51.293560028076172 41 -51.293560028076172 42 -51.293560028076172
		 43 -51.293560028076172 44 -51.293560028076172 45 -51.293560028076172 46 -51.293560028076172
		 47 -51.293560028076172 48 -51.293560028076172;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99670529365539551 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.081107974052429199 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99670529365539551 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.081107974052429199 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -88.978622436523438 2 -89.331939697265625
		 3 -89.688316345214844 4 -90.021751403808594 5 -90.310577392578125 6 -90.536392211914062
		 7 -90.683563232421875 8 -88.657829284667969 9 -88.657661437988281 10 -88.657142639160156
		 11 -88.65789794921875 12 -88.657943725585938 13 -88.65789794921875 14 -88.657821655273438
		 15 -88.657760620117188 16 -88.657783508300781 17 -88.657318115234375 18 -88.657318115234375
		 19 -88.978622436523438 20 -88.978622436523438 21 -88.978622436523438 22 -88.978622436523438
		 23 -88.978622436523438 24 -88.978622436523438 25 -88.978622436523438 26 -88.978622436523438
		 27 -88.978622436523438 28 -88.978622436523438 29 -88.978622436523438 30 -88.978622436523438
		 31 -88.978622436523438 32 -88.978622436523438 33 -88.978622436523438 34 -88.978622436523438
		 35 -88.978622436523438 36 -88.978622436523438 37 -88.978622436523438 38 -88.978622436523438
		 39 -88.978622436523438 40 -88.978622436523438 41 -88.978622436523438 42 -88.978622436523438
		 43 -88.978622436523438 44 -88.978622436523438 45 -88.978622436523438 46 -88.978622436523438
		 47 -88.978622436523438 48 -88.978622436523438;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99018329381942749 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.13977563381195068 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99018329381942749 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.13977563381195068 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGD_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 3.4387760162353516 2 3.4117538928985596
		 3 3.3816549777984619 4 3.3505449295043945 5 3.320702075958252 6 3.2952771186828613
		 7 3.2775809764862061 8 3.4608399868011475 9 3.4608418941497803 10 3.4606039524078369
		 11 3.4608609676361084 12 3.4608559608459473 13 3.4608550071716309 14 3.4608430862426758
		 15 3.4608240127563477 16 3.460813045501709 17 3.4606359004974365 18 3.4606359004974365
		 19 3.4387760162353516 20 3.4387760162353516 21 3.4387760162353516 22 3.4387760162353516
		 23 3.4387760162353516 24 3.4387760162353516 25 3.4387760162353516 26 3.4387760162353516
		 27 3.4387760162353516 28 3.4387760162353516 29 3.4387760162353516 30 3.4387760162353516
		 31 3.4387760162353516 32 3.4387760162353516 33 3.4387760162353516 34 3.4387760162353516
		 35 3.4387760162353516 36 3.4387760162353516 37 3.4387760162353516 38 3.4387760162353516
		 39 3.4387760162353516 40 3.4387760162353516 41 3.4387760162353516 42 3.4387760162353516
		 43 3.4387760162353516 44 3.4387760162353516 45 3.4387760162353516 46 3.4387760162353516
		 47 3.4387760162353516 48 3.4387760162353516;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99994707107543945 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.010287961922585964 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99994707107543945 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.010287961922585964 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 3.8699820041656494 2 3.9310069084167476
		 3 3.9966189861297612 4 4.0623211860656738 5 4.1228628158569336 6 4.1729660034179688
		 7 4.2070670127868652 8 3.8172249794006348 9 3.8171830177307129 10 3.8167679309844971
		 11 3.8172669410705571 12 3.8172690868377681 13 3.8172590732574463 14 3.8172259330749512
		 15 3.8171861171722412 16 3.8171770572662354 17 3.8168520927429199 18 3.8168520927429199
		 19 3.8699820041656494 20 3.8699820041656494 21 3.8699820041656494 22 3.8699820041656494
		 23 3.8699820041656494 24 3.8699820041656494 25 3.8699820041656494 26 3.8699820041656494
		 27 3.8699820041656494 28 3.8699820041656494 29 3.8699820041656494 30 3.8699820041656494
		 31 3.8699820041656494 32 3.8699820041656494 33 3.8699820041656494 34 3.8699820041656494
		 35 3.8699820041656494 36 3.8699820041656494 37 3.8699820041656494 38 3.8699820041656494
		 39 3.8699820041656494 40 3.8699820041656494 41 3.8699820041656494 42 3.8699820041656494
		 43 3.8699820041656494 44 3.8699820041656494 45 3.8699820041656494 46 3.8699820041656494
		 47 3.8699820041656494 48 3.8699820041656494;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99971652030944824 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.023809250444173813 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99971652030944824 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.023809250444173813 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -21.694219589233398 2 -22.262130737304688
		 3 -22.874149322509766 4 -23.487489700317383 5 -24.055690765380859 6 -24.527090072631836
		 7 -24.848640441894531 8 -21.208780288696289 9 -21.208520889282227 10 -21.208099365234375
		 11 -21.208850860595703 12 -21.208900451660156 13 -21.208850860595703 14 -21.208759307861328
		 15 -21.208690643310547 16 -21.208730697631836 17 -21.208320617675781 18 -21.208320617675781
		 19 -21.694219589233398 20 -21.694219589233398 21 -21.694219589233398 22 -21.694219589233398
		 23 -21.694219589233398 24 -21.694219589233398 25 -21.694219589233398 26 -21.694219589233398
		 27 -21.694219589233398 28 -21.694219589233398 29 -21.694219589233398 30 -21.694219589233398
		 31 -21.694219589233398 32 -21.694219589233398 33 -21.694219589233398 34 -21.694219589233398
		 35 -21.694219589233398 36 -21.694219589233398 37 -21.694219589233398 38 -21.694219589233398
		 39 -21.694219589233398 40 -21.694219589233398 41 -21.694219589233398 42 -21.694219589233398
		 43 -21.694219589233398 44 -21.694219589233398 45 -21.694219589233398 46 -21.694219589233398
		 47 -21.694219589233398 48 -21.694219589233398;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.97652250528335571 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.21541541814804077 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.97652250528335571 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.21541541814804077 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -50.342720031738281 2 -50.637840270996094
		 3 -50.943748474121094 4 -51.238719940185547 5 -51.502048492431641 6 -51.713771820068359
		 7 -51.854820251464844 8 -50.080360412597656 9 -50.080230712890625 10 -50.079811096191406
		 11 -50.080379486083984 12 -50.080390930175781 13 -50.080379486083984 14 -50.080360412597656
		 15 -50.080329895019531 16 -50.080329895019531 17 -50.079868316650391 18 -50.079868316650391
		 19 -50.342720031738281 20 -50.342720031738281 21 -50.342720031738281 22 -50.342720031738281
		 23 -50.342720031738281 24 -50.342720031738281 25 -50.342720031738281 26 -50.342720031738281
		 27 -50.342720031738281 28 -50.342720031738281 29 -50.342720031738281 30 -50.342720031738281
		 31 -50.342720031738281 32 -50.342720031738281 33 -50.342720031738281 34 -50.342720031738281
		 35 -50.342720031738281 36 -50.342720031738281 37 -50.342720031738281 38 -50.342720031738281
		 39 -50.342720031738281 40 -50.342720031738281 41 -50.342720031738281 42 -50.342720031738281
		 43 -50.342720031738281 44 -50.342720031738281 45 -50.342720031738281 46 -50.342720031738281
		 47 -50.342720031738281 48 -50.342720031738281;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99325412511825562 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.11595796048641205 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99325412511825562 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.11595796048641205 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -86.79779052734375 2 -87.306617736816406
		 3 -87.834053039550781 4 -88.342620849609375 5 -88.796638488769531 6 -89.161666870117188
		 7 -89.40484619140625 8 -86.345458984375 9 -86.345237731933594 10 -86.344497680664062
		 11 -86.345466613769531 12 -86.345489501953125 13 -86.345481872558594 14 -86.345458984375
		 15 -86.34539794921875 16 -86.34539794921875 17 -86.344596862792969 18 -86.344596862792969
		 19 -86.79779052734375 20 -86.79779052734375 21 -86.79779052734375 22 -86.79779052734375
		 23 -86.79779052734375 24 -86.79779052734375 25 -86.79779052734375 26 -86.79779052734375
		 27 -86.79779052734375 28 -86.79779052734375 29 -86.79779052734375 30 -86.79779052734375
		 31 -86.79779052734375 32 -86.79779052734375 33 -86.79779052734375 34 -86.79779052734375
		 35 -86.79779052734375 36 -86.79779052734375 37 -86.79779052734375 38 -86.79779052734375
		 39 -86.79779052734375 40 -86.79779052734375 41 -86.79779052734375 42 -86.79779052734375
		 43 -86.79779052734375 44 -86.79779052734375 45 -86.79779052734375 46 -86.79779052734375
		 47 -86.79779052734375 48 -86.79779052734375;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98033726215362549 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.19732916355133057 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98033726215362549 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.19732916355133057 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGC_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 2.7453939914703369 2 2.7300999164581299
		 3 2.7128679752349854 4 2.6949279308319092 5 2.6774380207061768 6 2.6624228954315186
		 7 2.6519069671630859 8 2.7574810981750488 9 2.7574849128723145 10 2.7571699619293213
		 11 2.7575089931488037 12 2.7575020790100098 13 2.7575008869171143 14 2.7574849128723145
		 15 2.7574589252471924 16 2.7574450969696045 17 2.7572119235992432 18 2.7572119235992432
		 19 2.7453939914703369 20 2.7453939914703369 21 2.7453939914703369 22 2.7453939914703369
		 23 2.7453939914703369 24 2.7453939914703369 25 2.7453939914703369 26 2.7453939914703369
		 27 2.7453939914703369 28 2.7453939914703369 29 2.7453939914703369 30 2.7453939914703369
		 31 2.7453939914703369 32 2.7453939914703369 33 2.7453939914703369 34 2.7453939914703369
		 35 2.7453939914703369 36 2.7453939914703369 37 2.7453939914703369 38 2.7453939914703369
		 39 2.7453939914703369 40 2.7453939914703369 41 2.7453939914703369 42 2.7453939914703369
		 43 2.7453939914703369 44 2.7453939914703369 45 2.7453939914703369 46 2.7453939914703369
		 47 2.7453939914703369 48 2.7453939914703369;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99998348951339722 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.005744843278080225 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99998348951339722 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.005744843278080225 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 3.8923981189727779 2 3.936708927154541
		 3 3.9843869209289551 4 4.0322098731994629 5 4.0762162208557129 6 4.1126508712768555
		 7 4.1374521255493164 8 3.8539159297943115 9 3.8538880348205566 10 3.8534560203552246
		 11 3.8539600372314449 12 3.8539600372314449 13 3.8539509773254395 14 3.8539190292358398
		 15 3.8538780212402339 16 3.8538649082183838 17 3.8535389900207524 18 3.8535389900207524
		 19 3.8923981189727779 20 3.8923981189727779 21 3.8923981189727779 22 3.8923981189727779
		 23 3.8923981189727779 24 3.8923981189727779 25 3.8923981189727779 26 3.8923981189727779
		 27 3.8923981189727779 28 3.8923981189727779 29 3.8923981189727779 30 3.8923981189727779
		 31 3.8923981189727779 32 3.8923981189727779 33 3.8923981189727779 34 3.8923981189727779
		 35 3.8923981189727779 36 3.8923981189727779 37 3.8923981189727779 38 3.8923981189727779
		 39 3.8923981189727779 40 3.8923981189727779 41 3.8923981189727779 42 3.8923981189727779
		 43 3.8923981189727779 44 3.8923981189727779 45 3.8923981189727779 46 3.8923981189727779
		 47 3.8923981189727779 48 3.8923981189727779;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99984997510910034 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.017322445288300514 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99984997510910034 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.017322445288300514 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -20.419370651245117 2 -20.877099990844727
		 3 -21.371330261230469 4 -21.867399215698242 5 -22.328109741210938 6 -22.710929870605469
		 7 -22.972389221191406 8 -20.029209136962891 9 -20.028980255126953 10 -20.028980255126953
		 11 -20.029260635375977 12 -20.029329299926758 13 -20.029270172119141 14 -20.029190063476562
		 15 -20.029159545898438 16 -20.029209136962891 17 -20.029159545898438 18 -20.029159545898438
		 19 -20.419370651245117 20 -20.419370651245117 21 -20.419370651245117 22 -20.419370651245117
		 23 -20.419370651245117 24 -20.419370651245117 25 -20.419370651245117 26 -20.419370651245117
		 27 -20.419370651245117 28 -20.419370651245117 29 -20.419370651245117 30 -20.419370651245117
		 31 -20.419370651245117 32 -20.419370651245117 33 -20.419370651245117 34 -20.419370651245117
		 35 -20.419370651245117 36 -20.419370651245117 37 -20.419370651245117 38 -20.419370651245117
		 39 -20.419370651245117 40 -20.419370651245117 41 -20.419370651245117 42 -20.419370651245117
		 43 -20.419370651245117 44 -20.419370651245117 45 -20.419370651245117 46 -20.419370651245117
		 47 -20.419370651245117 48 -20.419370651245117;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98459714651107788 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.17483830451965332 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98459714651107788 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.17483830451965332 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -47.769458770751953 2 -48.061168670654297
		 3 -48.363838195800781 4 -48.655971527099609 5 -48.917148590087891 6 -49.12738037109375
		 7 -49.267551422119141 8 -47.511180877685547 9 -47.511051177978516 10 -47.510719299316406
		 11 -47.511161804199219 12 -47.51116943359375 13 -47.511180877685547 14 -47.511180877685547
		 15 -47.511150360107422 16 -47.511161804199219 17 -47.510738372802734 18 -47.510738372802734
		 19 -47.769458770751953 20 -47.769458770751953 21 -47.769458770751953 22 -47.769458770751953
		 23 -47.769458770751953 24 -47.769458770751953 25 -47.769458770751953 26 -47.769458770751953
		 27 -47.769458770751953 28 -47.769458770751953 29 -47.769458770751953 30 -47.769458770751953
		 31 -47.769458770751953 32 -47.769458770751953 33 -47.769458770751953 34 -47.769458770751953
		 35 -47.769458770751953 36 -47.769458770751953 37 -47.769458770751953 38 -47.769458770751953
		 39 -47.769458770751953 40 -47.769458770751953 41 -47.769458770751953 42 -47.769458770751953
		 43 -47.769458770751953 44 -47.769458770751953 45 -47.769458770751953 46 -47.769458770751953
		 47 -47.769458770751953 48 -47.769458770751953;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.9934314489364624 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.1144285649061203 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.9934314489364624 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.1144285649061203 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -81.533851623535156 2 -82.031753540039062
		 3 -82.548347473144531 4 -83.046966552734375 5 -83.492752075195312 6 -83.851570129394531
		 7 -84.0908203125 8 -81.093009948730469 9 -81.092781066894531 10 -81.092231750488281
		 11 -81.092979431152344 12 -81.093002319335938 13 -81.093009948730469 14 -81.093009948730469
		 15 -81.092971801757812 16 -81.092979431152344 17 -81.092262268066406 18 -81.092262268066406
		 19 -81.533851623535156 20 -81.533851623535156 21 -81.533851623535156 22 -81.533851623535156
		 23 -81.533851623535156 24 -81.533851623535156 25 -81.533851623535156 26 -81.533851623535156
		 27 -81.533851623535156 28 -81.533851623535156 29 -81.533851623535156 30 -81.533851623535156
		 31 -81.533851623535156 32 -81.533851623535156 33 -81.533851623535156 34 -81.533851623535156
		 35 -81.533851623535156 36 -81.533851623535156 37 -81.533851623535156 38 -81.533851623535156
		 39 -81.533851623535156 40 -81.533851623535156 41 -81.533851623535156 42 -81.533851623535156
		 43 -81.533851623535156 44 -81.533851623535156 45 -81.533851623535156 46 -81.533851623535156
		 47 -81.533851623535156 48 -81.533851623535156;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98121660947799683 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.19290915131568909 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98121660947799683 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.19290915131568909 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGB_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 1.8737989664077759 2 1.8536659479141235
		 3 1.8311669826507568 4 1.8078809976577757 5 1.7854759693145752 6 1.7663780450820923
		 7 1.7530820369720459 8 1.8901059627532961 9 1.8901100158691408 10 1.8898860216140745
		 11 1.8901239633560178 12 1.8901180028915403 13 1.8901180028915403 14 1.8901079893112183
		 15 1.8900899887084959 16 1.8900799751281736 17 1.8899129629135132 18 1.8899129629135132
		 19 1.8737989664077759 20 1.8737989664077759 21 1.8737989664077759 22 1.8737989664077759
		 23 1.8737989664077759 24 1.8737989664077759 25 1.8737989664077759 26 1.8737989664077759
		 27 1.8737989664077759 28 1.8737989664077759 29 1.8737989664077759 30 1.8737989664077759
		 31 1.8737989664077759 32 1.8737989664077759 33 1.8737989664077759 34 1.8737989664077759
		 35 1.8737989664077759 36 1.8737989664077759 37 1.8737989664077759 38 1.8737989664077759
		 39 1.8737989664077759 40 1.8737989664077759 41 1.8737989664077759 42 1.8737989664077759
		 43 1.8737989664077759 44 1.8737989664077759 45 1.8737989664077759 46 1.8737989664077759
		 47 1.8737989664077759 48 1.8737989664077759;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99997085332870483 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.0076388968154788017 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99997085332870483 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.0076388968154788017 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 4.9414777755737305 2 4.9865350723266602
		 3 5.0347161293029785 4 5.0827140808105469 5 5.1266989707946777 6 5.1629409790039062
		 7 5.1875271797180176 8 4.9022397994995117 9 4.9022030830383301 10 4.9018287658691406
		 11 4.902277946472168 12 4.9022798538208008 13 4.9022707939147949 14 4.9022412300109863
		 15 4.9022049903869629 16 4.902195930480957 17 4.9019060134887695 18 4.9019060134887695
		 19 4.9414777755737305 20 4.9414777755737305 21 4.9414777755737305 22 4.9414777755737305
		 23 4.9414777755737305 24 4.9414777755737305 25 4.9414777755737305 26 4.9414777755737305
		 27 4.9414777755737305 28 4.9414777755737305 29 4.9414777755737305 30 4.9414777755737305
		 31 4.9414777755737305 32 4.9414777755737305 33 4.9414777755737305 34 4.9414777755737305
		 35 4.9414777755737305 36 4.9414777755737305 37 4.9414777755737305 38 4.9414777755737305
		 39 4.9414777755737305 40 4.9414777755737305 41 4.9414777755737305 42 4.9414777755737305
		 43 4.9414777755737305 44 4.9414777755737305 45 4.9414777755737305 46 4.9414777755737305
		 47 4.9414777755737305 48 4.9414777755737305;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99984437227249146 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.017638731747865677 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99984437227249146 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.017638731747865677 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -28.137050628662109 2 -28.632469177246094
		 3 -29.164960861206055 4 -29.696899414062504 5 -30.189020156860348 6 -30.596460342407227
		 7 -30.873989105224609 8 -27.713350296020508 9 -27.713090896606445 10 -27.713300704956055
		 11 -27.713380813598633 12 -27.713449478149414 13 -27.713399887084961 14 -27.713329315185547
		 15 -27.713310241699219 16 -27.713380813598633 17 -27.713449478149414 18 -27.713449478149414
		 19 -28.137050628662109 20 -28.137050628662109 21 -28.137050628662109 22 -28.137050628662109
		 23 -28.137050628662109 24 -28.137050628662109 25 -28.137050628662109 26 -28.137050628662109
		 27 -28.137050628662109 28 -28.137050628662109 29 -28.137050628662109 30 -28.137050628662109
		 31 -28.137050628662109 32 -28.137050628662109 33 -28.137050628662109 34 -28.137050628662109
		 35 -28.137050628662109 36 -28.137050628662109 37 -28.137050628662109 38 -28.137050628662109
		 39 -28.137050628662109 40 -28.137050628662109 41 -28.137050628662109 42 -28.137050628662109
		 43 -28.137050628662109 44 -28.137050628662109 45 -28.137050628662109 46 -28.137050628662109
		 47 -28.137050628662109 48 -28.137050628662109;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98197144269943237 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.18902929127216339 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98197144269943237 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.18902929127216339 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -45.311550140380859 2 -45.576248168945312
		 3 -45.849349975585938 4 -46.111351013183594 5 -46.344348907470703 6 -46.530941009521484
		 7 -46.654861450195312 8 -45.076259613037109 9 -45.076118469238281 10 -45.075969696044922
		 11 -45.076221466064453 12 -45.076229095458984 13 -45.076240539550781 14 -45.076248168945312
		 15 -45.076240539550781 16 -45.076259613037109 17 -45.075958251953125 18 -45.075958251953125
		 19 -45.311550140380859 20 -45.311550140380859 21 -45.311550140380859 22 -45.311550140380859
		 23 -45.311550140380859 24 -45.311550140380859 25 -45.311550140380859 26 -45.311550140380859
		 27 -45.311550140380859 28 -45.311550140380859 29 -45.311550140380859 30 -45.311550140380859
		 31 -45.311550140380859 32 -45.311550140380859 33 -45.311550140380859 34 -45.311550140380859
		 35 -45.311550140380859 36 -45.311550140380859 37 -45.311550140380859 38 -45.311550140380859
		 39 -45.311550140380859 40 -45.311550140380859 41 -45.311550140380859 42 -45.311550140380859
		 43 -45.311550140380859 44 -45.311550140380859 45 -45.311550140380859 46 -45.311550140380859
		 47 -45.311550140380859 48 -45.311550140380859;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99456155300140381 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.10415024310350418 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99456155300140381 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.10415024310350418 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -77.974296569824219 2 -78.4298095703125
		 3 -78.899772644042969 4 -79.350631713867188 5 -79.7515869140625 6 -80.072677612304688
		 7 -80.285926818847656 8 -77.569389343261719 9 -77.569160461425781 10 -77.568893432617188
		 11 -77.569343566894531 12 -77.569351196289062 13 -77.569358825683594 14 -77.569381713867188
		 15 -77.569366455078125 16 -77.56939697265625 17 -77.568878173828125 18 -77.568878173828125
		 19 -77.974296569824219 20 -77.974296569824219 21 -77.974296569824219 22 -77.974296569824219
		 23 -77.974296569824219 24 -77.974296569824219 25 -77.974296569824219 26 -77.974296569824219
		 27 -77.974296569824219 28 -77.974296569824219 29 -77.974296569824219 30 -77.974296569824219
		 31 -77.974296569824219 32 -77.974296569824219 33 -77.974296569824219 34 -77.974296569824219
		 35 -77.974296569824219 36 -77.974296569824219 37 -77.974296569824219 38 -77.974296569824219
		 39 -77.974296569824219 40 -77.974296569824219 41 -77.974296569824219 42 -77.974296569824219
		 43 -77.974296569824219 44 -77.974296569824219 45 -77.974296569824219 46 -77.974296569824219
		 47 -77.974296569824219 48 -77.974296569824219;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98414766788482666 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.17735084891319275 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98414766788482666 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.17735084891319275 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_FINGA_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 10.017910003662109 1 10.017910003662109
		 2 10.017910003662109 3 10.017910003662109 4 10.017910003662109 5 10.017910003662109
		 6 10.017910003662109 7 10.017910003662109 8 10.017910003662109 9 10.017910003662109
		 10 10.017910003662109 11 10.017910003662109 12 10.017910003662109 13 10.017910003662109
		 14 10.017910003662109 15 10.017910003662109 16 10.017910003662109 17 10.017910003662109
		 18 10.017910003662109 19 10.017910003662109 20 10.017910003662109 21 10.017910003662109
		 22 10.017910003662109 23 10.017910003662109 24 10.017910003662109 25 10.017910003662109
		 26 10.017910003662109 27 10.017910003662109 28 10.017910003662109 29 10.017910003662109
		 30 10.017910003662109 31 10.017910003662109 32 10.017910003662109 33 10.017910003662109
		 34 10.017910003662109 35 10.017910003662109 36 10.017910003662109 37 10.017910003662109
		 38 10.017910003662109 39 10.017910003662109 40 10.017910003662109 41 10.017910003662109
		 42 10.017910003662109 43 10.017910003662109 44 10.017910003662109 45 10.017910003662109
		 46 10.017910003662109 47 10.017910003662109 48 10.017910003662109;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 8.4930219650268555 1 8.4930219650268555
		 2 8.4930219650268555 3 8.4930219650268555 4 8.4930219650268555 5 8.4930219650268555
		 6 8.4930219650268555 7 8.4930219650268555 8 8.4930219650268555 9 8.4930219650268555
		 10 8.4930219650268555 11 8.4930219650268555 12 8.4930219650268555 13 8.4930219650268555
		 14 8.4930219650268555 15 8.4930219650268555 16 8.4930219650268555 17 8.4930219650268555
		 18 8.4930219650268555 19 8.4930219650268555 20 8.4930219650268555 21 8.4930219650268555
		 22 8.4930219650268555 23 8.4930219650268555 24 8.4930219650268555 25 8.4930219650268555
		 26 8.4930219650268555 27 8.4930219650268555 28 8.4930219650268555 29 8.4930219650268555
		 30 8.4930219650268555 31 8.4930219650268555 32 8.4930219650268555 33 8.4930219650268555
		 34 8.4930219650268555 35 8.4930219650268555 36 8.4930219650268555 37 8.4930219650268555
		 38 8.4930219650268555 39 8.4930219650268555 40 8.4930219650268555 41 8.4930219650268555
		 42 8.4930219650268555 43 8.4930219650268555 44 8.4930219650268555 45 8.4930219650268555
		 46 8.4930219650268555 47 8.4930219650268555 48 8.4930219650268555;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -4.7884178161621094 1 -4.7884178161621094
		 2 -4.7884178161621094 3 -4.7884178161621094 4 -4.7884178161621094 5 -4.7884178161621094
		 6 -4.7884178161621094 7 -4.7884178161621094 8 -4.7884178161621094 9 -4.7884178161621094
		 10 -4.7884178161621094 11 -4.7884178161621094 12 -4.7884178161621094 13 -4.7884178161621094
		 14 -4.7884178161621094 15 -4.7884178161621094 16 -4.7884178161621094 17 -4.7884178161621094
		 18 -4.7884178161621094 19 -4.7884178161621094 20 -4.7884178161621094 21 -4.7884178161621094
		 22 -4.7884178161621094 23 -4.7884178161621094 24 -4.7884178161621094 25 -4.7884178161621094
		 26 -4.7884178161621094 27 -4.7884178161621094 28 -4.7884178161621094 29 -4.7884178161621094
		 30 -4.7884178161621094 31 -4.7884178161621094 32 -4.7884178161621094 33 -4.7884178161621094
		 34 -4.7884178161621094 35 -4.7884178161621094 36 -4.7884178161621094 37 -4.7884178161621094
		 38 -4.7884178161621094 39 -4.7884178161621094 40 -4.7884178161621094 41 -4.7884178161621094
		 42 -4.7884178161621094 43 -4.7884178161621094 44 -4.7884178161621094 45 -4.7884178161621094
		 46 -4.7884178161621094 47 -4.7884178161621094 48 -4.7884178161621094;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 5.854835033416748 1 5.854835033416748
		 2 5.854835033416748 3 5.854835033416748 4 5.854835033416748 5 5.854835033416748 6 5.854835033416748
		 7 5.854835033416748 8 5.854835033416748 9 5.854835033416748 10 5.854835033416748
		 11 5.854835033416748 12 5.854835033416748 13 5.854835033416748 14 5.854835033416748
		 15 5.854835033416748 16 5.854835033416748 17 5.854835033416748 18 5.854835033416748
		 19 5.854835033416748 20 5.854835033416748 21 5.854835033416748 22 5.854835033416748
		 23 5.854835033416748 24 5.854835033416748 25 5.854835033416748 26 5.854835033416748
		 27 5.854835033416748 28 5.854835033416748 29 5.854835033416748 30 5.854835033416748
		 31 5.854835033416748 32 5.854835033416748 33 5.854835033416748 34 5.854835033416748
		 35 5.854835033416748 36 5.854835033416748 37 5.854835033416748 38 5.854835033416748
		 39 5.854835033416748 40 5.854835033416748 41 5.854835033416748 42 5.854835033416748
		 43 5.854835033416748 44 5.854835033416748 45 5.854835033416748 46 5.854835033416748
		 47 5.854835033416748 48 5.854835033416748;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 14.310370445251465 1 14.310370445251465
		 2 14.310370445251465 3 14.310370445251465 4 14.310370445251465 5 14.310370445251465
		 6 14.310370445251465 7 14.310370445251465 8 14.310370445251465 9 14.310370445251465
		 10 14.310370445251465 11 14.310370445251465 12 14.310370445251465 13 14.310370445251465
		 14 14.310370445251465 15 14.310370445251465 16 14.310370445251465 17 14.310370445251465
		 18 14.310370445251465 19 14.310370445251465 20 14.310370445251465 21 14.310370445251465
		 22 14.310370445251465 23 14.310370445251465 24 14.310370445251465 25 14.310370445251465
		 26 14.310370445251465 27 14.310370445251465 28 14.310370445251465 29 14.310370445251465
		 30 14.310370445251465 31 14.310370445251465 32 14.310370445251465 33 14.310370445251465
		 34 14.310370445251465 35 14.310370445251465 36 14.310370445251465 37 14.310370445251465
		 38 14.310370445251465 39 14.310370445251465 40 14.310370445251465 41 14.310370445251465
		 42 14.310370445251465 43 14.310370445251465 44 14.310370445251465 45 14.310370445251465
		 46 14.310370445251465 47 14.310370445251465 48 14.310370445251465;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 5.2312631607055664 1 5.2312631607055664
		 2 5.2312631607055664 3 5.2312631607055664 4 5.2312631607055664 5 5.2312631607055664
		 6 5.2312631607055664 7 5.2312631607055664 8 5.2312631607055664 9 5.2312631607055664
		 10 5.2312631607055664 11 5.2312631607055664 12 5.2312631607055664 13 5.2312631607055664
		 14 5.2312631607055664 15 5.2312631607055664 16 5.2312631607055664 17 5.2312631607055664
		 18 5.2312631607055664 19 5.2312631607055664 20 5.2312631607055664 21 5.2312631607055664
		 22 5.2312631607055664 23 5.2312631607055664 24 5.2312631607055664 25 5.2312631607055664
		 26 5.2312631607055664 27 5.2312631607055664 28 5.2312631607055664 29 5.2312631607055664
		 30 5.2312631607055664 31 5.2312631607055664 32 5.2312631607055664 33 5.2312631607055664
		 34 5.2312631607055664 35 5.2312631607055664 36 5.2312631607055664 37 5.2312631607055664
		 38 5.2312631607055664 39 5.2312631607055664 40 5.2312631607055664 41 5.2312631607055664
		 42 5.2312631607055664 43 5.2312631607055664 44 5.2312631607055664 45 5.2312631607055664
		 46 5.2312631607055664 47 5.2312631607055664 48 5.2312631607055664;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_THUMB_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_PROP__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_PROP__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_PROP__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_PROP_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_PROP_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_PROP_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SPECIAL__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SPECIAL__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SPECIAL__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SPECIAL_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SPECIAL_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SPECIAL_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_E_TWIST__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -9.6087875366210938 1 -13.604189872741699
		 2 -19.370229721069336 3 -20.220659255981445 4 -29.36012077331543 5 -35.365711212158203
		 6 -37.411048889160156 7 -18.065319061279297 8 -26.971120834350586 9 -27.548059463500977
		 10 -5.6023859977722168 11 1.4284859895706177 12 9.4233837127685547 13 5.4214358329772949
		 14 1.6225800514221191 15 -3.7598259449005127 16 -10.218700408935547 17 -15.425060272216795
		 18 -15.425060272216795 19 -13.604189872741699 20 -13.604189872741699 21 -13.604189872741699
		 22 -13.604189872741699 23 -13.604189872741699 24 -13.604189872741699 25 -13.604189872741699
		 26 -13.604189872741699 27 -13.604189872741699 28 -13.604189872741699 29 -13.604189872741699
		 30 -13.604189872741699 31 -13.604189872741699 32 -13.604189872741699 33 -13.604189872741699
		 34 -13.604189872741699 35 -13.604189872741699 36 -13.604189872741699 37 -13.604189872741699
		 38 -13.604189872741699 39 -13.604189872741699 40 -13.604189872741699 41 -13.604189872741699
		 42 -13.604189872741699 43 -13.604189872741699 44 -13.604189872741699 45 -13.604189872741699
		 46 -13.604189872741699 47 -13.604189872741699 48 -13.604189872741699;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.43938747048377991 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.89829766750335693 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.43938747048377991 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.89829766750335693 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_E_TWIST__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_E_TWIST__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_E_TWIST_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_E_TWIST_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_E_TWIST_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_E__Skeleton_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_E__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_E__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_E__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_E__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_E_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_E_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_E_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_S__Skeleton_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_S__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_S__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_S__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_S__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_S_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_S_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_S_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_TWIST_S__Skeleton_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_TWIST_S__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_TWIST_S__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1.0039559602737427 1 1.2281680107116699
		 2 2.5643689632415771 3 4.9709129333496094 4 9.324009895324707 5 10.845529556274414
		 6 10.02178955078125 7 6.7970619201660156 8 5.0562739372253418 9 6.0852909088134766
		 10 8.866790771484375 11 5.1150641441345215 12 -7.4405198097229013 13 -9.6700925827026367
		 14 -17.959939956665039 15 -34.174789428710938 16 -15.001850128173826 17 -10.949119567871094
		 18 -10.949119567871094 19 1.2281680107116699 20 1.2281680107116699 21 1.2281680107116699
		 22 1.2281680107116699 23 1.2281680107116699 24 1.2281680107116699 25 1.2281680107116699
		 26 1.2281680107116699 27 1.2281680107116699 28 1.2281680107116699 29 1.2281680107116699
		 30 1.2281680107116699 31 1.2281680107116699 32 1.2281680107116699 33 1.2281680107116699
		 34 1.2281680107116699 35 1.2281680107116699 36 1.2281680107116699 37 1.2281680107116699
		 38 1.2281680107116699 39 1.2281680107116699 40 1.2281680107116699 41 1.2281680107116699
		 42 1.2281680107116699 43 1.2281680107116699 44 1.2281680107116699 45 1.2281680107116699
		 46 1.2281680107116699 47 1.2281680107116699 48 1.2281680107116699;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.95052641630172729 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.31064349412918091 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.95052641630172729 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.31064349412918091 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_TWIST_S__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_TWIST_S__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_TWIST_S_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_TWIST_S_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_TWIST_S_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_C__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_C__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_C__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_S__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 2.5127708911895752 2 7.9526758193969727
		 3 12.762249946594238 4 22.820100784301758 5 63.017890930175788 6 88.202682495117188
		 7 16.539039611816406 8 4.1085548400878906 9 -4.2199149131774902 10 -7.3110151290893555
		 11 -11.320500373840332 12 -16.194829940795898 13 -21.253559112548828 14 -25.810270309448242
		 15 -26.995180130004883 16 -14.511759757995605 17 -3.0530850887298584 18 -3.0530850887298584
		 19 2.5127708911895752 20 2.5127708911895752 21 2.5127708911895752 22 2.5127708911895752
		 23 2.5127708911895752 24 2.5127708911895752 25 2.5127708911895752 26 2.5127708911895752
		 27 2.5127708911895752 28 2.5127708911895752 29 2.5127708911895752 30 2.5127708911895752
		 31 2.5127708911895752 32 2.5127708911895752 33 2.5127708911895752 34 2.5127708911895752
		 35 2.5127708911895752 36 2.5127708911895752 37 2.5127708911895752 38 2.5127708911895752
		 39 2.5127708911895752 40 2.5127708911895752 41 2.5127708911895752 42 2.5127708911895752
		 43 2.5127708911895752 44 2.5127708911895752 45 2.5127708911895752 46 2.5127708911895752
		 47 2.5127708911895752 48 2.5127708911895752;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.66661715507507324 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.74540024995803833 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.66661715507507324 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.74540024995803833 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_S__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -9.1798868179321289 2 -41.463729858398438
		 3 -43.598850250244141 4 -61.944480895996087 5 -78.523162841796875 6 -83.33392333984375
		 7 -57.76353836059571 8 -51.321300506591797 9 -33.130340576171875 10 -12.460610389709473
		 11 -10.157329559326172 12 0.04043063148856163 13 5.4815068244934082 14 9.0343036651611328
		 15 9.1312599182128906 16 13.409259796142578 17 13.654290199279785 18 13.654290199279785
		 19 -9.1798868179321289 20 -9.1798868179321289 21 -9.1798868179321289 22 -9.1798868179321289
		 23 -9.1798868179321289 24 -9.1798868179321289 25 -9.1798868179321289 26 -9.1798868179321289
		 27 -9.1798868179321289 28 -9.1798868179321289 29 -9.1798868179321289 30 -9.1798868179321289
		 31 -9.1798868179321289 32 -9.1798868179321289 33 -9.1798868179321289 34 -9.1798868179321289
		 35 -9.1798868179321289 36 -9.1798868179321289 37 -9.1798868179321289 38 -9.1798868179321289
		 39 -9.1798868179321289 40 -9.1798868179321289 41 -9.1798868179321289 42 -9.1798868179321289
		 43 -9.1798868179321289 44 -9.1798868179321289 45 -9.1798868179321289 46 -9.1798868179321289
		 47 -9.1798868179321289 48 -9.1798868179321289;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.0875898078083992 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.99615663290023804 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.0875898078083992 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.99615663290023804 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_S__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 40.829139709472656 2 50.483039855957031
		 3 53.724361419677734 4 39.843288421630859 5 -11.947540283203125 6 -55.557258605957031
		 7 46.339038848876953 8 50.985298156738281 9 49.380119323730469 10 50.523330688476562
		 11 45.405120849609375 12 36.853641510009766 13 31.365749359130863 14 22.370349884033203
		 15 14.097370147705078 16 37.741950988769531 17 35.467891693115234 18 35.467891693115234
		 19 40.829139709472656 20 40.829139709472656 21 40.829139709472656 22 40.829139709472656
		 23 40.829139709472656 24 40.829139709472656 25 40.829139709472656 26 40.829139709472656
		 27 40.829139709472656 28 40.829139709472656 29 40.829139709472656 30 40.829139709472656
		 31 40.829139709472656 32 40.829139709472656 33 40.829139709472656 34 40.829139709472656
		 35 40.829139709472656 36 40.829139709472656 37 40.829139709472656 38 40.829139709472656
		 39 40.829139709472656 40 40.829139709472656 41 40.829139709472656 42 40.829139709472656
		 43 40.829139709472656 44 40.829139709472656 45 40.829139709472656 46 40.829139709472656
		 47 40.829139709472656 48 40.829139709472656;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.25664722919464111 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.96650516986846924 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.25664722919464111 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.96650516986846924 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_E__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -0.21708810329437256 2 -0.19613330066204071
		 3 -0.1402910053730011 4 -0.15971310436725616 5 -0.15672419965267181 6 -0.13804799318313599
		 7 -0.11513090133666994 8 -0.16572989523410797 9 -0.20679619908332825 10 -0.17810319364070892
		 11 -0.19563379883766174 12 -0.19788390398025513 13 -0.19461759924888611 14 -0.19400039315223694
		 15 -0.19522050023078918 16 -0.19481690227985382 17 -0.17222920060157776 18 -0.17222920060157776
		 19 -0.21708810329437256 20 -0.21708810329437256 21 -0.21708810329437256 22 -0.21708810329437256
		 23 -0.21708810329437256 24 -0.21708810329437256 25 -0.21708810329437256 26 -0.21708810329437256
		 27 -0.21708810329437256 28 -0.21708810329437256 29 -0.21708810329437256 30 -0.21708810329437256
		 31 -0.21708810329437256 32 -0.21708810329437256 33 -0.21708810329437256 34 -0.21708810329437256
		 35 -0.21708810329437256 36 -0.21708810329437256 37 -0.21708810329437256 38 -0.21708810329437256
		 39 -0.21708810329437256 40 -0.21708810329437256 41 -0.21708810329437256 42 -0.21708810329437256
		 43 -0.21708810329437256 44 -0.21708810329437256 45 -0.21708810329437256 46 -0.21708810329437256
		 47 -0.21708810329437256 48 -0.21708810329437256;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99999344348907471 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.0036189653910696507 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99999344348907471 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.0036189653910696507 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_E__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 102.43160247802734 2 93.437896728515625
		 3 69.5228271484375 4 77.830146789550781 5 76.550910949707031 6 68.564292907714844
		 7 58.78184890747071 8 80.406196594238281 9 98.013313293457031 10 85.706916809082031
		 11 93.223617553710938 12 94.188926696777344 13 92.787727355957031 14 92.522956848144531
		 15 93.046333312988281 16 92.873207092285156 17 83.189949035644531 18 83.189949035644531
		 19 102.43160247802734 20 102.43160247802734 21 102.43160247802734 22 102.43160247802734
		 23 102.43160247802734 24 102.43160247802734 25 102.43160247802734 26 102.43160247802734
		 27 102.43160247802734 28 102.43160247802734 29 102.43160247802734 30 102.43160247802734
		 31 102.43160247802734 32 102.43160247802734 33 102.43160247802734 34 102.43160247802734
		 35 102.43160247802734 36 102.43160247802734 37 102.43160247802734 38 102.43160247802734
		 39 102.43160247802734 40 102.43160247802734 41 102.43160247802734 42 102.43160247802734
		 43 102.43160247802734 44 102.43160247802734 45 102.43160247802734 46 102.43160247802734
		 47 102.43160247802734 48 102.43160247802734;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.54168605804443359 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.84058088064193726 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.54168605804443359 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.84058088064193726 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_E__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -0.24478919804096225 2 -0.20049789547920227
		 3 -0.1081772968173027 4 -0.13637359440326691 5 -0.13177900016307831 6 -0.10516639798879623
		 7 -0.07712072879076004 8 -0.14591619372367859 9 -0.22232420742511749 10 -0.16681280732154846
		 11 -0.19951090216636658 12 -0.20398199558258057 13 -0.19751259684562683 14 -0.19630509614944458
		 15 -0.19869659841060638 16 -0.19790349900722504 17 -0.15667480230331421 18 -0.15667480230331421
		 19 -0.24478919804096225 20 -0.24478919804096225 21 -0.24478919804096225 22 -0.24478919804096225
		 23 -0.24478919804096225 24 -0.24478919804096225 25 -0.24478919804096225 26 -0.24478919804096225
		 27 -0.24478919804096225 28 -0.24478919804096225 29 -0.24478919804096225 30 -0.24478919804096225
		 31 -0.24478919804096225 32 -0.24478919804096225 33 -0.24478919804096225 34 -0.24478919804096225
		 35 -0.24478919804096225 36 -0.24478919804096225 37 -0.24478919804096225 38 -0.24478919804096225
		 39 -0.24478919804096225 40 -0.24478919804096225 41 -0.24478919804096225 42 -0.24478919804096225
		 43 -0.24478919804096225 44 -0.24478919804096225 45 -0.24478919804096225 46 -0.24478919804096225
		 47 -0.24478919804096225 48 -0.24478919804096225;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.9999769926071167 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.0067774099297821522 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.9999769926071167 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.0067774099297821522 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_W__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -32.185501098632812 2 -22.579490661621094
		 3 -25.253820419311523 4 -18.337760925292969 5 -11.187129974365234 6 2.3401429653167725
		 7 -12.21619987487793 8 -14.134550094604492 9 -29.056800842285156 10 -33.31842041015625
		 11 -38.341869354248047 12 -56.769680023193359 13 -68.862586975097656 14 -78.179298400878906
		 15 -67.1865234375 16 -41.062770843505859 17 -48.695720672607422 18 -48.695720672607422
		 19 -32.185501098632812 20 -32.185501098632812 21 -32.185501098632812 22 -32.185501098632812
		 23 -32.185501098632812 24 -32.185501098632812 25 -32.185501098632812 26 -32.185501098632812
		 27 -32.185501098632812 28 -32.185501098632812 29 -32.185501098632812 30 -32.185501098632812
		 31 -32.185501098632812 32 -32.185501098632812 33 -32.185501098632812 34 -32.185501098632812
		 35 -32.185501098632812 36 -32.185501098632812 37 -32.185501098632812 38 -32.185501098632812
		 39 -32.185501098632812 40 -32.185501098632812 41 -32.185501098632812 42 -32.185501098632812
		 43 -32.185501098632812 44 -32.185501098632812 45 -32.185501098632812 46 -32.185501098632812
		 47 -32.185501098632812 48 -32.185501098632812;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.15096208453178406 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.98853957653045654 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.15096208453178406 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.98853957653045654 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_W__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -16.022260665893555 2 -5.8501691818237305
		 3 3.9651339054107666 4 -2.4659779071807861 5 -0.42805439233779907 6 4.1797947883605957
		 7 -3.0863449573516846 8 -5.6782631874084473 9 -15.671739578247072 10 -0.67431867122650146
		 11 1.901811957359314 12 24.15662956237793 13 13.487979888916016 14 2.1182971000671387
		 15 18.340110778808594 16 2.5269548892974854 17 7.0233311653137207 18 7.0233311653137207
		 19 -16.022260665893555 20 -16.022260665893555 21 -16.022260665893555 22 -16.022260665893555
		 23 -16.022260665893555 24 -16.022260665893555 25 -16.022260665893555 26 -16.022260665893555
		 27 -16.022260665893555 28 -16.022260665893555 29 -16.022260665893555 30 -16.022260665893555
		 31 -16.022260665893555 32 -16.022260665893555 33 -16.022260665893555 34 -16.022260665893555
		 35 -16.022260665893555 36 -16.022260665893555 37 -16.022260665893555 38 -16.022260665893555
		 39 -16.022260665893555 40 -16.022260665893555 41 -16.022260665893555 42 -16.022260665893555
		 43 -16.022260665893555 44 -16.022260665893555 45 -16.022260665893555 46 -16.022260665893555
		 47 -16.022260665893555 48 -16.022260665893555;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.31900724768638611 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.94775229692459106 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.31900724768638611 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.94775229692459106 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_W__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 8.6522645950317383 2 -21.929370880126953
		 3 -14.81659984588623 4 11.23960018157959 5 34.797878265380859 6 53.789421081542969
		 7 18.814659118652344 8 7.9097108840942374 9 -6.6163249015808105 10 -7.0688529014587402
		 11 1.9907540082931519 12 -2.9092779159545898 13 6.723689079284668 14 1.6681050062179565
		 15 -4.1901931762695312 16 -4.9504528045654297 17 1.7810330390930176 18 1.7810330390930176
		 19 8.6522645950317383 20 8.6522645950317383 21 8.6522645950317383 22 8.6522645950317383
		 23 8.6522645950317383 24 8.6522645950317383 25 8.6522645950317383 26 8.6522645950317383
		 27 8.6522645950317383 28 8.6522645950317383 29 8.6522645950317383 30 8.6522645950317383
		 31 8.6522645950317383 32 8.6522645950317383 33 8.6522645950317383 34 8.6522645950317383
		 35 8.6522645950317383 36 8.6522645950317383 37 8.6522645950317383 38 8.6522645950317383
		 39 8.6522645950317383 40 8.6522645950317383 41 8.6522645950317383 42 8.6522645950317383
		 43 8.6522645950317383 44 8.6522645950317383 45 8.6522645950317383 46 8.6522645950317383
		 47 8.6522645950317383 48 8.6522645950317383;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.15669968724250793 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.98764634132385254 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.15669968724250793 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.98764634132385254 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 1.8454420566558838 2 1.4428009986877441
		 3 0.9322878122329713 4 0.33710509538650513 5 -0.29586029052734375 6 -0.89243239164352417
		 7 -1.3513280153274536 8 2.6388518810272217 9 2.6387360095977783 10 2.6388070583343506
		 11 2.6388208866119385 12 2.6388659477233887 13 2.6389029026031494 14 2.6389040946960449
		 15 4.7886438369750977 16 4.595606803894043 17 4.1515851020812988 18 4.1515851020812988
		 19 1.8454420566558838 20 1.8454420566558838 21 1.8454420566558838 22 1.8454420566558838
		 23 1.8454420566558838 24 1.8454420566558838 25 1.8454420566558838 26 1.8454420566558838
		 27 1.8454420566558838 28 1.8454420566558838 29 1.8454420566558838 30 1.8454420566558838
		 31 1.8454420566558838 32 1.8454420566558838 33 1.8454420566558838 34 1.8454420566558838
		 35 1.8454420566558838 36 1.8454420566558838 37 1.8454420566558838 38 1.8454420566558838
		 39 1.8454420566558838 40 1.8454420566558838 41 1.8454420566558838 42 1.8454420566558838
		 43 1.8454420566558838 44 1.8454420566558838 45 1.8454420566558838 46 1.8454420566558838
		 47 1.8454420566558838 48 1.8454420566558838;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98970335721969604 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.14313364028930664 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98970335721969604 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.14313364028930664 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -10.023550033569336 2 -10.725239753723145
		 3 -11.506819725036621 4 -12.343660354614258 5 -13.197959899902344 6 -14.01686954498291
		 7 -14.731069564819338 8 -12.314479827880859 9 -12.314640045166016 10 -12.314530372619629
		 11 -12.314459800720215 12 -12.314350128173828 13 -12.314290046691895 14 -12.314330101013184
		 15 -11.40326976776123 16 -10.648850440979004 17 -9.4253559112548828 18 -9.4253559112548828
		 19 -10.023550033569336 20 -10.023550033569336 21 -10.023550033569336 22 -10.023550033569336
		 23 -10.023550033569336 24 -10.023550033569336 25 -10.023550033569336 26 -10.023550033569336
		 27 -10.023550033569336 28 -10.023550033569336 29 -10.023550033569336 30 -10.023550033569336
		 31 -10.023550033569336 32 -10.023550033569336 33 -10.023550033569336 34 -10.023550033569336
		 35 -10.023550033569336 36 -10.023550033569336 37 -10.023550033569336 38 -10.023550033569336
		 39 -10.023550033569336 40 -10.023550033569336 41 -10.023550033569336 42 -10.023550033569336
		 43 -10.023550033569336 44 -10.023550033569336 45 -10.023550033569336 46 -10.023550033569336
		 47 -10.023550033569336 48 -10.023550033569336;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.96444898843765259 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.26426896452903748 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.96444898843765259 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.26426896452903748 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 49.124008178710938 2 51.480609893798828
		 3 54.108570098876953 4 56.813648223876953 5 59.360771179199226 6 61.493240356445312
		 7 62.945819854736335 8 46.994281768798828 9 46.994869232177734 10 46.994499206542969
		 11 46.994400024414062 12 46.994129180908203 13 46.993949890136719 14 46.993961334228516
		 15 37.326438903808594 16 37.073978424072266 17 37.173900604248047 18 37.173900604248047
		 19 49.124008178710938 20 49.124008178710938 21 49.124008178710938 22 49.124008178710938
		 23 49.124008178710938 24 49.124008178710938 25 49.124008178710938 26 49.124008178710938
		 27 49.124008178710938 28 49.124008178710938 29 49.124008178710938 30 49.124008178710938
		 31 49.124008178710938 32 49.124008178710938 33 49.124008178710938 34 49.124008178710938
		 35 49.124008178710938 36 49.124008178710938 37 49.124008178710938 38 49.124008178710938
		 39 49.124008178710938 40 49.124008178710938 41 49.124008178710938 42 49.124008178710938
		 43 49.124008178710938 44 49.124008178710938 45 49.124008178710938 46 49.124008178710938
		 47 49.124008178710938 48 49.124008178710938;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.74361097812652588 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.66861248016357422 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.74361097812652588 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.66861248016357422 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 42.209331512451172 2 42.857009887695312
		 3 43.428840637207031 4 43.875118255615234 5 44.177940368652344 6 44.348499298095703
		 7 44.416618347167969 8 41.221420288085938 9 41.221511840820312 10 41.221450805664062
		 11 41.221408843994141 12 41.221351623535156 13 41.221290588378906 14 41.221290588378906
		 15 33.991168975830078 16 33.738868713378906 17 34.172870635986328 18 34.172870635986328
		 19 42.209331512451172 20 42.209331512451172 21 42.209331512451172 22 42.209331512451172
		 23 42.209331512451172 24 42.209331512451172 25 42.209331512451172 26 42.209331512451172
		 27 42.209331512451172 28 42.209331512451172 29 42.209331512451172 30 42.209331512451172
		 31 42.209331512451172 32 42.209331512451172 33 42.209331512451172 34 42.209331512451172
		 35 42.209331512451172 36 42.209331512451172 37 42.209331512451172 38 42.209331512451172
		 39 42.209331512451172 40 42.209331512451172 41 42.209331512451172 42 42.209331512451172
		 43 42.209331512451172 44 42.209331512451172 45 42.209331512451172 46 42.209331512451172
		 47 42.209331512451172 48 42.209331512451172;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.96525967121124268 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.26129239797592163 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.96525967121124268 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.26129239797592163 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 73.220260620117188 2 74.343788146972656
		 3 75.335746765136719 4 76.109909057617188 5 76.635208129882812 6 76.931068420410156
		 7 77.049240112304688 8 71.506538391113281 9 71.506690979003906 10 71.506599426269531
		 11 71.50653076171875 12 71.50640869140625 13 71.506317138671875 14 71.506317138671875
		 15 58.964260101318359 16 58.526618957519531 17 59.279460906982422 18 59.279460906982422
		 19 73.220260620117188 20 73.220260620117188 21 73.220260620117188 22 73.220260620117188
		 23 73.220260620117188 24 73.220260620117188 25 73.220260620117188 26 73.220260620117188
		 27 73.220260620117188 28 73.220260620117188 29 73.220260620117188 30 73.220260620117188
		 31 73.220260620117188 32 73.220260620117188 33 73.220260620117188 34 73.220260620117188
		 35 73.220260620117188 36 73.220260620117188 37 73.220260620117188 38 73.220260620117188
		 39 73.220260620117188 40 73.220260620117188 41 73.220260620117188 42 73.220260620117188
		 43 73.220260620117188 44 73.220260620117188 45 73.220260620117188 46 73.220260620117188
		 47 73.220260620117188 48 73.220260620117188;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.90517210960388184 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.42504522204399109 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.90517210960388184 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.42504522204399109 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGD_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 5.9727649688720703 2 5.695864200592041
		 3 5.3462080955505371 4 4.9403162002563477 5 4.513707160949707 6 4.1217360496520996
		 7 3.8345201015472417 8 6.1742281913757324 9 6.1742911338806152 10 6.1742591857910156
		 11 6.1742901802062988 12 6.1743001937866211 13 6.1742820739746094 14 6.174260139465332
		 15 6.1742839813232422 16 6.1742849349975586 17 6.1742591857910156 18 6.1742591857910156
		 19 5.9727649688720703 20 5.9727649688720703 21 5.9727649688720703 22 5.9727649688720703
		 23 5.9727649688720703 24 5.9727649688720703 25 5.9727649688720703 26 5.9727649688720703
		 27 5.9727649688720703 28 5.9727649688720703 29 5.9727649688720703 30 5.9727649688720703
		 31 5.9727649688720703 32 5.9727649688720703 33 5.9727649688720703 34 5.9727649688720703
		 35 5.9727649688720703 36 5.9727649688720703 37 5.9727649688720703 38 5.9727649688720703
		 39 5.9727649688720703 40 5.9727649688720703 41 5.9727649688720703 42 5.9727649688720703
		 43 5.9727649688720703 44 5.9727649688720703 45 5.9727649688720703 46 5.9727649688720703
		 47 5.9727649688720703 48 5.9727649688720703;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99501776695251465 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.099697403609752655 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99501776695251465 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.099697403609752655 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -10.722940444946289 2 -11.129949569702148
		 3 -11.592860221862793 4 -12.079620361328125 5 -12.547300338745117 6 -12.946169853210449
		 7 -13.22266960144043 8 -10.393790245056152 9 -10.394060134887695 10 -10.393899917602539
		 11 -10.393890380859375 12 -10.393799781799316 13 -10.393710136413574 14 -10.39369010925293
		 15 -10.393779754638672 16 -10.39391040802002 17 -10.393799781799316 18 -10.393799781799316
		 19 -10.722940444946289 20 -10.722940444946289 21 -10.722940444946289 22 -10.722940444946289
		 23 -10.722940444946289 24 -10.722940444946289 25 -10.722940444946289 26 -10.722940444946289
		 27 -10.722940444946289 28 -10.722940444946289 29 -10.722940444946289 30 -10.722940444946289
		 31 -10.722940444946289 32 -10.722940444946289 33 -10.722940444946289 34 -10.722940444946289
		 35 -10.722940444946289 36 -10.722940444946289 37 -10.722940444946289 38 -10.722940444946289
		 39 -10.722940444946289 40 -10.722940444946289 41 -10.722940444946289 42 -10.722940444946289
		 43 -10.722940444946289 44 -10.722940444946289 45 -10.722940444946289 46 -10.722940444946289
		 47 -10.722940444946289 48 -10.722940444946289;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98832130432128906 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.15238432586193085 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98832130432128906 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.15238432586193085 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 29.68572998046875 2 31.544660568237301
		 3 33.717338562011719 4 36.058200836181641 5 38.355850219726562 6 40.348320007324219
		 7 41.74652099609375 8 28.225919723510742 9 28.226219177246094 10 28.226020812988281
		 11 28.225870132446289 12 28.225650787353516 13 28.225540161132812 14 28.225589752197266
		 15 28.225669860839844 16 28.225929260253906 17 28.225809097290039 18 28.225809097290039
		 19 29.68572998046875 20 29.68572998046875 21 29.68572998046875 22 29.68572998046875
		 23 29.68572998046875 24 29.68572998046875 25 29.68572998046875 26 29.68572998046875
		 27 29.68572998046875 28 29.68572998046875 29 29.68572998046875 30 29.68572998046875
		 31 29.68572998046875 32 29.68572998046875 33 29.68572998046875 34 29.68572998046875
		 35 29.68572998046875 36 29.68572998046875 37 29.68572998046875 38 29.68572998046875
		 39 29.68572998046875 40 29.68572998046875 41 29.68572998046875 42 29.68572998046875
		 43 29.68572998046875 44 29.68572998046875 45 29.68572998046875 46 29.68572998046875
		 47 29.68572998046875 48 29.68572998046875;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.82110941410064697 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.5707707405090332 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.82110941410064697 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.5707707405090332 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 47.140830993652344 2 48.281028747558594
		 3 49.417938232421875 4 50.465808868408203 5 51.354129791259766 6 52.032680511474609
		 7 52.464900970458984 8 46.098190307617188 9 46.098419189453125 10 46.098270416259766
		 11 46.098251342773438 12 46.098159790039062 13 46.098129272460938 14 46.098171234130859
		 15 46.098190307617188 16 46.098270416259766 17 46.098201751708984 18 46.098201751708984
		 19 47.140830993652344 20 47.140830993652344 21 47.140830993652344 22 47.140830993652344
		 23 47.140830993652344 24 47.140830993652344 25 47.140830993652344 26 47.140830993652344
		 27 47.140830993652344 28 47.140830993652344 29 47.140830993652344 30 47.140830993652344
		 31 47.140830993652344 32 47.140830993652344 33 47.140830993652344 34 47.140830993652344
		 35 47.140830993652344 36 47.140830993652344 37 47.140830993652344 38 47.140830993652344
		 39 47.140830993652344 40 47.140830993652344 41 47.140830993652344 42 47.140830993652344
		 43 47.140830993652344 44 47.140830993652344 45 47.140830993652344 46 47.140830993652344
		 47 47.140830993652344 48 47.140830993652344;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.90946203470230103 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.41578695178031921 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.90946203470230103 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.41578695178031921 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 81.277290344238281 2 83.243156433105469
		 3 85.203346252441406 4 87.010017395019531 5 88.541610717773438 6 89.711509704589844
		 7 90.456733703613281 8 79.479637145996094 9 79.480026245117188 10 79.479782104492188
		 11 79.479736328125 12 79.479583740234375 13 79.479537963867188 14 79.479598999023438
		 15 79.479637145996094 16 79.479766845703125 17 79.479637145996094 18 79.479637145996094
		 19 81.277290344238281 20 81.277290344238281 21 81.277290344238281 22 81.277290344238281
		 23 81.277290344238281 24 81.277290344238281 25 81.277290344238281 26 81.277290344238281
		 27 81.277290344238281 28 81.277290344238281 29 81.277290344238281 30 81.277290344238281
		 31 81.277290344238281 32 81.277290344238281 33 81.277290344238281 34 81.277290344238281
		 35 81.277290344238281 36 81.277290344238281 37 81.277290344238281 38 81.277290344238281
		 39 81.277290344238281 40 81.277290344238281 41 81.277290344238281 42 81.277290344238281
		 43 81.277290344238281 44 81.277290344238281 45 81.277290344238281 46 81.277290344238281
		 47 81.277290344238281 48 81.277290344238281;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.78535407781600952 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.61904686689376831 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.78535407781600952 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.61904686689376831 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGC_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 5.9663348197937012 2 5.7460818290710449
		 3 5.4613518714904785 4 5.1252040863037109 5 4.7676172256469727 6 4.436244010925293
		 7 4.191957950592041 8 6.1214618682861328 9 6.1215558052062988 10 6.1215071678161621
		 11 6.1215510368347168 12 6.1215629577636719 13 6.1215400695800781 14 6.1215119361877441
		 15 6.1215429306030273 16 6.1215448379516602 17 6.1215071678161621 18 6.1215071678161621
		 19 5.9663348197937012 20 5.9663348197937012 21 5.9663348197937012 22 5.9663348197937012
		 23 5.9663348197937012 24 5.9663348197937012 25 5.9663348197937012 26 5.9663348197937012
		 27 5.9663348197937012 28 5.9663348197937012 29 5.9663348197937012 30 5.9663348197937012
		 31 5.9663348197937012 32 5.9663348197937012 33 5.9663348197937012 34 5.9663348197937012
		 35 5.9663348197937012 36 5.9663348197937012 37 5.9663348197937012 38 5.9663348197937012
		 39 5.9663348197937012 40 5.9663348197937012 41 5.9663348197937012 42 5.9663348197937012
		 43 5.9663348197937012 44 5.9663348197937012 45 5.9663348197937012 46 5.9663348197937012
		 47 5.9663348197937012 48 5.9663348197937012;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99692279100418091 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.078389436006546021 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99692279100418091 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.078389436006546021 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -12.67035961151123 2 -13.078570365905762
		 3 -13.542630195617676 4 -14.031299591064453 5 -14.502249717712402 6 -14.905469894409181
		 7 -15.18597984313965 8 -12.339539527893066 9 -12.339799880981445 10 -12.33965015411377
		 11 -12.339639663696289 12 -12.339550018310547 13 -12.339469909667969 14 -12.339449882507324
		 15 -12.339529991149902 16 -12.33965015411377 17 -12.339550018310547 18 -12.339550018310547
		 19 -12.67035961151123 20 -12.67035961151123 21 -12.67035961151123 22 -12.67035961151123
		 23 -12.67035961151123 24 -12.67035961151123 25 -12.67035961151123 26 -12.67035961151123
		 27 -12.67035961151123 28 -12.67035961151123 29 -12.67035961151123 30 -12.67035961151123
		 31 -12.67035961151123 32 -12.67035961151123 33 -12.67035961151123 34 -12.67035961151123
		 35 -12.67035961151123 36 -12.67035961151123 37 -12.67035961151123 38 -12.67035961151123
		 39 -12.67035961151123 40 -12.67035961151123 41 -12.67035961151123 42 -12.67035961151123
		 43 -12.67035961151123 44 -12.67035961151123 45 -12.67035961151123 46 -12.67035961151123
		 47 -12.67035961151123 48 -12.67035961151123;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.9882315993309021 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.15296466648578644 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.9882315993309021 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.15296466648578644 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 30.600090026855469 2 32.108009338378906
		 3 33.877681732177734 4 35.791519165039062 5 37.676929473876953 6 39.317741394042969
		 7 40.472938537597656 8 29.422079086303711 9 29.422199249267578 10 29.422100067138668
		 11 29.421920776367188 12 29.421720504760742 13 29.421649932861328 14 29.421720504760742
		 15 29.421760559082031 16 29.421979904174805 17 29.421930313110355 18 29.421930313110355
		 19 30.600090026855469 20 30.600090026855469 21 30.600090026855469 22 30.600090026855469
		 23 30.600090026855469 24 30.600090026855469 25 30.600090026855469 26 30.600090026855469
		 27 30.600090026855469 28 30.600090026855469 29 30.600090026855469 30 30.600090026855469
		 31 30.600090026855469 32 30.600090026855469 33 30.600090026855469 34 30.600090026855469
		 35 30.600090026855469 36 30.600090026855469 37 30.600090026855469 38 30.600090026855469
		 39 30.600090026855469 40 30.600090026855469 41 30.600090026855469 42 30.600090026855469
		 43 30.600090026855469 44 30.600090026855469 45 30.600090026855469 46 30.600090026855469
		 47 30.600090026855469 48 30.600090026855469;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.87154042720794678 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.49032363295555115 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.87154042720794678 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.49032363295555115 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 44.237838745117188 2 45.329620361328125
		 3 46.418529510498047 4 47.423061370849609 5 48.277820587158203 6 48.933891296386719
		 7 49.353981018066406 8 43.238719940185547 9 43.238910675048828 10 43.238780975341797
		 11 43.238750457763672 12 43.238681793212891 13 43.238689422607422 14 43.238750457763672
		 15 43.238719940185547 16 43.238780975341797 17 43.238719940185547 18 43.238719940185547
		 19 44.237838745117188 20 44.237838745117188 21 44.237838745117188 22 44.237838745117188
		 23 44.237838745117188 24 44.237838745117188 25 44.237838745117188 26 44.237838745117188
		 27 44.237838745117188 28 44.237838745117188 29 44.237838745117188 30 44.237838745117188
		 31 44.237838745117188 32 44.237838745117188 33 44.237838745117188 34 44.237838745117188
		 35 44.237838745117188 36 44.237838745117188 37 44.237838745117188 38 44.237838745117188
		 39 44.237838745117188 40 44.237838745117188 41 44.237838745117188 42 44.237838745117188
		 43 44.237838745117188 44 44.237838745117188 45 44.237838745117188 46 44.237838745117188
		 47 44.237838745117188 48 44.237838745117188;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.91601556539535522 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.40114259719848633 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.91601556539535522 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.40114259719848633 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 75.505996704101562 2 77.369491577148438
		 3 79.228057861328125 4 80.942596435546875 5 82.401519775390625 6 83.521316528320312
		 7 84.238327026367188 8 73.800689697265625 9 73.801010131835938 10 73.800796508789062
		 11 73.800750732421875 12 73.800628662109375 13 73.800636291503906 14 73.800743103027344
		 15 73.800697326660156 16 73.800788879394531 17 73.800697326660156 18 73.800697326660156
		 19 75.505996704101562 20 75.505996704101562 21 75.505996704101562 22 75.505996704101562
		 23 75.505996704101562 24 75.505996704101562 25 75.505996704101562 26 75.505996704101562
		 27 75.505996704101562 28 75.505996704101562 29 75.505996704101562 30 75.505996704101562
		 31 75.505996704101562 32 75.505996704101562 33 75.505996704101562 34 75.505996704101562
		 35 75.505996704101562 36 75.505996704101562 37 75.505996704101562 38 75.505996704101562
		 39 75.505996704101562 40 75.505996704101562 41 75.505996704101562 42 75.505996704101562
		 43 75.505996704101562 44 75.505996704101562 45 75.505996704101562 46 75.505996704101562
		 47 75.505996704101562 48 75.505996704101562;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.80097758769989014 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.59869426488876343 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.80097758769989014 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.59869426488876343 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGB_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 2.7047080993652344 2 2.3115530014038086
		 3 1.8401319980621338 4 1.3186190128326416 5 0.79308921098709106 6 0.32616749405860901
		 7 -0.00811008270829916 8 3.0061819553375244 9 3.0062100887298584 10 3.0062010288238525
		 11 3.0062448978424072 12 3.0062758922576904 13 3.0062639713287354 14 3.0062339305877686
		 15 3.0062539577484131 16 3.006234884262085 17 3.0062189102172852 18 3.0062189102172852
		 19 2.7047080993652344 20 2.7047080993652344 21 2.7047080993652344 22 2.7047080993652344
		 23 2.7047080993652344 24 2.7047080993652344 25 2.7047080993652344 26 2.7047080993652344
		 27 2.7047080993652344 28 2.7047080993652344 29 2.7047080993652344 30 2.7047080993652344
		 31 2.7047080993652344 32 2.7047080993652344 33 2.7047080993652344 34 2.7047080993652344
		 35 2.7047080993652344 36 2.7047080993652344 37 2.7047080993652344 38 2.7047080993652344
		 39 2.7047080993652344 40 2.7047080993652344 41 2.7047080993652344 42 2.7047080993652344
		 43 2.7047080993652344 44 2.7047080993652344 45 2.7047080993652344 46 2.7047080993652344
		 47 2.7047080993652344 48 2.7047080993652344;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98958081007003784 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.1439785361289978 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98958081007003784 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.1439785361289978 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -12.985110282897949 2 -13.359809875488281
		 3 -13.771039962768555 4 -14.189559936523438 5 -14.581219673156737 6 -14.909130096435547
		 7 -15.134149551391602 8 -12.671500205993652 9 -12.671699523925781 10 -12.67156982421875
		 11 -12.671529769897461 12 -12.671440124511719 13 -12.671389579772949 14 -12.671409606933594
		 15 -12.671449661254883 16 -12.671560287475586 17 -12.671489715576172 18 -12.671489715576172
		 19 -12.985110282897949 20 -12.985110282897949 21 -12.985110282897949 22 -12.985110282897949
		 23 -12.985110282897949 24 -12.985110282897949 25 -12.985110282897949 26 -12.985110282897949
		 27 -12.985110282897949 28 -12.985110282897949 29 -12.985110282897949 30 -12.985110282897949
		 31 -12.985110282897949 32 -12.985110282897949 33 -12.985110282897949 34 -12.985110282897949
		 35 -12.985110282897949 36 -12.985110282897949 37 -12.985110282897949 38 -12.985110282897949
		 39 -12.985110282897949 40 -12.985110282897949 41 -12.985110282897949 42 -12.985110282897949
		 43 -12.985110282897949 44 -12.985110282897949 45 -12.985110282897949 46 -12.985110282897949
		 47 -12.985110282897949 48 -12.985110282897949;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98976677656173706 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.14269450306892395 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98976677656173706 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.14269450306892395 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 42.146808624267578 2 44.305538177490234
		 3 46.736339569091797 4 49.263629913330078 5 51.666881561279297 6 53.697521209716797
		 7 55.096790313720703 8 40.388980865478516 9 40.38909912109375 10 40.388980865478516
		 11 40.388729095458984 12 40.388481140136719 13 40.388469696044922 14 40.388629913330078
		 15 40.388580322265625 16 40.388809204101562 17 40.388790130615234 18 40.388790130615234
		 19 42.146808624267578 20 42.146808624267578 21 42.146808624267578 22 42.146808624267578
		 23 42.146808624267578 24 42.146808624267578 25 42.146808624267578 26 42.146808624267578
		 27 42.146808624267578 28 42.146808624267578 29 42.146808624267578 30 42.146808624267578
		 31 42.146808624267578 32 42.146808624267578 33 42.146808624267578 34 42.146808624267578
		 35 42.146808624267578 36 42.146808624267578 37 42.146808624267578 38 42.146808624267578
		 39 42.146808624267578 40 42.146808624267578 41 42.146808624267578 42 42.146808624267578
		 43 42.146808624267578 44 42.146808624267578 45 42.146808624267578 46 42.146808624267578
		 47 42.146808624267578 48 42.146808624267578;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.77313458919525146 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.63424193859100342 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.77313458919525146 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.63424193859100342 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 45.105010986328125 2 45.948989868164062
		 3 46.753520965576172 4 47.454418182373047 5 48.01171875 6 48.409278869628906 7 48.647361755371094
		 8 44.306209564208984 9 44.306301116943359 10 44.306228637695312 11 44.306198120117188
		 12 44.306148529052734 13 44.306179046630859 14 44.306228637695312 15 44.306190490722656
		 16 44.306221008300781 17 44.306198120117188 18 44.306198120117188 19 45.105010986328125
		 20 45.105010986328125 21 45.105010986328125 22 45.105010986328125 23 45.105010986328125
		 24 45.105010986328125 25 45.105010986328125 26 45.105010986328125 27 45.105010986328125
		 28 45.105010986328125 29 45.105010986328125 30 45.105010986328125 31 45.105010986328125
		 32 45.105010986328125 33 45.105010986328125 34 45.105010986328125 35 45.105010986328125
		 36 45.105010986328125 37 45.105010986328125 38 45.105010986328125 39 45.105010986328125
		 40 45.105010986328125 41 45.105010986328125 42 45.105010986328125 43 45.105010986328125
		 44 45.105010986328125 45 45.105010986328125 46 45.105010986328125 47 45.105010986328125
		 48 45.105010986328125;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.94559371471405029 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.32534995675086975 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.94559371471405029 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.32534995675086975 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 77.618873596191406 2 79.071243286132812
		 3 80.455718994140625 4 81.661842346191406 5 82.620887756347656 6 83.305007934570312
		 7 83.7147216796875 8 76.244247436523438 9 76.244422912597656 10 76.244293212890625
		 11 76.244247436523438 12 76.244163513183594 13 76.24420166015625 14 76.244293212890625
		 15 76.244232177734375 16 76.244277954101562 17 76.244239807128906 18 76.244239807128906
		 19 77.618873596191406 20 77.618873596191406 21 77.618873596191406 22 77.618873596191406
		 23 77.618873596191406 24 77.618873596191406 25 77.618873596191406 26 77.618873596191406
		 27 77.618873596191406 28 77.618873596191406 29 77.618873596191406 30 77.618873596191406
		 31 77.618873596191406 32 77.618873596191406 33 77.618873596191406 34 77.618873596191406
		 35 77.618873596191406 36 77.618873596191406 37 77.618873596191406 38 77.618873596191406
		 39 77.618873596191406 40 77.618873596191406 41 77.618873596191406 42 77.618873596191406
		 43 77.618873596191406 44 77.618873596191406 45 77.618873596191406 46 77.618873596191406
		 47 77.618873596191406 48 77.618873596191406;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.86048078536987305 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.5094829797744751 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.86048078536987305 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.5094829797744751 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_FINGA_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB1__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 7.0605912208557129 1 7.0605912208557129
		 2 7.0605912208557129 3 7.0605912208557129 4 7.0605912208557129 5 7.0605912208557129
		 6 7.0605912208557129 7 7.0605912208557129 8 7.0605912208557129 9 7.0605912208557129
		 10 7.0605912208557129 11 7.0605912208557129 12 7.0605912208557129 13 7.0605912208557129
		 14 7.0605912208557129 15 7.0605912208557129 16 7.0605912208557129 17 7.0605912208557129
		 18 7.0605912208557129 19 7.0605912208557129 20 7.0605912208557129 21 7.0605912208557129
		 22 7.0605912208557129 23 7.0605912208557129 24 7.0605912208557129 25 7.0605912208557129
		 26 7.0605912208557129 27 7.0605912208557129 28 7.0605912208557129 29 7.0605912208557129
		 30 7.0605912208557129 31 7.0605912208557129 32 7.0605912208557129 33 7.0605912208557129
		 34 7.0605912208557129 35 7.0605912208557129 36 7.0605912208557129 37 7.0605912208557129
		 38 7.0605912208557129 39 7.0605912208557129 40 7.0605912208557129 41 7.0605912208557129
		 42 7.0605912208557129 43 7.0605912208557129 44 7.0605912208557129 45 7.0605912208557129
		 46 7.0605912208557129 47 7.0605912208557129 48 7.0605912208557129;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB1__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -12.462869644165039 1 -12.462869644165039
		 2 -12.462869644165039 3 -12.462869644165039 4 -12.462869644165039 5 -12.462869644165039
		 6 -12.462869644165039 7 -12.462869644165039 8 -12.462869644165039 9 -12.462869644165039
		 10 -12.462869644165039 11 -12.462869644165039 12 -12.462869644165039 13 -12.462869644165039
		 14 -12.462869644165039 15 -12.462869644165039 16 -12.462869644165039 17 -12.462869644165039
		 18 -12.462869644165039 19 -12.462869644165039 20 -12.462869644165039 21 -12.462869644165039
		 22 -12.462869644165039 23 -12.462869644165039 24 -12.462869644165039 25 -12.462869644165039
		 26 -12.462869644165039 27 -12.462869644165039 28 -12.462869644165039 29 -12.462869644165039
		 30 -12.462869644165039 31 -12.462869644165039 32 -12.462869644165039 33 -12.462869644165039
		 34 -12.462869644165039 35 -12.462869644165039 36 -12.462869644165039 37 -12.462869644165039
		 38 -12.462869644165039 39 -12.462869644165039 40 -12.462869644165039 41 -12.462869644165039
		 42 -12.462869644165039 43 -12.462869644165039 44 -12.462869644165039 45 -12.462869644165039
		 46 -12.462869644165039 47 -12.462869644165039 48 -12.462869644165039;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB1__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 13.852129936218262 1 13.852129936218262
		 2 13.852129936218262 3 13.852129936218262 4 13.852129936218262 5 13.852129936218262
		 6 13.852129936218262 7 13.852129936218262 8 13.852129936218262 9 13.852129936218262
		 10 13.852129936218262 11 13.852129936218262 12 13.852129936218262 13 13.852129936218262
		 14 13.852129936218262 15 13.852129936218262 16 13.852129936218262 17 13.852129936218262
		 18 13.852129936218262 19 13.852129936218262 20 13.852129936218262 21 13.852129936218262
		 22 13.852129936218262 23 13.852129936218262 24 13.852129936218262 25 13.852129936218262
		 26 13.852129936218262 27 13.852129936218262 28 13.852129936218262 29 13.852129936218262
		 30 13.852129936218262 31 13.852129936218262 32 13.852129936218262 33 13.852129936218262
		 34 13.852129936218262 35 13.852129936218262 36 13.852129936218262 37 13.852129936218262
		 38 13.852129936218262 39 13.852129936218262 40 13.852129936218262 41 13.852129936218262
		 42 13.852129936218262 43 13.852129936218262 44 13.852129936218262 45 13.852129936218262
		 46 13.852129936218262 47 13.852129936218262 48 13.852129936218262;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB2__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 13.85398006439209 1 13.85398006439209
		 2 13.85398006439209 3 13.85398006439209 4 13.85398006439209 5 13.85398006439209 6 13.85398006439209
		 7 13.85398006439209 8 13.85398006439209 9 13.85398006439209 10 13.85398006439209
		 11 13.85398006439209 12 13.85398006439209 13 13.85398006439209 14 13.85398006439209
		 15 13.85398006439209 16 13.85398006439209 17 13.85398006439209 18 13.85398006439209
		 19 13.85398006439209 20 13.85398006439209 21 13.85398006439209 22 13.85398006439209
		 23 13.85398006439209 24 13.85398006439209 25 13.85398006439209 26 13.85398006439209
		 27 13.85398006439209 28 13.85398006439209 29 13.85398006439209 30 13.85398006439209
		 31 13.85398006439209 32 13.85398006439209 33 13.85398006439209 34 13.85398006439209
		 35 13.85398006439209 36 13.85398006439209 37 13.85398006439209 38 13.85398006439209
		 39 13.85398006439209 40 13.85398006439209 41 13.85398006439209 42 13.85398006439209
		 43 13.85398006439209 44 13.85398006439209 45 13.85398006439209 46 13.85398006439209
		 47 13.85398006439209 48 13.85398006439209;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB2__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -28.090860366821289 1 -28.090860366821289
		 2 -28.090860366821289 3 -28.090860366821289 4 -28.090860366821289 5 -28.090860366821289
		 6 -28.090860366821289 7 -28.090860366821289 8 -28.090860366821289 9 -28.090860366821289
		 10 -28.090860366821289 11 -28.090860366821289 12 -28.090860366821289 13 -28.090860366821289
		 14 -28.090860366821289 15 -28.090860366821289 16 -28.090860366821289 17 -28.090860366821289
		 18 -28.090860366821289 19 -28.090860366821289 20 -28.090860366821289 21 -28.090860366821289
		 22 -28.090860366821289 23 -28.090860366821289 24 -28.090860366821289 25 -28.090860366821289
		 26 -28.090860366821289 27 -28.090860366821289 28 -28.090860366821289 29 -28.090860366821289
		 30 -28.090860366821289 31 -28.090860366821289 32 -28.090860366821289 33 -28.090860366821289
		 34 -28.090860366821289 35 -28.090860366821289 36 -28.090860366821289 37 -28.090860366821289
		 38 -28.090860366821289 39 -28.090860366821289 40 -28.090860366821289 41 -28.090860366821289
		 42 -28.090860366821289 43 -28.090860366821289 44 -28.090860366821289 45 -28.090860366821289
		 46 -28.090860366821289 47 -28.090860366821289 48 -28.090860366821289;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB2__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -12.709039688110352 1 -12.709039688110352
		 2 -12.709039688110352 3 -12.709039688110352 4 -12.709039688110352 5 -12.709039688110352
		 6 -12.709039688110352 7 -12.709039688110352 8 -12.709039688110352 9 -12.709039688110352
		 10 -12.709039688110352 11 -12.709039688110352 12 -12.709039688110352 13 -12.709039688110352
		 14 -12.709039688110352 15 -12.709039688110352 16 -12.709039688110352 17 -12.709039688110352
		 18 -12.709039688110352 19 -12.709039688110352 20 -12.709039688110352 21 -12.709039688110352
		 22 -12.709039688110352 23 -12.709039688110352 24 -12.709039688110352 25 -12.709039688110352
		 26 -12.709039688110352 27 -12.709039688110352 28 -12.709039688110352 29 -12.709039688110352
		 30 -12.709039688110352 31 -12.709039688110352 32 -12.709039688110352 33 -12.709039688110352
		 34 -12.709039688110352 35 -12.709039688110352 36 -12.709039688110352 37 -12.709039688110352
		 38 -12.709039688110352 39 -12.709039688110352 40 -12.709039688110352 41 -12.709039688110352
		 42 -12.709039688110352 43 -12.709039688110352 44 -12.709039688110352 45 -12.709039688110352
		 46 -12.709039688110352 47 -12.709039688110352 48 -12.709039688110352;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_THUMB_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_PROP__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_PROP__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_PROP__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_PROP_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_PROP_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_PROP_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SPECIAL__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SPECIAL__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SPECIAL__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SPECIAL_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SPECIAL_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SPECIAL_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_E_TWIST__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -35.860870361328125 1 -21.435550689697266
		 2 -15.03794002532959 3 -16.819040298461914 4 -12.212949752807617 5 -7.4506311416625977
		 6 1.5585349798202515 7 -8.1359901428222656 8 -9.4136133193969727 9 -19.351829528808594
		 10 -22.190069198608398 11 -25.535680770874023 12 -37.808609008789062 13 -45.862491607666016
		 14 -52.067409515380859 15 -44.746219635009766 16 -27.347799301147461 17 -32.431350708007812
		 18 -32.431350708007812 19 -21.435550689697266 20 -21.435550689697266 21 -21.435550689697266
		 22 -21.435550689697266 23 -21.435550689697266 24 -21.435550689697266 25 -21.435550689697266
		 26 -21.435550689697266 27 -21.435550689697266 28 -21.435550689697266 29 -21.435550689697266
		 30 -21.435550689697266 31 -21.435550689697266 32 -21.435550689697266 33 -21.435550689697266
		 34 -21.435550689697266 35 -21.435550689697266 36 -21.435550689697266 37 -21.435550689697266
		 38 -21.435550689697266 39 -21.435550689697266 40 -21.435550689697266 41 -21.435550689697266
		 42 -21.435550689697266 43 -21.435550689697266 44 -21.435550689697266 45 -21.435550689697266
		 46 -21.435550689697266 47 -21.435550689697266 48 -21.435550689697266;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.22349745035171509 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.9747045636177063 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.22349745035171509 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.9747045636177063 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_E_TWIST__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_E_TWIST__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_E_TWIST_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_E_TWIST_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_E_TWIST_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_E__Skeleton_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_E__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_E__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_E__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_E__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_E_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_E_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_E_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_S__Skeleton_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_S__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_S__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_S__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_S__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_S_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_S_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_S_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_TWIST_S__Skeleton_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_TWIST_S__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_TWIST_S__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 -1.3068720102310181 1 -1.2563849687576294
		 2 -3.9763379096984863 3 -6.3811259269714355 4 -11.410050392150879 5 -31.508949279785156
		 6 -44.101341247558594 7 -8.2695198059082031 8 -2.0542769432067871 9 2.1099569797515869
		 10 3.6555080413818359 11 5.6602520942687988 12 8.0974130630493164 13 10.626779556274414
		 14 12.905139923095703 15 13.497590065002441 16 7.2558789253234854 17 1.5265430212020874
		 18 1.5265430212020874 19 -1.2563849687576294 20 -1.2563849687576294 21 -1.2563849687576294
		 22 -1.2563849687576294 23 -1.2563849687576294 24 -1.2563849687576294 25 -1.2563849687576294
		 26 -1.2563849687576294 27 -1.2563849687576294 28 -1.2563849687576294 29 -1.2563849687576294
		 30 -1.2563849687576294 31 -1.2563849687576294 32 -1.2563849687576294 33 -1.2563849687576294
		 34 -1.2563849687576294 35 -1.2563849687576294 36 -1.2563849687576294 37 -1.2563849687576294
		 38 -1.2563849687576294 39 -1.2563849687576294 40 -1.2563849687576294 41 -1.2563849687576294
		 42 -1.2563849687576294 43 -1.2563849687576294 44 -1.2563849687576294 45 -1.2563849687576294
		 46 -1.2563849687576294 47 -1.2563849687576294 48 -1.2563849687576294;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.87284380197525024 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.48799961805343628 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.87284380197525024 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.48799961805343628 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_TWIST_S__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_TWIST_S__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_TWIST_S_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_TWIST_S_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_TWIST_S_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "SC_BACKA__Skeleton_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "SC_BACKA__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "SC_BASE__Skeleton_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "SC_BASE__Skeleton_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "SC_BASE__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_H__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -63.232830047607429 2 -59.547309875488281
		 3 -19.953569412231445 4 7.3919491767883301 5 -3.1193349361419678 6 11.137439727783203
		 7 28.802019119262692 8 9.0497989654541016 9 -15.835260391235352 10 -38.729568481445312
		 11 -57.997749328613281 12 -61.908710479736321 13 -73.162010192871094 14 -95.138473510742188
		 15 -100.66750335693359 16 -90.833091735839844 17 -57.303390502929695 18 -57.303390502929695
		 19 -63.232830047607429 20 -63.232830047607429 21 -63.232830047607429 22 -63.232830047607429
		 23 -63.232830047607429 24 -63.232830047607429 25 -63.232830047607429 26 -63.232830047607429
		 27 -63.232830047607429 28 -63.232830047607429 29 -63.232830047607429 30 -63.232830047607429
		 31 -63.232830047607429 32 -63.232830047607429 33 -63.232830047607429 34 -63.232830047607429
		 35 -63.232830047607429 36 -63.232830047607429 37 -63.232830047607429 38 -63.232830047607429
		 39 -63.232830047607429 40 -63.232830047607429 41 -63.232830047607429 42 -63.232830047607429
		 43 -63.232830047607429 44 -63.232830047607429 45 -63.232830047607429 46 -63.232830047607429
		 47 -63.232830047607429 48 -63.232830047607429;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.48054289817810059 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.87697118520736694 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.48054289817810059 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.87697118520736694 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_H__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -0.37274891138076782 2 0.31252908706665039
		 3 3.278904914855957 4 3.7041599750518803 5 4.2914490699768066 6 4.6092610359191895
		 7 3.8770558834075928 8 8.3505830764770508 9 6.584446907043457 10 3.1111469268798828
		 11 1.0044569969177246 12 -0.52912992238998413 13 -1.3652939796447754 14 -3.6674621105194092
		 15 -4.5933609008789062 16 -3.036323070526123 17 2.388916015625 18 2.388916015625
		 19 -0.37274891138076782 20 -0.37274891138076782 21 -0.37274891138076782 22 -0.37274891138076782
		 23 -0.37274891138076782 24 -0.37274891138076782 25 -0.37274891138076782 26 -0.37274891138076782
		 27 -0.37274891138076782 28 -0.37274891138076782 29 -0.37274891138076782 30 -0.37274891138076782
		 31 -0.37274891138076782 32 -0.37274891138076782 33 -0.37274891138076782 34 -0.37274891138076782
		 35 -0.37274891138076782 36 -0.37274891138076782 37 -0.37274891138076782 38 -0.37274891138076782
		 39 -0.37274891138076782 40 -0.37274891138076782 41 -0.37274891138076782 42 -0.37274891138076782
		 43 -0.37274891138076782 44 -0.37274891138076782 45 -0.37274891138076782 46 -0.37274891138076782
		 47 -0.37274891138076782 48 -0.37274891138076782;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.9885101318359375 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.15115481615066528 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.9885101318359375 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.15115481615066528 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_H__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -4.1924018859863281 2 -4.3563809394836426
		 3 -0.51804471015930176 4 1.1504490375518799 5 -0.32881799340248108 6 0.5873761773109436
		 7 1.1974190473556519 8 -0.53055870532989502 9 -3.5972700119018559 10 -5.6241388320922852
		 11 -8.7317638397216797 12 -6.7903070449829102 13 -4.0491080284118652 14 -3.7058730125427246
		 15 -3.6607530117034912 16 -3.4126839637756348 17 -3.4215619564056396 18 -3.4215619564056396
		 19 -4.1924018859863281 20 -4.1924018859863281 21 -4.1924018859863281 22 -4.1924018859863281
		 23 -4.1924018859863281 24 -4.1924018859863281 25 -4.1924018859863281 26 -4.1924018859863281
		 27 -4.1924018859863281 28 -4.1924018859863281 29 -4.1924018859863281 30 -4.1924018859863281
		 31 -4.1924018859863281 32 -4.1924018859863281 33 -4.1924018859863281 34 -4.1924018859863281
		 35 -4.1924018859863281 36 -4.1924018859863281 37 -4.1924018859863281 38 -4.1924018859863281
		 39 -4.1924018859863281 40 -4.1924018859863281 41 -4.1924018859863281 42 -4.1924018859863281
		 43 -4.1924018859863281 44 -4.1924018859863281 45 -4.1924018859863281 46 -4.1924018859863281
		 47 -4.1924018859863281 48 -4.1924018859863281;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.94506096839904785 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.32689422369003296 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.94506096839904785 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.32689422369003296 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_K__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 62.295330047607422 2 69.734832763671875
		 3 17.835960388183594 4 -2.018435001373291 5 54.365791320800781 6 61.810020446777337
		 7 61.355270385742188 8 105.1416015625 9 112.31159973144531 10 105.34770202636719
		 11 115.9720993041992 12 100.97830200195312 13 65.938796997070312 14 69.339210510253906
		 15 74.909538269042969 16 53.240409851074219 17 39.657810211181641 18 39.657810211181641
		 19 62.295330047607422 20 62.295330047607422 21 62.295330047607422 22 62.295330047607422
		 23 62.295330047607422 24 62.295330047607422 25 62.295330047607422 26 62.295330047607422
		 27 62.295330047607422 28 62.295330047607422 29 62.295330047607422 30 62.295330047607422
		 31 62.295330047607422 32 62.295330047607422 33 62.295330047607422 34 62.295330047607422
		 35 62.295330047607422 36 62.295330047607422 37 62.295330047607422 38 62.295330047607422
		 39 62.295330047607422 40 62.295330047607422 41 62.295330047607422 42 62.295330047607422
		 43 62.295330047607422 44 62.295330047607422 45 62.295330047607422 46 62.295330047607422
		 47 62.295330047607422 48 62.295330047607422;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.092765979468822479 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.99568796157836914 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.092765979468822479 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.99568796157836914 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_K__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0.65954238176345825 2 0.75336557626724243
		 3 0.0090057868510484695 4 0.04052376002073288 5 0.55968117713928223 6 0.65342181921005249
		 7 0.64768660068511963 8 1.1998720169067383 9 1.2902799844741821 10 1.2024710178375244
		 11 1.3356670141220093 12 1.1473740339279175 13 0.70548981428146362 14 0.74837607145309448
		 15 0.81862622499465942 16 0.54548448324203491 17 0.37404328584671021 18 0.37404328584671021
		 19 0.65954238176345825 20 0.65954238176345825 21 0.65954238176345825 22 0.65954238176345825
		 23 0.65954238176345825 24 0.65954238176345825 25 0.65954238176345825 26 0.65954238176345825
		 27 0.65954238176345825 28 0.65954238176345825 29 0.65954238176345825 30 0.65954238176345825
		 31 0.65954238176345825 32 0.65954238176345825 33 0.65954238176345825 34 0.65954238176345825
		 35 0.65954238176345825 36 0.65954238176345825 37 0.65954238176345825 38 0.65954238176345825
		 39 0.65954238176345825 40 0.65954238176345825 41 0.65954238176345825 42 0.65954238176345825
		 43 0.65954238176345825 44 0.65954238176345825 45 0.65954238176345825 46 0.65954238176345825
		 47 0.65954238176345825 48 0.65954238176345825;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.98809134960174561 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.15386858582496643 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.98809134960174561 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.15386858582496643 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_K__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 5.1983180046081543 2 5.9378538131713867
		 3 0.088844276964664459 4 -0.70092302560806274 5 4.4108548164367676 6 5.1500749588012695
		 7 5.1048707962036133 8 9.457768440246582 9 10.170680046081543 10 9.4782619476318359
		 11 10.531740188598633 12 9.0438394546508789 13 5.5605459213256836 14 5.898529052734375
		 15 6.4522528648376465 16 4.2989687919616699 17 2.9480650424957275 18 2.9480650424957275
		 19 5.1983180046081543 20 5.1983180046081543 21 5.1983180046081543 22 5.1983180046081543
		 23 5.1983180046081543 24 5.1983180046081543 25 5.1983180046081543 26 5.1983180046081543
		 27 5.1983180046081543 28 5.1983180046081543 29 5.1983180046081543 30 5.1983180046081543
		 31 5.1983180046081543 32 5.1983180046081543 33 5.1983180046081543 34 5.1983180046081543
		 35 5.1983180046081543 36 5.1983180046081543 37 5.1983180046081543 38 5.1983180046081543
		 39 5.1983180046081543 40 5.1983180046081543 41 5.1983180046081543 42 5.1983180046081543
		 43 5.1983180046081543 44 5.1983180046081543 45 5.1983180046081543 46 5.1983180046081543
		 47 5.1983180046081543 48 5.1983180046081543;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.63279086351394653 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.7743227481842041 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.63279086351394653 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.7743227481842041 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_A__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -16.939229965209961 2 -30.993230819702148
		 3 -14.532090187072752 4 21.147380828857422 5 7.643115997314454 6 13.629010200500488
		 7 3.7831330299377446 8 -6.9077458381652832 9 11.976929664611816 10 -2.7099499702453613
		 11 -23.778440475463867 12 -21.985080718994141 13 -2.6028280258178711 14 -8.7399520874023438
		 15 -14.189470291137695 16 -9.8664178848266602 17 -17.199459075927734 18 -17.199459075927734
		 19 -16.939229965209961 20 -16.939229965209961 21 -16.939229965209961 22 -16.939229965209961
		 23 -16.939229965209961 24 -16.939229965209961 25 -16.939229965209961 26 -16.939229965209961
		 27 -16.939229965209961 28 -16.939229965209961 29 -16.939229965209961 30 -16.939229965209961
		 31 -16.939229965209961 32 -16.939229965209961 33 -16.939229965209961 34 -16.939229965209961
		 35 -16.939229965209961 36 -16.939229965209961 37 -16.939229965209961 38 -16.939229965209961
		 39 -16.939229965209961 40 -16.939229965209961 41 -16.939229965209961 42 -16.939229965209961
		 43 -16.939229965209961 44 -16.939229965209961 45 -16.939229965209961 46 -16.939229965209961
		 47 -16.939229965209961 48 -16.939229965209961;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.14181837439537048 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.98989272117614746 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.14181837439537048 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.98989272117614746 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_A__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -2.6062889099121094 2 -2.0521209239959717
		 3 -4.6766629219055176 4 -4.035667896270752 5 -2.4334690570831299 6 -1.7194600105285645
		 7 -1.7136199474334717 8 2.6992809772491455 9 3.7745399475097652 10 2.5313549041748047
		 11 5.0984320640563965 12 2.1166410446166992 13 -2.1419849395751953 14 -1.2887749671936035
		 15 -0.45097860693931585 16 -2.0943629741668701 17 -3.6843230724334712 18 -3.6843230724334712
		 19 -2.6062889099121094 20 -2.6062889099121094 21 -2.6062889099121094 22 -2.6062889099121094
		 23 -2.6062889099121094 24 -2.6062889099121094 25 -2.6062889099121094 26 -2.6062889099121094
		 27 -2.6062889099121094 28 -2.6062889099121094 29 -2.6062889099121094 30 -2.6062889099121094
		 31 -2.6062889099121094 32 -2.6062889099121094 33 -2.6062889099121094 34 -2.6062889099121094
		 35 -2.6062889099121094 36 -2.6062889099121094 37 -2.6062889099121094 38 -2.6062889099121094
		 39 -2.6062889099121094 40 -2.6062889099121094 41 -2.6062889099121094 42 -2.6062889099121094
		 43 -2.6062889099121094 44 -2.6062889099121094 45 -2.6062889099121094 46 -2.6062889099121094
		 47 -2.6062889099121094 48 -2.6062889099121094;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.90305548906326294 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.4295240044593811 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.90305548906326294 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.4295240044593811 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_A__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -0.8320763111114502 2 -1.0111960172653198
		 3 0.35318988561630249 4 -0.48882299661636353 5 -1.4252370595932007 6 -1.5483529567718506
		 7 -1.3648229837417603 8 -2.0427300930023193 9 -1.8492610454559324 10 -2.0966799259185791
		 11 -2.7462000846862793 12 -2.2853629589080811 13 -1.1139260530471802 14 -1.5327140092849731
		 15 -1.9027220010757449 16 -1.0724179744720459 17 -0.40628901124000549 18 -0.40628901124000549
		 19 -0.8320763111114502 20 -0.8320763111114502 21 -0.8320763111114502 22 -0.8320763111114502
		 23 -0.8320763111114502 24 -0.8320763111114502 25 -0.8320763111114502 26 -0.8320763111114502
		 27 -0.8320763111114502 28 -0.8320763111114502 29 -0.8320763111114502 30 -0.8320763111114502
		 31 -0.8320763111114502 32 -0.8320763111114502 33 -0.8320763111114502 34 -0.8320763111114502
		 35 -0.8320763111114502 36 -0.8320763111114502 37 -0.8320763111114502 38 -0.8320763111114502
		 39 -0.8320763111114502 40 -0.8320763111114502 41 -0.8320763111114502 42 -0.8320763111114502
		 43 -0.8320763111114502 44 -0.8320763111114502 45 -0.8320763111114502 46 -0.8320763111114502
		 47 -0.8320763111114502 48 -0.8320763111114502;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.96042138338088989 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.2785511314868927 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.96042138338088989 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.2785511314868927 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_T__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -3.7533050567539489e-15 2 3.9167651266325265e-05
		 3 -0.0011052129557356238 4 -16.342159271240234 5 -25.857429504394531 6 -24.570989608764648
		 7 -3.9628100395202632 8 -0.00019381829770281911 9 -0.0002413789043202996 10 -0.00021265819668769836
		 11 -2.6578949473332614e-05 12 -0.00088773219613358378 13 -0.0010556250344961882 14 -0.00011879300291184336
		 15 0.00023824389791116118 16 6.8039182224310935e-05 17 0.00016690259508322924 18 0.00016690259508322924
		 19 -3.7533050567539489e-15 20 -3.7533050567539489e-15 21 -3.7533050567539489e-15
		 22 -3.7533050567539489e-15 23 -3.7533050567539489e-15 24 -3.7533050567539489e-15
		 25 -3.7533050567539489e-15 26 -3.7533050567539489e-15 27 -3.7533050567539489e-15
		 28 -3.7533050567539489e-15 29 -3.7533050567539489e-15 30 -3.7533050567539489e-15
		 31 -3.7533050567539489e-15 32 -3.7533050567539489e-15 33 -3.7533050567539489e-15
		 34 -3.7533050567539489e-15 35 -3.7533050567539489e-15 36 -3.7533050567539489e-15
		 37 -3.7533050567539489e-15 38 -3.7533050567539489e-15 39 -3.7533050567539489e-15
		 40 -3.7533050567539489e-15 41 -3.7533050567539489e-15 42 -3.7533050567539489e-15
		 43 -3.7533050567539489e-15 44 -3.7533050567539489e-15 45 -3.7533050567539489e-15
		 46 -3.7533050567539489e-15 47 -3.7533050567539489e-15 48 -3.7533050567539489e-15;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".ktl[19:48]" no yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_T__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -3.2863221122170216e-07 2 -1.5210779565677512e-05
		 3 0.00010507240222068503 4 -0.41684651374816895 5 -0.74044919013977051 6 -0.70242881774902344
		 7 -0.11154620349407196 8 -3.1336308893514797e-05 9 -2.8162490707472898e-05 10 -3.147633105982095e-05
		 11 -5.1750589591392782e-06 12 -0.00021642059436999261 13 -0.00025315501261502504
		 14 -3.3880489354487509e-05 15 7.7790959039703012e-05 16 4.0774768422124907e-05 17 -5.0410668336553499e-05
		 18 -5.0410668336553499e-05 19 -3.2863221122170216e-07 20 -3.2863221122170216e-07
		 21 -3.2863221122170216e-07 22 -3.2863221122170216e-07 23 -3.2863221122170216e-07
		 24 -3.2863221122170216e-07 25 -3.2863221122170216e-07 26 -3.2863221122170216e-07
		 27 -3.2863221122170216e-07 28 -3.2863221122170216e-07 29 -3.2863221122170216e-07
		 30 -3.2863221122170216e-07 31 -3.2863221122170216e-07 32 -3.2863221122170216e-07
		 33 -3.2863221122170216e-07 34 -3.2863221122170216e-07 35 -3.2863221122170216e-07
		 36 -3.2863221122170216e-07 37 -3.2863221122170216e-07 38 -3.2863221122170216e-07
		 39 -3.2863221122170216e-07 40 -3.2863221122170216e-07 41 -3.2863221122170216e-07
		 42 -3.2863221122170216e-07 43 -3.2863221122170216e-07 44 -3.2863221122170216e-07
		 45 -3.2863221122170216e-07 46 -3.2863221122170216e-07 47 -3.2863221122170216e-07
		 48 -3.2863221122170216e-07;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -5.7917226513382047e-05 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -5.7917226513382047e-05 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_T__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 1.3087490060570417e-06 2 -1.374057956127217e-05
		 3 0.00014379649655893445 4 0.64857989549636841 5 0.9830772876739502 6 0.93260127305984508
		 7 0.1482183039188385 8 -1.2230620086484123e-05 9 -7.0569531089859083e-06 10 -1.1232679753447883e-05
		 11 -2.3390609840134857e-06 12 -0.00011086810263805091 13 -0.00012867759505752474
		 14 -1.8538830772740766e-05 15 4.4588028686121106e-05 16 2.6699359295889735e-05 17 -4.7709650971228257e-05
		 18 -4.7709650971228257e-05 19 1.3087490060570417e-06 20 1.3087490060570417e-06 21 1.3087490060570417e-06
		 22 1.3087490060570417e-06 23 1.3087490060570417e-06 24 1.3087490060570417e-06 25 1.3087490060570417e-06
		 26 1.3087490060570417e-06 27 1.3087490060570417e-06 28 1.3087490060570417e-06 29 1.3087490060570417e-06
		 30 1.3087490060570417e-06 31 1.3087490060570417e-06 32 1.3087490060570417e-06 33 1.3087490060570417e-06
		 34 1.3087490060570417e-06 35 1.3087490060570417e-06 36 1.3087490060570417e-06 37 1.3087490060570417e-06
		 38 1.3087490060570417e-06 39 1.3087490060570417e-06 40 1.3087490060570417e-06 41 1.3087490060570417e-06
		 42 1.3087490060570417e-06 43 1.3087490060570417e-06 44 1.3087490060570417e-06 45 1.3087490060570417e-06
		 46 1.3087490060570417e-06 47 1.3087490060570417e-06 48 1.3087490060570417e-06;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -4.3410607759142295e-05 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -4.3410607759142295e-05 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_T_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_T_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_T_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_K__Skeleton_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_K__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_K__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_K__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_K__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_K_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_K_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_K_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_H__Skeleton_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LF_SC_H__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_H__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_H__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_H__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_H_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_H_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LF_SC_H_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_H__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -33.152618408203125 2 -69.570449829101562
		 3 -79.163597106933594 4 -75.604621887207031 5 -91.837860107421875 6 -101.12930297851562
		 7 -77.157203674316406 8 -57.29534912109375 9 -54.893280029296875 10 -60.515880584716797
		 11 -54.645709991455078 12 -12.835729598999023 13 6.0282440185546875 14 -6.0392279624938965
		 15 11.511590003967285 16 32.580459594726562 17 20.031389236450195 18 20.031389236450195
		 19 -33.152618408203125 20 -33.152618408203125 21 -33.152618408203125 22 -33.152618408203125
		 23 -33.152618408203125 24 -33.152618408203125 25 -33.152618408203125 26 -33.152618408203125
		 27 -33.152618408203125 28 -33.152618408203125 29 -33.152618408203125 30 -33.152618408203125
		 31 -33.152618408203125 32 -33.152618408203125 33 -33.152618408203125 34 -33.152618408203125
		 35 -33.152618408203125 36 -33.152618408203125 37 -33.152618408203125 38 -33.152618408203125
		 39 -33.152618408203125 40 -33.152618408203125 41 -33.152618408203125 42 -33.152618408203125
		 43 -33.152618408203125 44 -33.152618408203125 45 -33.152618408203125 46 -33.152618408203125
		 47 -33.152618408203125 48 -33.152618408203125;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.066721126437187195 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.99777168035507202 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.066721126437187195 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.99777168035507202 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_H__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -6.2466421127319336 2 0.027954159304499626
		 3 1.5088059902191162 4 1.5557440519332886 5 4.5314321517944336 6 6.7024970054626465
		 7 2.9823169708251953 8 0.43984061479568481 9 -2.9326860904693604 10 -1.7550040483474731
		 11 -2.2013900279998779 12 -4.4536929130554199 13 -4.3052611351013184 14 -4.3173069953918457
		 15 -4.5045619010925293 16 -4.1009840965270996 17 -6.2431440353393555 18 -6.2431440353393555
		 19 -6.2466421127319336 20 -6.2466421127319336 21 -6.2466421127319336 22 -6.2466421127319336
		 23 -6.2466421127319336 24 -6.2466421127319336 25 -6.2466421127319336 26 -6.2466421127319336
		 27 -6.2466421127319336 28 -6.2466421127319336 29 -6.2466421127319336 30 -6.2466421127319336
		 31 -6.2466421127319336 32 -6.2466421127319336 33 -6.2466421127319336 34 -6.2466421127319336
		 35 -6.2466421127319336 36 -6.2466421127319336 37 -6.2466421127319336 38 -6.2466421127319336
		 39 -6.2466421127319336 40 -6.2466421127319336 41 -6.2466421127319336 42 -6.2466421127319336
		 43 -6.2466421127319336 44 -6.2466421127319336 45 -6.2466421127319336 46 -6.2466421127319336
		 47 -6.2466421127319336 48 -6.2466421127319336;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.50037235021591187 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.8658103346824646 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.50037235021591187 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.8658103346824646 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_H__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 14.877920150756836 2 12.757100105285645
		 3 4.0717411041259766 4 3.0094859600067139 5 1.2664099931716919 6 -1.6594630479812622
		 7 -1.1831530332565308 8 1.0293560028076172 9 1.1914730072021484 10 4.1340651512145996
		 11 4.7452588081359863 12 0.59989190101623535 13 0.1074879989027977 14 2.6164450645446777
		 15 2.9449410438537598 16 4.0059399604797363 17 7.2813620567321786 18 7.2813620567321786
		 19 14.877920150756836 20 14.877920150756836 21 14.877920150756836 22 14.877920150756836
		 23 14.877920150756836 24 14.877920150756836 25 14.877920150756836 26 14.877920150756836
		 27 14.877920150756836 28 14.877920150756836 29 14.877920150756836 30 14.877920150756836
		 31 14.877920150756836 32 14.877920150756836 33 14.877920150756836 34 14.877920150756836
		 35 14.877920150756836 36 14.877920150756836 37 14.877920150756836 38 14.877920150756836
		 39 14.877920150756836 40 14.877920150756836 41 14.877920150756836 42 14.877920150756836
		 43 14.877920150756836 44 14.877920150756836 45 14.877920150756836 46 14.877920150756836
		 47 14.877920150756836 48 14.877920150756836;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.73564112186431885 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.67737150192260742 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.73564112186431885 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.67737150192260742 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_K__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 124.71340179443359 2 125.5634002685547
		 3 84.186973571777344 4 73.883522033691406 5 81.169929504394531 6 83.130020141601562
		 7 41.705478668212891 8 31.528249740600589 9 23.676109313964844 10 64.53240966796875
		 11 70.030548095703125 12 18.475980758666992 13 -2.0794260501861572 14 59.921520233154297
		 15 67.927230834960938 16 64.553703308105469 17 105.93070220947266 18 105.93070220947266
		 19 124.71340179443359 20 124.71340179443359 21 124.71340179443359 22 124.71340179443359
		 23 124.71340179443359 24 124.71340179443359 25 124.71340179443359 26 124.71340179443359
		 27 124.71340179443359 28 124.71340179443359 29 124.71340179443359 30 124.71340179443359
		 31 124.71340179443359 32 124.71340179443359 33 124.71340179443359 34 124.71340179443359
		 35 124.71340179443359 36 124.71340179443359 37 124.71340179443359 38 124.71340179443359
		 39 124.71340179443359 40 124.71340179443359 41 124.71340179443359 42 124.71340179443359
		 43 124.71340179443359 44 124.71340179443359 45 124.71340179443359 46 124.71340179443359
		 47 124.71340179443359 48 124.71340179443359;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.35973083972930908 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.9330560564994812 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.35973083972930908 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.9330560564994812 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_K__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -1.4457809925079346 2 -1.4564880132675171
		 3 -0.93562740087509155 4 -0.80568671226501465 5 -0.897574782371521 6 -0.92229729890823364
		 7 -0.3998681902885437 8 -0.27151429653167725 9 -0.022171860560774803 10 -0.68775039911270142
		 11 -0.75709497928619385 12 -0.0098285684362053871 13 -0.014492039568722248 14 -0.62960469722747803
		 15 -0.730568528175354 16 -0.68801897764205933 17 -1.2098230123519897 18 -1.2098230123519897
		 19 -1.4457809925079346 20 -1.4457809925079346 21 -1.4457809925079346 22 -1.4457809925079346
		 23 -1.4457809925079346 24 -1.4457809925079346 25 -1.4457809925079346 26 -1.4457809925079346
		 27 -1.4457809925079346 28 -1.4457809925079346 29 -1.4457809925079346 30 -1.4457809925079346
		 31 -1.4457809925079346 32 -1.4457809925079346 33 -1.4457809925079346 34 -1.4457809925079346
		 35 -1.4457809925079346 36 -1.4457809925079346 37 -1.4457809925079346 38 -1.4457809925079346
		 39 -1.4457809925079346 40 -1.4457809925079346 41 -1.4457809925079346 42 -1.4457809925079346
		 43 -1.4457809925079346 44 -1.4457809925079346 45 -1.4457809925079346 46 -1.4457809925079346
		 47 -1.4457809925079346 48 -1.4457809925079346;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99946630001068115 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.032667480409145355 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99946630001068115 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.032667480409145355 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_K__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -11.401069641113281 2 -11.485630035400391
		 3 -7.3745269775390616 4 -6.3502588272094727 5 -7.0746850967407227 6 -7.2694730758666983
		 7 -3.1516098976135254 8 -2.139962911605835 9 -0.085908956825733185 10 -5.4207921028137207
		 11 -5.967249870300293 12 -0.095186106860637665 13 0.33405008912086487 14 -4.9623489379882812
		 15 -5.7581768035888672 16 -5.4229087829589844 17 -9.5362300872802734 18 -9.5362300872802734
		 19 -11.401069641113281 20 -11.401069641113281 21 -11.401069641113281 22 -11.401069641113281
		 23 -11.401069641113281 24 -11.401069641113281 25 -11.401069641113281 26 -11.401069641113281
		 27 -11.401069641113281 28 -11.401069641113281 29 -11.401069641113281 30 -11.401069641113281
		 31 -11.401069641113281 32 -11.401069641113281 33 -11.401069641113281 34 -11.401069641113281
		 35 -11.401069641113281 36 -11.401069641113281 37 -11.401069641113281 38 -11.401069641113281
		 39 -11.401069641113281 40 -11.401069641113281 41 -11.401069641113281 42 -11.401069641113281
		 43 -11.401069641113281 44 -11.401069641113281 45 -11.401069641113281 46 -11.401069641113281
		 47 -11.401069641113281 48 -11.401069641113281;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.96833211183547974 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.24966563284397125 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.96833211183547974 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.24966563284397125 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_A__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -9.4833745956420898 2 13.80558967590332
		 3 8.1970062255859375 4 -8.2245588302612305 5 -8.6807880401611328 6 -20.309989929199219
		 7 -13.09574031829834 8 -12.16172981262207 9 1.1363519430160522 10 -22.643880844116211
		 11 -36.89080810546875 12 -18.572410583496094 13 19.491680145263672 14 -0.69809472560882568
		 15 2.0517299175262451 16 -5.3138251304626465 17 -14.641900062561035 18 -14.641900062561035
		 19 -9.4833745956420898 20 -9.4833745956420898 21 -9.4833745956420898 22 -9.4833745956420898
		 23 -9.4833745956420898 24 -9.4833745956420898 25 -9.4833745956420898 26 -9.4833745956420898
		 27 -9.4833745956420898 28 -9.4833745956420898 29 -9.4833745956420898 30 -9.4833745956420898
		 31 -9.4833745956420898 32 -9.4833745956420898 33 -9.4833745956420898 34 -9.4833745956420898
		 35 -9.4833745956420898 36 -9.4833745956420898 37 -9.4833745956420898 38 -9.4833745956420898
		 39 -9.4833745956420898 40 -9.4833745956420898 41 -9.4833745956420898 42 -9.4833745956420898
		 43 -9.4833745956420898 44 -9.4833745956420898 45 -9.4833745956420898 46 -9.4833745956420898
		 47 -9.4833745956420898 48 -9.4833745956420898;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.23368974030017853 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.97231125831604004 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.23368974030017853 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.97231125831604004 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_A__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -4.5562081336975098 2 -9.9918031692504883
		 3 -2.2826299667358398 4 -1.5345979928970337 5 -3.7635641098022461 6 -6.1177859306335449
		 7 -2.7183609008789062 8 0.32293570041656494 9 0.97373908758163452 10 0.028051510453224179
		 11 -0.21947270631790161 12 2.2093319892883301 13 1.452206015586853 14 -0.61880838871002197
		 15 -2.2200698852539062 16 -3.5259079933166504 17 -8.4529409408569336 18 -8.4529409408569336
		 19 -4.5562081336975098 20 -4.5562081336975098 21 -4.5562081336975098 22 -4.5562081336975098
		 23 -4.5562081336975098 24 -4.5562081336975098 25 -4.5562081336975098 26 -4.5562081336975098
		 27 -4.5562081336975098 28 -4.5562081336975098 29 -4.5562081336975098 30 -4.5562081336975098
		 31 -4.5562081336975098 32 -4.5562081336975098 33 -4.5562081336975098 34 -4.5562081336975098
		 35 -4.5562081336975098 36 -4.5562081336975098 37 -4.5562081336975098 38 -4.5562081336975098
		 39 -4.5562081336975098 40 -4.5562081336975098 41 -4.5562081336975098 42 -4.5562081336975098
		 43 -4.5562081336975098 44 -4.5562081336975098 45 -4.5562081336975098 46 -4.5562081336975098
		 47 -4.5562081336975098 48 -4.5562081336975098;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.97257733345031738 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.2325797975063324 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.97257733345031738 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.2325797975063324 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_A__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 4.5458369255065918 2 5.8668341636657715
		 3 3.6556730270385742 4 3.2305359840393066 5 4.8612480163574219 6 6.6696591377258301
		 7 2.3819859027862549 8 1.0217210054397583 9 -0.14289629459381104 10 2.0559389591217041
		 11 2.1850790977478027 12 -0.20913019776344299 13 0.42978119850158691 14 3.0143930912017822
		 15 3.9864320755004883 16 4.2661747932434082 17 8.6649723052978516 18 8.6649723052978516
		 19 4.5458369255065918 20 4.5458369255065918 21 4.5458369255065918 22 4.5458369255065918
		 23 4.5458369255065918 24 4.5458369255065918 25 4.5458369255065918 26 4.5458369255065918
		 27 4.5458369255065918 28 4.5458369255065918 29 4.5458369255065918 30 4.5458369255065918
		 31 4.5458369255065918 32 4.5458369255065918 33 4.5458369255065918 34 4.5458369255065918
		 35 4.5458369255065918 36 4.5458369255065918 37 4.5458369255065918 38 4.5458369255065918
		 39 4.5458369255065918 40 4.5458369255065918 41 4.5458369255065918 42 4.5458369255065918
		 43 4.5458369255065918 44 4.5458369255065918 45 4.5458369255065918 46 4.5458369255065918
		 47 4.5458369255065918 48 4.5458369255065918;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.88552039861679077 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -0.46460056304931641 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.88552039861679077 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -0.46460056304931641 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_T__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 -0.00042857520747929811 2 -0.00076190597610548139
		 3 -0.0024032089859247208 4 -1.5802800411765495e-15 5 -0.55566501617431641 6 -0.00095676060300320376
		 7 5.6008870160439983e-05 8 0.00018672749865800142 9 0.00043888110667467117 10 9.1012501798104495e-05
		 11 6.1961007304489613e-05 12 -0.001567851984873414 13 -16.111789703369141 14 -25.860130310058594
		 15 -24.572109222412109 16 -3.9677340984344478 17 -0.00015386099403258413 18 -0.00015386099403258413
		 19 -0.00042857520747929811 20 -0.00042857520747929811 21 -0.00042857520747929811
		 22 -0.00042857520747929811 23 -0.00042857520747929811 24 -0.00042857520747929811
		 25 -0.00042857520747929811 26 -0.00042857520747929811 27 -0.00042857520747929811
		 28 -0.00042857520747929811 29 -0.00042857520747929811 30 -0.00042857520747929811
		 31 -0.00042857520747929811 32 -0.00042857520747929811 33 -0.00042857520747929811
		 34 -0.00042857520747929811 35 -0.00042857520747929811 36 -0.00042857520747929811
		 37 -0.00042857520747929811 38 -0.00042857520747929811 39 -0.00042857520747929811
		 40 -0.00042857520747929811 41 -0.00042857520747929811 42 -0.00042857520747929811
		 43 -0.00042857520747929811 44 -0.00042857520747929811 45 -0.00042857520747929811
		 46 -0.00042857520747929811 47 -0.00042857520747929811 48 -0.00042857520747929811;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  0.99999982118606567 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0.00054139056010171771 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  0.99999982118606567 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0.00054139056010171771 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_T__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 3.6881971027469262e-05 2 7.9890407505445182e-05
		 3 0.00036977199488319457 4 2.1324079568785237e-07 5 0.016326209530234337 6 0.00035955538623966277
		 7 5.5319080274784938e-05 8 6.5964326495304704e-05 9 -0.00069897290086373687 10 0.00036321909283287823
		 11 1.0243639735563193e-05 12 -9.3757553258910775e-05 13 0.38101750612258911 14 0.74054569005966187
		 15 0.70252817869186401 16 0.11214330047369003 17 2.8836160709033717e-05 18 2.8836160709033717e-05
		 19 3.6881971027469262e-05 20 3.6881971027469262e-05 21 3.6881971027469262e-05 22 3.6881971027469262e-05
		 23 3.6881971027469262e-05 24 3.6881971027469262e-05 25 3.6881971027469262e-05 26 3.6881971027469262e-05
		 27 3.6881971027469262e-05 28 3.6881971027469262e-05 29 3.6881971027469262e-05 30 3.6881971027469262e-05
		 31 3.6881971027469262e-05 32 3.6881971027469262e-05 33 3.6881971027469262e-05 34 3.6881971027469262e-05
		 35 3.6881971027469262e-05 36 3.6881971027469262e-05 37 3.6881971027469262e-05 38 3.6881971027469262e-05
		 39 3.6881971027469262e-05 40 3.6881971027469262e-05 41 3.6881971027469262e-05 42 3.6881971027469262e-05
		 43 3.6881971027469262e-05 44 3.6881971027469262e-05 45 3.6881971027469262e-05 46 3.6881971027469262e-05
		 47 3.6881971027469262e-05 48 3.6881971027469262e-05;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -8.6314648797269911e-05 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -8.6314648797269911e-05 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_T__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 2.6557420369499596e-06 2 1.5499239452765323e-05
		 3 0.00013750939979217947 4 -8.4921282450522995e-07 5 -0.020256880670785904 6 0.00021452849614433944
		 7 4.4909709686180577e-05 8 6.0575090174097568e-05 9 -0.00050034961896017194 10 0.0002786447003018111
		 11 1.1337659998389427e-05 12 -0.00016237530508078635 13 -0.66147661209106445 14 -0.98317152261734009
		 15 -0.93259727954864502 16 -0.14806260168552399 17 1.2689440154645126e-05 18 1.2689440154645126e-05
		 19 2.6557420369499596e-06 20 2.6557420369499596e-06 21 2.6557420369499596e-06 22 2.6557420369499596e-06
		 23 2.6557420369499596e-06 24 2.6557420369499596e-06 25 2.6557420369499596e-06 26 2.6557420369499596e-06
		 27 2.6557420369499596e-06 28 2.6557420369499596e-06 29 2.6557420369499596e-06 30 2.6557420369499596e-06
		 31 2.6557420369499596e-06 32 2.6557420369499596e-06 33 2.6557420369499596e-06 34 2.6557420369499596e-06
		 35 2.6557420369499596e-06 36 2.6557420369499596e-06 37 2.6557420369499596e-06 38 2.6557420369499596e-06
		 39 2.6557420369499596e-06 40 2.6557420369499596e-06 41 2.6557420369499596e-06 42 2.6557420369499596e-06
		 43 2.6557420369499596e-06 44 2.6557420369499596e-06 45 2.6557420369499596e-06 46 2.6557420369499596e-06
		 47 2.6557420369499596e-06 48 2.6557420369499596e-06;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  -3.3243482903344557e-05 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  -3.3243482903344557e-05 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_T_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_T_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_T_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_K__Skeleton_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_K__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_K__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_K__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_K__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_K_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_K_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_K_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_H__Skeleton_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RT_SC_H__Skeleton_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_H__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_H__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_H__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_H_END__Skeleton_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_H_END__Skeleton_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RT_SC_H_END__Skeleton_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0;
	setAttr -s 49 ".kit[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kot[19:48]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 49 ".kix[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[19:48]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[19:48]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "BACKA__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "BACKA__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4031024134019501;
createNode animCurveTL -n "BACKA__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "BACKB__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "BACKB__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.5834131332099;
createNode animCurveTL -n "BACKB__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.77170477867126497;
createNode animCurveTL -n "LF_C__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.74;
createNode animCurveTL -n "LF_C__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.241600868033199;
createNode animCurveTL -n "LF_C__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4270516625312699;
createNode animCurveTL -n "LF_S__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.761371838378899;
createNode animCurveTL -n "LF_S__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0059184470506039597;
createNode animCurveTL -n "LF_S__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.7920350075948002;
createNode animCurveTL -n "LF_E__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 22.012205057770402;
createNode animCurveTL -n "LF_E__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.51859120943774395;
createNode animCurveTL -n "LF_E__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.076114420854897197;
createNode animCurveTL -n "LF_E_TWIST__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.307693110729399;
createNode animCurveTL -n "LF_E_TWIST__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.26640085492815002;
createNode animCurveTL -n "LF_E_TWIST__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.17230005881143001;
createNode animCurveTL -n "LF_E_TWIST_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_E_TWIST_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0890275401505001;
createNode animCurveTL -n "LF_E_TWIST_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_E__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.4807698330470593;
createNode animCurveTL -n "LF_SC_E__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.17255509921481901;
createNode animCurveTL -n "LF_SC_E__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.11160344718467601;
createNode animCurveTL -n "LF_SC_E_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.1054273576010003e-15;
createNode animCurveTL -n "LF_SC_E_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_E_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.812;
createNode animCurveTL -n "LF_W__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.961539666094101;
createNode animCurveTL -n "LF_W__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.39960128239222598;
createNode animCurveTL -n "LF_W__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.25845008821714499;
createNode animCurveTL -n "LF_FINGA__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.2126720414172407;
createNode animCurveTL -n "LF_FINGA__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.4349218225951601;
createNode animCurveTL -n "LF_FINGA__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.60599060839108;
createNode animCurveTL -n "LF_FINGA1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.98709398784646;
createNode animCurveTL -n "LF_FINGA1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_FINGA1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.032755931037806399;
createNode animCurveTL -n "LF_FINGA2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8740893962113301;
createNode animCurveTL -n "LF_FINGA2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_FINGA2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00032492552483987002;
createNode animCurveTL -n "LF_FINGA_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4794022935648901;
createNode animCurveTL -n "LF_FINGA_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.83685763068243102;
createNode animCurveTL -n "LF_FINGA_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.3572733703806103e-05;
createNode animCurveTL -n "LF_FINGB__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.3660336912968205;
createNode animCurveTL -n "LF_FINGB__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.3395879370831398;
createNode animCurveTL -n "LF_FINGB__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.94812403084279495;
createNode animCurveTL -n "LF_FINGB1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.2272427086914899;
createNode animCurveTL -n "LF_FINGB1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_FINGB1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00142548240891638;
createNode animCurveTL -n "LF_FINGB2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.98789785677097;
createNode animCurveTL -n "LF_FINGB2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_FINGB2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00073369070634843304;
createNode animCurveTL -n "LF_FINGB_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.6948345609134301;
createNode animCurveTL -n "LF_FINGB_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.81419642952452898;
createNode animCurveTL -n "LF_FINGB_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00135609796161962;
createNode animCurveTL -n "LF_FINGC__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.7934013043455899;
createNode animCurveTL -n "LF_FINGC__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.6053857062691601;
createNode animCurveTL -n "LF_FINGC__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.58236541921202;
createNode animCurveTL -n "LF_FINGC1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0527853800000102;
createNode animCurveTL -n "LF_FINGC1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_FINGC1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.030122242134440001;
createNode animCurveTL -n "LF_FINGC2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.9347756199999999;
createNode animCurveTL -n "LF_FINGC2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_FINGC2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00068471135401715301;
createNode animCurveTL -n "LF_FINGC_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.5888338821015502;
createNode animCurveTL -n "LF_FINGC_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.75933863226234199;
createNode animCurveTL -n "LF_FINGC_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00088021096823176503;
createNode animCurveTL -n "LF_FINGD__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.6743979095952701;
createNode animCurveTL -n "LF_FINGD__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.9780206610139;
createNode animCurveTL -n "LF_FINGD__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.9656566028587799;
createNode animCurveTL -n "LF_FINGD1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.4239048900000002;
createNode animCurveTL -n "LF_FINGD1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_FINGD1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.030054561156436701;
createNode animCurveTL -n "LF_FINGD2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.5155219600000001;
createNode animCurveTL -n "LF_FINGD2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_FINGD2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00027921562758059798;
createNode animCurveTL -n "LF_FINGD_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.2592293690515799;
createNode animCurveTL -n "LF_FINGD_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.70719749007862698;
createNode animCurveTL -n "LF_FINGD_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0014671030283111;
createNode animCurveTL -n "LF_PROP__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.29;
createNode animCurveTL -n "LF_PROP__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -15.725;
createNode animCurveTL -n "LF_PROP__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_PROP_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_PROP_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4210854715202001e-14;
createNode animCurveTL -n "LF_PROP_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.725;
createNode animCurveTL -n "LF_SPECIAL__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.435;
createNode animCurveTL -n "LF_SPECIAL__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.435;
createNode animCurveTL -n "LF_SPECIAL__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SPECIAL_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SPECIAL_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4210854715202001e-14;
createNode animCurveTL -n "LF_SPECIAL_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.725;
createNode animCurveTL -n "LF_THUMB__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.1054273576010003e-15;
createNode animCurveTL -n "LF_THUMB__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.2632564145605999e-14;
createNode animCurveTL -n "LF_THUMB__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.84070350744391398;
createNode animCurveTL -n "LF_THUMB1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.5606054633363504;
createNode animCurveTL -n "LF_THUMB1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.1647139001296298;
createNode animCurveTL -n "LF_THUMB1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.2070974630348097;
createNode animCurveTL -n "LF_THUMB2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.7280618080869798;
createNode animCurveTL -n "LF_THUMB2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4778379607560601;
createNode animCurveTL -n "LF_THUMB2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.65830534733944;
createNode animCurveTL -n "LF_THUMB_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8623586254119902;
createNode animCurveTL -n "LF_THUMB_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.26766856193542;
createNode animCurveTL -n "LF_THUMB_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.81854472446441695;
createNode animCurveTL -n "LF_SC_S__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.006102528885201;
createNode animCurveTL -n "LF_SC_S__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.18981060913631601;
createNode animCurveTL -n "LF_SC_S__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.027858791903144099;
createNode animCurveTL -n "LF_SC_S_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.5527136788005001e-15;
createNode animCurveTL -n "LF_SC_S_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_S_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.218;
createNode animCurveTL -n "LF_SC_TWIST_S__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.44024410115540702;
createNode animCurveTL -n "LF_SC_TWIST_S__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_TWIST_S__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_TWIST_S_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_TWIST_S_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.8340388048368199;
createNode animCurveTL -n "LF_SC_TWIST_S_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "NECK__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "NECK__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.377577463785801;
createNode animCurveTL -n "NECK__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8822144254048701;
createNode animCurveTL -n "HEAD__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "HEAD__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.0578690748148;
createNode animCurveTL -n "HEAD__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.94150788259506;
createNode animCurveTL -n "HEAD_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.2851252231115801e-16;
createNode animCurveTL -n "HEAD_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 29.740751998590198;
createNode animCurveTL -n "HEAD_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5929744606018099;
createNode animCurveTL -n "SC_NECK__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_NECK__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.35262302493825;
createNode animCurveTL -n "SC_NECK__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.64716929419835401;
createNode animCurveTL -n "SC_NECK_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_NECK_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_NECK_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.403;
createNode animCurveTL -n "RT_C__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.74;
createNode animCurveTL -n "RT_C__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.241600868033199;
createNode animCurveTL -n "RT_C__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4270516625312699;
createNode animCurveTL -n "RT_S__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.761371838378899;
createNode animCurveTL -n "RT_S__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0059184470506039597;
createNode animCurveTL -n "RT_S__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.7920350075948002;
createNode animCurveTL -n "RT_E__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.012205057770402;
createNode animCurveTL -n "RT_E__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.51859120943774395;
createNode animCurveTL -n "RT_E__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.076114420854897197;
createNode animCurveTL -n "RT_E_TWIST__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.307693110729399;
createNode animCurveTL -n "RT_E_TWIST__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.26640085492815002;
createNode animCurveTL -n "RT_E_TWIST__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.17230005881143001;
createNode animCurveTL -n "RT_E_TWIST_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_E_TWIST_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0890275401505001;
createNode animCurveTL -n "RT_E_TWIST_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_E__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.4807698330470593;
createNode animCurveTL -n "RT_SC_E__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.17255509921481901;
createNode animCurveTL -n "RT_SC_E__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.11160344718467601;
createNode animCurveTL -n "RT_SC_E_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.1054273576010003e-15;
createNode animCurveTL -n "RT_SC_E_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_E_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.812;
createNode animCurveTL -n "RT_W__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -16.961539666094101;
createNode animCurveTL -n "RT_W__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.39960128239222598;
createNode animCurveTL -n "RT_W__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.25845008821714499;
createNode animCurveTL -n "RT_FINGA__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.2126720414172407;
createNode animCurveTL -n "RT_FINGA__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.4349218225951601;
createNode animCurveTL -n "RT_FINGA__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.60599060839108;
createNode animCurveTL -n "RT_FINGA1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.98709398784646;
createNode animCurveTL -n "RT_FINGA1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_FINGA1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.032755931037806399;
createNode animCurveTL -n "RT_FINGA2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.8740893962113301;
createNode animCurveTL -n "RT_FINGA2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_FINGA2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00032492552483987002;
createNode animCurveTL -n "RT_FINGA_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.4794022935648901;
createNode animCurveTL -n "RT_FINGA_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.83685763068243102;
createNode animCurveTL -n "RT_FINGA_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.3572733703806103e-05;
createNode animCurveTL -n "RT_FINGB__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.3660336912968205;
createNode animCurveTL -n "RT_FINGB__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.3395879370831398;
createNode animCurveTL -n "RT_FINGB__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.94812403084279495;
createNode animCurveTL -n "RT_FINGB1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.2272427086914899;
createNode animCurveTL -n "RT_FINGB1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_FINGB1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00142548240891638;
createNode animCurveTL -n "RT_FINGB2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.98789785677097;
createNode animCurveTL -n "RT_FINGB2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_FINGB2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00073369070634843304;
createNode animCurveTL -n "RT_FINGB_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.6948345609134301;
createNode animCurveTL -n "RT_FINGB_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.81419642952452898;
createNode animCurveTL -n "RT_FINGB_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00135609796161962;
createNode animCurveTL -n "RT_FINGC__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.7934013043455899;
createNode animCurveTL -n "RT_FINGC__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.6053857062691601;
createNode animCurveTL -n "RT_FINGC__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.58236541921202;
createNode animCurveTL -n "RT_FINGC1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.0527853800000102;
createNode animCurveTL -n "RT_FINGC1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_FINGC1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.030122242134440001;
createNode animCurveTL -n "RT_FINGC2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.9347756199999999;
createNode animCurveTL -n "RT_FINGC2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_FINGC2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00068471135401715301;
createNode animCurveTL -n "RT_FINGC_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5888338821015502;
createNode animCurveTL -n "RT_FINGC_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.75933863226234199;
createNode animCurveTL -n "RT_FINGC_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00088021096823176503;
createNode animCurveTL -n "RT_FINGD__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.6743979095952701;
createNode animCurveTL -n "RT_FINGD__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.9780206610139;
createNode animCurveTL -n "RT_FINGD__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.9656566028587799;
createNode animCurveTL -n "RT_FINGD1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.4239048900000002;
createNode animCurveTL -n "RT_FINGD1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_FINGD1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.030054561156436701;
createNode animCurveTL -n "RT_FINGD2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5155219600000001;
createNode animCurveTL -n "RT_FINGD2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_FINGD2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00027921562758059798;
createNode animCurveTL -n "RT_FINGD_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.2592293690515799;
createNode animCurveTL -n "RT_FINGD_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.70719749007862698;
createNode animCurveTL -n "RT_FINGD_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0014671030283111;
createNode animCurveTL -n "RT_PROP__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.29;
createNode animCurveTL -n "RT_PROP__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -15.725;
createNode animCurveTL -n "RT_PROP__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_PROP_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_PROP_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4210854715202001e-14;
createNode animCurveTL -n "RT_PROP_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.725;
createNode animCurveTL -n "RT_SPECIAL__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.435;
createNode animCurveTL -n "RT_SPECIAL__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.435;
createNode animCurveTL -n "RT_SPECIAL__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SPECIAL_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SPECIAL_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4210854715202001e-14;
createNode animCurveTL -n "RT_SPECIAL_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.725;
createNode animCurveTL -n "RT_THUMB__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_THUMB__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.2632564145605999e-14;
createNode animCurveTL -n "RT_THUMB__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.84070350744390998;
createNode animCurveTL -n "RT_THUMB1__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.5606054633363202;
createNode animCurveTL -n "RT_THUMB1__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.1647139001296298;
createNode animCurveTL -n "RT_THUMB1__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.2070974630348399;
createNode animCurveTL -n "RT_THUMB2__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.7280618080869901;
createNode animCurveTL -n "RT_THUMB2__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4778379607560099;
createNode animCurveTL -n "RT_THUMB2__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6583053473395;
createNode animCurveTL -n "RT_THUMB_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.8623586254119902;
createNode animCurveTL -n "RT_THUMB_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.26766856193542;
createNode animCurveTL -n "RT_THUMB_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.81854472446441695;
createNode animCurveTL -n "RT_SC_S__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.006102528885201;
createNode animCurveTL -n "RT_SC_S__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.18981060913631601;
createNode animCurveTL -n "RT_SC_S__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.027858791903144099;
createNode animCurveTL -n "RT_SC_S_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.5527136788005001e-15;
createNode animCurveTL -n "RT_SC_S_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_S_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.218;
createNode animCurveTL -n "RT_SC_TWIST_S__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.44024410115540702;
createNode animCurveTL -n "RT_SC_TWIST_S__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_TWIST_S__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_TWIST_S_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_TWIST_S_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.8340388048368199;
createNode animCurveTL -n "RT_SC_TWIST_S_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BACKB__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BACKB__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.3443943659464397;
createNode animCurveTL -n "SC_BACKB__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.47055360635121701;
createNode animCurveTL -n "SC_BACKB_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BACKB_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BACKB_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.62;
createNode animCurveTL -n "SC_BACKA__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BACKA__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.1202071465386298;
createNode animCurveTL -n "SC_BACKA__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.51446985244750998;
createNode animCurveTL -n "SC_BACKA_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BACKA_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BACKA_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.62;
createNode animCurveTL -n "LF_H__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.0058;
createNode animCurveTL -n "LF_H__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -10.7266327681478;
createNode animCurveTL -n "LF_H__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.86645359444618997;
createNode animCurveTL -n "LF_K__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_K__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -28.890436758153399;
createNode animCurveTL -n "LF_K__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3967700677166399;
createNode animCurveTL -n "LF_A__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.62354672229869801;
createNode animCurveTL -n "LF_A__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -27.9170813997872;
createNode animCurveTL -n "LF_A__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.7281269844206402;
createNode animCurveTL -n "LF_T__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.66829345440864596;
createNode animCurveTL -n "LF_T__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.5874186061520206;
createNode animCurveTL -n "LF_T__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.4114906785786;
createNode animCurveTL -n "LF_T_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_T_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.29692188678813;
createNode animCurveTL -n "LF_T_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.1648788414001503;
createNode animCurveTL -n "LF_SC_K__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27551054763317101;
createNode animCurveTL -n "LF_SC_K__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -13.7149588170755;
createNode animCurveTL -n "LF_SC_K__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.20540728162229;
createNode animCurveTL -n "LF_SC_K_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_K_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_K_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.624;
createNode animCurveTL -n "LF_SC_H__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_H__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -14.445218379076699;
createNode animCurveTL -n "LF_SC_H__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.64963668827216203;
createNode animCurveTL -n "LF_SC_H_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_H_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "LF_SC_H_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.92;
createNode animCurveTL -n "RT_H__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.0058;
createNode animCurveTL -n "RT_H__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -10.7266327681478;
createNode animCurveTL -n "RT_H__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.86645359444618997;
createNode animCurveTL -n "RT_K__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_K__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -28.890436758153399;
createNode animCurveTL -n "RT_K__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3967700677166399;
createNode animCurveTL -n "RT_A__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.62354672229869801;
createNode animCurveTL -n "RT_A__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -27.9170813997872;
createNode animCurveTL -n "RT_A__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.7281269844206402;
createNode animCurveTL -n "RT_T__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.66829345440864596;
createNode animCurveTL -n "RT_T__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.5874186061520206;
createNode animCurveTL -n "RT_T__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.4114906785786;
createNode animCurveTL -n "RT_T_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_T_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.29692188678813;
createNode animCurveTL -n "RT_T_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.1648788414001503;
createNode animCurveTL -n "RT_SC_K__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.27551054763317101;
createNode animCurveTL -n "RT_SC_K__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -13.7149588170755;
createNode animCurveTL -n "RT_SC_K__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.20540728162229;
createNode animCurveTL -n "RT_SC_K_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_K_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_K_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.624;
createNode animCurveTL -n "RT_SC_H__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_H__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -14.445218379076699;
createNode animCurveTL -n "RT_SC_H__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.64963668827216203;
createNode animCurveTL -n "RT_SC_H_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_H_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "RT_SC_H_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.92;
createNode animCurveTL -n "SC_BASE__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BASE__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.0601035732692998;
createNode animCurveTL -n "SC_BASE__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BASE_END__Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BASE_END__Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "SC_BASE_END__Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.62;
createNode animCurveTU -n "BASE__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "BASE__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "BASE__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "BASE__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "BASE__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "BASE__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "BACKA__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "BACKA__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "BACKA__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "BACKA__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "BACKA__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "BACKA__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "BACKB__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "BACKB__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "BACKB__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "BACKB__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "BACKB__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "BACKB__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "SC_BACKB__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "SC_BACKB__Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BACKB__Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BACKB__Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "SC_BACKB__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BACKB__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "SC_BACKB__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "SC_BACKB_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "SC_BACKB_END__Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BACKB_END__Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BACKB_END__Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "SC_BACKB_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BACKB_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BACKB_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BACKB_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "SC_BACKB_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "NECK__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "NECK__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "NECK__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "NECK__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "NECK__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "NECK__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "SC_NECK__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "SC_NECK__Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_NECK__Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_NECK__Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "SC_NECK__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_NECK__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "SC_NECK__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "SC_NECK_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "SC_NECK_END__Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_NECK_END__Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_NECK_END__Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "SC_NECK_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_NECK_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_NECK_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_NECK_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "SC_NECK_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "HEAD__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "HEAD__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "HEAD__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "HEAD_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "HEAD_END__Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "HEAD_END__Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "HEAD_END__Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "HEAD_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "HEAD_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "HEAD_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "HEAD_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "HEAD_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_C__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_C__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_C__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_C__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_C__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_C__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_S__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_S__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_S__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_S__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_S__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_S__Skeleton_ArmBackOrFwdSkinAdjust";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "LF_S__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_E__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_E__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_E__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_E__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_E__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_E__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_W__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_W__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_W__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_W__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_W__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_W__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGD__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGD__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGD__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGD1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGD1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGD1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGD2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGD2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGD2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGD_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGD_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGD_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGD_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGC__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGC__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGC__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGC1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGC1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGC1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGC2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGC2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGC2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGC_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGC_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGC_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGC_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGB__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGB__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGB__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGB1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGB1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGB1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGB2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGB2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGB2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGB_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGB_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGB_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGB_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGA__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGA__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGA__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGA1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGA1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGA1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGA2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGA2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGA2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_FINGA_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGA_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_FINGA_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_FINGA_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_THUMB__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_THUMB__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_THUMB__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_THUMB1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_THUMB1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_THUMB1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_THUMB2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_THUMB2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_THUMB2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_THUMB_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_THUMB_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_THUMB_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_THUMB_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_PROP__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_PROP__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_PROP__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_PROP__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_PROP__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_PROP__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_PROP_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_PROP_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_PROP_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_PROP_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_PROP_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_PROP_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SPECIAL__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SPECIAL__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SPECIAL__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SPECIAL__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SPECIAL__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SPECIAL__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SPECIAL_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SPECIAL_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SPECIAL_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SPECIAL_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SPECIAL_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SPECIAL_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_E_TWIST__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_E_TWIST__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_E_TWIST__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_E_TWIST__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_E_TWIST__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_E_TWIST__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_E_TWIST_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_E_TWIST_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_E_TWIST_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_E_TWIST_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_E_TWIST_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_E_TWIST_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_E__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_E__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_E__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_E__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_E_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_E_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_E_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_E_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_E_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_E_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_S__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_S__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_S__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_S__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_S_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_S_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_S_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_S_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_S_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_S_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_TWIST_S__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_TWIST_S__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_TWIST_S__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_TWIST_S__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_TWIST_S_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_TWIST_S_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_TWIST_S_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_TWIST_S_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_TWIST_S_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_TWIST_S_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_C__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_C__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_C__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_C__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_C__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_C__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_S__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_S__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_S__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_S__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_S__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_S__Skeleton_ArmBackOrFwdSkinAdjust";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RT_S__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_E__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_E__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_E__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_E__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_E__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_E__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_W__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_W__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_W__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_W__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_W__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_W__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGD__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGD__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGD__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGD1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGD1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGD1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGD2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGD2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGD2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGD_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGD_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGD_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGD_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGC__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGC__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGC__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGC1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGC1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGC1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGC2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGC2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGC2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGC_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGC_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGC_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGC_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGB__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGB__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGB__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGB1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGB1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGB1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGB2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGB2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGB2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGB_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGB_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGB_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGB_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGA__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGA__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGA__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGA1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGA1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGA1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGA2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGA2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGA2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_FINGA_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGA_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_FINGA_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_FINGA_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_THUMB__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_THUMB__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_THUMB__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_THUMB1__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_THUMB1__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB1__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB1__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB1__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_THUMB1__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_THUMB2__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_THUMB2__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB2__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB2__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB2__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_THUMB2__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_THUMB_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_THUMB_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_THUMB_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_THUMB_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_PROP__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_PROP__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_PROP__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_PROP__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_PROP__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_PROP__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_PROP_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_PROP_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_PROP_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_PROP_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_PROP_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_PROP_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SPECIAL__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SPECIAL__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SPECIAL__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SPECIAL__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SPECIAL__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SPECIAL__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SPECIAL_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SPECIAL_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SPECIAL_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SPECIAL_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SPECIAL_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SPECIAL_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_E_TWIST__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_E_TWIST__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_E_TWIST__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_E_TWIST__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_E_TWIST__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_E_TWIST__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_E_TWIST_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_E_TWIST_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_E_TWIST_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_E_TWIST_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_E_TWIST_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_E_TWIST_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_E__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_E__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_E__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_E__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_E_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_E_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_E_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_E_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_E_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_E_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_S__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_S__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_S__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_S__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_S_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_S_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_S_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_S_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_S_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_S_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_TWIST_S__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_TWIST_S__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_TWIST_S__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_TWIST_S__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_TWIST_S_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_TWIST_S_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_TWIST_S_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_TWIST_S_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_TWIST_S_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_TWIST_S_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "SC_BACKA__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "SC_BACKA__Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BACKA__Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BACKA__Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "SC_BACKA__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BACKA__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "SC_BACKA__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "SC_BACKA_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "SC_BACKA_END__Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BACKA_END__Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BACKA_END__Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "SC_BACKA_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BACKA_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BACKA_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BACKA_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "SC_BACKA_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "SC_BASE__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "SC_BASE__Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BASE__Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BASE__Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "SC_BASE__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "SC_BASE__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "SC_BASE_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "SC_BASE_END__Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BASE_END__Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "SC_BASE_END__Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "SC_BASE_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BASE_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BASE_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "SC_BASE_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "SC_BASE_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_H__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_H__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_H__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_H__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_H__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_H__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_K__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_K__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_K__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_K__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_K__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_K__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_A__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_A__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_A__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_A__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_A__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_A__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_T__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_T__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_T__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_T__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_T__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_T__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_T_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_T_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_T_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_T_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_T_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_T_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_K__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_K__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_K__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_K__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_K_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_K_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_K_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_K_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_K_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_K_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_H__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_H__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_H__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_H__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "LF_SC_H_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_H_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_H_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_H_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "LF_SC_H_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "LF_SC_H_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_H__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_H__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_H__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_H__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_H__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_H__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_K__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_K__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_K__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_K__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_K__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_K__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_A__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_A__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_A__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_A__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_A__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_A__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_T__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_T__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_T__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_T__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_T__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_T__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_T_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_T_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_T_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_T_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_T_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_T_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_K__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_K__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_K__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_K__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_K_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_K_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_K_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_K_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_K_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_K_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_H__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_H__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_H__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_H__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "RT_SC_H_END__Skeleton_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_H_END__Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_H_END__Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_H_END__Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RT_SC_H_END__Skeleton_lockInfluenceWeights";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "RT_SC_H_END__Skeleton_filmboxTypeID";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 934 ".hyp";
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
	setAttr ".hyp[334].nvs" 1920;
	setAttr ".hyp[335].nvs" 1920;
	setAttr ".hyp[336].nvs" 1920;
	setAttr ".hyp[337].nvs" 1920;
	setAttr ".hyp[338].nvs" 1920;
	setAttr ".hyp[339].nvs" 1920;
	setAttr ".hyp[340].nvs" 1920;
	setAttr ".hyp[341].nvs" 1920;
	setAttr ".hyp[342].nvs" 1920;
	setAttr ".hyp[343].nvs" 1920;
	setAttr ".hyp[344].nvs" 1920;
	setAttr ".hyp[345].nvs" 1920;
	setAttr ".hyp[346].nvs" 1920;
	setAttr ".hyp[347].nvs" 1920;
	setAttr ".hyp[348].nvs" 1920;
	setAttr ".hyp[349].nvs" 1920;
	setAttr ".hyp[350].nvs" 1920;
	setAttr ".hyp[351].nvs" 1920;
	setAttr ".hyp[352].nvs" 1920;
	setAttr ".hyp[353].nvs" 1920;
	setAttr ".hyp[354].nvs" 1920;
	setAttr ".hyp[355].nvs" 1920;
	setAttr ".hyp[356].nvs" 1920;
	setAttr ".hyp[357].nvs" 1920;
	setAttr ".hyp[358].nvs" 1920;
	setAttr ".hyp[359].nvs" 1920;
	setAttr ".hyp[360].nvs" 1920;
	setAttr ".hyp[361].nvs" 1920;
	setAttr ".hyp[362].nvs" 1920;
	setAttr ".hyp[363].nvs" 1920;
	setAttr ".hyp[364].nvs" 1920;
	setAttr ".hyp[365].nvs" 1920;
	setAttr ".hyp[366].nvs" 1920;
	setAttr ".hyp[367].nvs" 1920;
	setAttr ".hyp[368].nvs" 1920;
	setAttr ".hyp[369].nvs" 1920;
	setAttr ".hyp[370].nvs" 1920;
	setAttr ".hyp[371].nvs" 1920;
	setAttr ".hyp[372].nvs" 1920;
	setAttr ".hyp[373].nvs" 1920;
	setAttr ".hyp[374].nvs" 1920;
	setAttr ".hyp[375].nvs" 1920;
	setAttr ".hyp[376].nvs" 1920;
	setAttr ".hyp[377].nvs" 1920;
	setAttr ".hyp[378].nvs" 1920;
	setAttr ".hyp[379].nvs" 1920;
	setAttr ".hyp[380].nvs" 1920;
	setAttr ".hyp[381].nvs" 1920;
	setAttr ".hyp[382].nvs" 1920;
	setAttr ".hyp[383].nvs" 1920;
	setAttr ".hyp[384].nvs" 1920;
	setAttr ".hyp[385].nvs" 1920;
	setAttr ".hyp[386].nvs" 1920;
	setAttr ".hyp[387].nvs" 1920;
	setAttr ".hyp[388].nvs" 1920;
	setAttr ".hyp[389].nvs" 1920;
	setAttr ".hyp[390].nvs" 1920;
	setAttr ".hyp[391].nvs" 1920;
	setAttr ".hyp[392].nvs" 1920;
	setAttr ".hyp[393].nvs" 1920;
	setAttr ".hyp[394].nvs" 1920;
	setAttr ".hyp[395].nvs" 1920;
	setAttr ".hyp[396].nvs" 1920;
	setAttr ".hyp[397].nvs" 1920;
	setAttr ".hyp[398].nvs" 1920;
	setAttr ".hyp[399].nvs" 1920;
	setAttr ".hyp[400].nvs" 1920;
	setAttr ".hyp[401].nvs" 1920;
	setAttr ".hyp[402].nvs" 1920;
	setAttr ".hyp[403].nvs" 1920;
	setAttr ".hyp[404].nvs" 1920;
	setAttr ".hyp[405].nvs" 1920;
	setAttr ".hyp[406].nvs" 1920;
	setAttr ".hyp[407].nvs" 1920;
	setAttr ".hyp[408].nvs" 1920;
	setAttr ".hyp[409].nvs" 1920;
	setAttr ".hyp[410].nvs" 1920;
	setAttr ".hyp[411].nvs" 1920;
	setAttr ".hyp[412].nvs" 1920;
	setAttr ".hyp[413].nvs" 1920;
	setAttr ".hyp[414].nvs" 1920;
	setAttr ".hyp[415].nvs" 1920;
	setAttr ".hyp[416].nvs" 1920;
	setAttr ".hyp[417].nvs" 1920;
	setAttr ".hyp[418].nvs" 1920;
	setAttr ".hyp[419].nvs" 1920;
	setAttr ".hyp[420].nvs" 1920;
	setAttr ".hyp[421].nvs" 1920;
	setAttr ".hyp[422].nvs" 1920;
	setAttr ".hyp[423].nvs" 1920;
	setAttr ".hyp[424].nvs" 1920;
	setAttr ".hyp[425].nvs" 1920;
	setAttr ".hyp[426].nvs" 1920;
	setAttr ".hyp[427].nvs" 1920;
	setAttr ".hyp[428].nvs" 1920;
	setAttr ".hyp[429].nvs" 1920;
	setAttr ".hyp[430].nvs" 1920;
	setAttr ".hyp[431].nvs" 1920;
	setAttr ".hyp[432].nvs" 1920;
	setAttr ".hyp[433].nvs" 1920;
	setAttr ".hyp[434].nvs" 1920;
	setAttr ".hyp[435].nvs" 1920;
	setAttr ".hyp[436].nvs" 1920;
	setAttr ".hyp[437].nvs" 1920;
	setAttr ".hyp[438].nvs" 1920;
	setAttr ".hyp[439].nvs" 1920;
	setAttr ".hyp[440].nvs" 1920;
	setAttr ".hyp[441].nvs" 1920;
	setAttr ".hyp[442].nvs" 1920;
	setAttr ".hyp[443].nvs" 1920;
	setAttr ".hyp[444].nvs" 1920;
	setAttr ".hyp[445].nvs" 1920;
	setAttr ".hyp[446].nvs" 1920;
	setAttr ".hyp[447].nvs" 1920;
	setAttr ".hyp[448].nvs" 1920;
	setAttr ".hyp[449].nvs" 1920;
	setAttr ".hyp[450].nvs" 1920;
	setAttr ".hyp[451].nvs" 1920;
	setAttr ".hyp[452].nvs" 1920;
	setAttr ".hyp[453].nvs" 1920;
	setAttr ".hyp[454].nvs" 1920;
	setAttr ".hyp[455].nvs" 1920;
	setAttr ".hyp[456].nvs" 1920;
	setAttr ".hyp[457].nvs" 1920;
	setAttr ".hyp[458].nvs" 1920;
	setAttr ".hyp[459].nvs" 1920;
	setAttr ".hyp[460].nvs" 1920;
	setAttr ".hyp[461].nvs" 1920;
	setAttr ".hyp[462].nvs" 1920;
	setAttr ".hyp[463].nvs" 1920;
	setAttr ".hyp[464].nvs" 1920;
	setAttr ".hyp[465].nvs" 1920;
	setAttr ".hyp[466].nvs" 1920;
	setAttr ".hyp[467].nvs" 1920;
	setAttr ".hyp[468].nvs" 1920;
	setAttr ".hyp[469].nvs" 1920;
	setAttr ".hyp[470].nvs" 1920;
	setAttr ".hyp[471].nvs" 1920;
	setAttr ".hyp[472].nvs" 1920;
	setAttr ".hyp[473].nvs" 1920;
	setAttr ".hyp[474].nvs" 1920;
	setAttr ".hyp[475].nvs" 1920;
	setAttr ".hyp[476].nvs" 1920;
	setAttr ".hyp[477].nvs" 1920;
	setAttr ".hyp[478].nvs" 1920;
	setAttr ".hyp[479].nvs" 1920;
	setAttr ".hyp[480].nvs" 1920;
	setAttr ".hyp[481].nvs" 1920;
	setAttr ".hyp[482].nvs" 1920;
	setAttr ".hyp[483].nvs" 1920;
	setAttr ".hyp[484].nvs" 1920;
	setAttr ".hyp[485].nvs" 1920;
	setAttr ".hyp[486].nvs" 1920;
	setAttr ".hyp[487].nvs" 1920;
	setAttr ".hyp[488].nvs" 1920;
	setAttr ".hyp[489].nvs" 1920;
	setAttr ".hyp[490].nvs" 1920;
	setAttr ".hyp[491].nvs" 1920;
	setAttr ".hyp[492].nvs" 1920;
	setAttr ".hyp[493].nvs" 1920;
	setAttr ".hyp[494].nvs" 1920;
	setAttr ".hyp[495].nvs" 1920;
	setAttr ".hyp[496].nvs" 1920;
	setAttr ".hyp[497].nvs" 1920;
	setAttr ".hyp[498].nvs" 1920;
	setAttr ".hyp[499].nvs" 1920;
	setAttr ".hyp[500].nvs" 1920;
	setAttr ".hyp[501].nvs" 1920;
	setAttr ".hyp[502].nvs" 1920;
	setAttr ".hyp[503].nvs" 1920;
	setAttr ".hyp[504].nvs" 1920;
	setAttr ".hyp[505].nvs" 1920;
	setAttr ".hyp[506].nvs" 1920;
	setAttr ".hyp[507].nvs" 1920;
	setAttr ".hyp[508].nvs" 1920;
	setAttr ".hyp[509].nvs" 1920;
	setAttr ".hyp[510].nvs" 1920;
	setAttr ".hyp[511].nvs" 1920;
	setAttr ".hyp[512].nvs" 1920;
	setAttr ".hyp[513].nvs" 1920;
	setAttr ".hyp[514].nvs" 1920;
	setAttr ".hyp[515].nvs" 1920;
	setAttr ".hyp[516].nvs" 1920;
	setAttr ".hyp[517].nvs" 1920;
	setAttr ".hyp[518].nvs" 1920;
	setAttr ".hyp[519].nvs" 1920;
	setAttr ".hyp[520].nvs" 1920;
	setAttr ".hyp[521].nvs" 1920;
	setAttr ".hyp[522].nvs" 1920;
	setAttr ".hyp[523].nvs" 1920;
	setAttr ".hyp[524].nvs" 1920;
	setAttr ".hyp[525].nvs" 1920;
	setAttr ".hyp[526].nvs" 1920;
	setAttr ".hyp[527].nvs" 1920;
	setAttr ".hyp[528].nvs" 1920;
	setAttr ".hyp[529].nvs" 1920;
	setAttr ".hyp[530].nvs" 1920;
	setAttr ".hyp[531].nvs" 1920;
	setAttr ".hyp[532].nvs" 1920;
	setAttr ".hyp[533].nvs" 1920;
	setAttr ".hyp[534].nvs" 1920;
	setAttr ".hyp[535].nvs" 1920;
	setAttr ".hyp[536].nvs" 1920;
	setAttr ".hyp[537].nvs" 1920;
	setAttr ".hyp[538].nvs" 1920;
	setAttr ".hyp[539].nvs" 1920;
	setAttr ".hyp[540].nvs" 1920;
	setAttr ".hyp[541].nvs" 1920;
	setAttr ".hyp[542].nvs" 1920;
	setAttr ".hyp[543].nvs" 1920;
	setAttr ".hyp[544].nvs" 1920;
	setAttr ".hyp[545].nvs" 1920;
	setAttr ".hyp[546].nvs" 1920;
	setAttr ".hyp[547].nvs" 1920;
	setAttr ".hyp[548].nvs" 1920;
	setAttr ".hyp[549].nvs" 1920;
	setAttr ".hyp[550].nvs" 1920;
	setAttr ".hyp[551].nvs" 1920;
	setAttr ".hyp[552].nvs" 1920;
	setAttr ".hyp[553].nvs" 1920;
	setAttr ".hyp[554].nvs" 1920;
	setAttr ".hyp[555].nvs" 1920;
	setAttr ".hyp[556].nvs" 1920;
	setAttr ".hyp[557].nvs" 1920;
	setAttr ".hyp[558].nvs" 1920;
	setAttr ".hyp[559].nvs" 1920;
	setAttr ".hyp[560].nvs" 1920;
	setAttr ".hyp[561].nvs" 1920;
	setAttr ".hyp[562].nvs" 1920;
	setAttr ".hyp[563].nvs" 1920;
	setAttr ".hyp[564].nvs" 1920;
	setAttr ".hyp[565].nvs" 1920;
	setAttr ".hyp[566].nvs" 1920;
	setAttr ".hyp[567].nvs" 1920;
	setAttr ".hyp[568].nvs" 1920;
	setAttr ".hyp[569].nvs" 1920;
	setAttr ".hyp[570].nvs" 1920;
	setAttr ".hyp[571].nvs" 1920;
	setAttr ".hyp[572].nvs" 1920;
	setAttr ".hyp[573].nvs" 1920;
	setAttr ".hyp[574].nvs" 1920;
	setAttr ".hyp[575].nvs" 1920;
	setAttr ".hyp[576].nvs" 1920;
	setAttr ".hyp[577].nvs" 1920;
	setAttr ".hyp[578].nvs" 1920;
	setAttr ".hyp[579].nvs" 1920;
	setAttr ".hyp[580].nvs" 1920;
	setAttr ".hyp[581].nvs" 1920;
	setAttr ".hyp[582].nvs" 1920;
	setAttr ".hyp[583].nvs" 1920;
	setAttr ".hyp[584].nvs" 1920;
	setAttr ".hyp[585].nvs" 1920;
	setAttr ".hyp[586].nvs" 1920;
	setAttr ".hyp[587].nvs" 1920;
	setAttr ".hyp[588].nvs" 1920;
	setAttr ".hyp[589].nvs" 1920;
	setAttr ".hyp[590].nvs" 1920;
	setAttr ".hyp[591].nvs" 1920;
	setAttr ".hyp[592].nvs" 1920;
	setAttr ".hyp[593].nvs" 1920;
	setAttr ".hyp[594].nvs" 1920;
	setAttr ".hyp[595].nvs" 1920;
	setAttr ".hyp[596].nvs" 1920;
	setAttr ".hyp[597].nvs" 1920;
	setAttr ".hyp[598].nvs" 1920;
	setAttr ".hyp[599].nvs" 1920;
	setAttr ".hyp[600].nvs" 1920;
	setAttr ".hyp[601].nvs" 1920;
	setAttr ".hyp[602].nvs" 1920;
	setAttr ".hyp[603].nvs" 1920;
	setAttr ".hyp[604].nvs" 1920;
	setAttr ".hyp[605].nvs" 1920;
	setAttr ".hyp[606].nvs" 1920;
	setAttr ".hyp[607].nvs" 1920;
	setAttr ".hyp[608].nvs" 1920;
	setAttr ".hyp[609].nvs" 1920;
	setAttr ".hyp[610].nvs" 1920;
	setAttr ".hyp[611].nvs" 1920;
	setAttr ".hyp[612].nvs" 1920;
	setAttr ".hyp[613].nvs" 1920;
	setAttr ".hyp[614].nvs" 1920;
	setAttr ".hyp[615].nvs" 1920;
	setAttr ".hyp[616].nvs" 1920;
	setAttr ".hyp[617].nvs" 1920;
	setAttr ".hyp[618].nvs" 1920;
	setAttr ".hyp[619].nvs" 1920;
	setAttr ".hyp[620].nvs" 1920;
	setAttr ".hyp[621].nvs" 1920;
	setAttr ".hyp[622].nvs" 1920;
	setAttr ".hyp[623].nvs" 1920;
	setAttr ".hyp[624].nvs" 1920;
	setAttr ".hyp[625].nvs" 1920;
	setAttr ".hyp[626].nvs" 1920;
	setAttr ".hyp[627].nvs" 1920;
	setAttr ".hyp[628].nvs" 1920;
	setAttr ".hyp[629].nvs" 1920;
	setAttr ".hyp[630].nvs" 1920;
	setAttr ".hyp[631].nvs" 1920;
	setAttr ".hyp[632].nvs" 1920;
	setAttr ".hyp[633].nvs" 1920;
	setAttr ".hyp[634].nvs" 1920;
	setAttr ".hyp[635].nvs" 1920;
	setAttr ".hyp[636].nvs" 1920;
	setAttr ".hyp[637].nvs" 1920;
	setAttr ".hyp[638].nvs" 1920;
	setAttr ".hyp[639].nvs" 1920;
	setAttr ".hyp[640].nvs" 1920;
	setAttr ".hyp[641].nvs" 1920;
	setAttr ".hyp[642].nvs" 1920;
	setAttr ".hyp[643].nvs" 1920;
	setAttr ".hyp[644].nvs" 1920;
	setAttr ".hyp[645].nvs" 1920;
	setAttr ".hyp[646].nvs" 1920;
	setAttr ".hyp[647].nvs" 1920;
	setAttr ".hyp[648].nvs" 1920;
	setAttr ".hyp[649].nvs" 1920;
	setAttr ".hyp[650].nvs" 1920;
	setAttr ".hyp[651].nvs" 1920;
	setAttr ".hyp[652].nvs" 1920;
	setAttr ".hyp[653].nvs" 1920;
	setAttr ".hyp[654].nvs" 1920;
	setAttr ".hyp[655].nvs" 1920;
	setAttr ".hyp[656].nvs" 1920;
	setAttr ".hyp[657].nvs" 1920;
	setAttr ".hyp[658].nvs" 1920;
	setAttr ".hyp[659].nvs" 1920;
	setAttr ".hyp[660].nvs" 1920;
	setAttr ".hyp[661].nvs" 1920;
	setAttr ".hyp[662].nvs" 1920;
	setAttr ".hyp[663].nvs" 1920;
	setAttr ".hyp[664].nvs" 1920;
	setAttr ".hyp[665].nvs" 1920;
	setAttr ".hyp[666].nvs" 1920;
	setAttr ".hyp[667].nvs" 1920;
	setAttr ".hyp[668].nvs" 1920;
	setAttr ".hyp[669].nvs" 1920;
	setAttr ".hyp[670].nvs" 1920;
	setAttr ".hyp[671].nvs" 1920;
	setAttr ".hyp[672].nvs" 1920;
	setAttr ".hyp[673].nvs" 1920;
	setAttr ".hyp[674].nvs" 1920;
	setAttr ".hyp[675].nvs" 1920;
	setAttr ".hyp[676].nvs" 1920;
	setAttr ".hyp[677].nvs" 1920;
	setAttr ".hyp[678].nvs" 1920;
	setAttr ".hyp[679].nvs" 1920;
	setAttr ".hyp[680].nvs" 1920;
	setAttr ".hyp[681].nvs" 1920;
	setAttr ".hyp[682].nvs" 1920;
	setAttr ".hyp[683].nvs" 1920;
	setAttr ".hyp[684].nvs" 1920;
	setAttr ".hyp[685].nvs" 1920;
	setAttr ".hyp[686].nvs" 1920;
	setAttr ".hyp[687].nvs" 1920;
	setAttr ".hyp[688].nvs" 1920;
	setAttr ".hyp[689].nvs" 1920;
	setAttr ".hyp[690].nvs" 1920;
	setAttr ".hyp[691].nvs" 1920;
	setAttr ".hyp[692].nvs" 1920;
	setAttr ".hyp[693].nvs" 1920;
	setAttr ".hyp[694].nvs" 1920;
	setAttr ".hyp[695].nvs" 1920;
	setAttr ".hyp[696].nvs" 1920;
	setAttr ".hyp[697].nvs" 1920;
	setAttr ".hyp[698].nvs" 1920;
	setAttr ".hyp[699].nvs" 1920;
	setAttr ".hyp[700].nvs" 1920;
	setAttr ".hyp[701].nvs" 1920;
	setAttr ".hyp[702].nvs" 1920;
	setAttr ".hyp[703].nvs" 1920;
	setAttr ".hyp[704].nvs" 1920;
	setAttr ".hyp[705].nvs" 1920;
	setAttr ".hyp[706].nvs" 1920;
	setAttr ".hyp[707].nvs" 1920;
	setAttr ".hyp[708].nvs" 1920;
	setAttr ".hyp[709].nvs" 1920;
	setAttr ".hyp[710].nvs" 1920;
	setAttr ".hyp[711].nvs" 1920;
	setAttr ".hyp[712].nvs" 1920;
	setAttr ".hyp[713].nvs" 1920;
	setAttr ".hyp[714].nvs" 1920;
	setAttr ".hyp[715].nvs" 1920;
	setAttr ".hyp[716].nvs" 1920;
	setAttr ".hyp[717].nvs" 1920;
	setAttr ".hyp[718].nvs" 1920;
	setAttr ".hyp[719].nvs" 1920;
	setAttr ".hyp[720].nvs" 1920;
	setAttr ".hyp[721].nvs" 1920;
	setAttr ".hyp[722].nvs" 1920;
	setAttr ".hyp[723].nvs" 1920;
	setAttr ".hyp[724].nvs" 1920;
	setAttr ".hyp[725].nvs" 1920;
	setAttr ".hyp[726].nvs" 1920;
	setAttr ".hyp[727].nvs" 1920;
	setAttr ".hyp[728].nvs" 1920;
	setAttr ".hyp[729].nvs" 1920;
	setAttr ".hyp[730].nvs" 1920;
	setAttr ".hyp[731].nvs" 1920;
	setAttr ".hyp[732].nvs" 1920;
	setAttr ".hyp[733].nvs" 1920;
	setAttr ".hyp[734].nvs" 1920;
	setAttr ".hyp[735].nvs" 1920;
	setAttr ".hyp[736].nvs" 1920;
	setAttr ".hyp[737].nvs" 1920;
	setAttr ".hyp[738].nvs" 1920;
	setAttr ".hyp[739].nvs" 1920;
	setAttr ".hyp[740].nvs" 1920;
	setAttr ".hyp[741].nvs" 1920;
	setAttr ".hyp[742].nvs" 1920;
	setAttr ".hyp[743].nvs" 1920;
	setAttr ".hyp[744].nvs" 1920;
	setAttr ".hyp[745].nvs" 1920;
	setAttr ".hyp[746].nvs" 1920;
	setAttr ".hyp[747].nvs" 1920;
	setAttr ".hyp[748].nvs" 1920;
	setAttr ".hyp[749].nvs" 1920;
	setAttr ".hyp[750].nvs" 1920;
	setAttr ".hyp[751].nvs" 1920;
	setAttr ".hyp[752].nvs" 1920;
	setAttr ".hyp[753].nvs" 1920;
	setAttr ".hyp[754].nvs" 1920;
	setAttr ".hyp[755].nvs" 1920;
	setAttr ".hyp[756].nvs" 1920;
	setAttr ".hyp[757].nvs" 1920;
	setAttr ".hyp[758].nvs" 1920;
	setAttr ".hyp[759].nvs" 1920;
	setAttr ".hyp[760].nvs" 1920;
	setAttr ".hyp[761].nvs" 1920;
	setAttr ".hyp[762].nvs" 1920;
	setAttr ".hyp[763].nvs" 1920;
	setAttr ".hyp[764].nvs" 1920;
	setAttr ".hyp[765].nvs" 1920;
	setAttr ".hyp[766].nvs" 1920;
	setAttr ".hyp[767].nvs" 1920;
	setAttr ".hyp[768].nvs" 1920;
	setAttr ".hyp[769].nvs" 1920;
	setAttr ".hyp[770].nvs" 1920;
	setAttr ".hyp[771].nvs" 1920;
	setAttr ".hyp[772].nvs" 1920;
	setAttr ".hyp[773].nvs" 1920;
	setAttr ".hyp[774].nvs" 1920;
	setAttr ".hyp[775].nvs" 1920;
	setAttr ".hyp[776].nvs" 1920;
	setAttr ".hyp[777].nvs" 1920;
	setAttr ".hyp[778].nvs" 1920;
	setAttr ".hyp[779].nvs" 1920;
	setAttr ".hyp[780].nvs" 1920;
	setAttr ".hyp[781].nvs" 1920;
	setAttr ".hyp[782].nvs" 1920;
	setAttr ".hyp[783].nvs" 1920;
	setAttr ".hyp[784].nvs" 1920;
	setAttr ".hyp[785].nvs" 1920;
	setAttr ".hyp[786].nvs" 1920;
	setAttr ".hyp[787].nvs" 1920;
	setAttr ".hyp[788].nvs" 1920;
	setAttr ".hyp[789].nvs" 1920;
	setAttr ".hyp[790].nvs" 1920;
	setAttr ".hyp[791].nvs" 1920;
	setAttr ".hyp[792].nvs" 1920;
	setAttr ".hyp[793].nvs" 1920;
	setAttr ".hyp[794].nvs" 1920;
	setAttr ".hyp[795].nvs" 1920;
	setAttr ".hyp[796].nvs" 1920;
	setAttr ".hyp[797].nvs" 1920;
	setAttr ".hyp[798].nvs" 1920;
	setAttr ".hyp[799].nvs" 1920;
	setAttr ".hyp[800].nvs" 1920;
	setAttr ".hyp[801].nvs" 1920;
	setAttr ".hyp[802].nvs" 1920;
	setAttr ".hyp[803].nvs" 1920;
	setAttr ".hyp[804].nvs" 1920;
	setAttr ".hyp[805].nvs" 1920;
	setAttr ".hyp[806].nvs" 1920;
	setAttr ".hyp[807].nvs" 1920;
	setAttr ".hyp[808].nvs" 1920;
	setAttr ".hyp[809].nvs" 1920;
	setAttr ".hyp[810].nvs" 1920;
	setAttr ".hyp[811].nvs" 1920;
	setAttr ".hyp[812].nvs" 1920;
	setAttr ".hyp[813].nvs" 1920;
	setAttr ".hyp[814].nvs" 1920;
	setAttr ".hyp[815].nvs" 1920;
	setAttr ".hyp[816].nvs" 1920;
	setAttr ".hyp[817].nvs" 1920;
	setAttr ".hyp[818].nvs" 1920;
	setAttr ".hyp[819].nvs" 1920;
	setAttr ".hyp[820].nvs" 1920;
	setAttr ".hyp[821].nvs" 1920;
	setAttr ".hyp[822].nvs" 1920;
	setAttr ".hyp[823].nvs" 1920;
	setAttr ".hyp[824].nvs" 1920;
	setAttr ".hyp[825].nvs" 1920;
	setAttr ".hyp[826].nvs" 1920;
	setAttr ".hyp[827].nvs" 1920;
	setAttr ".hyp[828].nvs" 1920;
	setAttr ".hyp[829].nvs" 1920;
	setAttr ".hyp[830].nvs" 1920;
	setAttr ".hyp[831].nvs" 1920;
	setAttr ".hyp[832].nvs" 1920;
	setAttr ".hyp[833].nvs" 1920;
	setAttr ".hyp[834].nvs" 1920;
	setAttr ".hyp[835].nvs" 1920;
	setAttr ".hyp[836].nvs" 1920;
	setAttr ".hyp[837].nvs" 1920;
	setAttr ".hyp[838].nvs" 1920;
	setAttr ".hyp[839].nvs" 1920;
	setAttr ".hyp[840].nvs" 1920;
	setAttr ".hyp[841].nvs" 1920;
	setAttr ".hyp[842].nvs" 1920;
	setAttr ".hyp[843].nvs" 1920;
	setAttr ".hyp[844].nvs" 1920;
	setAttr ".hyp[845].nvs" 1920;
	setAttr ".hyp[846].nvs" 1920;
	setAttr ".hyp[847].nvs" 1920;
	setAttr ".hyp[848].nvs" 1920;
	setAttr ".hyp[849].nvs" 1920;
	setAttr ".hyp[850].nvs" 1920;
	setAttr ".hyp[851].nvs" 1920;
	setAttr ".hyp[852].nvs" 1920;
	setAttr ".hyp[853].nvs" 1920;
	setAttr ".hyp[854].nvs" 1920;
	setAttr ".hyp[855].nvs" 1920;
	setAttr ".hyp[856].nvs" 1920;
	setAttr ".hyp[857].nvs" 1920;
	setAttr ".hyp[858].nvs" 1920;
	setAttr ".hyp[859].nvs" 1920;
	setAttr ".hyp[860].nvs" 1920;
	setAttr ".hyp[861].nvs" 1920;
	setAttr ".hyp[862].nvs" 1920;
	setAttr ".hyp[863].nvs" 1920;
	setAttr ".hyp[864].nvs" 1920;
	setAttr ".hyp[865].nvs" 1920;
	setAttr ".hyp[866].nvs" 1920;
	setAttr ".hyp[867].nvs" 1920;
	setAttr ".hyp[868].nvs" 1920;
	setAttr ".hyp[869].nvs" 1920;
	setAttr ".hyp[870].nvs" 1920;
	setAttr ".hyp[871].nvs" 1920;
	setAttr ".hyp[872].nvs" 1920;
	setAttr ".hyp[873].nvs" 1920;
	setAttr ".hyp[874].nvs" 1920;
	setAttr ".hyp[875].nvs" 1920;
	setAttr ".hyp[876].nvs" 1920;
	setAttr ".hyp[877].nvs" 1920;
	setAttr ".hyp[878].nvs" 1920;
	setAttr ".hyp[879].nvs" 1920;
	setAttr ".hyp[880].nvs" 1920;
	setAttr ".hyp[881].nvs" 1920;
	setAttr ".hyp[882].nvs" 1920;
	setAttr ".hyp[883].nvs" 1920;
	setAttr ".hyp[884].nvs" 1920;
	setAttr ".hyp[885].nvs" 1920;
	setAttr ".hyp[886].nvs" 1920;
	setAttr ".hyp[887].nvs" 1920;
	setAttr ".hyp[888].nvs" 1920;
	setAttr ".hyp[889].nvs" 1920;
	setAttr ".hyp[890].nvs" 1920;
	setAttr ".hyp[891].nvs" 1920;
	setAttr ".hyp[892].nvs" 1920;
	setAttr ".hyp[893].nvs" 1920;
	setAttr ".hyp[894].nvs" 1920;
	setAttr ".hyp[895].nvs" 1920;
	setAttr ".hyp[896].nvs" 1920;
	setAttr ".hyp[897].nvs" 1920;
	setAttr ".hyp[898].nvs" 1920;
	setAttr ".hyp[899].nvs" 1920;
	setAttr ".hyp[900].nvs" 1920;
	setAttr ".hyp[901].nvs" 1920;
	setAttr ".hyp[902].nvs" 1920;
	setAttr ".hyp[903].nvs" 1920;
	setAttr ".hyp[904].nvs" 1920;
	setAttr ".hyp[905].nvs" 1920;
	setAttr ".hyp[906].nvs" 1920;
	setAttr ".hyp[907].nvs" 1920;
	setAttr ".hyp[908].nvs" 1920;
	setAttr ".hyp[909].nvs" 1920;
	setAttr ".hyp[910].nvs" 1920;
	setAttr ".hyp[911].nvs" 1920;
	setAttr ".hyp[912].nvs" 1920;
	setAttr ".hyp[913].nvs" 1920;
	setAttr ".hyp[914].nvs" 1920;
	setAttr ".hyp[915].nvs" 1920;
	setAttr ".hyp[916].nvs" 1920;
	setAttr ".hyp[917].nvs" 1920;
	setAttr ".hyp[918].nvs" 1920;
	setAttr ".hyp[919].nvs" 1920;
	setAttr ".hyp[920].nvs" 1920;
	setAttr ".hyp[921].nvs" 1920;
	setAttr ".hyp[922].nvs" 1920;
	setAttr ".hyp[923].nvs" 1920;
	setAttr ".hyp[924].nvs" 1920;
	setAttr ".hyp[925].nvs" 1920;
	setAttr ".hyp[926].nvs" 1920;
	setAttr ".hyp[927].nvs" 1920;
	setAttr ".hyp[928].nvs" 1920;
	setAttr ".hyp[929].nvs" 1920;
	setAttr ".hyp[930].nvs" 1920;
	setAttr ".hyp[931].nvs" 1920;
	setAttr ".hyp[932].nvs" 1920;
	setAttr ".hyp[933].nvs" 1920;
	setAttr ".anf" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 0\n                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 1\n                -manipulators 1\n                -pluginShapes 0\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
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
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n"
		+ "                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 24 100 -ps 2 76 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode HIKCharacterNode -n "HIK_Avatar_Anim";
	setAttr ".HipsTy" 78;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 9.0058;
	setAttr ".LeftUpLegTy" 67.273367231852205;
	setAttr ".LeftUpLegTz" 0.86645359444618997;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 9.0058;
	setAttr ".LeftLegTy" 38.382930473698806;
	setAttr ".LeftLegTz" -0.53031647327044995;
	setAttr ".LeftLegRotateOrder" 1;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 9.629346722298699;
	setAttr ".LeftFootTy" 10.465849073911606;
	setAttr ".LeftFootTz" -3.2584434576910901;
	setAttr ".LeftFootRotateOrder" 3;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -9.0058;
	setAttr ".RightUpLegTy" 67.273367231852205;
	setAttr ".RightUpLegTz" 0.86645359444618997;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -9.0058;
	setAttr ".RightLegTy" 38.382930473698806;
	setAttr ".RightLegTz" -0.53031647327044995;
	setAttr ".RightLegRotateOrder" 1;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -9.629346722298699;
	setAttr ".RightFootTy" 10.465849073911606;
	setAttr ".RightFootTz" -3.2584434576910901;
	setAttr ".RightFootRotateOrder" 3;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTy" 80.403102413401953;
	setAttr ".SpineRx" 4.411719799041748;
	setAttr ".SpineRy" -0.0080434270203113521;
	setAttr ".SpineRz" 0.18985719978809351;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 12.380990310175319;
	setAttr ".LeftArmTy" 104.40576744135325;
	setAttr ".LeftArmTz" 0.65811126862145386;
	setAttr ".LeftArmRx" 8.8233891869348273;
	setAttr ".LeftArmRy" -0.03066733196118706;
	setAttr ".LeftArmRz" 0.37853315544502208;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 34.396176856501427;
	setAttr ".LeftForeArmTy" 104.02707549368832;
	setAttr ".LeftForeArmTz" 0.66556057306950689;
	setAttr ".LeftForeArmRx" 8.8233891869348273;
	setAttr ".LeftForeArmRy" -0.03066733196118706;
	setAttr ".LeftForeArmRz" 0.37853315544502208;
	setAttr ".LeftForeArmRotateOrder" 3;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 51.360110712743378;
	setAttr ".LeftHandTy" 103.70462661150425;
	setAttr ".LeftHandTz" 0.86873615452283515;
	setAttr ".LeftHandRx" 8.8233891869348273;
	setAttr ".LeftHandRy" -0.03066733196118706;
	setAttr ".LeftHandRz" 0.37853315544502208;
	setAttr ".LeftHandRotateOrder" 5;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -12.621204129487612;
	setAttr ".RightArmTy" 104.24058429289478;
	setAttr ".RightArmTz" 0.64472865283054892;
	setAttr ".RightArmRx" 8.8233891869348273;
	setAttr ".RightArmRy" -0.03066733196118706;
	setAttr ".RightArmRz" 0.37853315544502208;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -34.629460611272719;
	setAttr ".RightForeArmTy" 103.57104063847609;
	setAttr ".RightForeArmTz" 0.62861407270599901;
	setAttr ".RightForeArmRx" 8.8233891869348273;
	setAttr ".RightForeArmRy" -0.03066733196118706;
	setAttr ".RightForeArmRz" 0.37853315544502208;
	setAttr ".RightForeArmRotateOrder" 3;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -51.587860896459823;
	setAttr ".RightHandTy" 103.02447551041355;
	setAttr ".RightHandTz" 0.81363246537171963;
	setAttr ".RightHandRx" 8.8233891869348273;
	setAttr ".RightHandRy" -0.03066733196118706;
	setAttr ".RightHandRz" 0.37853315544502208;
	setAttr ".RightHandRotateOrder" 5;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTx" -0.19775853082179204;
	setAttr ".HeadTy" 119.60632736289882;
	setAttr ".HeadTz" 2.4167029367588109;
	setAttr ".HeadRx" -13.950215682845492;
	setAttr ".HeadRy" -2.3501631794432276;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" 0.62126864786135316;
	setAttr ".LeftShoulderTy" 103.89394794761927;
	setAttr ".LeftShoulderTz" 3.4099014610235159;
	setAttr ".LeftShoulderRx" 8.8233891869348273;
	setAttr ".LeftShoulderRy" -0.03066733196118706;
	setAttr ".LeftShoulderRz" 0.37853315544502208;
	setAttr ".LeftShoulderRotateOrder" 3;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -0.85869884087064707;
	setAttr ".RightShoulderTy" 103.88417017831206;
	setAttr ".RightShoulderTz" 3.4091092971063635;
	setAttr ".RightShoulderRx" 8.8233891869348273;
	setAttr ".RightShoulderRy" -0.03066733196118706;
	setAttr ".RightShoulderRz" 0.37853315544502208;
	setAttr ".RightShoulderRotateOrder" 3;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTx" -0.15426983749319412;
	setAttr ".NeckTy" 109.47174846649961;
	setAttr ".NeckTz" 0.92720553477824796;
	setAttr ".NeckRx" -2.5629455847826654;
	setAttr ".NeckRy" -1.171549461535321;
	setAttr ".NeckRz" 0.073654132399234518;
	setAttr ".NeckSz" 0.99999999999999989;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".Spine1Tx" -0.038483160247609879;
	setAttr ".Spine1Ty" 92.011492377948429;
	setAttr ".Spine1Tz" 0.12161232436599545;
	setAttr ".Spine1Rx" 8.8233891869348273;
	setAttr ".Spine1Ry" -0.03066733196118706;
	setAttr ".Spine1Rz" 0.37853315544502208;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
createNode HIKProperty2State -n "HIKproperties1";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
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
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
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
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
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
connectAttr "BASE__Skeleton_scaleX.o" "BASE__Skeleton.sx";
connectAttr "BASE__Skeleton_scaleY.o" "BASE__Skeleton.sy";
connectAttr "BASE__Skeleton_scaleZ.o" "BASE__Skeleton.sz";
connectAttr "BASE__Skeleton_translateX.o" "BASE__Skeleton.tx";
connectAttr "BASE__Skeleton_translateY.o" "BASE__Skeleton.ty";
connectAttr "BASE__Skeleton_translateZ.o" "BASE__Skeleton.tz";
connectAttr "BASE__Skeleton_rotateX.o" "BASE__Skeleton.rx";
connectAttr "BASE__Skeleton_rotateY.o" "BASE__Skeleton.ry";
connectAttr "BASE__Skeleton_rotateZ.o" "BASE__Skeleton.rz";
connectAttr "BASE__Skeleton_visibility.o" "BASE__Skeleton.v";
connectAttr "BASE__Skeleton_lockInfluenceWeights.o" "BASE__Skeleton.liw";
connectAttr "BASE__Skeleton_filmboxTypeID.o" "BASE__Skeleton.filmboxTypeID";
connectAttr "BASE__Skeleton.s" "BACKA__Skeleton.is";
connectAttr "BACKA__Skeleton_scaleX.o" "BACKA__Skeleton.sx";
connectAttr "BACKA__Skeleton_scaleY.o" "BACKA__Skeleton.sy";
connectAttr "BACKA__Skeleton_scaleZ.o" "BACKA__Skeleton.sz";
connectAttr "BACKA__Skeleton_rotateX.o" "BACKA__Skeleton.rx";
connectAttr "BACKA__Skeleton_rotateY.o" "BACKA__Skeleton.ry";
connectAttr "BACKA__Skeleton_rotateZ.o" "BACKA__Skeleton.rz";
connectAttr "BACKA__Skeleton_translateX.o" "BACKA__Skeleton.tx";
connectAttr "BACKA__Skeleton_translateY.o" "BACKA__Skeleton.ty";
connectAttr "BACKA__Skeleton_translateZ.o" "BACKA__Skeleton.tz";
connectAttr "BACKA__Skeleton_visibility.o" "BACKA__Skeleton.v";
connectAttr "BACKA__Skeleton_lockInfluenceWeights.o" "BACKA__Skeleton.liw";
connectAttr "BACKA__Skeleton_filmboxTypeID.o" "BACKA__Skeleton.filmboxTypeID";
connectAttr "BACKA__Skeleton.s" "BACKB__Skeleton.is";
connectAttr "BACKB__Skeleton_scaleX.o" "BACKB__Skeleton.sx";
connectAttr "BACKB__Skeleton_scaleY.o" "BACKB__Skeleton.sy";
connectAttr "BACKB__Skeleton_scaleZ.o" "BACKB__Skeleton.sz";
connectAttr "BACKB__Skeleton_rotateX.o" "BACKB__Skeleton.rx";
connectAttr "BACKB__Skeleton_rotateY.o" "BACKB__Skeleton.ry";
connectAttr "BACKB__Skeleton_rotateZ.o" "BACKB__Skeleton.rz";
connectAttr "BACKB__Skeleton_translateX.o" "BACKB__Skeleton.tx";
connectAttr "BACKB__Skeleton_translateY.o" "BACKB__Skeleton.ty";
connectAttr "BACKB__Skeleton_translateZ.o" "BACKB__Skeleton.tz";
connectAttr "BACKB__Skeleton_visibility.o" "BACKB__Skeleton.v";
connectAttr "BACKB__Skeleton_lockInfluenceWeights.o" "BACKB__Skeleton.liw";
connectAttr "BACKB__Skeleton_filmboxTypeID.o" "BACKB__Skeleton.filmboxTypeID";
connectAttr "BACKB__Skeleton.s" "SC_BACKB__Skeleton.is";
connectAttr "SC_BACKB__Skeleton_scaleX.o" "SC_BACKB__Skeleton.sx";
connectAttr "SC_BACKB__Skeleton_scaleZ.o" "SC_BACKB__Skeleton.sz";
connectAttr "SC_BACKB__Skeleton_scaleY.o" "SC_BACKB__Skeleton.sy";
connectAttr "SC_BACKB__Skeleton_translateX.o" "SC_BACKB__Skeleton.tx";
connectAttr "SC_BACKB__Skeleton_translateY.o" "SC_BACKB__Skeleton.ty";
connectAttr "SC_BACKB__Skeleton_translateZ.o" "SC_BACKB__Skeleton.tz";
connectAttr "SC_BACKB__Skeleton_rotateX.o" "SC_BACKB__Skeleton.rx";
connectAttr "SC_BACKB__Skeleton_rotateY.o" "SC_BACKB__Skeleton.ry";
connectAttr "SC_BACKB__Skeleton_rotateZ.o" "SC_BACKB__Skeleton.rz";
connectAttr "SC_BACKB__Skeleton_visibility.o" "SC_BACKB__Skeleton.v";
connectAttr "SC_BACKB__Skeleton_lockInfluenceWeights.o" "SC_BACKB__Skeleton.liw"
		;
connectAttr "SC_BACKB__Skeleton_filmboxTypeID.o" "SC_BACKB__Skeleton.filmboxTypeID"
		;
connectAttr "SC_BACKB__Skeleton.s" "SC_BACKB_END__Skeleton.is";
connectAttr "SC_BACKB_END__Skeleton_translateX.o" "SC_BACKB_END__Skeleton.tx";
connectAttr "SC_BACKB_END__Skeleton_translateY.o" "SC_BACKB_END__Skeleton.ty";
connectAttr "SC_BACKB_END__Skeleton_translateZ.o" "SC_BACKB_END__Skeleton.tz";
connectAttr "SC_BACKB_END__Skeleton_rotateX.o" "SC_BACKB_END__Skeleton.rx";
connectAttr "SC_BACKB_END__Skeleton_rotateY.o" "SC_BACKB_END__Skeleton.ry";
connectAttr "SC_BACKB_END__Skeleton_rotateZ.o" "SC_BACKB_END__Skeleton.rz";
connectAttr "SC_BACKB_END__Skeleton_scaleX.o" "SC_BACKB_END__Skeleton.sx";
connectAttr "SC_BACKB_END__Skeleton_scaleY.o" "SC_BACKB_END__Skeleton.sy";
connectAttr "SC_BACKB_END__Skeleton_scaleZ.o" "SC_BACKB_END__Skeleton.sz";
connectAttr "SC_BACKB_END__Skeleton_visibility.o" "SC_BACKB_END__Skeleton.v";
connectAttr "SC_BACKB_END__Skeleton_lockInfluenceWeights.o" "SC_BACKB_END__Skeleton.liw"
		;
connectAttr "SC_BACKB_END__Skeleton_filmboxTypeID.o" "SC_BACKB_END__Skeleton.filmboxTypeID"
		;
connectAttr "BACKB__Skeleton.s" "NECK__Skeleton.is";
connectAttr "NECK__Skeleton_scaleX.o" "NECK__Skeleton.sx";
connectAttr "NECK__Skeleton_scaleY.o" "NECK__Skeleton.sy";
connectAttr "NECK__Skeleton_scaleZ.o" "NECK__Skeleton.sz";
connectAttr "NECK__Skeleton_rotateX.o" "NECK__Skeleton.rx";
connectAttr "NECK__Skeleton_rotateY.o" "NECK__Skeleton.ry";
connectAttr "NECK__Skeleton_rotateZ.o" "NECK__Skeleton.rz";
connectAttr "NECK__Skeleton_translateX.o" "NECK__Skeleton.tx";
connectAttr "NECK__Skeleton_translateY.o" "NECK__Skeleton.ty";
connectAttr "NECK__Skeleton_translateZ.o" "NECK__Skeleton.tz";
connectAttr "NECK__Skeleton_visibility.o" "NECK__Skeleton.v";
connectAttr "NECK__Skeleton_lockInfluenceWeights.o" "NECK__Skeleton.liw";
connectAttr "NECK__Skeleton_filmboxTypeID.o" "NECK__Skeleton.filmboxTypeID";
connectAttr "NECK__Skeleton.s" "SC_NECK__Skeleton.is";
connectAttr "SC_NECK__Skeleton_scaleX.o" "SC_NECK__Skeleton.sx";
connectAttr "SC_NECK__Skeleton_scaleZ.o" "SC_NECK__Skeleton.sz";
connectAttr "SC_NECK__Skeleton_scaleY.o" "SC_NECK__Skeleton.sy";
connectAttr "SC_NECK__Skeleton_translateX.o" "SC_NECK__Skeleton.tx";
connectAttr "SC_NECK__Skeleton_translateY.o" "SC_NECK__Skeleton.ty";
connectAttr "SC_NECK__Skeleton_translateZ.o" "SC_NECK__Skeleton.tz";
connectAttr "SC_NECK__Skeleton_rotateX.o" "SC_NECK__Skeleton.rx";
connectAttr "SC_NECK__Skeleton_rotateY.o" "SC_NECK__Skeleton.ry";
connectAttr "SC_NECK__Skeleton_rotateZ.o" "SC_NECK__Skeleton.rz";
connectAttr "SC_NECK__Skeleton_visibility.o" "SC_NECK__Skeleton.v";
connectAttr "SC_NECK__Skeleton_lockInfluenceWeights.o" "SC_NECK__Skeleton.liw";
connectAttr "SC_NECK__Skeleton_filmboxTypeID.o" "SC_NECK__Skeleton.filmboxTypeID"
		;
connectAttr "SC_NECK__Skeleton.s" "SC_NECK_END__Skeleton.is";
connectAttr "SC_NECK_END__Skeleton_translateX.o" "SC_NECK_END__Skeleton.tx";
connectAttr "SC_NECK_END__Skeleton_translateY.o" "SC_NECK_END__Skeleton.ty";
connectAttr "SC_NECK_END__Skeleton_translateZ.o" "SC_NECK_END__Skeleton.tz";
connectAttr "SC_NECK_END__Skeleton_rotateX.o" "SC_NECK_END__Skeleton.rx";
connectAttr "SC_NECK_END__Skeleton_rotateY.o" "SC_NECK_END__Skeleton.ry";
connectAttr "SC_NECK_END__Skeleton_rotateZ.o" "SC_NECK_END__Skeleton.rz";
connectAttr "SC_NECK_END__Skeleton_scaleX.o" "SC_NECK_END__Skeleton.sx";
connectAttr "SC_NECK_END__Skeleton_scaleY.o" "SC_NECK_END__Skeleton.sy";
connectAttr "SC_NECK_END__Skeleton_scaleZ.o" "SC_NECK_END__Skeleton.sz";
connectAttr "SC_NECK_END__Skeleton_visibility.o" "SC_NECK_END__Skeleton.v";
connectAttr "SC_NECK_END__Skeleton_lockInfluenceWeights.o" "SC_NECK_END__Skeleton.liw"
		;
connectAttr "SC_NECK_END__Skeleton_filmboxTypeID.o" "SC_NECK_END__Skeleton.filmboxTypeID"
		;
connectAttr "NECK__Skeleton.s" "HEAD__Skeleton.is";
connectAttr "HEAD__Skeleton_scaleX.o" "HEAD__Skeleton.sx";
connectAttr "HEAD__Skeleton_scaleY.o" "HEAD__Skeleton.sy";
connectAttr "HEAD__Skeleton_scaleZ.o" "HEAD__Skeleton.sz";
connectAttr "HEAD__Skeleton_rotateX.o" "HEAD__Skeleton.rx";
connectAttr "HEAD__Skeleton_rotateY.o" "HEAD__Skeleton.ry";
connectAttr "HEAD__Skeleton_rotateZ.o" "HEAD__Skeleton.rz";
connectAttr "HEAD__Skeleton_translateX.o" "HEAD__Skeleton.tx";
connectAttr "HEAD__Skeleton_translateY.o" "HEAD__Skeleton.ty";
connectAttr "HEAD__Skeleton_translateZ.o" "HEAD__Skeleton.tz";
connectAttr "HEAD__Skeleton_visibility.o" "HEAD__Skeleton.v";
connectAttr "HEAD__Skeleton_lockInfluenceWeights.o" "HEAD__Skeleton.liw";
connectAttr "HEAD__Skeleton_filmboxTypeID.o" "HEAD__Skeleton.filmboxTypeID";
connectAttr "HEAD__Skeleton.s" "HEAD_END__Skeleton.is";
connectAttr "HEAD_END__Skeleton_translateX.o" "HEAD_END__Skeleton.tx";
connectAttr "HEAD_END__Skeleton_translateY.o" "HEAD_END__Skeleton.ty";
connectAttr "HEAD_END__Skeleton_translateZ.o" "HEAD_END__Skeleton.tz";
connectAttr "HEAD_END__Skeleton_rotateX.o" "HEAD_END__Skeleton.rx";
connectAttr "HEAD_END__Skeleton_rotateY.o" "HEAD_END__Skeleton.ry";
connectAttr "HEAD_END__Skeleton_rotateZ.o" "HEAD_END__Skeleton.rz";
connectAttr "HEAD_END__Skeleton_scaleX.o" "HEAD_END__Skeleton.sx";
connectAttr "HEAD_END__Skeleton_scaleY.o" "HEAD_END__Skeleton.sy";
connectAttr "HEAD_END__Skeleton_scaleZ.o" "HEAD_END__Skeleton.sz";
connectAttr "HEAD_END__Skeleton_visibility.o" "HEAD_END__Skeleton.v";
connectAttr "HEAD_END__Skeleton_lockInfluenceWeights.o" "HEAD_END__Skeleton.liw"
		;
connectAttr "HEAD_END__Skeleton_filmboxTypeID.o" "HEAD_END__Skeleton.filmboxTypeID"
		;
connectAttr "BACKB__Skeleton.s" "LF_C__Skeleton.is";
connectAttr "LF_C__Skeleton_scaleX.o" "LF_C__Skeleton.sx";
connectAttr "LF_C__Skeleton_scaleY.o" "LF_C__Skeleton.sy";
connectAttr "LF_C__Skeleton_scaleZ.o" "LF_C__Skeleton.sz";
connectAttr "LF_C__Skeleton_rotateX.o" "LF_C__Skeleton.rx";
connectAttr "LF_C__Skeleton_rotateY.o" "LF_C__Skeleton.ry";
connectAttr "LF_C__Skeleton_rotateZ.o" "LF_C__Skeleton.rz";
connectAttr "LF_C__Skeleton_translateX.o" "LF_C__Skeleton.tx";
connectAttr "LF_C__Skeleton_translateY.o" "LF_C__Skeleton.ty";
connectAttr "LF_C__Skeleton_translateZ.o" "LF_C__Skeleton.tz";
connectAttr "LF_C__Skeleton_visibility.o" "LF_C__Skeleton.v";
connectAttr "LF_C__Skeleton_lockInfluenceWeights.o" "LF_C__Skeleton.liw";
connectAttr "LF_C__Skeleton_filmboxTypeID.o" "LF_C__Skeleton.filmboxTypeID";
connectAttr "LF_C__Skeleton.s" "LF_S__Skeleton.is";
connectAttr "LF_S__Skeleton_scaleX.o" "LF_S__Skeleton.sx";
connectAttr "LF_S__Skeleton_scaleY.o" "LF_S__Skeleton.sy";
connectAttr "LF_S__Skeleton_scaleZ.o" "LF_S__Skeleton.sz";
connectAttr "LF_S__Skeleton_rotateX.o" "LF_S__Skeleton.rx";
connectAttr "LF_S__Skeleton_rotateY.o" "LF_S__Skeleton.ry";
connectAttr "LF_S__Skeleton_rotateZ.o" "LF_S__Skeleton.rz";
connectAttr "LF_S__Skeleton_translateX.o" "LF_S__Skeleton.tx";
connectAttr "LF_S__Skeleton_translateY.o" "LF_S__Skeleton.ty";
connectAttr "LF_S__Skeleton_translateZ.o" "LF_S__Skeleton.tz";
connectAttr "LF_S__Skeleton_visibility.o" "LF_S__Skeleton.v";
connectAttr "LF_S__Skeleton_lockInfluenceWeights.o" "LF_S__Skeleton.liw";
connectAttr "LF_S__Skeleton_ArmBackOrFwdSkinAdjust.o" "LF_S__Skeleton.ArmBackOrFwdSkinAdjust"
		;
connectAttr "LF_S__Skeleton_filmboxTypeID.o" "LF_S__Skeleton.filmboxTypeID";
connectAttr "LF_S__Skeleton.s" "LF_E__Skeleton.is";
connectAttr "LF_E__Skeleton_scaleX.o" "LF_E__Skeleton.sx";
connectAttr "LF_E__Skeleton_scaleY.o" "LF_E__Skeleton.sy";
connectAttr "LF_E__Skeleton_scaleZ.o" "LF_E__Skeleton.sz";
connectAttr "LF_E__Skeleton_rotateX.o" "LF_E__Skeleton.rx";
connectAttr "LF_E__Skeleton_rotateY.o" "LF_E__Skeleton.ry";
connectAttr "LF_E__Skeleton_rotateZ.o" "LF_E__Skeleton.rz";
connectAttr "LF_E__Skeleton_translateX.o" "LF_E__Skeleton.tx";
connectAttr "LF_E__Skeleton_translateY.o" "LF_E__Skeleton.ty";
connectAttr "LF_E__Skeleton_translateZ.o" "LF_E__Skeleton.tz";
connectAttr "LF_E__Skeleton_visibility.o" "LF_E__Skeleton.v";
connectAttr "LF_E__Skeleton_lockInfluenceWeights.o" "LF_E__Skeleton.liw";
connectAttr "LF_E__Skeleton_filmboxTypeID.o" "LF_E__Skeleton.filmboxTypeID";
connectAttr "LF_E__Skeleton.s" "LF_W__Skeleton.is";
connectAttr "LF_W__Skeleton_scaleX.o" "LF_W__Skeleton.sx";
connectAttr "LF_W__Skeleton_scaleY.o" "LF_W__Skeleton.sy";
connectAttr "LF_W__Skeleton_scaleZ.o" "LF_W__Skeleton.sz";
connectAttr "LF_W__Skeleton_rotateX.o" "LF_W__Skeleton.rx";
connectAttr "LF_W__Skeleton_rotateY.o" "LF_W__Skeleton.ry";
connectAttr "LF_W__Skeleton_rotateZ.o" "LF_W__Skeleton.rz";
connectAttr "LF_W__Skeleton_translateX.o" "LF_W__Skeleton.tx";
connectAttr "LF_W__Skeleton_translateY.o" "LF_W__Skeleton.ty";
connectAttr "LF_W__Skeleton_translateZ.o" "LF_W__Skeleton.tz";
connectAttr "LF_W__Skeleton_visibility.o" "LF_W__Skeleton.v";
connectAttr "LF_W__Skeleton_lockInfluenceWeights.o" "LF_W__Skeleton.liw";
connectAttr "LF_W__Skeleton_filmboxTypeID.o" "LF_W__Skeleton.filmboxTypeID";
connectAttr "LF_W__Skeleton.s" "LF_FINGD__Skeleton.is";
connectAttr "LF_FINGD__Skeleton_scaleX.o" "LF_FINGD__Skeleton.sx";
connectAttr "LF_FINGD__Skeleton_scaleY.o" "LF_FINGD__Skeleton.sy";
connectAttr "LF_FINGD__Skeleton_scaleZ.o" "LF_FINGD__Skeleton.sz";
connectAttr "LF_FINGD__Skeleton_rotateX.o" "LF_FINGD__Skeleton.rx";
connectAttr "LF_FINGD__Skeleton_rotateY.o" "LF_FINGD__Skeleton.ry";
connectAttr "LF_FINGD__Skeleton_rotateZ.o" "LF_FINGD__Skeleton.rz";
connectAttr "LF_FINGD__Skeleton_translateX.o" "LF_FINGD__Skeleton.tx";
connectAttr "LF_FINGD__Skeleton_translateY.o" "LF_FINGD__Skeleton.ty";
connectAttr "LF_FINGD__Skeleton_translateZ.o" "LF_FINGD__Skeleton.tz";
connectAttr "LF_FINGD__Skeleton_visibility.o" "LF_FINGD__Skeleton.v";
connectAttr "LF_FINGD__Skeleton_lockInfluenceWeights.o" "LF_FINGD__Skeleton.liw"
		;
connectAttr "LF_FINGD__Skeleton_filmboxTypeID.o" "LF_FINGD__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGD__Skeleton.s" "LF_FINGD1__Skeleton.is";
connectAttr "LF_FINGD1__Skeleton_scaleX.o" "LF_FINGD1__Skeleton.sx";
connectAttr "LF_FINGD1__Skeleton_scaleY.o" "LF_FINGD1__Skeleton.sy";
connectAttr "LF_FINGD1__Skeleton_scaleZ.o" "LF_FINGD1__Skeleton.sz";
connectAttr "LF_FINGD1__Skeleton_rotateX.o" "LF_FINGD1__Skeleton.rx";
connectAttr "LF_FINGD1__Skeleton_rotateY.o" "LF_FINGD1__Skeleton.ry";
connectAttr "LF_FINGD1__Skeleton_rotateZ.o" "LF_FINGD1__Skeleton.rz";
connectAttr "LF_FINGD1__Skeleton_translateX.o" "LF_FINGD1__Skeleton.tx";
connectAttr "LF_FINGD1__Skeleton_translateY.o" "LF_FINGD1__Skeleton.ty";
connectAttr "LF_FINGD1__Skeleton_translateZ.o" "LF_FINGD1__Skeleton.tz";
connectAttr "LF_FINGD1__Skeleton_visibility.o" "LF_FINGD1__Skeleton.v";
connectAttr "LF_FINGD1__Skeleton_lockInfluenceWeights.o" "LF_FINGD1__Skeleton.liw"
		;
connectAttr "LF_FINGD1__Skeleton_filmboxTypeID.o" "LF_FINGD1__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGD1__Skeleton.s" "LF_FINGD2__Skeleton.is";
connectAttr "LF_FINGD2__Skeleton_scaleX.o" "LF_FINGD2__Skeleton.sx";
connectAttr "LF_FINGD2__Skeleton_scaleY.o" "LF_FINGD2__Skeleton.sy";
connectAttr "LF_FINGD2__Skeleton_scaleZ.o" "LF_FINGD2__Skeleton.sz";
connectAttr "LF_FINGD2__Skeleton_rotateX.o" "LF_FINGD2__Skeleton.rx";
connectAttr "LF_FINGD2__Skeleton_rotateY.o" "LF_FINGD2__Skeleton.ry";
connectAttr "LF_FINGD2__Skeleton_rotateZ.o" "LF_FINGD2__Skeleton.rz";
connectAttr "LF_FINGD2__Skeleton_translateX.o" "LF_FINGD2__Skeleton.tx";
connectAttr "LF_FINGD2__Skeleton_translateY.o" "LF_FINGD2__Skeleton.ty";
connectAttr "LF_FINGD2__Skeleton_translateZ.o" "LF_FINGD2__Skeleton.tz";
connectAttr "LF_FINGD2__Skeleton_visibility.o" "LF_FINGD2__Skeleton.v";
connectAttr "LF_FINGD2__Skeleton_lockInfluenceWeights.o" "LF_FINGD2__Skeleton.liw"
		;
connectAttr "LF_FINGD2__Skeleton_filmboxTypeID.o" "LF_FINGD2__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGD2__Skeleton.s" "LF_FINGD_END__Skeleton.is";
connectAttr "LF_FINGD_END__Skeleton_rotateX.o" "LF_FINGD_END__Skeleton.rx";
connectAttr "LF_FINGD_END__Skeleton_rotateY.o" "LF_FINGD_END__Skeleton.ry";
connectAttr "LF_FINGD_END__Skeleton_rotateZ.o" "LF_FINGD_END__Skeleton.rz";
connectAttr "LF_FINGD_END__Skeleton_translateX.o" "LF_FINGD_END__Skeleton.tx";
connectAttr "LF_FINGD_END__Skeleton_translateY.o" "LF_FINGD_END__Skeleton.ty";
connectAttr "LF_FINGD_END__Skeleton_translateZ.o" "LF_FINGD_END__Skeleton.tz";
connectAttr "LF_FINGD_END__Skeleton_scaleX.o" "LF_FINGD_END__Skeleton.sx";
connectAttr "LF_FINGD_END__Skeleton_scaleY.o" "LF_FINGD_END__Skeleton.sy";
connectAttr "LF_FINGD_END__Skeleton_scaleZ.o" "LF_FINGD_END__Skeleton.sz";
connectAttr "LF_FINGD_END__Skeleton_visibility.o" "LF_FINGD_END__Skeleton.v";
connectAttr "LF_FINGD_END__Skeleton_lockInfluenceWeights.o" "LF_FINGD_END__Skeleton.liw"
		;
connectAttr "LF_FINGD_END__Skeleton_filmboxTypeID.o" "LF_FINGD_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_W__Skeleton.s" "LF_FINGC__Skeleton.is";
connectAttr "LF_FINGC__Skeleton_scaleX.o" "LF_FINGC__Skeleton.sx";
connectAttr "LF_FINGC__Skeleton_scaleY.o" "LF_FINGC__Skeleton.sy";
connectAttr "LF_FINGC__Skeleton_scaleZ.o" "LF_FINGC__Skeleton.sz";
connectAttr "LF_FINGC__Skeleton_rotateX.o" "LF_FINGC__Skeleton.rx";
connectAttr "LF_FINGC__Skeleton_rotateY.o" "LF_FINGC__Skeleton.ry";
connectAttr "LF_FINGC__Skeleton_rotateZ.o" "LF_FINGC__Skeleton.rz";
connectAttr "LF_FINGC__Skeleton_translateX.o" "LF_FINGC__Skeleton.tx";
connectAttr "LF_FINGC__Skeleton_translateY.o" "LF_FINGC__Skeleton.ty";
connectAttr "LF_FINGC__Skeleton_translateZ.o" "LF_FINGC__Skeleton.tz";
connectAttr "LF_FINGC__Skeleton_visibility.o" "LF_FINGC__Skeleton.v";
connectAttr "LF_FINGC__Skeleton_lockInfluenceWeights.o" "LF_FINGC__Skeleton.liw"
		;
connectAttr "LF_FINGC__Skeleton_filmboxTypeID.o" "LF_FINGC__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGC__Skeleton.s" "LF_FINGC1__Skeleton.is";
connectAttr "LF_FINGC1__Skeleton_scaleX.o" "LF_FINGC1__Skeleton.sx";
connectAttr "LF_FINGC1__Skeleton_scaleY.o" "LF_FINGC1__Skeleton.sy";
connectAttr "LF_FINGC1__Skeleton_scaleZ.o" "LF_FINGC1__Skeleton.sz";
connectAttr "LF_FINGC1__Skeleton_rotateX.o" "LF_FINGC1__Skeleton.rx";
connectAttr "LF_FINGC1__Skeleton_rotateY.o" "LF_FINGC1__Skeleton.ry";
connectAttr "LF_FINGC1__Skeleton_rotateZ.o" "LF_FINGC1__Skeleton.rz";
connectAttr "LF_FINGC1__Skeleton_translateX.o" "LF_FINGC1__Skeleton.tx";
connectAttr "LF_FINGC1__Skeleton_translateY.o" "LF_FINGC1__Skeleton.ty";
connectAttr "LF_FINGC1__Skeleton_translateZ.o" "LF_FINGC1__Skeleton.tz";
connectAttr "LF_FINGC1__Skeleton_visibility.o" "LF_FINGC1__Skeleton.v";
connectAttr "LF_FINGC1__Skeleton_lockInfluenceWeights.o" "LF_FINGC1__Skeleton.liw"
		;
connectAttr "LF_FINGC1__Skeleton_filmboxTypeID.o" "LF_FINGC1__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGC1__Skeleton.s" "LF_FINGC2__Skeleton.is";
connectAttr "LF_FINGC2__Skeleton_scaleX.o" "LF_FINGC2__Skeleton.sx";
connectAttr "LF_FINGC2__Skeleton_scaleY.o" "LF_FINGC2__Skeleton.sy";
connectAttr "LF_FINGC2__Skeleton_scaleZ.o" "LF_FINGC2__Skeleton.sz";
connectAttr "LF_FINGC2__Skeleton_rotateX.o" "LF_FINGC2__Skeleton.rx";
connectAttr "LF_FINGC2__Skeleton_rotateY.o" "LF_FINGC2__Skeleton.ry";
connectAttr "LF_FINGC2__Skeleton_rotateZ.o" "LF_FINGC2__Skeleton.rz";
connectAttr "LF_FINGC2__Skeleton_translateX.o" "LF_FINGC2__Skeleton.tx";
connectAttr "LF_FINGC2__Skeleton_translateY.o" "LF_FINGC2__Skeleton.ty";
connectAttr "LF_FINGC2__Skeleton_translateZ.o" "LF_FINGC2__Skeleton.tz";
connectAttr "LF_FINGC2__Skeleton_visibility.o" "LF_FINGC2__Skeleton.v";
connectAttr "LF_FINGC2__Skeleton_lockInfluenceWeights.o" "LF_FINGC2__Skeleton.liw"
		;
connectAttr "LF_FINGC2__Skeleton_filmboxTypeID.o" "LF_FINGC2__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGC2__Skeleton.s" "LF_FINGC_END__Skeleton.is";
connectAttr "LF_FINGC_END__Skeleton_rotateX.o" "LF_FINGC_END__Skeleton.rx";
connectAttr "LF_FINGC_END__Skeleton_rotateY.o" "LF_FINGC_END__Skeleton.ry";
connectAttr "LF_FINGC_END__Skeleton_rotateZ.o" "LF_FINGC_END__Skeleton.rz";
connectAttr "LF_FINGC_END__Skeleton_translateX.o" "LF_FINGC_END__Skeleton.tx";
connectAttr "LF_FINGC_END__Skeleton_translateY.o" "LF_FINGC_END__Skeleton.ty";
connectAttr "LF_FINGC_END__Skeleton_translateZ.o" "LF_FINGC_END__Skeleton.tz";
connectAttr "LF_FINGC_END__Skeleton_scaleX.o" "LF_FINGC_END__Skeleton.sx";
connectAttr "LF_FINGC_END__Skeleton_scaleY.o" "LF_FINGC_END__Skeleton.sy";
connectAttr "LF_FINGC_END__Skeleton_scaleZ.o" "LF_FINGC_END__Skeleton.sz";
connectAttr "LF_FINGC_END__Skeleton_visibility.o" "LF_FINGC_END__Skeleton.v";
connectAttr "LF_FINGC_END__Skeleton_lockInfluenceWeights.o" "LF_FINGC_END__Skeleton.liw"
		;
connectAttr "LF_FINGC_END__Skeleton_filmboxTypeID.o" "LF_FINGC_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_W__Skeleton.s" "LF_FINGB__Skeleton.is";
connectAttr "LF_FINGB__Skeleton_scaleX.o" "LF_FINGB__Skeleton.sx";
connectAttr "LF_FINGB__Skeleton_scaleY.o" "LF_FINGB__Skeleton.sy";
connectAttr "LF_FINGB__Skeleton_scaleZ.o" "LF_FINGB__Skeleton.sz";
connectAttr "LF_FINGB__Skeleton_rotateX.o" "LF_FINGB__Skeleton.rx";
connectAttr "LF_FINGB__Skeleton_rotateY.o" "LF_FINGB__Skeleton.ry";
connectAttr "LF_FINGB__Skeleton_rotateZ.o" "LF_FINGB__Skeleton.rz";
connectAttr "LF_FINGB__Skeleton_translateX.o" "LF_FINGB__Skeleton.tx";
connectAttr "LF_FINGB__Skeleton_translateY.o" "LF_FINGB__Skeleton.ty";
connectAttr "LF_FINGB__Skeleton_translateZ.o" "LF_FINGB__Skeleton.tz";
connectAttr "LF_FINGB__Skeleton_visibility.o" "LF_FINGB__Skeleton.v";
connectAttr "LF_FINGB__Skeleton_lockInfluenceWeights.o" "LF_FINGB__Skeleton.liw"
		;
connectAttr "LF_FINGB__Skeleton_filmboxTypeID.o" "LF_FINGB__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGB__Skeleton.s" "LF_FINGB1__Skeleton.is";
connectAttr "LF_FINGB1__Skeleton_scaleX.o" "LF_FINGB1__Skeleton.sx";
connectAttr "LF_FINGB1__Skeleton_scaleY.o" "LF_FINGB1__Skeleton.sy";
connectAttr "LF_FINGB1__Skeleton_scaleZ.o" "LF_FINGB1__Skeleton.sz";
connectAttr "LF_FINGB1__Skeleton_rotateX.o" "LF_FINGB1__Skeleton.rx";
connectAttr "LF_FINGB1__Skeleton_rotateY.o" "LF_FINGB1__Skeleton.ry";
connectAttr "LF_FINGB1__Skeleton_rotateZ.o" "LF_FINGB1__Skeleton.rz";
connectAttr "LF_FINGB1__Skeleton_translateX.o" "LF_FINGB1__Skeleton.tx";
connectAttr "LF_FINGB1__Skeleton_translateY.o" "LF_FINGB1__Skeleton.ty";
connectAttr "LF_FINGB1__Skeleton_translateZ.o" "LF_FINGB1__Skeleton.tz";
connectAttr "LF_FINGB1__Skeleton_visibility.o" "LF_FINGB1__Skeleton.v";
connectAttr "LF_FINGB1__Skeleton_lockInfluenceWeights.o" "LF_FINGB1__Skeleton.liw"
		;
connectAttr "LF_FINGB1__Skeleton_filmboxTypeID.o" "LF_FINGB1__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGB1__Skeleton.s" "LF_FINGB2__Skeleton.is";
connectAttr "LF_FINGB2__Skeleton_scaleX.o" "LF_FINGB2__Skeleton.sx";
connectAttr "LF_FINGB2__Skeleton_scaleY.o" "LF_FINGB2__Skeleton.sy";
connectAttr "LF_FINGB2__Skeleton_scaleZ.o" "LF_FINGB2__Skeleton.sz";
connectAttr "LF_FINGB2__Skeleton_rotateX.o" "LF_FINGB2__Skeleton.rx";
connectAttr "LF_FINGB2__Skeleton_rotateY.o" "LF_FINGB2__Skeleton.ry";
connectAttr "LF_FINGB2__Skeleton_rotateZ.o" "LF_FINGB2__Skeleton.rz";
connectAttr "LF_FINGB2__Skeleton_translateX.o" "LF_FINGB2__Skeleton.tx";
connectAttr "LF_FINGB2__Skeleton_translateY.o" "LF_FINGB2__Skeleton.ty";
connectAttr "LF_FINGB2__Skeleton_translateZ.o" "LF_FINGB2__Skeleton.tz";
connectAttr "LF_FINGB2__Skeleton_visibility.o" "LF_FINGB2__Skeleton.v";
connectAttr "LF_FINGB2__Skeleton_lockInfluenceWeights.o" "LF_FINGB2__Skeleton.liw"
		;
connectAttr "LF_FINGB2__Skeleton_filmboxTypeID.o" "LF_FINGB2__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGB2__Skeleton.s" "LF_FINGB_END__Skeleton.is";
connectAttr "LF_FINGB_END__Skeleton_rotateX.o" "LF_FINGB_END__Skeleton.rx";
connectAttr "LF_FINGB_END__Skeleton_rotateY.o" "LF_FINGB_END__Skeleton.ry";
connectAttr "LF_FINGB_END__Skeleton_rotateZ.o" "LF_FINGB_END__Skeleton.rz";
connectAttr "LF_FINGB_END__Skeleton_translateX.o" "LF_FINGB_END__Skeleton.tx";
connectAttr "LF_FINGB_END__Skeleton_translateY.o" "LF_FINGB_END__Skeleton.ty";
connectAttr "LF_FINGB_END__Skeleton_translateZ.o" "LF_FINGB_END__Skeleton.tz";
connectAttr "LF_FINGB_END__Skeleton_scaleX.o" "LF_FINGB_END__Skeleton.sx";
connectAttr "LF_FINGB_END__Skeleton_scaleY.o" "LF_FINGB_END__Skeleton.sy";
connectAttr "LF_FINGB_END__Skeleton_scaleZ.o" "LF_FINGB_END__Skeleton.sz";
connectAttr "LF_FINGB_END__Skeleton_visibility.o" "LF_FINGB_END__Skeleton.v";
connectAttr "LF_FINGB_END__Skeleton_lockInfluenceWeights.o" "LF_FINGB_END__Skeleton.liw"
		;
connectAttr "LF_FINGB_END__Skeleton_filmboxTypeID.o" "LF_FINGB_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_W__Skeleton.s" "LF_FINGA__Skeleton.is";
connectAttr "LF_FINGA__Skeleton_scaleX.o" "LF_FINGA__Skeleton.sx";
connectAttr "LF_FINGA__Skeleton_scaleY.o" "LF_FINGA__Skeleton.sy";
connectAttr "LF_FINGA__Skeleton_scaleZ.o" "LF_FINGA__Skeleton.sz";
connectAttr "LF_FINGA__Skeleton_rotateX.o" "LF_FINGA__Skeleton.rx";
connectAttr "LF_FINGA__Skeleton_rotateY.o" "LF_FINGA__Skeleton.ry";
connectAttr "LF_FINGA__Skeleton_rotateZ.o" "LF_FINGA__Skeleton.rz";
connectAttr "LF_FINGA__Skeleton_translateX.o" "LF_FINGA__Skeleton.tx";
connectAttr "LF_FINGA__Skeleton_translateY.o" "LF_FINGA__Skeleton.ty";
connectAttr "LF_FINGA__Skeleton_translateZ.o" "LF_FINGA__Skeleton.tz";
connectAttr "LF_FINGA__Skeleton_visibility.o" "LF_FINGA__Skeleton.v";
connectAttr "LF_FINGA__Skeleton_lockInfluenceWeights.o" "LF_FINGA__Skeleton.liw"
		;
connectAttr "LF_FINGA__Skeleton_filmboxTypeID.o" "LF_FINGA__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGA__Skeleton.s" "LF_FINGA1__Skeleton.is";
connectAttr "LF_FINGA1__Skeleton_scaleX.o" "LF_FINGA1__Skeleton.sx";
connectAttr "LF_FINGA1__Skeleton_scaleY.o" "LF_FINGA1__Skeleton.sy";
connectAttr "LF_FINGA1__Skeleton_scaleZ.o" "LF_FINGA1__Skeleton.sz";
connectAttr "LF_FINGA1__Skeleton_rotateX.o" "LF_FINGA1__Skeleton.rx";
connectAttr "LF_FINGA1__Skeleton_rotateY.o" "LF_FINGA1__Skeleton.ry";
connectAttr "LF_FINGA1__Skeleton_rotateZ.o" "LF_FINGA1__Skeleton.rz";
connectAttr "LF_FINGA1__Skeleton_translateX.o" "LF_FINGA1__Skeleton.tx";
connectAttr "LF_FINGA1__Skeleton_translateY.o" "LF_FINGA1__Skeleton.ty";
connectAttr "LF_FINGA1__Skeleton_translateZ.o" "LF_FINGA1__Skeleton.tz";
connectAttr "LF_FINGA1__Skeleton_visibility.o" "LF_FINGA1__Skeleton.v";
connectAttr "LF_FINGA1__Skeleton_lockInfluenceWeights.o" "LF_FINGA1__Skeleton.liw"
		;
connectAttr "LF_FINGA1__Skeleton_filmboxTypeID.o" "LF_FINGA1__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGA1__Skeleton.s" "LF_FINGA2__Skeleton.is";
connectAttr "LF_FINGA2__Skeleton_scaleX.o" "LF_FINGA2__Skeleton.sx";
connectAttr "LF_FINGA2__Skeleton_scaleY.o" "LF_FINGA2__Skeleton.sy";
connectAttr "LF_FINGA2__Skeleton_scaleZ.o" "LF_FINGA2__Skeleton.sz";
connectAttr "LF_FINGA2__Skeleton_rotateX.o" "LF_FINGA2__Skeleton.rx";
connectAttr "LF_FINGA2__Skeleton_rotateY.o" "LF_FINGA2__Skeleton.ry";
connectAttr "LF_FINGA2__Skeleton_rotateZ.o" "LF_FINGA2__Skeleton.rz";
connectAttr "LF_FINGA2__Skeleton_translateX.o" "LF_FINGA2__Skeleton.tx";
connectAttr "LF_FINGA2__Skeleton_translateY.o" "LF_FINGA2__Skeleton.ty";
connectAttr "LF_FINGA2__Skeleton_translateZ.o" "LF_FINGA2__Skeleton.tz";
connectAttr "LF_FINGA2__Skeleton_visibility.o" "LF_FINGA2__Skeleton.v";
connectAttr "LF_FINGA2__Skeleton_lockInfluenceWeights.o" "LF_FINGA2__Skeleton.liw"
		;
connectAttr "LF_FINGA2__Skeleton_filmboxTypeID.o" "LF_FINGA2__Skeleton.filmboxTypeID"
		;
connectAttr "LF_FINGA2__Skeleton.s" "LF_FINGA_END__Skeleton.is";
connectAttr "LF_FINGA_END__Skeleton_rotateX.o" "LF_FINGA_END__Skeleton.rx";
connectAttr "LF_FINGA_END__Skeleton_rotateY.o" "LF_FINGA_END__Skeleton.ry";
connectAttr "LF_FINGA_END__Skeleton_rotateZ.o" "LF_FINGA_END__Skeleton.rz";
connectAttr "LF_FINGA_END__Skeleton_translateX.o" "LF_FINGA_END__Skeleton.tx";
connectAttr "LF_FINGA_END__Skeleton_translateY.o" "LF_FINGA_END__Skeleton.ty";
connectAttr "LF_FINGA_END__Skeleton_translateZ.o" "LF_FINGA_END__Skeleton.tz";
connectAttr "LF_FINGA_END__Skeleton_scaleX.o" "LF_FINGA_END__Skeleton.sx";
connectAttr "LF_FINGA_END__Skeleton_scaleY.o" "LF_FINGA_END__Skeleton.sy";
connectAttr "LF_FINGA_END__Skeleton_scaleZ.o" "LF_FINGA_END__Skeleton.sz";
connectAttr "LF_FINGA_END__Skeleton_visibility.o" "LF_FINGA_END__Skeleton.v";
connectAttr "LF_FINGA_END__Skeleton_lockInfluenceWeights.o" "LF_FINGA_END__Skeleton.liw"
		;
connectAttr "LF_FINGA_END__Skeleton_filmboxTypeID.o" "LF_FINGA_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_W__Skeleton.s" "LF_THUMB__Skeleton.is";
connectAttr "LF_THUMB__Skeleton_scaleX.o" "LF_THUMB__Skeleton.sx";
connectAttr "LF_THUMB__Skeleton_scaleY.o" "LF_THUMB__Skeleton.sy";
connectAttr "LF_THUMB__Skeleton_scaleZ.o" "LF_THUMB__Skeleton.sz";
connectAttr "LF_THUMB__Skeleton_rotateX.o" "LF_THUMB__Skeleton.rx";
connectAttr "LF_THUMB__Skeleton_rotateY.o" "LF_THUMB__Skeleton.ry";
connectAttr "LF_THUMB__Skeleton_rotateZ.o" "LF_THUMB__Skeleton.rz";
connectAttr "LF_THUMB__Skeleton_translateX.o" "LF_THUMB__Skeleton.tx";
connectAttr "LF_THUMB__Skeleton_translateY.o" "LF_THUMB__Skeleton.ty";
connectAttr "LF_THUMB__Skeleton_translateZ.o" "LF_THUMB__Skeleton.tz";
connectAttr "LF_THUMB__Skeleton_visibility.o" "LF_THUMB__Skeleton.v";
connectAttr "LF_THUMB__Skeleton_lockInfluenceWeights.o" "LF_THUMB__Skeleton.liw"
		;
connectAttr "LF_THUMB__Skeleton_filmboxTypeID.o" "LF_THUMB__Skeleton.filmboxTypeID"
		;
connectAttr "LF_THUMB__Skeleton.s" "LF_THUMB1__Skeleton.is";
connectAttr "LF_THUMB1__Skeleton_scaleX.o" "LF_THUMB1__Skeleton.sx";
connectAttr "LF_THUMB1__Skeleton_scaleY.o" "LF_THUMB1__Skeleton.sy";
connectAttr "LF_THUMB1__Skeleton_scaleZ.o" "LF_THUMB1__Skeleton.sz";
connectAttr "LF_THUMB1__Skeleton_rotateX.o" "LF_THUMB1__Skeleton.rx";
connectAttr "LF_THUMB1__Skeleton_rotateY.o" "LF_THUMB1__Skeleton.ry";
connectAttr "LF_THUMB1__Skeleton_rotateZ.o" "LF_THUMB1__Skeleton.rz";
connectAttr "LF_THUMB1__Skeleton_translateX.o" "LF_THUMB1__Skeleton.tx";
connectAttr "LF_THUMB1__Skeleton_translateY.o" "LF_THUMB1__Skeleton.ty";
connectAttr "LF_THUMB1__Skeleton_translateZ.o" "LF_THUMB1__Skeleton.tz";
connectAttr "LF_THUMB1__Skeleton_visibility.o" "LF_THUMB1__Skeleton.v";
connectAttr "LF_THUMB1__Skeleton_lockInfluenceWeights.o" "LF_THUMB1__Skeleton.liw"
		;
connectAttr "LF_THUMB1__Skeleton_filmboxTypeID.o" "LF_THUMB1__Skeleton.filmboxTypeID"
		;
connectAttr "LF_THUMB1__Skeleton.s" "LF_THUMB2__Skeleton.is";
connectAttr "LF_THUMB2__Skeleton_scaleX.o" "LF_THUMB2__Skeleton.sx";
connectAttr "LF_THUMB2__Skeleton_scaleY.o" "LF_THUMB2__Skeleton.sy";
connectAttr "LF_THUMB2__Skeleton_scaleZ.o" "LF_THUMB2__Skeleton.sz";
connectAttr "LF_THUMB2__Skeleton_rotateX.o" "LF_THUMB2__Skeleton.rx";
connectAttr "LF_THUMB2__Skeleton_rotateY.o" "LF_THUMB2__Skeleton.ry";
connectAttr "LF_THUMB2__Skeleton_rotateZ.o" "LF_THUMB2__Skeleton.rz";
connectAttr "LF_THUMB2__Skeleton_translateX.o" "LF_THUMB2__Skeleton.tx";
connectAttr "LF_THUMB2__Skeleton_translateY.o" "LF_THUMB2__Skeleton.ty";
connectAttr "LF_THUMB2__Skeleton_translateZ.o" "LF_THUMB2__Skeleton.tz";
connectAttr "LF_THUMB2__Skeleton_visibility.o" "LF_THUMB2__Skeleton.v";
connectAttr "LF_THUMB2__Skeleton_lockInfluenceWeights.o" "LF_THUMB2__Skeleton.liw"
		;
connectAttr "LF_THUMB2__Skeleton_filmboxTypeID.o" "LF_THUMB2__Skeleton.filmboxTypeID"
		;
connectAttr "LF_THUMB2__Skeleton.s" "LF_THUMB_END__Skeleton.is";
connectAttr "LF_THUMB_END__Skeleton_rotateX.o" "LF_THUMB_END__Skeleton.rx";
connectAttr "LF_THUMB_END__Skeleton_rotateY.o" "LF_THUMB_END__Skeleton.ry";
connectAttr "LF_THUMB_END__Skeleton_rotateZ.o" "LF_THUMB_END__Skeleton.rz";
connectAttr "LF_THUMB_END__Skeleton_translateX.o" "LF_THUMB_END__Skeleton.tx";
connectAttr "LF_THUMB_END__Skeleton_translateY.o" "LF_THUMB_END__Skeleton.ty";
connectAttr "LF_THUMB_END__Skeleton_translateZ.o" "LF_THUMB_END__Skeleton.tz";
connectAttr "LF_THUMB_END__Skeleton_scaleX.o" "LF_THUMB_END__Skeleton.sx";
connectAttr "LF_THUMB_END__Skeleton_scaleY.o" "LF_THUMB_END__Skeleton.sy";
connectAttr "LF_THUMB_END__Skeleton_scaleZ.o" "LF_THUMB_END__Skeleton.sz";
connectAttr "LF_THUMB_END__Skeleton_visibility.o" "LF_THUMB_END__Skeleton.v";
connectAttr "LF_THUMB_END__Skeleton_lockInfluenceWeights.o" "LF_THUMB_END__Skeleton.liw"
		;
connectAttr "LF_THUMB_END__Skeleton_filmboxTypeID.o" "LF_THUMB_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_W__Skeleton.s" "LF_PROP__Skeleton.is";
connectAttr "LF_PROP__Skeleton_scaleX.o" "LF_PROP__Skeleton.sx";
connectAttr "LF_PROP__Skeleton_scaleY.o" "LF_PROP__Skeleton.sy";
connectAttr "LF_PROP__Skeleton_scaleZ.o" "LF_PROP__Skeleton.sz";
connectAttr "LF_PROP__Skeleton_rotateX.o" "LF_PROP__Skeleton.rx";
connectAttr "LF_PROP__Skeleton_rotateY.o" "LF_PROP__Skeleton.ry";
connectAttr "LF_PROP__Skeleton_rotateZ.o" "LF_PROP__Skeleton.rz";
connectAttr "LF_PROP__Skeleton_translateX.o" "LF_PROP__Skeleton.tx";
connectAttr "LF_PROP__Skeleton_translateY.o" "LF_PROP__Skeleton.ty";
connectAttr "LF_PROP__Skeleton_translateZ.o" "LF_PROP__Skeleton.tz";
connectAttr "LF_PROP__Skeleton_visibility.o" "LF_PROP__Skeleton.v";
connectAttr "LF_PROP__Skeleton_lockInfluenceWeights.o" "LF_PROP__Skeleton.liw";
connectAttr "LF_PROP__Skeleton_filmboxTypeID.o" "LF_PROP__Skeleton.filmboxTypeID"
		;
connectAttr "LF_PROP__Skeleton.s" "LF_PROP_END__Skeleton.is";
connectAttr "LF_PROP_END__Skeleton_rotateX.o" "LF_PROP_END__Skeleton.rx";
connectAttr "LF_PROP_END__Skeleton_rotateY.o" "LF_PROP_END__Skeleton.ry";
connectAttr "LF_PROP_END__Skeleton_rotateZ.o" "LF_PROP_END__Skeleton.rz";
connectAttr "LF_PROP_END__Skeleton_translateX.o" "LF_PROP_END__Skeleton.tx";
connectAttr "LF_PROP_END__Skeleton_translateY.o" "LF_PROP_END__Skeleton.ty";
connectAttr "LF_PROP_END__Skeleton_translateZ.o" "LF_PROP_END__Skeleton.tz";
connectAttr "LF_PROP_END__Skeleton_scaleX.o" "LF_PROP_END__Skeleton.sx";
connectAttr "LF_PROP_END__Skeleton_scaleY.o" "LF_PROP_END__Skeleton.sy";
connectAttr "LF_PROP_END__Skeleton_scaleZ.o" "LF_PROP_END__Skeleton.sz";
connectAttr "LF_PROP_END__Skeleton_visibility.o" "LF_PROP_END__Skeleton.v";
connectAttr "LF_PROP_END__Skeleton_lockInfluenceWeights.o" "LF_PROP_END__Skeleton.liw"
		;
connectAttr "LF_PROP_END__Skeleton_filmboxTypeID.o" "LF_PROP_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_W__Skeleton.s" "LF_SPECIAL__Skeleton.is";
connectAttr "LF_SPECIAL__Skeleton_scaleX.o" "LF_SPECIAL__Skeleton.sx";
connectAttr "LF_SPECIAL__Skeleton_scaleY.o" "LF_SPECIAL__Skeleton.sy";
connectAttr "LF_SPECIAL__Skeleton_scaleZ.o" "LF_SPECIAL__Skeleton.sz";
connectAttr "LF_SPECIAL__Skeleton_rotateX.o" "LF_SPECIAL__Skeleton.rx";
connectAttr "LF_SPECIAL__Skeleton_rotateY.o" "LF_SPECIAL__Skeleton.ry";
connectAttr "LF_SPECIAL__Skeleton_rotateZ.o" "LF_SPECIAL__Skeleton.rz";
connectAttr "LF_SPECIAL__Skeleton_translateX.o" "LF_SPECIAL__Skeleton.tx";
connectAttr "LF_SPECIAL__Skeleton_translateY.o" "LF_SPECIAL__Skeleton.ty";
connectAttr "LF_SPECIAL__Skeleton_translateZ.o" "LF_SPECIAL__Skeleton.tz";
connectAttr "LF_SPECIAL__Skeleton_visibility.o" "LF_SPECIAL__Skeleton.v";
connectAttr "LF_SPECIAL__Skeleton_lockInfluenceWeights.o" "LF_SPECIAL__Skeleton.liw"
		;
connectAttr "LF_SPECIAL__Skeleton_filmboxTypeID.o" "LF_SPECIAL__Skeleton.filmboxTypeID"
		;
connectAttr "LF_SPECIAL__Skeleton.s" "LF_SPECIAL_END__Skeleton.is";
connectAttr "LF_SPECIAL_END__Skeleton_rotateX.o" "LF_SPECIAL_END__Skeleton.rx";
connectAttr "LF_SPECIAL_END__Skeleton_rotateY.o" "LF_SPECIAL_END__Skeleton.ry";
connectAttr "LF_SPECIAL_END__Skeleton_rotateZ.o" "LF_SPECIAL_END__Skeleton.rz";
connectAttr "LF_SPECIAL_END__Skeleton_translateX.o" "LF_SPECIAL_END__Skeleton.tx"
		;
connectAttr "LF_SPECIAL_END__Skeleton_translateY.o" "LF_SPECIAL_END__Skeleton.ty"
		;
connectAttr "LF_SPECIAL_END__Skeleton_translateZ.o" "LF_SPECIAL_END__Skeleton.tz"
		;
connectAttr "LF_SPECIAL_END__Skeleton_scaleX.o" "LF_SPECIAL_END__Skeleton.sx";
connectAttr "LF_SPECIAL_END__Skeleton_scaleY.o" "LF_SPECIAL_END__Skeleton.sy";
connectAttr "LF_SPECIAL_END__Skeleton_scaleZ.o" "LF_SPECIAL_END__Skeleton.sz";
connectAttr "LF_SPECIAL_END__Skeleton_visibility.o" "LF_SPECIAL_END__Skeleton.v"
		;
connectAttr "LF_SPECIAL_END__Skeleton_lockInfluenceWeights.o" "LF_SPECIAL_END__Skeleton.liw"
		;
connectAttr "LF_SPECIAL_END__Skeleton_filmboxTypeID.o" "LF_SPECIAL_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_E__Skeleton.s" "LF_E_TWIST__Skeleton.is";
connectAttr "LF_E_TWIST__Skeleton_scaleX.o" "LF_E_TWIST__Skeleton.sx";
connectAttr "LF_E_TWIST__Skeleton_scaleY.o" "LF_E_TWIST__Skeleton.sy";
connectAttr "LF_E_TWIST__Skeleton_scaleZ.o" "LF_E_TWIST__Skeleton.sz";
connectAttr "LF_E_TWIST__Skeleton_rotateX.o" "LF_E_TWIST__Skeleton.rx";
connectAttr "LF_E_TWIST__Skeleton_rotateY.o" "LF_E_TWIST__Skeleton.ry";
connectAttr "LF_E_TWIST__Skeleton_rotateZ.o" "LF_E_TWIST__Skeleton.rz";
connectAttr "LF_E_TWIST__Skeleton_translateX.o" "LF_E_TWIST__Skeleton.tx";
connectAttr "LF_E_TWIST__Skeleton_translateY.o" "LF_E_TWIST__Skeleton.ty";
connectAttr "LF_E_TWIST__Skeleton_translateZ.o" "LF_E_TWIST__Skeleton.tz";
connectAttr "LF_E_TWIST__Skeleton_visibility.o" "LF_E_TWIST__Skeleton.v";
connectAttr "LF_E_TWIST__Skeleton_lockInfluenceWeights.o" "LF_E_TWIST__Skeleton.liw"
		;
connectAttr "LF_E_TWIST__Skeleton_filmboxTypeID.o" "LF_E_TWIST__Skeleton.filmboxTypeID"
		;
connectAttr "LF_E_TWIST__Skeleton.s" "LF_E_TWIST_END__Skeleton.is";
connectAttr "LF_E_TWIST_END__Skeleton_rotateX.o" "LF_E_TWIST_END__Skeleton.rx";
connectAttr "LF_E_TWIST_END__Skeleton_rotateY.o" "LF_E_TWIST_END__Skeleton.ry";
connectAttr "LF_E_TWIST_END__Skeleton_rotateZ.o" "LF_E_TWIST_END__Skeleton.rz";
connectAttr "LF_E_TWIST_END__Skeleton_translateX.o" "LF_E_TWIST_END__Skeleton.tx"
		;
connectAttr "LF_E_TWIST_END__Skeleton_translateY.o" "LF_E_TWIST_END__Skeleton.ty"
		;
connectAttr "LF_E_TWIST_END__Skeleton_translateZ.o" "LF_E_TWIST_END__Skeleton.tz"
		;
connectAttr "LF_E_TWIST_END__Skeleton_scaleX.o" "LF_E_TWIST_END__Skeleton.sx";
connectAttr "LF_E_TWIST_END__Skeleton_scaleY.o" "LF_E_TWIST_END__Skeleton.sy";
connectAttr "LF_E_TWIST_END__Skeleton_scaleZ.o" "LF_E_TWIST_END__Skeleton.sz";
connectAttr "LF_E_TWIST_END__Skeleton_visibility.o" "LF_E_TWIST_END__Skeleton.v"
		;
connectAttr "LF_E_TWIST_END__Skeleton_lockInfluenceWeights.o" "LF_E_TWIST_END__Skeleton.liw"
		;
connectAttr "LF_E_TWIST_END__Skeleton_filmboxTypeID.o" "LF_E_TWIST_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_E__Skeleton.s" "LF_SC_E__Skeleton.is";
connectAttr "LF_SC_E__Skeleton_scaleY.o" "LF_SC_E__Skeleton.sy";
connectAttr "LF_SC_E__Skeleton_scaleZ.o" "LF_SC_E__Skeleton.sz";
connectAttr "LF_SC_E__Skeleton_scaleX.o" "LF_SC_E__Skeleton.sx";
connectAttr "LF_SC_E__Skeleton_rotateX.o" "LF_SC_E__Skeleton.rx";
connectAttr "LF_SC_E__Skeleton_rotateY.o" "LF_SC_E__Skeleton.ry";
connectAttr "LF_SC_E__Skeleton_rotateZ.o" "LF_SC_E__Skeleton.rz";
connectAttr "LF_SC_E__Skeleton_translateX.o" "LF_SC_E__Skeleton.tx";
connectAttr "LF_SC_E__Skeleton_translateY.o" "LF_SC_E__Skeleton.ty";
connectAttr "LF_SC_E__Skeleton_translateZ.o" "LF_SC_E__Skeleton.tz";
connectAttr "LF_SC_E__Skeleton_visibility.o" "LF_SC_E__Skeleton.v";
connectAttr "LF_SC_E__Skeleton_lockInfluenceWeights.o" "LF_SC_E__Skeleton.liw";
connectAttr "LF_SC_E__Skeleton_filmboxTypeID.o" "LF_SC_E__Skeleton.filmboxTypeID"
		;
connectAttr "LF_SC_E__Skeleton.s" "LF_SC_E_END__Skeleton.is";
connectAttr "LF_SC_E_END__Skeleton_rotateX.o" "LF_SC_E_END__Skeleton.rx";
connectAttr "LF_SC_E_END__Skeleton_rotateY.o" "LF_SC_E_END__Skeleton.ry";
connectAttr "LF_SC_E_END__Skeleton_rotateZ.o" "LF_SC_E_END__Skeleton.rz";
connectAttr "LF_SC_E_END__Skeleton_translateX.o" "LF_SC_E_END__Skeleton.tx";
connectAttr "LF_SC_E_END__Skeleton_translateY.o" "LF_SC_E_END__Skeleton.ty";
connectAttr "LF_SC_E_END__Skeleton_translateZ.o" "LF_SC_E_END__Skeleton.tz";
connectAttr "LF_SC_E_END__Skeleton_scaleX.o" "LF_SC_E_END__Skeleton.sx";
connectAttr "LF_SC_E_END__Skeleton_scaleY.o" "LF_SC_E_END__Skeleton.sy";
connectAttr "LF_SC_E_END__Skeleton_scaleZ.o" "LF_SC_E_END__Skeleton.sz";
connectAttr "LF_SC_E_END__Skeleton_visibility.o" "LF_SC_E_END__Skeleton.v";
connectAttr "LF_SC_E_END__Skeleton_lockInfluenceWeights.o" "LF_SC_E_END__Skeleton.liw"
		;
connectAttr "LF_SC_E_END__Skeleton_filmboxTypeID.o" "LF_SC_E_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_S__Skeleton.s" "LF_SC_S__Skeleton.is";
connectAttr "LF_SC_S__Skeleton_scaleY.o" "LF_SC_S__Skeleton.sy";
connectAttr "LF_SC_S__Skeleton_scaleZ.o" "LF_SC_S__Skeleton.sz";
connectAttr "LF_SC_S__Skeleton_scaleX.o" "LF_SC_S__Skeleton.sx";
connectAttr "LF_SC_S__Skeleton_rotateX.o" "LF_SC_S__Skeleton.rx";
connectAttr "LF_SC_S__Skeleton_rotateY.o" "LF_SC_S__Skeleton.ry";
connectAttr "LF_SC_S__Skeleton_rotateZ.o" "LF_SC_S__Skeleton.rz";
connectAttr "LF_SC_S__Skeleton_translateX.o" "LF_SC_S__Skeleton.tx";
connectAttr "LF_SC_S__Skeleton_translateY.o" "LF_SC_S__Skeleton.ty";
connectAttr "LF_SC_S__Skeleton_translateZ.o" "LF_SC_S__Skeleton.tz";
connectAttr "LF_SC_S__Skeleton_visibility.o" "LF_SC_S__Skeleton.v";
connectAttr "LF_SC_S__Skeleton_lockInfluenceWeights.o" "LF_SC_S__Skeleton.liw";
connectAttr "LF_SC_S__Skeleton_filmboxTypeID.o" "LF_SC_S__Skeleton.filmboxTypeID"
		;
connectAttr "LF_SC_S__Skeleton.s" "LF_SC_S_END__Skeleton.is";
connectAttr "LF_SC_S_END__Skeleton_rotateX.o" "LF_SC_S_END__Skeleton.rx";
connectAttr "LF_SC_S_END__Skeleton_rotateY.o" "LF_SC_S_END__Skeleton.ry";
connectAttr "LF_SC_S_END__Skeleton_rotateZ.o" "LF_SC_S_END__Skeleton.rz";
connectAttr "LF_SC_S_END__Skeleton_translateX.o" "LF_SC_S_END__Skeleton.tx";
connectAttr "LF_SC_S_END__Skeleton_translateY.o" "LF_SC_S_END__Skeleton.ty";
connectAttr "LF_SC_S_END__Skeleton_translateZ.o" "LF_SC_S_END__Skeleton.tz";
connectAttr "LF_SC_S_END__Skeleton_scaleX.o" "LF_SC_S_END__Skeleton.sx";
connectAttr "LF_SC_S_END__Skeleton_scaleY.o" "LF_SC_S_END__Skeleton.sy";
connectAttr "LF_SC_S_END__Skeleton_scaleZ.o" "LF_SC_S_END__Skeleton.sz";
connectAttr "LF_SC_S_END__Skeleton_visibility.o" "LF_SC_S_END__Skeleton.v";
connectAttr "LF_SC_S_END__Skeleton_lockInfluenceWeights.o" "LF_SC_S_END__Skeleton.liw"
		;
connectAttr "LF_SC_S_END__Skeleton_filmboxTypeID.o" "LF_SC_S_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_S__Skeleton.s" "LF_SC_TWIST_S__Skeleton.is";
connectAttr "LF_SC_TWIST_S__Skeleton_scaleY.o" "LF_SC_TWIST_S__Skeleton.sy";
connectAttr "LF_SC_TWIST_S__Skeleton_scaleZ.o" "LF_SC_TWIST_S__Skeleton.sz";
connectAttr "LF_SC_TWIST_S__Skeleton_scaleX.o" "LF_SC_TWIST_S__Skeleton.sx";
connectAttr "LF_SC_TWIST_S__Skeleton_rotateX.o" "LF_SC_TWIST_S__Skeleton.rx";
connectAttr "LF_SC_TWIST_S__Skeleton_rotateY.o" "LF_SC_TWIST_S__Skeleton.ry";
connectAttr "LF_SC_TWIST_S__Skeleton_rotateZ.o" "LF_SC_TWIST_S__Skeleton.rz";
connectAttr "LF_SC_TWIST_S__Skeleton_translateX.o" "LF_SC_TWIST_S__Skeleton.tx";
connectAttr "LF_SC_TWIST_S__Skeleton_translateY.o" "LF_SC_TWIST_S__Skeleton.ty";
connectAttr "LF_SC_TWIST_S__Skeleton_translateZ.o" "LF_SC_TWIST_S__Skeleton.tz";
connectAttr "LF_SC_TWIST_S__Skeleton_visibility.o" "LF_SC_TWIST_S__Skeleton.v";
connectAttr "LF_SC_TWIST_S__Skeleton_lockInfluenceWeights.o" "LF_SC_TWIST_S__Skeleton.liw"
		;
connectAttr "LF_SC_TWIST_S__Skeleton_filmboxTypeID.o" "LF_SC_TWIST_S__Skeleton.filmboxTypeID"
		;
connectAttr "LF_SC_TWIST_S__Skeleton.s" "LF_SC_TWIST_S_END__Skeleton.is";
connectAttr "LF_SC_TWIST_S_END__Skeleton_rotateX.o" "LF_SC_TWIST_S_END__Skeleton.rx"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_rotateY.o" "LF_SC_TWIST_S_END__Skeleton.ry"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_rotateZ.o" "LF_SC_TWIST_S_END__Skeleton.rz"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_translateX.o" "LF_SC_TWIST_S_END__Skeleton.tx"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_translateY.o" "LF_SC_TWIST_S_END__Skeleton.ty"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_translateZ.o" "LF_SC_TWIST_S_END__Skeleton.tz"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_scaleX.o" "LF_SC_TWIST_S_END__Skeleton.sx"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_scaleY.o" "LF_SC_TWIST_S_END__Skeleton.sy"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_scaleZ.o" "LF_SC_TWIST_S_END__Skeleton.sz"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_visibility.o" "LF_SC_TWIST_S_END__Skeleton.v"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_lockInfluenceWeights.o" "LF_SC_TWIST_S_END__Skeleton.liw"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_filmboxTypeID.o" "LF_SC_TWIST_S_END__Skeleton.filmboxTypeID"
		;
connectAttr "BACKB__Skeleton.s" "RT_C__Skeleton.is";
connectAttr "RT_C__Skeleton_scaleX.o" "RT_C__Skeleton.sx";
connectAttr "RT_C__Skeleton_scaleY.o" "RT_C__Skeleton.sy";
connectAttr "RT_C__Skeleton_scaleZ.o" "RT_C__Skeleton.sz";
connectAttr "RT_C__Skeleton_rotateX.o" "RT_C__Skeleton.rx";
connectAttr "RT_C__Skeleton_rotateY.o" "RT_C__Skeleton.ry";
connectAttr "RT_C__Skeleton_rotateZ.o" "RT_C__Skeleton.rz";
connectAttr "RT_C__Skeleton_translateX.o" "RT_C__Skeleton.tx";
connectAttr "RT_C__Skeleton_translateY.o" "RT_C__Skeleton.ty";
connectAttr "RT_C__Skeleton_translateZ.o" "RT_C__Skeleton.tz";
connectAttr "RT_C__Skeleton_visibility.o" "RT_C__Skeleton.v";
connectAttr "RT_C__Skeleton_lockInfluenceWeights.o" "RT_C__Skeleton.liw";
connectAttr "RT_C__Skeleton_filmboxTypeID.o" "RT_C__Skeleton.filmboxTypeID";
connectAttr "RT_C__Skeleton.s" "RT_S__Skeleton.is";
connectAttr "RT_S__Skeleton_scaleX.o" "RT_S__Skeleton.sx";
connectAttr "RT_S__Skeleton_scaleY.o" "RT_S__Skeleton.sy";
connectAttr "RT_S__Skeleton_scaleZ.o" "RT_S__Skeleton.sz";
connectAttr "RT_S__Skeleton_rotateX.o" "RT_S__Skeleton.rx";
connectAttr "RT_S__Skeleton_rotateY.o" "RT_S__Skeleton.ry";
connectAttr "RT_S__Skeleton_rotateZ.o" "RT_S__Skeleton.rz";
connectAttr "RT_S__Skeleton_translateX.o" "RT_S__Skeleton.tx";
connectAttr "RT_S__Skeleton_translateY.o" "RT_S__Skeleton.ty";
connectAttr "RT_S__Skeleton_translateZ.o" "RT_S__Skeleton.tz";
connectAttr "RT_S__Skeleton_visibility.o" "RT_S__Skeleton.v";
connectAttr "RT_S__Skeleton_lockInfluenceWeights.o" "RT_S__Skeleton.liw";
connectAttr "RT_S__Skeleton_ArmBackOrFwdSkinAdjust.o" "RT_S__Skeleton.ArmBackOrFwdSkinAdjust"
		;
connectAttr "RT_S__Skeleton_filmboxTypeID.o" "RT_S__Skeleton.filmboxTypeID";
connectAttr "RT_S__Skeleton.s" "RT_E__Skeleton.is";
connectAttr "RT_E__Skeleton_scaleX.o" "RT_E__Skeleton.sx";
connectAttr "RT_E__Skeleton_scaleY.o" "RT_E__Skeleton.sy";
connectAttr "RT_E__Skeleton_scaleZ.o" "RT_E__Skeleton.sz";
connectAttr "RT_E__Skeleton_rotateX.o" "RT_E__Skeleton.rx";
connectAttr "RT_E__Skeleton_rotateY.o" "RT_E__Skeleton.ry";
connectAttr "RT_E__Skeleton_rotateZ.o" "RT_E__Skeleton.rz";
connectAttr "RT_E__Skeleton_translateX.o" "RT_E__Skeleton.tx";
connectAttr "RT_E__Skeleton_translateY.o" "RT_E__Skeleton.ty";
connectAttr "RT_E__Skeleton_translateZ.o" "RT_E__Skeleton.tz";
connectAttr "RT_E__Skeleton_visibility.o" "RT_E__Skeleton.v";
connectAttr "RT_E__Skeleton_lockInfluenceWeights.o" "RT_E__Skeleton.liw";
connectAttr "RT_E__Skeleton_filmboxTypeID.o" "RT_E__Skeleton.filmboxTypeID";
connectAttr "RT_E__Skeleton.s" "RT_W__Skeleton.is";
connectAttr "RT_W__Skeleton_scaleX.o" "RT_W__Skeleton.sx";
connectAttr "RT_W__Skeleton_scaleY.o" "RT_W__Skeleton.sy";
connectAttr "RT_W__Skeleton_scaleZ.o" "RT_W__Skeleton.sz";
connectAttr "RT_W__Skeleton_rotateX.o" "RT_W__Skeleton.rx";
connectAttr "RT_W__Skeleton_rotateY.o" "RT_W__Skeleton.ry";
connectAttr "RT_W__Skeleton_rotateZ.o" "RT_W__Skeleton.rz";
connectAttr "RT_W__Skeleton_translateX.o" "RT_W__Skeleton.tx";
connectAttr "RT_W__Skeleton_translateY.o" "RT_W__Skeleton.ty";
connectAttr "RT_W__Skeleton_translateZ.o" "RT_W__Skeleton.tz";
connectAttr "RT_W__Skeleton_visibility.o" "RT_W__Skeleton.v";
connectAttr "RT_W__Skeleton_lockInfluenceWeights.o" "RT_W__Skeleton.liw";
connectAttr "RT_W__Skeleton_filmboxTypeID.o" "RT_W__Skeleton.filmboxTypeID";
connectAttr "RT_W__Skeleton.s" "RT_FINGD__Skeleton.is";
connectAttr "RT_FINGD__Skeleton_scaleX.o" "RT_FINGD__Skeleton.sx";
connectAttr "RT_FINGD__Skeleton_scaleY.o" "RT_FINGD__Skeleton.sy";
connectAttr "RT_FINGD__Skeleton_scaleZ.o" "RT_FINGD__Skeleton.sz";
connectAttr "RT_FINGD__Skeleton_rotateX.o" "RT_FINGD__Skeleton.rx";
connectAttr "RT_FINGD__Skeleton_rotateY.o" "RT_FINGD__Skeleton.ry";
connectAttr "RT_FINGD__Skeleton_rotateZ.o" "RT_FINGD__Skeleton.rz";
connectAttr "RT_FINGD__Skeleton_translateX.o" "RT_FINGD__Skeleton.tx";
connectAttr "RT_FINGD__Skeleton_translateY.o" "RT_FINGD__Skeleton.ty";
connectAttr "RT_FINGD__Skeleton_translateZ.o" "RT_FINGD__Skeleton.tz";
connectAttr "RT_FINGD__Skeleton_visibility.o" "RT_FINGD__Skeleton.v";
connectAttr "RT_FINGD__Skeleton_lockInfluenceWeights.o" "RT_FINGD__Skeleton.liw"
		;
connectAttr "RT_FINGD__Skeleton_filmboxTypeID.o" "RT_FINGD__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGD__Skeleton.s" "RT_FINGD1__Skeleton.is";
connectAttr "RT_FINGD1__Skeleton_scaleX.o" "RT_FINGD1__Skeleton.sx";
connectAttr "RT_FINGD1__Skeleton_scaleY.o" "RT_FINGD1__Skeleton.sy";
connectAttr "RT_FINGD1__Skeleton_scaleZ.o" "RT_FINGD1__Skeleton.sz";
connectAttr "RT_FINGD1__Skeleton_rotateX.o" "RT_FINGD1__Skeleton.rx";
connectAttr "RT_FINGD1__Skeleton_rotateY.o" "RT_FINGD1__Skeleton.ry";
connectAttr "RT_FINGD1__Skeleton_rotateZ.o" "RT_FINGD1__Skeleton.rz";
connectAttr "RT_FINGD1__Skeleton_translateX.o" "RT_FINGD1__Skeleton.tx";
connectAttr "RT_FINGD1__Skeleton_translateY.o" "RT_FINGD1__Skeleton.ty";
connectAttr "RT_FINGD1__Skeleton_translateZ.o" "RT_FINGD1__Skeleton.tz";
connectAttr "RT_FINGD1__Skeleton_visibility.o" "RT_FINGD1__Skeleton.v";
connectAttr "RT_FINGD1__Skeleton_lockInfluenceWeights.o" "RT_FINGD1__Skeleton.liw"
		;
connectAttr "RT_FINGD1__Skeleton_filmboxTypeID.o" "RT_FINGD1__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGD1__Skeleton.s" "RT_FINGD2__Skeleton.is";
connectAttr "RT_FINGD2__Skeleton_scaleX.o" "RT_FINGD2__Skeleton.sx";
connectAttr "RT_FINGD2__Skeleton_scaleY.o" "RT_FINGD2__Skeleton.sy";
connectAttr "RT_FINGD2__Skeleton_scaleZ.o" "RT_FINGD2__Skeleton.sz";
connectAttr "RT_FINGD2__Skeleton_rotateX.o" "RT_FINGD2__Skeleton.rx";
connectAttr "RT_FINGD2__Skeleton_rotateY.o" "RT_FINGD2__Skeleton.ry";
connectAttr "RT_FINGD2__Skeleton_rotateZ.o" "RT_FINGD2__Skeleton.rz";
connectAttr "RT_FINGD2__Skeleton_translateX.o" "RT_FINGD2__Skeleton.tx";
connectAttr "RT_FINGD2__Skeleton_translateY.o" "RT_FINGD2__Skeleton.ty";
connectAttr "RT_FINGD2__Skeleton_translateZ.o" "RT_FINGD2__Skeleton.tz";
connectAttr "RT_FINGD2__Skeleton_visibility.o" "RT_FINGD2__Skeleton.v";
connectAttr "RT_FINGD2__Skeleton_lockInfluenceWeights.o" "RT_FINGD2__Skeleton.liw"
		;
connectAttr "RT_FINGD2__Skeleton_filmboxTypeID.o" "RT_FINGD2__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGD2__Skeleton.s" "RT_FINGD_END__Skeleton.is";
connectAttr "RT_FINGD_END__Skeleton_rotateX.o" "RT_FINGD_END__Skeleton.rx";
connectAttr "RT_FINGD_END__Skeleton_rotateY.o" "RT_FINGD_END__Skeleton.ry";
connectAttr "RT_FINGD_END__Skeleton_rotateZ.o" "RT_FINGD_END__Skeleton.rz";
connectAttr "RT_FINGD_END__Skeleton_translateX.o" "RT_FINGD_END__Skeleton.tx";
connectAttr "RT_FINGD_END__Skeleton_translateY.o" "RT_FINGD_END__Skeleton.ty";
connectAttr "RT_FINGD_END__Skeleton_translateZ.o" "RT_FINGD_END__Skeleton.tz";
connectAttr "RT_FINGD_END__Skeleton_scaleX.o" "RT_FINGD_END__Skeleton.sx";
connectAttr "RT_FINGD_END__Skeleton_scaleY.o" "RT_FINGD_END__Skeleton.sy";
connectAttr "RT_FINGD_END__Skeleton_scaleZ.o" "RT_FINGD_END__Skeleton.sz";
connectAttr "RT_FINGD_END__Skeleton_visibility.o" "RT_FINGD_END__Skeleton.v";
connectAttr "RT_FINGD_END__Skeleton_lockInfluenceWeights.o" "RT_FINGD_END__Skeleton.liw"
		;
connectAttr "RT_FINGD_END__Skeleton_filmboxTypeID.o" "RT_FINGD_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_W__Skeleton.s" "RT_FINGC__Skeleton.is";
connectAttr "RT_FINGC__Skeleton_scaleX.o" "RT_FINGC__Skeleton.sx";
connectAttr "RT_FINGC__Skeleton_scaleY.o" "RT_FINGC__Skeleton.sy";
connectAttr "RT_FINGC__Skeleton_scaleZ.o" "RT_FINGC__Skeleton.sz";
connectAttr "RT_FINGC__Skeleton_rotateX.o" "RT_FINGC__Skeleton.rx";
connectAttr "RT_FINGC__Skeleton_rotateY.o" "RT_FINGC__Skeleton.ry";
connectAttr "RT_FINGC__Skeleton_rotateZ.o" "RT_FINGC__Skeleton.rz";
connectAttr "RT_FINGC__Skeleton_translateX.o" "RT_FINGC__Skeleton.tx";
connectAttr "RT_FINGC__Skeleton_translateY.o" "RT_FINGC__Skeleton.ty";
connectAttr "RT_FINGC__Skeleton_translateZ.o" "RT_FINGC__Skeleton.tz";
connectAttr "RT_FINGC__Skeleton_visibility.o" "RT_FINGC__Skeleton.v";
connectAttr "RT_FINGC__Skeleton_lockInfluenceWeights.o" "RT_FINGC__Skeleton.liw"
		;
connectAttr "RT_FINGC__Skeleton_filmboxTypeID.o" "RT_FINGC__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGC__Skeleton.s" "RT_FINGC1__Skeleton.is";
connectAttr "RT_FINGC1__Skeleton_scaleX.o" "RT_FINGC1__Skeleton.sx";
connectAttr "RT_FINGC1__Skeleton_scaleY.o" "RT_FINGC1__Skeleton.sy";
connectAttr "RT_FINGC1__Skeleton_scaleZ.o" "RT_FINGC1__Skeleton.sz";
connectAttr "RT_FINGC1__Skeleton_rotateX.o" "RT_FINGC1__Skeleton.rx";
connectAttr "RT_FINGC1__Skeleton_rotateY.o" "RT_FINGC1__Skeleton.ry";
connectAttr "RT_FINGC1__Skeleton_rotateZ.o" "RT_FINGC1__Skeleton.rz";
connectAttr "RT_FINGC1__Skeleton_translateX.o" "RT_FINGC1__Skeleton.tx";
connectAttr "RT_FINGC1__Skeleton_translateY.o" "RT_FINGC1__Skeleton.ty";
connectAttr "RT_FINGC1__Skeleton_translateZ.o" "RT_FINGC1__Skeleton.tz";
connectAttr "RT_FINGC1__Skeleton_visibility.o" "RT_FINGC1__Skeleton.v";
connectAttr "RT_FINGC1__Skeleton_lockInfluenceWeights.o" "RT_FINGC1__Skeleton.liw"
		;
connectAttr "RT_FINGC1__Skeleton_filmboxTypeID.o" "RT_FINGC1__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGC1__Skeleton.s" "RT_FINGC2__Skeleton.is";
connectAttr "RT_FINGC2__Skeleton_scaleX.o" "RT_FINGC2__Skeleton.sx";
connectAttr "RT_FINGC2__Skeleton_scaleY.o" "RT_FINGC2__Skeleton.sy";
connectAttr "RT_FINGC2__Skeleton_scaleZ.o" "RT_FINGC2__Skeleton.sz";
connectAttr "RT_FINGC2__Skeleton_rotateX.o" "RT_FINGC2__Skeleton.rx";
connectAttr "RT_FINGC2__Skeleton_rotateY.o" "RT_FINGC2__Skeleton.ry";
connectAttr "RT_FINGC2__Skeleton_rotateZ.o" "RT_FINGC2__Skeleton.rz";
connectAttr "RT_FINGC2__Skeleton_translateX.o" "RT_FINGC2__Skeleton.tx";
connectAttr "RT_FINGC2__Skeleton_translateY.o" "RT_FINGC2__Skeleton.ty";
connectAttr "RT_FINGC2__Skeleton_translateZ.o" "RT_FINGC2__Skeleton.tz";
connectAttr "RT_FINGC2__Skeleton_visibility.o" "RT_FINGC2__Skeleton.v";
connectAttr "RT_FINGC2__Skeleton_lockInfluenceWeights.o" "RT_FINGC2__Skeleton.liw"
		;
connectAttr "RT_FINGC2__Skeleton_filmboxTypeID.o" "RT_FINGC2__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGC2__Skeleton.s" "RT_FINGC_END__Skeleton.is";
connectAttr "RT_FINGC_END__Skeleton_rotateX.o" "RT_FINGC_END__Skeleton.rx";
connectAttr "RT_FINGC_END__Skeleton_rotateY.o" "RT_FINGC_END__Skeleton.ry";
connectAttr "RT_FINGC_END__Skeleton_rotateZ.o" "RT_FINGC_END__Skeleton.rz";
connectAttr "RT_FINGC_END__Skeleton_translateX.o" "RT_FINGC_END__Skeleton.tx";
connectAttr "RT_FINGC_END__Skeleton_translateY.o" "RT_FINGC_END__Skeleton.ty";
connectAttr "RT_FINGC_END__Skeleton_translateZ.o" "RT_FINGC_END__Skeleton.tz";
connectAttr "RT_FINGC_END__Skeleton_scaleX.o" "RT_FINGC_END__Skeleton.sx";
connectAttr "RT_FINGC_END__Skeleton_scaleY.o" "RT_FINGC_END__Skeleton.sy";
connectAttr "RT_FINGC_END__Skeleton_scaleZ.o" "RT_FINGC_END__Skeleton.sz";
connectAttr "RT_FINGC_END__Skeleton_visibility.o" "RT_FINGC_END__Skeleton.v";
connectAttr "RT_FINGC_END__Skeleton_lockInfluenceWeights.o" "RT_FINGC_END__Skeleton.liw"
		;
connectAttr "RT_FINGC_END__Skeleton_filmboxTypeID.o" "RT_FINGC_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_W__Skeleton.s" "RT_FINGB__Skeleton.is";
connectAttr "RT_FINGB__Skeleton_scaleX.o" "RT_FINGB__Skeleton.sx";
connectAttr "RT_FINGB__Skeleton_scaleY.o" "RT_FINGB__Skeleton.sy";
connectAttr "RT_FINGB__Skeleton_scaleZ.o" "RT_FINGB__Skeleton.sz";
connectAttr "RT_FINGB__Skeleton_rotateX.o" "RT_FINGB__Skeleton.rx";
connectAttr "RT_FINGB__Skeleton_rotateY.o" "RT_FINGB__Skeleton.ry";
connectAttr "RT_FINGB__Skeleton_rotateZ.o" "RT_FINGB__Skeleton.rz";
connectAttr "RT_FINGB__Skeleton_translateX.o" "RT_FINGB__Skeleton.tx";
connectAttr "RT_FINGB__Skeleton_translateY.o" "RT_FINGB__Skeleton.ty";
connectAttr "RT_FINGB__Skeleton_translateZ.o" "RT_FINGB__Skeleton.tz";
connectAttr "RT_FINGB__Skeleton_visibility.o" "RT_FINGB__Skeleton.v";
connectAttr "RT_FINGB__Skeleton_lockInfluenceWeights.o" "RT_FINGB__Skeleton.liw"
		;
connectAttr "RT_FINGB__Skeleton_filmboxTypeID.o" "RT_FINGB__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGB__Skeleton.s" "RT_FINGB1__Skeleton.is";
connectAttr "RT_FINGB1__Skeleton_scaleX.o" "RT_FINGB1__Skeleton.sx";
connectAttr "RT_FINGB1__Skeleton_scaleY.o" "RT_FINGB1__Skeleton.sy";
connectAttr "RT_FINGB1__Skeleton_scaleZ.o" "RT_FINGB1__Skeleton.sz";
connectAttr "RT_FINGB1__Skeleton_rotateX.o" "RT_FINGB1__Skeleton.rx";
connectAttr "RT_FINGB1__Skeleton_rotateY.o" "RT_FINGB1__Skeleton.ry";
connectAttr "RT_FINGB1__Skeleton_rotateZ.o" "RT_FINGB1__Skeleton.rz";
connectAttr "RT_FINGB1__Skeleton_translateX.o" "RT_FINGB1__Skeleton.tx";
connectAttr "RT_FINGB1__Skeleton_translateY.o" "RT_FINGB1__Skeleton.ty";
connectAttr "RT_FINGB1__Skeleton_translateZ.o" "RT_FINGB1__Skeleton.tz";
connectAttr "RT_FINGB1__Skeleton_visibility.o" "RT_FINGB1__Skeleton.v";
connectAttr "RT_FINGB1__Skeleton_lockInfluenceWeights.o" "RT_FINGB1__Skeleton.liw"
		;
connectAttr "RT_FINGB1__Skeleton_filmboxTypeID.o" "RT_FINGB1__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGB1__Skeleton.s" "RT_FINGB2__Skeleton.is";
connectAttr "RT_FINGB2__Skeleton_scaleX.o" "RT_FINGB2__Skeleton.sx";
connectAttr "RT_FINGB2__Skeleton_scaleY.o" "RT_FINGB2__Skeleton.sy";
connectAttr "RT_FINGB2__Skeleton_scaleZ.o" "RT_FINGB2__Skeleton.sz";
connectAttr "RT_FINGB2__Skeleton_rotateX.o" "RT_FINGB2__Skeleton.rx";
connectAttr "RT_FINGB2__Skeleton_rotateY.o" "RT_FINGB2__Skeleton.ry";
connectAttr "RT_FINGB2__Skeleton_rotateZ.o" "RT_FINGB2__Skeleton.rz";
connectAttr "RT_FINGB2__Skeleton_translateX.o" "RT_FINGB2__Skeleton.tx";
connectAttr "RT_FINGB2__Skeleton_translateY.o" "RT_FINGB2__Skeleton.ty";
connectAttr "RT_FINGB2__Skeleton_translateZ.o" "RT_FINGB2__Skeleton.tz";
connectAttr "RT_FINGB2__Skeleton_visibility.o" "RT_FINGB2__Skeleton.v";
connectAttr "RT_FINGB2__Skeleton_lockInfluenceWeights.o" "RT_FINGB2__Skeleton.liw"
		;
connectAttr "RT_FINGB2__Skeleton_filmboxTypeID.o" "RT_FINGB2__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGB2__Skeleton.s" "RT_FINGB_END__Skeleton.is";
connectAttr "RT_FINGB_END__Skeleton_rotateX.o" "RT_FINGB_END__Skeleton.rx";
connectAttr "RT_FINGB_END__Skeleton_rotateY.o" "RT_FINGB_END__Skeleton.ry";
connectAttr "RT_FINGB_END__Skeleton_rotateZ.o" "RT_FINGB_END__Skeleton.rz";
connectAttr "RT_FINGB_END__Skeleton_translateX.o" "RT_FINGB_END__Skeleton.tx";
connectAttr "RT_FINGB_END__Skeleton_translateY.o" "RT_FINGB_END__Skeleton.ty";
connectAttr "RT_FINGB_END__Skeleton_translateZ.o" "RT_FINGB_END__Skeleton.tz";
connectAttr "RT_FINGB_END__Skeleton_scaleX.o" "RT_FINGB_END__Skeleton.sx";
connectAttr "RT_FINGB_END__Skeleton_scaleY.o" "RT_FINGB_END__Skeleton.sy";
connectAttr "RT_FINGB_END__Skeleton_scaleZ.o" "RT_FINGB_END__Skeleton.sz";
connectAttr "RT_FINGB_END__Skeleton_visibility.o" "RT_FINGB_END__Skeleton.v";
connectAttr "RT_FINGB_END__Skeleton_lockInfluenceWeights.o" "RT_FINGB_END__Skeleton.liw"
		;
connectAttr "RT_FINGB_END__Skeleton_filmboxTypeID.o" "RT_FINGB_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_W__Skeleton.s" "RT_FINGA__Skeleton.is";
connectAttr "RT_FINGA__Skeleton_scaleX.o" "RT_FINGA__Skeleton.sx";
connectAttr "RT_FINGA__Skeleton_scaleY.o" "RT_FINGA__Skeleton.sy";
connectAttr "RT_FINGA__Skeleton_scaleZ.o" "RT_FINGA__Skeleton.sz";
connectAttr "RT_FINGA__Skeleton_rotateX.o" "RT_FINGA__Skeleton.rx";
connectAttr "RT_FINGA__Skeleton_rotateY.o" "RT_FINGA__Skeleton.ry";
connectAttr "RT_FINGA__Skeleton_rotateZ.o" "RT_FINGA__Skeleton.rz";
connectAttr "RT_FINGA__Skeleton_translateX.o" "RT_FINGA__Skeleton.tx";
connectAttr "RT_FINGA__Skeleton_translateY.o" "RT_FINGA__Skeleton.ty";
connectAttr "RT_FINGA__Skeleton_translateZ.o" "RT_FINGA__Skeleton.tz";
connectAttr "RT_FINGA__Skeleton_visibility.o" "RT_FINGA__Skeleton.v";
connectAttr "RT_FINGA__Skeleton_lockInfluenceWeights.o" "RT_FINGA__Skeleton.liw"
		;
connectAttr "RT_FINGA__Skeleton_filmboxTypeID.o" "RT_FINGA__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGA__Skeleton.s" "RT_FINGA1__Skeleton.is";
connectAttr "RT_FINGA1__Skeleton_scaleX.o" "RT_FINGA1__Skeleton.sx";
connectAttr "RT_FINGA1__Skeleton_scaleY.o" "RT_FINGA1__Skeleton.sy";
connectAttr "RT_FINGA1__Skeleton_scaleZ.o" "RT_FINGA1__Skeleton.sz";
connectAttr "RT_FINGA1__Skeleton_rotateX.o" "RT_FINGA1__Skeleton.rx";
connectAttr "RT_FINGA1__Skeleton_rotateY.o" "RT_FINGA1__Skeleton.ry";
connectAttr "RT_FINGA1__Skeleton_rotateZ.o" "RT_FINGA1__Skeleton.rz";
connectAttr "RT_FINGA1__Skeleton_translateX.o" "RT_FINGA1__Skeleton.tx";
connectAttr "RT_FINGA1__Skeleton_translateY.o" "RT_FINGA1__Skeleton.ty";
connectAttr "RT_FINGA1__Skeleton_translateZ.o" "RT_FINGA1__Skeleton.tz";
connectAttr "RT_FINGA1__Skeleton_visibility.o" "RT_FINGA1__Skeleton.v";
connectAttr "RT_FINGA1__Skeleton_lockInfluenceWeights.o" "RT_FINGA1__Skeleton.liw"
		;
connectAttr "RT_FINGA1__Skeleton_filmboxTypeID.o" "RT_FINGA1__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGA1__Skeleton.s" "RT_FINGA2__Skeleton.is";
connectAttr "RT_FINGA2__Skeleton_scaleX.o" "RT_FINGA2__Skeleton.sx";
connectAttr "RT_FINGA2__Skeleton_scaleY.o" "RT_FINGA2__Skeleton.sy";
connectAttr "RT_FINGA2__Skeleton_scaleZ.o" "RT_FINGA2__Skeleton.sz";
connectAttr "RT_FINGA2__Skeleton_rotateX.o" "RT_FINGA2__Skeleton.rx";
connectAttr "RT_FINGA2__Skeleton_rotateY.o" "RT_FINGA2__Skeleton.ry";
connectAttr "RT_FINGA2__Skeleton_rotateZ.o" "RT_FINGA2__Skeleton.rz";
connectAttr "RT_FINGA2__Skeleton_translateX.o" "RT_FINGA2__Skeleton.tx";
connectAttr "RT_FINGA2__Skeleton_translateY.o" "RT_FINGA2__Skeleton.ty";
connectAttr "RT_FINGA2__Skeleton_translateZ.o" "RT_FINGA2__Skeleton.tz";
connectAttr "RT_FINGA2__Skeleton_visibility.o" "RT_FINGA2__Skeleton.v";
connectAttr "RT_FINGA2__Skeleton_lockInfluenceWeights.o" "RT_FINGA2__Skeleton.liw"
		;
connectAttr "RT_FINGA2__Skeleton_filmboxTypeID.o" "RT_FINGA2__Skeleton.filmboxTypeID"
		;
connectAttr "RT_FINGA2__Skeleton.s" "RT_FINGA_END__Skeleton.is";
connectAttr "RT_FINGA_END__Skeleton_rotateX.o" "RT_FINGA_END__Skeleton.rx";
connectAttr "RT_FINGA_END__Skeleton_rotateY.o" "RT_FINGA_END__Skeleton.ry";
connectAttr "RT_FINGA_END__Skeleton_rotateZ.o" "RT_FINGA_END__Skeleton.rz";
connectAttr "RT_FINGA_END__Skeleton_translateX.o" "RT_FINGA_END__Skeleton.tx";
connectAttr "RT_FINGA_END__Skeleton_translateY.o" "RT_FINGA_END__Skeleton.ty";
connectAttr "RT_FINGA_END__Skeleton_translateZ.o" "RT_FINGA_END__Skeleton.tz";
connectAttr "RT_FINGA_END__Skeleton_scaleX.o" "RT_FINGA_END__Skeleton.sx";
connectAttr "RT_FINGA_END__Skeleton_scaleY.o" "RT_FINGA_END__Skeleton.sy";
connectAttr "RT_FINGA_END__Skeleton_scaleZ.o" "RT_FINGA_END__Skeleton.sz";
connectAttr "RT_FINGA_END__Skeleton_visibility.o" "RT_FINGA_END__Skeleton.v";
connectAttr "RT_FINGA_END__Skeleton_lockInfluenceWeights.o" "RT_FINGA_END__Skeleton.liw"
		;
connectAttr "RT_FINGA_END__Skeleton_filmboxTypeID.o" "RT_FINGA_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_W__Skeleton.s" "RT_THUMB__Skeleton.is";
connectAttr "RT_THUMB__Skeleton_scaleX.o" "RT_THUMB__Skeleton.sx";
connectAttr "RT_THUMB__Skeleton_scaleY.o" "RT_THUMB__Skeleton.sy";
connectAttr "RT_THUMB__Skeleton_scaleZ.o" "RT_THUMB__Skeleton.sz";
connectAttr "RT_THUMB__Skeleton_rotateX.o" "RT_THUMB__Skeleton.rx";
connectAttr "RT_THUMB__Skeleton_rotateY.o" "RT_THUMB__Skeleton.ry";
connectAttr "RT_THUMB__Skeleton_rotateZ.o" "RT_THUMB__Skeleton.rz";
connectAttr "RT_THUMB__Skeleton_translateX.o" "RT_THUMB__Skeleton.tx";
connectAttr "RT_THUMB__Skeleton_translateY.o" "RT_THUMB__Skeleton.ty";
connectAttr "RT_THUMB__Skeleton_translateZ.o" "RT_THUMB__Skeleton.tz";
connectAttr "RT_THUMB__Skeleton_visibility.o" "RT_THUMB__Skeleton.v";
connectAttr "RT_THUMB__Skeleton_lockInfluenceWeights.o" "RT_THUMB__Skeleton.liw"
		;
connectAttr "RT_THUMB__Skeleton_filmboxTypeID.o" "RT_THUMB__Skeleton.filmboxTypeID"
		;
connectAttr "RT_THUMB__Skeleton.s" "RT_THUMB1__Skeleton.is";
connectAttr "RT_THUMB1__Skeleton_scaleX.o" "RT_THUMB1__Skeleton.sx";
connectAttr "RT_THUMB1__Skeleton_scaleY.o" "RT_THUMB1__Skeleton.sy";
connectAttr "RT_THUMB1__Skeleton_scaleZ.o" "RT_THUMB1__Skeleton.sz";
connectAttr "RT_THUMB1__Skeleton_rotateX.o" "RT_THUMB1__Skeleton.rx";
connectAttr "RT_THUMB1__Skeleton_rotateY.o" "RT_THUMB1__Skeleton.ry";
connectAttr "RT_THUMB1__Skeleton_rotateZ.o" "RT_THUMB1__Skeleton.rz";
connectAttr "RT_THUMB1__Skeleton_translateX.o" "RT_THUMB1__Skeleton.tx";
connectAttr "RT_THUMB1__Skeleton_translateY.o" "RT_THUMB1__Skeleton.ty";
connectAttr "RT_THUMB1__Skeleton_translateZ.o" "RT_THUMB1__Skeleton.tz";
connectAttr "RT_THUMB1__Skeleton_visibility.o" "RT_THUMB1__Skeleton.v";
connectAttr "RT_THUMB1__Skeleton_lockInfluenceWeights.o" "RT_THUMB1__Skeleton.liw"
		;
connectAttr "RT_THUMB1__Skeleton_filmboxTypeID.o" "RT_THUMB1__Skeleton.filmboxTypeID"
		;
connectAttr "RT_THUMB1__Skeleton.s" "RT_THUMB2__Skeleton.is";
connectAttr "RT_THUMB2__Skeleton_scaleX.o" "RT_THUMB2__Skeleton.sx";
connectAttr "RT_THUMB2__Skeleton_scaleY.o" "RT_THUMB2__Skeleton.sy";
connectAttr "RT_THUMB2__Skeleton_scaleZ.o" "RT_THUMB2__Skeleton.sz";
connectAttr "RT_THUMB2__Skeleton_rotateX.o" "RT_THUMB2__Skeleton.rx";
connectAttr "RT_THUMB2__Skeleton_rotateY.o" "RT_THUMB2__Skeleton.ry";
connectAttr "RT_THUMB2__Skeleton_rotateZ.o" "RT_THUMB2__Skeleton.rz";
connectAttr "RT_THUMB2__Skeleton_translateX.o" "RT_THUMB2__Skeleton.tx";
connectAttr "RT_THUMB2__Skeleton_translateY.o" "RT_THUMB2__Skeleton.ty";
connectAttr "RT_THUMB2__Skeleton_translateZ.o" "RT_THUMB2__Skeleton.tz";
connectAttr "RT_THUMB2__Skeleton_visibility.o" "RT_THUMB2__Skeleton.v";
connectAttr "RT_THUMB2__Skeleton_lockInfluenceWeights.o" "RT_THUMB2__Skeleton.liw"
		;
connectAttr "RT_THUMB2__Skeleton_filmboxTypeID.o" "RT_THUMB2__Skeleton.filmboxTypeID"
		;
connectAttr "RT_THUMB2__Skeleton.s" "RT_THUMB_END__Skeleton.is";
connectAttr "RT_THUMB_END__Skeleton_rotateX.o" "RT_THUMB_END__Skeleton.rx";
connectAttr "RT_THUMB_END__Skeleton_rotateY.o" "RT_THUMB_END__Skeleton.ry";
connectAttr "RT_THUMB_END__Skeleton_rotateZ.o" "RT_THUMB_END__Skeleton.rz";
connectAttr "RT_THUMB_END__Skeleton_translateX.o" "RT_THUMB_END__Skeleton.tx";
connectAttr "RT_THUMB_END__Skeleton_translateY.o" "RT_THUMB_END__Skeleton.ty";
connectAttr "RT_THUMB_END__Skeleton_translateZ.o" "RT_THUMB_END__Skeleton.tz";
connectAttr "RT_THUMB_END__Skeleton_scaleX.o" "RT_THUMB_END__Skeleton.sx";
connectAttr "RT_THUMB_END__Skeleton_scaleY.o" "RT_THUMB_END__Skeleton.sy";
connectAttr "RT_THUMB_END__Skeleton_scaleZ.o" "RT_THUMB_END__Skeleton.sz";
connectAttr "RT_THUMB_END__Skeleton_visibility.o" "RT_THUMB_END__Skeleton.v";
connectAttr "RT_THUMB_END__Skeleton_lockInfluenceWeights.o" "RT_THUMB_END__Skeleton.liw"
		;
connectAttr "RT_THUMB_END__Skeleton_filmboxTypeID.o" "RT_THUMB_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_W__Skeleton.s" "RT_PROP__Skeleton.is";
connectAttr "RT_PROP__Skeleton_scaleX.o" "RT_PROP__Skeleton.sx";
connectAttr "RT_PROP__Skeleton_scaleY.o" "RT_PROP__Skeleton.sy";
connectAttr "RT_PROP__Skeleton_scaleZ.o" "RT_PROP__Skeleton.sz";
connectAttr "RT_PROP__Skeleton_rotateX.o" "RT_PROP__Skeleton.rx";
connectAttr "RT_PROP__Skeleton_rotateY.o" "RT_PROP__Skeleton.ry";
connectAttr "RT_PROP__Skeleton_rotateZ.o" "RT_PROP__Skeleton.rz";
connectAttr "RT_PROP__Skeleton_translateX.o" "RT_PROP__Skeleton.tx";
connectAttr "RT_PROP__Skeleton_translateY.o" "RT_PROP__Skeleton.ty";
connectAttr "RT_PROP__Skeleton_translateZ.o" "RT_PROP__Skeleton.tz";
connectAttr "RT_PROP__Skeleton_visibility.o" "RT_PROP__Skeleton.v";
connectAttr "RT_PROP__Skeleton_lockInfluenceWeights.o" "RT_PROP__Skeleton.liw";
connectAttr "RT_PROP__Skeleton_filmboxTypeID.o" "RT_PROP__Skeleton.filmboxTypeID"
		;
connectAttr "RT_PROP__Skeleton.s" "RT_PROP_END__Skeleton.is";
connectAttr "RT_PROP_END__Skeleton_rotateX.o" "RT_PROP_END__Skeleton.rx";
connectAttr "RT_PROP_END__Skeleton_rotateY.o" "RT_PROP_END__Skeleton.ry";
connectAttr "RT_PROP_END__Skeleton_rotateZ.o" "RT_PROP_END__Skeleton.rz";
connectAttr "RT_PROP_END__Skeleton_translateX.o" "RT_PROP_END__Skeleton.tx";
connectAttr "RT_PROP_END__Skeleton_translateY.o" "RT_PROP_END__Skeleton.ty";
connectAttr "RT_PROP_END__Skeleton_translateZ.o" "RT_PROP_END__Skeleton.tz";
connectAttr "RT_PROP_END__Skeleton_scaleX.o" "RT_PROP_END__Skeleton.sx";
connectAttr "RT_PROP_END__Skeleton_scaleY.o" "RT_PROP_END__Skeleton.sy";
connectAttr "RT_PROP_END__Skeleton_scaleZ.o" "RT_PROP_END__Skeleton.sz";
connectAttr "RT_PROP_END__Skeleton_visibility.o" "RT_PROP_END__Skeleton.v";
connectAttr "RT_PROP_END__Skeleton_lockInfluenceWeights.o" "RT_PROP_END__Skeleton.liw"
		;
connectAttr "RT_PROP_END__Skeleton_filmboxTypeID.o" "RT_PROP_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_W__Skeleton.s" "RT_SPECIAL__Skeleton.is";
connectAttr "RT_SPECIAL__Skeleton_scaleX.o" "RT_SPECIAL__Skeleton.sx";
connectAttr "RT_SPECIAL__Skeleton_scaleY.o" "RT_SPECIAL__Skeleton.sy";
connectAttr "RT_SPECIAL__Skeleton_scaleZ.o" "RT_SPECIAL__Skeleton.sz";
connectAttr "RT_SPECIAL__Skeleton_rotateX.o" "RT_SPECIAL__Skeleton.rx";
connectAttr "RT_SPECIAL__Skeleton_rotateY.o" "RT_SPECIAL__Skeleton.ry";
connectAttr "RT_SPECIAL__Skeleton_rotateZ.o" "RT_SPECIAL__Skeleton.rz";
connectAttr "RT_SPECIAL__Skeleton_translateX.o" "RT_SPECIAL__Skeleton.tx";
connectAttr "RT_SPECIAL__Skeleton_translateY.o" "RT_SPECIAL__Skeleton.ty";
connectAttr "RT_SPECIAL__Skeleton_translateZ.o" "RT_SPECIAL__Skeleton.tz";
connectAttr "RT_SPECIAL__Skeleton_visibility.o" "RT_SPECIAL__Skeleton.v";
connectAttr "RT_SPECIAL__Skeleton_lockInfluenceWeights.o" "RT_SPECIAL__Skeleton.liw"
		;
connectAttr "RT_SPECIAL__Skeleton_filmboxTypeID.o" "RT_SPECIAL__Skeleton.filmboxTypeID"
		;
connectAttr "RT_SPECIAL__Skeleton.s" "RT_SPECIAL_END__Skeleton.is";
connectAttr "RT_SPECIAL_END__Skeleton_rotateX.o" "RT_SPECIAL_END__Skeleton.rx";
connectAttr "RT_SPECIAL_END__Skeleton_rotateY.o" "RT_SPECIAL_END__Skeleton.ry";
connectAttr "RT_SPECIAL_END__Skeleton_rotateZ.o" "RT_SPECIAL_END__Skeleton.rz";
connectAttr "RT_SPECIAL_END__Skeleton_translateX.o" "RT_SPECIAL_END__Skeleton.tx"
		;
connectAttr "RT_SPECIAL_END__Skeleton_translateY.o" "RT_SPECIAL_END__Skeleton.ty"
		;
connectAttr "RT_SPECIAL_END__Skeleton_translateZ.o" "RT_SPECIAL_END__Skeleton.tz"
		;
connectAttr "RT_SPECIAL_END__Skeleton_scaleX.o" "RT_SPECIAL_END__Skeleton.sx";
connectAttr "RT_SPECIAL_END__Skeleton_scaleY.o" "RT_SPECIAL_END__Skeleton.sy";
connectAttr "RT_SPECIAL_END__Skeleton_scaleZ.o" "RT_SPECIAL_END__Skeleton.sz";
connectAttr "RT_SPECIAL_END__Skeleton_visibility.o" "RT_SPECIAL_END__Skeleton.v"
		;
connectAttr "RT_SPECIAL_END__Skeleton_lockInfluenceWeights.o" "RT_SPECIAL_END__Skeleton.liw"
		;
connectAttr "RT_SPECIAL_END__Skeleton_filmboxTypeID.o" "RT_SPECIAL_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_E__Skeleton.s" "RT_E_TWIST__Skeleton.is";
connectAttr "RT_E_TWIST__Skeleton_scaleX.o" "RT_E_TWIST__Skeleton.sx";
connectAttr "RT_E_TWIST__Skeleton_scaleY.o" "RT_E_TWIST__Skeleton.sy";
connectAttr "RT_E_TWIST__Skeleton_scaleZ.o" "RT_E_TWIST__Skeleton.sz";
connectAttr "RT_E_TWIST__Skeleton_rotateX.o" "RT_E_TWIST__Skeleton.rx";
connectAttr "RT_E_TWIST__Skeleton_rotateY.o" "RT_E_TWIST__Skeleton.ry";
connectAttr "RT_E_TWIST__Skeleton_rotateZ.o" "RT_E_TWIST__Skeleton.rz";
connectAttr "RT_E_TWIST__Skeleton_translateX.o" "RT_E_TWIST__Skeleton.tx";
connectAttr "RT_E_TWIST__Skeleton_translateY.o" "RT_E_TWIST__Skeleton.ty";
connectAttr "RT_E_TWIST__Skeleton_translateZ.o" "RT_E_TWIST__Skeleton.tz";
connectAttr "RT_E_TWIST__Skeleton_visibility.o" "RT_E_TWIST__Skeleton.v";
connectAttr "RT_E_TWIST__Skeleton_lockInfluenceWeights.o" "RT_E_TWIST__Skeleton.liw"
		;
connectAttr "RT_E_TWIST__Skeleton_filmboxTypeID.o" "RT_E_TWIST__Skeleton.filmboxTypeID"
		;
connectAttr "RT_E_TWIST__Skeleton.s" "RT_E_TWIST_END__Skeleton.is";
connectAttr "RT_E_TWIST_END__Skeleton_rotateX.o" "RT_E_TWIST_END__Skeleton.rx";
connectAttr "RT_E_TWIST_END__Skeleton_rotateY.o" "RT_E_TWIST_END__Skeleton.ry";
connectAttr "RT_E_TWIST_END__Skeleton_rotateZ.o" "RT_E_TWIST_END__Skeleton.rz";
connectAttr "RT_E_TWIST_END__Skeleton_translateX.o" "RT_E_TWIST_END__Skeleton.tx"
		;
connectAttr "RT_E_TWIST_END__Skeleton_translateY.o" "RT_E_TWIST_END__Skeleton.ty"
		;
connectAttr "RT_E_TWIST_END__Skeleton_translateZ.o" "RT_E_TWIST_END__Skeleton.tz"
		;
connectAttr "RT_E_TWIST_END__Skeleton_scaleX.o" "RT_E_TWIST_END__Skeleton.sx";
connectAttr "RT_E_TWIST_END__Skeleton_scaleY.o" "RT_E_TWIST_END__Skeleton.sy";
connectAttr "RT_E_TWIST_END__Skeleton_scaleZ.o" "RT_E_TWIST_END__Skeleton.sz";
connectAttr "RT_E_TWIST_END__Skeleton_visibility.o" "RT_E_TWIST_END__Skeleton.v"
		;
connectAttr "RT_E_TWIST_END__Skeleton_lockInfluenceWeights.o" "RT_E_TWIST_END__Skeleton.liw"
		;
connectAttr "RT_E_TWIST_END__Skeleton_filmboxTypeID.o" "RT_E_TWIST_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_E__Skeleton.s" "RT_SC_E__Skeleton.is";
connectAttr "RT_SC_E__Skeleton_scaleY.o" "RT_SC_E__Skeleton.sy";
connectAttr "RT_SC_E__Skeleton_scaleZ.o" "RT_SC_E__Skeleton.sz";
connectAttr "RT_SC_E__Skeleton_scaleX.o" "RT_SC_E__Skeleton.sx";
connectAttr "RT_SC_E__Skeleton_rotateX.o" "RT_SC_E__Skeleton.rx";
connectAttr "RT_SC_E__Skeleton_rotateY.o" "RT_SC_E__Skeleton.ry";
connectAttr "RT_SC_E__Skeleton_rotateZ.o" "RT_SC_E__Skeleton.rz";
connectAttr "RT_SC_E__Skeleton_translateX.o" "RT_SC_E__Skeleton.tx";
connectAttr "RT_SC_E__Skeleton_translateY.o" "RT_SC_E__Skeleton.ty";
connectAttr "RT_SC_E__Skeleton_translateZ.o" "RT_SC_E__Skeleton.tz";
connectAttr "RT_SC_E__Skeleton_visibility.o" "RT_SC_E__Skeleton.v";
connectAttr "RT_SC_E__Skeleton_lockInfluenceWeights.o" "RT_SC_E__Skeleton.liw";
connectAttr "RT_SC_E__Skeleton_filmboxTypeID.o" "RT_SC_E__Skeleton.filmboxTypeID"
		;
connectAttr "RT_SC_E__Skeleton.s" "RT_SC_E_END__Skeleton.is";
connectAttr "RT_SC_E_END__Skeleton_rotateX.o" "RT_SC_E_END__Skeleton.rx";
connectAttr "RT_SC_E_END__Skeleton_rotateY.o" "RT_SC_E_END__Skeleton.ry";
connectAttr "RT_SC_E_END__Skeleton_rotateZ.o" "RT_SC_E_END__Skeleton.rz";
connectAttr "RT_SC_E_END__Skeleton_translateX.o" "RT_SC_E_END__Skeleton.tx";
connectAttr "RT_SC_E_END__Skeleton_translateY.o" "RT_SC_E_END__Skeleton.ty";
connectAttr "RT_SC_E_END__Skeleton_translateZ.o" "RT_SC_E_END__Skeleton.tz";
connectAttr "RT_SC_E_END__Skeleton_scaleX.o" "RT_SC_E_END__Skeleton.sx";
connectAttr "RT_SC_E_END__Skeleton_scaleY.o" "RT_SC_E_END__Skeleton.sy";
connectAttr "RT_SC_E_END__Skeleton_scaleZ.o" "RT_SC_E_END__Skeleton.sz";
connectAttr "RT_SC_E_END__Skeleton_visibility.o" "RT_SC_E_END__Skeleton.v";
connectAttr "RT_SC_E_END__Skeleton_lockInfluenceWeights.o" "RT_SC_E_END__Skeleton.liw"
		;
connectAttr "RT_SC_E_END__Skeleton_filmboxTypeID.o" "RT_SC_E_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_S__Skeleton.s" "RT_SC_S__Skeleton.is";
connectAttr "RT_SC_S__Skeleton_scaleY.o" "RT_SC_S__Skeleton.sy";
connectAttr "RT_SC_S__Skeleton_scaleZ.o" "RT_SC_S__Skeleton.sz";
connectAttr "RT_SC_S__Skeleton_scaleX.o" "RT_SC_S__Skeleton.sx";
connectAttr "RT_SC_S__Skeleton_rotateX.o" "RT_SC_S__Skeleton.rx";
connectAttr "RT_SC_S__Skeleton_rotateY.o" "RT_SC_S__Skeleton.ry";
connectAttr "RT_SC_S__Skeleton_rotateZ.o" "RT_SC_S__Skeleton.rz";
connectAttr "RT_SC_S__Skeleton_translateX.o" "RT_SC_S__Skeleton.tx";
connectAttr "RT_SC_S__Skeleton_translateY.o" "RT_SC_S__Skeleton.ty";
connectAttr "RT_SC_S__Skeleton_translateZ.o" "RT_SC_S__Skeleton.tz";
connectAttr "RT_SC_S__Skeleton_visibility.o" "RT_SC_S__Skeleton.v";
connectAttr "RT_SC_S__Skeleton_lockInfluenceWeights.o" "RT_SC_S__Skeleton.liw";
connectAttr "RT_SC_S__Skeleton_filmboxTypeID.o" "RT_SC_S__Skeleton.filmboxTypeID"
		;
connectAttr "RT_SC_S__Skeleton.s" "RT_SC_S_END__Skeleton.is";
connectAttr "RT_SC_S_END__Skeleton_rotateX.o" "RT_SC_S_END__Skeleton.rx";
connectAttr "RT_SC_S_END__Skeleton_rotateY.o" "RT_SC_S_END__Skeleton.ry";
connectAttr "RT_SC_S_END__Skeleton_rotateZ.o" "RT_SC_S_END__Skeleton.rz";
connectAttr "RT_SC_S_END__Skeleton_translateX.o" "RT_SC_S_END__Skeleton.tx";
connectAttr "RT_SC_S_END__Skeleton_translateY.o" "RT_SC_S_END__Skeleton.ty";
connectAttr "RT_SC_S_END__Skeleton_translateZ.o" "RT_SC_S_END__Skeleton.tz";
connectAttr "RT_SC_S_END__Skeleton_scaleX.o" "RT_SC_S_END__Skeleton.sx";
connectAttr "RT_SC_S_END__Skeleton_scaleY.o" "RT_SC_S_END__Skeleton.sy";
connectAttr "RT_SC_S_END__Skeleton_scaleZ.o" "RT_SC_S_END__Skeleton.sz";
connectAttr "RT_SC_S_END__Skeleton_visibility.o" "RT_SC_S_END__Skeleton.v";
connectAttr "RT_SC_S_END__Skeleton_lockInfluenceWeights.o" "RT_SC_S_END__Skeleton.liw"
		;
connectAttr "RT_SC_S_END__Skeleton_filmboxTypeID.o" "RT_SC_S_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_S__Skeleton.s" "RT_SC_TWIST_S__Skeleton.is";
connectAttr "RT_SC_TWIST_S__Skeleton_scaleY.o" "RT_SC_TWIST_S__Skeleton.sy";
connectAttr "RT_SC_TWIST_S__Skeleton_scaleZ.o" "RT_SC_TWIST_S__Skeleton.sz";
connectAttr "RT_SC_TWIST_S__Skeleton_scaleX.o" "RT_SC_TWIST_S__Skeleton.sx";
connectAttr "RT_SC_TWIST_S__Skeleton_rotateX.o" "RT_SC_TWIST_S__Skeleton.rx";
connectAttr "RT_SC_TWIST_S__Skeleton_rotateY.o" "RT_SC_TWIST_S__Skeleton.ry";
connectAttr "RT_SC_TWIST_S__Skeleton_rotateZ.o" "RT_SC_TWIST_S__Skeleton.rz";
connectAttr "RT_SC_TWIST_S__Skeleton_translateX.o" "RT_SC_TWIST_S__Skeleton.tx";
connectAttr "RT_SC_TWIST_S__Skeleton_translateY.o" "RT_SC_TWIST_S__Skeleton.ty";
connectAttr "RT_SC_TWIST_S__Skeleton_translateZ.o" "RT_SC_TWIST_S__Skeleton.tz";
connectAttr "RT_SC_TWIST_S__Skeleton_visibility.o" "RT_SC_TWIST_S__Skeleton.v";
connectAttr "RT_SC_TWIST_S__Skeleton_lockInfluenceWeights.o" "RT_SC_TWIST_S__Skeleton.liw"
		;
connectAttr "RT_SC_TWIST_S__Skeleton_filmboxTypeID.o" "RT_SC_TWIST_S__Skeleton.filmboxTypeID"
		;
connectAttr "RT_SC_TWIST_S__Skeleton.s" "RT_SC_TWIST_S_END__Skeleton.is";
connectAttr "RT_SC_TWIST_S_END__Skeleton_rotateX.o" "RT_SC_TWIST_S_END__Skeleton.rx"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_rotateY.o" "RT_SC_TWIST_S_END__Skeleton.ry"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_rotateZ.o" "RT_SC_TWIST_S_END__Skeleton.rz"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_translateX.o" "RT_SC_TWIST_S_END__Skeleton.tx"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_translateY.o" "RT_SC_TWIST_S_END__Skeleton.ty"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_translateZ.o" "RT_SC_TWIST_S_END__Skeleton.tz"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_scaleX.o" "RT_SC_TWIST_S_END__Skeleton.sx"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_scaleY.o" "RT_SC_TWIST_S_END__Skeleton.sy"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_scaleZ.o" "RT_SC_TWIST_S_END__Skeleton.sz"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_visibility.o" "RT_SC_TWIST_S_END__Skeleton.v"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_lockInfluenceWeights.o" "RT_SC_TWIST_S_END__Skeleton.liw"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_filmboxTypeID.o" "RT_SC_TWIST_S_END__Skeleton.filmboxTypeID"
		;
connectAttr "BACKA__Skeleton.s" "SC_BACKA__Skeleton.is";
connectAttr "SC_BACKA__Skeleton_scaleX.o" "SC_BACKA__Skeleton.sx";
connectAttr "SC_BACKA__Skeleton_scaleZ.o" "SC_BACKA__Skeleton.sz";
connectAttr "SC_BACKA__Skeleton_scaleY.o" "SC_BACKA__Skeleton.sy";
connectAttr "SC_BACKA__Skeleton_translateX.o" "SC_BACKA__Skeleton.tx";
connectAttr "SC_BACKA__Skeleton_translateY.o" "SC_BACKA__Skeleton.ty";
connectAttr "SC_BACKA__Skeleton_translateZ.o" "SC_BACKA__Skeleton.tz";
connectAttr "SC_BACKA__Skeleton_rotateX.o" "SC_BACKA__Skeleton.rx";
connectAttr "SC_BACKA__Skeleton_rotateY.o" "SC_BACKA__Skeleton.ry";
connectAttr "SC_BACKA__Skeleton_rotateZ.o" "SC_BACKA__Skeleton.rz";
connectAttr "SC_BACKA__Skeleton_visibility.o" "SC_BACKA__Skeleton.v";
connectAttr "SC_BACKA__Skeleton_lockInfluenceWeights.o" "SC_BACKA__Skeleton.liw"
		;
connectAttr "SC_BACKA__Skeleton_filmboxTypeID.o" "SC_BACKA__Skeleton.filmboxTypeID"
		;
connectAttr "SC_BACKA__Skeleton.s" "SC_BACKA_END__Skeleton.is";
connectAttr "SC_BACKA_END__Skeleton_translateX.o" "SC_BACKA_END__Skeleton.tx";
connectAttr "SC_BACKA_END__Skeleton_translateY.o" "SC_BACKA_END__Skeleton.ty";
connectAttr "SC_BACKA_END__Skeleton_translateZ.o" "SC_BACKA_END__Skeleton.tz";
connectAttr "SC_BACKA_END__Skeleton_rotateX.o" "SC_BACKA_END__Skeleton.rx";
connectAttr "SC_BACKA_END__Skeleton_rotateY.o" "SC_BACKA_END__Skeleton.ry";
connectAttr "SC_BACKA_END__Skeleton_rotateZ.o" "SC_BACKA_END__Skeleton.rz";
connectAttr "SC_BACKA_END__Skeleton_scaleX.o" "SC_BACKA_END__Skeleton.sx";
connectAttr "SC_BACKA_END__Skeleton_scaleY.o" "SC_BACKA_END__Skeleton.sy";
connectAttr "SC_BACKA_END__Skeleton_scaleZ.o" "SC_BACKA_END__Skeleton.sz";
connectAttr "SC_BACKA_END__Skeleton_visibility.o" "SC_BACKA_END__Skeleton.v";
connectAttr "SC_BACKA_END__Skeleton_lockInfluenceWeights.o" "SC_BACKA_END__Skeleton.liw"
		;
connectAttr "SC_BACKA_END__Skeleton_filmboxTypeID.o" "SC_BACKA_END__Skeleton.filmboxTypeID"
		;
connectAttr "BASE__Skeleton.s" "SC_BASE__Skeleton.is";
connectAttr "SC_BASE__Skeleton_scaleX.o" "SC_BASE__Skeleton.sx";
connectAttr "SC_BASE__Skeleton_scaleY.o" "SC_BASE__Skeleton.sy";
connectAttr "SC_BASE__Skeleton_scaleZ.o" "SC_BASE__Skeleton.sz";
connectAttr "SC_BASE__Skeleton_translateX.o" "SC_BASE__Skeleton.tx";
connectAttr "SC_BASE__Skeleton_translateY.o" "SC_BASE__Skeleton.ty";
connectAttr "SC_BASE__Skeleton_translateZ.o" "SC_BASE__Skeleton.tz";
connectAttr "SC_BASE__Skeleton_rotateX.o" "SC_BASE__Skeleton.rx";
connectAttr "SC_BASE__Skeleton_rotateY.o" "SC_BASE__Skeleton.ry";
connectAttr "SC_BASE__Skeleton_rotateZ.o" "SC_BASE__Skeleton.rz";
connectAttr "SC_BASE__Skeleton_visibility.o" "SC_BASE__Skeleton.v";
connectAttr "SC_BASE__Skeleton_lockInfluenceWeights.o" "SC_BASE__Skeleton.liw";
connectAttr "SC_BASE__Skeleton_filmboxTypeID.o" "SC_BASE__Skeleton.filmboxTypeID"
		;
connectAttr "SC_BASE__Skeleton.s" "SC_BASE_END__Skeleton.is";
connectAttr "SC_BASE_END__Skeleton_translateX.o" "SC_BASE_END__Skeleton.tx";
connectAttr "SC_BASE_END__Skeleton_translateY.o" "SC_BASE_END__Skeleton.ty";
connectAttr "SC_BASE_END__Skeleton_translateZ.o" "SC_BASE_END__Skeleton.tz";
connectAttr "SC_BASE_END__Skeleton_rotateX.o" "SC_BASE_END__Skeleton.rx";
connectAttr "SC_BASE_END__Skeleton_rotateY.o" "SC_BASE_END__Skeleton.ry";
connectAttr "SC_BASE_END__Skeleton_rotateZ.o" "SC_BASE_END__Skeleton.rz";
connectAttr "SC_BASE_END__Skeleton_scaleX.o" "SC_BASE_END__Skeleton.sx";
connectAttr "SC_BASE_END__Skeleton_scaleY.o" "SC_BASE_END__Skeleton.sy";
connectAttr "SC_BASE_END__Skeleton_scaleZ.o" "SC_BASE_END__Skeleton.sz";
connectAttr "SC_BASE_END__Skeleton_visibility.o" "SC_BASE_END__Skeleton.v";
connectAttr "SC_BASE_END__Skeleton_lockInfluenceWeights.o" "SC_BASE_END__Skeleton.liw"
		;
connectAttr "SC_BASE_END__Skeleton_filmboxTypeID.o" "SC_BASE_END__Skeleton.filmboxTypeID"
		;
connectAttr "BASE__Skeleton.s" "LF_H__Skeleton.is";
connectAttr "LF_H__Skeleton_scaleX.o" "LF_H__Skeleton.sx";
connectAttr "LF_H__Skeleton_scaleY.o" "LF_H__Skeleton.sy";
connectAttr "LF_H__Skeleton_scaleZ.o" "LF_H__Skeleton.sz";
connectAttr "LF_H__Skeleton_rotateX.o" "LF_H__Skeleton.rx";
connectAttr "LF_H__Skeleton_rotateY.o" "LF_H__Skeleton.ry";
connectAttr "LF_H__Skeleton_rotateZ.o" "LF_H__Skeleton.rz";
connectAttr "LF_H__Skeleton_translateX.o" "LF_H__Skeleton.tx";
connectAttr "LF_H__Skeleton_translateY.o" "LF_H__Skeleton.ty";
connectAttr "LF_H__Skeleton_translateZ.o" "LF_H__Skeleton.tz";
connectAttr "LF_H__Skeleton_visibility.o" "LF_H__Skeleton.v";
connectAttr "LF_H__Skeleton_lockInfluenceWeights.o" "LF_H__Skeleton.liw";
connectAttr "LF_H__Skeleton_filmboxTypeID.o" "LF_H__Skeleton.filmboxTypeID";
connectAttr "LF_H__Skeleton.s" "LF_K__Skeleton.is";
connectAttr "LF_K__Skeleton_scaleX.o" "LF_K__Skeleton.sx";
connectAttr "LF_K__Skeleton_scaleY.o" "LF_K__Skeleton.sy";
connectAttr "LF_K__Skeleton_scaleZ.o" "LF_K__Skeleton.sz";
connectAttr "LF_K__Skeleton_rotateX.o" "LF_K__Skeleton.rx";
connectAttr "LF_K__Skeleton_rotateY.o" "LF_K__Skeleton.ry";
connectAttr "LF_K__Skeleton_rotateZ.o" "LF_K__Skeleton.rz";
connectAttr "LF_K__Skeleton_translateX.o" "LF_K__Skeleton.tx";
connectAttr "LF_K__Skeleton_translateY.o" "LF_K__Skeleton.ty";
connectAttr "LF_K__Skeleton_translateZ.o" "LF_K__Skeleton.tz";
connectAttr "LF_K__Skeleton_visibility.o" "LF_K__Skeleton.v";
connectAttr "LF_K__Skeleton_lockInfluenceWeights.o" "LF_K__Skeleton.liw";
connectAttr "LF_K__Skeleton_filmboxTypeID.o" "LF_K__Skeleton.filmboxTypeID";
connectAttr "LF_K__Skeleton.s" "LF_A__Skeleton.is";
connectAttr "LF_A__Skeleton_scaleX.o" "LF_A__Skeleton.sx";
connectAttr "LF_A__Skeleton_scaleY.o" "LF_A__Skeleton.sy";
connectAttr "LF_A__Skeleton_scaleZ.o" "LF_A__Skeleton.sz";
connectAttr "LF_A__Skeleton_rotateX.o" "LF_A__Skeleton.rx";
connectAttr "LF_A__Skeleton_rotateY.o" "LF_A__Skeleton.ry";
connectAttr "LF_A__Skeleton_rotateZ.o" "LF_A__Skeleton.rz";
connectAttr "LF_A__Skeleton_translateX.o" "LF_A__Skeleton.tx";
connectAttr "LF_A__Skeleton_translateY.o" "LF_A__Skeleton.ty";
connectAttr "LF_A__Skeleton_translateZ.o" "LF_A__Skeleton.tz";
connectAttr "LF_A__Skeleton_visibility.o" "LF_A__Skeleton.v";
connectAttr "LF_A__Skeleton_lockInfluenceWeights.o" "LF_A__Skeleton.liw";
connectAttr "LF_A__Skeleton_filmboxTypeID.o" "LF_A__Skeleton.filmboxTypeID";
connectAttr "LF_A__Skeleton.s" "LF_T__Skeleton.is";
connectAttr "LF_T__Skeleton_scaleX.o" "LF_T__Skeleton.sx";
connectAttr "LF_T__Skeleton_scaleY.o" "LF_T__Skeleton.sy";
connectAttr "LF_T__Skeleton_scaleZ.o" "LF_T__Skeleton.sz";
connectAttr "LF_T__Skeleton_rotateX.o" "LF_T__Skeleton.rx";
connectAttr "LF_T__Skeleton_rotateY.o" "LF_T__Skeleton.ry";
connectAttr "LF_T__Skeleton_rotateZ.o" "LF_T__Skeleton.rz";
connectAttr "LF_T__Skeleton_translateX.o" "LF_T__Skeleton.tx";
connectAttr "LF_T__Skeleton_translateY.o" "LF_T__Skeleton.ty";
connectAttr "LF_T__Skeleton_translateZ.o" "LF_T__Skeleton.tz";
connectAttr "LF_T__Skeleton_visibility.o" "LF_T__Skeleton.v";
connectAttr "LF_T__Skeleton_lockInfluenceWeights.o" "LF_T__Skeleton.liw";
connectAttr "LF_T__Skeleton_filmboxTypeID.o" "LF_T__Skeleton.filmboxTypeID";
connectAttr "LF_T__Skeleton.s" "LF_T_END__Skeleton.is";
connectAttr "LF_T_END__Skeleton_rotateX.o" "LF_T_END__Skeleton.rx";
connectAttr "LF_T_END__Skeleton_rotateY.o" "LF_T_END__Skeleton.ry";
connectAttr "LF_T_END__Skeleton_rotateZ.o" "LF_T_END__Skeleton.rz";
connectAttr "LF_T_END__Skeleton_translateX.o" "LF_T_END__Skeleton.tx";
connectAttr "LF_T_END__Skeleton_translateY.o" "LF_T_END__Skeleton.ty";
connectAttr "LF_T_END__Skeleton_translateZ.o" "LF_T_END__Skeleton.tz";
connectAttr "LF_T_END__Skeleton_scaleX.o" "LF_T_END__Skeleton.sx";
connectAttr "LF_T_END__Skeleton_scaleY.o" "LF_T_END__Skeleton.sy";
connectAttr "LF_T_END__Skeleton_scaleZ.o" "LF_T_END__Skeleton.sz";
connectAttr "LF_T_END__Skeleton_visibility.o" "LF_T_END__Skeleton.v";
connectAttr "LF_T_END__Skeleton_lockInfluenceWeights.o" "LF_T_END__Skeleton.liw"
		;
connectAttr "LF_T_END__Skeleton_filmboxTypeID.o" "LF_T_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_K__Skeleton.s" "LF_SC_K__Skeleton.is";
connectAttr "LF_SC_K__Skeleton_scaleX.o" "LF_SC_K__Skeleton.sx";
connectAttr "LF_SC_K__Skeleton_scaleZ.o" "LF_SC_K__Skeleton.sz";
connectAttr "LF_SC_K__Skeleton_scaleY.o" "LF_SC_K__Skeleton.sy";
connectAttr "LF_SC_K__Skeleton_rotateX.o" "LF_SC_K__Skeleton.rx";
connectAttr "LF_SC_K__Skeleton_rotateY.o" "LF_SC_K__Skeleton.ry";
connectAttr "LF_SC_K__Skeleton_rotateZ.o" "LF_SC_K__Skeleton.rz";
connectAttr "LF_SC_K__Skeleton_translateX.o" "LF_SC_K__Skeleton.tx";
connectAttr "LF_SC_K__Skeleton_translateY.o" "LF_SC_K__Skeleton.ty";
connectAttr "LF_SC_K__Skeleton_translateZ.o" "LF_SC_K__Skeleton.tz";
connectAttr "LF_SC_K__Skeleton_visibility.o" "LF_SC_K__Skeleton.v";
connectAttr "LF_SC_K__Skeleton_lockInfluenceWeights.o" "LF_SC_K__Skeleton.liw";
connectAttr "LF_SC_K__Skeleton_filmboxTypeID.o" "LF_SC_K__Skeleton.filmboxTypeID"
		;
connectAttr "LF_SC_K__Skeleton.s" "LF_SC_K_END__Skeleton.is";
connectAttr "LF_SC_K_END__Skeleton_rotateX.o" "LF_SC_K_END__Skeleton.rx";
connectAttr "LF_SC_K_END__Skeleton_rotateY.o" "LF_SC_K_END__Skeleton.ry";
connectAttr "LF_SC_K_END__Skeleton_rotateZ.o" "LF_SC_K_END__Skeleton.rz";
connectAttr "LF_SC_K_END__Skeleton_translateX.o" "LF_SC_K_END__Skeleton.tx";
connectAttr "LF_SC_K_END__Skeleton_translateY.o" "LF_SC_K_END__Skeleton.ty";
connectAttr "LF_SC_K_END__Skeleton_translateZ.o" "LF_SC_K_END__Skeleton.tz";
connectAttr "LF_SC_K_END__Skeleton_scaleX.o" "LF_SC_K_END__Skeleton.sx";
connectAttr "LF_SC_K_END__Skeleton_scaleY.o" "LF_SC_K_END__Skeleton.sy";
connectAttr "LF_SC_K_END__Skeleton_scaleZ.o" "LF_SC_K_END__Skeleton.sz";
connectAttr "LF_SC_K_END__Skeleton_visibility.o" "LF_SC_K_END__Skeleton.v";
connectAttr "LF_SC_K_END__Skeleton_lockInfluenceWeights.o" "LF_SC_K_END__Skeleton.liw"
		;
connectAttr "LF_SC_K_END__Skeleton_filmboxTypeID.o" "LF_SC_K_END__Skeleton.filmboxTypeID"
		;
connectAttr "LF_H__Skeleton.s" "LF_SC_H__Skeleton.is";
connectAttr "LF_SC_H__Skeleton_scaleX.o" "LF_SC_H__Skeleton.sx";
connectAttr "LF_SC_H__Skeleton_scaleZ.o" "LF_SC_H__Skeleton.sz";
connectAttr "LF_SC_H__Skeleton_scaleY.o" "LF_SC_H__Skeleton.sy";
connectAttr "LF_SC_H__Skeleton_rotateX.o" "LF_SC_H__Skeleton.rx";
connectAttr "LF_SC_H__Skeleton_rotateY.o" "LF_SC_H__Skeleton.ry";
connectAttr "LF_SC_H__Skeleton_rotateZ.o" "LF_SC_H__Skeleton.rz";
connectAttr "LF_SC_H__Skeleton_translateX.o" "LF_SC_H__Skeleton.tx";
connectAttr "LF_SC_H__Skeleton_translateY.o" "LF_SC_H__Skeleton.ty";
connectAttr "LF_SC_H__Skeleton_translateZ.o" "LF_SC_H__Skeleton.tz";
connectAttr "LF_SC_H__Skeleton_visibility.o" "LF_SC_H__Skeleton.v";
connectAttr "LF_SC_H__Skeleton_lockInfluenceWeights.o" "LF_SC_H__Skeleton.liw";
connectAttr "LF_SC_H__Skeleton_filmboxTypeID.o" "LF_SC_H__Skeleton.filmboxTypeID"
		;
connectAttr "LF_SC_H__Skeleton.s" "LF_SC_H_END__Skeleton.is";
connectAttr "LF_SC_H_END__Skeleton_rotateX.o" "LF_SC_H_END__Skeleton.rx";
connectAttr "LF_SC_H_END__Skeleton_rotateY.o" "LF_SC_H_END__Skeleton.ry";
connectAttr "LF_SC_H_END__Skeleton_rotateZ.o" "LF_SC_H_END__Skeleton.rz";
connectAttr "LF_SC_H_END__Skeleton_translateX.o" "LF_SC_H_END__Skeleton.tx";
connectAttr "LF_SC_H_END__Skeleton_translateY.o" "LF_SC_H_END__Skeleton.ty";
connectAttr "LF_SC_H_END__Skeleton_translateZ.o" "LF_SC_H_END__Skeleton.tz";
connectAttr "LF_SC_H_END__Skeleton_scaleX.o" "LF_SC_H_END__Skeleton.sx";
connectAttr "LF_SC_H_END__Skeleton_scaleY.o" "LF_SC_H_END__Skeleton.sy";
connectAttr "LF_SC_H_END__Skeleton_scaleZ.o" "LF_SC_H_END__Skeleton.sz";
connectAttr "LF_SC_H_END__Skeleton_visibility.o" "LF_SC_H_END__Skeleton.v";
connectAttr "LF_SC_H_END__Skeleton_lockInfluenceWeights.o" "LF_SC_H_END__Skeleton.liw"
		;
connectAttr "LF_SC_H_END__Skeleton_filmboxTypeID.o" "LF_SC_H_END__Skeleton.filmboxTypeID"
		;
connectAttr "BASE__Skeleton.s" "RT_H__Skeleton.is";
connectAttr "RT_H__Skeleton_scaleX.o" "RT_H__Skeleton.sx";
connectAttr "RT_H__Skeleton_scaleY.o" "RT_H__Skeleton.sy";
connectAttr "RT_H__Skeleton_scaleZ.o" "RT_H__Skeleton.sz";
connectAttr "RT_H__Skeleton_rotateX.o" "RT_H__Skeleton.rx";
connectAttr "RT_H__Skeleton_rotateY.o" "RT_H__Skeleton.ry";
connectAttr "RT_H__Skeleton_rotateZ.o" "RT_H__Skeleton.rz";
connectAttr "RT_H__Skeleton_translateX.o" "RT_H__Skeleton.tx";
connectAttr "RT_H__Skeleton_translateY.o" "RT_H__Skeleton.ty";
connectAttr "RT_H__Skeleton_translateZ.o" "RT_H__Skeleton.tz";
connectAttr "RT_H__Skeleton_visibility.o" "RT_H__Skeleton.v";
connectAttr "RT_H__Skeleton_lockInfluenceWeights.o" "RT_H__Skeleton.liw";
connectAttr "RT_H__Skeleton_filmboxTypeID.o" "RT_H__Skeleton.filmboxTypeID";
connectAttr "RT_H__Skeleton.s" "RT_K__Skeleton.is";
connectAttr "RT_K__Skeleton_scaleX.o" "RT_K__Skeleton.sx";
connectAttr "RT_K__Skeleton_scaleY.o" "RT_K__Skeleton.sy";
connectAttr "RT_K__Skeleton_scaleZ.o" "RT_K__Skeleton.sz";
connectAttr "RT_K__Skeleton_rotateX.o" "RT_K__Skeleton.rx";
connectAttr "RT_K__Skeleton_rotateY.o" "RT_K__Skeleton.ry";
connectAttr "RT_K__Skeleton_rotateZ.o" "RT_K__Skeleton.rz";
connectAttr "RT_K__Skeleton_translateX.o" "RT_K__Skeleton.tx";
connectAttr "RT_K__Skeleton_translateY.o" "RT_K__Skeleton.ty";
connectAttr "RT_K__Skeleton_translateZ.o" "RT_K__Skeleton.tz";
connectAttr "RT_K__Skeleton_visibility.o" "RT_K__Skeleton.v";
connectAttr "RT_K__Skeleton_lockInfluenceWeights.o" "RT_K__Skeleton.liw";
connectAttr "RT_K__Skeleton_filmboxTypeID.o" "RT_K__Skeleton.filmboxTypeID";
connectAttr "RT_K__Skeleton.s" "RT_A__Skeleton.is";
connectAttr "RT_A__Skeleton_scaleX.o" "RT_A__Skeleton.sx";
connectAttr "RT_A__Skeleton_scaleY.o" "RT_A__Skeleton.sy";
connectAttr "RT_A__Skeleton_scaleZ.o" "RT_A__Skeleton.sz";
connectAttr "RT_A__Skeleton_rotateX.o" "RT_A__Skeleton.rx";
connectAttr "RT_A__Skeleton_rotateY.o" "RT_A__Skeleton.ry";
connectAttr "RT_A__Skeleton_rotateZ.o" "RT_A__Skeleton.rz";
connectAttr "RT_A__Skeleton_translateX.o" "RT_A__Skeleton.tx";
connectAttr "RT_A__Skeleton_translateY.o" "RT_A__Skeleton.ty";
connectAttr "RT_A__Skeleton_translateZ.o" "RT_A__Skeleton.tz";
connectAttr "RT_A__Skeleton_visibility.o" "RT_A__Skeleton.v";
connectAttr "RT_A__Skeleton_lockInfluenceWeights.o" "RT_A__Skeleton.liw";
connectAttr "RT_A__Skeleton_filmboxTypeID.o" "RT_A__Skeleton.filmboxTypeID";
connectAttr "RT_A__Skeleton.s" "RT_T__Skeleton.is";
connectAttr "RT_T__Skeleton_scaleX.o" "RT_T__Skeleton.sx";
connectAttr "RT_T__Skeleton_scaleY.o" "RT_T__Skeleton.sy";
connectAttr "RT_T__Skeleton_scaleZ.o" "RT_T__Skeleton.sz";
connectAttr "RT_T__Skeleton_rotateX.o" "RT_T__Skeleton.rx";
connectAttr "RT_T__Skeleton_rotateY.o" "RT_T__Skeleton.ry";
connectAttr "RT_T__Skeleton_rotateZ.o" "RT_T__Skeleton.rz";
connectAttr "RT_T__Skeleton_translateX.o" "RT_T__Skeleton.tx";
connectAttr "RT_T__Skeleton_translateY.o" "RT_T__Skeleton.ty";
connectAttr "RT_T__Skeleton_translateZ.o" "RT_T__Skeleton.tz";
connectAttr "RT_T__Skeleton_visibility.o" "RT_T__Skeleton.v";
connectAttr "RT_T__Skeleton_lockInfluenceWeights.o" "RT_T__Skeleton.liw";
connectAttr "RT_T__Skeleton_filmboxTypeID.o" "RT_T__Skeleton.filmboxTypeID";
connectAttr "RT_T__Skeleton.s" "RT_T_END__Skeleton.is";
connectAttr "RT_T_END__Skeleton_rotateX.o" "RT_T_END__Skeleton.rx";
connectAttr "RT_T_END__Skeleton_rotateY.o" "RT_T_END__Skeleton.ry";
connectAttr "RT_T_END__Skeleton_rotateZ.o" "RT_T_END__Skeleton.rz";
connectAttr "RT_T_END__Skeleton_translateX.o" "RT_T_END__Skeleton.tx";
connectAttr "RT_T_END__Skeleton_translateY.o" "RT_T_END__Skeleton.ty";
connectAttr "RT_T_END__Skeleton_translateZ.o" "RT_T_END__Skeleton.tz";
connectAttr "RT_T_END__Skeleton_scaleX.o" "RT_T_END__Skeleton.sx";
connectAttr "RT_T_END__Skeleton_scaleY.o" "RT_T_END__Skeleton.sy";
connectAttr "RT_T_END__Skeleton_scaleZ.o" "RT_T_END__Skeleton.sz";
connectAttr "RT_T_END__Skeleton_visibility.o" "RT_T_END__Skeleton.v";
connectAttr "RT_T_END__Skeleton_lockInfluenceWeights.o" "RT_T_END__Skeleton.liw"
		;
connectAttr "RT_T_END__Skeleton_filmboxTypeID.o" "RT_T_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_K__Skeleton.s" "RT_SC_K__Skeleton.is";
connectAttr "RT_SC_K__Skeleton_scaleX.o" "RT_SC_K__Skeleton.sx";
connectAttr "RT_SC_K__Skeleton_scaleZ.o" "RT_SC_K__Skeleton.sz";
connectAttr "RT_SC_K__Skeleton_scaleY.o" "RT_SC_K__Skeleton.sy";
connectAttr "RT_SC_K__Skeleton_rotateX.o" "RT_SC_K__Skeleton.rx";
connectAttr "RT_SC_K__Skeleton_rotateY.o" "RT_SC_K__Skeleton.ry";
connectAttr "RT_SC_K__Skeleton_rotateZ.o" "RT_SC_K__Skeleton.rz";
connectAttr "RT_SC_K__Skeleton_translateX.o" "RT_SC_K__Skeleton.tx";
connectAttr "RT_SC_K__Skeleton_translateY.o" "RT_SC_K__Skeleton.ty";
connectAttr "RT_SC_K__Skeleton_translateZ.o" "RT_SC_K__Skeleton.tz";
connectAttr "RT_SC_K__Skeleton_visibility.o" "RT_SC_K__Skeleton.v";
connectAttr "RT_SC_K__Skeleton_lockInfluenceWeights.o" "RT_SC_K__Skeleton.liw";
connectAttr "RT_SC_K__Skeleton_filmboxTypeID.o" "RT_SC_K__Skeleton.filmboxTypeID"
		;
connectAttr "RT_SC_K__Skeleton.s" "RT_SC_K_END__Skeleton.is";
connectAttr "RT_SC_K_END__Skeleton_rotateX.o" "RT_SC_K_END__Skeleton.rx";
connectAttr "RT_SC_K_END__Skeleton_rotateY.o" "RT_SC_K_END__Skeleton.ry";
connectAttr "RT_SC_K_END__Skeleton_rotateZ.o" "RT_SC_K_END__Skeleton.rz";
connectAttr "RT_SC_K_END__Skeleton_translateX.o" "RT_SC_K_END__Skeleton.tx";
connectAttr "RT_SC_K_END__Skeleton_translateY.o" "RT_SC_K_END__Skeleton.ty";
connectAttr "RT_SC_K_END__Skeleton_translateZ.o" "RT_SC_K_END__Skeleton.tz";
connectAttr "RT_SC_K_END__Skeleton_scaleX.o" "RT_SC_K_END__Skeleton.sx";
connectAttr "RT_SC_K_END__Skeleton_scaleY.o" "RT_SC_K_END__Skeleton.sy";
connectAttr "RT_SC_K_END__Skeleton_scaleZ.o" "RT_SC_K_END__Skeleton.sz";
connectAttr "RT_SC_K_END__Skeleton_visibility.o" "RT_SC_K_END__Skeleton.v";
connectAttr "RT_SC_K_END__Skeleton_lockInfluenceWeights.o" "RT_SC_K_END__Skeleton.liw"
		;
connectAttr "RT_SC_K_END__Skeleton_filmboxTypeID.o" "RT_SC_K_END__Skeleton.filmboxTypeID"
		;
connectAttr "RT_H__Skeleton.s" "RT_SC_H__Skeleton.is";
connectAttr "RT_SC_H__Skeleton_scaleX.o" "RT_SC_H__Skeleton.sx";
connectAttr "RT_SC_H__Skeleton_scaleZ.o" "RT_SC_H__Skeleton.sz";
connectAttr "RT_SC_H__Skeleton_scaleY.o" "RT_SC_H__Skeleton.sy";
connectAttr "RT_SC_H__Skeleton_rotateX.o" "RT_SC_H__Skeleton.rx";
connectAttr "RT_SC_H__Skeleton_rotateY.o" "RT_SC_H__Skeleton.ry";
connectAttr "RT_SC_H__Skeleton_rotateZ.o" "RT_SC_H__Skeleton.rz";
connectAttr "RT_SC_H__Skeleton_translateX.o" "RT_SC_H__Skeleton.tx";
connectAttr "RT_SC_H__Skeleton_translateY.o" "RT_SC_H__Skeleton.ty";
connectAttr "RT_SC_H__Skeleton_translateZ.o" "RT_SC_H__Skeleton.tz";
connectAttr "RT_SC_H__Skeleton_visibility.o" "RT_SC_H__Skeleton.v";
connectAttr "RT_SC_H__Skeleton_lockInfluenceWeights.o" "RT_SC_H__Skeleton.liw";
connectAttr "RT_SC_H__Skeleton_filmboxTypeID.o" "RT_SC_H__Skeleton.filmboxTypeID"
		;
connectAttr "RT_SC_H__Skeleton.s" "RT_SC_H_END__Skeleton.is";
connectAttr "RT_SC_H_END__Skeleton_rotateX.o" "RT_SC_H_END__Skeleton.rx";
connectAttr "RT_SC_H_END__Skeleton_rotateY.o" "RT_SC_H_END__Skeleton.ry";
connectAttr "RT_SC_H_END__Skeleton_rotateZ.o" "RT_SC_H_END__Skeleton.rz";
connectAttr "RT_SC_H_END__Skeleton_translateX.o" "RT_SC_H_END__Skeleton.tx";
connectAttr "RT_SC_H_END__Skeleton_translateY.o" "RT_SC_H_END__Skeleton.ty";
connectAttr "RT_SC_H_END__Skeleton_translateZ.o" "RT_SC_H_END__Skeleton.tz";
connectAttr "RT_SC_H_END__Skeleton_scaleX.o" "RT_SC_H_END__Skeleton.sx";
connectAttr "RT_SC_H_END__Skeleton_scaleY.o" "RT_SC_H_END__Skeleton.sy";
connectAttr "RT_SC_H_END__Skeleton_scaleZ.o" "RT_SC_H_END__Skeleton.sz";
connectAttr "RT_SC_H_END__Skeleton_visibility.o" "RT_SC_H_END__Skeleton.v";
connectAttr "RT_SC_H_END__Skeleton_lockInfluenceWeights.o" "RT_SC_H_END__Skeleton.liw"
		;
connectAttr "RT_SC_H_END__Skeleton_filmboxTypeID.o" "RT_SC_H_END__Skeleton.filmboxTypeID"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "BACKA__Skeleton_translateX.msg" "hyperLayout1.hyp[0].dn";
connectAttr "BACKA__Skeleton_translateY.msg" "hyperLayout1.hyp[1].dn";
connectAttr "BACKA__Skeleton_translateZ.msg" "hyperLayout1.hyp[2].dn";
connectAttr "BACKB__Skeleton_translateX.msg" "hyperLayout1.hyp[3].dn";
connectAttr "BACKB__Skeleton_translateY.msg" "hyperLayout1.hyp[4].dn";
connectAttr "BACKB__Skeleton_translateZ.msg" "hyperLayout1.hyp[5].dn";
connectAttr "LF_C__Skeleton_translateX.msg" "hyperLayout1.hyp[6].dn";
connectAttr "LF_C__Skeleton_translateY.msg" "hyperLayout1.hyp[7].dn";
connectAttr "LF_C__Skeleton_translateZ.msg" "hyperLayout1.hyp[8].dn";
connectAttr "LF_S__Skeleton_translateX.msg" "hyperLayout1.hyp[9].dn";
connectAttr "LF_S__Skeleton_translateY.msg" "hyperLayout1.hyp[10].dn";
connectAttr "LF_S__Skeleton_translateZ.msg" "hyperLayout1.hyp[11].dn";
connectAttr "LF_E__Skeleton_translateX.msg" "hyperLayout1.hyp[12].dn";
connectAttr "LF_E__Skeleton_translateY.msg" "hyperLayout1.hyp[13].dn";
connectAttr "LF_E__Skeleton_translateZ.msg" "hyperLayout1.hyp[14].dn";
connectAttr "LF_E_TWIST__Skeleton_translateX.msg" "hyperLayout1.hyp[15].dn";
connectAttr "LF_E_TWIST__Skeleton_translateY.msg" "hyperLayout1.hyp[16].dn";
connectAttr "LF_E_TWIST__Skeleton_translateZ.msg" "hyperLayout1.hyp[17].dn";
connectAttr "LF_E_TWIST_END__Skeleton_translateX.msg" "hyperLayout1.hyp[18].dn";
connectAttr "LF_E_TWIST_END__Skeleton_translateY.msg" "hyperLayout1.hyp[19].dn";
connectAttr "LF_E_TWIST_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[20].dn";
connectAttr "LF_SC_E__Skeleton_translateX.msg" "hyperLayout1.hyp[21].dn";
connectAttr "LF_SC_E__Skeleton_translateY.msg" "hyperLayout1.hyp[22].dn";
connectAttr "LF_SC_E__Skeleton_translateZ.msg" "hyperLayout1.hyp[23].dn";
connectAttr "LF_SC_E_END__Skeleton_translateX.msg" "hyperLayout1.hyp[24].dn";
connectAttr "LF_SC_E_END__Skeleton_translateY.msg" "hyperLayout1.hyp[25].dn";
connectAttr "LF_SC_E_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[26].dn";
connectAttr "LF_W__Skeleton_translateX.msg" "hyperLayout1.hyp[27].dn";
connectAttr "LF_W__Skeleton_translateY.msg" "hyperLayout1.hyp[28].dn";
connectAttr "LF_W__Skeleton_translateZ.msg" "hyperLayout1.hyp[29].dn";
connectAttr "LF_FINGA__Skeleton_translateX.msg" "hyperLayout1.hyp[30].dn";
connectAttr "LF_FINGA__Skeleton_translateY.msg" "hyperLayout1.hyp[31].dn";
connectAttr "LF_FINGA__Skeleton_translateZ.msg" "hyperLayout1.hyp[32].dn";
connectAttr "LF_FINGA1__Skeleton_translateX.msg" "hyperLayout1.hyp[33].dn";
connectAttr "LF_FINGA1__Skeleton_translateY.msg" "hyperLayout1.hyp[34].dn";
connectAttr "LF_FINGA1__Skeleton_translateZ.msg" "hyperLayout1.hyp[35].dn";
connectAttr "LF_FINGA2__Skeleton_translateX.msg" "hyperLayout1.hyp[36].dn";
connectAttr "LF_FINGA2__Skeleton_translateY.msg" "hyperLayout1.hyp[37].dn";
connectAttr "LF_FINGA2__Skeleton_translateZ.msg" "hyperLayout1.hyp[38].dn";
connectAttr "LF_FINGA_END__Skeleton_translateX.msg" "hyperLayout1.hyp[39].dn";
connectAttr "LF_FINGA_END__Skeleton_translateY.msg" "hyperLayout1.hyp[40].dn";
connectAttr "LF_FINGA_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[41].dn";
connectAttr "LF_FINGB__Skeleton_translateX.msg" "hyperLayout1.hyp[42].dn";
connectAttr "LF_FINGB__Skeleton_translateY.msg" "hyperLayout1.hyp[43].dn";
connectAttr "LF_FINGB__Skeleton_translateZ.msg" "hyperLayout1.hyp[44].dn";
connectAttr "LF_FINGB1__Skeleton_translateX.msg" "hyperLayout1.hyp[45].dn";
connectAttr "LF_FINGB1__Skeleton_translateY.msg" "hyperLayout1.hyp[46].dn";
connectAttr "LF_FINGB1__Skeleton_translateZ.msg" "hyperLayout1.hyp[47].dn";
connectAttr "LF_FINGB2__Skeleton_translateX.msg" "hyperLayout1.hyp[48].dn";
connectAttr "LF_FINGB2__Skeleton_translateY.msg" "hyperLayout1.hyp[49].dn";
connectAttr "LF_FINGB2__Skeleton_translateZ.msg" "hyperLayout1.hyp[50].dn";
connectAttr "LF_FINGB_END__Skeleton_translateX.msg" "hyperLayout1.hyp[51].dn";
connectAttr "LF_FINGB_END__Skeleton_translateY.msg" "hyperLayout1.hyp[52].dn";
connectAttr "LF_FINGB_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[53].dn";
connectAttr "LF_FINGC__Skeleton_translateX.msg" "hyperLayout1.hyp[54].dn";
connectAttr "LF_FINGC__Skeleton_translateY.msg" "hyperLayout1.hyp[55].dn";
connectAttr "LF_FINGC__Skeleton_translateZ.msg" "hyperLayout1.hyp[56].dn";
connectAttr "LF_FINGC1__Skeleton_translateX.msg" "hyperLayout1.hyp[57].dn";
connectAttr "LF_FINGC1__Skeleton_translateY.msg" "hyperLayout1.hyp[58].dn";
connectAttr "LF_FINGC1__Skeleton_translateZ.msg" "hyperLayout1.hyp[59].dn";
connectAttr "LF_FINGC2__Skeleton_translateX.msg" "hyperLayout1.hyp[60].dn";
connectAttr "LF_FINGC2__Skeleton_translateY.msg" "hyperLayout1.hyp[61].dn";
connectAttr "LF_FINGC2__Skeleton_translateZ.msg" "hyperLayout1.hyp[62].dn";
connectAttr "LF_FINGC_END__Skeleton_translateX.msg" "hyperLayout1.hyp[63].dn";
connectAttr "LF_FINGC_END__Skeleton_translateY.msg" "hyperLayout1.hyp[64].dn";
connectAttr "LF_FINGC_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[65].dn";
connectAttr "LF_FINGD__Skeleton_translateX.msg" "hyperLayout1.hyp[66].dn";
connectAttr "LF_FINGD__Skeleton_translateY.msg" "hyperLayout1.hyp[67].dn";
connectAttr "LF_FINGD__Skeleton_translateZ.msg" "hyperLayout1.hyp[68].dn";
connectAttr "LF_FINGD1__Skeleton_translateX.msg" "hyperLayout1.hyp[69].dn";
connectAttr "LF_FINGD1__Skeleton_translateY.msg" "hyperLayout1.hyp[70].dn";
connectAttr "LF_FINGD1__Skeleton_translateZ.msg" "hyperLayout1.hyp[71].dn";
connectAttr "LF_FINGD2__Skeleton_translateX.msg" "hyperLayout1.hyp[72].dn";
connectAttr "LF_FINGD2__Skeleton_translateY.msg" "hyperLayout1.hyp[73].dn";
connectAttr "LF_FINGD2__Skeleton_translateZ.msg" "hyperLayout1.hyp[74].dn";
connectAttr "LF_FINGD_END__Skeleton_translateX.msg" "hyperLayout1.hyp[75].dn";
connectAttr "LF_FINGD_END__Skeleton_translateY.msg" "hyperLayout1.hyp[76].dn";
connectAttr "LF_FINGD_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[77].dn";
connectAttr "LF_PROP__Skeleton_translateX.msg" "hyperLayout1.hyp[78].dn";
connectAttr "LF_PROP__Skeleton_translateY.msg" "hyperLayout1.hyp[79].dn";
connectAttr "LF_PROP__Skeleton_translateZ.msg" "hyperLayout1.hyp[80].dn";
connectAttr "LF_PROP_END__Skeleton_translateX.msg" "hyperLayout1.hyp[81].dn";
connectAttr "LF_PROP_END__Skeleton_translateY.msg" "hyperLayout1.hyp[82].dn";
connectAttr "LF_PROP_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[83].dn";
connectAttr "LF_SPECIAL__Skeleton_translateX.msg" "hyperLayout1.hyp[84].dn";
connectAttr "LF_SPECIAL__Skeleton_translateY.msg" "hyperLayout1.hyp[85].dn";
connectAttr "LF_SPECIAL__Skeleton_translateZ.msg" "hyperLayout1.hyp[86].dn";
connectAttr "LF_SPECIAL_END__Skeleton_translateX.msg" "hyperLayout1.hyp[87].dn";
connectAttr "LF_SPECIAL_END__Skeleton_translateY.msg" "hyperLayout1.hyp[88].dn";
connectAttr "LF_SPECIAL_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[89].dn";
connectAttr "LF_THUMB__Skeleton_translateX.msg" "hyperLayout1.hyp[90].dn";
connectAttr "LF_THUMB__Skeleton_translateY.msg" "hyperLayout1.hyp[91].dn";
connectAttr "LF_THUMB__Skeleton_translateZ.msg" "hyperLayout1.hyp[92].dn";
connectAttr "LF_THUMB1__Skeleton_translateX.msg" "hyperLayout1.hyp[93].dn";
connectAttr "LF_THUMB1__Skeleton_translateY.msg" "hyperLayout1.hyp[94].dn";
connectAttr "LF_THUMB1__Skeleton_translateZ.msg" "hyperLayout1.hyp[95].dn";
connectAttr "LF_THUMB2__Skeleton_translateX.msg" "hyperLayout1.hyp[96].dn";
connectAttr "LF_THUMB2__Skeleton_translateY.msg" "hyperLayout1.hyp[97].dn";
connectAttr "LF_THUMB2__Skeleton_translateZ.msg" "hyperLayout1.hyp[98].dn";
connectAttr "LF_THUMB_END__Skeleton_translateX.msg" "hyperLayout1.hyp[99].dn";
connectAttr "LF_THUMB_END__Skeleton_translateY.msg" "hyperLayout1.hyp[100].dn";
connectAttr "LF_THUMB_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[101].dn";
connectAttr "LF_SC_S__Skeleton_translateX.msg" "hyperLayout1.hyp[102].dn";
connectAttr "LF_SC_S__Skeleton_translateY.msg" "hyperLayout1.hyp[103].dn";
connectAttr "LF_SC_S__Skeleton_translateZ.msg" "hyperLayout1.hyp[104].dn";
connectAttr "LF_SC_S_END__Skeleton_translateX.msg" "hyperLayout1.hyp[105].dn";
connectAttr "LF_SC_S_END__Skeleton_translateY.msg" "hyperLayout1.hyp[106].dn";
connectAttr "LF_SC_S_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[107].dn";
connectAttr "LF_SC_TWIST_S__Skeleton_translateX.msg" "hyperLayout1.hyp[108].dn";
connectAttr "LF_SC_TWIST_S__Skeleton_translateY.msg" "hyperLayout1.hyp[109].dn";
connectAttr "LF_SC_TWIST_S__Skeleton_translateZ.msg" "hyperLayout1.hyp[110].dn";
connectAttr "LF_SC_TWIST_S_END__Skeleton_translateX.msg" "hyperLayout1.hyp[111].dn"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_translateY.msg" "hyperLayout1.hyp[112].dn"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[113].dn"
		;
connectAttr "NECK__Skeleton_translateX.msg" "hyperLayout1.hyp[114].dn";
connectAttr "NECK__Skeleton_translateY.msg" "hyperLayout1.hyp[115].dn";
connectAttr "NECK__Skeleton_translateZ.msg" "hyperLayout1.hyp[116].dn";
connectAttr "HEAD__Skeleton_translateX.msg" "hyperLayout1.hyp[117].dn";
connectAttr "HEAD__Skeleton_translateY.msg" "hyperLayout1.hyp[118].dn";
connectAttr "HEAD__Skeleton_translateZ.msg" "hyperLayout1.hyp[119].dn";
connectAttr "HEAD_END__Skeleton_translateX.msg" "hyperLayout1.hyp[120].dn";
connectAttr "HEAD_END__Skeleton_translateY.msg" "hyperLayout1.hyp[121].dn";
connectAttr "HEAD_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[122].dn";
connectAttr "SC_NECK__Skeleton_translateX.msg" "hyperLayout1.hyp[123].dn";
connectAttr "SC_NECK__Skeleton_translateY.msg" "hyperLayout1.hyp[124].dn";
connectAttr "SC_NECK__Skeleton_translateZ.msg" "hyperLayout1.hyp[125].dn";
connectAttr "SC_NECK_END__Skeleton_translateX.msg" "hyperLayout1.hyp[126].dn";
connectAttr "SC_NECK_END__Skeleton_translateY.msg" "hyperLayout1.hyp[127].dn";
connectAttr "SC_NECK_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[128].dn";
connectAttr "RT_C__Skeleton_translateX.msg" "hyperLayout1.hyp[129].dn";
connectAttr "RT_C__Skeleton_translateY.msg" "hyperLayout1.hyp[130].dn";
connectAttr "RT_C__Skeleton_translateZ.msg" "hyperLayout1.hyp[131].dn";
connectAttr "RT_S__Skeleton_translateX.msg" "hyperLayout1.hyp[132].dn";
connectAttr "RT_S__Skeleton_translateY.msg" "hyperLayout1.hyp[133].dn";
connectAttr "RT_S__Skeleton_translateZ.msg" "hyperLayout1.hyp[134].dn";
connectAttr "RT_E__Skeleton_translateX.msg" "hyperLayout1.hyp[135].dn";
connectAttr "RT_E__Skeleton_translateY.msg" "hyperLayout1.hyp[136].dn";
connectAttr "RT_E__Skeleton_translateZ.msg" "hyperLayout1.hyp[137].dn";
connectAttr "RT_E_TWIST__Skeleton_translateX.msg" "hyperLayout1.hyp[138].dn";
connectAttr "RT_E_TWIST__Skeleton_translateY.msg" "hyperLayout1.hyp[139].dn";
connectAttr "RT_E_TWIST__Skeleton_translateZ.msg" "hyperLayout1.hyp[140].dn";
connectAttr "RT_E_TWIST_END__Skeleton_translateX.msg" "hyperLayout1.hyp[141].dn"
		;
connectAttr "RT_E_TWIST_END__Skeleton_translateY.msg" "hyperLayout1.hyp[142].dn"
		;
connectAttr "RT_E_TWIST_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[143].dn"
		;
connectAttr "RT_SC_E__Skeleton_translateX.msg" "hyperLayout1.hyp[144].dn";
connectAttr "RT_SC_E__Skeleton_translateY.msg" "hyperLayout1.hyp[145].dn";
connectAttr "RT_SC_E__Skeleton_translateZ.msg" "hyperLayout1.hyp[146].dn";
connectAttr "RT_SC_E_END__Skeleton_translateX.msg" "hyperLayout1.hyp[147].dn";
connectAttr "RT_SC_E_END__Skeleton_translateY.msg" "hyperLayout1.hyp[148].dn";
connectAttr "RT_SC_E_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[149].dn";
connectAttr "RT_W__Skeleton_translateX.msg" "hyperLayout1.hyp[150].dn";
connectAttr "RT_W__Skeleton_translateY.msg" "hyperLayout1.hyp[151].dn";
connectAttr "RT_W__Skeleton_translateZ.msg" "hyperLayout1.hyp[152].dn";
connectAttr "RT_FINGA__Skeleton_translateX.msg" "hyperLayout1.hyp[153].dn";
connectAttr "RT_FINGA__Skeleton_translateY.msg" "hyperLayout1.hyp[154].dn";
connectAttr "RT_FINGA__Skeleton_translateZ.msg" "hyperLayout1.hyp[155].dn";
connectAttr "RT_FINGA1__Skeleton_translateX.msg" "hyperLayout1.hyp[156].dn";
connectAttr "RT_FINGA1__Skeleton_translateY.msg" "hyperLayout1.hyp[157].dn";
connectAttr "RT_FINGA1__Skeleton_translateZ.msg" "hyperLayout1.hyp[158].dn";
connectAttr "RT_FINGA2__Skeleton_translateX.msg" "hyperLayout1.hyp[159].dn";
connectAttr "RT_FINGA2__Skeleton_translateY.msg" "hyperLayout1.hyp[160].dn";
connectAttr "RT_FINGA2__Skeleton_translateZ.msg" "hyperLayout1.hyp[161].dn";
connectAttr "RT_FINGA_END__Skeleton_translateX.msg" "hyperLayout1.hyp[162].dn";
connectAttr "RT_FINGA_END__Skeleton_translateY.msg" "hyperLayout1.hyp[163].dn";
connectAttr "RT_FINGA_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[164].dn";
connectAttr "RT_FINGB__Skeleton_translateX.msg" "hyperLayout1.hyp[165].dn";
connectAttr "RT_FINGB__Skeleton_translateY.msg" "hyperLayout1.hyp[166].dn";
connectAttr "RT_FINGB__Skeleton_translateZ.msg" "hyperLayout1.hyp[167].dn";
connectAttr "RT_FINGB1__Skeleton_translateX.msg" "hyperLayout1.hyp[168].dn";
connectAttr "RT_FINGB1__Skeleton_translateY.msg" "hyperLayout1.hyp[169].dn";
connectAttr "RT_FINGB1__Skeleton_translateZ.msg" "hyperLayout1.hyp[170].dn";
connectAttr "RT_FINGB2__Skeleton_translateX.msg" "hyperLayout1.hyp[171].dn";
connectAttr "RT_FINGB2__Skeleton_translateY.msg" "hyperLayout1.hyp[172].dn";
connectAttr "RT_FINGB2__Skeleton_translateZ.msg" "hyperLayout1.hyp[173].dn";
connectAttr "RT_FINGB_END__Skeleton_translateX.msg" "hyperLayout1.hyp[174].dn";
connectAttr "RT_FINGB_END__Skeleton_translateY.msg" "hyperLayout1.hyp[175].dn";
connectAttr "RT_FINGB_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[176].dn";
connectAttr "RT_FINGC__Skeleton_translateX.msg" "hyperLayout1.hyp[177].dn";
connectAttr "RT_FINGC__Skeleton_translateY.msg" "hyperLayout1.hyp[178].dn";
connectAttr "RT_FINGC__Skeleton_translateZ.msg" "hyperLayout1.hyp[179].dn";
connectAttr "RT_FINGC1__Skeleton_translateX.msg" "hyperLayout1.hyp[180].dn";
connectAttr "RT_FINGC1__Skeleton_translateY.msg" "hyperLayout1.hyp[181].dn";
connectAttr "RT_FINGC1__Skeleton_translateZ.msg" "hyperLayout1.hyp[182].dn";
connectAttr "RT_FINGC2__Skeleton_translateX.msg" "hyperLayout1.hyp[183].dn";
connectAttr "RT_FINGC2__Skeleton_translateY.msg" "hyperLayout1.hyp[184].dn";
connectAttr "RT_FINGC2__Skeleton_translateZ.msg" "hyperLayout1.hyp[185].dn";
connectAttr "RT_FINGC_END__Skeleton_translateX.msg" "hyperLayout1.hyp[186].dn";
connectAttr "RT_FINGC_END__Skeleton_translateY.msg" "hyperLayout1.hyp[187].dn";
connectAttr "RT_FINGC_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[188].dn";
connectAttr "RT_FINGD__Skeleton_translateX.msg" "hyperLayout1.hyp[189].dn";
connectAttr "RT_FINGD__Skeleton_translateY.msg" "hyperLayout1.hyp[190].dn";
connectAttr "RT_FINGD__Skeleton_translateZ.msg" "hyperLayout1.hyp[191].dn";
connectAttr "RT_FINGD1__Skeleton_translateX.msg" "hyperLayout1.hyp[192].dn";
connectAttr "RT_FINGD1__Skeleton_translateY.msg" "hyperLayout1.hyp[193].dn";
connectAttr "RT_FINGD1__Skeleton_translateZ.msg" "hyperLayout1.hyp[194].dn";
connectAttr "RT_FINGD2__Skeleton_translateX.msg" "hyperLayout1.hyp[195].dn";
connectAttr "RT_FINGD2__Skeleton_translateY.msg" "hyperLayout1.hyp[196].dn";
connectAttr "RT_FINGD2__Skeleton_translateZ.msg" "hyperLayout1.hyp[197].dn";
connectAttr "RT_FINGD_END__Skeleton_translateX.msg" "hyperLayout1.hyp[198].dn";
connectAttr "RT_FINGD_END__Skeleton_translateY.msg" "hyperLayout1.hyp[199].dn";
connectAttr "RT_FINGD_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[200].dn";
connectAttr "RT_PROP__Skeleton_translateX.msg" "hyperLayout1.hyp[201].dn";
connectAttr "RT_PROP__Skeleton_translateY.msg" "hyperLayout1.hyp[202].dn";
connectAttr "RT_PROP__Skeleton_translateZ.msg" "hyperLayout1.hyp[203].dn";
connectAttr "RT_PROP_END__Skeleton_translateX.msg" "hyperLayout1.hyp[204].dn";
connectAttr "RT_PROP_END__Skeleton_translateY.msg" "hyperLayout1.hyp[205].dn";
connectAttr "RT_PROP_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[206].dn";
connectAttr "RT_SPECIAL__Skeleton_translateX.msg" "hyperLayout1.hyp[207].dn";
connectAttr "RT_SPECIAL__Skeleton_translateY.msg" "hyperLayout1.hyp[208].dn";
connectAttr "RT_SPECIAL__Skeleton_translateZ.msg" "hyperLayout1.hyp[209].dn";
connectAttr "RT_SPECIAL_END__Skeleton_translateX.msg" "hyperLayout1.hyp[210].dn"
		;
connectAttr "RT_SPECIAL_END__Skeleton_translateY.msg" "hyperLayout1.hyp[211].dn"
		;
connectAttr "RT_SPECIAL_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[212].dn"
		;
connectAttr "RT_THUMB__Skeleton_translateX.msg" "hyperLayout1.hyp[213].dn";
connectAttr "RT_THUMB__Skeleton_translateY.msg" "hyperLayout1.hyp[214].dn";
connectAttr "RT_THUMB__Skeleton_translateZ.msg" "hyperLayout1.hyp[215].dn";
connectAttr "RT_THUMB1__Skeleton_translateX.msg" "hyperLayout1.hyp[216].dn";
connectAttr "RT_THUMB1__Skeleton_translateY.msg" "hyperLayout1.hyp[217].dn";
connectAttr "RT_THUMB1__Skeleton_translateZ.msg" "hyperLayout1.hyp[218].dn";
connectAttr "RT_THUMB2__Skeleton_translateX.msg" "hyperLayout1.hyp[219].dn";
connectAttr "RT_THUMB2__Skeleton_translateY.msg" "hyperLayout1.hyp[220].dn";
connectAttr "RT_THUMB2__Skeleton_translateZ.msg" "hyperLayout1.hyp[221].dn";
connectAttr "RT_THUMB_END__Skeleton_translateX.msg" "hyperLayout1.hyp[222].dn";
connectAttr "RT_THUMB_END__Skeleton_translateY.msg" "hyperLayout1.hyp[223].dn";
connectAttr "RT_THUMB_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[224].dn";
connectAttr "RT_SC_S__Skeleton_translateX.msg" "hyperLayout1.hyp[225].dn";
connectAttr "RT_SC_S__Skeleton_translateY.msg" "hyperLayout1.hyp[226].dn";
connectAttr "RT_SC_S__Skeleton_translateZ.msg" "hyperLayout1.hyp[227].dn";
connectAttr "RT_SC_S_END__Skeleton_translateX.msg" "hyperLayout1.hyp[228].dn";
connectAttr "RT_SC_S_END__Skeleton_translateY.msg" "hyperLayout1.hyp[229].dn";
connectAttr "RT_SC_S_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[230].dn";
connectAttr "RT_SC_TWIST_S__Skeleton_translateX.msg" "hyperLayout1.hyp[231].dn";
connectAttr "RT_SC_TWIST_S__Skeleton_translateY.msg" "hyperLayout1.hyp[232].dn";
connectAttr "RT_SC_TWIST_S__Skeleton_translateZ.msg" "hyperLayout1.hyp[233].dn";
connectAttr "RT_SC_TWIST_S_END__Skeleton_translateX.msg" "hyperLayout1.hyp[234].dn"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_translateY.msg" "hyperLayout1.hyp[235].dn"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[236].dn"
		;
connectAttr "SC_BACKB__Skeleton_translateX.msg" "hyperLayout1.hyp[237].dn";
connectAttr "SC_BACKB__Skeleton_translateY.msg" "hyperLayout1.hyp[238].dn";
connectAttr "SC_BACKB__Skeleton_translateZ.msg" "hyperLayout1.hyp[239].dn";
connectAttr "SC_BACKB_END__Skeleton_translateX.msg" "hyperLayout1.hyp[240].dn";
connectAttr "SC_BACKB_END__Skeleton_translateY.msg" "hyperLayout1.hyp[241].dn";
connectAttr "SC_BACKB_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[242].dn";
connectAttr "SC_BACKA__Skeleton_translateX.msg" "hyperLayout1.hyp[243].dn";
connectAttr "SC_BACKA__Skeleton_translateY.msg" "hyperLayout1.hyp[244].dn";
connectAttr "SC_BACKA__Skeleton_translateZ.msg" "hyperLayout1.hyp[245].dn";
connectAttr "SC_BACKA_END__Skeleton_translateX.msg" "hyperLayout1.hyp[246].dn";
connectAttr "SC_BACKA_END__Skeleton_translateY.msg" "hyperLayout1.hyp[247].dn";
connectAttr "SC_BACKA_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[248].dn";
connectAttr "LF_H__Skeleton_translateX.msg" "hyperLayout1.hyp[249].dn";
connectAttr "LF_H__Skeleton_translateY.msg" "hyperLayout1.hyp[250].dn";
connectAttr "LF_H__Skeleton_translateZ.msg" "hyperLayout1.hyp[251].dn";
connectAttr "LF_K__Skeleton_translateX.msg" "hyperLayout1.hyp[252].dn";
connectAttr "LF_K__Skeleton_translateY.msg" "hyperLayout1.hyp[253].dn";
connectAttr "LF_K__Skeleton_translateZ.msg" "hyperLayout1.hyp[254].dn";
connectAttr "LF_A__Skeleton_translateX.msg" "hyperLayout1.hyp[255].dn";
connectAttr "LF_A__Skeleton_translateY.msg" "hyperLayout1.hyp[256].dn";
connectAttr "LF_A__Skeleton_translateZ.msg" "hyperLayout1.hyp[257].dn";
connectAttr "LF_T__Skeleton_translateX.msg" "hyperLayout1.hyp[258].dn";
connectAttr "LF_T__Skeleton_translateY.msg" "hyperLayout1.hyp[259].dn";
connectAttr "LF_T__Skeleton_translateZ.msg" "hyperLayout1.hyp[260].dn";
connectAttr "LF_T_END__Skeleton_translateX.msg" "hyperLayout1.hyp[261].dn";
connectAttr "LF_T_END__Skeleton_translateY.msg" "hyperLayout1.hyp[262].dn";
connectAttr "LF_T_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[263].dn";
connectAttr "LF_SC_K__Skeleton_translateX.msg" "hyperLayout1.hyp[264].dn";
connectAttr "LF_SC_K__Skeleton_translateY.msg" "hyperLayout1.hyp[265].dn";
connectAttr "LF_SC_K__Skeleton_translateZ.msg" "hyperLayout1.hyp[266].dn";
connectAttr "LF_SC_K_END__Skeleton_translateX.msg" "hyperLayout1.hyp[267].dn";
connectAttr "LF_SC_K_END__Skeleton_translateY.msg" "hyperLayout1.hyp[268].dn";
connectAttr "LF_SC_K_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[269].dn";
connectAttr "LF_SC_H__Skeleton_translateX.msg" "hyperLayout1.hyp[270].dn";
connectAttr "LF_SC_H__Skeleton_translateY.msg" "hyperLayout1.hyp[271].dn";
connectAttr "LF_SC_H__Skeleton_translateZ.msg" "hyperLayout1.hyp[272].dn";
connectAttr "LF_SC_H_END__Skeleton_translateX.msg" "hyperLayout1.hyp[273].dn";
connectAttr "LF_SC_H_END__Skeleton_translateY.msg" "hyperLayout1.hyp[274].dn";
connectAttr "LF_SC_H_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[275].dn";
connectAttr "RT_H__Skeleton_translateX.msg" "hyperLayout1.hyp[276].dn";
connectAttr "RT_H__Skeleton_translateY.msg" "hyperLayout1.hyp[277].dn";
connectAttr "RT_H__Skeleton_translateZ.msg" "hyperLayout1.hyp[278].dn";
connectAttr "RT_K__Skeleton_translateX.msg" "hyperLayout1.hyp[279].dn";
connectAttr "RT_K__Skeleton_translateY.msg" "hyperLayout1.hyp[280].dn";
connectAttr "RT_K__Skeleton_translateZ.msg" "hyperLayout1.hyp[281].dn";
connectAttr "RT_A__Skeleton_translateX.msg" "hyperLayout1.hyp[282].dn";
connectAttr "RT_A__Skeleton_translateY.msg" "hyperLayout1.hyp[283].dn";
connectAttr "RT_A__Skeleton_translateZ.msg" "hyperLayout1.hyp[284].dn";
connectAttr "RT_T__Skeleton_translateX.msg" "hyperLayout1.hyp[285].dn";
connectAttr "RT_T__Skeleton_translateY.msg" "hyperLayout1.hyp[286].dn";
connectAttr "RT_T__Skeleton_translateZ.msg" "hyperLayout1.hyp[287].dn";
connectAttr "RT_T_END__Skeleton_translateX.msg" "hyperLayout1.hyp[288].dn";
connectAttr "RT_T_END__Skeleton_translateY.msg" "hyperLayout1.hyp[289].dn";
connectAttr "RT_T_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[290].dn";
connectAttr "RT_SC_K__Skeleton_translateX.msg" "hyperLayout1.hyp[291].dn";
connectAttr "RT_SC_K__Skeleton_translateY.msg" "hyperLayout1.hyp[292].dn";
connectAttr "RT_SC_K__Skeleton_translateZ.msg" "hyperLayout1.hyp[293].dn";
connectAttr "RT_SC_K_END__Skeleton_translateX.msg" "hyperLayout1.hyp[294].dn";
connectAttr "RT_SC_K_END__Skeleton_translateY.msg" "hyperLayout1.hyp[295].dn";
connectAttr "RT_SC_K_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[296].dn";
connectAttr "RT_SC_H__Skeleton_translateX.msg" "hyperLayout1.hyp[297].dn";
connectAttr "RT_SC_H__Skeleton_translateY.msg" "hyperLayout1.hyp[298].dn";
connectAttr "RT_SC_H__Skeleton_translateZ.msg" "hyperLayout1.hyp[299].dn";
connectAttr "RT_SC_H_END__Skeleton_translateX.msg" "hyperLayout1.hyp[300].dn";
connectAttr "RT_SC_H_END__Skeleton_translateY.msg" "hyperLayout1.hyp[301].dn";
connectAttr "RT_SC_H_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[302].dn";
connectAttr "SC_BASE__Skeleton_translateX.msg" "hyperLayout1.hyp[303].dn";
connectAttr "SC_BASE__Skeleton_translateY.msg" "hyperLayout1.hyp[304].dn";
connectAttr "SC_BASE__Skeleton_translateZ.msg" "hyperLayout1.hyp[305].dn";
connectAttr "SC_BASE_END__Skeleton_translateX.msg" "hyperLayout1.hyp[306].dn";
connectAttr "SC_BASE_END__Skeleton_translateY.msg" "hyperLayout1.hyp[307].dn";
connectAttr "SC_BASE_END__Skeleton_translateZ.msg" "hyperLayout1.hyp[308].dn";
connectAttr "BASE__Skeleton_visibility.msg" "hyperLayout1.hyp[309].dn";
connectAttr "BASE__Skeleton_scaleX.msg" "hyperLayout1.hyp[310].dn";
connectAttr "BASE__Skeleton_scaleY.msg" "hyperLayout1.hyp[311].dn";
connectAttr "BASE__Skeleton_scaleZ.msg" "hyperLayout1.hyp[312].dn";
connectAttr "BASE__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[313].dn"
		;
connectAttr "BASE__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[314].dn";
connectAttr "BACKA__Skeleton_visibility.msg" "hyperLayout1.hyp[315].dn";
connectAttr "BACKA__Skeleton_scaleX.msg" "hyperLayout1.hyp[316].dn";
connectAttr "BACKA__Skeleton_scaleY.msg" "hyperLayout1.hyp[317].dn";
connectAttr "BACKA__Skeleton_scaleZ.msg" "hyperLayout1.hyp[318].dn";
connectAttr "BACKA__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[319].dn"
		;
connectAttr "BACKA__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[320].dn";
connectAttr "BACKB__Skeleton_visibility.msg" "hyperLayout1.hyp[321].dn";
connectAttr "BACKB__Skeleton_scaleX.msg" "hyperLayout1.hyp[322].dn";
connectAttr "BACKB__Skeleton_scaleY.msg" "hyperLayout1.hyp[323].dn";
connectAttr "BACKB__Skeleton_scaleZ.msg" "hyperLayout1.hyp[324].dn";
connectAttr "BACKB__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[325].dn"
		;
connectAttr "BACKB__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[326].dn";
connectAttr "SC_BACKB__Skeleton_visibility.msg" "hyperLayout1.hyp[327].dn";
connectAttr "SC_BACKB__Skeleton_rotateX.msg" "hyperLayout1.hyp[328].dn";
connectAttr "SC_BACKB__Skeleton_rotateY.msg" "hyperLayout1.hyp[329].dn";
connectAttr "SC_BACKB__Skeleton_rotateZ.msg" "hyperLayout1.hyp[330].dn";
connectAttr "SC_BACKB__Skeleton_scaleY.msg" "hyperLayout1.hyp[331].dn";
connectAttr "SC_BACKB__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[332].dn"
		;
connectAttr "SC_BACKB__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[333].dn";
connectAttr "SC_BACKB_END__Skeleton_visibility.msg" "hyperLayout1.hyp[334].dn";
connectAttr "SC_BACKB_END__Skeleton_rotateX.msg" "hyperLayout1.hyp[335].dn";
connectAttr "SC_BACKB_END__Skeleton_rotateY.msg" "hyperLayout1.hyp[336].dn";
connectAttr "SC_BACKB_END__Skeleton_rotateZ.msg" "hyperLayout1.hyp[337].dn";
connectAttr "SC_BACKB_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[338].dn";
connectAttr "SC_BACKB_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[339].dn";
connectAttr "SC_BACKB_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[340].dn";
connectAttr "SC_BACKB_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[341].dn"
		;
connectAttr "SC_BACKB_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[342].dn"
		;
connectAttr "NECK__Skeleton_visibility.msg" "hyperLayout1.hyp[343].dn";
connectAttr "NECK__Skeleton_scaleX.msg" "hyperLayout1.hyp[344].dn";
connectAttr "NECK__Skeleton_scaleY.msg" "hyperLayout1.hyp[345].dn";
connectAttr "NECK__Skeleton_scaleZ.msg" "hyperLayout1.hyp[346].dn";
connectAttr "NECK__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[347].dn"
		;
connectAttr "NECK__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[348].dn";
connectAttr "SC_NECK__Skeleton_visibility.msg" "hyperLayout1.hyp[349].dn";
connectAttr "SC_NECK__Skeleton_rotateX.msg" "hyperLayout1.hyp[350].dn";
connectAttr "SC_NECK__Skeleton_rotateY.msg" "hyperLayout1.hyp[351].dn";
connectAttr "SC_NECK__Skeleton_rotateZ.msg" "hyperLayout1.hyp[352].dn";
connectAttr "SC_NECK__Skeleton_scaleY.msg" "hyperLayout1.hyp[353].dn";
connectAttr "SC_NECK__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[354].dn"
		;
connectAttr "SC_NECK__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[355].dn";
connectAttr "SC_NECK_END__Skeleton_visibility.msg" "hyperLayout1.hyp[356].dn";
connectAttr "SC_NECK_END__Skeleton_rotateX.msg" "hyperLayout1.hyp[357].dn";
connectAttr "SC_NECK_END__Skeleton_rotateY.msg" "hyperLayout1.hyp[358].dn";
connectAttr "SC_NECK_END__Skeleton_rotateZ.msg" "hyperLayout1.hyp[359].dn";
connectAttr "SC_NECK_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[360].dn";
connectAttr "SC_NECK_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[361].dn";
connectAttr "SC_NECK_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[362].dn";
connectAttr "SC_NECK_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[363].dn"
		;
connectAttr "SC_NECK_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[364].dn"
		;
connectAttr "HEAD__Skeleton_visibility.msg" "hyperLayout1.hyp[365].dn";
connectAttr "HEAD__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[366].dn"
		;
connectAttr "HEAD__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[367].dn";
connectAttr "HEAD_END__Skeleton_visibility.msg" "hyperLayout1.hyp[368].dn";
connectAttr "HEAD_END__Skeleton_rotateX.msg" "hyperLayout1.hyp[369].dn";
connectAttr "HEAD_END__Skeleton_rotateY.msg" "hyperLayout1.hyp[370].dn";
connectAttr "HEAD_END__Skeleton_rotateZ.msg" "hyperLayout1.hyp[371].dn";
connectAttr "HEAD_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[372].dn";
connectAttr "HEAD_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[373].dn";
connectAttr "HEAD_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[374].dn";
connectAttr "HEAD_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[375].dn"
		;
connectAttr "HEAD_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[376].dn";
connectAttr "LF_C__Skeleton_visibility.msg" "hyperLayout1.hyp[377].dn";
connectAttr "LF_C__Skeleton_scaleX.msg" "hyperLayout1.hyp[378].dn";
connectAttr "LF_C__Skeleton_scaleY.msg" "hyperLayout1.hyp[379].dn";
connectAttr "LF_C__Skeleton_scaleZ.msg" "hyperLayout1.hyp[380].dn";
connectAttr "LF_C__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[381].dn"
		;
connectAttr "LF_C__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[382].dn";
connectAttr "LF_S__Skeleton_visibility.msg" "hyperLayout1.hyp[383].dn";
connectAttr "LF_S__Skeleton_scaleX.msg" "hyperLayout1.hyp[384].dn";
connectAttr "LF_S__Skeleton_scaleY.msg" "hyperLayout1.hyp[385].dn";
connectAttr "LF_S__Skeleton_scaleZ.msg" "hyperLayout1.hyp[386].dn";
connectAttr "LF_S__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[387].dn"
		;
connectAttr "LF_S__Skeleton_ArmBackOrFwdSkinAdjust.msg" "hyperLayout1.hyp[388].dn"
		;
connectAttr "LF_S__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[389].dn";
connectAttr "LF_E__Skeleton_visibility.msg" "hyperLayout1.hyp[390].dn";
connectAttr "LF_E__Skeleton_scaleX.msg" "hyperLayout1.hyp[391].dn";
connectAttr "LF_E__Skeleton_scaleY.msg" "hyperLayout1.hyp[392].dn";
connectAttr "LF_E__Skeleton_scaleZ.msg" "hyperLayout1.hyp[393].dn";
connectAttr "LF_E__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[394].dn"
		;
connectAttr "LF_E__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[395].dn";
connectAttr "LF_W__Skeleton_visibility.msg" "hyperLayout1.hyp[396].dn";
connectAttr "LF_W__Skeleton_scaleX.msg" "hyperLayout1.hyp[397].dn";
connectAttr "LF_W__Skeleton_scaleY.msg" "hyperLayout1.hyp[398].dn";
connectAttr "LF_W__Skeleton_scaleZ.msg" "hyperLayout1.hyp[399].dn";
connectAttr "LF_W__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[400].dn"
		;
connectAttr "LF_W__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[401].dn";
connectAttr "LF_FINGD__Skeleton_visibility.msg" "hyperLayout1.hyp[402].dn";
connectAttr "LF_FINGD__Skeleton_scaleX.msg" "hyperLayout1.hyp[403].dn";
connectAttr "LF_FINGD__Skeleton_scaleY.msg" "hyperLayout1.hyp[404].dn";
connectAttr "LF_FINGD__Skeleton_scaleZ.msg" "hyperLayout1.hyp[405].dn";
connectAttr "LF_FINGD__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[406].dn"
		;
connectAttr "LF_FINGD__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[407].dn";
connectAttr "LF_FINGD1__Skeleton_visibility.msg" "hyperLayout1.hyp[408].dn";
connectAttr "LF_FINGD1__Skeleton_scaleX.msg" "hyperLayout1.hyp[409].dn";
connectAttr "LF_FINGD1__Skeleton_scaleY.msg" "hyperLayout1.hyp[410].dn";
connectAttr "LF_FINGD1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[411].dn";
connectAttr "LF_FINGD1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[412].dn"
		;
connectAttr "LF_FINGD1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[413].dn";
connectAttr "LF_FINGD2__Skeleton_visibility.msg" "hyperLayout1.hyp[414].dn";
connectAttr "LF_FINGD2__Skeleton_scaleX.msg" "hyperLayout1.hyp[415].dn";
connectAttr "LF_FINGD2__Skeleton_scaleY.msg" "hyperLayout1.hyp[416].dn";
connectAttr "LF_FINGD2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[417].dn";
connectAttr "LF_FINGD2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[418].dn"
		;
connectAttr "LF_FINGD2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[419].dn";
connectAttr "LF_FINGD_END__Skeleton_visibility.msg" "hyperLayout1.hyp[420].dn";
connectAttr "LF_FINGD_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[421].dn";
connectAttr "LF_FINGD_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[422].dn";
connectAttr "LF_FINGD_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[423].dn";
connectAttr "LF_FINGD_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[424].dn"
		;
connectAttr "LF_FINGD_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[425].dn"
		;
connectAttr "LF_FINGC__Skeleton_visibility.msg" "hyperLayout1.hyp[426].dn";
connectAttr "LF_FINGC__Skeleton_scaleX.msg" "hyperLayout1.hyp[427].dn";
connectAttr "LF_FINGC__Skeleton_scaleY.msg" "hyperLayout1.hyp[428].dn";
connectAttr "LF_FINGC__Skeleton_scaleZ.msg" "hyperLayout1.hyp[429].dn";
connectAttr "LF_FINGC__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[430].dn"
		;
connectAttr "LF_FINGC__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[431].dn";
connectAttr "LF_FINGC1__Skeleton_visibility.msg" "hyperLayout1.hyp[432].dn";
connectAttr "LF_FINGC1__Skeleton_scaleX.msg" "hyperLayout1.hyp[433].dn";
connectAttr "LF_FINGC1__Skeleton_scaleY.msg" "hyperLayout1.hyp[434].dn";
connectAttr "LF_FINGC1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[435].dn";
connectAttr "LF_FINGC1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[436].dn"
		;
connectAttr "LF_FINGC1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[437].dn";
connectAttr "LF_FINGC2__Skeleton_visibility.msg" "hyperLayout1.hyp[438].dn";
connectAttr "LF_FINGC2__Skeleton_scaleX.msg" "hyperLayout1.hyp[439].dn";
connectAttr "LF_FINGC2__Skeleton_scaleY.msg" "hyperLayout1.hyp[440].dn";
connectAttr "LF_FINGC2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[441].dn";
connectAttr "LF_FINGC2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[442].dn"
		;
connectAttr "LF_FINGC2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[443].dn";
connectAttr "LF_FINGC_END__Skeleton_visibility.msg" "hyperLayout1.hyp[444].dn";
connectAttr "LF_FINGC_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[445].dn";
connectAttr "LF_FINGC_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[446].dn";
connectAttr "LF_FINGC_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[447].dn";
connectAttr "LF_FINGC_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[448].dn"
		;
connectAttr "LF_FINGC_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[449].dn"
		;
connectAttr "LF_FINGB__Skeleton_visibility.msg" "hyperLayout1.hyp[450].dn";
connectAttr "LF_FINGB__Skeleton_scaleX.msg" "hyperLayout1.hyp[451].dn";
connectAttr "LF_FINGB__Skeleton_scaleY.msg" "hyperLayout1.hyp[452].dn";
connectAttr "LF_FINGB__Skeleton_scaleZ.msg" "hyperLayout1.hyp[453].dn";
connectAttr "LF_FINGB__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[454].dn"
		;
connectAttr "LF_FINGB__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[455].dn";
connectAttr "LF_FINGB1__Skeleton_visibility.msg" "hyperLayout1.hyp[456].dn";
connectAttr "LF_FINGB1__Skeleton_scaleX.msg" "hyperLayout1.hyp[457].dn";
connectAttr "LF_FINGB1__Skeleton_scaleY.msg" "hyperLayout1.hyp[458].dn";
connectAttr "LF_FINGB1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[459].dn";
connectAttr "LF_FINGB1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[460].dn"
		;
connectAttr "LF_FINGB1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[461].dn";
connectAttr "LF_FINGB2__Skeleton_visibility.msg" "hyperLayout1.hyp[462].dn";
connectAttr "LF_FINGB2__Skeleton_scaleX.msg" "hyperLayout1.hyp[463].dn";
connectAttr "LF_FINGB2__Skeleton_scaleY.msg" "hyperLayout1.hyp[464].dn";
connectAttr "LF_FINGB2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[465].dn";
connectAttr "LF_FINGB2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[466].dn"
		;
connectAttr "LF_FINGB2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[467].dn";
connectAttr "LF_FINGB_END__Skeleton_visibility.msg" "hyperLayout1.hyp[468].dn";
connectAttr "LF_FINGB_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[469].dn";
connectAttr "LF_FINGB_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[470].dn";
connectAttr "LF_FINGB_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[471].dn";
connectAttr "LF_FINGB_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[472].dn"
		;
connectAttr "LF_FINGB_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[473].dn"
		;
connectAttr "LF_FINGA__Skeleton_visibility.msg" "hyperLayout1.hyp[474].dn";
connectAttr "LF_FINGA__Skeleton_scaleX.msg" "hyperLayout1.hyp[475].dn";
connectAttr "LF_FINGA__Skeleton_scaleY.msg" "hyperLayout1.hyp[476].dn";
connectAttr "LF_FINGA__Skeleton_scaleZ.msg" "hyperLayout1.hyp[477].dn";
connectAttr "LF_FINGA__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[478].dn"
		;
connectAttr "LF_FINGA__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[479].dn";
connectAttr "LF_FINGA1__Skeleton_visibility.msg" "hyperLayout1.hyp[480].dn";
connectAttr "LF_FINGA1__Skeleton_scaleX.msg" "hyperLayout1.hyp[481].dn";
connectAttr "LF_FINGA1__Skeleton_scaleY.msg" "hyperLayout1.hyp[482].dn";
connectAttr "LF_FINGA1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[483].dn";
connectAttr "LF_FINGA1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[484].dn"
		;
connectAttr "LF_FINGA1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[485].dn";
connectAttr "LF_FINGA2__Skeleton_visibility.msg" "hyperLayout1.hyp[486].dn";
connectAttr "LF_FINGA2__Skeleton_scaleX.msg" "hyperLayout1.hyp[487].dn";
connectAttr "LF_FINGA2__Skeleton_scaleY.msg" "hyperLayout1.hyp[488].dn";
connectAttr "LF_FINGA2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[489].dn";
connectAttr "LF_FINGA2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[490].dn"
		;
connectAttr "LF_FINGA2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[491].dn";
connectAttr "LF_FINGA_END__Skeleton_visibility.msg" "hyperLayout1.hyp[492].dn";
connectAttr "LF_FINGA_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[493].dn";
connectAttr "LF_FINGA_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[494].dn";
connectAttr "LF_FINGA_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[495].dn";
connectAttr "LF_FINGA_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[496].dn"
		;
connectAttr "LF_FINGA_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[497].dn"
		;
connectAttr "LF_THUMB__Skeleton_visibility.msg" "hyperLayout1.hyp[498].dn";
connectAttr "LF_THUMB__Skeleton_scaleX.msg" "hyperLayout1.hyp[499].dn";
connectAttr "LF_THUMB__Skeleton_scaleY.msg" "hyperLayout1.hyp[500].dn";
connectAttr "LF_THUMB__Skeleton_scaleZ.msg" "hyperLayout1.hyp[501].dn";
connectAttr "LF_THUMB__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[502].dn"
		;
connectAttr "LF_THUMB__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[503].dn";
connectAttr "LF_THUMB1__Skeleton_visibility.msg" "hyperLayout1.hyp[504].dn";
connectAttr "LF_THUMB1__Skeleton_scaleX.msg" "hyperLayout1.hyp[505].dn";
connectAttr "LF_THUMB1__Skeleton_scaleY.msg" "hyperLayout1.hyp[506].dn";
connectAttr "LF_THUMB1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[507].dn";
connectAttr "LF_THUMB1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[508].dn"
		;
connectAttr "LF_THUMB1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[509].dn";
connectAttr "LF_THUMB2__Skeleton_visibility.msg" "hyperLayout1.hyp[510].dn";
connectAttr "LF_THUMB2__Skeleton_scaleX.msg" "hyperLayout1.hyp[511].dn";
connectAttr "LF_THUMB2__Skeleton_scaleY.msg" "hyperLayout1.hyp[512].dn";
connectAttr "LF_THUMB2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[513].dn";
connectAttr "LF_THUMB2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[514].dn"
		;
connectAttr "LF_THUMB2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[515].dn";
connectAttr "LF_THUMB_END__Skeleton_visibility.msg" "hyperLayout1.hyp[516].dn";
connectAttr "LF_THUMB_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[517].dn";
connectAttr "LF_THUMB_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[518].dn";
connectAttr "LF_THUMB_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[519].dn";
connectAttr "LF_THUMB_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[520].dn"
		;
connectAttr "LF_THUMB_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[521].dn"
		;
connectAttr "LF_PROP__Skeleton_visibility.msg" "hyperLayout1.hyp[522].dn";
connectAttr "LF_PROP__Skeleton_scaleX.msg" "hyperLayout1.hyp[523].dn";
connectAttr "LF_PROP__Skeleton_scaleY.msg" "hyperLayout1.hyp[524].dn";
connectAttr "LF_PROP__Skeleton_scaleZ.msg" "hyperLayout1.hyp[525].dn";
connectAttr "LF_PROP__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[526].dn"
		;
connectAttr "LF_PROP__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[527].dn";
connectAttr "LF_PROP_END__Skeleton_visibility.msg" "hyperLayout1.hyp[528].dn";
connectAttr "LF_PROP_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[529].dn";
connectAttr "LF_PROP_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[530].dn";
connectAttr "LF_PROP_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[531].dn";
connectAttr "LF_PROP_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[532].dn"
		;
connectAttr "LF_PROP_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[533].dn"
		;
connectAttr "LF_SPECIAL__Skeleton_visibility.msg" "hyperLayout1.hyp[534].dn";
connectAttr "LF_SPECIAL__Skeleton_scaleX.msg" "hyperLayout1.hyp[535].dn";
connectAttr "LF_SPECIAL__Skeleton_scaleY.msg" "hyperLayout1.hyp[536].dn";
connectAttr "LF_SPECIAL__Skeleton_scaleZ.msg" "hyperLayout1.hyp[537].dn";
connectAttr "LF_SPECIAL__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[538].dn"
		;
connectAttr "LF_SPECIAL__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[539].dn";
connectAttr "LF_SPECIAL_END__Skeleton_visibility.msg" "hyperLayout1.hyp[540].dn"
		;
connectAttr "LF_SPECIAL_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[541].dn";
connectAttr "LF_SPECIAL_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[542].dn";
connectAttr "LF_SPECIAL_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[543].dn";
connectAttr "LF_SPECIAL_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[544].dn"
		;
connectAttr "LF_SPECIAL_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[545].dn"
		;
connectAttr "LF_E_TWIST__Skeleton_visibility.msg" "hyperLayout1.hyp[546].dn";
connectAttr "LF_E_TWIST__Skeleton_scaleX.msg" "hyperLayout1.hyp[547].dn";
connectAttr "LF_E_TWIST__Skeleton_scaleY.msg" "hyperLayout1.hyp[548].dn";
connectAttr "LF_E_TWIST__Skeleton_scaleZ.msg" "hyperLayout1.hyp[549].dn";
connectAttr "LF_E_TWIST__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[550].dn"
		;
connectAttr "LF_E_TWIST__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[551].dn";
connectAttr "LF_E_TWIST_END__Skeleton_visibility.msg" "hyperLayout1.hyp[552].dn"
		;
connectAttr "LF_E_TWIST_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[553].dn";
connectAttr "LF_E_TWIST_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[554].dn";
connectAttr "LF_E_TWIST_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[555].dn";
connectAttr "LF_E_TWIST_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[556].dn"
		;
connectAttr "LF_E_TWIST_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[557].dn"
		;
connectAttr "LF_SC_E__Skeleton_visibility.msg" "hyperLayout1.hyp[558].dn";
connectAttr "LF_SC_E__Skeleton_scaleX.msg" "hyperLayout1.hyp[559].dn";
connectAttr "LF_SC_E__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[560].dn"
		;
connectAttr "LF_SC_E__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[561].dn";
connectAttr "LF_SC_E_END__Skeleton_visibility.msg" "hyperLayout1.hyp[562].dn";
connectAttr "LF_SC_E_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[563].dn";
connectAttr "LF_SC_E_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[564].dn";
connectAttr "LF_SC_E_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[565].dn";
connectAttr "LF_SC_E_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[566].dn"
		;
connectAttr "LF_SC_E_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[567].dn"
		;
connectAttr "LF_SC_S__Skeleton_visibility.msg" "hyperLayout1.hyp[568].dn";
connectAttr "LF_SC_S__Skeleton_scaleX.msg" "hyperLayout1.hyp[569].dn";
connectAttr "LF_SC_S__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[570].dn"
		;
connectAttr "LF_SC_S__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[571].dn";
connectAttr "LF_SC_S_END__Skeleton_visibility.msg" "hyperLayout1.hyp[572].dn";
connectAttr "LF_SC_S_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[573].dn";
connectAttr "LF_SC_S_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[574].dn";
connectAttr "LF_SC_S_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[575].dn";
connectAttr "LF_SC_S_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[576].dn"
		;
connectAttr "LF_SC_S_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[577].dn"
		;
connectAttr "LF_SC_TWIST_S__Skeleton_visibility.msg" "hyperLayout1.hyp[578].dn";
connectAttr "LF_SC_TWIST_S__Skeleton_scaleX.msg" "hyperLayout1.hyp[579].dn";
connectAttr "LF_SC_TWIST_S__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[580].dn"
		;
connectAttr "LF_SC_TWIST_S__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[581].dn"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_visibility.msg" "hyperLayout1.hyp[582].dn"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[583].dn";
connectAttr "LF_SC_TWIST_S_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[584].dn";
connectAttr "LF_SC_TWIST_S_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[585].dn";
connectAttr "LF_SC_TWIST_S_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[586].dn"
		;
connectAttr "LF_SC_TWIST_S_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[587].dn"
		;
connectAttr "RT_C__Skeleton_visibility.msg" "hyperLayout1.hyp[588].dn";
connectAttr "RT_C__Skeleton_scaleX.msg" "hyperLayout1.hyp[589].dn";
connectAttr "RT_C__Skeleton_scaleY.msg" "hyperLayout1.hyp[590].dn";
connectAttr "RT_C__Skeleton_scaleZ.msg" "hyperLayout1.hyp[591].dn";
connectAttr "RT_C__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[592].dn"
		;
connectAttr "RT_C__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[593].dn";
connectAttr "RT_S__Skeleton_visibility.msg" "hyperLayout1.hyp[594].dn";
connectAttr "RT_S__Skeleton_scaleX.msg" "hyperLayout1.hyp[595].dn";
connectAttr "RT_S__Skeleton_scaleY.msg" "hyperLayout1.hyp[596].dn";
connectAttr "RT_S__Skeleton_scaleZ.msg" "hyperLayout1.hyp[597].dn";
connectAttr "RT_S__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[598].dn"
		;
connectAttr "RT_S__Skeleton_ArmBackOrFwdSkinAdjust.msg" "hyperLayout1.hyp[599].dn"
		;
connectAttr "RT_S__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[600].dn";
connectAttr "RT_E__Skeleton_visibility.msg" "hyperLayout1.hyp[601].dn";
connectAttr "RT_E__Skeleton_scaleX.msg" "hyperLayout1.hyp[602].dn";
connectAttr "RT_E__Skeleton_scaleY.msg" "hyperLayout1.hyp[603].dn";
connectAttr "RT_E__Skeleton_scaleZ.msg" "hyperLayout1.hyp[604].dn";
connectAttr "RT_E__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[605].dn"
		;
connectAttr "RT_E__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[606].dn";
connectAttr "RT_W__Skeleton_visibility.msg" "hyperLayout1.hyp[607].dn";
connectAttr "RT_W__Skeleton_scaleX.msg" "hyperLayout1.hyp[608].dn";
connectAttr "RT_W__Skeleton_scaleY.msg" "hyperLayout1.hyp[609].dn";
connectAttr "RT_W__Skeleton_scaleZ.msg" "hyperLayout1.hyp[610].dn";
connectAttr "RT_W__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[611].dn"
		;
connectAttr "RT_W__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[612].dn";
connectAttr "RT_FINGD__Skeleton_visibility.msg" "hyperLayout1.hyp[613].dn";
connectAttr "RT_FINGD__Skeleton_scaleX.msg" "hyperLayout1.hyp[614].dn";
connectAttr "RT_FINGD__Skeleton_scaleY.msg" "hyperLayout1.hyp[615].dn";
connectAttr "RT_FINGD__Skeleton_scaleZ.msg" "hyperLayout1.hyp[616].dn";
connectAttr "RT_FINGD__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[617].dn"
		;
connectAttr "RT_FINGD__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[618].dn";
connectAttr "RT_FINGD1__Skeleton_visibility.msg" "hyperLayout1.hyp[619].dn";
connectAttr "RT_FINGD1__Skeleton_scaleX.msg" "hyperLayout1.hyp[620].dn";
connectAttr "RT_FINGD1__Skeleton_scaleY.msg" "hyperLayout1.hyp[621].dn";
connectAttr "RT_FINGD1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[622].dn";
connectAttr "RT_FINGD1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[623].dn"
		;
connectAttr "RT_FINGD1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[624].dn";
connectAttr "RT_FINGD2__Skeleton_visibility.msg" "hyperLayout1.hyp[625].dn";
connectAttr "RT_FINGD2__Skeleton_scaleX.msg" "hyperLayout1.hyp[626].dn";
connectAttr "RT_FINGD2__Skeleton_scaleY.msg" "hyperLayout1.hyp[627].dn";
connectAttr "RT_FINGD2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[628].dn";
connectAttr "RT_FINGD2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[629].dn"
		;
connectAttr "RT_FINGD2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[630].dn";
connectAttr "RT_FINGD_END__Skeleton_visibility.msg" "hyperLayout1.hyp[631].dn";
connectAttr "RT_FINGD_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[632].dn";
connectAttr "RT_FINGD_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[633].dn";
connectAttr "RT_FINGD_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[634].dn";
connectAttr "RT_FINGD_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[635].dn"
		;
connectAttr "RT_FINGD_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[636].dn"
		;
connectAttr "RT_FINGC__Skeleton_visibility.msg" "hyperLayout1.hyp[637].dn";
connectAttr "RT_FINGC__Skeleton_scaleX.msg" "hyperLayout1.hyp[638].dn";
connectAttr "RT_FINGC__Skeleton_scaleY.msg" "hyperLayout1.hyp[639].dn";
connectAttr "RT_FINGC__Skeleton_scaleZ.msg" "hyperLayout1.hyp[640].dn";
connectAttr "RT_FINGC__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[641].dn"
		;
connectAttr "RT_FINGC__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[642].dn";
connectAttr "RT_FINGC1__Skeleton_visibility.msg" "hyperLayout1.hyp[643].dn";
connectAttr "RT_FINGC1__Skeleton_scaleX.msg" "hyperLayout1.hyp[644].dn";
connectAttr "RT_FINGC1__Skeleton_scaleY.msg" "hyperLayout1.hyp[645].dn";
connectAttr "RT_FINGC1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[646].dn";
connectAttr "RT_FINGC1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[647].dn"
		;
connectAttr "RT_FINGC1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[648].dn";
connectAttr "RT_FINGC2__Skeleton_visibility.msg" "hyperLayout1.hyp[649].dn";
connectAttr "RT_FINGC2__Skeleton_scaleX.msg" "hyperLayout1.hyp[650].dn";
connectAttr "RT_FINGC2__Skeleton_scaleY.msg" "hyperLayout1.hyp[651].dn";
connectAttr "RT_FINGC2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[652].dn";
connectAttr "RT_FINGC2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[653].dn"
		;
connectAttr "RT_FINGC2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[654].dn";
connectAttr "RT_FINGC_END__Skeleton_visibility.msg" "hyperLayout1.hyp[655].dn";
connectAttr "RT_FINGC_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[656].dn";
connectAttr "RT_FINGC_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[657].dn";
connectAttr "RT_FINGC_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[658].dn";
connectAttr "RT_FINGC_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[659].dn"
		;
connectAttr "RT_FINGC_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[660].dn"
		;
connectAttr "RT_FINGB__Skeleton_visibility.msg" "hyperLayout1.hyp[661].dn";
connectAttr "RT_FINGB__Skeleton_scaleX.msg" "hyperLayout1.hyp[662].dn";
connectAttr "RT_FINGB__Skeleton_scaleY.msg" "hyperLayout1.hyp[663].dn";
connectAttr "RT_FINGB__Skeleton_scaleZ.msg" "hyperLayout1.hyp[664].dn";
connectAttr "RT_FINGB__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[665].dn"
		;
connectAttr "RT_FINGB__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[666].dn";
connectAttr "RT_FINGB1__Skeleton_visibility.msg" "hyperLayout1.hyp[667].dn";
connectAttr "RT_FINGB1__Skeleton_scaleX.msg" "hyperLayout1.hyp[668].dn";
connectAttr "RT_FINGB1__Skeleton_scaleY.msg" "hyperLayout1.hyp[669].dn";
connectAttr "RT_FINGB1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[670].dn";
connectAttr "RT_FINGB1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[671].dn"
		;
connectAttr "RT_FINGB1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[672].dn";
connectAttr "RT_FINGB2__Skeleton_visibility.msg" "hyperLayout1.hyp[673].dn";
connectAttr "RT_FINGB2__Skeleton_scaleX.msg" "hyperLayout1.hyp[674].dn";
connectAttr "RT_FINGB2__Skeleton_scaleY.msg" "hyperLayout1.hyp[675].dn";
connectAttr "RT_FINGB2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[676].dn";
connectAttr "RT_FINGB2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[677].dn"
		;
connectAttr "RT_FINGB2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[678].dn";
connectAttr "RT_FINGB_END__Skeleton_visibility.msg" "hyperLayout1.hyp[679].dn";
connectAttr "RT_FINGB_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[680].dn";
connectAttr "RT_FINGB_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[681].dn";
connectAttr "RT_FINGB_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[682].dn";
connectAttr "RT_FINGB_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[683].dn"
		;
connectAttr "RT_FINGB_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[684].dn"
		;
connectAttr "RT_FINGA__Skeleton_visibility.msg" "hyperLayout1.hyp[685].dn";
connectAttr "RT_FINGA__Skeleton_scaleX.msg" "hyperLayout1.hyp[686].dn";
connectAttr "RT_FINGA__Skeleton_scaleY.msg" "hyperLayout1.hyp[687].dn";
connectAttr "RT_FINGA__Skeleton_scaleZ.msg" "hyperLayout1.hyp[688].dn";
connectAttr "RT_FINGA__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[689].dn"
		;
connectAttr "RT_FINGA__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[690].dn";
connectAttr "RT_FINGA1__Skeleton_visibility.msg" "hyperLayout1.hyp[691].dn";
connectAttr "RT_FINGA1__Skeleton_scaleX.msg" "hyperLayout1.hyp[692].dn";
connectAttr "RT_FINGA1__Skeleton_scaleY.msg" "hyperLayout1.hyp[693].dn";
connectAttr "RT_FINGA1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[694].dn";
connectAttr "RT_FINGA1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[695].dn"
		;
connectAttr "RT_FINGA1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[696].dn";
connectAttr "RT_FINGA2__Skeleton_visibility.msg" "hyperLayout1.hyp[697].dn";
connectAttr "RT_FINGA2__Skeleton_scaleX.msg" "hyperLayout1.hyp[698].dn";
connectAttr "RT_FINGA2__Skeleton_scaleY.msg" "hyperLayout1.hyp[699].dn";
connectAttr "RT_FINGA2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[700].dn";
connectAttr "RT_FINGA2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[701].dn"
		;
connectAttr "RT_FINGA2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[702].dn";
connectAttr "RT_FINGA_END__Skeleton_visibility.msg" "hyperLayout1.hyp[703].dn";
connectAttr "RT_FINGA_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[704].dn";
connectAttr "RT_FINGA_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[705].dn";
connectAttr "RT_FINGA_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[706].dn";
connectAttr "RT_FINGA_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[707].dn"
		;
connectAttr "RT_FINGA_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[708].dn"
		;
connectAttr "RT_THUMB__Skeleton_visibility.msg" "hyperLayout1.hyp[709].dn";
connectAttr "RT_THUMB__Skeleton_scaleX.msg" "hyperLayout1.hyp[710].dn";
connectAttr "RT_THUMB__Skeleton_scaleY.msg" "hyperLayout1.hyp[711].dn";
connectAttr "RT_THUMB__Skeleton_scaleZ.msg" "hyperLayout1.hyp[712].dn";
connectAttr "RT_THUMB__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[713].dn"
		;
connectAttr "RT_THUMB__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[714].dn";
connectAttr "RT_THUMB1__Skeleton_visibility.msg" "hyperLayout1.hyp[715].dn";
connectAttr "RT_THUMB1__Skeleton_scaleX.msg" "hyperLayout1.hyp[716].dn";
connectAttr "RT_THUMB1__Skeleton_scaleY.msg" "hyperLayout1.hyp[717].dn";
connectAttr "RT_THUMB1__Skeleton_scaleZ.msg" "hyperLayout1.hyp[718].dn";
connectAttr "RT_THUMB1__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[719].dn"
		;
connectAttr "RT_THUMB1__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[720].dn";
connectAttr "RT_THUMB2__Skeleton_visibility.msg" "hyperLayout1.hyp[721].dn";
connectAttr "RT_THUMB2__Skeleton_scaleX.msg" "hyperLayout1.hyp[722].dn";
connectAttr "RT_THUMB2__Skeleton_scaleY.msg" "hyperLayout1.hyp[723].dn";
connectAttr "RT_THUMB2__Skeleton_scaleZ.msg" "hyperLayout1.hyp[724].dn";
connectAttr "RT_THUMB2__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[725].dn"
		;
connectAttr "RT_THUMB2__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[726].dn";
connectAttr "RT_THUMB_END__Skeleton_visibility.msg" "hyperLayout1.hyp[727].dn";
connectAttr "RT_THUMB_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[728].dn";
connectAttr "RT_THUMB_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[729].dn";
connectAttr "RT_THUMB_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[730].dn";
connectAttr "RT_THUMB_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[731].dn"
		;
connectAttr "RT_THUMB_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[732].dn"
		;
connectAttr "RT_PROP__Skeleton_visibility.msg" "hyperLayout1.hyp[733].dn";
connectAttr "RT_PROP__Skeleton_scaleX.msg" "hyperLayout1.hyp[734].dn";
connectAttr "RT_PROP__Skeleton_scaleY.msg" "hyperLayout1.hyp[735].dn";
connectAttr "RT_PROP__Skeleton_scaleZ.msg" "hyperLayout1.hyp[736].dn";
connectAttr "RT_PROP__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[737].dn"
		;
connectAttr "RT_PROP__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[738].dn";
connectAttr "RT_PROP_END__Skeleton_visibility.msg" "hyperLayout1.hyp[739].dn";
connectAttr "RT_PROP_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[740].dn";
connectAttr "RT_PROP_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[741].dn";
connectAttr "RT_PROP_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[742].dn";
connectAttr "RT_PROP_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[743].dn"
		;
connectAttr "RT_PROP_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[744].dn"
		;
connectAttr "RT_SPECIAL__Skeleton_visibility.msg" "hyperLayout1.hyp[745].dn";
connectAttr "RT_SPECIAL__Skeleton_scaleX.msg" "hyperLayout1.hyp[746].dn";
connectAttr "RT_SPECIAL__Skeleton_scaleY.msg" "hyperLayout1.hyp[747].dn";
connectAttr "RT_SPECIAL__Skeleton_scaleZ.msg" "hyperLayout1.hyp[748].dn";
connectAttr "RT_SPECIAL__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[749].dn"
		;
connectAttr "RT_SPECIAL__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[750].dn";
connectAttr "RT_SPECIAL_END__Skeleton_visibility.msg" "hyperLayout1.hyp[751].dn"
		;
connectAttr "RT_SPECIAL_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[752].dn";
connectAttr "RT_SPECIAL_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[753].dn";
connectAttr "RT_SPECIAL_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[754].dn";
connectAttr "RT_SPECIAL_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[755].dn"
		;
connectAttr "RT_SPECIAL_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[756].dn"
		;
connectAttr "RT_E_TWIST__Skeleton_visibility.msg" "hyperLayout1.hyp[757].dn";
connectAttr "RT_E_TWIST__Skeleton_scaleX.msg" "hyperLayout1.hyp[758].dn";
connectAttr "RT_E_TWIST__Skeleton_scaleY.msg" "hyperLayout1.hyp[759].dn";
connectAttr "RT_E_TWIST__Skeleton_scaleZ.msg" "hyperLayout1.hyp[760].dn";
connectAttr "RT_E_TWIST__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[761].dn"
		;
connectAttr "RT_E_TWIST__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[762].dn";
connectAttr "RT_E_TWIST_END__Skeleton_visibility.msg" "hyperLayout1.hyp[763].dn"
		;
connectAttr "RT_E_TWIST_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[764].dn";
connectAttr "RT_E_TWIST_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[765].dn";
connectAttr "RT_E_TWIST_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[766].dn";
connectAttr "RT_E_TWIST_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[767].dn"
		;
connectAttr "RT_E_TWIST_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[768].dn"
		;
connectAttr "RT_SC_E__Skeleton_visibility.msg" "hyperLayout1.hyp[769].dn";
connectAttr "RT_SC_E__Skeleton_scaleX.msg" "hyperLayout1.hyp[770].dn";
connectAttr "RT_SC_E__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[771].dn"
		;
connectAttr "RT_SC_E__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[772].dn";
connectAttr "RT_SC_E_END__Skeleton_visibility.msg" "hyperLayout1.hyp[773].dn";
connectAttr "RT_SC_E_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[774].dn";
connectAttr "RT_SC_E_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[775].dn";
connectAttr "RT_SC_E_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[776].dn";
connectAttr "RT_SC_E_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[777].dn"
		;
connectAttr "RT_SC_E_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[778].dn"
		;
connectAttr "RT_SC_S__Skeleton_visibility.msg" "hyperLayout1.hyp[779].dn";
connectAttr "RT_SC_S__Skeleton_scaleX.msg" "hyperLayout1.hyp[780].dn";
connectAttr "RT_SC_S__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[781].dn"
		;
connectAttr "RT_SC_S__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[782].dn";
connectAttr "RT_SC_S_END__Skeleton_visibility.msg" "hyperLayout1.hyp[783].dn";
connectAttr "RT_SC_S_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[784].dn";
connectAttr "RT_SC_S_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[785].dn";
connectAttr "RT_SC_S_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[786].dn";
connectAttr "RT_SC_S_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[787].dn"
		;
connectAttr "RT_SC_S_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[788].dn"
		;
connectAttr "RT_SC_TWIST_S__Skeleton_visibility.msg" "hyperLayout1.hyp[789].dn";
connectAttr "RT_SC_TWIST_S__Skeleton_scaleX.msg" "hyperLayout1.hyp[790].dn";
connectAttr "RT_SC_TWIST_S__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[791].dn"
		;
connectAttr "RT_SC_TWIST_S__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[792].dn"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_visibility.msg" "hyperLayout1.hyp[793].dn"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[794].dn";
connectAttr "RT_SC_TWIST_S_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[795].dn";
connectAttr "RT_SC_TWIST_S_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[796].dn";
connectAttr "RT_SC_TWIST_S_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[797].dn"
		;
connectAttr "RT_SC_TWIST_S_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[798].dn"
		;
connectAttr "SC_BACKA__Skeleton_visibility.msg" "hyperLayout1.hyp[799].dn";
connectAttr "SC_BACKA__Skeleton_rotateX.msg" "hyperLayout1.hyp[800].dn";
connectAttr "SC_BACKA__Skeleton_rotateY.msg" "hyperLayout1.hyp[801].dn";
connectAttr "SC_BACKA__Skeleton_rotateZ.msg" "hyperLayout1.hyp[802].dn";
connectAttr "SC_BACKA__Skeleton_scaleY.msg" "hyperLayout1.hyp[803].dn";
connectAttr "SC_BACKA__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[804].dn"
		;
connectAttr "SC_BACKA__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[805].dn";
connectAttr "SC_BACKA_END__Skeleton_visibility.msg" "hyperLayout1.hyp[806].dn";
connectAttr "SC_BACKA_END__Skeleton_rotateX.msg" "hyperLayout1.hyp[807].dn";
connectAttr "SC_BACKA_END__Skeleton_rotateY.msg" "hyperLayout1.hyp[808].dn";
connectAttr "SC_BACKA_END__Skeleton_rotateZ.msg" "hyperLayout1.hyp[809].dn";
connectAttr "SC_BACKA_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[810].dn";
connectAttr "SC_BACKA_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[811].dn";
connectAttr "SC_BACKA_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[812].dn";
connectAttr "SC_BACKA_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[813].dn"
		;
connectAttr "SC_BACKA_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[814].dn"
		;
connectAttr "SC_BASE__Skeleton_visibility.msg" "hyperLayout1.hyp[815].dn";
connectAttr "SC_BASE__Skeleton_rotateX.msg" "hyperLayout1.hyp[816].dn";
connectAttr "SC_BASE__Skeleton_rotateY.msg" "hyperLayout1.hyp[817].dn";
connectAttr "SC_BASE__Skeleton_rotateZ.msg" "hyperLayout1.hyp[818].dn";
connectAttr "SC_BASE__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[819].dn"
		;
connectAttr "SC_BASE__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[820].dn";
connectAttr "SC_BASE_END__Skeleton_visibility.msg" "hyperLayout1.hyp[821].dn";
connectAttr "SC_BASE_END__Skeleton_rotateX.msg" "hyperLayout1.hyp[822].dn";
connectAttr "SC_BASE_END__Skeleton_rotateY.msg" "hyperLayout1.hyp[823].dn";
connectAttr "SC_BASE_END__Skeleton_rotateZ.msg" "hyperLayout1.hyp[824].dn";
connectAttr "SC_BASE_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[825].dn";
connectAttr "SC_BASE_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[826].dn";
connectAttr "SC_BASE_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[827].dn";
connectAttr "SC_BASE_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[828].dn"
		;
connectAttr "SC_BASE_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[829].dn"
		;
connectAttr "LF_H__Skeleton_visibility.msg" "hyperLayout1.hyp[830].dn";
connectAttr "LF_H__Skeleton_scaleX.msg" "hyperLayout1.hyp[831].dn";
connectAttr "LF_H__Skeleton_scaleY.msg" "hyperLayout1.hyp[832].dn";
connectAttr "LF_H__Skeleton_scaleZ.msg" "hyperLayout1.hyp[833].dn";
connectAttr "LF_H__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[834].dn"
		;
connectAttr "LF_H__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[835].dn";
connectAttr "LF_K__Skeleton_visibility.msg" "hyperLayout1.hyp[836].dn";
connectAttr "LF_K__Skeleton_scaleX.msg" "hyperLayout1.hyp[837].dn";
connectAttr "LF_K__Skeleton_scaleY.msg" "hyperLayout1.hyp[838].dn";
connectAttr "LF_K__Skeleton_scaleZ.msg" "hyperLayout1.hyp[839].dn";
connectAttr "LF_K__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[840].dn"
		;
connectAttr "LF_K__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[841].dn";
connectAttr "LF_A__Skeleton_visibility.msg" "hyperLayout1.hyp[842].dn";
connectAttr "LF_A__Skeleton_scaleX.msg" "hyperLayout1.hyp[843].dn";
connectAttr "LF_A__Skeleton_scaleY.msg" "hyperLayout1.hyp[844].dn";
connectAttr "LF_A__Skeleton_scaleZ.msg" "hyperLayout1.hyp[845].dn";
connectAttr "LF_A__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[846].dn"
		;
connectAttr "LF_A__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[847].dn";
connectAttr "LF_T__Skeleton_visibility.msg" "hyperLayout1.hyp[848].dn";
connectAttr "LF_T__Skeleton_scaleX.msg" "hyperLayout1.hyp[849].dn";
connectAttr "LF_T__Skeleton_scaleY.msg" "hyperLayout1.hyp[850].dn";
connectAttr "LF_T__Skeleton_scaleZ.msg" "hyperLayout1.hyp[851].dn";
connectAttr "LF_T__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[852].dn"
		;
connectAttr "LF_T__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[853].dn";
connectAttr "LF_T_END__Skeleton_visibility.msg" "hyperLayout1.hyp[854].dn";
connectAttr "LF_T_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[855].dn";
connectAttr "LF_T_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[856].dn";
connectAttr "LF_T_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[857].dn";
connectAttr "LF_T_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[858].dn"
		;
connectAttr "LF_T_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[859].dn";
connectAttr "LF_SC_K__Skeleton_visibility.msg" "hyperLayout1.hyp[860].dn";
connectAttr "LF_SC_K__Skeleton_scaleY.msg" "hyperLayout1.hyp[861].dn";
connectAttr "LF_SC_K__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[862].dn"
		;
connectAttr "LF_SC_K__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[863].dn";
connectAttr "LF_SC_K_END__Skeleton_visibility.msg" "hyperLayout1.hyp[864].dn";
connectAttr "LF_SC_K_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[865].dn";
connectAttr "LF_SC_K_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[866].dn";
connectAttr "LF_SC_K_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[867].dn";
connectAttr "LF_SC_K_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[868].dn"
		;
connectAttr "LF_SC_K_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[869].dn"
		;
connectAttr "LF_SC_H__Skeleton_visibility.msg" "hyperLayout1.hyp[870].dn";
connectAttr "LF_SC_H__Skeleton_scaleY.msg" "hyperLayout1.hyp[871].dn";
connectAttr "LF_SC_H__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[872].dn"
		;
connectAttr "LF_SC_H__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[873].dn";
connectAttr "LF_SC_H_END__Skeleton_visibility.msg" "hyperLayout1.hyp[874].dn";
connectAttr "LF_SC_H_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[875].dn";
connectAttr "LF_SC_H_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[876].dn";
connectAttr "LF_SC_H_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[877].dn";
connectAttr "LF_SC_H_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[878].dn"
		;
connectAttr "LF_SC_H_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[879].dn"
		;
connectAttr "RT_H__Skeleton_visibility.msg" "hyperLayout1.hyp[880].dn";
connectAttr "RT_H__Skeleton_scaleX.msg" "hyperLayout1.hyp[881].dn";
connectAttr "RT_H__Skeleton_scaleY.msg" "hyperLayout1.hyp[882].dn";
connectAttr "RT_H__Skeleton_scaleZ.msg" "hyperLayout1.hyp[883].dn";
connectAttr "RT_H__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[884].dn"
		;
connectAttr "RT_H__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[885].dn";
connectAttr "RT_K__Skeleton_visibility.msg" "hyperLayout1.hyp[886].dn";
connectAttr "RT_K__Skeleton_scaleX.msg" "hyperLayout1.hyp[887].dn";
connectAttr "RT_K__Skeleton_scaleY.msg" "hyperLayout1.hyp[888].dn";
connectAttr "RT_K__Skeleton_scaleZ.msg" "hyperLayout1.hyp[889].dn";
connectAttr "RT_K__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[890].dn"
		;
connectAttr "RT_K__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[891].dn";
connectAttr "RT_A__Skeleton_visibility.msg" "hyperLayout1.hyp[892].dn";
connectAttr "RT_A__Skeleton_scaleX.msg" "hyperLayout1.hyp[893].dn";
connectAttr "RT_A__Skeleton_scaleY.msg" "hyperLayout1.hyp[894].dn";
connectAttr "RT_A__Skeleton_scaleZ.msg" "hyperLayout1.hyp[895].dn";
connectAttr "RT_A__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[896].dn"
		;
connectAttr "RT_A__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[897].dn";
connectAttr "RT_T__Skeleton_visibility.msg" "hyperLayout1.hyp[898].dn";
connectAttr "RT_T__Skeleton_scaleX.msg" "hyperLayout1.hyp[899].dn";
connectAttr "RT_T__Skeleton_scaleY.msg" "hyperLayout1.hyp[900].dn";
connectAttr "RT_T__Skeleton_scaleZ.msg" "hyperLayout1.hyp[901].dn";
connectAttr "RT_T__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[902].dn"
		;
connectAttr "RT_T__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[903].dn";
connectAttr "RT_T_END__Skeleton_visibility.msg" "hyperLayout1.hyp[904].dn";
connectAttr "RT_T_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[905].dn";
connectAttr "RT_T_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[906].dn";
connectAttr "RT_T_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[907].dn";
connectAttr "RT_T_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[908].dn"
		;
connectAttr "RT_T_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[909].dn";
connectAttr "RT_SC_K__Skeleton_visibility.msg" "hyperLayout1.hyp[910].dn";
connectAttr "RT_SC_K__Skeleton_scaleY.msg" "hyperLayout1.hyp[911].dn";
connectAttr "RT_SC_K__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[912].dn"
		;
connectAttr "RT_SC_K__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[913].dn";
connectAttr "RT_SC_K_END__Skeleton_visibility.msg" "hyperLayout1.hyp[914].dn";
connectAttr "RT_SC_K_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[915].dn";
connectAttr "RT_SC_K_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[916].dn";
connectAttr "RT_SC_K_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[917].dn";
connectAttr "RT_SC_K_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[918].dn"
		;
connectAttr "RT_SC_K_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[919].dn"
		;
connectAttr "RT_SC_H__Skeleton_visibility.msg" "hyperLayout1.hyp[920].dn";
connectAttr "RT_SC_H__Skeleton_scaleY.msg" "hyperLayout1.hyp[921].dn";
connectAttr "RT_SC_H__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[922].dn"
		;
connectAttr "RT_SC_H__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[923].dn";
connectAttr "RT_SC_H_END__Skeleton_visibility.msg" "hyperLayout1.hyp[924].dn";
connectAttr "RT_SC_H_END__Skeleton_scaleX.msg" "hyperLayout1.hyp[925].dn";
connectAttr "RT_SC_H_END__Skeleton_scaleY.msg" "hyperLayout1.hyp[926].dn";
connectAttr "RT_SC_H_END__Skeleton_scaleZ.msg" "hyperLayout1.hyp[927].dn";
connectAttr "RT_SC_H_END__Skeleton_lockInfluenceWeights.msg" "hyperLayout1.hyp[928].dn"
		;
connectAttr "RT_SC_H_END__Skeleton_filmboxTypeID.msg" "hyperLayout1.hyp[929].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "hyperLayout1.hyp[930].dn";
connectAttr "sceneConfigurationScriptNode.msg" "hyperLayout1.hyp[931].dn";
connectAttr "HIK_Avatar_Anim.msg" "hyperLayout1.hyp[932].dn";
connectAttr "HIKproperties1.msg" "hyperLayout1.hyp[933].dn";
connectAttr "HIKproperties1.msg" "HIK_Avatar_Anim.propertyState";
connectAttr "BASE__Skeleton.ch" "HIK_Avatar_Anim.Hips";
connectAttr "LF_H__Skeleton.ch" "HIK_Avatar_Anim.LeftUpLeg";
connectAttr "LF_K__Skeleton.ch" "HIK_Avatar_Anim.LeftLeg";
connectAttr "LF_A__Skeleton.ch" "HIK_Avatar_Anim.LeftFoot";
connectAttr "RT_H__Skeleton.ch" "HIK_Avatar_Anim.RightUpLeg";
connectAttr "RT_K__Skeleton.ch" "HIK_Avatar_Anim.RightLeg";
connectAttr "RT_A__Skeleton.ch" "HIK_Avatar_Anim.RightFoot";
connectAttr "BACKA__Skeleton.ch" "HIK_Avatar_Anim.Spine";
connectAttr "BACKB__Skeleton.ch" "HIK_Avatar_Anim.Spine1";
connectAttr "NECK__Skeleton.ch" "HIK_Avatar_Anim.Neck";
connectAttr "RT_S__Skeleton.ch" "HIK_Avatar_Anim.RightArm";
connectAttr "RT_E__Skeleton.ch" "HIK_Avatar_Anim.RightForeArm";
connectAttr "RT_W__Skeleton.ch" "HIK_Avatar_Anim.RightHand";
connectAttr "LF_S__Skeleton.ch" "HIK_Avatar_Anim.LeftArm";
connectAttr "LF_E__Skeleton.ch" "HIK_Avatar_Anim.LeftForeArm";
connectAttr "LF_W__Skeleton.ch" "HIK_Avatar_Anim.LeftHand";
connectAttr "HEAD__Skeleton.ch" "HIK_Avatar_Anim.Head";
connectAttr "RT_C__Skeleton.ch" "HIK_Avatar_Anim.RightShoulder";
connectAttr "LF_C__Skeleton.ch" "HIK_Avatar_Anim.LeftShoulder";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Run_mt_3_HIK.ma
