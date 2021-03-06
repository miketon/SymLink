//Maya ASCII 2009 scene [ZBrush,SetModifier,FlipImageV,1]
//Name: [ZBrush,WriteString,FileName].ma
//Last modified: Sat, May 2, 2009 11:38:32 PM
//Codeset: UTF-8
requires maya "2008";
createNode transform -n "[ZBrush,WriteString,FileName]"; [ZBrush,If,[Equal,ImportedDataType,1],

	setAttr ".t" -type "double3" [ZBrush,Write,ImportedData0] [ZBrush,Write,ImportedData1] [ZBrush,Write,ImportedData2];  //translate
	setAttr ".r" -type "double3" [ZBrush,Write,ImportedData6] [ZBrush,Write,ImportedData7] [ZBrush,Write,ImportedData8];  //rotate
	setAttr ".s" -type "double3" [ZBrush,Write,ImportedData3] [ZBrush,Write,ImportedData4] [ZBrush,Write,ImportedData5];] //scale
	addAttr -ci true -sn "GoZBrushID" -ln "GoZBrushID" -nn "GoZBrushID" -dt "string";
	setAttr -cb on ". GoZBrushID" -type "string" "[ZBrush,WriteString,FileName]";
	createNode mesh -n "[ZBrush,WriteString,FileName]Shape" -p "[ZBrush,WriteString,FileName]";
	addAttr -ci true -sn "GoZBrushID" -ln "GoZBrushID" -nn "GoZBrushID" -dt "string";
	setAttr -cb on ". GoZBrushID" -type "string" "[ZBrush,WriteString,FileName]";
	[ZBrush,If,DisplacementMapCount,addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	addAttr -ci true -sn "miva" -ln "miSubdivApprox" -at "message";]
 	setAttr -k off ".v"; 
//===================================
//UVs - segmented to 250 entries per block
//===================================
	[ZBrush,if,UVCount,setAttr ".uvst[0].uvsn" -type "string" "map1";setAttr -s [ZBrush,Write,UVCount] ".uvst[0].uvsp";
  	[ZBrush,While,[Larger, [Sub, UVCount, UVIndex],249],
	setAttr ".uvst[0].uvsp[[ZBrush,Write,UVIndex]:[ZBrush,Write,[Add, UVIndex,249]]]" -type "float2" 
[ZBrush,Repeat,250, [ZBrush,Write,U] [ZBrush,Write,V]];]
 	[ZBrush,If,[Smaller,UVIndex, UVCount],setAttr ".uvst[0].uvsp[[ZBrush,Write,UVIndex]:[ZBrush,Write,[Sub, UVCount,1]]]" -type "float2" 
[ZBrush,Repeat,[Sub, UVCount,UVIndex], [ZBrush,Write,U] [ZBrush,Write,V]];]
  	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse"; //end UV]  
//===================================
// Vertices  - segmented to 165 entries per block
//===================================
  	setAttr -s [ZBrush,Write,VertexCount] ".vt";
	[ZBrush,While,[Larger, [Sub, VertexCount, VertexIndex],164],
	setAttr ".vt[[ZBrush,Write, VertexIndex]:[ZBrush,Write,[Add, VertexIndex,164]]]"
[ZBrush, Repeat,165, [ZBrush,Write,X] [ZBrush,Write,Y] [ZBrush,Write,Z]];] 
 	[ZBrush,If,[Smaller,VertexIndex, VertexCount],setAttr ".vt[[ZBrush,Write, VertexIndex]:[ZBrush,Write,[Sub, VertexCount,1]]]"
[ZBrush, Repeat,[Sub, VertexCount,vertexIndex], [ZBrush,Write,X] [ZBrush,Write,Y] [ZBrush,Write,Z]]; ] 
//===================================
// Edges - segmented to 165 entries per block
//===================================
 	setAttr -s [ZBrush,Write,EdgeCount] ".ed";
	[ZBrush,While,[Larger, [Sub, EdgeCount, EdgeIndex],164],
	setAttr ".ed[[ZBrush,Write, EdgeIndex]:[ZBrush,Write,[Add, EdgeIndex,164]]]"
[ZBrush, Repeat,165, [ZBrush,Write,EdgeStart] [ZBrush,Write,EdgeEnd] 0];] 
 	[ZBrush,If,[Smaller,EdgeIndex, EdgeCount],setAttr ".ed[[ZBrush,Write, EdgeIndex]:[ZBrush,Write,[Sub, EdgeCount,1]]]"
[ZBrush, Repeat,[Sub, EdgeCount,EdgeIndex], [ZBrush,Write,EdgeStart] [ZBrush,Write,EdgeEnd] 0]; ]
   	setAttr ".n[0]" -type "float3"  1e+20 1e+20 1e+20;
//===================================
// Faces - segmented to 500 entries per block
//===================================
   	setAttr -s [ZBrush,Write,FaceCount] ".fc";
  	[ZBrush,While,[Larger, [Sub,FaceCount,faceIndex],499],
	setAttr ".fc[[ZBrush,Write,faceIndex]:[ZBrush,Write,[Add,faceIndex,499]]]" -type "polyFaces" 
[ZBrush, Repeat,500, f [ZBrush,Write, EdgeCountInFace][ZBrush,Repeat, EdgeCountInFace, [ZBrush,Write, EdgeIndexInFace]] mu 0 [ZBrush,Write,UVCountInFace] [ZBrush,Repeat,UVCountInFace, [ZBrush,Write,UVIndexInFace]]];]
	[ZBrush,If,[Smaller,faceIndex, FaceCount],
 		setAttr ".fc[[ZBrush,Write,faceIndex]:[ZBrush,Write,[Sub, FaceCount,1]]]" -type "polyFaces" 
[ZBrush, Repeat,[Sub, FaceCount,faceIndex], f [ZBrush,Write, EdgeCountInFace][ZBrush,Repeat, EdgeCountInFace, [ZBrush,Write,EdgeIndexInFace]] mu 0 [ZBrush,Write,UVCountInFace] [ZBrush,Repeat,UVCountInFace, [ZBrush,Write, UVIndexInFace]]];  ]
//===================================
// Creased Edges
//===================================
  	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge [ZBrush,Write,CreasedEdgeCount]
	[ZBrush,Repeat,CreasedEdgeCount,[ZBrush,Write,CreasedEdgeIndex] 1000 ];
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
//===================================
	setAttr ".dsm" 2; //Smooth Preview
[ZBrush,If,DisplacementMapCount,createNode mentalraySubdivApprox -n "mentalraySubdivApprox1";
	addAttr -ci true -sn "miExportCCMesh" -ln "miExportCCMesh" -min 0 -max 1 -at "bool";
	setAttr ".ndiv" [ZBrush,If,NormalMapCount,3][ZBrush,IfNot,NormalMapCount,4];
	setAttr ".miExportCCMesh" yes;]
//if  ( `objExists "[ZBrush,WriteString,FileName]_blinnSG"` ) 		delete "[ZBrush,WriteString,FileName]_blinnSG";
//if  ( `objExists "[ZBrush,WriteString,FileName]_blinn"` ) 		{ select -r  "[ZBrush,WriteString,FileName]_blinn";	delete; }
//if  ( `objExists "[ZBrush,WriteString,FileName]_materialInfo"` ) 	{ select -r  "[ZBrush,WriteString,FileName]_materialInfo";	delete; }		 
createNode materialInfo -n "[ZBrush,WriteString,FileName]_materialInfo";

createNode shadingEngine -n "[ZBrush,WriteString,FileName]_blinnSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode blinn -n "[ZBrush,WriteString,FileName]_blinn";
	addAttr -ci true -sn "mircl" -ln "miReflectionBlurLimit" -dv 1 -min 0 -smx 10 -at "short";
	addAttr -ci true -sn "mirfl" -ln "miRefractionBlurLimit" -dv 1 -min 0 -smx 10 -at "short";
	addAttr -ci true -sn "miibr" -ln "miScatterRadius" -min 0 -smx 10 -at "float";
	addAttr -ci true -uac -sn "miibc" -ln "miScatterColor" -at "float3" -nc 3;
	addAttr -ci true -sn "miibcr" -ln "miScatterColorR" -dv 0.5 -at "float" -p "miScatterColor";
	addAttr -ci true -sn "miibcg" -ln "miScatterColorG" -dv 0.5 -at "float" -p "miScatterColor";
	addAttr -ci true -sn "miibcb" -ln "miScatterColorB" -dv 0.5 -at "float" -p "miScatterColor";
	addAttr -ci true -sn "miiba" -ln "miScatterAccuracy" -dv 97 -min 0 -smx 256 -at "short";
	addAttr -ci true -sn "miibf" -ln "miScatterFalloff" -min 0 -max 3 -en "None:Linear:Quadratic:Exponential" 
		-at "enum";
	addAttr -ci true -sn "miibl" -ln "miScatterLimit" -dv 1 -min 0 -smx 10 -at "short";
	addAttr -ci true -sn "miibx" -ln "miScatterCache" -at "short";
[ZBrush,If,TextureMapCount,createNode file -n "ZBrushTexture";
	setAttr ".ftn" -type "string" "[ZBrush,WriteString,TextureMapPath]";
createNode place2dTexture -n "place2dTexture2";]
[ZBrush,If,NormalMapCount,createNode bump2d -n "NormalMapSettings";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 3.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "ZBrushNormalMap";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "[ZBrush,WriteString,NormalMapPath]";
createNode place2dTexture -n "place2dTexture3";]
[ZBrush,If,DisplacementMapCount,createNode displacementShader -n "displacementShader1";
createNode file -n "ZBrushDispMap";
	setAttr ".ail" yes;
	setAttr ".ag" [ZBrush,Write,[Div,DisplacementFactor,ImportedScale]];
	setAttr ".ao" [ZBrush,Write,[Neg,[Div,DisplacementFactor,[Mul,ImportedScale,2]]]];
	setAttr ".ftn" -type "string" "[ZBrush,WriteString,DisplacementMapPath]";
	//setAttr ".ft" 0;
createNode place2dTexture -n "place2dTexture1";]
createNode lightLinker -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
[ZBrush,If,DisplacementMapCount,connectAttr "mentalraySubdivApprox1.msg" "[ZBrush,WriteString,FileName]Shape.miva";]
connectAttr "[ZBrush,WriteString,FileName]_blinnSG.msg" "[ZBrush,WriteString,FileName]_materialInfo.sg";
connectAttr "[ZBrush,WriteString,FileName]_blinn.msg" "[ZBrush,WriteString,FileName]_materialInfo.m";
[ZBrush,If,TextureMapCount,connectAttr "ZBrushTexture.msg" "[ZBrush,WriteString,FileName]_materialInfo.t" -na;]
connectAttr "[ZBrush,WriteString,FileName]_blinn.oc" "[ZBrush,WriteString,FileName]_blinnSG.ss";
connectAttr "[ZBrush,WriteString,FileName]Shape.iog" "[ZBrush,WriteString,FileName]_blinnSG.dsm" -na;
[ZBrush,If,DisplacementMapCount,connectAttr "displacementShader1.d" "[ZBrush,WriteString,FileName]_blinnSG.ds";]
[ZBrush,If,TextureMapCount,connectAttr "ZBrushTexture.oc" "[ZBrush,WriteString,FileName]_blinn.c";]
[ZBrush,If,NormalMapCount,connectAttr "NormalMapSettings.o" "[ZBrush,WriteString,FileName]_blinn.n";]
[ZBrush,If,TextureMapCount,connectAttr "place2dTexture2.c" "ZBrushTexture.c";
connectAttr "place2dTexture2.tf" "ZBrushTexture.tf";
connectAttr "place2dTexture2.rf" "ZBrushTexture.rf";
connectAttr "place2dTexture2.mu" "ZBrushTexture.mu";
connectAttr "place2dTexture2.mv" "ZBrushTexture.mv";
connectAttr "place2dTexture2.s" "ZBrushTexture.s";
connectAttr "place2dTexture2.wu" "ZBrushTexture.wu";
connectAttr "place2dTexture2.wv" "ZBrushTexture.wv";
connectAttr "place2dTexture2.re" "ZBrushTexture.re";
connectAttr "place2dTexture2.of" "ZBrushTexture.of";
connectAttr "place2dTexture2.r" "ZBrushTexture.ro";
connectAttr "place2dTexture2.n" "ZBrushTexture.n";
connectAttr "place2dTexture2.vt1" "ZBrushTexture.vt1";
connectAttr "place2dTexture2.vt2" "ZBrushTexture.vt2";
connectAttr "place2dTexture2.vt3" "ZBrushTexture.vt3";
connectAttr "place2dTexture2.vc1" "ZBrushTexture.vc1";
connectAttr "place2dTexture2.o" "ZBrushTexture.uv";
connectAttr "place2dTexture2.ofs" "ZBrushTexture.fs";]
[ZBrush,If,NormalMapCount,connectAttr "ZBrushNormalMap.oa" "NormalMapSettings.bv";
connectAttr "place2dTexture3.c" "ZBrushNormalMap.c";
connectAttr "place2dTexture3.tf" "ZBrushNormalMap.tf";
connectAttr "place2dTexture3.rf" "ZBrushNormalMap.rf";
connectAttr "place2dTexture3.mu" "ZBrushNormalMap.mu";
connectAttr "place2dTexture3.mv" "ZBrushNormalMap.mv";
connectAttr "place2dTexture3.s" "ZBrushNormalMap.s";
connectAttr "place2dTexture3.wu" "ZBrushNormalMap.wu";
connectAttr "place2dTexture3.wv" "ZBrushNormalMap.wv";
connectAttr "place2dTexture3.re" "ZBrushNormalMap.re";
connectAttr "place2dTexture3.of" "ZBrushNormalMap.of";
connectAttr "place2dTexture3.r" "ZBrushNormalMap.ro";
connectAttr "place2dTexture3.n" "ZBrushNormalMap.n";
connectAttr "place2dTexture3.vt1" "ZBrushNormalMap.vt1";
connectAttr "place2dTexture3.vt2" "ZBrushNormalMap.vt2";
connectAttr "place2dTexture3.vt3" "ZBrushNormalMap.vt3";
connectAttr "place2dTexture3.vc1" "ZBrushNormalMap.vc1";
connectAttr "place2dTexture3.o" "ZBrushNormalMap.uv";
connectAttr "place2dTexture3.ofs" "ZBrushNormalMap.fs";]
[ZBrush,If,DisplacementMapCount,connectAttr "ZBrushDispMap.oa" "displacementShader1.d";
connectAttr "place2dTexture1.c" "ZBrushDispMap.c";
connectAttr "place2dTexture1.tf" "ZBrushDispMap.tf";
connectAttr "place2dTexture1.rf" "ZBrushDispMap.rf";
connectAttr "place2dTexture1.mu" "ZBrushDispMap.mu";
connectAttr "place2dTexture1.mv" "ZBrushDispMap.mv";
connectAttr "place2dTexture1.s" "ZBrushDispMap.s";
connectAttr "place2dTexture1.wu" "ZBrushDispMap.wu";
connectAttr "place2dTexture1.wv" "ZBrushDispMap.wv";
connectAttr "place2dTexture1.re" "ZBrushDispMap.re";
connectAttr "place2dTexture1.of" "ZBrushDispMap.of";
connectAttr "place2dTexture1.r" "ZBrushDispMap.ro";
connectAttr "place2dTexture1.n" "ZBrushDispMap.n";
connectAttr "place2dTexture1.vt1" "ZBrushDispMap.vt1";
connectAttr "place2dTexture1.vt2" "ZBrushDispMap.vt2";
connectAttr "place2dTexture1.vt3" "ZBrushDispMap.vt3";
connectAttr "place2dTexture1.vc1" "ZBrushDispMap.vc1";
connectAttr "place2dTexture1.o" "ZBrushDispMap.uv";
connectAttr "place2dTexture1.ofs" "ZBrushDispMap.fs";]
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "[ZBrush,WriteString,FileName]_blinnSG.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[3].sllk";
connectAttr "[ZBrush,WriteString,FileName]_blinnSG.msg" "lightLinker1.slnk[3].solk";
connectAttr "[ZBrush,WriteString,FileName]_blinnSG.pa" ":renderPartition.st" -na;
connectAttr "[ZBrush,WriteString,FileName]_blinn.msg" ":defaultShaderList1.s" -na;
[ZBrush,If,DisplacementMapCount,connectAttr "displacementShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;]
[ZBrush,If,TextureMapCount,connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;]
[ZBrush,If,NormalMapCount,connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NormalMapSettings.msg" ":defaultRenderUtilityList1.u" -na;]
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
[ZBrush,If,DisplacementMapCount,connectAttr "ZBrushDispMap.msg" ":defaultTextureList1.tx" -na;]
[ZBrush,If,TextureMapCount,connectAttr "ZBrushTexture.msg" ":defaultTextureList1.tx" -na;]
[ZBrush,If,NormalMapCount,connectAttr "ZBrushNormalMap.msg" ":defaultTextureList1.tx" -na;]
//modelEditor -edit -displayAppearance smoothShaded -activeOnly false modelPanel4;
//[ZBrush,If,[Add,TextureMapCount,NormalMapCount],modelEditor -e -displayTextures 1 modelPanel4;]
//[ZBrush,IfNot,[Add,TextureMapCount,NormalMapCount],modelEditor -e -displayTextures 0 modelPanel4;]
//[ZBrush,If, NormalMapCount ,setRendererInModelPanel hwRender_OpenGL_Renderer modelPanel4;]
//[ZBrush,IfNot, NormalMapCount ,setRendererInModelPanel base_OpenGL_Renderer modelPanel4;]
// End of [ZBrush,WriteString,FileName].ma
[ZBrush,AutoSaveTool]

