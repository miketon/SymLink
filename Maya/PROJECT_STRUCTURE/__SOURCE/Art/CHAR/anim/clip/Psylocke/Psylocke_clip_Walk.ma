//Maya ASCII 2015 scene
//Name: Psylocke_clip_Walk.ma
//Last modified: Tue, Jul 15, 2014 08:53:16 AM
//Codeset: UTF-8
file -rdi 1 -ns "Psylocke_TSMG_2015" -rfn "Psylocke_TSMG_2015RN" -op "v=0;" "/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/Psylocke/Psylocke_TSMG_2015.ma";
file -r -ns "Psylocke_TSMG_2015" -dr 1 -rfn "Psylocke_TSMG_2015RN" -op "v=0;" "/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/Psylocke/Psylocke_TSMG_2015.ma";
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.12 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Mac OS X 10.9.4";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.4029615591227014 1.1111616809147886 0.43368165055394758 ;
	setAttr ".r" -type "double3" -0.93835272985367146 -88.20000000000104 0 ;
	setAttr ".rp" -type "double3" 2.7755575615628914e-17 0 -1.3322676295501878e-15 ;
	setAttr ".rpt" -type "double3" 1.3870932654624512e-15 -9.3697411407397942e-16 3.4876174157646225e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 7.6842548689413999;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.72800963691016152 1.6006214253743176 -0.0065006438605261507 ;
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
createNode transform -n "locator1";
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
createNode parentConstraint -n "locator1_parentConstraint1" -p "locator1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "TSMG_upper_bodyW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 1.1869650139527508 0 ;
	setAttr -k on ".w0";
createNode fosterParent -n "Psylocke_TSMG_2015RNfosterParent1";
createNode parentConstraint -n "spine1_hipsIKControl_parentConstraint1" -p "Psylocke_TSMG_2015RNfosterParent1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "locator1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0251106592740512e-35 -0.0085597462774451571 
		0.020860692703003652 ;
	setAttr ".tg[0].tor" -type "double3" 0.88020763783521783 0 0 ;
	setAttr ".lr" -type "double3" 2.6315630023952115 27.75867361338149 -9.2184122645992197 ;
	setAttr ".rst" -type "double3" 2.6727647100921956e-51 0 -3.4694469519536142e-18 ;
	setAttr ".rsrr" -type "double3" -1.987846675914698e-16 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "TSMG_upper_body_parentConstraint1" -p "Psylocke_TSMG_2015RNfosterParent1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "locator1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -76.869095836350681 -46.198203286840773 ;
	setAttr ".vh" -type "double2" 79.173438869860433 44.465399054036538 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 339 ".hyp";
	setAttr ".hyp[0].x" 1.4285714626312256;
	setAttr ".hyp[0].y" -1741.4285888671875;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 1.4285714626312256;
	setAttr ".hyp[1].y" -1637.142822265625;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 212.85714721679688;
	setAttr ".hyp[2].y" -1741.4285888671875;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 212.85714721679688;
	setAttr ".hyp[3].y" -1637.142822265625;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 424.28570556640625;
	setAttr ".hyp[4].y" -1741.4285888671875;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" 1.4285714626312256;
	setAttr ".hyp[5].y" -1532.857177734375;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" 212.85714721679688;
	setAttr ".hyp[6].y" -1532.857177734375;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" 424.28570556640625;
	setAttr ".hyp[7].y" -1637.142822265625;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].x" 424.28570556640625;
	setAttr ".hyp[8].y" -1532.857177734375;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" 635.71429443359375;
	setAttr ".hyp[9].y" -1741.4285888671875;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].x" 635.71429443359375;
	setAttr ".hyp[10].y" -1637.142822265625;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].x" 635.71429443359375;
	setAttr ".hyp[11].y" -1532.857177734375;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].x" 1.4285714626312256;
	setAttr ".hyp[12].y" -1428.5714111328125;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].x" 212.85714721679688;
	setAttr ".hyp[13].y" -1428.5714111328125;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].x" 424.28570556640625;
	setAttr ".hyp[14].y" -1428.5714111328125;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].x" 635.71429443359375;
	setAttr ".hyp[15].y" -1428.5714111328125;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].x" 847.14288330078125;
	setAttr ".hyp[16].y" -1741.4285888671875;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].x" 847.14288330078125;
	setAttr ".hyp[17].y" -1637.142822265625;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].x" 847.14288330078125;
	setAttr ".hyp[18].y" -1532.857177734375;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].x" 847.14288330078125;
	setAttr ".hyp[19].y" -1428.5714111328125;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].x" 1.4285714626312256;
	setAttr ".hyp[20].y" -1324.2857666015625;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].x" 212.85714721679688;
	setAttr ".hyp[21].y" -1324.2857666015625;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].x" 424.28570556640625;
	setAttr ".hyp[22].y" -1324.2857666015625;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].x" 635.71429443359375;
	setAttr ".hyp[23].y" -1324.2857666015625;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].x" 847.14288330078125;
	setAttr ".hyp[24].y" -1324.2857666015625;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].x" 1058.5714111328125;
	setAttr ".hyp[25].y" -1741.4285888671875;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].x" 1058.5714111328125;
	setAttr ".hyp[26].y" -1637.142822265625;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].x" 1058.5714111328125;
	setAttr ".hyp[27].y" -1532.857177734375;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].x" 1058.5714111328125;
	setAttr ".hyp[28].y" -1428.5714111328125;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].x" 1058.5714111328125;
	setAttr ".hyp[29].y" -1324.2857666015625;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].x" 1.4285714626312256;
	setAttr ".hyp[30].y" -1220;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].x" 212.85714721679688;
	setAttr ".hyp[31].y" -1220;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].x" 424.28570556640625;
	setAttr ".hyp[32].y" -1220;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].x" 635.71429443359375;
	setAttr ".hyp[33].y" -1220;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].x" 847.14288330078125;
	setAttr ".hyp[34].y" -1220;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].x" 1058.5714111328125;
	setAttr ".hyp[35].y" -1220;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].x" 1270;
	setAttr ".hyp[36].y" -1741.4285888671875;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].x" 1270;
	setAttr ".hyp[37].y" -1637.142822265625;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].x" 1270;
	setAttr ".hyp[38].y" -1532.857177734375;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].x" 1270;
	setAttr ".hyp[39].y" -1428.5714111328125;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].x" 1270;
	setAttr ".hyp[40].y" -1324.2857666015625;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].x" 1270;
	setAttr ".hyp[41].y" -1220;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].x" 1481.4285888671875;
	setAttr ".hyp[42].y" -1741.4285888671875;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].x" 1.4285714626312256;
	setAttr ".hyp[43].y" -1115.7142333984375;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].x" 212.85714721679688;
	setAttr ".hyp[44].y" -1115.7142333984375;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].x" 424.28570556640625;
	setAttr ".hyp[45].y" -1115.7142333984375;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].x" 635.71429443359375;
	setAttr ".hyp[46].y" -1115.7142333984375;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].x" 847.14288330078125;
	setAttr ".hyp[47].y" -1115.7142333984375;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].x" 1058.5714111328125;
	setAttr ".hyp[48].y" -1115.7142333984375;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].x" 1270;
	setAttr ".hyp[49].y" -1115.7142333984375;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].x" 1481.4285888671875;
	setAttr ".hyp[50].y" -1637.142822265625;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].x" 1481.4285888671875;
	setAttr ".hyp[51].y" -1532.857177734375;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].x" 1481.4285888671875;
	setAttr ".hyp[52].y" -1428.5714111328125;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].x" 1481.4285888671875;
	setAttr ".hyp[53].y" -1324.2857666015625;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].x" 1481.4285888671875;
	setAttr ".hyp[54].y" -1220;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].x" 1481.4285888671875;
	setAttr ".hyp[55].y" -1115.7142333984375;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].x" 1692.857177734375;
	setAttr ".hyp[56].y" -1741.4285888671875;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].x" 1.4285714626312256;
	setAttr ".hyp[57].y" -1011.4285888671875;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].x" 212.85714721679688;
	setAttr ".hyp[58].y" -1011.4285888671875;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].x" 424.28570556640625;
	setAttr ".hyp[59].y" -1011.4285888671875;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].x" 635.71429443359375;
	setAttr ".hyp[60].y" -1011.4285888671875;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].x" 847.14288330078125;
	setAttr ".hyp[61].y" -1011.4285888671875;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].x" 1058.5714111328125;
	setAttr ".hyp[62].y" -1011.4285888671875;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].x" 1270;
	setAttr ".hyp[63].y" -1011.4285888671875;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].x" 1481.4285888671875;
	setAttr ".hyp[64].y" -1011.4285888671875;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].x" 1692.857177734375;
	setAttr ".hyp[65].y" -1637.142822265625;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].x" 1692.857177734375;
	setAttr ".hyp[66].y" -1532.857177734375;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].x" 1692.857177734375;
	setAttr ".hyp[67].y" -1428.5714111328125;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].x" 1692.857177734375;
	setAttr ".hyp[68].y" -1324.2857666015625;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].x" 1692.857177734375;
	setAttr ".hyp[69].y" -1220;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].x" 1692.857177734375;
	setAttr ".hyp[70].y" -1115.7142333984375;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].x" 1692.857177734375;
	setAttr ".hyp[71].y" -1011.4285888671875;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].x" 1904.2857666015625;
	setAttr ".hyp[72].y" -1741.4285888671875;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].x" 1904.2857666015625;
	setAttr ".hyp[73].y" -1637.142822265625;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].x" 1904.2857666015625;
	setAttr ".hyp[74].y" -1532.857177734375;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].x" 1904.2857666015625;
	setAttr ".hyp[75].y" -1428.5714111328125;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].x" 1904.2857666015625;
	setAttr ".hyp[76].y" -1324.2857666015625;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].x" 1904.2857666015625;
	setAttr ".hyp[77].y" -1220;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].x" 1904.2857666015625;
	setAttr ".hyp[78].y" -1115.7142333984375;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].x" 1904.2857666015625;
	setAttr ".hyp[79].y" -1011.4285888671875;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].x" 1.4285714626312256;
	setAttr ".hyp[80].y" -907.14288330078125;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].x" 212.85714721679688;
	setAttr ".hyp[81].y" -907.14288330078125;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].x" 424.28570556640625;
	setAttr ".hyp[82].y" -907.14288330078125;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].x" 635.71429443359375;
	setAttr ".hyp[83].y" -907.14288330078125;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].x" 847.14288330078125;
	setAttr ".hyp[84].y" -907.14288330078125;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].x" 1058.5714111328125;
	setAttr ".hyp[85].y" -907.14288330078125;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].x" 1270;
	setAttr ".hyp[86].y" -907.14288330078125;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].x" 1481.4285888671875;
	setAttr ".hyp[87].y" -907.14288330078125;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].x" 1692.857177734375;
	setAttr ".hyp[88].y" -907.14288330078125;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].x" 1904.2857666015625;
	setAttr ".hyp[89].y" -907.14288330078125;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].x" 2115.71435546875;
	setAttr ".hyp[90].y" -1741.4285888671875;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].x" 2115.71435546875;
	setAttr ".hyp[91].y" -1637.142822265625;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].x" 2115.71435546875;
	setAttr ".hyp[92].y" -1532.857177734375;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].x" 2115.71435546875;
	setAttr ".hyp[93].y" -1428.5714111328125;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].x" 2115.71435546875;
	setAttr ".hyp[94].y" -1324.2857666015625;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].x" 2115.71435546875;
	setAttr ".hyp[95].y" -1220;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].x" 2115.71435546875;
	setAttr ".hyp[96].y" -1115.7142333984375;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].x" 2115.71435546875;
	setAttr ".hyp[97].y" -1011.4285888671875;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].x" 2115.71435546875;
	setAttr ".hyp[98].y" -907.14288330078125;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].x" 1.4285714626312256;
	setAttr ".hyp[99].y" -802.85711669921875;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].x" 212.85714721679688;
	setAttr ".hyp[100].y" -802.85711669921875;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].x" 424.28570556640625;
	setAttr ".hyp[101].y" -802.85711669921875;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].x" 635.71429443359375;
	setAttr ".hyp[102].y" -802.85711669921875;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].x" 847.14288330078125;
	setAttr ".hyp[103].y" -802.85711669921875;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].x" 1058.5714111328125;
	setAttr ".hyp[104].y" -802.85711669921875;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].x" 1270;
	setAttr ".hyp[105].y" -802.85711669921875;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].x" 1481.4285888671875;
	setAttr ".hyp[106].y" -802.85711669921875;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].x" 1692.857177734375;
	setAttr ".hyp[107].y" -802.85711669921875;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].x" 1904.2857666015625;
	setAttr ".hyp[108].y" -802.85711669921875;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].x" 2115.71435546875;
	setAttr ".hyp[109].y" -802.85711669921875;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].x" 2327.142822265625;
	setAttr ".hyp[110].y" -1741.4285888671875;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].x" 2327.142822265625;
	setAttr ".hyp[111].y" -1637.142822265625;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].x" 2327.142822265625;
	setAttr ".hyp[112].y" -1532.857177734375;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].x" 2327.142822265625;
	setAttr ".hyp[113].y" -1428.5714111328125;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].x" 2327.142822265625;
	setAttr ".hyp[114].y" -1324.2857666015625;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].x" 2327.142822265625;
	setAttr ".hyp[115].y" -1220;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].x" 2327.142822265625;
	setAttr ".hyp[116].y" -1115.7142333984375;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].x" 2327.142822265625;
	setAttr ".hyp[117].y" -1011.4285888671875;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".hyp[118].x" 2327.142822265625;
	setAttr ".hyp[118].y" -907.14288330078125;
	setAttr ".hyp[118].nvs" 1920;
	setAttr ".hyp[119].x" 2327.142822265625;
	setAttr ".hyp[119].y" -802.85711669921875;
	setAttr ".hyp[119].nvs" 1920;
	setAttr ".hyp[120].x" 1.4285714626312256;
	setAttr ".hyp[120].y" -698.5714111328125;
	setAttr ".hyp[120].nvs" 1920;
	setAttr ".hyp[121].x" 212.85714721679688;
	setAttr ".hyp[121].y" -698.5714111328125;
	setAttr ".hyp[121].nvs" 1920;
	setAttr ".hyp[122].x" 424.28570556640625;
	setAttr ".hyp[122].y" -698.5714111328125;
	setAttr ".hyp[122].nvs" 1920;
	setAttr ".hyp[123].x" 635.71429443359375;
	setAttr ".hyp[123].y" -698.5714111328125;
	setAttr ".hyp[123].nvs" 1920;
	setAttr ".hyp[124].x" 847.14288330078125;
	setAttr ".hyp[124].y" -698.5714111328125;
	setAttr ".hyp[124].nvs" 1920;
	setAttr ".hyp[125].x" 1058.5714111328125;
	setAttr ".hyp[125].y" -698.5714111328125;
	setAttr ".hyp[125].nvs" 1920;
	setAttr ".hyp[126].x" 1270;
	setAttr ".hyp[126].y" -698.5714111328125;
	setAttr ".hyp[126].nvs" 1920;
	setAttr ".hyp[127].x" 1481.4285888671875;
	setAttr ".hyp[127].y" -698.5714111328125;
	setAttr ".hyp[127].nvs" 1920;
	setAttr ".hyp[128].x" 1692.857177734375;
	setAttr ".hyp[128].y" -698.5714111328125;
	setAttr ".hyp[128].nvs" 1920;
	setAttr ".hyp[129].x" 1904.2857666015625;
	setAttr ".hyp[129].y" -698.5714111328125;
	setAttr ".hyp[129].nvs" 1920;
	setAttr ".hyp[130].x" 2115.71435546875;
	setAttr ".hyp[130].y" -698.5714111328125;
	setAttr ".hyp[130].nvs" 1920;
	setAttr ".hyp[131].x" 2327.142822265625;
	setAttr ".hyp[131].y" -698.5714111328125;
	setAttr ".hyp[131].nvs" 1920;
	setAttr ".hyp[132].x" 2538.571533203125;
	setAttr ".hyp[132].y" -1741.4285888671875;
	setAttr ".hyp[132].nvs" 1920;
	setAttr ".hyp[133].x" 2538.571533203125;
	setAttr ".hyp[133].y" -1637.142822265625;
	setAttr ".hyp[133].nvs" 1920;
	setAttr ".hyp[134].x" 2538.571533203125;
	setAttr ".hyp[134].y" -1532.857177734375;
	setAttr ".hyp[134].nvs" 1920;
	setAttr ".hyp[135].x" 2538.571533203125;
	setAttr ".hyp[135].y" -1428.5714111328125;
	setAttr ".hyp[135].nvs" 1920;
	setAttr ".hyp[136].x" 2538.571533203125;
	setAttr ".hyp[136].y" -1324.2857666015625;
	setAttr ".hyp[136].nvs" 1920;
	setAttr ".hyp[137].x" 2538.571533203125;
	setAttr ".hyp[137].y" -1220;
	setAttr ".hyp[137].nvs" 1920;
	setAttr ".hyp[138].x" 2538.571533203125;
	setAttr ".hyp[138].y" -1115.7142333984375;
	setAttr ".hyp[138].nvs" 1920;
	setAttr ".hyp[139].x" 2538.571533203125;
	setAttr ".hyp[139].y" -1011.4285888671875;
	setAttr ".hyp[139].nvs" 1920;
	setAttr ".hyp[140].x" 2538.571533203125;
	setAttr ".hyp[140].y" -907.14288330078125;
	setAttr ".hyp[140].nvs" 1920;
	setAttr ".hyp[141].x" 2538.571533203125;
	setAttr ".hyp[141].y" -802.85711669921875;
	setAttr ".hyp[141].nvs" 1920;
	setAttr ".hyp[142].x" 2538.571533203125;
	setAttr ".hyp[142].y" -698.5714111328125;
	setAttr ".hyp[142].nvs" 1920;
	setAttr ".hyp[143].x" 2750;
	setAttr ".hyp[143].y" -1741.4285888671875;
	setAttr ".hyp[143].nvs" 1920;
	setAttr ".hyp[144].x" 1.4285714626312256;
	setAttr ".hyp[144].y" -594.28570556640625;
	setAttr ".hyp[144].nvs" 1920;
	setAttr ".hyp[145].x" 212.85714721679688;
	setAttr ".hyp[145].y" -594.28570556640625;
	setAttr ".hyp[145].nvs" 1920;
	setAttr ".hyp[146].x" 424.28570556640625;
	setAttr ".hyp[146].y" -594.28570556640625;
	setAttr ".hyp[146].nvs" 1920;
	setAttr ".hyp[147].x" 635.71429443359375;
	setAttr ".hyp[147].y" -594.28570556640625;
	setAttr ".hyp[147].nvs" 1920;
	setAttr ".hyp[148].x" 847.14288330078125;
	setAttr ".hyp[148].y" -594.28570556640625;
	setAttr ".hyp[148].nvs" 1920;
	setAttr ".hyp[149].x" 1058.5714111328125;
	setAttr ".hyp[149].y" -594.28570556640625;
	setAttr ".hyp[149].nvs" 1920;
	setAttr ".hyp[150].x" 1270;
	setAttr ".hyp[150].y" -594.28570556640625;
	setAttr ".hyp[150].nvs" 1920;
	setAttr ".hyp[151].x" 1481.4285888671875;
	setAttr ".hyp[151].y" -594.28570556640625;
	setAttr ".hyp[151].nvs" 1920;
	setAttr ".hyp[152].x" 1692.857177734375;
	setAttr ".hyp[152].y" -594.28570556640625;
	setAttr ".hyp[152].nvs" 1920;
	setAttr ".hyp[153].x" 1904.2857666015625;
	setAttr ".hyp[153].y" -594.28570556640625;
	setAttr ".hyp[153].nvs" 1920;
	setAttr ".hyp[154].x" 2115.71435546875;
	setAttr ".hyp[154].y" -594.28570556640625;
	setAttr ".hyp[154].nvs" 1920;
	setAttr ".hyp[155].x" 2327.142822265625;
	setAttr ".hyp[155].y" -594.28570556640625;
	setAttr ".hyp[155].nvs" 1920;
	setAttr ".hyp[156].x" 2538.571533203125;
	setAttr ".hyp[156].y" -594.28570556640625;
	setAttr ".hyp[156].nvs" 1920;
	setAttr ".hyp[157].x" 2750;
	setAttr ".hyp[157].y" -1637.142822265625;
	setAttr ".hyp[157].nvs" 1920;
	setAttr ".hyp[158].x" 2750;
	setAttr ".hyp[158].y" -1532.857177734375;
	setAttr ".hyp[158].nvs" 1920;
	setAttr ".hyp[159].x" 2750;
	setAttr ".hyp[159].y" -1428.5714111328125;
	setAttr ".hyp[159].nvs" 1920;
	setAttr ".hyp[160].x" 2750;
	setAttr ".hyp[160].y" -1324.2857666015625;
	setAttr ".hyp[160].nvs" 1920;
	setAttr ".hyp[161].x" 2750;
	setAttr ".hyp[161].y" -1220;
	setAttr ".hyp[161].nvs" 1920;
	setAttr ".hyp[162].x" 2750;
	setAttr ".hyp[162].y" -1115.7142333984375;
	setAttr ".hyp[162].nvs" 1920;
	setAttr ".hyp[163].x" 2750;
	setAttr ".hyp[163].y" -1011.4285888671875;
	setAttr ".hyp[163].nvs" 1920;
	setAttr ".hyp[164].x" 2750;
	setAttr ".hyp[164].y" -907.14288330078125;
	setAttr ".hyp[164].nvs" 1920;
	setAttr ".hyp[165].x" 2750;
	setAttr ".hyp[165].y" -802.85711669921875;
	setAttr ".hyp[165].nvs" 1920;
	setAttr ".hyp[166].x" 2750;
	setAttr ".hyp[166].y" -698.5714111328125;
	setAttr ".hyp[166].nvs" 1920;
	setAttr ".hyp[167].x" 2750;
	setAttr ".hyp[167].y" -594.28570556640625;
	setAttr ".hyp[167].nvs" 1920;
	setAttr ".hyp[168].x" 2961.428466796875;
	setAttr ".hyp[168].y" -1741.4285888671875;
	setAttr ".hyp[168].nvs" 1920;
	setAttr ".hyp[169].x" 1.4285714626312256;
	setAttr ".hyp[169].y" -490;
	setAttr ".hyp[169].nvs" 1920;
	setAttr ".hyp[170].x" 212.85714721679688;
	setAttr ".hyp[170].y" -490;
	setAttr ".hyp[170].nvs" 1920;
	setAttr ".hyp[171].x" 424.28570556640625;
	setAttr ".hyp[171].y" -490;
	setAttr ".hyp[171].nvs" 1920;
	setAttr ".hyp[172].x" 635.71429443359375;
	setAttr ".hyp[172].y" -490;
	setAttr ".hyp[172].nvs" 1920;
	setAttr ".hyp[173].x" 847.14288330078125;
	setAttr ".hyp[173].y" -490;
	setAttr ".hyp[173].nvs" 1920;
	setAttr ".hyp[174].x" 1058.5714111328125;
	setAttr ".hyp[174].y" -490;
	setAttr ".hyp[174].nvs" 1920;
	setAttr ".hyp[175].x" 1270;
	setAttr ".hyp[175].y" -490;
	setAttr ".hyp[175].nvs" 1920;
	setAttr ".hyp[176].x" 1481.4285888671875;
	setAttr ".hyp[176].y" -490;
	setAttr ".hyp[176].nvs" 1920;
	setAttr ".hyp[177].x" 1692.857177734375;
	setAttr ".hyp[177].y" -490;
	setAttr ".hyp[177].nvs" 1920;
	setAttr ".hyp[178].x" 1904.2857666015625;
	setAttr ".hyp[178].y" -490;
	setAttr ".hyp[178].nvs" 1920;
	setAttr ".hyp[179].x" 2115.71435546875;
	setAttr ".hyp[179].y" -490;
	setAttr ".hyp[179].nvs" 1920;
	setAttr ".hyp[180].x" 2327.142822265625;
	setAttr ".hyp[180].y" -490;
	setAttr ".hyp[180].nvs" 1920;
	setAttr ".hyp[181].x" 2538.571533203125;
	setAttr ".hyp[181].y" -490;
	setAttr ".hyp[181].nvs" 1920;
	setAttr ".hyp[182].x" 2750;
	setAttr ".hyp[182].y" -490;
	setAttr ".hyp[182].nvs" 1920;
	setAttr ".hyp[183].x" 2961.428466796875;
	setAttr ".hyp[183].y" -1637.142822265625;
	setAttr ".hyp[183].nvs" 1920;
	setAttr ".hyp[184].x" 2961.428466796875;
	setAttr ".hyp[184].y" -1532.857177734375;
	setAttr ".hyp[184].nvs" 1920;
	setAttr ".hyp[185].x" 2961.428466796875;
	setAttr ".hyp[185].y" -1428.5714111328125;
	setAttr ".hyp[185].nvs" 1920;
	setAttr ".hyp[186].x" 2961.428466796875;
	setAttr ".hyp[186].y" -1324.2857666015625;
	setAttr ".hyp[186].nvs" 1920;
	setAttr ".hyp[187].x" 2961.428466796875;
	setAttr ".hyp[187].y" -1220;
	setAttr ".hyp[187].nvs" 1920;
	setAttr ".hyp[188].x" 2961.428466796875;
	setAttr ".hyp[188].y" -1115.7142333984375;
	setAttr ".hyp[188].nvs" 1920;
	setAttr ".hyp[189].x" 2961.428466796875;
	setAttr ".hyp[189].y" -1011.4285888671875;
	setAttr ".hyp[189].nvs" 1920;
	setAttr ".hyp[190].x" 2961.428466796875;
	setAttr ".hyp[190].y" -907.14288330078125;
	setAttr ".hyp[190].nvs" 1920;
	setAttr ".hyp[191].x" 2961.428466796875;
	setAttr ".hyp[191].y" -802.85711669921875;
	setAttr ".hyp[191].nvs" 1920;
	setAttr ".hyp[192].x" 2961.428466796875;
	setAttr ".hyp[192].y" -698.5714111328125;
	setAttr ".hyp[192].nvs" 1920;
	setAttr ".hyp[193].x" 2961.428466796875;
	setAttr ".hyp[193].y" -594.28570556640625;
	setAttr ".hyp[193].nvs" 1920;
	setAttr ".hyp[194].x" 2961.428466796875;
	setAttr ".hyp[194].y" -490;
	setAttr ".hyp[194].nvs" 1920;
	setAttr ".hyp[195].x" 3172.857177734375;
	setAttr ".hyp[195].y" -1741.4285888671875;
	setAttr ".hyp[195].nvs" 1920;
	setAttr ".hyp[196].x" 1.4285714626312256;
	setAttr ".hyp[196].y" -385.71429443359375;
	setAttr ".hyp[196].nvs" 1920;
	setAttr ".hyp[197].x" 212.85714721679688;
	setAttr ".hyp[197].y" -385.71429443359375;
	setAttr ".hyp[197].nvs" 1920;
	setAttr ".hyp[198].x" 424.28570556640625;
	setAttr ".hyp[198].y" -385.71429443359375;
	setAttr ".hyp[198].nvs" 1920;
	setAttr ".hyp[199].x" 635.71429443359375;
	setAttr ".hyp[199].y" -385.71429443359375;
	setAttr ".hyp[199].nvs" 1920;
	setAttr ".hyp[200].x" 847.14288330078125;
	setAttr ".hyp[200].y" -385.71429443359375;
	setAttr ".hyp[200].nvs" 1920;
	setAttr ".hyp[201].x" 1058.5714111328125;
	setAttr ".hyp[201].y" -385.71429443359375;
	setAttr ".hyp[201].nvs" 1920;
	setAttr ".hyp[202].x" 1270;
	setAttr ".hyp[202].y" -385.71429443359375;
	setAttr ".hyp[202].nvs" 1920;
	setAttr ".hyp[203].x" 1481.4285888671875;
	setAttr ".hyp[203].y" -385.71429443359375;
	setAttr ".hyp[203].nvs" 1920;
	setAttr ".hyp[204].x" 1692.857177734375;
	setAttr ".hyp[204].y" -385.71429443359375;
	setAttr ".hyp[204].nvs" 1920;
	setAttr ".hyp[205].x" 1904.2857666015625;
	setAttr ".hyp[205].y" -385.71429443359375;
	setAttr ".hyp[205].nvs" 1920;
	setAttr ".hyp[206].x" 2115.71435546875;
	setAttr ".hyp[206].y" -385.71429443359375;
	setAttr ".hyp[206].nvs" 1920;
	setAttr ".hyp[207].x" 2327.142822265625;
	setAttr ".hyp[207].y" -385.71429443359375;
	setAttr ".hyp[207].nvs" 1920;
	setAttr ".hyp[208].x" 2538.571533203125;
	setAttr ".hyp[208].y" -385.71429443359375;
	setAttr ".hyp[208].nvs" 1920;
	setAttr ".hyp[209].x" 2750;
	setAttr ".hyp[209].y" -385.71429443359375;
	setAttr ".hyp[209].nvs" 1920;
	setAttr ".hyp[210].x" 2961.428466796875;
	setAttr ".hyp[210].y" -385.71429443359375;
	setAttr ".hyp[210].nvs" 1920;
	setAttr ".hyp[211].x" 3172.857177734375;
	setAttr ".hyp[211].y" -1637.142822265625;
	setAttr ".hyp[211].nvs" 1920;
	setAttr ".hyp[212].x" 3172.857177734375;
	setAttr ".hyp[212].y" -1532.857177734375;
	setAttr ".hyp[212].nvs" 1920;
	setAttr ".hyp[213].x" 3172.857177734375;
	setAttr ".hyp[213].y" -1428.5714111328125;
	setAttr ".hyp[213].nvs" 1920;
	setAttr ".hyp[214].x" 3172.857177734375;
	setAttr ".hyp[214].y" -1324.2857666015625;
	setAttr ".hyp[214].nvs" 1920;
	setAttr ".hyp[215].x" 3172.857177734375;
	setAttr ".hyp[215].y" -1220;
	setAttr ".hyp[215].nvs" 1920;
	setAttr ".hyp[216].x" 3172.857177734375;
	setAttr ".hyp[216].y" -1115.7142333984375;
	setAttr ".hyp[216].nvs" 1920;
	setAttr ".hyp[217].x" 3172.857177734375;
	setAttr ".hyp[217].y" -1011.4285888671875;
	setAttr ".hyp[217].nvs" 1920;
	setAttr ".hyp[218].x" 3172.857177734375;
	setAttr ".hyp[218].y" -907.14288330078125;
	setAttr ".hyp[218].nvs" 1920;
	setAttr ".hyp[219].x" 3172.857177734375;
	setAttr ".hyp[219].y" -802.85711669921875;
	setAttr ".hyp[219].nvs" 1920;
	setAttr ".hyp[220].x" 3172.857177734375;
	setAttr ".hyp[220].y" -698.5714111328125;
	setAttr ".hyp[220].nvs" 1920;
	setAttr ".hyp[221].x" 3172.857177734375;
	setAttr ".hyp[221].y" -594.28570556640625;
	setAttr ".hyp[221].nvs" 1920;
	setAttr ".hyp[222].x" 3172.857177734375;
	setAttr ".hyp[222].y" -490;
	setAttr ".hyp[222].nvs" 1920;
	setAttr ".hyp[223].x" 3172.857177734375;
	setAttr ".hyp[223].y" -385.71429443359375;
	setAttr ".hyp[223].nvs" 1920;
	setAttr ".hyp[224].x" 3384.28564453125;
	setAttr ".hyp[224].y" -1741.4285888671875;
	setAttr ".hyp[224].nvs" 1920;
	setAttr ".hyp[225].x" 3384.28564453125;
	setAttr ".hyp[225].y" -1637.142822265625;
	setAttr ".hyp[225].nvs" 1920;
	setAttr ".hyp[226].x" 3384.28564453125;
	setAttr ".hyp[226].y" -1532.857177734375;
	setAttr ".hyp[226].nvs" 1920;
	setAttr ".hyp[227].x" 3384.28564453125;
	setAttr ".hyp[227].y" -1428.5714111328125;
	setAttr ".hyp[227].nvs" 1920;
	setAttr ".hyp[228].x" 3384.28564453125;
	setAttr ".hyp[228].y" -1324.2857666015625;
	setAttr ".hyp[228].nvs" 1920;
	setAttr ".hyp[229].x" 3384.28564453125;
	setAttr ".hyp[229].y" -1220;
	setAttr ".hyp[229].nvs" 1920;
	setAttr ".hyp[230].x" 3384.28564453125;
	setAttr ".hyp[230].y" -1115.7142333984375;
	setAttr ".hyp[230].nvs" 1920;
	setAttr ".hyp[231].x" 3384.28564453125;
	setAttr ".hyp[231].y" -1011.4285888671875;
	setAttr ".hyp[231].nvs" 1920;
	setAttr ".hyp[232].x" 3384.28564453125;
	setAttr ".hyp[232].y" -907.14288330078125;
	setAttr ".hyp[232].nvs" 1920;
	setAttr ".hyp[233].x" 3384.28564453125;
	setAttr ".hyp[233].y" -802.85711669921875;
	setAttr ".hyp[233].nvs" 1920;
	setAttr ".hyp[234].x" 3384.28564453125;
	setAttr ".hyp[234].y" -698.5714111328125;
	setAttr ".hyp[234].nvs" 1920;
	setAttr ".hyp[235].x" 3384.28564453125;
	setAttr ".hyp[235].y" -594.28570556640625;
	setAttr ".hyp[235].nvs" 1920;
	setAttr ".hyp[236].x" 3384.28564453125;
	setAttr ".hyp[236].y" -490;
	setAttr ".hyp[236].nvs" 1920;
	setAttr ".hyp[237].x" 3384.28564453125;
	setAttr ".hyp[237].y" -385.71429443359375;
	setAttr ".hyp[237].nvs" 1920;
	setAttr ".hyp[238].x" 1.4285714626312256;
	setAttr ".hyp[238].y" -281.42855834960938;
	setAttr ".hyp[238].nvs" 1920;
	setAttr ".hyp[239].x" 212.85714721679688;
	setAttr ".hyp[239].y" -281.42855834960938;
	setAttr ".hyp[239].nvs" 1920;
	setAttr ".hyp[240].x" 424.28570556640625;
	setAttr ".hyp[240].y" -281.42855834960938;
	setAttr ".hyp[240].nvs" 1920;
	setAttr ".hyp[241].x" 635.71429443359375;
	setAttr ".hyp[241].y" -281.42855834960938;
	setAttr ".hyp[241].nvs" 1920;
	setAttr ".hyp[242].x" 847.14288330078125;
	setAttr ".hyp[242].y" -281.42855834960938;
	setAttr ".hyp[242].nvs" 1920;
	setAttr ".hyp[243].x" 1058.5714111328125;
	setAttr ".hyp[243].y" -281.42855834960938;
	setAttr ".hyp[243].nvs" 1920;
	setAttr ".hyp[244].x" 1270;
	setAttr ".hyp[244].y" -281.42855834960938;
	setAttr ".hyp[244].nvs" 1920;
	setAttr ".hyp[245].x" 1481.4285888671875;
	setAttr ".hyp[245].y" -281.42855834960938;
	setAttr ".hyp[245].nvs" 1920;
	setAttr ".hyp[246].x" 1692.857177734375;
	setAttr ".hyp[246].y" -281.42855834960938;
	setAttr ".hyp[246].nvs" 1920;
	setAttr ".hyp[247].x" 1904.2857666015625;
	setAttr ".hyp[247].y" -281.42855834960938;
	setAttr ".hyp[247].nvs" 1920;
	setAttr ".hyp[248].x" 2115.71435546875;
	setAttr ".hyp[248].y" -281.42855834960938;
	setAttr ".hyp[248].nvs" 1920;
	setAttr ".hyp[249].x" 2327.142822265625;
	setAttr ".hyp[249].y" -281.42855834960938;
	setAttr ".hyp[249].nvs" 1920;
	setAttr ".hyp[250].x" 2538.571533203125;
	setAttr ".hyp[250].y" -281.42855834960938;
	setAttr ".hyp[250].nvs" 1920;
	setAttr ".hyp[251].x" 2750;
	setAttr ".hyp[251].y" -281.42855834960938;
	setAttr ".hyp[251].nvs" 1920;
	setAttr ".hyp[252].x" 2961.428466796875;
	setAttr ".hyp[252].y" -281.42855834960938;
	setAttr ".hyp[252].nvs" 1920;
	setAttr ".hyp[253].x" 3172.857177734375;
	setAttr ".hyp[253].y" -281.42855834960938;
	setAttr ".hyp[253].nvs" 1920;
	setAttr ".hyp[254].x" 3384.28564453125;
	setAttr ".hyp[254].y" -281.42855834960938;
	setAttr ".hyp[254].nvs" 1920;
	setAttr ".hyp[255].x" 3595.71435546875;
	setAttr ".hyp[255].y" -1741.4285888671875;
	setAttr ".hyp[255].nvs" 1920;
	setAttr ".hyp[256].x" 3595.71435546875;
	setAttr ".hyp[256].y" -1637.142822265625;
	setAttr ".hyp[256].nvs" 1920;
	setAttr ".hyp[257].x" 3595.71435546875;
	setAttr ".hyp[257].y" -1532.857177734375;
	setAttr ".hyp[257].nvs" 1920;
	setAttr ".hyp[258].x" 3595.71435546875;
	setAttr ".hyp[258].y" -1428.5714111328125;
	setAttr ".hyp[258].nvs" 1920;
	setAttr ".hyp[259].x" 3595.71435546875;
	setAttr ".hyp[259].y" -1324.2857666015625;
	setAttr ".hyp[259].nvs" 1920;
	setAttr ".hyp[260].x" 3595.71435546875;
	setAttr ".hyp[260].y" -1220;
	setAttr ".hyp[260].nvs" 1920;
	setAttr ".hyp[261].x" 3595.71435546875;
	setAttr ".hyp[261].y" -1115.7142333984375;
	setAttr ".hyp[261].nvs" 1920;
	setAttr ".hyp[262].x" 3595.71435546875;
	setAttr ".hyp[262].y" -1011.4285888671875;
	setAttr ".hyp[262].nvs" 1920;
	setAttr ".hyp[263].x" 3595.71435546875;
	setAttr ".hyp[263].y" -907.14288330078125;
	setAttr ".hyp[263].nvs" 1920;
	setAttr ".hyp[264].x" 3595.71435546875;
	setAttr ".hyp[264].y" -802.85711669921875;
	setAttr ".hyp[264].nvs" 1920;
	setAttr ".hyp[265].x" 3595.71435546875;
	setAttr ".hyp[265].y" -698.5714111328125;
	setAttr ".hyp[265].nvs" 1920;
	setAttr ".hyp[266].x" 3595.71435546875;
	setAttr ".hyp[266].y" -594.28570556640625;
	setAttr ".hyp[266].nvs" 1920;
	setAttr ".hyp[267].x" 3595.71435546875;
	setAttr ".hyp[267].y" -490;
	setAttr ".hyp[267].nvs" 1920;
	setAttr ".hyp[268].x" 3595.71435546875;
	setAttr ".hyp[268].y" -385.71429443359375;
	setAttr ".hyp[268].nvs" 1920;
	setAttr ".hyp[269].x" 3595.71435546875;
	setAttr ".hyp[269].y" -281.42855834960938;
	setAttr ".hyp[269].nvs" 1920;
	setAttr ".hyp[270].x" 1.4285714626312256;
	setAttr ".hyp[270].y" -177.14285278320312;
	setAttr ".hyp[270].nvs" 1920;
	setAttr ".hyp[271].x" 212.85714721679688;
	setAttr ".hyp[271].y" -177.14285278320312;
	setAttr ".hyp[271].nvs" 1920;
	setAttr ".hyp[272].x" 424.28570556640625;
	setAttr ".hyp[272].y" -177.14285278320312;
	setAttr ".hyp[272].nvs" 1920;
	setAttr ".hyp[273].x" 635.71429443359375;
	setAttr ".hyp[273].y" -177.14285278320312;
	setAttr ".hyp[273].nvs" 1920;
	setAttr ".hyp[274].x" 847.14288330078125;
	setAttr ".hyp[274].y" -177.14285278320312;
	setAttr ".hyp[274].nvs" 1920;
	setAttr ".hyp[275].x" 1058.5714111328125;
	setAttr ".hyp[275].y" -177.14285278320312;
	setAttr ".hyp[275].nvs" 1920;
	setAttr ".hyp[276].x" 1270;
	setAttr ".hyp[276].y" -177.14285278320312;
	setAttr ".hyp[276].nvs" 1920;
	setAttr ".hyp[277].x" 1481.4285888671875;
	setAttr ".hyp[277].y" -177.14285278320312;
	setAttr ".hyp[277].nvs" 1920;
	setAttr ".hyp[278].x" 1692.857177734375;
	setAttr ".hyp[278].y" -177.14285278320312;
	setAttr ".hyp[278].nvs" 1920;
	setAttr ".hyp[279].x" 1904.2857666015625;
	setAttr ".hyp[279].y" -177.14285278320312;
	setAttr ".hyp[279].nvs" 1920;
	setAttr ".hyp[280].x" 2115.71435546875;
	setAttr ".hyp[280].y" -177.14285278320312;
	setAttr ".hyp[280].nvs" 1920;
	setAttr ".hyp[281].x" 2327.142822265625;
	setAttr ".hyp[281].y" -177.14285278320312;
	setAttr ".hyp[281].nvs" 1920;
	setAttr ".hyp[282].x" 2538.571533203125;
	setAttr ".hyp[282].y" -177.14285278320312;
	setAttr ".hyp[282].nvs" 1920;
	setAttr ".hyp[283].x" 2750;
	setAttr ".hyp[283].y" -177.14285278320312;
	setAttr ".hyp[283].nvs" 1920;
	setAttr ".hyp[284].x" 2961.428466796875;
	setAttr ".hyp[284].y" -177.14285278320312;
	setAttr ".hyp[284].nvs" 1920;
	setAttr ".hyp[285].x" 3172.857177734375;
	setAttr ".hyp[285].y" -177.14285278320312;
	setAttr ".hyp[285].nvs" 1920;
	setAttr ".hyp[286].x" 3384.28564453125;
	setAttr ".hyp[286].y" -177.14285278320312;
	setAttr ".hyp[286].nvs" 1920;
	setAttr ".hyp[287].x" 3595.71435546875;
	setAttr ".hyp[287].y" -177.14285278320312;
	setAttr ".hyp[287].nvs" 1920;
	setAttr ".hyp[288].x" 3807.142822265625;
	setAttr ".hyp[288].y" -1741.4285888671875;
	setAttr ".hyp[288].nvs" 1920;
	setAttr ".hyp[289].x" 3807.142822265625;
	setAttr ".hyp[289].y" -1637.142822265625;
	setAttr ".hyp[289].nvs" 1920;
	setAttr ".hyp[290].x" 3807.142822265625;
	setAttr ".hyp[290].y" -1532.857177734375;
	setAttr ".hyp[290].nvs" 1920;
	setAttr ".hyp[291].x" 3807.142822265625;
	setAttr ".hyp[291].y" -1428.5714111328125;
	setAttr ".hyp[291].nvs" 1920;
	setAttr ".hyp[292].x" 3807.142822265625;
	setAttr ".hyp[292].y" -1324.2857666015625;
	setAttr ".hyp[292].nvs" 1920;
	setAttr ".hyp[293].x" 3807.142822265625;
	setAttr ".hyp[293].y" -1220;
	setAttr ".hyp[293].nvs" 1920;
	setAttr ".hyp[294].x" 3807.142822265625;
	setAttr ".hyp[294].y" -1115.7142333984375;
	setAttr ".hyp[294].nvs" 1920;
	setAttr ".hyp[295].x" 3807.142822265625;
	setAttr ".hyp[295].y" -1011.4285888671875;
	setAttr ".hyp[295].nvs" 1920;
	setAttr ".hyp[296].x" 3807.142822265625;
	setAttr ".hyp[296].y" -907.14288330078125;
	setAttr ".hyp[296].nvs" 1920;
	setAttr ".hyp[297].x" 3807.142822265625;
	setAttr ".hyp[297].y" -802.85711669921875;
	setAttr ".hyp[297].nvs" 1920;
	setAttr ".hyp[298].x" 3807.142822265625;
	setAttr ".hyp[298].y" -698.5714111328125;
	setAttr ".hyp[298].nvs" 1920;
	setAttr ".hyp[299].x" 3807.142822265625;
	setAttr ".hyp[299].y" -594.28570556640625;
	setAttr ".hyp[299].nvs" 1920;
	setAttr ".hyp[300].x" 3807.142822265625;
	setAttr ".hyp[300].y" -490;
	setAttr ".hyp[300].nvs" 1920;
	setAttr ".hyp[301].x" 3807.142822265625;
	setAttr ".hyp[301].y" -385.71429443359375;
	setAttr ".hyp[301].nvs" 1920;
	setAttr ".hyp[302].x" 3807.142822265625;
	setAttr ".hyp[302].y" -281.42855834960938;
	setAttr ".hyp[302].nvs" 1920;
	setAttr ".hyp[303].x" 3807.142822265625;
	setAttr ".hyp[303].y" -177.14285278320312;
	setAttr ".hyp[303].nvs" 1920;
	setAttr ".hyp[304].x" 1.4285714626312256;
	setAttr ".hyp[304].y" -72.857139587402344;
	setAttr ".hyp[304].nvs" 1920;
	setAttr ".hyp[305].x" 212.85714721679688;
	setAttr ".hyp[305].y" -72.857139587402344;
	setAttr ".hyp[305].nvs" 1920;
	setAttr ".hyp[306].x" 424.28570556640625;
	setAttr ".hyp[306].y" -72.857139587402344;
	setAttr ".hyp[306].nvs" 1920;
	setAttr ".hyp[307].x" 635.71429443359375;
	setAttr ".hyp[307].y" -72.857139587402344;
	setAttr ".hyp[307].nvs" 1920;
	setAttr ".hyp[308].x" 847.14288330078125;
	setAttr ".hyp[308].y" -72.857139587402344;
	setAttr ".hyp[308].nvs" 1920;
	setAttr ".hyp[309].x" 1058.5714111328125;
	setAttr ".hyp[309].y" -72.857139587402344;
	setAttr ".hyp[309].nvs" 1920;
	setAttr ".hyp[310].x" 1270;
	setAttr ".hyp[310].y" -72.857139587402344;
	setAttr ".hyp[310].nvs" 1920;
	setAttr ".hyp[311].x" 1481.4285888671875;
	setAttr ".hyp[311].y" -72.857139587402344;
	setAttr ".hyp[311].nvs" 1920;
	setAttr ".hyp[312].x" 1692.857177734375;
	setAttr ".hyp[312].y" -72.857139587402344;
	setAttr ".hyp[312].nvs" 1920;
	setAttr ".hyp[313].x" 1904.2857666015625;
	setAttr ".hyp[313].y" -72.857139587402344;
	setAttr ".hyp[313].nvs" 1920;
	setAttr ".hyp[314].x" 2115.71435546875;
	setAttr ".hyp[314].y" -72.857139587402344;
	setAttr ".hyp[314].nvs" 1920;
	setAttr ".hyp[315].x" 2327.142822265625;
	setAttr ".hyp[315].y" -72.857139587402344;
	setAttr ".hyp[315].nvs" 1920;
	setAttr ".hyp[316].x" 2538.571533203125;
	setAttr ".hyp[316].y" -72.857139587402344;
	setAttr ".hyp[316].nvs" 1920;
	setAttr ".hyp[317].x" 2750;
	setAttr ".hyp[317].y" -72.857139587402344;
	setAttr ".hyp[317].nvs" 1920;
	setAttr ".hyp[318].x" 2961.428466796875;
	setAttr ".hyp[318].y" -72.857139587402344;
	setAttr ".hyp[318].nvs" 1920;
	setAttr ".hyp[319].x" 3172.857177734375;
	setAttr ".hyp[319].y" -72.857139587402344;
	setAttr ".hyp[319].nvs" 1920;
	setAttr ".hyp[320].x" 3384.28564453125;
	setAttr ".hyp[320].y" -72.857139587402344;
	setAttr ".hyp[320].nvs" 1920;
	setAttr ".hyp[321].x" 199.01315307617188;
	setAttr ".hyp[321].y" 44.195930480957031;
	setAttr ".hyp[321].nvs" 1920;
	setAttr ".hyp[322].x" 1.8702963590621948;
	setAttr ".hyp[322].y" 76.986900329589844;
	setAttr ".hyp[322].nvs" 1920;
	setAttr ".hyp[323].x" 1.8702963590621948;
	setAttr ".hyp[323].y" -1.5845268964767456;
	setAttr ".hyp[323].nvs" 1920;
	setAttr ".hyp[324].x" 396.156005859375;
	setAttr ".hyp[324].y" 24.063589096069336;
	setAttr ".hyp[324].nvs" 1920;
	setAttr ".hyp[325].x" 1.8702963590621948;
	setAttr ".hyp[325].y" -1.5845268964767456;
	setAttr ".hyp[325].nvs" 1920;
	setAttr ".hyp[326].x" 987.5845947265625;
	setAttr ".hyp[326].y" 44.195930480957031;
	setAttr ".hyp[326].nvs" 1920;
	setAttr ".hyp[327].x" 790.44171142578125;
	setAttr ".hyp[327].y" 24.063589096069336;
	setAttr ".hyp[327].nvs" 1920;
	setAttr ".hyp[328].x" 593.29888916015625;
	setAttr ".hyp[328].y" 44.195930480957031;
	setAttr ".hyp[328].nvs" 1920;
	setAttr ".hyp[329].x" 1.8702963590621948;
	setAttr ".hyp[329].y" -1.5845268964767456;
	setAttr ".hyp[329].nvs" 1920;
	setAttr ".hyp[330].x" 987.5845947265625;
	setAttr ".hyp[330].y" 44.195930480957031;
	setAttr ".hyp[330].nvs" 1920;
	setAttr ".hyp[331].x" 790.44171142578125;
	setAttr ".hyp[331].y" 24.063589096069336;
	setAttr ".hyp[331].nvs" 1920;
	setAttr ".hyp[332].x" 593.29888916015625;
	setAttr ".hyp[332].y" 44.195930480957031;
	setAttr ".hyp[332].nvs" 1920;
	setAttr ".hyp[333].x" 396.156005859375;
	setAttr ".hyp[333].y" 24.063589096069336;
	setAttr ".hyp[333].nvs" 1920;
	setAttr ".hyp[334].x" 1.8702963590621948;
	setAttr ".hyp[334].y" -1.5845268964767456;
	setAttr ".hyp[334].nvs" 1920;
	setAttr ".hyp[335].x" 1.8702963590621948;
	setAttr ".hyp[335].y" -1.5845268964767456;
	setAttr ".hyp[335].nvs" 1920;
	setAttr ".hyp[336].x" 1.8702963590621948;
	setAttr ".hyp[336].y" -1.5845268964767456;
	setAttr ".hyp[336].nvs" 1920;
	setAttr ".hyp[337].x" 1.8745906352996826;
	setAttr ".hyp[337].y" -1.5888212919235229;
	setAttr ".hyp[337].nvs" 1920;
	setAttr ".hyp[338].x" 1.8745906352996826;
	setAttr ".hyp[338].y" -1.5888212919235229;
	setAttr ".hyp[338].nvs" 1920;
	setAttr ".anf" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 1\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 0\n                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 0\n                -fluids 0\n                -hairSystems 0\n"
		+ "                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 1\n                -manipulators 1\n                -pluginShapes 0\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n"
		+ "            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
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
		+ "                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 0\n                -pluginShapes 1\n                -dimensions 0\n                -handles 0\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 0\n            -pluginShapes 1\n            -dimensions 0\n            -handles 0\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 0\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 0\n                -pluginShapes 1\n                -dimensions 0\n                -handles 0\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 0\n            -pluginShapes 1\n            -dimensions 0\n            -handles 0\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 0\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 0\n                -pluginShapes 1\n                -dimensions 0\n                -handles 0\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 0\n            -pluginShapes 1\n            -dimensions 0\n            -handles 0\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 46 -ps 2 100 54 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode reference -n "Psylocke_TSMG_2015RN";
	setAttr -s 341 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Psylocke_TSMG_2015RN"
		"Psylocke_TSMG_2015RN" 0
		"Psylocke_TSMG_2015RN" 651
		0 "|Psylocke_TSMG_2015RNfosterParent1|TSMG_upper_body_parentConstraint1" 
		"|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"-s -r "
		0 "|Psylocke_TSMG_2015RNfosterParent1|spine1_hipsIKControl_parentConstraint1" 
		"|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"-s -r "
		1 |Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body 
		"blendParent1" "blendParent1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		1 |Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl 
		"blendParent1" "blendParent1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root" "visibility" 
		" -av 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root" "translateX" 
		" -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root" "translateY" 
		" -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root" "translateZ" 
		" -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root" "rotateX" " -av"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root" "rotateY" " -av"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root" "rotateZ" " -av"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"visibility" " -av 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"translate" " -type \"double3\" 0 -0.045982246425367412 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rotate" " -type \"double3\" 0 -90 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"head1_controlSize" " -av -k 1 0.05"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"head1_RotationIsolationSwitch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"leftArm1_controlSize" " -av -k 1 0.062759891152399994"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"leftArm1_FKIKSwitch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"leftArm1_RotationIsolationSwitch" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"leftLeg1_ControlSize" " -av -k 1 0.085204005241399997"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"leftLeg1_FKIKSwitch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"leftLeg1_RotationIsolationSwitch" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rightArm1_controlSize" " -av -k 1 0.062759891152399994"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rightArm1_FKIKSwitch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rightArm1_RotationIsolationSwitch" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rightLeg1_ControlSize" " -av -k 1 0.085204005241399997"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rightLeg1_FKIKSwitch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"rightLeg1_RotationIsolationSwitch" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"spine1_FKIKSwitch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"spine1_ControlSize" " -av -k 1 0.125"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body" 
		"blendParent1" " -k 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"translate" " -type \"double3\" -0.67890380095826186 -8.7727317260422044e-05 0.73375842906106148"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"rotate" " -type \"double3\" -11.07712806108733083 -125.31903711444279281 -87.93301068997887171"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"scaleX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"scaleY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"scaleZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"AutoStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"AntiIKPop" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"LowerArmStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl" 
		"UpperArmStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"translate" " -type \"double3\" 0.18275478418048008 0.17148580475319652 0.58303404047324625"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"rotate" " -type \"double3\" 5.44226279372827815 -32.89034427960459084 0.7844300730480015"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"scaleX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"scaleY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"scaleZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"AutoStretch" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"FootStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"HeelRaise" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"HeelSwivel" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"ToeRaise" " -av -k 1 1.4075898206999999e-06"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"ToeSwivel" " -av -k 1 7.3698136482399997e-09"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"UpperLegStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"LowerLegStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl" 
		"AntiIKPop" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl|Psylocke_TSMG_2015:leftLeg1_LegIKAimed|Psylocke_TSMG_2015:leftLeg1_HeelRaiser|Psylocke_TSMG_2015:leftLeg1_IKHeelControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl|Psylocke_TSMG_2015:leftLeg1_LegIKAimed|Psylocke_TSMG_2015:leftLeg1_HeelRaiser|Psylocke_TSMG_2015:leftLeg1_IKHeelControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl|Psylocke_TSMG_2015:leftLeg1_LegIKAimed|Psylocke_TSMG_2015:leftLeg1_HeelRaiser|Psylocke_TSMG_2015:leftLeg1_IKHeelControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl|Psylocke_TSMG_2015:leftLeg1_LegIKAimed|Psylocke_TSMG_2015:leftLeg1_HeelRaiser|Psylocke_TSMG_2015:leftLeg1_IKHeelControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"translate" " -type \"double3\" 0.6612331485901477 -0.39504768123341644 -0.20992841727285086"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"rotate" " -type \"double3\" 192.32757038759436341 22.07737492183343164 -32.82922484992631951"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"scaleX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"scaleY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"scaleZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"AutoStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"AntiIKPop" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"LowerArmStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl" 
		"UpperArmStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"translate" " -type \"double3\" 0.021140270916294432 0.23774198007029509 -0.41085407148586534"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"rotate" " -type \"double3\" 26.4766192281792847 -60.07992156161628827 -0.77754060815070691"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"scaleX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"scaleY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"scaleZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"AutoStretch" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"FootStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"HeelRaise" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"HeelSwivel" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"ToeRaise" " -av -k 1 1.4075885701499999e-06"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"ToeSwivel" " -av -k 1 -7.3706547532000006e-09"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"UpperLegStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"LowerLegStretch" " -av -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl" 
		"AntiIKPop" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl|Psylocke_TSMG_2015:rightLeg1_LegIKAimed|Psylocke_TSMG_2015:rightLeg1_HeelRaiser|Psylocke_TSMG_2015:rightLeg1_IKHeelControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl|Psylocke_TSMG_2015:rightLeg1_LegIKAimed|Psylocke_TSMG_2015:rightLeg1_HeelRaiser|Psylocke_TSMG_2015:rightLeg1_IKHeelControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl|Psylocke_TSMG_2015:rightLeg1_LegIKAimed|Psylocke_TSMG_2015:rightLeg1_HeelRaiser|Psylocke_TSMG_2015:rightLeg1_IKHeelControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl|Psylocke_TSMG_2015:rightLeg1_LegIKAimed|Psylocke_TSMG_2015:rightLeg1_HeelRaiser|Psylocke_TSMG_2015:rightLeg1_IKHeelControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"translate" " -type \"double3\" 6.3695335894600001e-08 -3.51943629795e-09 1.5874905480399998e-08"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"rotate" " -type \"double3\" 51.9753238089000007 -0.036750836333599997 0.55126203942200003"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"scaleX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"scaleY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control" 
		"scaleZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl" 
		"stretch" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"translate" " -type \"double3\" 6.9183616443792513e-09 -4.0844423991321336e-09 -1.4462264311119747e-08"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"translate" " -type \"double3\" 5.9651033382276034e-09 -3.5212723160132676e-09 -1.526603404859701e-08"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"translate" " -type \"double3\" 5.3620830713553412e-09 -4.1441590782150902e-09 -1.5650874731413256e-08"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"translate" " -type \"double3\" 3.7224158835042678e-09 -5.2975515083366536e-09 -1.6117184496997294e-08"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_KneeBuffer|Psylocke_TSMG_2015:leftLeg1_KneeAimer|Psylocke_TSMG_2015:leftLeg1_KneeFixPosition|Psylocke_TSMG_2015:leftLeg1_KneeRotateXtra|Psylocke_TSMG_2015:leftLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:leftLeg1_LegIKKneeControl" 
		"rotate" " -type \"double3\" 10.73318043958839851 3.07966420940663488 -5.10767311189214013"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_KneeBuffer|Psylocke_TSMG_2015:leftLeg1_KneeAimer|Psylocke_TSMG_2015:leftLeg1_KneeFixPosition|Psylocke_TSMG_2015:leftLeg1_KneeRotateXtra|Psylocke_TSMG_2015:leftLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:leftLeg1_LegIKKneeControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_KneeBuffer|Psylocke_TSMG_2015:leftLeg1_KneeAimer|Psylocke_TSMG_2015:leftLeg1_KneeFixPosition|Psylocke_TSMG_2015:leftLeg1_KneeRotateXtra|Psylocke_TSMG_2015:leftLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:leftLeg1_LegIKKneeControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_KneeBuffer|Psylocke_TSMG_2015:leftLeg1_KneeAimer|Psylocke_TSMG_2015:leftLeg1_KneeFixPosition|Psylocke_TSMG_2015:leftLeg1_KneeRotateXtra|Psylocke_TSMG_2015:leftLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:leftLeg1_LegIKKneeControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"translate" " -type \"double3\" -3.1200900220750275e-09 -1.2083253522802302e-08 1.2065952160208485e-08"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl" 
		"stretch" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowControl" 
		"rotate" " -type \"double3\" 0 50 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"translate" " -type \"double3\" 2.7801872118617303e-09 -3.7696183061080101e-10 8.0189459907447389e-09"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"rotate" " -type \"double3\" -7.6855580056121182e-08 9.8212935671871189e-08 -1.238113496462668e-09"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"translate" " -type \"double3\" 1.8512334676507549e-09 2.0113164693223611e-10 7.5200709618419416e-09"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"rotate" " -type \"double3\" 2.8522661498840917e-07 1.2046017352310883e-07 -4.253234495670772e-09"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"translate" " -type \"double3\" 1.2919619544344916e-09 4.1380131143075942e-10 6.593944772843878e-09"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"rotate" " -type \"double3\" 6.1353191380778855e-08 1.1958283842099733e-07 1.1772745798338278e-09"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"translate" " -type \"double3\" 3.9939719455001964e-10 3.185987054362098e-10 5.8175328057224987e-09"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"rotate" " -type \"double3\" 4.3908422577425981e-07 1.250672658757751e-07 8.5583650413123579e-09"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_KneeBuffer|Psylocke_TSMG_2015:rightLeg1_KneeAimer|Psylocke_TSMG_2015:rightLeg1_KneeFixPosition|Psylocke_TSMG_2015:rightLeg1_KneeRotateXtra|Psylocke_TSMG_2015:rightLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:rightLeg1_LegIKKneeControl" 
		"rotate" " -type \"double3\" 9.08579267982195304 2.8620272241892315 -4.89456048668241994"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_KneeBuffer|Psylocke_TSMG_2015:rightLeg1_KneeAimer|Psylocke_TSMG_2015:rightLeg1_KneeFixPosition|Psylocke_TSMG_2015:rightLeg1_KneeRotateXtra|Psylocke_TSMG_2015:rightLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:rightLeg1_LegIKKneeControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_KneeBuffer|Psylocke_TSMG_2015:rightLeg1_KneeAimer|Psylocke_TSMG_2015:rightLeg1_KneeFixPosition|Psylocke_TSMG_2015:rightLeg1_KneeRotateXtra|Psylocke_TSMG_2015:rightLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:rightLeg1_LegIKKneeControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_KneeBuffer|Psylocke_TSMG_2015:rightLeg1_KneeAimer|Psylocke_TSMG_2015:rightLeg1_KneeFixPosition|Psylocke_TSMG_2015:rightLeg1_KneeRotateXtra|Psylocke_TSMG_2015:rightLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:rightLeg1_LegIKKneeControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"translate" " -type \"double3\" -2.3149800117348368e-09 -4.4907957171585264e-09 -2.0338061236094987e-09"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"MiddleJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"EndJoint" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control" 
		"SideToSide" " -av -k 1 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"translate" " -type \"double3\" 0.010311809388858915 -0.003045703693906443 -0.046587451493240076"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"rotate" " -type \"double3\" 2.63156300239521146 27.75867361338148953 -9.2184122645992197"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"scaleX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"scaleY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"scaleZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl" 
		"blendParent1" " -k 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"scaleX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"scaleY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl" 
		"scaleZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"translate" " -type \"double3\" 0.0053697508699661299 -3.9823983969547119e-05 0.004411173866837482"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"translateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"translateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"translateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"rotate" " -type \"double3\" -0.85810915804575905 -5.61603689959603791 1.25371454773245672"
		
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"rotateX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"rotateY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"rotateZ" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"scaleX" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"scaleY" " -av"
		2 "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl" 
		"scaleZ" " -av"
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root.visibility" 
		"Psylocke_TSMG_2015RN.placeHolderList[1]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[2]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[3]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[4]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[5]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[6]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[7]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.scale" 
		"Psylocke_TSMG_2015RN.placeHolderList[8]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.head1_controlSize" 
		"Psylocke_TSMG_2015RN.placeHolderList[9]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.head1_RotationIsolationSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[10]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.leftArm1_controlSize" 
		"Psylocke_TSMG_2015RN.placeHolderList[11]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.leftArm1_FKIKSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[12]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.leftArm1_RotationIsolationSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[13]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.leftLeg1_ControlSize" 
		"Psylocke_TSMG_2015RN.placeHolderList[14]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.leftLeg1_FKIKSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[15]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.leftLeg1_RotationIsolationSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[16]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rightArm1_controlSize" 
		"Psylocke_TSMG_2015RN.placeHolderList[17]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rightArm1_FKIKSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[18]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rightArm1_RotationIsolationSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[19]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rightLeg1_ControlSize" 
		"Psylocke_TSMG_2015RN.placeHolderList[20]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rightLeg1_FKIKSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[21]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rightLeg1_RotationIsolationSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[22]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.spine1_FKIKSwitch" 
		"Psylocke_TSMG_2015RN.placeHolderList[23]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.spine1_ControlSize" 
		"Psylocke_TSMG_2015RN.placeHolderList[24]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.translate" 
		"Psylocke_TSMG_2015RN.placeHolderList[25]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[26]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[27]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[28]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotatePivot" 
		"Psylocke_TSMG_2015RN.placeHolderList[29]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotatePivot" 
		"Psylocke_TSMG_2015RN.placeHolderList[30]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotatePivotTranslate" 
		"Psylocke_TSMG_2015RN.placeHolderList[31]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotatePivotTranslate" 
		"Psylocke_TSMG_2015RN.placeHolderList[32]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotate" 
		"Psylocke_TSMG_2015RN.placeHolderList[33]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[34]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[35]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[36]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotateOrder" 
		"Psylocke_TSMG_2015RN.placeHolderList[37]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotateOrder" 
		"Psylocke_TSMG_2015RN.placeHolderList[38]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.rotateOrder" 
		"Psylocke_TSMG_2015RN.placeHolderList[39]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.parentMatrix" 
		"Psylocke_TSMG_2015RN.placeHolderList[40]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.blendParent1" 
		"Psylocke_TSMG_2015RN.placeHolderList[41]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.blendParent1" 
		"Psylocke_TSMG_2015RN.placeHolderList[42]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.visibility" 
		"Psylocke_TSMG_2015RN.placeHolderList[43]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:TSMG_upper_body_buffer|Psylocke_TSMG_2015:TSMG_upper_body.parentInverseMatrix" 
		"Psylocke_TSMG_2015RN.placeHolderList[44]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.AutoStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[45]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.AntiIKPop" 
		"Psylocke_TSMG_2015RN.placeHolderList[46]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.LowerArmStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[47]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.UpperArmStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[48]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[49]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[50]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[51]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[52]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[53]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[54]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[55]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[56]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftArm1_ParentToWorldNull|Psylocke_TSMG_2015:leftArm1_ArmIKBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKControl.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[57]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.AutoStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[58]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.FootStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[59]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.HeelRaise" 
		"Psylocke_TSMG_2015RN.placeHolderList[60]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.HeelSwivel" 
		"Psylocke_TSMG_2015RN.placeHolderList[61]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.ToeRaise" 
		"Psylocke_TSMG_2015RN.placeHolderList[62]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.ToeSwivel" 
		"Psylocke_TSMG_2015RN.placeHolderList[63]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.UpperLegStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[64]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.LowerLegStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[65]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.AntiIKPop" 
		"Psylocke_TSMG_2015RN.placeHolderList[66]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[67]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[68]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[69]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[70]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[71]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[72]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[73]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[74]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[75]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl|Psylocke_TSMG_2015:leftLeg1_LegIKAimed|Psylocke_TSMG_2015:leftLeg1_HeelRaiser|Psylocke_TSMG_2015:leftLeg1_IKHeelControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[76]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl|Psylocke_TSMG_2015:leftLeg1_LegIKAimed|Psylocke_TSMG_2015:leftLeg1_HeelRaiser|Psylocke_TSMG_2015:leftLeg1_IKHeelControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[77]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:leftLeg1_ParentToWorldNull|Psylocke_TSMG_2015:leftLeg1_LegIKBuffer|Psylocke_TSMG_2015:leftLeg1_LegIKControl|Psylocke_TSMG_2015:leftLeg1_LegIKAimed|Psylocke_TSMG_2015:leftLeg1_HeelRaiser|Psylocke_TSMG_2015:leftLeg1_IKHeelControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[78]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.AutoStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[79]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.AntiIKPop" 
		"Psylocke_TSMG_2015RN.placeHolderList[80]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.LowerArmStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[81]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.UpperArmStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[82]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[83]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[84]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[85]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[86]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[87]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[88]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[89]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[90]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightArm1_ParentToWorldNull|Psylocke_TSMG_2015:rightArm1_ArmIKBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKControl.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[91]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.AutoStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[92]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.FootStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[93]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.HeelRaise" 
		"Psylocke_TSMG_2015RN.placeHolderList[94]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.HeelSwivel" 
		"Psylocke_TSMG_2015RN.placeHolderList[95]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.ToeRaise" 
		"Psylocke_TSMG_2015RN.placeHolderList[96]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.ToeSwivel" 
		"Psylocke_TSMG_2015RN.placeHolderList[97]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.UpperLegStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[98]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.LowerLegStretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[99]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.AntiIKPop" 
		"Psylocke_TSMG_2015RN.placeHolderList[100]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[101]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[102]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[103]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[104]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[105]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[106]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[107]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[108]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[109]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl|Psylocke_TSMG_2015:rightLeg1_LegIKAimed|Psylocke_TSMG_2015:rightLeg1_HeelRaiser|Psylocke_TSMG_2015:rightLeg1_IKHeelControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[110]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl|Psylocke_TSMG_2015:rightLeg1_LegIKAimed|Psylocke_TSMG_2015:rightLeg1_HeelRaiser|Psylocke_TSMG_2015:rightLeg1_IKHeelControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[111]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_root|Psylocke_TSMG_2015:TSMG_IK_Controllers|Psylocke_TSMG_2015:rightLeg1_ParentToWorldNull|Psylocke_TSMG_2015:rightLeg1_LegIKBuffer|Psylocke_TSMG_2015:rightLeg1_LegIKControl|Psylocke_TSMG_2015:rightLeg1_LegIKAimed|Psylocke_TSMG_2015:rightLeg1_HeelRaiser|Psylocke_TSMG_2015:rightLeg1_IKHeelControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[112]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[113]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[114]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[115]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[116]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[117]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[118]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[119]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[120]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[121]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[122]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[123]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:head1_ParentConstrain|Psylocke_TSMG_2015:head1_neckSpace|Psylocke_TSMG_2015:head1_neckBuffer|Psylocke_TSMG_2015:head1_neckControl|Psylocke_TSMG_2015:head1_Buffer|Psylocke_TSMG_2015:head1_Control.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[124]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[125]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[126]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[127]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[128]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[129]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[130]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[131]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[132]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl|Psylocke_TSMG_2015:leftArm1_LowerArmBuffer|Psylocke_TSMG_2015:leftArm1_LowerArmControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[133]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl|Psylocke_TSMG_2015:leftArm1_LowerArmBuffer|Psylocke_TSMG_2015:leftArm1_LowerArmControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[134]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl|Psylocke_TSMG_2015:leftArm1_LowerArmBuffer|Psylocke_TSMG_2015:leftArm1_LowerArmControl|Psylocke_TSMG_2015:leftArm1_HandBuffer|Psylocke_TSMG_2015:leftArm1_HandControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[135]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl|Psylocke_TSMG_2015:leftArm1_LowerArmBuffer|Psylocke_TSMG_2015:leftArm1_LowerArmControl|Psylocke_TSMG_2015:leftArm1_HandBuffer|Psylocke_TSMG_2015:leftArm1_HandControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[136]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl|Psylocke_TSMG_2015:leftArm1_LowerArmBuffer|Psylocke_TSMG_2015:leftArm1_LowerArmControl|Psylocke_TSMG_2015:leftArm1_HandBuffer|Psylocke_TSMG_2015:leftArm1_HandControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[137]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl|Psylocke_TSMG_2015:leftArm1_LowerArmBuffer|Psylocke_TSMG_2015:leftArm1_LowerArmControl|Psylocke_TSMG_2015:leftArm1_HandBuffer|Psylocke_TSMG_2015:leftArm1_HandControl.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[138]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl|Psylocke_TSMG_2015:leftArm1_LowerArmBuffer|Psylocke_TSMG_2015:leftArm1_LowerArmControl|Psylocke_TSMG_2015:leftArm1_HandBuffer|Psylocke_TSMG_2015:leftArm1_HandControl.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[139]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_UpperArmControl|Psylocke_TSMG_2015:leftArm1_LowerArmBuffer|Psylocke_TSMG_2015:leftArm1_LowerArmControl|Psylocke_TSMG_2015:leftArm1_HandBuffer|Psylocke_TSMG_2015:leftArm1_HandControl.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[140]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[141]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[142]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftArm1_ParentConstrain|Psylocke_TSMG_2015:leftArm1_Rigging|Psylocke_TSMG_2015:leftArm1_ClavicalBuffer|Psylocke_TSMG_2015:leftArm1_ClavicalControl|Psylocke_TSMG_2015:leftArm1_UpperArmBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:leftArm1_ArmIKElbowControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[143]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[144]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[145]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[146]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[147]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[148]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[149]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[150]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[151]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger1_ParentConstrain|Psylocke_TSMG_2015:leftFinger1_rig|Psylocke_TSMG_2015:leftFinger1_ControlBuffer|Psylocke_TSMG_2015:leftFinger1_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[152]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[153]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[154]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[155]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[156]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[157]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[158]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[159]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[160]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger2_ParentConstrain|Psylocke_TSMG_2015:leftFinger2_rig|Psylocke_TSMG_2015:leftFinger2_ControlBuffer|Psylocke_TSMG_2015:leftFinger2_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[161]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[162]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[163]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[164]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[165]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[166]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[167]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[168]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[169]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger3_ParentConstrain|Psylocke_TSMG_2015:leftFinger3_rig|Psylocke_TSMG_2015:leftFinger3_ControlBuffer|Psylocke_TSMG_2015:leftFinger3_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[170]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[171]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[172]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[173]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[174]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[175]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[176]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[177]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[178]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftFinger4_ParentConstrain|Psylocke_TSMG_2015:leftFinger4_rig|Psylocke_TSMG_2015:leftFinger4_ControlBuffer|Psylocke_TSMG_2015:leftFinger4_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[179]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[180]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[181]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[182]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[183]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl|Psylocke_TSMG_2015:leftLeg1_LowerLegBuffer|Psylocke_TSMG_2015:leftLeg1_LowerLegControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[184]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl|Psylocke_TSMG_2015:leftLeg1_LowerLegBuffer|Psylocke_TSMG_2015:leftLeg1_LowerLegControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[185]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl|Psylocke_TSMG_2015:leftLeg1_LowerLegBuffer|Psylocke_TSMG_2015:leftLeg1_LowerLegControl|Psylocke_TSMG_2015:leftLeg1_FootBuffer|Psylocke_TSMG_2015:leftLeg1_FootControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[186]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl|Psylocke_TSMG_2015:leftLeg1_LowerLegBuffer|Psylocke_TSMG_2015:leftLeg1_LowerLegControl|Psylocke_TSMG_2015:leftLeg1_FootBuffer|Psylocke_TSMG_2015:leftLeg1_FootControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[187]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl|Psylocke_TSMG_2015:leftLeg1_LowerLegBuffer|Psylocke_TSMG_2015:leftLeg1_LowerLegControl|Psylocke_TSMG_2015:leftLeg1_FootBuffer|Psylocke_TSMG_2015:leftLeg1_FootControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[188]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl|Psylocke_TSMG_2015:leftLeg1_LowerLegBuffer|Psylocke_TSMG_2015:leftLeg1_LowerLegControl|Psylocke_TSMG_2015:leftLeg1_FootBuffer|Psylocke_TSMG_2015:leftLeg1_FootControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[189]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl|Psylocke_TSMG_2015:leftLeg1_LowerLegBuffer|Psylocke_TSMG_2015:leftLeg1_LowerLegControl|Psylocke_TSMG_2015:leftLeg1_FootBuffer|Psylocke_TSMG_2015:leftLeg1_FootControl|Psylocke_TSMG_2015:leftLeg1_ToeBuffer|Psylocke_TSMG_2015:leftLeg1_ToeControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[190]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl|Psylocke_TSMG_2015:leftLeg1_LowerLegBuffer|Psylocke_TSMG_2015:leftLeg1_LowerLegControl|Psylocke_TSMG_2015:leftLeg1_FootBuffer|Psylocke_TSMG_2015:leftLeg1_FootControl|Psylocke_TSMG_2015:leftLeg1_ToeBuffer|Psylocke_TSMG_2015:leftLeg1_ToeControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[191]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_UpperLegBuffer|Psylocke_TSMG_2015:leftLeg1_UpperLegControl|Psylocke_TSMG_2015:leftLeg1_LowerLegBuffer|Psylocke_TSMG_2015:leftLeg1_LowerLegControl|Psylocke_TSMG_2015:leftLeg1_FootBuffer|Psylocke_TSMG_2015:leftLeg1_FootControl|Psylocke_TSMG_2015:leftLeg1_ToeBuffer|Psylocke_TSMG_2015:leftLeg1_ToeControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[192]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_KneeBuffer|Psylocke_TSMG_2015:leftLeg1_KneeAimer|Psylocke_TSMG_2015:leftLeg1_KneeFixPosition|Psylocke_TSMG_2015:leftLeg1_KneeRotateXtra|Psylocke_TSMG_2015:leftLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:leftLeg1_LegIKKneeControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[193]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_KneeBuffer|Psylocke_TSMG_2015:leftLeg1_KneeAimer|Psylocke_TSMG_2015:leftLeg1_KneeFixPosition|Psylocke_TSMG_2015:leftLeg1_KneeRotateXtra|Psylocke_TSMG_2015:leftLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:leftLeg1_LegIKKneeControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[194]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftLeg1_ParentConstrain|Psylocke_TSMG_2015:leftLeg1_Rigging|Psylocke_TSMG_2015:leftLeg1_KneeBuffer|Psylocke_TSMG_2015:leftLeg1_KneeAimer|Psylocke_TSMG_2015:leftLeg1_KneeFixPosition|Psylocke_TSMG_2015:leftLeg1_KneeRotateXtra|Psylocke_TSMG_2015:leftLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:leftLeg1_LegIKKneeControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[195]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[196]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[197]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[198]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[199]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[200]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[201]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[202]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[203]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:leftThumb1_ParentConstrain|Psylocke_TSMG_2015:leftThumb1_rig|Psylocke_TSMG_2015:leftThumb1_ControlBuffer|Psylocke_TSMG_2015:leftThumb1_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[204]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[205]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[206]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[207]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[208]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[209]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[210]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[211]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[212]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl|Psylocke_TSMG_2015:rightArm1_LowerArmBuffer|Psylocke_TSMG_2015:rightArm1_LowerArmControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[213]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl|Psylocke_TSMG_2015:rightArm1_LowerArmBuffer|Psylocke_TSMG_2015:rightArm1_LowerArmControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[214]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl|Psylocke_TSMG_2015:rightArm1_LowerArmBuffer|Psylocke_TSMG_2015:rightArm1_LowerArmControl|Psylocke_TSMG_2015:rightArm1_HandBuffer|Psylocke_TSMG_2015:rightArm1_HandControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[215]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl|Psylocke_TSMG_2015:rightArm1_LowerArmBuffer|Psylocke_TSMG_2015:rightArm1_LowerArmControl|Psylocke_TSMG_2015:rightArm1_HandBuffer|Psylocke_TSMG_2015:rightArm1_HandControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[216]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl|Psylocke_TSMG_2015:rightArm1_LowerArmBuffer|Psylocke_TSMG_2015:rightArm1_LowerArmControl|Psylocke_TSMG_2015:rightArm1_HandBuffer|Psylocke_TSMG_2015:rightArm1_HandControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[217]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl|Psylocke_TSMG_2015:rightArm1_LowerArmBuffer|Psylocke_TSMG_2015:rightArm1_LowerArmControl|Psylocke_TSMG_2015:rightArm1_HandBuffer|Psylocke_TSMG_2015:rightArm1_HandControl.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[218]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl|Psylocke_TSMG_2015:rightArm1_LowerArmBuffer|Psylocke_TSMG_2015:rightArm1_LowerArmControl|Psylocke_TSMG_2015:rightArm1_HandBuffer|Psylocke_TSMG_2015:rightArm1_HandControl.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[219]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_UpperArmControl|Psylocke_TSMG_2015:rightArm1_LowerArmBuffer|Psylocke_TSMG_2015:rightArm1_LowerArmControl|Psylocke_TSMG_2015:rightArm1_HandBuffer|Psylocke_TSMG_2015:rightArm1_HandControl.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[220]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[221]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[222]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightArm1_ParentConstrain|Psylocke_TSMG_2015:rightArm1_Rigging|Psylocke_TSMG_2015:rightArm1_ClavicalBuffer|Psylocke_TSMG_2015:rightArm1_ClavicalControl|Psylocke_TSMG_2015:rightArm1_UpperArmBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowBuffer|Psylocke_TSMG_2015:rightArm1_ArmIKElbowControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[223]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[224]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[225]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[226]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[227]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[228]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[229]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[230]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[231]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger1_ParentConstrain|Psylocke_TSMG_2015:rightFinger1_rig|Psylocke_TSMG_2015:rightFinger1_ControlBuffer|Psylocke_TSMG_2015:rightFinger1_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[232]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[233]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[234]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[235]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[236]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[237]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[238]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[239]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[240]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger2_ParentConstrain|Psylocke_TSMG_2015:rightFinger2_rig|Psylocke_TSMG_2015:rightFinger2_ControlBuffer|Psylocke_TSMG_2015:rightFinger2_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[241]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[242]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[243]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[244]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[245]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[246]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[247]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[248]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[249]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger3_ParentConstrain|Psylocke_TSMG_2015:rightFinger3_rig|Psylocke_TSMG_2015:rightFinger3_ControlBuffer|Psylocke_TSMG_2015:rightFinger3_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[250]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[251]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[252]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[253]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[254]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[255]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[256]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[257]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[258]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightFinger4_ParentConstrain|Psylocke_TSMG_2015:rightFinger4_rig|Psylocke_TSMG_2015:rightFinger4_ControlBuffer|Psylocke_TSMG_2015:rightFinger4_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[259]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[260]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[261]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[262]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[263]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl|Psylocke_TSMG_2015:rightLeg1_LowerLegBuffer|Psylocke_TSMG_2015:rightLeg1_LowerLegControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[264]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl|Psylocke_TSMG_2015:rightLeg1_LowerLegBuffer|Psylocke_TSMG_2015:rightLeg1_LowerLegControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[265]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl|Psylocke_TSMG_2015:rightLeg1_LowerLegBuffer|Psylocke_TSMG_2015:rightLeg1_LowerLegControl|Psylocke_TSMG_2015:rightLeg1_FootBuffer|Psylocke_TSMG_2015:rightLeg1_FootControl.stretch" 
		"Psylocke_TSMG_2015RN.placeHolderList[266]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl|Psylocke_TSMG_2015:rightLeg1_LowerLegBuffer|Psylocke_TSMG_2015:rightLeg1_LowerLegControl|Psylocke_TSMG_2015:rightLeg1_FootBuffer|Psylocke_TSMG_2015:rightLeg1_FootControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[267]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl|Psylocke_TSMG_2015:rightLeg1_LowerLegBuffer|Psylocke_TSMG_2015:rightLeg1_LowerLegControl|Psylocke_TSMG_2015:rightLeg1_FootBuffer|Psylocke_TSMG_2015:rightLeg1_FootControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[268]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl|Psylocke_TSMG_2015:rightLeg1_LowerLegBuffer|Psylocke_TSMG_2015:rightLeg1_LowerLegControl|Psylocke_TSMG_2015:rightLeg1_FootBuffer|Psylocke_TSMG_2015:rightLeg1_FootControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[269]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl|Psylocke_TSMG_2015:rightLeg1_LowerLegBuffer|Psylocke_TSMG_2015:rightLeg1_LowerLegControl|Psylocke_TSMG_2015:rightLeg1_FootBuffer|Psylocke_TSMG_2015:rightLeg1_FootControl|Psylocke_TSMG_2015:rightLeg1_ToeBuffer|Psylocke_TSMG_2015:rightLeg1_ToeControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[270]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl|Psylocke_TSMG_2015:rightLeg1_LowerLegBuffer|Psylocke_TSMG_2015:rightLeg1_LowerLegControl|Psylocke_TSMG_2015:rightLeg1_FootBuffer|Psylocke_TSMG_2015:rightLeg1_FootControl|Psylocke_TSMG_2015:rightLeg1_ToeBuffer|Psylocke_TSMG_2015:rightLeg1_ToeControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[271]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_UpperLegBuffer|Psylocke_TSMG_2015:rightLeg1_UpperLegControl|Psylocke_TSMG_2015:rightLeg1_LowerLegBuffer|Psylocke_TSMG_2015:rightLeg1_LowerLegControl|Psylocke_TSMG_2015:rightLeg1_FootBuffer|Psylocke_TSMG_2015:rightLeg1_FootControl|Psylocke_TSMG_2015:rightLeg1_ToeBuffer|Psylocke_TSMG_2015:rightLeg1_ToeControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[272]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_KneeBuffer|Psylocke_TSMG_2015:rightLeg1_KneeAimer|Psylocke_TSMG_2015:rightLeg1_KneeFixPosition|Psylocke_TSMG_2015:rightLeg1_KneeRotateXtra|Psylocke_TSMG_2015:rightLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:rightLeg1_LegIKKneeControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[273]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_KneeBuffer|Psylocke_TSMG_2015:rightLeg1_KneeAimer|Psylocke_TSMG_2015:rightLeg1_KneeFixPosition|Psylocke_TSMG_2015:rightLeg1_KneeRotateXtra|Psylocke_TSMG_2015:rightLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:rightLeg1_LegIKKneeControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[274]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightLeg1_ParentConstrain|Psylocke_TSMG_2015:rightLeg1_Rigging|Psylocke_TSMG_2015:rightLeg1_KneeBuffer|Psylocke_TSMG_2015:rightLeg1_KneeAimer|Psylocke_TSMG_2015:rightLeg1_KneeFixPosition|Psylocke_TSMG_2015:rightLeg1_KneeRotateXtra|Psylocke_TSMG_2015:rightLeg1_KneeCorrectForWindget|Psylocke_TSMG_2015:rightLeg1_LegIKKneeControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[275]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control.MiddleJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[276]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control.EndJoint" 
		"Psylocke_TSMG_2015RN.placeHolderList[277]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control.SideToSide" 
		"Psylocke_TSMG_2015RN.placeHolderList[278]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[279]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[280]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[281]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[282]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[283]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:rightThumb1_ParentConstrain|Psylocke_TSMG_2015:rightThumb1_rig|Psylocke_TSMG_2015:rightThumb1_ControlBuffer|Psylocke_TSMG_2015:rightThumb1_Control.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[284]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[285]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[286]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[287]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[288]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[289]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[290]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[291]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[292]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[293]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[294]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[295]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[296]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl|Psylocke_TSMG_2015:spine1_torsoBuffer|Psylocke_TSMG_2015:spine1_torsoControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[297]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl|Psylocke_TSMG_2015:spine1_torsoBuffer|Psylocke_TSMG_2015:spine1_torsoControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[298]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl|Psylocke_TSMG_2015:spine1_torsoBuffer|Psylocke_TSMG_2015:spine1_torsoControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[299]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl|Psylocke_TSMG_2015:spine1_torsoBuffer|Psylocke_TSMG_2015:spine1_torsoControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[300]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl|Psylocke_TSMG_2015:spine1_torsoBuffer|Psylocke_TSMG_2015:spine1_torsoControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[301]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_middleSpineBuffer|Psylocke_TSMG_2015:spine1_middleSpineControl|Psylocke_TSMG_2015:spine1_torsoBuffer|Psylocke_TSMG_2015:spine1_torsoControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[302]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_hipsControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[303]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_hipsControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[304]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_hipsControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[305]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_hipsControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[306]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_hipsControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[307]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_lowerSpineBuffer|Psylocke_TSMG_2015:spine1_lowerSpineControl|Psylocke_TSMG_2015:spine1_hipsControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[308]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[309]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[310]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[311]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.rotatePivot" 
		"Psylocke_TSMG_2015RN.placeHolderList[312]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.rotatePivotTranslate" 
		"Psylocke_TSMG_2015RN.placeHolderList[313]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[314]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[315]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[316]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.rotateOrder" 
		"Psylocke_TSMG_2015RN.placeHolderList[317]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.rotateOrder" 
		"Psylocke_TSMG_2015RN.placeHolderList[318]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[319]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[320]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[321]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.parentInverseMatrix" 
		"Psylocke_TSMG_2015RN.placeHolderList[322]" ""
		5 3 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_hipsIKBuffer|Psylocke_TSMG_2015:spine1_hipsIKControl.blendParent1" 
		"Psylocke_TSMG_2015RN.placeHolderList[323]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[324]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[325]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[326]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[327]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[328]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[329]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[330]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[331]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_torsoIKBuffer|Psylocke_TSMG_2015:spine1_torsoIKControl.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[332]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl.translateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[333]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl.translateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[334]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl.translateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[335]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl.rotateX" 
		"Psylocke_TSMG_2015RN.placeHolderList[336]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl.rotateY" 
		"Psylocke_TSMG_2015RN.placeHolderList[337]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl.rotateZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[338]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl.scaleX" 
		"Psylocke_TSMG_2015RN.placeHolderList[339]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl.scaleY" 
		"Psylocke_TSMG_2015RN.placeHolderList[340]" ""
		5 4 "Psylocke_TSMG_2015RN" "|Psylocke_TSMG_2015:TSMG_Rig|Psylocke_TSMG_2015:TSMG_Cruft|Psylocke_TSMG_2015:spine1_ParentConstrain|Psylocke_TSMG_2015:spine1_rig|Psylocke_TSMG_2015:spine1_middleSpineTransform|Psylocke_TSMG_2015:spine1_middleSpineAim|Psylocke_TSMG_2015:spine1_middleSpineIKBuffer|Psylocke_TSMG_2015:spine1_middleSpineIKControl.scaleZ" 
		"Psylocke_TSMG_2015RN.placeHolderList[341]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 17 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -s false -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
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
createNode animCurveTU -n "TSMG_root_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "TSMG_root_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "TSMG_root_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "TSMG_root_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "TSMG_root_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "TSMG_root_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "TSMG_root_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTL -n "TSMG_upper_body_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 24 0;
createNode animCurveTL -n "TSMG_upper_body_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 -0.056536095395600006 24 -0.056536095395600006;
createNode animCurveTL -n "TSMG_upper_body_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 24 0;
createNode animCurveTA -n "TSMG_upper_body_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 24 0;
createNode animCurveTA -n "TSMG_upper_body_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 -90 24 -90;
createNode animCurveTA -n "TSMG_upper_body_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_head1_controlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.05 1 0.05 2 0.05 3 0.05 4 0.05 5 0.05
		 6 0.05 7 0.05 8 0.05 9 0.05 10 0.05 11 0.05 12 0.05 13 0.05 14 0.05 15 0.05 16 0.05
		 17 0.05 18 0.05 19 0.05 20 0.05 21 0.05 22 0.05 23 0.05 24 0.05;
createNode animCurveTU -n "TSMG_upper_body_head1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTU -n "TSMG_upper_body_leftArm1_controlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.062759891152381897 1 0.062759891152399994
		 2 0.062759891152399994 3 0.062759891152399994 4 0.062759891152399994 5 0.062759891152399994
		 6 0.062759891152399994 7 0.062759891152399994 8 0.062759891152399994 9 0.062759891152399994
		 10 0.062759891152399994 11 0.062759891152399994 12 0.062759891152399994 13 0.062759891152399994
		 14 0.062759891152399994 15 0.062759891152399994 16 0.062759891152399994 17 0.062759891152399994
		 18 0.062759891152399994 19 0.062759891152399994 20 0.062759891152399994 21 0.062759891152399994
		 22 0.062759891152399994 23 0.062759891152399994 24 0.062759891152399994;
createNode animCurveTU -n "TSMG_upper_body_leftArm1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "TSMG_upper_body_leftArm1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_leftLeg1_ControlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.085204005241394043 1 0.085204005241399997
		 2 0.085204005241399997 3 0.085204005241399997 4 0.085204005241399997 5 0.085204005241399997
		 6 0.085204005241399997 7 0.085204005241399997 8 0.085204005241399997 9 0.085204005241399997
		 10 0.085204005241399997 11 0.085204005241399997 12 0.085204005241399997 13 0.085204005241399997
		 14 0.085204005241399997 15 0.085204005241399997 16 0.085204005241399997 17 0.085204005241399997
		 18 0.085204005241399997 19 0.085204005241399997 20 0.085204005241399997 21 0.085204005241399997
		 22 0.085204005241399997 23 0.085204005241399997 24 0.085204005241399997;
createNode animCurveTU -n "TSMG_upper_body_leftLeg1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTU -n "TSMG_upper_body_leftLeg1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_rightArm1_controlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.062759891152381897 1 0.062759891152399994
		 2 0.062759891152399994 3 0.062759891152399994 4 0.062759891152399994 5 0.062759891152399994
		 6 0.062759891152399994 7 0.062759891152399994 8 0.062759891152399994 9 0.062759891152399994
		 10 0.062759891152399994 11 0.062759891152399994 12 0.062759891152399994 13 0.062759891152399994
		 14 0.062759891152399994 15 0.062759891152399994 16 0.062759891152399994 17 0.062759891152399994
		 18 0.062759891152399994 19 0.062759891152399994 20 0.062759891152399994 21 0.062759891152399994
		 22 0.062759891152399994 23 0.062759891152399994 24 0.062759891152399994;
createNode animCurveTU -n "TSMG_upper_body_rightArm1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTU -n "TSMG_upper_body_rightArm1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_rightLeg1_ControlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.085204005241394043 1 0.085204005241399997
		 2 0.085204005241399997 3 0.085204005241399997 4 0.085204005241399997 5 0.085204005241399997
		 6 0.085204005241399997 7 0.085204005241399997 8 0.085204005241399997 9 0.085204005241399997
		 10 0.085204005241399997 11 0.085204005241399997 12 0.085204005241399997 13 0.085204005241399997
		 14 0.085204005241399997 15 0.085204005241399997 16 0.085204005241399997 17 0.085204005241399997
		 18 0.085204005241399997 19 0.085204005241399997 20 0.085204005241399997 21 0.085204005241399997
		 22 0.085204005241399997 23 0.085204005241399997 24 0.085204005241399997;
createNode animCurveTU -n "TSMG_upper_body_rightLeg1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTU -n "TSMG_upper_body_rightLeg1_RotationIsolationSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0;
createNode animCurveTU -n "TSMG_upper_body_spine1_FKIKSwitch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "TSMG_upper_body_spine1_ControlSize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.125 1 0.125 2 0.125 3 0.125 4 0.125
		 5 0.125 6 0.125 7 0.125 8 0.125 9 0.125 10 0.125 11 0.125 12 0.125 13 0.125 14 0.125
		 15 0.125 16 0.125 17 0.125 18 0.125 19 0.125 20 0.125 21 0.125 22 0.125 23 0.125
		 24 0.125;
createNode animCurveTA -n "rightLeg1_LegIKKneeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.5263859805503813e-11 1 9.7627226391199997
		 6 -2.2173344019100001 12 16.058041880299999 18 0.62417635909500002 24 9.7627226391199997;
createNode animCurveTA -n "rightLeg1_LegIKKneeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.23726755064311261 1 2.8616484233400001
		 6 1.6176776203900001 12 3.6386609379600001 18 2.94346929632 24 2.8616484233400001;
createNode animCurveTA -n "rightLeg1_LegIKKneeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.7936750371393521e-12 1 -5.2801360631299996
		 6 2.5156190766300002 12 -5.7934653377999998 18 -0.074870434958699994 24 -5.2801360631299996;
createNode animCurveTL -n "rightThumb1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -2.0335301845199999e-09 6 6.1793854642599997e-09
		 12 1.1420421062399999e-06 18 -5.8330994548400003e-09 24 -2.0335301845199999e-09;
createNode animCurveTL -n "rightThumb1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -4.1339378587000003e-09 6 4.7839929795399997e-09
		 12 -1.65488476811e-06 18 -8.9515146406399994e-09 24 -4.1339378587000003e-09;
createNode animCurveTL -n "rightThumb1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -2.1026811403100001e-09 6 -1.1693416235300001e-09
		 12 2.0805975382600004e-06 18 -1.1728692461700002e-09 24 -2.1026811403100001e-09;
createNode animCurveTA -n "rightThumb1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -3.1805546814599997e-14 6 -4.4527765540499995e-14
		 12 -3.1805546814599997e-14 18 -2.5444437451700003e-14 24 -3.1805546814599997e-14;
createNode animCurveTA -n "rightThumb1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 3.02152694739e-14 6 3.8166656177599997e-14
		 12 2.0673605429499999e-14 18 2.5444437451700003e-14 24 3.02152694739e-14;
createNode animCurveTA -n "rightThumb1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 2.5444437451700003e-14 6 -2.2263882770199999e-14
		 12 3.1805546814599997e-14 18 6.3611093629299997e-15 24 2.5444437451700003e-14;
createNode animCurveTU -n "rightThumb1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightThumb1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightThumb1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "spine1_lowerSpineControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_lowerSpineControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_lowerSpineControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_lowerSpineControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.987846675914698e-16;
createNode animCurveTA -n "spine1_lowerSpineControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_lowerSpineControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_middleSpineControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8488927466117464e-32;
createNode animCurveTL -n "spine1_middleSpineControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_middleSpineControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_middleSpineControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.987846675914698e-16;
createNode animCurveTA -n "spine1_middleSpineControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_middleSpineControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_torsoControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_torsoControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.2204460492503131e-16;
createNode animCurveTL -n "spine1_torsoControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_torsoControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.975693351829396e-16;
createNode animCurveTA -n "spine1_torsoControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_torsoControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_hipsControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_hipsControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_hipsControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_hipsControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_hipsControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_hipsControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "spine1_hipsIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "spine1_hipsIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "spine1_hipsIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "spine1_hipsIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.987846675914698e-16 1 1.9878466759100001e-16
		 6 1.9878466759100001e-16 12 1.9878466759100001e-16 18 1.9878466759100001e-16 24 1.9878466759100001e-16;
createNode animCurveTA -n "spine1_hipsIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "spine1_hipsIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "spine1_hipsIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "spine1_hipsIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "spine1_hipsIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTL -n "spine1_torsoIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.9303806576313238e-32;
createNode animCurveTL -n "spine1_torsoIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.2204460492503131e-16;
createNode animCurveTL -n "spine1_torsoIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_torsoIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.975693351829396e-16;
createNode animCurveTA -n "spine1_torsoIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "spine1_torsoIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "spine1_torsoIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "spine1_torsoIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "spine1_torsoIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "spine1_middleSpineIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.1570415377137042e-32 1 0.0053124624152499998
		 6 0.00059394438005600002 12 -2.8676820854799996e-05 18 0.0060858558624499997 24 0.0053124624152499998;
createNode animCurveTL -n "spine1_middleSpineIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.2204460492503131e-16 1 -4.0187503628899997e-05
		 6 -1.67999057463e-05 12 -6.6388380799400004e-06 18 -3.0038013791900001e-05 24 -4.0187503628899997e-05;
createNode animCurveTL -n "spine1_middleSpineIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0.0046966903866599999 6 0.0045627541065900003
		 12 0.0028850780194499999 18 0.00084222081522100005 24 0.0046966903866599999;
createNode animCurveTA -n "spine1_middleSpineIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.9696166897867449e-16 1 -0.91379230084700003
		 6 -0.91732804957899994 12 -0.59021526252599998 18 -0.162070545122 24 -0.91379230084700003;
createNode animCurveTA -n "spine1_middleSpineIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -5.9451434332400002 6 -10.976289377200001
		 12 -11.1339213387 18 -1.5022092013399999 24 -5.9451434332400002;
createNode animCurveTA -n "spine1_middleSpineIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.2539270470199999 6 0.54371552725600003
		 12 0.36694602264699999 18 1.20802724685 24 1.2539270470199999;
createNode animCurveTU -n "spine1_middleSpineIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "spine1_middleSpineIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "spine1_middleSpineIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTA -n "leftLeg1_IKHeelControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "leftLeg1_IKHeelControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "leftLeg1_IKHeelControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "rightLeg1_IKHeelControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "rightLeg1_IKHeelControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "rightLeg1_IKHeelControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "leftArm1_ClavicalControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.2722218725899999e-14 6 2.1468744099900002e-14
		 12 1.0336802714799999e-14 18 6.3611093629299997e-15 24 1.2722218725899999e-14;
createNode animCurveTA -n "leftArm1_ClavicalControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 9.5416640443899997e-15 6 -2.8624992133200003e-14
		 12 2.8624992133200003e-14 18 7.9513867036599999e-16 24 9.5416640443899997e-15;
createNode animCurveTA -n "leftArm1_ClavicalControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -4.3881715370799997e-14 6 -6.8183140983900007e-14
		 12 -6.3710485963099991e-14 18 -6.3561397462399999e-14 24 -4.3881715370799997e-14;
createNode animCurveTU -n "leftArm1_ClavicalControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "leftArm1_UpperArmControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.1308585145656493e-15;
createNode animCurveTA -n "leftArm1_UpperArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.4440281943305077e-32;
createNode animCurveTA -n "leftArm1_UpperArmControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.9453100416161419e-16;
createNode animCurveTU -n "leftArm1_UpperArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "leftArm1_LowerArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.398985293462454e-06;
createNode animCurveTU -n "leftArm1_LowerArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "leftArm1_HandControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8014861325958911e-15;
createNode animCurveTA -n "leftArm1_HandControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.3989852915740009e-06;
createNode animCurveTA -n "leftArm1_HandControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.7829853997157954e-15;
createNode animCurveTU -n "leftArm1_HandControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "leftArm1_HandControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "leftArm1_HandControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "leftArm1_ArmIKElbowControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.1308585145656493e-15;
createNode animCurveTA -n "leftArm1_ArmIKElbowControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.4440281943305077e-32;
createNode animCurveTA -n "leftArm1_ArmIKElbowControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.9453100416161419e-16;
createNode animCurveTL -n "leftFinger1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 7.1580792404500004e-09 6 2.0765116959299999e-08
		 12 1.5740162950800002e-08 18 3.9218945868699998e-09 24 7.1580792404500004e-09;
createNode animCurveTL -n "leftFinger1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -3.9860040823600001e-09 6 -4.3289927198499995e-11
		 12 -2.1173064412799998e-09 18 -5.3149201706399994e-09 24 -3.9860040823600001e-09;
createNode animCurveTL -n "leftFinger1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -1.4320725272299999e-08 6 -1.3542254540000001e-08
		 12 -1.60888803391e-08 18 -1.6231500588000001e-08 24 -1.4320725272299999e-08;
createNode animCurveTA -n "leftFinger1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -5.8610416835199999e-15 6 -3.7093529573600005e-14
		 12 -5.85840157465e-14 18 -1.1977552724999999e-14 24 -5.8610416835199999e-15;
createNode animCurveTA -n "leftFinger1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -5.6828431410400009e-14 6 2.6371270483599999e-14
		 12 -9.1237138229099995e-14 18 -2.1423961781899998e-14 24 -5.6828431410400009e-14;
createNode animCurveTA -n "leftFinger1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 7.8581858188699995e-14 6 5.4036237485000007e-14
		 12 3.8866628298500004e-14 18 6.44158483915e-14 24 7.8581858188699995e-14;
createNode animCurveTU -n "leftFinger1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftFinger1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftFinger1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "leftFinger2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 6.2629026409399999e-09 6 2.1367723146400001e-08
		 12 1.5237589856600001e-08 18 2.2426156487400001e-09 24 6.2629026409399999e-09;
createNode animCurveTL -n "leftFinger2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -3.3866374149500002e-09 6 3.22885351789e-09
		 12 3.5833558342799996e-10 18 -5.2042069542700002e-09 24 -3.3866374149500002e-09;
createNode animCurveTL -n "leftFinger2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -1.5180249834899999e-08 6 -1.4541329918000001e-08
		 12 -1.60722767317e-08 18 -1.6338335684399999e-08 24 -1.5180249834899999e-08;
createNode animCurveTA -n "leftFinger2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.7778803707700001e-14 6 -2.6550177165200001e-14
		 12 -2.9283466344599999e-14 18 5.0317368984100001e-15 24 1.7778803707700001e-14;
createNode animCurveTA -n "leftFinger2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -5.9732788815799992e-14 6 2.8397341043300004e-14
		 12 -8.0018054200200017e-14 18 -1.1826325890699999e-14 24 -5.9732788815799992e-14;
createNode animCurveTA -n "leftFinger2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 7.6600393209900004e-14 6 4.1365366095e-14
		 12 3.4935078715899996e-14 18 7.9205942038300001e-14 24 7.6600393209900004e-14;
createNode animCurveTU -n "leftFinger2_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftFinger2_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftFinger2_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "leftFinger3_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 5.7144120546600003e-09 6 2.2042185632299999e-08
		 12 1.49310190878e-08 18 9.5797503263399993e-10 24 5.7144120546600003e-09;
createNode animCurveTL -n "leftFinger3_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -4.0469216866500002e-09 6 2.8013615871500003e-09
		 12 4.6587800284199999e-10 18 -5.3596252991300006e-09 24 -4.0469216866500002e-09;
createNode animCurveTL -n "leftFinger3_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -1.56170071874e-08 6 -1.4295180594800001e-08
		 12 -1.4882423626800002e-08 18 -1.6074218622800002e-08 24 -1.56170071874e-08;
createNode animCurveTA -n "leftFinger3_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 3.0603520777800003e-14 6 -1.1312089990100001e-14
		 12 -1.2142947780499999e-14 18 2.4035861721199998e-14 24 3.0603520777800003e-14;
createNode animCurveTA -n "leftFinger3_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -4.8795080133300006e-14 6 3.0569871157300001e-14
		 12 -7.5187269165800007e-14 18 -2.0193054047799997e-14 24 -4.8795080133300006e-14;
createNode animCurveTA -n "leftFinger3_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 5.2411737064200003e-14 6 3.8097364349500001e-14
		 12 2.8426306298000002e-14 18 4.7812939470000003e-14 24 5.2411737064200003e-14;
createNode animCurveTU -n "leftFinger3_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftFinger3_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftFinger3_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "leftFinger4_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 4.1067347300600005e-09 6 2.06216679288e-08
		 12 1.30748059046e-08 18 -1.0815650597399999e-09 24 4.1067347300600005e-09;
createNode animCurveTL -n "leftFinger4_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -5.2702282538099999e-09 6 9.3947327695100006e-10
		 12 -3.3535463295199997e-10 18 -5.6390918601299999e-09 24 -5.2702282538099999e-09;
createNode animCurveTL -n "leftFinger4_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -1.6151131376800002e-08 6 -1.5789032359299998e-08
		 12 -1.5050786200699998e-08 18 -1.5692848909199999e-08 24 -1.6151131376800002e-08;
createNode animCurveTA -n "leftFinger4_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 3.9694813309699998e-14 6 -7.7650260777900005e-15
		 12 -4.6465916049500006e-15 18 2.8525599799400001e-14 24 3.9694813309699998e-14;
createNode animCurveTA -n "leftFinger4_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -5.2292150880800007e-14 6 3.1602924835199999e-14
		 12 -8.686878344969999e-14 18 -2.1942555911700003e-14 24 -5.2292150880800007e-14;
createNode animCurveTA -n "leftFinger4_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 6.487744516550001e-14 6 3.7122797387300001e-14
		 12 2.7975798303200005e-14 18 4.2011806689200004e-14 24 6.487744516550001e-14;
createNode animCurveTU -n "leftFinger4_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftFinger4_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftFinger4_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "leftLeg1_UpperLegControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.4912109258589723e-16;
createNode animCurveTA -n "leftLeg1_UpperLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.23726753445016979;
createNode animCurveTA -n "leftLeg1_UpperLegControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5190547324975668e-14;
createNode animCurveTU -n "leftLeg1_UpperLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "leftLeg1_LowerLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.47519710034934459;
createNode animCurveTU -n "leftLeg1_LowerLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "leftLeg1_FootControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0017027350590912949;
createNode animCurveTA -n "leftLeg1_FootControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.2379205950728441;
createNode animCurveTA -n "leftLeg1_FootControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0013933780798985806;
createNode animCurveTU -n "leftLeg1_FootControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "leftLeg1_ToeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.6318263852764371e-09;
createNode animCurveTA -n "leftLeg1_ToeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3817433983889119e-06;
createNode animCurveTA -n "leftLeg1_ToeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.6998829960029677e-09;
createNode animCurveTA -n "leftLeg1_LegIKKneeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.4584769796905882e-11 1 11.2049617244
		 6 14.426032686199999 12 -2.4145010943999998 18 2.7078790098500001 24 11.2049617244;
createNode animCurveTA -n "leftLeg1_LegIKKneeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.23726755064303856 1 3.2033757944399999
		 6 3.5372451587399998 12 2.5927639541900001 18 1.53327088968 24 3.2033757944399999;
createNode animCurveTA -n "leftLeg1_LegIKKneeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.7470516219490841e-12 1 -5.1963130384799996
		 6 -6.9302962181499996 12 0.95851568083700001 18 -3.0379831992400002 24 -5.1963130384799996;
createNode animCurveTL -n "leftThumb1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -3.0277276241700003e-09 6 7.5636807927999994e-10
		 12 -8.901384074279999e-10 18 -4.2746188810799999e-09 24 -3.0277276241700003e-09;
createNode animCurveTL -n "leftThumb1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -1.2079149846999999e-08 6 -1.04227491082e-08
		 12 -1.02973660709e-08 18 -1.21345494208e-08 24 -1.2079149846999999e-08;
createNode animCurveTL -n "leftThumb1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.22166021743e-08 6 1.2793897385999999e-08
		 12 1.0483085177700001e-08 18 1.0182828802399999e-08 24 1.22166021743e-08;
createNode animCurveTA -n "leftThumb1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 6.1523854619599993e-14 6 2.8823776800799999e-14
		 12 -4.1744780194200006e-15 18 6.4605016967199993e-14 24 6.1523854619599993e-14;
createNode animCurveTA -n "leftThumb1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 8.4682268393999994e-14 6 4.2539918864599999e-14
		 12 7.9911436371800006e-14 18 5.1684013573800002e-14 24 8.4682268393999994e-14;
createNode animCurveTA -n "leftThumb1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 6.6791648310699991e-14 6 -1.5902773407299999e-14
		 12 9.2236085762399997e-14 18 3.49861014961e-14 24 6.6791648310699991e-14;
createNode animCurveTU -n "leftThumb1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftThumb1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftThumb1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "rightArm1_ClavicalControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -3.9756933518300002e-15 6 -1.59027734073e-15
		 12 -1.7493050748000002e-14 18 -1.5107634737000001e-14 24 -3.9756933518300002e-15;
createNode animCurveTA -n "rightArm1_ClavicalControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -7.156248033290001e-15 6 1.9083328088799999e-14
		 12 -3.1010408144300003e-14 18 -6.3611093629299997e-15 24 -7.156248033290001e-15;
createNode animCurveTA -n "rightArm1_ClavicalControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 6.3611093629299997e-15 6 4.4527765540499995e-14
		 12 1.9083328088799999e-14 18 1.9083328088799999e-14 24 6.3611093629299997e-15;
createNode animCurveTU -n "rightArm1_ClavicalControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "rightArm1_UpperArmControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.3406894608895573e-14;
createNode animCurveTA -n "rightArm1_UpperArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.9083328088781088e-14;
createNode animCurveTA -n "rightArm1_UpperArmControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.9298597562684502e-14;
createNode animCurveTU -n "rightArm1_UpperArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "rightArm1_LowerArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5902773407317581e-14;
createNode animCurveTU -n "rightArm1_LowerArmControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "rightArm1_HandControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4287649825237618e-14;
createNode animCurveTA -n "rightArm1_HandControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.0089563599752691e-06;
createNode animCurveTA -n "rightArm1_HandControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.2142350153924658e-14;
createNode animCurveTU -n "rightArm1_HandControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "rightArm1_HandControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "rightArm1_HandControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "rightArm1_ArmIKElbowControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.3406894608895573e-14 1 0;
createNode animCurveTA -n "rightArm1_ArmIKElbowControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.9083328088781088e-14 1 50;
createNode animCurveTA -n "rightArm1_ArmIKElbowControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.9298597562684502e-14 1 0;
createNode animCurveTA -n "head1_neckControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "head1_neckControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -9.5416640443899997e-15 6 -1.2722218725899999e-14
		 12 9.7124036882699992e-05 18 0 24 -9.5416640443899997e-15;
createNode animCurveTA -n "head1_neckControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "rightFinger1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 3.2748997402799998e-09 6 2.5585697727099998e-08
		 12 1.3644183860500001e-06 18 -3.4037134222200001e-09 24 3.2748997402799998e-09;
createNode animCurveTL -n "rightFinger1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -3.9244718585999998e-10 6 2.3687114492100002e-09
		 12 2.5532163272500001e-06 18 -1.8339507690300002e-10 24 -3.9244718585999998e-10;
createNode animCurveTL -n "rightFinger1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 8.2742263041200009e-09 6 1.4832946815300002e-08
		 12 -2.87439945734e-08 18 4.82794515477e-09 24 8.2742263041200009e-09;
createNode animCurveTA -n "rightFinger1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -7.6855581211899995e-08 6 -7.6855533866200003e-08
		 12 -7.6855555782199997e-08 18 -7.6855565608900004e-08 24 -7.6855581211899995e-08;
createNode animCurveTA -n "rightFinger1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 9.8212938885999991e-08 6 9.8212886239700005e-08
		 12 9.8212936411e-08 18 9.8212895495299998e-08 24 9.8212938885999991e-08;
createNode animCurveTA -n "rightFinger1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -1.23811506913e-09 6 -1.2380656880600002e-09
		 12 -1.2380856292500001e-09 18 -1.23809383814e-09 24 -1.23811506913e-09;
createNode animCurveTU -n "rightFinger1_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightFinger1_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightFinger1_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "rightFinger2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 2.3344909339000003e-09 6 2.52799294692e-08
		 12 1.1043115590599999e-06 18 -4.1894790275799999e-09 24 2.3344909339000003e-09;
createNode animCurveTL -n "rightFinger2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 3.0162494724100003e-10 6 8.0388742329499999e-09
		 12 2.6737297575999998e-06 18 -1.05503339398e-09 24 3.0162494724100003e-10;
createNode animCurveTL -n "rightFinger2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 7.6479091948299996e-09 6 1.0870942812599999e-08
		 12 1.2585509390200002e-07 18 5.9220945924899995e-09 24 7.6479091948299996e-09;
createNode animCurveTA -n "rightFinger2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 2.8522661301899997e-07 6 2.8522666547300003e-07
		 12 2.85226636811e-07 18 2.8522663960599999e-07 24 2.8522661301899997e-07;
createNode animCurveTA -n "rightFinger2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.20460176068e-07 6 1.20460129412e-07
		 12 1.2046017785000001e-07 18 1.20460141712e-07 24 1.20460176068e-07;
createNode animCurveTA -n "rightFinger2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -4.2532357041000001e-09 6 -4.25318716488e-09
		 12 -4.2532050419000002e-09 18 -4.2532193903199997e-09 24 -4.2532357041000001e-09;
createNode animCurveTU -n "rightFinger2_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightFinger2_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightFinger2_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "rightFinger3_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.7943097979600001e-09 6 2.56099169579e-08
		 12 1.1037585557900001e-06 18 -4.9873800263299999e-09 24 1.7943097979600001e-09;
createNode animCurveTL -n "rightFinger3_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 5.0888293579000003e-10 6 9.2459710998600009e-09
		 12 2.6694750701099999e-06 18 -7.7471784543099998e-10 24 5.0888293579000003e-10;
createNode animCurveTL -n "rightFinger3_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 6.5020422379499996e-09 6 3.6726898189299998e-09
		 12 2.0232677910799998e-07 18 7.7427253497599997e-09 24 6.5020422379499996e-09;
createNode animCurveTA -n "rightFinger3_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 6.1353190181400001e-08 6 6.1353238277899992e-08
		 12 6.1353207697699996e-08 18 6.1353206373000011e-08 24 6.1353190181400001e-08;
createNode animCurveTA -n "rightFinger3_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.1958284139099999e-07 6 1.1958278789600002e-07
		 12 1.1958283867299998e-07 18 1.1958280129600002e-07 24 1.1958284139099999e-07;
createNode animCurveTA -n "rightFinger3_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.17727319816e-09 6 1.177325721e-09
		 12 1.1772983913000001e-09 18 1.1772918507400001e-09 24 1.17727319816e-09;
createNode animCurveTU -n "rightFinger3_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightFinger3_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightFinger3_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "rightFinger4_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 9.7260379611199997e-10 6 2.5688942265099998e-08
		 12 9.928276016250001e-07 18 -6.7656784064100005e-09 24 9.7260379611199997e-10;
createNode animCurveTL -n "rightFinger4_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 3.2504399172200003e-10 6 8.030724307770001e-09
		 12 2.6945802074099998e-06 18 2.3803270465800001e-10 24 3.2504399172200003e-10;
createNode animCurveTL -n "rightFinger4_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 5.5870809090299999e-09 6 7.592726447569999e-11
		 12 3.71327371074e-07 18 8.6981787328400003e-09 24 5.5870809090299999e-09;
createNode animCurveTA -n "rightFinger4_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 4.3908422514299993e-07 6 4.3908425697300005e-07
		 12 4.3908423643600004e-07 18 4.3908423366499994e-07 24 4.3908422514299993e-07;
createNode animCurveTA -n "rightFinger4_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.2506726886399998e-07 6 1.25067209261e-07
		 12 1.25067266789e-07 18 1.2506722852300001e-07 24 1.2506726886399998e-07;
createNode animCurveTA -n "rightFinger4_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 8.5583632334300011e-09 6 8.5584123446299992e-09
		 12 8.5583865202099997e-09 18 8.558387639819999e-09 24 8.5583632334300011e-09;
createNode animCurveTU -n "rightFinger4_Control_MiddleJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightFinger4_Control_EndJoint";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightFinger4_Control_SideToSide";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTA -n "rightLeg1_UpperLegControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.5015877313483974e-16;
createNode animCurveTA -n "rightLeg1_UpperLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.23726753445016979;
createNode animCurveTA -n "rightLeg1_UpperLegControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4811576601037296e-14;
createNode animCurveTU -n "rightLeg1_UpperLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "rightLeg1_LowerLegControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.47519710034934715;
createNode animCurveTU -n "rightLeg1_LowerLegControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "rightLeg1_FootControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0017027350602490004;
createNode animCurveTA -n "rightLeg1_FootControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.23792059507285354;
createNode animCurveTA -n "rightLeg1_FootControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0013933780798898519;
createNode animCurveTU -n "rightLeg1_FootControl_stretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "rightLeg1_ToeControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.2454099814293456e-09;
createNode animCurveTA -n "rightLeg1_ToeControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3817434874441143e-06;
createNode animCurveTA -n "rightLeg1_ToeControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.7007322717914328e-09;
createNode animCurveTL -n "rightArm1_ArmIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.5779889051568148e-09 1 0.66857225409099996
		 6 0.61295654585899995 12 0.63716947993600004 18 0.56949441841199999 24 0.66857225409099996;
createNode animCurveTL -n "rightArm1_ArmIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.7640460727224081e-09 1 -0.40600104674499998
		 6 -0.249528363793 12 -0.41901512488600001 18 -0.25813074454500001 24 -0.40600104674499998;
createNode animCurveTL -n "rightArm1_ArmIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5453038031419961e-08 1 -0.20987320642400001
		 6 -0.15826230447199999 12 -0.24295633237299999 18 -0.215787790226 24 -0.20987320642400001;
createNode animCurveTA -n "rightArm1_ArmIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.5783947342856323e-15 1 192.32756839499999
		 6 194.241003178 12 186.83352454499999 18 192.32759529500001 24 192.32756839499999;
createNode animCurveTA -n "rightArm1_ArmIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.4649298781342251e-14 1 22.077374813300001
		 6 22.680591689900005 12 20.0516094241 18 22.077376278500001 24 22.077374813300001;
createNode animCurveTA -n "rightArm1_ArmIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.1684013573782148e-14 1 -32.829224553899998
		 6 -31.408063311100001 12 -36.8493395331 18 -32.829288495500002 24 -32.829224553899998;
createNode animCurveTU -n "rightArm1_ArmIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightArm1_ArmIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightArm1_ArmIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightArm1_ArmIKControl_AutoStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightArm1_ArmIKControl_AntiIKPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightArm1_ArmIKControl_LowerArmStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightArm1_ArmIKControl_UpperArmStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTL -n "head1_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 6.3695335894600001e-08;
createNode animCurveTL -n "head1_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 -3.51943629795e-09;
createNode animCurveTL -n "head1_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1.5874905480399998e-08;
createNode animCurveTA -n "head1_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 51.975323808900001;
createNode animCurveTA -n "head1_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 -0.036750836333599997;
createNode animCurveTA -n "head1_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 0.55126203942200003;
createNode animCurveTU -n "head1_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTU -n "head1_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTU -n "head1_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 1;
createNode animCurveTL -n "leftLeg1_LegIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.6961766153021927e-13 1 0.19441049340700001
		 6 0.053222765536100003 12 0.0668233774172 18 0.037058559532599997 24 0.19441049340700001;
createNode animCurveTL -n "leftLeg1_LegIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.1004887034201521e-09 1 0.14453891304800001
		 6 0.14414596837999999 12 0.14462072660299999 18 0.50832162582100004 24 0.14453891304800001;
createNode animCurveTL -n "leftLeg1_LegIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.804142057444281e-10 1 0.62127852110899995
		 6 0.121482311971 12 -0.24587619848200001 18 -0.030514426873900002 24 0.62127852110899995;
createNode animCurveTA -n "leftLeg1_LegIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0.0091779340613199999 6 0.0092027790257099996
		 12 -0.0038993236770299999 18 73.355757962599995 24 0.0091779340613199999;
createNode animCurveTA -n "leftLeg1_LegIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -33.291445636900008 6 -33.291424112500003
		 12 -11.065833638300001 18 -24.403830489200001 24 -33.291445636900008;
createNode animCurveTA -n "leftLeg1_LegIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -0.10314932555 6 -0.10316007078099999
		 12 -0.032157449891700003 18 11.8791618425 24 -0.10314932555;
createNode animCurveTU -n "leftLeg1_LegIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftLeg1_LegIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftLeg1_LegIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftLeg1_LegIKControl_AutoStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_FootStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftLeg1_LegIKControl_HeelRaise";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_HeelSwivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftLeg1_LegIKControl_ToeRaise";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.4075898206999999e-06 6 1.4075898206999999e-06
		 12 1.4075898206999999e-06 18 1.4075898206999999e-06 24 1.4075898206999999e-06;
createNode animCurveTU -n "leftLeg1_LegIKControl_ToeSwivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 7.3698136482399997e-09 6 7.3698136482399997e-09
		 12 7.3698136482399997e-09 18 7.3698136482399997e-09 24 7.3698136482399997e-09;
createNode animCurveTU -n "leftLeg1_LegIKControl_UpperLegStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftLeg1_LegIKControl_LowerLegStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftLeg1_LegIKControl_AntiIKPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "rightLeg1_LegIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6970092825706615e-13 1 0.0160655633892
		 6 0.18719812992900001 12 0.0531995009463 18 0.084574053753599998 24 0.0160655633892;
createNode animCurveTL -n "rightLeg1_LegIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.1004891650734372e-09 1 0.244822363692
		 6 0.46980400841100001 12 0.13559141596099999 18 0.142634437502 24 0.244822363692;
createNode animCurveTL -n "rightLeg1_LegIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.8041424737779153e-10 1 -0.42392029868199999
		 6 0.045820354113599998 12 0.44757254558499998 18 -0.111355637911 24 -0.42392029868199999;
createNode animCurveTA -n "rightLeg1_LegIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 28.002018895100004 6 71.382495469399998
		 12 -18.623670492399999 18 0.123878309433 24 28.002018895100004;
createNode animCurveTA -n "rightLeg1_LegIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -60.442241476599996 6 -60.143995035899998
		 12 -12.7179289426 18 -48.094003927999999 24 -60.442241476599996;
createNode animCurveTA -n "rightLeg1_LegIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -0.811584816908 6 -1.23692234744 12 0.128352087448
		 18 -0.20512327753599999 24 -0.811584816908;
createNode animCurveTU -n "rightLeg1_LegIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_AutoStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightLeg1_LegIKControl_FootStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_HeelRaise";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightLeg1_LegIKControl_HeelSwivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "rightLeg1_LegIKControl_ToeRaise";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 1.4075885701499999e-06 6 1.4075885701499999e-06
		 12 1.4075885701499999e-06 18 1.4075885701499999e-06 24 1.4075885701499999e-06;
createNode animCurveTU -n "rightLeg1_LegIKControl_ToeSwivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 -7.3706547532000006e-09 6 -7.3706547532000006e-09
		 12 -7.3706547532000006e-09 18 -7.3706547532000006e-09 24 -7.3706547532000006e-09;
createNode animCurveTU -n "rightLeg1_LegIKControl_UpperLegStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_LowerLegStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "rightLeg1_LegIKControl_AntiIKPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTL -n "leftArm1_ArmIKControl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.1192910193998955e-09 1 -0.67155131254699996
		 6 -0.71898412995700001 12 -0.73707546623999998 18 -0.77080981735499998 24 -0.67155131254699996;
createNode animCurveTL -n "leftArm1_ArmIKControl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.2808417638772198e-09 1 -0.0109433587847
		 6 0.10234802432700001 12 0.036784105836000003 18 0.135607534999 24 -0.0109433587847;
createNode animCurveTL -n "leftArm1_ArmIKControl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7967188101902787e-08 1 0.73378759122799997
		 6 0.79443639045500003 12 0.66309993881200002 18 0.72748857236800002 24 0.73378759122799997;
createNode animCurveTA -n "leftArm1_ArmIKControl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.180554681463516e-15 1 -11.0771298032
		 6 -10.0674976663 12 -13.3785330279 18 -11.077106284699999 24 -11.0771298032;
createNode animCurveTA -n "leftArm1_ArmIKControl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2363275104040347e-15 1 -125.319038972
		 6 -123.651712249 12 -130.32154523 18 -125.319013895 24 -125.319038972;
createNode animCurveTA -n "leftArm1_ArmIKControl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8884543421189626e-15 1 -87.933013610100005
		 6 -89.6966838126 12 -83.365031314700005 18 -87.932974188499998 24 -87.933013610100005;
createNode animCurveTU -n "leftArm1_ArmIKControl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftArm1_ArmIKControl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftArm1_ArmIKControl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftArm1_ArmIKControl_AutoStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftArm1_ArmIKControl_AntiIKPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 6 0 12 0 18 0 24 0;
createNode animCurveTU -n "leftArm1_ArmIKControl_LowerArmStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "leftArm1_ArmIKControl_UpperArmStretch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 1 1 6 1 12 1 18 1 24 1;
createNode animCurveTU -n "locator1_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTL -n "locator1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 1 0.050456241103499999 2 0.044572999046890036
		 3 0.030543731133302065 4 0.013799118192294818 5 -0.00023014729358789704 6 -0.0061133903212799998
		 7 0.00074767282199801957 8 0.017900346322583784 9 0.040198806599010005 10 0.062497266875436233
		 11 0.079649940376021994 12 0.086511003519299995 13 0.07720679744830479 14 0.053946324695686776
		 15 0.023707668690649997 16 -0.0065309873143867825 17 -0.029791460067004782 18 -0.039095666138000001
		 19 -0.032462185596728921 20 -0.015878514490575792 21 0.0056802874827500058 22 0.02723908945607581
		 23 0.043822760562228946 24 0.050456241103499999;
createNode animCurveTL -n "locator1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1.1869650139527508 1 1.1304289185571508
		 2 1.1434349525993657 3 1.1744493379188468 4 1.2114665137954994 5 1.2424808937480727
		 6 1.2554869299370508 7 1.2481268910366383 8 1.2297267770056124 9 1.2058066451504508
		 10 1.1818865132952894 11 1.1634863992642632 12 1.1561263603638507 13 1.1647766934243051
		 14 1.1864024866320693 15 1.2145160563174509 16 1.2426296260028322 17 1.2642554192105966
		 18 1.2729057522710507 19 1.2623519033008181 20 1.2359673289981681 21 1.2016673354141008
		 22 1.1673673418300334 23 1.1409827675273834 24 1.1304289185571508;
createNode animCurveTL -n "locator1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 1 0.0023458030527399999 2 0.011837199626922276
		 3 0.024293352480802197 4 0.036799438717333585 5 0.046440626542319834 6 0.050302096563500001
		 7 0.042569542111659461 8 0.023238138352773056 9 -0.0018926693193000027 10 -0.027023476991373058
		 11 -0.046354880750259467 12 -0.0540874352021 13 -0.050739500967177179 14 -0.042248861815015172
		 15 -0.030945213935199133 16 -0.019158289609553063 17 -0.0092178238852286612 18 -0.0034535088038199998
		 19 -0.0010102792503370434 20 0.00062748779749873277 21 0.0016208890566991271 22 0.0021310138700694893
		 23 0.0023189543457428643 24 0.0023458030527399999;
createNode animCurveTA -n "locator1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 1 20.000000969800006 2 19.559082278231237
		 3 18.444681311133692 4 16.969330187994295 5 15.445562138125483 6 14.185908543100002
		 7 13.071978485299651 8 11.864922273178703 9 10.696589144842815 10 9.6988256873367487
		 11 9.0034789757092479 12 8.7423975160600005 13 10.53902318074813 14 15.030579150301417
		 15 20.869609910130002 16 26.70864066995858 17 31.200196639511894 18 32.996822304200009
		 19 32.034093937202506 20 29.627277409511183 21 26.498411636999986 22 23.369545864488821
		 23 20.962729336797477 24 20.000000969800006;
createNode animCurveTA -n "locator1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 1 -59.999998950200009 2 -58.517885762235942
		 3 -54.983616257066046 4 -50.765293871479777 5 -47.231024977900191 6 -45.748911545300004
		 7 -45.754575854666257 8 -45.794226069440121 9 -45.901848010245544 10 -46.111427546323647
		 11 -46.456950838618738 12 -46.972403270200012 13 -49.22880301195071 14 -53.926685383413428
		 15 -59.794340316204455 16 -65.560037507871201 17 -69.952047239367417 18 -71.698658567199999
		 19 -70.832090413391199 20 -68.665673980204886 21 -65.849328758699997 22 -63.032983537195122
		 23 -60.866567104008801 24 -59.999998950200009;
createNode animCurveTA -n "locator1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 1 -15.000005299800009 2 -14.590700644878851
		 3 -13.482796556136373 4 -11.856307285466965 5 -9.8912483906623159 6 -7.767633087490001
		 7 -5.0691914736308945 8 -1.6267029564212665 9 2.0092313391797196 10 5.288017802714406
		 11 7.6590618019165699 12 8.5717637445400037 13 5.7769672408848916 14 -1.2100112746746068
		 15 -10.29309578863 16 -19.376180302585389 17 -26.363158818144903 18 -29.157955321800003
		 19 -28.109217345489157 20 -25.48737718669695 21 -22.078980310799984 22 -18.670583434903058
		 23 -16.04874327611082 24 -15.000005299800009;
createNode animCurveTU -n "locator1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTU -n "locator1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTU -n "locator1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode pairBlend -n "pairBlend1";
createNode animCurveTU -n "TSMG_upper_body_blendParent1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode pairBlend -n "pairBlend2";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 23;
	setAttr ".unw" 23;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
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
	setAttr -s 3 ".s";
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
	setAttr -s 467 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
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
	setAttr -cb on ".hwcc";
	setAttr -cb on ".hwdp";
	setAttr -cb on ".hwql";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
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
	setAttr -s 4 ".sol";
connectAttr "TSMG_root_visibility.o" "Psylocke_TSMG_2015RN.phl[1]";
connectAttr "TSMG_root_translateX.o" "Psylocke_TSMG_2015RN.phl[2]";
connectAttr "TSMG_root_translateY.o" "Psylocke_TSMG_2015RN.phl[3]";
connectAttr "TSMG_root_translateZ.o" "Psylocke_TSMG_2015RN.phl[4]";
connectAttr "TSMG_root_rotateX.o" "Psylocke_TSMG_2015RN.phl[5]";
connectAttr "TSMG_root_rotateY.o" "Psylocke_TSMG_2015RN.phl[6]";
connectAttr "TSMG_root_rotateZ.o" "Psylocke_TSMG_2015RN.phl[7]";
connectAttr "Psylocke_TSMG_2015RN.phl[8]" "locator1_parentConstraint1.tg[0].ts";
connectAttr "TSMG_upper_body_head1_controlSize.o" "Psylocke_TSMG_2015RN.phl[9]";
connectAttr "TSMG_upper_body_head1_RotationIsolationSwitch.o" "Psylocke_TSMG_2015RN.phl[10]"
		;
connectAttr "TSMG_upper_body_leftArm1_controlSize.o" "Psylocke_TSMG_2015RN.phl[11]"
		;
connectAttr "TSMG_upper_body_leftArm1_FKIKSwitch.o" "Psylocke_TSMG_2015RN.phl[12]"
		;
connectAttr "TSMG_upper_body_leftArm1_RotationIsolationSwitch.o" "Psylocke_TSMG_2015RN.phl[13]"
		;
connectAttr "TSMG_upper_body_leftLeg1_ControlSize.o" "Psylocke_TSMG_2015RN.phl[14]"
		;
connectAttr "TSMG_upper_body_leftLeg1_FKIKSwitch.o" "Psylocke_TSMG_2015RN.phl[15]"
		;
connectAttr "TSMG_upper_body_leftLeg1_RotationIsolationSwitch.o" "Psylocke_TSMG_2015RN.phl[16]"
		;
connectAttr "TSMG_upper_body_rightArm1_controlSize.o" "Psylocke_TSMG_2015RN.phl[17]"
		;
connectAttr "TSMG_upper_body_rightArm1_FKIKSwitch.o" "Psylocke_TSMG_2015RN.phl[18]"
		;
connectAttr "TSMG_upper_body_rightArm1_RotationIsolationSwitch.o" "Psylocke_TSMG_2015RN.phl[19]"
		;
connectAttr "TSMG_upper_body_rightLeg1_ControlSize.o" "Psylocke_TSMG_2015RN.phl[20]"
		;
connectAttr "TSMG_upper_body_rightLeg1_FKIKSwitch.o" "Psylocke_TSMG_2015RN.phl[21]"
		;
connectAttr "TSMG_upper_body_rightLeg1_RotationIsolationSwitch.o" "Psylocke_TSMG_2015RN.phl[22]"
		;
connectAttr "TSMG_upper_body_spine1_FKIKSwitch.o" "Psylocke_TSMG_2015RN.phl[23]"
		;
connectAttr "TSMG_upper_body_spine1_ControlSize.o" "Psylocke_TSMG_2015RN.phl[24]"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[25]" "locator1_parentConstraint1.tg[0].tt"
		;
connectAttr "TSMG_upper_body_translateX.o" "Psylocke_TSMG_2015RN.phl[26]";
connectAttr "pairBlend1.oty" "Psylocke_TSMG_2015RN.phl[27]";
connectAttr "TSMG_upper_body_translateZ.o" "Psylocke_TSMG_2015RN.phl[28]";
connectAttr "Psylocke_TSMG_2015RN.phl[29]" "locator1_parentConstraint1.tg[0].trp"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[30]" "TSMG_upper_body_parentConstraint1.crp"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[31]" "locator1_parentConstraint1.tg[0].trt"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[32]" "TSMG_upper_body_parentConstraint1.crt"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[33]" "locator1_parentConstraint1.tg[0].tr"
		;
connectAttr "TSMG_upper_body_rotateX.o" "Psylocke_TSMG_2015RN.phl[34]";
connectAttr "TSMG_upper_body_rotateY.o" "Psylocke_TSMG_2015RN.phl[35]";
connectAttr "TSMG_upper_body_rotateZ.o" "Psylocke_TSMG_2015RN.phl[36]";
connectAttr "Psylocke_TSMG_2015RN.phl[37]" "locator1_parentConstraint1.tg[0].tro"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[38]" "pairBlend1.ro";
connectAttr "Psylocke_TSMG_2015RN.phl[39]" "TSMG_upper_body_parentConstraint1.cro"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[40]" "locator1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[41]" "pairBlend1.w";
connectAttr "TSMG_upper_body_blendParent1.o" "Psylocke_TSMG_2015RN.phl[42]";
connectAttr "TSMG_upper_body_visibility.o" "Psylocke_TSMG_2015RN.phl[43]";
connectAttr "Psylocke_TSMG_2015RN.phl[44]" "TSMG_upper_body_parentConstraint1.cpim"
		;
connectAttr "leftArm1_ArmIKControl_AutoStretch.o" "Psylocke_TSMG_2015RN.phl[45]"
		;
connectAttr "leftArm1_ArmIKControl_AntiIKPop.o" "Psylocke_TSMG_2015RN.phl[46]";
connectAttr "leftArm1_ArmIKControl_LowerArmStretch.o" "Psylocke_TSMG_2015RN.phl[47]"
		;
connectAttr "leftArm1_ArmIKControl_UpperArmStretch.o" "Psylocke_TSMG_2015RN.phl[48]"
		;
connectAttr "leftArm1_ArmIKControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[49]";
connectAttr "leftArm1_ArmIKControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[50]";
connectAttr "leftArm1_ArmIKControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[51]";
connectAttr "leftArm1_ArmIKControl_translateX.o" "Psylocke_TSMG_2015RN.phl[52]";
connectAttr "leftArm1_ArmIKControl_translateY.o" "Psylocke_TSMG_2015RN.phl[53]";
connectAttr "leftArm1_ArmIKControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[54]";
connectAttr "leftArm1_ArmIKControl_scaleX.o" "Psylocke_TSMG_2015RN.phl[55]";
connectAttr "leftArm1_ArmIKControl_scaleY.o" "Psylocke_TSMG_2015RN.phl[56]";
connectAttr "leftArm1_ArmIKControl_scaleZ.o" "Psylocke_TSMG_2015RN.phl[57]";
connectAttr "leftLeg1_LegIKControl_AutoStretch.o" "Psylocke_TSMG_2015RN.phl[58]"
		;
connectAttr "leftLeg1_LegIKControl_FootStretch.o" "Psylocke_TSMG_2015RN.phl[59]"
		;
connectAttr "leftLeg1_LegIKControl_HeelRaise.o" "Psylocke_TSMG_2015RN.phl[60]";
connectAttr "leftLeg1_LegIKControl_HeelSwivel.o" "Psylocke_TSMG_2015RN.phl[61]";
connectAttr "leftLeg1_LegIKControl_ToeRaise.o" "Psylocke_TSMG_2015RN.phl[62]";
connectAttr "leftLeg1_LegIKControl_ToeSwivel.o" "Psylocke_TSMG_2015RN.phl[63]";
connectAttr "leftLeg1_LegIKControl_UpperLegStretch.o" "Psylocke_TSMG_2015RN.phl[64]"
		;
connectAttr "leftLeg1_LegIKControl_LowerLegStretch.o" "Psylocke_TSMG_2015RN.phl[65]"
		;
connectAttr "leftLeg1_LegIKControl_AntiIKPop.o" "Psylocke_TSMG_2015RN.phl[66]";
connectAttr "leftLeg1_LegIKControl_translateX.o" "Psylocke_TSMG_2015RN.phl[67]";
connectAttr "leftLeg1_LegIKControl_translateY.o" "Psylocke_TSMG_2015RN.phl[68]";
connectAttr "leftLeg1_LegIKControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[69]";
connectAttr "leftLeg1_LegIKControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[70]";
connectAttr "leftLeg1_LegIKControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[71]";
connectAttr "leftLeg1_LegIKControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[72]";
connectAttr "leftLeg1_LegIKControl_scaleX.o" "Psylocke_TSMG_2015RN.phl[73]";
connectAttr "leftLeg1_LegIKControl_scaleY.o" "Psylocke_TSMG_2015RN.phl[74]";
connectAttr "leftLeg1_LegIKControl_scaleZ.o" "Psylocke_TSMG_2015RN.phl[75]";
connectAttr "leftLeg1_IKHeelControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[76]";
connectAttr "leftLeg1_IKHeelControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[77]";
connectAttr "leftLeg1_IKHeelControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[78]";
connectAttr "rightArm1_ArmIKControl_AutoStretch.o" "Psylocke_TSMG_2015RN.phl[79]"
		;
connectAttr "rightArm1_ArmIKControl_AntiIKPop.o" "Psylocke_TSMG_2015RN.phl[80]";
connectAttr "rightArm1_ArmIKControl_LowerArmStretch.o" "Psylocke_TSMG_2015RN.phl[81]"
		;
connectAttr "rightArm1_ArmIKControl_UpperArmStretch.o" "Psylocke_TSMG_2015RN.phl[82]"
		;
connectAttr "rightArm1_ArmIKControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[83]";
connectAttr "rightArm1_ArmIKControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[84]";
connectAttr "rightArm1_ArmIKControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[85]";
connectAttr "rightArm1_ArmIKControl_translateX.o" "Psylocke_TSMG_2015RN.phl[86]"
		;
connectAttr "rightArm1_ArmIKControl_translateY.o" "Psylocke_TSMG_2015RN.phl[87]"
		;
connectAttr "rightArm1_ArmIKControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[88]"
		;
connectAttr "rightArm1_ArmIKControl_scaleX.o" "Psylocke_TSMG_2015RN.phl[89]";
connectAttr "rightArm1_ArmIKControl_scaleY.o" "Psylocke_TSMG_2015RN.phl[90]";
connectAttr "rightArm1_ArmIKControl_scaleZ.o" "Psylocke_TSMG_2015RN.phl[91]";
connectAttr "rightLeg1_LegIKControl_AutoStretch.o" "Psylocke_TSMG_2015RN.phl[92]"
		;
connectAttr "rightLeg1_LegIKControl_FootStretch.o" "Psylocke_TSMG_2015RN.phl[93]"
		;
connectAttr "rightLeg1_LegIKControl_HeelRaise.o" "Psylocke_TSMG_2015RN.phl[94]";
connectAttr "rightLeg1_LegIKControl_HeelSwivel.o" "Psylocke_TSMG_2015RN.phl[95]"
		;
connectAttr "rightLeg1_LegIKControl_ToeRaise.o" "Psylocke_TSMG_2015RN.phl[96]";
connectAttr "rightLeg1_LegIKControl_ToeSwivel.o" "Psylocke_TSMG_2015RN.phl[97]";
connectAttr "rightLeg1_LegIKControl_UpperLegStretch.o" "Psylocke_TSMG_2015RN.phl[98]"
		;
connectAttr "rightLeg1_LegIKControl_LowerLegStretch.o" "Psylocke_TSMG_2015RN.phl[99]"
		;
connectAttr "rightLeg1_LegIKControl_AntiIKPop.o" "Psylocke_TSMG_2015RN.phl[100]"
		;
connectAttr "rightLeg1_LegIKControl_translateX.o" "Psylocke_TSMG_2015RN.phl[101]"
		;
connectAttr "rightLeg1_LegIKControl_translateY.o" "Psylocke_TSMG_2015RN.phl[102]"
		;
connectAttr "rightLeg1_LegIKControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[103]"
		;
connectAttr "rightLeg1_LegIKControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[104]";
connectAttr "rightLeg1_LegIKControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[105]";
connectAttr "rightLeg1_LegIKControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[106]";
connectAttr "rightLeg1_LegIKControl_scaleX.o" "Psylocke_TSMG_2015RN.phl[107]";
connectAttr "rightLeg1_LegIKControl_scaleY.o" "Psylocke_TSMG_2015RN.phl[108]";
connectAttr "rightLeg1_LegIKControl_scaleZ.o" "Psylocke_TSMG_2015RN.phl[109]";
connectAttr "rightLeg1_IKHeelControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[110]";
connectAttr "rightLeg1_IKHeelControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[111]";
connectAttr "rightLeg1_IKHeelControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[112]";
connectAttr "head1_neckControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[113]";
connectAttr "head1_neckControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[114]";
connectAttr "head1_neckControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[115]";
connectAttr "head1_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[116]";
connectAttr "head1_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[117]";
connectAttr "head1_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[118]";
connectAttr "head1_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[119]";
connectAttr "head1_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[120]";
connectAttr "head1_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[121]";
connectAttr "head1_Control_scaleX.o" "Psylocke_TSMG_2015RN.phl[122]";
connectAttr "head1_Control_scaleY.o" "Psylocke_TSMG_2015RN.phl[123]";
connectAttr "head1_Control_scaleZ.o" "Psylocke_TSMG_2015RN.phl[124]";
connectAttr "leftArm1_ClavicalControl_stretch.o" "Psylocke_TSMG_2015RN.phl[125]"
		;
connectAttr "leftArm1_ClavicalControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[126]"
		;
connectAttr "leftArm1_ClavicalControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[127]"
		;
connectAttr "leftArm1_ClavicalControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[128]"
		;
connectAttr "leftArm1_UpperArmControl_stretch.o" "Psylocke_TSMG_2015RN.phl[129]"
		;
connectAttr "leftArm1_UpperArmControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[130]"
		;
connectAttr "leftArm1_UpperArmControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[131]"
		;
connectAttr "leftArm1_UpperArmControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[132]"
		;
connectAttr "leftArm1_LowerArmControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[133]"
		;
connectAttr "leftArm1_LowerArmControl_stretch.o" "Psylocke_TSMG_2015RN.phl[134]"
		;
connectAttr "leftArm1_HandControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[135]";
connectAttr "leftArm1_HandControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[136]";
connectAttr "leftArm1_HandControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[137]";
connectAttr "leftArm1_HandControl_scaleX.o" "Psylocke_TSMG_2015RN.phl[138]";
connectAttr "leftArm1_HandControl_scaleY.o" "Psylocke_TSMG_2015RN.phl[139]";
connectAttr "leftArm1_HandControl_scaleZ.o" "Psylocke_TSMG_2015RN.phl[140]";
connectAttr "leftArm1_ArmIKElbowControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[141]"
		;
connectAttr "leftArm1_ArmIKElbowControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[142]"
		;
connectAttr "leftArm1_ArmIKElbowControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[143]"
		;
connectAttr "leftFinger1_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[144]";
connectAttr "leftFinger1_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[145]";
connectAttr "leftFinger1_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[146]";
connectAttr "leftFinger1_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[147]";
connectAttr "leftFinger1_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[148]";
connectAttr "leftFinger1_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[149]";
connectAttr "leftFinger1_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[150]";
connectAttr "leftFinger1_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[151]";
connectAttr "leftFinger1_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[152]";
connectAttr "leftFinger2_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[153]";
connectAttr "leftFinger2_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[154]";
connectAttr "leftFinger2_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[155]";
connectAttr "leftFinger2_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[156]";
connectAttr "leftFinger2_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[157]";
connectAttr "leftFinger2_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[158]";
connectAttr "leftFinger2_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[159]";
connectAttr "leftFinger2_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[160]";
connectAttr "leftFinger2_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[161]";
connectAttr "leftFinger3_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[162]";
connectAttr "leftFinger3_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[163]";
connectAttr "leftFinger3_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[164]";
connectAttr "leftFinger3_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[165]";
connectAttr "leftFinger3_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[166]";
connectAttr "leftFinger3_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[167]";
connectAttr "leftFinger3_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[168]";
connectAttr "leftFinger3_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[169]";
connectAttr "leftFinger3_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[170]";
connectAttr "leftFinger4_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[171]";
connectAttr "leftFinger4_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[172]";
connectAttr "leftFinger4_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[173]";
connectAttr "leftFinger4_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[174]";
connectAttr "leftFinger4_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[175]";
connectAttr "leftFinger4_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[176]";
connectAttr "leftFinger4_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[177]";
connectAttr "leftFinger4_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[178]";
connectAttr "leftFinger4_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[179]";
connectAttr "leftLeg1_UpperLegControl_stretch.o" "Psylocke_TSMG_2015RN.phl[180]"
		;
connectAttr "leftLeg1_UpperLegControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[181]"
		;
connectAttr "leftLeg1_UpperLegControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[182]"
		;
connectAttr "leftLeg1_UpperLegControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[183]"
		;
connectAttr "leftLeg1_LowerLegControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[184]"
		;
connectAttr "leftLeg1_LowerLegControl_stretch.o" "Psylocke_TSMG_2015RN.phl[185]"
		;
connectAttr "leftLeg1_FootControl_stretch.o" "Psylocke_TSMG_2015RN.phl[186]";
connectAttr "leftLeg1_FootControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[187]";
connectAttr "leftLeg1_FootControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[188]";
connectAttr "leftLeg1_FootControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[189]";
connectAttr "leftLeg1_ToeControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[190]";
connectAttr "leftLeg1_ToeControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[191]";
connectAttr "leftLeg1_ToeControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[192]";
connectAttr "leftLeg1_LegIKKneeControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[193]"
		;
connectAttr "leftLeg1_LegIKKneeControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[194]"
		;
connectAttr "leftLeg1_LegIKKneeControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[195]"
		;
connectAttr "leftThumb1_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[196]";
connectAttr "leftThumb1_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[197]";
connectAttr "leftThumb1_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[198]";
connectAttr "leftThumb1_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[199]";
connectAttr "leftThumb1_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[200]";
connectAttr "leftThumb1_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[201]";
connectAttr "leftThumb1_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[202]";
connectAttr "leftThumb1_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[203]";
connectAttr "leftThumb1_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[204]";
connectAttr "rightArm1_ClavicalControl_stretch.o" "Psylocke_TSMG_2015RN.phl[205]"
		;
connectAttr "rightArm1_ClavicalControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[206]"
		;
connectAttr "rightArm1_ClavicalControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[207]"
		;
connectAttr "rightArm1_ClavicalControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[208]"
		;
connectAttr "rightArm1_UpperArmControl_stretch.o" "Psylocke_TSMG_2015RN.phl[209]"
		;
connectAttr "rightArm1_UpperArmControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[210]"
		;
connectAttr "rightArm1_UpperArmControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[211]"
		;
connectAttr "rightArm1_UpperArmControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[212]"
		;
connectAttr "rightArm1_LowerArmControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[213]"
		;
connectAttr "rightArm1_LowerArmControl_stretch.o" "Psylocke_TSMG_2015RN.phl[214]"
		;
connectAttr "rightArm1_HandControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[215]";
connectAttr "rightArm1_HandControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[216]";
connectAttr "rightArm1_HandControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[217]";
connectAttr "rightArm1_HandControl_scaleX.o" "Psylocke_TSMG_2015RN.phl[218]";
connectAttr "rightArm1_HandControl_scaleY.o" "Psylocke_TSMG_2015RN.phl[219]";
connectAttr "rightArm1_HandControl_scaleZ.o" "Psylocke_TSMG_2015RN.phl[220]";
connectAttr "rightArm1_ArmIKElbowControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[221]"
		;
connectAttr "rightArm1_ArmIKElbowControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[222]"
		;
connectAttr "rightArm1_ArmIKElbowControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[223]"
		;
connectAttr "rightFinger1_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[224]"
		;
connectAttr "rightFinger1_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[225]";
connectAttr "rightFinger1_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[226]";
connectAttr "rightFinger1_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[227]";
connectAttr "rightFinger1_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[228]";
connectAttr "rightFinger1_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[229]";
connectAttr "rightFinger1_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[230]";
connectAttr "rightFinger1_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[231]";
connectAttr "rightFinger1_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[232]";
connectAttr "rightFinger2_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[233]"
		;
connectAttr "rightFinger2_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[234]";
connectAttr "rightFinger2_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[235]";
connectAttr "rightFinger2_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[236]";
connectAttr "rightFinger2_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[237]";
connectAttr "rightFinger2_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[238]";
connectAttr "rightFinger2_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[239]";
connectAttr "rightFinger2_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[240]";
connectAttr "rightFinger2_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[241]";
connectAttr "rightFinger3_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[242]"
		;
connectAttr "rightFinger3_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[243]";
connectAttr "rightFinger3_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[244]";
connectAttr "rightFinger3_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[245]";
connectAttr "rightFinger3_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[246]";
connectAttr "rightFinger3_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[247]";
connectAttr "rightFinger3_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[248]";
connectAttr "rightFinger3_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[249]";
connectAttr "rightFinger3_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[250]";
connectAttr "rightFinger4_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[251]"
		;
connectAttr "rightFinger4_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[252]";
connectAttr "rightFinger4_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[253]";
connectAttr "rightFinger4_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[254]";
connectAttr "rightFinger4_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[255]";
connectAttr "rightFinger4_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[256]";
connectAttr "rightFinger4_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[257]";
connectAttr "rightFinger4_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[258]";
connectAttr "rightFinger4_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[259]";
connectAttr "rightLeg1_UpperLegControl_stretch.o" "Psylocke_TSMG_2015RN.phl[260]"
		;
connectAttr "rightLeg1_UpperLegControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[261]"
		;
connectAttr "rightLeg1_UpperLegControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[262]"
		;
connectAttr "rightLeg1_UpperLegControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[263]"
		;
connectAttr "rightLeg1_LowerLegControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[264]"
		;
connectAttr "rightLeg1_LowerLegControl_stretch.o" "Psylocke_TSMG_2015RN.phl[265]"
		;
connectAttr "rightLeg1_FootControl_stretch.o" "Psylocke_TSMG_2015RN.phl[266]";
connectAttr "rightLeg1_FootControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[267]";
connectAttr "rightLeg1_FootControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[268]";
connectAttr "rightLeg1_FootControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[269]";
connectAttr "rightLeg1_ToeControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[270]";
connectAttr "rightLeg1_ToeControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[271]";
connectAttr "rightLeg1_ToeControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[272]";
connectAttr "rightLeg1_LegIKKneeControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[273]"
		;
connectAttr "rightLeg1_LegIKKneeControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[274]"
		;
connectAttr "rightLeg1_LegIKKneeControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[275]"
		;
connectAttr "rightThumb1_Control_MiddleJoint.o" "Psylocke_TSMG_2015RN.phl[276]";
connectAttr "rightThumb1_Control_EndJoint.o" "Psylocke_TSMG_2015RN.phl[277]";
connectAttr "rightThumb1_Control_SideToSide.o" "Psylocke_TSMG_2015RN.phl[278]";
connectAttr "rightThumb1_Control_rotateX.o" "Psylocke_TSMG_2015RN.phl[279]";
connectAttr "rightThumb1_Control_rotateY.o" "Psylocke_TSMG_2015RN.phl[280]";
connectAttr "rightThumb1_Control_rotateZ.o" "Psylocke_TSMG_2015RN.phl[281]";
connectAttr "rightThumb1_Control_translateX.o" "Psylocke_TSMG_2015RN.phl[282]";
connectAttr "rightThumb1_Control_translateY.o" "Psylocke_TSMG_2015RN.phl[283]";
connectAttr "rightThumb1_Control_translateZ.o" "Psylocke_TSMG_2015RN.phl[284]";
connectAttr "spine1_lowerSpineControl_translateX.o" "Psylocke_TSMG_2015RN.phl[285]"
		;
connectAttr "spine1_lowerSpineControl_translateY.o" "Psylocke_TSMG_2015RN.phl[286]"
		;
connectAttr "spine1_lowerSpineControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[287]"
		;
connectAttr "spine1_lowerSpineControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[288]"
		;
connectAttr "spine1_lowerSpineControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[289]"
		;
connectAttr "spine1_lowerSpineControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[290]"
		;
connectAttr "spine1_middleSpineControl_translateX.o" "Psylocke_TSMG_2015RN.phl[291]"
		;
connectAttr "spine1_middleSpineControl_translateY.o" "Psylocke_TSMG_2015RN.phl[292]"
		;
connectAttr "spine1_middleSpineControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[293]"
		;
connectAttr "spine1_middleSpineControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[294]"
		;
connectAttr "spine1_middleSpineControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[295]"
		;
connectAttr "spine1_middleSpineControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[296]"
		;
connectAttr "spine1_torsoControl_translateX.o" "Psylocke_TSMG_2015RN.phl[297]";
connectAttr "spine1_torsoControl_translateY.o" "Psylocke_TSMG_2015RN.phl[298]";
connectAttr "spine1_torsoControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[299]";
connectAttr "spine1_torsoControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[300]";
connectAttr "spine1_torsoControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[301]";
connectAttr "spine1_torsoControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[302]";
connectAttr "spine1_hipsControl_translateX.o" "Psylocke_TSMG_2015RN.phl[303]";
connectAttr "spine1_hipsControl_translateY.o" "Psylocke_TSMG_2015RN.phl[304]";
connectAttr "spine1_hipsControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[305]";
connectAttr "spine1_hipsControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[306]";
connectAttr "spine1_hipsControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[307]";
connectAttr "spine1_hipsControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[308]";
connectAttr "pairBlend2.otx" "Psylocke_TSMG_2015RN.phl[309]";
connectAttr "pairBlend2.oty" "Psylocke_TSMG_2015RN.phl[310]";
connectAttr "pairBlend2.otz" "Psylocke_TSMG_2015RN.phl[311]";
connectAttr "Psylocke_TSMG_2015RN.phl[312]" "spine1_hipsIKControl_parentConstraint1.crp"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[313]" "spine1_hipsIKControl_parentConstraint1.crt"
		;
connectAttr "pairBlend2.orx" "Psylocke_TSMG_2015RN.phl[314]";
connectAttr "pairBlend2.ory" "Psylocke_TSMG_2015RN.phl[315]";
connectAttr "pairBlend2.orz" "Psylocke_TSMG_2015RN.phl[316]";
connectAttr "Psylocke_TSMG_2015RN.phl[317]" "pairBlend2.ro";
connectAttr "Psylocke_TSMG_2015RN.phl[318]" "spine1_hipsIKControl_parentConstraint1.cro"
		;
connectAttr "spine1_hipsIKControl_scaleX.o" "Psylocke_TSMG_2015RN.phl[319]";
connectAttr "spine1_hipsIKControl_scaleY.o" "Psylocke_TSMG_2015RN.phl[320]";
connectAttr "spine1_hipsIKControl_scaleZ.o" "Psylocke_TSMG_2015RN.phl[321]";
connectAttr "Psylocke_TSMG_2015RN.phl[322]" "spine1_hipsIKControl_parentConstraint1.cpim"
		;
connectAttr "Psylocke_TSMG_2015RN.phl[323]" "pairBlend2.w";
connectAttr "spine1_torsoIKControl_translateX.o" "Psylocke_TSMG_2015RN.phl[324]"
		;
connectAttr "spine1_torsoIKControl_translateY.o" "Psylocke_TSMG_2015RN.phl[325]"
		;
connectAttr "spine1_torsoIKControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[326]"
		;
connectAttr "spine1_torsoIKControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[327]";
connectAttr "spine1_torsoIKControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[328]";
connectAttr "spine1_torsoIKControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[329]";
connectAttr "spine1_torsoIKControl_scaleX.o" "Psylocke_TSMG_2015RN.phl[330]";
connectAttr "spine1_torsoIKControl_scaleY.o" "Psylocke_TSMG_2015RN.phl[331]";
connectAttr "spine1_torsoIKControl_scaleZ.o" "Psylocke_TSMG_2015RN.phl[332]";
connectAttr "spine1_middleSpineIKControl_translateX.o" "Psylocke_TSMG_2015RN.phl[333]"
		;
connectAttr "spine1_middleSpineIKControl_translateY.o" "Psylocke_TSMG_2015RN.phl[334]"
		;
connectAttr "spine1_middleSpineIKControl_translateZ.o" "Psylocke_TSMG_2015RN.phl[335]"
		;
connectAttr "spine1_middleSpineIKControl_rotateX.o" "Psylocke_TSMG_2015RN.phl[336]"
		;
connectAttr "spine1_middleSpineIKControl_rotateY.o" "Psylocke_TSMG_2015RN.phl[337]"
		;
connectAttr "spine1_middleSpineIKControl_rotateZ.o" "Psylocke_TSMG_2015RN.phl[338]"
		;
connectAttr "spine1_middleSpineIKControl_scaleX.o" "Psylocke_TSMG_2015RN.phl[339]"
		;
connectAttr "spine1_middleSpineIKControl_scaleY.o" "Psylocke_TSMG_2015RN.phl[340]"
		;
connectAttr "spine1_middleSpineIKControl_scaleZ.o" "Psylocke_TSMG_2015RN.phl[341]"
		;
connectAttr "locator1_translateX.o" "locator1.tx";
connectAttr "locator1_translateY.o" "locator1.ty";
connectAttr "locator1_translateZ.o" "locator1.tz";
connectAttr "locator1_rotateX.o" "locator1.rx";
connectAttr "locator1_rotateY.o" "locator1.ry";
connectAttr "locator1_rotateZ.o" "locator1.rz";
connectAttr "locator1_visibility.o" "locator1.v";
connectAttr "locator1_scaleX.o" "locator1.sx";
connectAttr "locator1_scaleY.o" "locator1.sy";
connectAttr "locator1_scaleZ.o" "locator1.sz";
connectAttr "locator1_parentConstraint1.w0" "locator1_parentConstraint1.tg[0].tw"
		;
connectAttr "locator1.ro" "locator1_parentConstraint1.cro";
connectAttr "locator1.pim" "locator1_parentConstraint1.cpim";
connectAttr "locator1.rp" "locator1_parentConstraint1.crp";
connectAttr "locator1.rpt" "locator1_parentConstraint1.crt";
connectAttr "locator1.t" "spine1_hipsIKControl_parentConstraint1.tg[0].tt";
connectAttr "locator1.rp" "spine1_hipsIKControl_parentConstraint1.tg[0].trp";
connectAttr "locator1.rpt" "spine1_hipsIKControl_parentConstraint1.tg[0].trt";
connectAttr "locator1.r" "spine1_hipsIKControl_parentConstraint1.tg[0].tr";
connectAttr "locator1.ro" "spine1_hipsIKControl_parentConstraint1.tg[0].tro";
connectAttr "locator1.s" "spine1_hipsIKControl_parentConstraint1.tg[0].ts";
connectAttr "locator1.pm" "spine1_hipsIKControl_parentConstraint1.tg[0].tpm";
connectAttr "spine1_hipsIKControl_parentConstraint1.w0" "spine1_hipsIKControl_parentConstraint1.tg[0].tw"
		;
connectAttr "locator1.t" "TSMG_upper_body_parentConstraint1.tg[0].tt";
connectAttr "locator1.rp" "TSMG_upper_body_parentConstraint1.tg[0].trp";
connectAttr "locator1.rpt" "TSMG_upper_body_parentConstraint1.tg[0].trt";
connectAttr "locator1.r" "TSMG_upper_body_parentConstraint1.tg[0].tr";
connectAttr "locator1.ro" "TSMG_upper_body_parentConstraint1.tg[0].tro";
connectAttr "locator1.s" "TSMG_upper_body_parentConstraint1.tg[0].ts";
connectAttr "locator1.pm" "TSMG_upper_body_parentConstraint1.tg[0].tpm";
connectAttr "TSMG_upper_body_parentConstraint1.w0" "TSMG_upper_body_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "TSMG_root_visibility.msg" "hyperLayout1.hyp[0].dn";
connectAttr "TSMG_root_translateX.msg" "hyperLayout1.hyp[1].dn";
connectAttr "TSMG_root_translateY.msg" "hyperLayout1.hyp[2].dn";
connectAttr "TSMG_root_translateZ.msg" "hyperLayout1.hyp[3].dn";
connectAttr "TSMG_root_rotateX.msg" "hyperLayout1.hyp[4].dn";
connectAttr "TSMG_root_rotateY.msg" "hyperLayout1.hyp[5].dn";
connectAttr "TSMG_root_rotateZ.msg" "hyperLayout1.hyp[6].dn";
connectAttr "TSMG_upper_body_visibility.msg" "hyperLayout1.hyp[7].dn";
connectAttr "TSMG_upper_body_translateX.msg" "hyperLayout1.hyp[8].dn";
connectAttr "TSMG_upper_body_translateY.msg" "hyperLayout1.hyp[9].dn";
connectAttr "TSMG_upper_body_translateZ.msg" "hyperLayout1.hyp[10].dn";
connectAttr "TSMG_upper_body_rotateX.msg" "hyperLayout1.hyp[11].dn";
connectAttr "TSMG_upper_body_rotateY.msg" "hyperLayout1.hyp[12].dn";
connectAttr "TSMG_upper_body_rotateZ.msg" "hyperLayout1.hyp[13].dn";
connectAttr "TSMG_upper_body_head1_controlSize.msg" "hyperLayout1.hyp[14].dn";
connectAttr "TSMG_upper_body_head1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[15].dn"
		;
connectAttr "TSMG_upper_body_leftArm1_controlSize.msg" "hyperLayout1.hyp[16].dn"
		;
connectAttr "TSMG_upper_body_leftArm1_FKIKSwitch.msg" "hyperLayout1.hyp[17].dn";
connectAttr "TSMG_upper_body_leftArm1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[18].dn"
		;
connectAttr "TSMG_upper_body_leftLeg1_ControlSize.msg" "hyperLayout1.hyp[19].dn"
		;
connectAttr "TSMG_upper_body_leftLeg1_FKIKSwitch.msg" "hyperLayout1.hyp[20].dn";
connectAttr "TSMG_upper_body_leftLeg1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[21].dn"
		;
connectAttr "TSMG_upper_body_rightArm1_controlSize.msg" "hyperLayout1.hyp[22].dn"
		;
connectAttr "TSMG_upper_body_rightArm1_FKIKSwitch.msg" "hyperLayout1.hyp[23].dn"
		;
connectAttr "TSMG_upper_body_rightArm1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[24].dn"
		;
connectAttr "TSMG_upper_body_rightLeg1_ControlSize.msg" "hyperLayout1.hyp[25].dn"
		;
connectAttr "TSMG_upper_body_rightLeg1_FKIKSwitch.msg" "hyperLayout1.hyp[26].dn"
		;
connectAttr "TSMG_upper_body_rightLeg1_RotationIsolationSwitch.msg" "hyperLayout1.hyp[27].dn"
		;
connectAttr "TSMG_upper_body_spine1_FKIKSwitch.msg" "hyperLayout1.hyp[28].dn";
connectAttr "TSMG_upper_body_spine1_ControlSize.msg" "hyperLayout1.hyp[29].dn";
connectAttr "rightLeg1_LegIKKneeControl_rotateX.msg" "hyperLayout1.hyp[30].dn";
connectAttr "rightLeg1_LegIKKneeControl_rotateY.msg" "hyperLayout1.hyp[31].dn";
connectAttr "rightLeg1_LegIKKneeControl_rotateZ.msg" "hyperLayout1.hyp[32].dn";
connectAttr "rightThumb1_Control_translateX.msg" "hyperLayout1.hyp[33].dn";
connectAttr "rightThumb1_Control_translateY.msg" "hyperLayout1.hyp[34].dn";
connectAttr "rightThumb1_Control_translateZ.msg" "hyperLayout1.hyp[35].dn";
connectAttr "rightThumb1_Control_rotateX.msg" "hyperLayout1.hyp[36].dn";
connectAttr "rightThumb1_Control_rotateY.msg" "hyperLayout1.hyp[37].dn";
connectAttr "rightThumb1_Control_rotateZ.msg" "hyperLayout1.hyp[38].dn";
connectAttr "rightThumb1_Control_MiddleJoint.msg" "hyperLayout1.hyp[39].dn";
connectAttr "rightThumb1_Control_EndJoint.msg" "hyperLayout1.hyp[40].dn";
connectAttr "rightThumb1_Control_SideToSide.msg" "hyperLayout1.hyp[41].dn";
connectAttr "spine1_lowerSpineControl_translateX.msg" "hyperLayout1.hyp[42].dn";
connectAttr "spine1_lowerSpineControl_translateY.msg" "hyperLayout1.hyp[43].dn";
connectAttr "spine1_lowerSpineControl_translateZ.msg" "hyperLayout1.hyp[44].dn";
connectAttr "spine1_lowerSpineControl_rotateX.msg" "hyperLayout1.hyp[45].dn";
connectAttr "spine1_lowerSpineControl_rotateY.msg" "hyperLayout1.hyp[46].dn";
connectAttr "spine1_lowerSpineControl_rotateZ.msg" "hyperLayout1.hyp[47].dn";
connectAttr "spine1_middleSpineControl_translateX.msg" "hyperLayout1.hyp[48].dn"
		;
connectAttr "spine1_middleSpineControl_translateY.msg" "hyperLayout1.hyp[49].dn"
		;
connectAttr "spine1_middleSpineControl_translateZ.msg" "hyperLayout1.hyp[50].dn"
		;
connectAttr "spine1_middleSpineControl_rotateX.msg" "hyperLayout1.hyp[51].dn";
connectAttr "spine1_middleSpineControl_rotateY.msg" "hyperLayout1.hyp[52].dn";
connectAttr "spine1_middleSpineControl_rotateZ.msg" "hyperLayout1.hyp[53].dn";
connectAttr "spine1_torsoControl_translateX.msg" "hyperLayout1.hyp[54].dn";
connectAttr "spine1_torsoControl_translateY.msg" "hyperLayout1.hyp[55].dn";
connectAttr "spine1_torsoControl_translateZ.msg" "hyperLayout1.hyp[56].dn";
connectAttr "spine1_torsoControl_rotateX.msg" "hyperLayout1.hyp[57].dn";
connectAttr "spine1_torsoControl_rotateY.msg" "hyperLayout1.hyp[58].dn";
connectAttr "spine1_torsoControl_rotateZ.msg" "hyperLayout1.hyp[59].dn";
connectAttr "spine1_hipsControl_translateX.msg" "hyperLayout1.hyp[60].dn";
connectAttr "spine1_hipsControl_translateY.msg" "hyperLayout1.hyp[61].dn";
connectAttr "spine1_hipsControl_translateZ.msg" "hyperLayout1.hyp[62].dn";
connectAttr "spine1_hipsControl_rotateX.msg" "hyperLayout1.hyp[63].dn";
connectAttr "spine1_hipsControl_rotateY.msg" "hyperLayout1.hyp[64].dn";
connectAttr "spine1_hipsControl_rotateZ.msg" "hyperLayout1.hyp[65].dn";
connectAttr "spine1_hipsIKControl_translateX.msg" "hyperLayout1.hyp[66].dn";
connectAttr "spine1_hipsIKControl_translateY.msg" "hyperLayout1.hyp[67].dn";
connectAttr "spine1_hipsIKControl_translateZ.msg" "hyperLayout1.hyp[68].dn";
connectAttr "spine1_hipsIKControl_rotateX.msg" "hyperLayout1.hyp[69].dn";
connectAttr "spine1_hipsIKControl_rotateY.msg" "hyperLayout1.hyp[70].dn";
connectAttr "spine1_hipsIKControl_rotateZ.msg" "hyperLayout1.hyp[71].dn";
connectAttr "spine1_hipsIKControl_scaleX.msg" "hyperLayout1.hyp[72].dn";
connectAttr "spine1_hipsIKControl_scaleY.msg" "hyperLayout1.hyp[73].dn";
connectAttr "spine1_hipsIKControl_scaleZ.msg" "hyperLayout1.hyp[74].dn";
connectAttr "spine1_torsoIKControl_translateX.msg" "hyperLayout1.hyp[75].dn";
connectAttr "spine1_torsoIKControl_translateY.msg" "hyperLayout1.hyp[76].dn";
connectAttr "spine1_torsoIKControl_translateZ.msg" "hyperLayout1.hyp[77].dn";
connectAttr "spine1_torsoIKControl_rotateX.msg" "hyperLayout1.hyp[78].dn";
connectAttr "spine1_torsoIKControl_rotateY.msg" "hyperLayout1.hyp[79].dn";
connectAttr "spine1_torsoIKControl_rotateZ.msg" "hyperLayout1.hyp[80].dn";
connectAttr "spine1_torsoIKControl_scaleX.msg" "hyperLayout1.hyp[81].dn";
connectAttr "spine1_torsoIKControl_scaleY.msg" "hyperLayout1.hyp[82].dn";
connectAttr "spine1_torsoIKControl_scaleZ.msg" "hyperLayout1.hyp[83].dn";
connectAttr "spine1_middleSpineIKControl_translateX.msg" "hyperLayout1.hyp[84].dn"
		;
connectAttr "spine1_middleSpineIKControl_translateY.msg" "hyperLayout1.hyp[85].dn"
		;
connectAttr "spine1_middleSpineIKControl_translateZ.msg" "hyperLayout1.hyp[86].dn"
		;
connectAttr "spine1_middleSpineIKControl_rotateX.msg" "hyperLayout1.hyp[87].dn";
connectAttr "spine1_middleSpineIKControl_rotateY.msg" "hyperLayout1.hyp[88].dn";
connectAttr "spine1_middleSpineIKControl_rotateZ.msg" "hyperLayout1.hyp[89].dn";
connectAttr "spine1_middleSpineIKControl_scaleX.msg" "hyperLayout1.hyp[90].dn";
connectAttr "spine1_middleSpineIKControl_scaleY.msg" "hyperLayout1.hyp[91].dn";
connectAttr "spine1_middleSpineIKControl_scaleZ.msg" "hyperLayout1.hyp[92].dn";
connectAttr "leftLeg1_IKHeelControl_rotateX.msg" "hyperLayout1.hyp[93].dn";
connectAttr "leftLeg1_IKHeelControl_rotateY.msg" "hyperLayout1.hyp[94].dn";
connectAttr "leftLeg1_IKHeelControl_rotateZ.msg" "hyperLayout1.hyp[95].dn";
connectAttr "rightLeg1_IKHeelControl_rotateX.msg" "hyperLayout1.hyp[96].dn";
connectAttr "rightLeg1_IKHeelControl_rotateY.msg" "hyperLayout1.hyp[97].dn";
connectAttr "rightLeg1_IKHeelControl_rotateZ.msg" "hyperLayout1.hyp[98].dn";
connectAttr "leftArm1_ClavicalControl_rotateX.msg" "hyperLayout1.hyp[99].dn";
connectAttr "leftArm1_ClavicalControl_rotateY.msg" "hyperLayout1.hyp[100].dn";
connectAttr "leftArm1_ClavicalControl_rotateZ.msg" "hyperLayout1.hyp[101].dn";
connectAttr "leftArm1_ClavicalControl_stretch.msg" "hyperLayout1.hyp[102].dn";
connectAttr "leftArm1_UpperArmControl_rotateX.msg" "hyperLayout1.hyp[103].dn";
connectAttr "leftArm1_UpperArmControl_rotateY.msg" "hyperLayout1.hyp[104].dn";
connectAttr "leftArm1_UpperArmControl_rotateZ.msg" "hyperLayout1.hyp[105].dn";
connectAttr "leftArm1_UpperArmControl_stretch.msg" "hyperLayout1.hyp[106].dn";
connectAttr "leftArm1_LowerArmControl_rotateY.msg" "hyperLayout1.hyp[107].dn";
connectAttr "leftArm1_LowerArmControl_stretch.msg" "hyperLayout1.hyp[108].dn";
connectAttr "leftArm1_HandControl_rotateX.msg" "hyperLayout1.hyp[109].dn";
connectAttr "leftArm1_HandControl_rotateY.msg" "hyperLayout1.hyp[110].dn";
connectAttr "leftArm1_HandControl_rotateZ.msg" "hyperLayout1.hyp[111].dn";
connectAttr "leftArm1_HandControl_scaleX.msg" "hyperLayout1.hyp[112].dn";
connectAttr "leftArm1_HandControl_scaleY.msg" "hyperLayout1.hyp[113].dn";
connectAttr "leftArm1_HandControl_scaleZ.msg" "hyperLayout1.hyp[114].dn";
connectAttr "leftArm1_ArmIKElbowControl_rotateX.msg" "hyperLayout1.hyp[115].dn";
connectAttr "leftArm1_ArmIKElbowControl_rotateY.msg" "hyperLayout1.hyp[116].dn";
connectAttr "leftArm1_ArmIKElbowControl_rotateZ.msg" "hyperLayout1.hyp[117].dn";
connectAttr "leftFinger1_Control_translateX.msg" "hyperLayout1.hyp[118].dn";
connectAttr "leftFinger1_Control_translateY.msg" "hyperLayout1.hyp[119].dn";
connectAttr "leftFinger1_Control_translateZ.msg" "hyperLayout1.hyp[120].dn";
connectAttr "leftFinger1_Control_rotateX.msg" "hyperLayout1.hyp[121].dn";
connectAttr "leftFinger1_Control_rotateY.msg" "hyperLayout1.hyp[122].dn";
connectAttr "leftFinger1_Control_rotateZ.msg" "hyperLayout1.hyp[123].dn";
connectAttr "leftFinger1_Control_MiddleJoint.msg" "hyperLayout1.hyp[124].dn";
connectAttr "leftFinger1_Control_EndJoint.msg" "hyperLayout1.hyp[125].dn";
connectAttr "leftFinger1_Control_SideToSide.msg" "hyperLayout1.hyp[126].dn";
connectAttr "leftFinger2_Control_translateX.msg" "hyperLayout1.hyp[127].dn";
connectAttr "leftFinger2_Control_translateY.msg" "hyperLayout1.hyp[128].dn";
connectAttr "leftFinger2_Control_translateZ.msg" "hyperLayout1.hyp[129].dn";
connectAttr "leftFinger2_Control_rotateX.msg" "hyperLayout1.hyp[130].dn";
connectAttr "leftFinger2_Control_rotateY.msg" "hyperLayout1.hyp[131].dn";
connectAttr "leftFinger2_Control_rotateZ.msg" "hyperLayout1.hyp[132].dn";
connectAttr "leftFinger2_Control_MiddleJoint.msg" "hyperLayout1.hyp[133].dn";
connectAttr "leftFinger2_Control_EndJoint.msg" "hyperLayout1.hyp[134].dn";
connectAttr "leftFinger2_Control_SideToSide.msg" "hyperLayout1.hyp[135].dn";
connectAttr "leftFinger3_Control_translateX.msg" "hyperLayout1.hyp[136].dn";
connectAttr "leftFinger3_Control_translateY.msg" "hyperLayout1.hyp[137].dn";
connectAttr "leftFinger3_Control_translateZ.msg" "hyperLayout1.hyp[138].dn";
connectAttr "leftFinger3_Control_rotateX.msg" "hyperLayout1.hyp[139].dn";
connectAttr "leftFinger3_Control_rotateY.msg" "hyperLayout1.hyp[140].dn";
connectAttr "leftFinger3_Control_rotateZ.msg" "hyperLayout1.hyp[141].dn";
connectAttr "leftFinger3_Control_MiddleJoint.msg" "hyperLayout1.hyp[142].dn";
connectAttr "leftFinger3_Control_EndJoint.msg" "hyperLayout1.hyp[143].dn";
connectAttr "leftFinger3_Control_SideToSide.msg" "hyperLayout1.hyp[144].dn";
connectAttr "leftFinger4_Control_translateX.msg" "hyperLayout1.hyp[145].dn";
connectAttr "leftFinger4_Control_translateY.msg" "hyperLayout1.hyp[146].dn";
connectAttr "leftFinger4_Control_translateZ.msg" "hyperLayout1.hyp[147].dn";
connectAttr "leftFinger4_Control_rotateX.msg" "hyperLayout1.hyp[148].dn";
connectAttr "leftFinger4_Control_rotateY.msg" "hyperLayout1.hyp[149].dn";
connectAttr "leftFinger4_Control_rotateZ.msg" "hyperLayout1.hyp[150].dn";
connectAttr "leftFinger4_Control_MiddleJoint.msg" "hyperLayout1.hyp[151].dn";
connectAttr "leftFinger4_Control_EndJoint.msg" "hyperLayout1.hyp[152].dn";
connectAttr "leftFinger4_Control_SideToSide.msg" "hyperLayout1.hyp[153].dn";
connectAttr "leftLeg1_UpperLegControl_rotateX.msg" "hyperLayout1.hyp[154].dn";
connectAttr "leftLeg1_UpperLegControl_rotateY.msg" "hyperLayout1.hyp[155].dn";
connectAttr "leftLeg1_UpperLegControl_rotateZ.msg" "hyperLayout1.hyp[156].dn";
connectAttr "leftLeg1_UpperLegControl_stretch.msg" "hyperLayout1.hyp[157].dn";
connectAttr "leftLeg1_LowerLegControl_rotateY.msg" "hyperLayout1.hyp[158].dn";
connectAttr "leftLeg1_LowerLegControl_stretch.msg" "hyperLayout1.hyp[159].dn";
connectAttr "leftLeg1_FootControl_rotateX.msg" "hyperLayout1.hyp[160].dn";
connectAttr "leftLeg1_FootControl_rotateY.msg" "hyperLayout1.hyp[161].dn";
connectAttr "leftLeg1_FootControl_rotateZ.msg" "hyperLayout1.hyp[162].dn";
connectAttr "leftLeg1_FootControl_stretch.msg" "hyperLayout1.hyp[163].dn";
connectAttr "leftLeg1_ToeControl_rotateX.msg" "hyperLayout1.hyp[164].dn";
connectAttr "leftLeg1_ToeControl_rotateY.msg" "hyperLayout1.hyp[165].dn";
connectAttr "leftLeg1_ToeControl_rotateZ.msg" "hyperLayout1.hyp[166].dn";
connectAttr "leftLeg1_LegIKKneeControl_rotateX.msg" "hyperLayout1.hyp[167].dn";
connectAttr "leftLeg1_LegIKKneeControl_rotateY.msg" "hyperLayout1.hyp[168].dn";
connectAttr "leftLeg1_LegIKKneeControl_rotateZ.msg" "hyperLayout1.hyp[169].dn";
connectAttr "leftThumb1_Control_translateX.msg" "hyperLayout1.hyp[170].dn";
connectAttr "leftThumb1_Control_translateY.msg" "hyperLayout1.hyp[171].dn";
connectAttr "leftThumb1_Control_translateZ.msg" "hyperLayout1.hyp[172].dn";
connectAttr "leftThumb1_Control_rotateX.msg" "hyperLayout1.hyp[173].dn";
connectAttr "leftThumb1_Control_rotateY.msg" "hyperLayout1.hyp[174].dn";
connectAttr "leftThumb1_Control_rotateZ.msg" "hyperLayout1.hyp[175].dn";
connectAttr "leftThumb1_Control_MiddleJoint.msg" "hyperLayout1.hyp[176].dn";
connectAttr "leftThumb1_Control_EndJoint.msg" "hyperLayout1.hyp[177].dn";
connectAttr "leftThumb1_Control_SideToSide.msg" "hyperLayout1.hyp[178].dn";
connectAttr "rightArm1_ClavicalControl_rotateX.msg" "hyperLayout1.hyp[179].dn";
connectAttr "rightArm1_ClavicalControl_rotateY.msg" "hyperLayout1.hyp[180].dn";
connectAttr "rightArm1_ClavicalControl_rotateZ.msg" "hyperLayout1.hyp[181].dn";
connectAttr "rightArm1_ClavicalControl_stretch.msg" "hyperLayout1.hyp[182].dn";
connectAttr "rightArm1_UpperArmControl_rotateX.msg" "hyperLayout1.hyp[183].dn";
connectAttr "rightArm1_UpperArmControl_rotateY.msg" "hyperLayout1.hyp[184].dn";
connectAttr "rightArm1_UpperArmControl_rotateZ.msg" "hyperLayout1.hyp[185].dn";
connectAttr "rightArm1_UpperArmControl_stretch.msg" "hyperLayout1.hyp[186].dn";
connectAttr "rightArm1_LowerArmControl_rotateY.msg" "hyperLayout1.hyp[187].dn";
connectAttr "rightArm1_LowerArmControl_stretch.msg" "hyperLayout1.hyp[188].dn";
connectAttr "rightArm1_HandControl_rotateX.msg" "hyperLayout1.hyp[189].dn";
connectAttr "rightArm1_HandControl_rotateY.msg" "hyperLayout1.hyp[190].dn";
connectAttr "rightArm1_HandControl_rotateZ.msg" "hyperLayout1.hyp[191].dn";
connectAttr "rightArm1_HandControl_scaleX.msg" "hyperLayout1.hyp[192].dn";
connectAttr "rightArm1_HandControl_scaleY.msg" "hyperLayout1.hyp[193].dn";
connectAttr "rightArm1_HandControl_scaleZ.msg" "hyperLayout1.hyp[194].dn";
connectAttr "rightArm1_ArmIKElbowControl_rotateX.msg" "hyperLayout1.hyp[195].dn"
		;
connectAttr "rightArm1_ArmIKElbowControl_rotateY.msg" "hyperLayout1.hyp[196].dn"
		;
connectAttr "rightArm1_ArmIKElbowControl_rotateZ.msg" "hyperLayout1.hyp[197].dn"
		;
connectAttr "head1_neckControl_rotateX.msg" "hyperLayout1.hyp[198].dn";
connectAttr "head1_neckControl_rotateY.msg" "hyperLayout1.hyp[199].dn";
connectAttr "head1_neckControl_rotateZ.msg" "hyperLayout1.hyp[200].dn";
connectAttr "rightFinger1_Control_translateX.msg" "hyperLayout1.hyp[201].dn";
connectAttr "rightFinger1_Control_translateY.msg" "hyperLayout1.hyp[202].dn";
connectAttr "rightFinger1_Control_translateZ.msg" "hyperLayout1.hyp[203].dn";
connectAttr "rightFinger1_Control_rotateX.msg" "hyperLayout1.hyp[204].dn";
connectAttr "rightFinger1_Control_rotateY.msg" "hyperLayout1.hyp[205].dn";
connectAttr "rightFinger1_Control_rotateZ.msg" "hyperLayout1.hyp[206].dn";
connectAttr "rightFinger1_Control_MiddleJoint.msg" "hyperLayout1.hyp[207].dn";
connectAttr "rightFinger1_Control_EndJoint.msg" "hyperLayout1.hyp[208].dn";
connectAttr "rightFinger1_Control_SideToSide.msg" "hyperLayout1.hyp[209].dn";
connectAttr "rightFinger2_Control_translateX.msg" "hyperLayout1.hyp[210].dn";
connectAttr "rightFinger2_Control_translateY.msg" "hyperLayout1.hyp[211].dn";
connectAttr "rightFinger2_Control_translateZ.msg" "hyperLayout1.hyp[212].dn";
connectAttr "rightFinger2_Control_rotateX.msg" "hyperLayout1.hyp[213].dn";
connectAttr "rightFinger2_Control_rotateY.msg" "hyperLayout1.hyp[214].dn";
connectAttr "rightFinger2_Control_rotateZ.msg" "hyperLayout1.hyp[215].dn";
connectAttr "rightFinger2_Control_MiddleJoint.msg" "hyperLayout1.hyp[216].dn";
connectAttr "rightFinger2_Control_EndJoint.msg" "hyperLayout1.hyp[217].dn";
connectAttr "rightFinger2_Control_SideToSide.msg" "hyperLayout1.hyp[218].dn";
connectAttr "rightFinger3_Control_translateX.msg" "hyperLayout1.hyp[219].dn";
connectAttr "rightFinger3_Control_translateY.msg" "hyperLayout1.hyp[220].dn";
connectAttr "rightFinger3_Control_translateZ.msg" "hyperLayout1.hyp[221].dn";
connectAttr "rightFinger3_Control_rotateX.msg" "hyperLayout1.hyp[222].dn";
connectAttr "rightFinger3_Control_rotateY.msg" "hyperLayout1.hyp[223].dn";
connectAttr "rightFinger3_Control_rotateZ.msg" "hyperLayout1.hyp[224].dn";
connectAttr "rightFinger3_Control_MiddleJoint.msg" "hyperLayout1.hyp[225].dn";
connectAttr "rightFinger3_Control_EndJoint.msg" "hyperLayout1.hyp[226].dn";
connectAttr "rightFinger3_Control_SideToSide.msg" "hyperLayout1.hyp[227].dn";
connectAttr "rightFinger4_Control_translateX.msg" "hyperLayout1.hyp[228].dn";
connectAttr "rightFinger4_Control_translateY.msg" "hyperLayout1.hyp[229].dn";
connectAttr "rightFinger4_Control_translateZ.msg" "hyperLayout1.hyp[230].dn";
connectAttr "rightFinger4_Control_rotateX.msg" "hyperLayout1.hyp[231].dn";
connectAttr "rightFinger4_Control_rotateY.msg" "hyperLayout1.hyp[232].dn";
connectAttr "rightFinger4_Control_rotateZ.msg" "hyperLayout1.hyp[233].dn";
connectAttr "rightFinger4_Control_MiddleJoint.msg" "hyperLayout1.hyp[234].dn";
connectAttr "rightFinger4_Control_EndJoint.msg" "hyperLayout1.hyp[235].dn";
connectAttr "rightFinger4_Control_SideToSide.msg" "hyperLayout1.hyp[236].dn";
connectAttr "rightLeg1_UpperLegControl_rotateX.msg" "hyperLayout1.hyp[237].dn";
connectAttr "rightLeg1_UpperLegControl_rotateY.msg" "hyperLayout1.hyp[238].dn";
connectAttr "rightLeg1_UpperLegControl_rotateZ.msg" "hyperLayout1.hyp[239].dn";
connectAttr "rightLeg1_UpperLegControl_stretch.msg" "hyperLayout1.hyp[240].dn";
connectAttr "rightLeg1_LowerLegControl_rotateY.msg" "hyperLayout1.hyp[241].dn";
connectAttr "rightLeg1_LowerLegControl_stretch.msg" "hyperLayout1.hyp[242].dn";
connectAttr "rightLeg1_FootControl_rotateX.msg" "hyperLayout1.hyp[243].dn";
connectAttr "rightLeg1_FootControl_rotateY.msg" "hyperLayout1.hyp[244].dn";
connectAttr "rightLeg1_FootControl_rotateZ.msg" "hyperLayout1.hyp[245].dn";
connectAttr "rightLeg1_FootControl_stretch.msg" "hyperLayout1.hyp[246].dn";
connectAttr "rightLeg1_ToeControl_rotateX.msg" "hyperLayout1.hyp[247].dn";
connectAttr "rightLeg1_ToeControl_rotateY.msg" "hyperLayout1.hyp[248].dn";
connectAttr "rightLeg1_ToeControl_rotateZ.msg" "hyperLayout1.hyp[249].dn";
connectAttr "rightArm1_ArmIKControl_translateX.msg" "hyperLayout1.hyp[250].dn";
connectAttr "rightArm1_ArmIKControl_translateY.msg" "hyperLayout1.hyp[251].dn";
connectAttr "rightArm1_ArmIKControl_translateZ.msg" "hyperLayout1.hyp[252].dn";
connectAttr "rightArm1_ArmIKControl_rotateX.msg" "hyperLayout1.hyp[253].dn";
connectAttr "rightArm1_ArmIKControl_rotateY.msg" "hyperLayout1.hyp[254].dn";
connectAttr "rightArm1_ArmIKControl_rotateZ.msg" "hyperLayout1.hyp[255].dn";
connectAttr "rightArm1_ArmIKControl_scaleX.msg" "hyperLayout1.hyp[256].dn";
connectAttr "rightArm1_ArmIKControl_scaleY.msg" "hyperLayout1.hyp[257].dn";
connectAttr "rightArm1_ArmIKControl_scaleZ.msg" "hyperLayout1.hyp[258].dn";
connectAttr "rightArm1_ArmIKControl_AutoStretch.msg" "hyperLayout1.hyp[259].dn";
connectAttr "rightArm1_ArmIKControl_AntiIKPop.msg" "hyperLayout1.hyp[260].dn";
connectAttr "rightArm1_ArmIKControl_LowerArmStretch.msg" "hyperLayout1.hyp[261].dn"
		;
connectAttr "rightArm1_ArmIKControl_UpperArmStretch.msg" "hyperLayout1.hyp[262].dn"
		;
connectAttr "head1_Control_translateX.msg" "hyperLayout1.hyp[263].dn";
connectAttr "head1_Control_translateY.msg" "hyperLayout1.hyp[264].dn";
connectAttr "head1_Control_translateZ.msg" "hyperLayout1.hyp[265].dn";
connectAttr "head1_Control_rotateX.msg" "hyperLayout1.hyp[266].dn";
connectAttr "head1_Control_rotateY.msg" "hyperLayout1.hyp[267].dn";
connectAttr "head1_Control_rotateZ.msg" "hyperLayout1.hyp[268].dn";
connectAttr "head1_Control_scaleX.msg" "hyperLayout1.hyp[269].dn";
connectAttr "head1_Control_scaleY.msg" "hyperLayout1.hyp[270].dn";
connectAttr "head1_Control_scaleZ.msg" "hyperLayout1.hyp[271].dn";
connectAttr "leftLeg1_LegIKControl_translateX.msg" "hyperLayout1.hyp[272].dn";
connectAttr "leftLeg1_LegIKControl_translateY.msg" "hyperLayout1.hyp[273].dn";
connectAttr "leftLeg1_LegIKControl_translateZ.msg" "hyperLayout1.hyp[274].dn";
connectAttr "leftLeg1_LegIKControl_rotateX.msg" "hyperLayout1.hyp[275].dn";
connectAttr "leftLeg1_LegIKControl_rotateY.msg" "hyperLayout1.hyp[276].dn";
connectAttr "leftLeg1_LegIKControl_rotateZ.msg" "hyperLayout1.hyp[277].dn";
connectAttr "leftLeg1_LegIKControl_scaleX.msg" "hyperLayout1.hyp[278].dn";
connectAttr "leftLeg1_LegIKControl_scaleY.msg" "hyperLayout1.hyp[279].dn";
connectAttr "leftLeg1_LegIKControl_scaleZ.msg" "hyperLayout1.hyp[280].dn";
connectAttr "leftLeg1_LegIKControl_AutoStretch.msg" "hyperLayout1.hyp[281].dn";
connectAttr "leftLeg1_LegIKControl_FootStretch.msg" "hyperLayout1.hyp[282].dn";
connectAttr "leftLeg1_LegIKControl_HeelRaise.msg" "hyperLayout1.hyp[283].dn";
connectAttr "leftLeg1_LegIKControl_HeelSwivel.msg" "hyperLayout1.hyp[284].dn";
connectAttr "leftLeg1_LegIKControl_ToeRaise.msg" "hyperLayout1.hyp[285].dn";
connectAttr "leftLeg1_LegIKControl_ToeSwivel.msg" "hyperLayout1.hyp[286].dn";
connectAttr "leftLeg1_LegIKControl_UpperLegStretch.msg" "hyperLayout1.hyp[287].dn"
		;
connectAttr "leftLeg1_LegIKControl_LowerLegStretch.msg" "hyperLayout1.hyp[288].dn"
		;
connectAttr "leftLeg1_LegIKControl_AntiIKPop.msg" "hyperLayout1.hyp[289].dn";
connectAttr "rightLeg1_LegIKControl_translateX.msg" "hyperLayout1.hyp[290].dn";
connectAttr "rightLeg1_LegIKControl_translateY.msg" "hyperLayout1.hyp[291].dn";
connectAttr "rightLeg1_LegIKControl_translateZ.msg" "hyperLayout1.hyp[292].dn";
connectAttr "rightLeg1_LegIKControl_rotateX.msg" "hyperLayout1.hyp[293].dn";
connectAttr "rightLeg1_LegIKControl_rotateY.msg" "hyperLayout1.hyp[294].dn";
connectAttr "rightLeg1_LegIKControl_rotateZ.msg" "hyperLayout1.hyp[295].dn";
connectAttr "rightLeg1_LegIKControl_scaleX.msg" "hyperLayout1.hyp[296].dn";
connectAttr "rightLeg1_LegIKControl_scaleY.msg" "hyperLayout1.hyp[297].dn";
connectAttr "rightLeg1_LegIKControl_scaleZ.msg" "hyperLayout1.hyp[298].dn";
connectAttr "rightLeg1_LegIKControl_AutoStretch.msg" "hyperLayout1.hyp[299].dn";
connectAttr "rightLeg1_LegIKControl_FootStretch.msg" "hyperLayout1.hyp[300].dn";
connectAttr "rightLeg1_LegIKControl_HeelRaise.msg" "hyperLayout1.hyp[301].dn";
connectAttr "rightLeg1_LegIKControl_HeelSwivel.msg" "hyperLayout1.hyp[302].dn";
connectAttr "rightLeg1_LegIKControl_ToeRaise.msg" "hyperLayout1.hyp[303].dn";
connectAttr "rightLeg1_LegIKControl_ToeSwivel.msg" "hyperLayout1.hyp[304].dn";
connectAttr "rightLeg1_LegIKControl_UpperLegStretch.msg" "hyperLayout1.hyp[305].dn"
		;
connectAttr "rightLeg1_LegIKControl_LowerLegStretch.msg" "hyperLayout1.hyp[306].dn"
		;
connectAttr "rightLeg1_LegIKControl_AntiIKPop.msg" "hyperLayout1.hyp[307].dn";
connectAttr "leftArm1_ArmIKControl_translateX.msg" "hyperLayout1.hyp[308].dn";
connectAttr "leftArm1_ArmIKControl_translateY.msg" "hyperLayout1.hyp[309].dn";
connectAttr "leftArm1_ArmIKControl_translateZ.msg" "hyperLayout1.hyp[310].dn";
connectAttr "leftArm1_ArmIKControl_rotateX.msg" "hyperLayout1.hyp[311].dn";
connectAttr "leftArm1_ArmIKControl_rotateY.msg" "hyperLayout1.hyp[312].dn";
connectAttr "leftArm1_ArmIKControl_rotateZ.msg" "hyperLayout1.hyp[313].dn";
connectAttr "leftArm1_ArmIKControl_scaleX.msg" "hyperLayout1.hyp[314].dn";
connectAttr "leftArm1_ArmIKControl_scaleY.msg" "hyperLayout1.hyp[315].dn";
connectAttr "leftArm1_ArmIKControl_scaleZ.msg" "hyperLayout1.hyp[316].dn";
connectAttr "leftArm1_ArmIKControl_AutoStretch.msg" "hyperLayout1.hyp[317].dn";
connectAttr "leftArm1_ArmIKControl_AntiIKPop.msg" "hyperLayout1.hyp[318].dn";
connectAttr "leftArm1_ArmIKControl_LowerArmStretch.msg" "hyperLayout1.hyp[319].dn"
		;
connectAttr "leftArm1_ArmIKControl_UpperArmStretch.msg" "hyperLayout1.hyp[320].dn"
		;
connectAttr "locator1.msg" "hyperLayout1.hyp[321].dn";
connectAttr "locatorShape1.msg" "hyperLayout1.hyp[322].dn";
connectAttr "locator1_parentConstraint1.msg" "hyperLayout1.hyp[323].dn";
connectAttr "locator1_visibility.msg" "hyperLayout1.hyp[324].dn";
connectAttr "locator1_translateX.msg" "hyperLayout1.hyp[325].dn";
connectAttr "locator1_translateY.msg" "hyperLayout1.hyp[326].dn";
connectAttr "locator1_translateZ.msg" "hyperLayout1.hyp[327].dn";
connectAttr "locator1_rotateX.msg" "hyperLayout1.hyp[328].dn";
connectAttr "locator1_rotateY.msg" "hyperLayout1.hyp[329].dn";
connectAttr "locator1_rotateZ.msg" "hyperLayout1.hyp[330].dn";
connectAttr "locator1_scaleX.msg" "hyperLayout1.hyp[331].dn";
connectAttr "locator1_scaleY.msg" "hyperLayout1.hyp[332].dn";
connectAttr "locator1_scaleZ.msg" "hyperLayout1.hyp[333].dn";
connectAttr "TSMG_upper_body_parentConstraint1.msg" "hyperLayout1.hyp[334].dn";
connectAttr "pairBlend1.msg" "hyperLayout1.hyp[335].dn";
connectAttr "TSMG_upper_body_blendParent1.msg" "hyperLayout1.hyp[336].dn";
connectAttr "spine1_hipsIKControl_parentConstraint1.msg" "hyperLayout1.hyp[337].dn"
		;
connectAttr "pairBlend2.msg" "hyperLayout1.hyp[338].dn";
connectAttr "Psylocke_TSMG_2015RNfosterParent1.msg" "Psylocke_TSMG_2015RN.fp";
connectAttr "TSMG_upper_body_translateY.o" "pairBlend1.ity1";
connectAttr "TSMG_upper_body_parentConstraint1.cty" "pairBlend1.ity2";
connectAttr "spine1_hipsIKControl_translateX.o" "pairBlend2.itx1";
connectAttr "spine1_hipsIKControl_translateY.o" "pairBlend2.ity1";
connectAttr "spine1_hipsIKControl_translateZ.o" "pairBlend2.itz1";
connectAttr "spine1_hipsIKControl_rotateX.o" "pairBlend2.irx1";
connectAttr "spine1_hipsIKControl_rotateY.o" "pairBlend2.iry1";
connectAttr "spine1_hipsIKControl_rotateZ.o" "pairBlend2.irz1";
connectAttr "spine1_hipsIKControl_parentConstraint1.ctx" "pairBlend2.itx2";
connectAttr "spine1_hipsIKControl_parentConstraint1.cty" "pairBlend2.ity2";
connectAttr "spine1_hipsIKControl_parentConstraint1.ctz" "pairBlend2.itz2";
connectAttr "spine1_hipsIKControl_parentConstraint1.crx" "pairBlend2.irx2";
connectAttr "spine1_hipsIKControl_parentConstraint1.cry" "pairBlend2.iry2";
connectAttr "spine1_hipsIKControl_parentConstraint1.crz" "pairBlend2.irz2";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"Psylocke_TSMG_2015RN\" \"\" \"/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE//Art/CHAR/anim/rigs/Psylocke/Psylocke_TSMG_2015.ma\" 1635349507 \"/Users/mton/Dropbox/Code/SymLink/Maya/PROJECT_STRUCTURE/__SOURCE/Art/CHAR/anim/rigs/Psylocke/Psylocke_TSMG_2015.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Psylocke_clip_Walk.ma
