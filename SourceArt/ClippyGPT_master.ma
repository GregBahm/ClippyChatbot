//Maya ASCII 2023 scene
//Name: ClippyGPT_master.ma
//Last modified: Wed, Feb 15, 2023 10:24:32 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 10 Enterprise v2009 (Build: 19045)";
fileInfo "UUID" "B910EFF8-43AE-4AEF-DD97-D5B1DB8F4DF7";
createNode transform -s -n "persp";
	rename -uid "2363863F-4FDE-0381-8FC0-06B8C43E777B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.7378131733869679 34.721860794838435 30.744361193617621 ;
	setAttr ".r" -type "double3" -17.738352729286056 -387.39999999981745 -8.9561262811682759e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "675B7B68-4C71-201F-3B12-02B3AF5FC3E0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 36.040501740789303;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 14.625527381896973 21.558083534240723 0.65643379092216492 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8DEC9B65-437E-5119-5BE4-05B40E2C0E3D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.625527381896973 1000.2095124081792 0.65643379092216492 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9530741B-4C9B-11B1-77A9-0EAA4E457548";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 978.65142887393847;
	setAttr ".ow" 4.3734761288291528;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 14.625527381896973 21.558083534240723 0.65643379092216492 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7A6CDB8B-4470-A7A8-2DFE-49A341E2F512";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.625527381896973 21.558083534240723 1007.6349622607041 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A107BAC0-472D-3822-24B4-00960A5AD057";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1006.978528469782;
	setAttr ".ow" 6.6380392498939651;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 14.625527381896973 21.558083534240723 0.65643379092216492 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "787D47C7-4A0F-A41B-7216-1D98628FDD09";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1009.555611392539 21.558083534240723 0.65643379092216492 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AE19A6B1-4F61-032D-3DD3-1EA46BF9194E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 994.93008401064208;
	setAttr ".ow" 5.6103611550135923;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 14.625527381896973 21.558083534240723 0.65643379092216492 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "clippy_grp";
	rename -uid "E2AD14F7-45EE-576F-09CD-26AAAA0843BF";
createNode transform -n "joints_grp" -p "clippy_grp";
	rename -uid "17A75D3D-4306-9225-F328-F0942472DEF3";
createNode joint -n "root_jnt" -p "joints_grp";
	rename -uid "F4EE472A-42DF-2792-F58C-46BC3D6C8A91";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "base_bnd_jnt" -p "root_jnt";
	rename -uid "8F2137BE-47FF-A881-C802-8C89C72DB010";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.20127136803517293 7.6878202333654393 0 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "mid_bnd_jnt" -p "base_bnd_jnt";
	rename -uid "62BFD9FE-48C7-D30A-225A-CCBEFA8B2439";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.14583264291286469 38.039520284200186 0 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "top_bnd_jnt" -p "mid_bnd_jnt";
	rename -uid "6485187B-4BC5-6545-172B-369C6A21511A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.045830249786377 86.277043579276835 0 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_brow_main_bnd_jnt" -p "top_bnd_jnt";
	rename -uid "4AD77DDC-4E61-BC81-C31E-99ADBAD49E59";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.244013786315918 108.32085418701172 7.7682349095608583 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_outer_brow_bnd_jnt" -p "L_brow_main_bnd_jnt";
	rename -uid "948E56B4-4C04-2AC7-2AB1-C4B354D5EE34";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.788713355590385 104.13719725018191 7.7682349095608583 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_outer_brow_bnd_jnt_parentConstraint1" -p "L_outer_brow_bnd_jnt";
	rename -uid "6BF516D7-4D40-A8F8-9DA3-E9AAFD957DE3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_outer_brow_ctrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 7.5446995692744689 -4.1836569368298058 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode joint -n "L_mid_brow_bnd_jnt" -p "L_brow_main_bnd_jnt";
	rename -uid "14EEBFDF-42B4-1281-0575-64B087C41BC1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.684405095506582 108.08959409910179 7.7682349095608583 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_mid_brow_bnd_jnt_parentConstraint1" -p "L_mid_brow_bnd_jnt";
	rename -uid "41D62085-4D3B-7CD1-E061-628A349C6639";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_mid_brow_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 -1.4210854715202004e-14 
		-8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 0.44039130919066238 -0.2312600879099449 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode joint -n "L_inner_brow_bnd_jnt" -p "L_brow_main_bnd_jnt";
	rename -uid "EAD390BB-40CA-A0B1-56F6-589D06A962AB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6789439207524559 107.03895696204717 7.7682349095608583 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_inner_brow_bnd_jnt_parentConstraint1" -p "L_inner_brow_bnd_jnt";
	rename -uid "AE189B42-41B6-700F-FC44-87BDE979D384";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_inner_brow_ctrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-16 -1.4210854715202004e-14 
		-8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" -8.5650698655634621 -1.2818972249645668 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_brow_main_bnd_jnt_parentConstraint1" -p "L_brow_main_bnd_jnt";
	rename -uid "5718FEE0-4D3A-33E5-AACF-B3AB7498DF5E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_brow_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".rst" -type "double3" 13.289844036102297 22.043810607734883 7.7682349095608583 ;
	setAttr -k on ".w0";
createNode joint -n "R_brow_main_bnd_jnt" -p "top_bnd_jnt";
	rename -uid "C224ABC1-4FCF-8BAF-547F-88B8E1F6AC55";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -15.33566951751709 108.321 7.76823 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "R_outer_brow_bnd_jnt" -p "R_brow_main_bnd_jnt";
	rename -uid "8EA44ACE-4AE7-6EAB-C059-9F86C724B42A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -22.880369517517089 104.137 7.76823 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_outer_brow_bnd_jnt_parentConstraint1" -p "R_outer_brow_bnd_jnt";
	rename -uid "A49A6E46-4AAD-1BD6-E7DD-9F96AB6C8D76";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_outer_brow_ctrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 -1.4210854715202004e-14 
		-8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" -7.5446999999999953 -4.1840000000000117 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode joint -n "R_mid_brow_bnd_jnt" -p "R_brow_main_bnd_jnt";
	rename -uid "DC9266D6-4A6F-1F7E-C18E-0E9D08AE3C72";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -15.77606951751709 108.09 7.76823 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_mid_brow_bnd_jnt_parentConstraint1" -p "R_mid_brow_bnd_jnt";
	rename -uid "4AEBF088-40F6-3F03-FA71-929B16140E7E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_mid_brow_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 1.4210854715202004e-14 
		0 ;
	setAttr ".rst" -type "double3" -0.44039999999999857 -0.23099999999998033 0 ;
	setAttr -k on ".w0";
createNode joint -n "R_inner_brow_bnd_jnt" -p "R_brow_main_bnd_jnt";
	rename -uid "6BDAC875-4D66-16A6-A4AA-D18ABC73FE5A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.7706095175170908 107.039 7.76823 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_inner_brow_bnd_jnt_parentConstraint1" -p "R_inner_brow_bnd_jnt";
	rename -uid "A6F9E2FC-4743-F8D9-369C-5CB2C737FA19";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_inner_brow_ctrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 0 -8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 8.565059999999999 -1.2819999999999965 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_brow_main_bnd_jnt_parentConstraint1" -p "R_brow_main_bnd_jnt";
	rename -uid "3052D76F-4999-419C-D19F-81AE099EE6B3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_brow_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -13.289839267730713 22.043956420723163 7.76823 ;
	setAttr -k on ".w0";
createNode joint -n "R_eyeball_bnd_jnt" -p "top_bnd_jnt";
	rename -uid "C28DF548-452A-7DDA-0F4E-D0A1F2278181";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -13.141748905181885 3.6750564207231662 4.22708 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -15.187579154968262 89.952100000000002 4.2270799999999999 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode aimConstraint -n "R_eyeball_bnd_jnt_aimConstraint1" -p "R_eyeball_bnd_jnt";
	rename -uid "B1E83DF1-459A-26BA-DE97-47A1533E9960";
	addAttr -dcb 0 -ci true -sn "w0" -ln "R_eye_ctrlW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 0;
	setAttr ".o" -type "double3" -2.5135054745752943e-05 -0.32230298333920859 0 ;
	setAttr ".rsrr" -type "double3" -7.9535065087543125e-10 6.1922734201725772e-14 -1.4138793996954833e-07 ;
	setAttr -k on ".w0";
createNode joint -n "R_lowerlid_bnd_jnt" -p "R_eyeball_bnd_jnt";
	rename -uid "13107862-4604-149F-E631-818C31ECE737";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -15.187579154968262 89.952100000000002 4.2270799999999999 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "R_upperlid_bnd_jnt" -p "R_eyeball_bnd_jnt";
	rename -uid "0B3C7142-4B35-12D7-D5AE-6EAB8B5271DE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -15.187579154968262 89.952100000000002 4.2270799999999999 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_eyeball_bnd_jnt" -p "top_bnd_jnt";
	rename -uid "B28860F9-4A59-4219-A7D4-308852D715A3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 13.141751766204834 3.6750209348833209 4.2270803451538086 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.095921516418457 89.952064514160156 4.2270803451538086 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode aimConstraint -n "L_eyeball_bnd_jnt_aimConstraint1" -p "L_eyeball_bnd_jnt";
	rename -uid "2578C10D-417B-B6FF-A2A3-5FA5758B9DE5";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_eye_ctrlW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 0;
	setAttr ".o" -type "double3" -4.1573273419885382e-06 0.062040894958242977 -3.7026551389787203e-25 ;
	setAttr ".rsrr" -type "double3" -4.8744418650514837e-12 -3.1240512250495328e-16 
		4.5016248930271577e-09 ;
	setAttr -k on ".w0";
createNode joint -n "L_upperlid_bnd_jnt" -p "L_eyeball_bnd_jnt";
	rename -uid "CE7B221B-4796-4A57-4D76-2993526B2216";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.095921516418457 89.952064514160156 4.2270803451538086 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_lowerlid_bnd_jnt" -p "L_eyeball_bnd_jnt";
	rename -uid "D70D02EF-4B6C-8A39-8AF7-B987876B7690";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.095921516418457 89.952064514160156 4.2270803451538086 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode parentConstraint -n "top_bnd_jnt_parentConstraint1" -p "top_bnd_jnt";
	rename -uid "3CC257C8-45B1-64B0-1DB5-A6A9AE64AB71";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "top_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -1.8999976068735123 48.237523295076649 0 ;
	setAttr -k on ".w0";
createNode joint -n "R_shoulder_bnd_jnt" -p "mid_bnd_jnt";
	rename -uid "C1078CDC-4770-6AE6-B5E7-82ADEC2FED34";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.387580871582031 48.85107421875 0 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "R_elbow_bnd_jnt" -p "R_shoulder_bnd_jnt";
	rename -uid "2F021D26-4952-DA87-B7F3-A3B05A4798FC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.387580871582031 61.515792846679688 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_wrist_bnd_jnt" -p "R_elbow_bnd_jnt";
	rename -uid "775C3111-4871-AD95-7367-F3ABABF62C63";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.387580871582031 71.059524536132812 0 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "R_wrist_bnd_jnt_parentConstraint1" -p "R_wrist_bnd_jnt";
	rename -uid "D506694F-4BB7-AAB9-4394-D1AB1CD66D2C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_wrist_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -1.4210854715202004e-14 
		0 ;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 9.5437316894531108 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_elbow_bnd_jnt_parentConstraint1" -p "R_elbow_bnd_jnt";
	rename -uid "F4A1DCD9-48A4-117E-BD49-68B4A1192409";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_elbow_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 7.1054273576010019e-15 
		0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 12.664718627929695 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_shoulder_bnd_jnt_parentConstraint1" -p "R_shoulder_bnd_jnt";
	rename -uid "96E7CEEC-45DA-3C80-51E8-C2A1670AE5D2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_shoulder_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".rst" -type "double3" -11.241748228669165 10.811553934549814 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "mid_bnd_jnt_parentConstraint1" -p "mid_bnd_jnt";
	rename -uid "3E935497-4702-64FC-3B1C-3A94C3A767B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "mid_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0.055438725122308241 30.351700050834747 0 ;
	setAttr -k on ".w0";
createNode joint -n "L_shoulder_bnd_jnt" -p "base_bnd_jnt";
	rename -uid "BF394736-4184-5418-3779-5EAD5F167E73";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 14.89592170715332 23.738473892211914 0 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_elbow_bnd_jnt" -p "L_shoulder_bnd_jnt";
	rename -uid "52616A13-4A7B-4220-617E-F2B9DB84C619";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 14.89592170715332 43.645751953125 0 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_wrist_bnd_jnt" -p "L_elbow_bnd_jnt";
	rename -uid "8DB7CFAC-4AA5-6C5B-43E2-5B80678DBF83";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 14.89592170715332 64.756919860839844 0 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_wrist_bnd_jnt_parentConstraint1" -p "L_wrist_bnd_jnt";
	rename -uid "C68DD7B5-4914-E726-4143-9EBE44892CB3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_wrist_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-15 21.111167907714844 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_elbow_bnd_jnt_parentConstraint1" -p "L_elbow_bnd_jnt";
	rename -uid "D70F7559-4B8A-437B-1C09-428C051C34C5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_elbow_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 19.907278060913086 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_shoulder_bnd_jnt_parentConstraint1" -p "L_shoulder_bnd_jnt";
	rename -uid "4E4804BE-487D-F4E3-8B11-6A85EE2E28B1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_shoulder_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".rst" -type "double3" 15.097193075188491 16.050653658846475 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "base_bnd_jnt_parentConstraint1" -p "base_bnd_jnt";
	rename -uid "4D88405B-4F51-9814-CE6A-27A6F1EE64E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -0.20127136803517293 7.6878202333654393 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "base_bnd_jnt_scaleConstraint1" -p "base_bnd_jnt";
	rename -uid "30B20878-4198-65ED-97B2-D1AB7B558849";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_ctrlW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "root_jnt_parentConstraint1" -p "root_jnt";
	rename -uid "F53433E4-40E2-CB45-727D-EBB450D95F20";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_ctrlW0" -dv 1 -min 0 -at "double";
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
createNode scaleConstraint -n "root_jnt_scaleConstraint1" -p "root_jnt";
	rename -uid "DB2C381F-45A7-FF07-B6DF-80AA93A1EAD7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_ctrlW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "mesh_grp" -p "clippy_grp";
	rename -uid "CAB29517-4CBD-D61C-D96F-B39271998E5D";
createNode transform -n "Clippy_mesh" -p "mesh_grp";
	rename -uid "096214A6-416B-A856-0F2A-1ABDE8BD0827";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.6140203475952148 64.312447547912598 4.2270781993865967 ;
	setAttr ".sp" -type "double3" -1.6140203475952148 64.312447547912598 4.2270781993865967 ;
createNode mesh -n "Clippy_meshShape" -p "Clippy_mesh";
	rename -uid "0939D851-4751-5A76-379B-73A1BBA9C1F4";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.27983506768941879 0.092015489935874939 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".pt";
	setAttr ".pt[531]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[532]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[544]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[545]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[557]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[558]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[570]" -type "float3" 0 -2.3841858e-07 -5.2154064e-07 ;
	setAttr ".pt[571]" -type "float3" 0 -1.1920929e-07 -5.2154064e-07 ;
	setAttr ".pt[583]" -type "float3" 0 -2.3841858e-07 -5.2154064e-07 ;
	setAttr ".pt[584]" -type "float3" 0 -1.1920929e-07 -5.2154064e-07 ;
	setAttr ".pt[596]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[597]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[609]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[610]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[622]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[623]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[635]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".pt[636]" -type "float3" 0 3.5762787e-07 0 ;
	setAttr ".pt[648]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".pt[649]" -type "float3" 0 3.5762787e-07 0 ;
	setAttr ".pt[661]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".pt[662]" -type "float3" 0 3.5762787e-07 0 ;
	setAttr ".pt[675]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[688]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[701]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[714]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[727]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[740]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[753]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[765]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[766]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[778]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[779]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[1440]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1441]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1442]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1443]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1444]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1445]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1446]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1447]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1448]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1449]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1450]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1451]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1452]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1453]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1454]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1455]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1456]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1457]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1458]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[1459]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "Clippy_meshShapeOrig" -p "Clippy_mesh";
	rename -uid "8CB0119E-4514-D942-5D20-2990AB4FBBA6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4330 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.033650324 0.54742467 0.054165706
		 0.54742467 0.074681088 0.54742467 0.0951965 0.54742467 0.11571191 0.54742467 0.13622729
		 0.54742467 0.15674268 0.54742467 0.17725806 0.54742467 0.19777347 0.54742467 0.21828885
		 0.54742467 0.23880427 0.54742467 0.25931966 0.54742467 0.50550449 0.54742467 0.52601987
		 0.54742467 0.033650324 0.52280617 0.054165706 0.52280617 0.074681088 0.52280617 0.0951965
		 0.52280617 0.11571191 0.52280617 0.13622729 0.52280617 0.15674268 0.52280617 0.17725806
		 0.52280617 0.19777347 0.52280617 0.21828885 0.52280617 0.23880427 0.52280617 0.25931966
		 0.52280617 0.50550449 0.52280617 0.52601987 0.52280617 0.033650324 0.49818769 0.054165706
		 0.49818769 0.074681088 0.49818769 0.0951965 0.49818769 0.11571191 0.49818769 0.13622729
		 0.49818769 0.15674268 0.49818769 0.17725806 0.49818769 0.19777347 0.49818769 0.21828885
		 0.49818769 0.23880427 0.49818769 0.25931966 0.49818769 0.50550449 0.49818769 0.52601987
		 0.49818769 0.033650324 0.47356918 0.054165706 0.47356918 0.074681088 0.47356918 0.0951965
		 0.47356918 0.11571191 0.47356918 0.13622729 0.47356918 0.15674268 0.47356918 0.17725806
		 0.47356918 0.19777347 0.47356918 0.21828885 0.47356918 0.23880427 0.47356918 0.25931966
		 0.47356918 0.50550449 0.47356918 0.52601987 0.47356918 0.033650324 0.44895074 0.054165706
		 0.44895074 0.074681088 0.44895074 0.0951965 0.44895074 0.11571191 0.44895074 0.13622729
		 0.44895074 0.15674268 0.44895074 0.17725806 0.44895074 0.19777347 0.44895074 0.21828885
		 0.44895074 0.23880427 0.44895074 0.25931966 0.44895074 0.50550449 0.44895074 0.52601987
		 0.44895074 0.033650324 0.42433223 0.054165706 0.42433223 0.074681088 0.42433223 0.0951965
		 0.42433223 0.11571191 0.42433223 0.13622729 0.42433223 0.15674268 0.42433223 0.17725806
		 0.42433223 0.19777347 0.42433223 0.21828885 0.42433223 0.23880427 0.42433223 0.25931966
		 0.42433223 0.50550449 0.42433223 0.52601987 0.42433223 0.033650324 0.39971372 0.054165706
		 0.39971372 0.074681088 0.39971372 0.0951965 0.39971372 0.11571191 0.39971372 0.13622729
		 0.39971372 0.15674268 0.39971372 0.17725806 0.39971372 0.19777347 0.39971372 0.21828885
		 0.39971372 0.23880427 0.39971372 0.25931966 0.39971372 0.50550449 0.39971372 0.52601987
		 0.39971372 0.033650324 0.37509528 0.054165706 0.37509528 0.074681088 0.37509528 0.0951965
		 0.37509528 0.11571191 0.37509528 0.13622729 0.37509528 0.15674268 0.37509528 0.17725806
		 0.37509528 0.19777347 0.37509528 0.21828885 0.37509528 0.23880427 0.37509528 0.25931966
		 0.37509528 0.50550449 0.37509528 0.52601987 0.37509528 0.033650324 0.35047677 0.054165706
		 0.35047677 0.074681088 0.35047677 0.0951965 0.35047677 0.11571191 0.35047677 0.13622729
		 0.35047677 0.15674268 0.35047677 0.17725806 0.35047677 0.19777347 0.35047677 0.21828885
		 0.35047677 0.23880427 0.35047677 0.25931966 0.35047677 0.50550449 0.35047677 0.52601987
		 0.35047677 0.033650324 0.32585832 0.054165706 0.32585832 0.074681088 0.32585832 0.0951965
		 0.32585832 0.11571191 0.32585832 0.13622729 0.32585832 0.15674268 0.32585832 0.17725806
		 0.32585832 0.19777347 0.32585832 0.21828885 0.32585832 0.23880427 0.32585832 0.25931966
		 0.32585832 0.50550449 0.32585832 0.52601987 0.32585832 0.033650324 0.30123985 0.054165706
		 0.30123985 0.074681088 0.30123985 0.0951965 0.30123985 0.11571191 0.30123985 0.13622729
		 0.30123985 0.15674268 0.30123985 0.17725806 0.30123985 0.19777347 0.30123985 0.21828885
		 0.30123985 0.23880427 0.30123985 0.25931966 0.30123985 0.50550449 0.30123985 0.52601987
		 0.30123985 0.033650324 0.27662134 0.054165706 0.27662134 0.074681088 0.27662134 0.0951965
		 0.27662134 0.11571191 0.27662134 0.13622729 0.27662134 0.15674268 0.27662134 0.17725806
		 0.27662134 0.19777347 0.27662134 0.21828885 0.27662134 0.23880427 0.27662134 0.25931966
		 0.27662134 0.50550449 0.27662134 0.52601987 0.27662134 0.033650324 0.25200287 0.054165706
		 0.25200287 0.074681088 0.25200287 0.0951965 0.25200287 0.11571191 0.25200287 0.13622729
		 0.25200287 0.15674268 0.25200287 0.17725806 0.25200287 0.19777347 0.25200287 0.21828885
		 0.25200287 0.23880427 0.25200287 0.25931966 0.25200287 0.50550449 0.25200287 0.52601987
		 0.25200287 0.033650324 0.22738439 0.054165706 0.22738439 0.074681088 0.22738439 0.0951965
		 0.22738439 0.11571191 0.22738439 0.13622729 0.22738439 0.15674268 0.22738439 0.17725806
		 0.22738439 0.19777347 0.22738439 0.21828885 0.22738439 0.23880427 0.22738439 0.25931966
		 0.22738439 0.50550449 0.22738439 0.52601987 0.22738439 0.033650324 0.20276591 0.054165706
		 0.20276591 0.074681088 0.20276591 0.0951965 0.20276591 0.11571191 0.20276591 0.13622729
		 0.20276591 0.15674268 0.20276591 0.17725806 0.20276591 0.19777347 0.20276591 0.21828885
		 0.20276591 0.23880427 0.20276591 0.25931966 0.20276591 0.50550449 0.20276591 0.52601987
		 0.20276591 0.033650324 0.17814744 0.054165706 0.17814744 0.074681088 0.17814744 0.0951965
		 0.17814744 0.11571191 0.17814744 0.13622729 0.17814744 0.15674268 0.17814744 0.17725806
		 0.17814744 0.19777347 0.17814744 0.21828885 0.17814744 0.23880427 0.17814744 0.25931966
		 0.17814744 0.50550449 0.17814744 0.52601987 0.17814744 0.033650324 0.15352896 0.054165706
		 0.15352896 0.074681088 0.15352896 0.0951965 0.15352896 0.11571191 0.15352896 0.13622729
		 0.15352896 0.15674268 0.15352896 0.17725806 0.15352896 0.19777347 0.15352896 0.21828885
		 0.15352896 0.23880427 0.15352896 0.25931966 0.15352896 0.50550449 0.15352896 0.52601987
		 0.15352896 0.033650324 0.12891048 0.054165706 0.12891048 0.074681088 0.12891048 0.0951965
		 0.12891048 0.11571191 0.12891048 0.13622729 0.12891048 0.15674268 0.12891048 0.17725806
		 0.12891048 0.19777347 0.12891048 0.21828885 0.12891048 0.23880427 0.12891048 0.25931966
		 0.12891048;
	setAttr ".uvst[0].uvsp[250:499]" 0.50550449 0.12891048 0.52601987 0.12891048
		 0.033650324 0.10429201 0.054165706 0.10429201 0.074681088 0.10429201 0.0951965 0.10429201
		 0.11571191 0.10429201 0.13622729 0.10429201 0.15674268 0.10429201 0.17725806 0.10429201
		 0.19777347 0.10429201 0.21828885 0.10429201 0.23880427 0.10429201 0.25931966 0.10429201
		 0.50550449 0.10429201 0.52601987 0.10429201 0.033650324 0.079673529 0.054165706 0.079673529
		 0.074681088 0.079673529 0.0951965 0.079673529 0.11571191 0.079673529 0.13622729 0.079673529
		 0.15674268 0.079673529 0.17725806 0.079673529 0.19777347 0.079673529 0.21828885 0.079673529
		 0.23880427 0.079673529 0.25931966 0.079673529 0.50550449 0.079673529 0.52601987 0.079673529
		 0.033650324 0.055055052 0.054165706 0.055055052 0.074681088 0.055055052 0.0951965
		 0.055055052 0.11571191 0.055055052 0.13622729 0.055055052 0.15674268 0.055055052
		 0.17725806 0.055055052 0.19777347 0.055055052 0.21828885 0.055055052 0.23880427 0.055055052
		 0.25931966 0.055055052 0.50550449 0.055055052 0.52601987 0.055055052 0.27983505 0.54742467
		 0.25931966 0.54742467 0.25931966 0.52280617 0.27983505 0.52280617 0.30035043 0.54742467
		 0.30035043 0.52280617 0.32086587 0.54742467 0.32086587 0.52280617 0.34138125 0.54742467
		 0.34138125 0.52280617 0.36189669 0.54742467 0.36189669 0.52280617 0.38241208 0.54742467
		 0.38241208 0.52280617 0.40292746 0.54742467 0.40292746 0.52280617 0.4234429 0.54742467
		 0.4234429 0.52280617 0.44395828 0.54742467 0.44395828 0.52280617 0.46447366 0.54742467
		 0.46447366 0.52280617 0.48498911 0.54742467 0.48498911 0.52280617 0.50550449 0.54742467
		 0.50550449 0.52280617 0.25931966 0.49818769 0.27983505 0.49818769 0.30035043 0.49818769
		 0.32086587 0.49818769 0.34138125 0.49818769 0.36189669 0.49818769 0.38241208 0.49818769
		 0.40292746 0.49818769 0.4234429 0.49818769 0.44395828 0.49818769 0.46447366 0.49818769
		 0.48498911 0.49818769 0.50550449 0.49818769 0.25931966 0.47356918 0.27983505 0.47356918
		 0.30035043 0.47356918 0.32086587 0.47356918 0.34138125 0.47356918 0.36189669 0.47356918
		 0.38241208 0.47356918 0.40292746 0.47356918 0.4234429 0.47356918 0.44395828 0.47356918
		 0.46447366 0.47356918 0.48498911 0.47356918 0.50550449 0.47356918 0.25931966 0.44895074
		 0.27983505 0.44895074 0.30035043 0.44895074 0.32086587 0.44895074 0.34138125 0.44895074
		 0.36189669 0.44895074 0.38241208 0.44895074 0.40292746 0.44895074 0.4234429 0.44895074
		 0.44395828 0.44895074 0.46447366 0.44895074 0.48498911 0.44895074 0.50550449 0.44895074
		 0.25931966 0.42433223 0.27983505 0.42433223 0.30035043 0.42433223 0.32086587 0.42433223
		 0.34138125 0.42433223 0.36189669 0.42433223 0.38241208 0.42433223 0.40292746 0.42433223
		 0.4234429 0.42433223 0.44395828 0.42433223 0.46447366 0.42433223 0.48498911 0.42433223
		 0.50550449 0.42433223 0.25931966 0.39971372 0.27983505 0.39971372 0.30035043 0.39971372
		 0.32086587 0.39971372 0.34138125 0.39971372 0.36189669 0.39971372 0.38241208 0.39971372
		 0.40292746 0.39971372 0.4234429 0.39971372 0.44395828 0.39971372 0.46447366 0.39971372
		 0.48498911 0.39971372 0.50550449 0.39971372 0.25931966 0.37509528 0.27983505 0.37509528
		 0.30035043 0.37509528 0.32086587 0.37509528 0.34138125 0.37509528 0.36189669 0.37509528
		 0.38241208 0.37509528 0.40292746 0.37509528 0.4234429 0.37509528 0.44395828 0.37509528
		 0.46447366 0.37509528 0.48498911 0.37509528 0.50550449 0.37509528 0.25931966 0.35047677
		 0.27983505 0.35047677 0.30035043 0.35047677 0.32086587 0.35047677 0.34138125 0.35047677
		 0.36189669 0.35047677 0.38241208 0.35047677 0.40292746 0.35047677 0.4234429 0.35047677
		 0.44395828 0.35047677 0.46447366 0.35047677 0.48498911 0.35047677 0.50550449 0.35047677
		 0.25931966 0.32585832 0.27983505 0.32585832 0.30035043 0.32585832 0.32086587 0.32585832
		 0.34138125 0.32585832 0.36189669 0.32585832 0.38241208 0.32585832 0.40292746 0.32585832
		 0.4234429 0.32585832 0.44395828 0.32585832 0.46447366 0.32585832 0.48498911 0.32585832
		 0.50550449 0.32585832 0.25931966 0.30123985 0.27983505 0.30123985 0.30035043 0.30123985
		 0.32086587 0.30123985 0.34138125 0.30123985 0.36189669 0.30123985 0.38241208 0.30123985
		 0.40292746 0.30123985 0.4234429 0.30123985 0.44395828 0.30123985 0.46447366 0.30123985
		 0.48498911 0.30123985 0.50550449 0.30123985 0.25931966 0.27662134 0.27983505 0.27662134
		 0.30035043 0.27662134 0.32086587 0.27662134 0.34138125 0.27662134 0.36189669 0.27662134
		 0.38241208 0.27662134 0.40292746 0.27662134 0.4234429 0.27662134 0.44395828 0.27662134
		 0.46447366 0.27662134 0.48498911 0.27662134 0.50550449 0.27662134 0.25931966 0.25200287
		 0.27983505 0.25200287 0.30035043 0.25200287 0.32086587 0.25200287 0.34138125 0.25200287
		 0.36189669 0.25200287 0.38241208 0.25200287 0.40292746 0.25200287 0.4234429 0.25200287
		 0.44395828 0.25200287 0.46447366 0.25200287 0.48498911 0.25200287 0.50550449 0.25200287
		 0.25931966 0.22738439 0.27983505 0.22738439 0.30035043 0.22738439 0.32086587 0.22738439
		 0.34138125 0.22738439 0.36189669 0.22738439 0.38241208 0.22738439 0.40292746 0.22738439
		 0.4234429 0.22738439 0.44395828 0.22738439 0.46447366 0.22738439 0.48498911 0.22738439
		 0.50550449 0.22738439 0.25931966 0.20276591 0.27983505 0.20276591 0.30035043 0.20276591
		 0.32086587 0.20276591 0.34138125 0.20276591 0.36189669 0.20276591 0.38241208 0.20276591
		 0.40292746 0.20276591 0.4234429 0.20276591 0.44395828 0.20276591 0.46447366 0.20276591
		 0.48498911 0.20276591 0.50550449 0.20276591 0.25931966 0.17814744 0.27983505 0.17814744
		 0.30035043 0.17814744 0.32086587 0.17814744 0.34138125 0.17814744 0.36189669 0.17814744
		 0.38241208 0.17814744 0.40292746 0.17814744 0.4234429 0.17814744 0.44395828 0.17814744
		 0.46447366 0.17814744;
	setAttr ".uvst[0].uvsp[500:749]" 0.48498911 0.17814744 0.50550449 0.17814744
		 0.25931966 0.15352896 0.27983505 0.15352896 0.30035043 0.15352896 0.32086587 0.15352896
		 0.34138125 0.15352896 0.36189669 0.15352896 0.38241208 0.15352896 0.40292746 0.15352896
		 0.4234429 0.15352896 0.44395828 0.15352896 0.46447366 0.15352896 0.48498911 0.15352896
		 0.50550449 0.15352896 0.25931966 0.12891048 0.27983505 0.12891048 0.30035043 0.12891048
		 0.32086587 0.12891048 0.34138125 0.12891048 0.36189669 0.12891048 0.38241208 0.12891048
		 0.40292746 0.12891048 0.4234429 0.12891048 0.44395828 0.12891048 0.46447366 0.12891048
		 0.48498911 0.12891048 0.50550449 0.12891048 0.25931966 0.10429201 0.27983505 0.10429201
		 0.30035043 0.10429201 0.32086587 0.10429201 0.34138125 0.10429201 0.36189669 0.10429201
		 0.38241208 0.10429201 0.40292746 0.10429201 0.4234429 0.10429201 0.44395828 0.10429201
		 0.46447366 0.10429201 0.48498911 0.10429201 0.50550449 0.10429201 0.25931966 0.079673529
		 0.27983505 0.079673529 0.30035043 0.079673529 0.32086587 0.079673529 0.34138125 0.079673529
		 0.36189669 0.079673529 0.38241208 0.079673529 0.40292746 0.079673529 0.4234429 0.079673529
		 0.44395828 0.079673529 0.46447366 0.079673529 0.48498911 0.079673529 0.50550449 0.079673529
		 0.25931966 0.055055052 0.27983505 0.055055052 0.30035043 0.055055052 0.32086587 0.055055052
		 0.34138125 0.055055052 0.36189669 0.055055052 0.38241208 0.055055052 0.40292746 0.055055052
		 0.4234429 0.055055052 0.44395828 0.055055052 0.46447366 0.055055052 0.48498911 0.055055052
		 0.50550449 0.055055052 0.27983505 0.54742467 0.25931966 0.54742467 0.25931966 0.52280617
		 0.27983505 0.52280617 0.30035043 0.54742467 0.30035043 0.52280617 0.32086587 0.54742467
		 0.32086587 0.52280617 0.34138125 0.54742467 0.34138125 0.52280617 0.36189669 0.54742467
		 0.36189669 0.52280617 0.38241208 0.54742467 0.38241208 0.52280617 0.40292746 0.54742467
		 0.40292746 0.52280617 0.4234429 0.54742467 0.4234429 0.52280617 0.44395828 0.54742467
		 0.44395828 0.52280617 0.46447366 0.54742467 0.46447366 0.52280617 0.48498911 0.54742467
		 0.48498911 0.52280617 0.50550449 0.54742467 0.50550449 0.52280617 0.25931966 0.49818769
		 0.27983505 0.49818769 0.30035043 0.49818769 0.32086587 0.49818769 0.34138125 0.49818769
		 0.36189669 0.49818769 0.38241208 0.49818769 0.40292746 0.49818769 0.4234429 0.49818769
		 0.44395828 0.49818769 0.46447366 0.49818769 0.48498911 0.49818769 0.50550449 0.49818769
		 0.25931966 0.47356918 0.27983505 0.47356918 0.30035043 0.47356918 0.32086587 0.47356918
		 0.34138125 0.47356918 0.36189669 0.47356918 0.38241208 0.47356918 0.40292746 0.47356918
		 0.4234429 0.47356918 0.44395828 0.47356918 0.46447366 0.47356918 0.48498911 0.47356918
		 0.50550449 0.47356918 0.25931966 0.44895074 0.27983505 0.44895074 0.30035043 0.44895074
		 0.32086587 0.44895074 0.34138125 0.44895074 0.36189669 0.44895074 0.38241208 0.44895074
		 0.40292746 0.44895074 0.4234429 0.44895074 0.44395828 0.44895074 0.46447366 0.44895074
		 0.48498911 0.44895074 0.50550449 0.44895074 0.25931966 0.42433223 0.27983505 0.42433223
		 0.30035043 0.42433223 0.32086587 0.42433223 0.34138125 0.42433223 0.36189669 0.42433223
		 0.38241208 0.42433223 0.40292746 0.42433223 0.4234429 0.42433223 0.44395828 0.42433223
		 0.46447366 0.42433223 0.48498911 0.42433223 0.50550449 0.42433223 0.25931966 0.39971372
		 0.27983505 0.39971372 0.30035043 0.39971372 0.32086587 0.39971372 0.34138125 0.39971372
		 0.36189669 0.39971372 0.38241208 0.39971372 0.40292746 0.39971372 0.4234429 0.39971372
		 0.44395828 0.39971372 0.46447366 0.39971372 0.48498911 0.39971372 0.50550449 0.39971372
		 0.25931966 0.37509528 0.27983505 0.37509528 0.30035043 0.37509528 0.32086587 0.37509528
		 0.34138125 0.37509528 0.36189669 0.37509528 0.38241208 0.37509528 0.40292746 0.37509528
		 0.4234429 0.37509528 0.44395828 0.37509528 0.46447366 0.37509528 0.48498911 0.37509528
		 0.50550449 0.37509528 0.25931966 0.35047677 0.27983505 0.35047677 0.30035043 0.35047677
		 0.32086587 0.35047677 0.34138125 0.35047677 0.36189669 0.35047677 0.38241208 0.35047677
		 0.40292746 0.35047677 0.4234429 0.35047677 0.44395828 0.35047677 0.46447366 0.35047677
		 0.48498911 0.35047677 0.50550449 0.35047677 0.25931966 0.32585832 0.27983505 0.32585832
		 0.30035043 0.32585832 0.32086587 0.32585832 0.34138125 0.32585832 0.36189669 0.32585832
		 0.38241208 0.32585832 0.40292746 0.32585832 0.4234429 0.32585832 0.44395828 0.32585832
		 0.46447366 0.32585832 0.48498911 0.32585832 0.50550449 0.32585832 0.25931966 0.30123985
		 0.27983505 0.30123985 0.30035043 0.30123985 0.32086587 0.30123985 0.34138125 0.30123985
		 0.36189669 0.30123985 0.38241208 0.30123985 0.40292746 0.30123985 0.4234429 0.30123985
		 0.44395828 0.30123985 0.46447366 0.30123985 0.48498911 0.30123985 0.50550449 0.30123985
		 0.25931966 0.27662134 0.27983505 0.27662134 0.30035043 0.27662134 0.32086587 0.27662134
		 0.34138125 0.27662134 0.36189669 0.27662134 0.38241208 0.27662134 0.40292746 0.27662134
		 0.4234429 0.27662134 0.44395828 0.27662134 0.46447366 0.27662134 0.48498911 0.27662134
		 0.50550449 0.27662134 0.25931966 0.25200287 0.27983505 0.25200287 0.30035043 0.25200287
		 0.32086587 0.25200287 0.34138125 0.25200287 0.36189669 0.25200287 0.38241208 0.25200287
		 0.40292746 0.25200287 0.4234429 0.25200287 0.44395828 0.25200287 0.46447366 0.25200287
		 0.48498911 0.25200287 0.50550449 0.25200287 0.25931966 0.22738439 0.27983505 0.22738439
		 0.30035043 0.22738439 0.32086587 0.22738439 0.34138125 0.22738439 0.36189669 0.22738439
		 0.38241208 0.22738439 0.40292746 0.22738439 0.4234429 0.22738439 0.44395828 0.22738439
		 0.46447366 0.22738439 0.48498911 0.22738439 0.50550449 0.22738439 0.25931966 0.20276591;
	setAttr ".uvst[0].uvsp[750:999]" 0.27983505 0.20276591 0.30035043 0.20276591
		 0.32086587 0.20276591 0.34138125 0.20276591 0.36189669 0.20276591 0.38241208 0.20276591
		 0.40292746 0.20276591 0.4234429 0.20276591 0.44395828 0.20276591 0.46447366 0.20276591
		 0.48498911 0.20276591 0.50550449 0.20276591 0.25931966 0.17814744 0.27983505 0.17814744
		 0.30035043 0.17814744 0.32086587 0.17814744 0.34138125 0.17814744 0.36189669 0.17814744
		 0.38241208 0.17814744 0.40292746 0.17814744 0.4234429 0.17814744 0.44395828 0.17814744
		 0.46447366 0.17814744 0.48498911 0.17814744 0.50550449 0.17814744 0.25931966 0.15352896
		 0.27983505 0.15352896 0.30035043 0.15352896 0.32086587 0.15352896 0.34138125 0.15352896
		 0.36189669 0.15352896 0.38241208 0.15352896 0.40292746 0.15352896 0.4234429 0.15352896
		 0.44395828 0.15352896 0.46447366 0.15352896 0.48498911 0.15352896 0.50550449 0.15352896
		 0.25931966 0.12891048 0.27983505 0.12891048 0.30035043 0.12891048 0.32086587 0.12891048
		 0.34138125 0.12891048 0.36189669 0.12891048 0.38241208 0.12891048 0.40292746 0.12891048
		 0.4234429 0.12891048 0.44395828 0.12891048 0.46447366 0.12891048 0.48498911 0.12891048
		 0.50550449 0.12891048 0.25931966 0.10429201 0.27983505 0.10429201 0.30035043 0.10429201
		 0.32086587 0.10429201 0.34138125 0.10429201 0.36189669 0.10429201 0.38241208 0.10429201
		 0.40292746 0.10429201 0.4234429 0.10429201 0.44395828 0.10429201 0.46447366 0.10429201
		 0.48498911 0.10429201 0.50550449 0.10429201 0.25931966 0.079673529 0.27983505 0.079673529
		 0.30035043 0.079673529 0.32086587 0.079673529 0.34138125 0.079673529 0.36189669 0.079673529
		 0.38241208 0.079673529 0.40292746 0.079673529 0.4234429 0.079673529 0.44395828 0.079673529
		 0.46447366 0.079673529 0.48498911 0.079673529 0.50550449 0.079673529 0.25931966 0.055055052
		 0.27983505 0.055055052 0.30035043 0.055055052 0.32086587 0.055055052 0.34138125 0.055055052
		 0.36189669 0.055055052 0.38241208 0.055055052 0.40292746 0.055055052 0.4234429 0.055055052
		 0.44395828 0.055055052 0.46447366 0.055055052 0.48498911 0.055055052 0.50550449 0.055055052
		 0.50550449 0.52280617 0.50550449 0.54742467 0.50550449 0.055055052 0.50550449 0.079673529
		 0.50550449 0.10429201 0.50550449 0.12891048 0.50550449 0.15352896 0.50550449 0.17814744
		 0.50550449 0.20276591 0.50550449 0.22738439 0.50550449 0.25200287 0.50550449 0.27662134
		 0.50550449 0.30123982 0.50550449 0.32585832 0.50550449 0.35047677 0.50550449 0.37509528
		 0.50550449 0.39971372 0.50550449 0.42433223 0.50550449 0.44895068 0.50550449 0.47356918
		 0.50550449 0.49818763 0.50550449 0.52280617 0.50550449 0.54742467 0.50550449 0.055055052
		 0.50550449 0.079673529 0.50550449 0.10429201 0.50550449 0.12891048 0.50550449 0.15352896
		 0.50550449 0.17814744 0.50550449 0.20276588 0.50550449 0.22738439 0.50550449 0.25200287
		 0.50550449 0.27662134 0.50550449 0.30123982 0.50550449 0.32585832 0.50550449 0.35047677
		 0.50550449 0.37509528 0.50550449 0.39971372 0.50550449 0.42433223 0.50550449 0.44895068
		 0.50550449 0.47356912 0.50550449 0.49818763 0.50550449 0.52280617 0.50550449 0.54742467
		 0.50550449 0.055055052 0.50550449 0.079673529 0.50550449 0.10429201 0.50550449 0.12891048
		 0.50550449 0.15352896 0.50550449 0.17814744 0.50550449 0.20276588 0.50550449 0.22738439
		 0.50550449 0.25200289 0.50550449 0.27662134 0.50550449 0.30123985 0.50550449 0.32585832
		 0.50550449 0.35047677 0.50550449 0.37509528 0.50550449 0.39971372 0.50550449 0.42433223
		 0.50550449 0.44895068 0.50550449 0.47356918 0.50550449 0.49818763 0.50550449 0.52280617
		 0.50550449 0.54742467 0.50550449 0.055055052 0.50550449 0.079673529 0.50550449 0.10429201
		 0.50550449 0.12891048 0.50550449 0.15352896 0.50550449 0.17814744 0.50550449 0.20276588
		 0.50550449 0.22738439 0.50550449 0.25200289 0.50550449 0.27662134 0.50550449 0.30123985
		 0.50550449 0.32585832 0.50550449 0.35047677 0.50550449 0.37509528 0.50550449 0.39971372
		 0.50550449 0.42433223 0.50550449 0.44895074 0.50550449 0.47356918 0.50550449 0.49818763
		 0.50550449 0.52280617 0.50550449 0.54742467 0.50550449 0.055055052 0.50550449 0.079673529
		 0.50550449 0.10429201 0.50550449 0.12891051 0.50550449 0.15352896 0.50550449 0.17814744
		 0.50550449 0.20276588 0.50550449 0.22738439 0.50550449 0.25200289 0.50550449 0.27662134
		 0.50550449 0.30123985 0.50550449 0.32585832 0.50550449 0.35047677 0.50550449 0.37509528
		 0.50550449 0.39971372 0.50550449 0.42433223 0.50550449 0.44895074 0.50550449 0.47356918
		 0.50550449 0.49818769 0.50550449 0.52280617 0.50550449 0.54742467 0.50550449 0.055055052
		 0.50550449 0.079673529 0.50550449 0.10429201 0.50550449 0.12891051 0.50550449 0.15352896
		 0.50550449 0.17814744 0.50550449 0.20276588 0.50550449 0.22738439 0.50550449 0.25200289
		 0.50550449 0.27662134 0.50550449 0.30123985 0.50550449 0.32585832 0.50550449 0.35047677
		 0.50550449 0.37509522 0.50550449 0.39971372 0.50550449 0.42433223 0.50550449 0.44895074
		 0.50550449 0.47356918 0.50550449 0.49818769 0.50550455 0.52280617 0.50550455 0.54742467
		 0.50550455 0.055055052 0.50550455 0.079673529 0.50550455 0.10429201 0.50550455 0.12891051
		 0.50550455 0.15352896 0.50550455 0.17814744 0.50550455 0.20276588 0.50550455 0.22738439
		 0.50550455 0.25200289 0.50550455 0.27662134 0.50550455 0.30123985 0.50550455 0.32585832
		 0.50550455 0.35047677 0.50550455 0.37509528 0.50550455 0.39971372 0.50550455 0.42433223
		 0.50550455 0.44895074 0.50550455 0.47356918 0.50550455 0.49818769 0.50550455 0.52280617
		 0.50550455 0.54742467 0.50550455 0.055055052 0.50550455 0.079673529 0.50550455 0.10429201
		 0.50550455 0.12891051 0.50550455 0.15352896 0.50550455 0.17814744 0.50550455 0.20276588
		 0.50550455 0.22738439 0.50550455 0.25200289 0.50550455 0.27662134 0.50550455 0.30123985;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.50550455 0.32585832 0.50550455 0.35047677
		 0.50550455 0.37509528 0.50550455 0.39971372 0.50550455 0.42433223 0.50550455 0.44895074
		 0.50550455 0.47356918 0.50550455 0.49818769 0.50550449 0.52280617 0.50550449 0.54742467
		 0.50550449 0.055055052 0.50550449 0.079673529 0.50550449 0.10429201 0.50550449 0.12891048
		 0.50550449 0.15352896 0.50550449 0.17814744 0.50550449 0.20276588 0.50550449 0.22738439
		 0.50550449 0.25200289 0.50550449 0.27662134 0.50550449 0.30123985 0.50550449 0.32585832
		 0.50550449 0.35047677 0.50550449 0.37509522 0.50550449 0.39971372 0.50550449 0.42433223
		 0.50550449 0.44895068 0.50550449 0.47356918 0.50550449 0.49818769 0.50550449 0.52280617
		 0.50550449 0.54742467 0.50550449 0.055055052 0.50550449 0.079673529 0.50550449 0.10429201
		 0.50550449 0.12891048 0.50550449 0.15352896 0.50550449 0.17814744 0.50550449 0.20276591
		 0.50550449 0.22738439 0.50550449 0.25200287 0.50550449 0.27662134 0.50550449 0.30123985
		 0.50550449 0.32585832 0.50550449 0.35047677 0.50550449 0.37509522 0.50550449 0.39971372
		 0.50550449 0.42433223 0.50550449 0.44895074 0.50550449 0.47356918 0.50550449 0.49818769
		 0.2593196 0.52280617 0.2593196 0.49818763 0.2593196 0.47356918 0.2593196 0.44895068
		 0.2593196 0.42433223 0.2593196 0.39971372 0.2593196 0.37509528 0.2593196 0.35047677
		 0.2593196 0.32585832 0.2593196 0.30123982 0.2593196 0.27662134 0.2593196 0.25200287
		 0.2593196 0.22738439 0.2593196 0.20276591 0.2593196 0.17814744 0.2593196 0.15352896
		 0.2593196 0.12891048 0.2593196 0.10429201 0.2593196 0.079673529 0.2593196 0.055055052
		 0.2593196 0.54742467 0.2593196 0.52280617 0.2593196 0.49818763 0.2593196 0.47356912
		 0.2593196 0.44895068 0.2593196 0.42433223 0.2593196 0.39971372 0.2593196 0.37509528
		 0.2593196 0.35047677 0.2593196 0.32585832 0.2593196 0.30123982 0.2593196 0.27662134
		 0.2593196 0.25200287 0.2593196 0.22738439 0.2593196 0.20276588 0.2593196 0.17814744
		 0.2593196 0.15352896 0.2593196 0.12891048 0.2593196 0.10429201 0.2593196 0.079673529
		 0.2593196 0.055055052 0.2593196 0.54742467 0.2593196 0.52280617 0.2593196 0.49818763
		 0.2593196 0.47356918 0.2593196 0.44895068 0.2593196 0.42433223 0.2593196 0.39971372
		 0.2593196 0.37509528 0.2593196 0.35047677 0.2593196 0.32585832 0.2593196 0.30123985
		 0.2593196 0.27662134 0.2593196 0.25200289 0.2593196 0.22738439 0.2593196 0.20276588
		 0.2593196 0.17814744 0.2593196 0.15352896 0.2593196 0.12891048 0.2593196 0.10429201
		 0.2593196 0.079673529 0.2593196 0.055055052 0.2593196 0.54742467 0.2593196 0.52280617
		 0.2593196 0.49818763 0.2593196 0.47356918 0.2593196 0.44895074 0.2593196 0.42433223
		 0.2593196 0.39971372 0.2593196 0.37509528 0.2593196 0.35047677 0.2593196 0.32585832
		 0.2593196 0.30123985 0.2593196 0.27662134 0.2593196 0.25200289 0.2593196 0.22738439
		 0.2593196 0.20276588 0.2593196 0.17814744 0.2593196 0.15352896 0.2593196 0.12891048
		 0.2593196 0.10429201 0.2593196 0.079673529 0.2593196 0.055055052 0.2593196 0.54742467
		 0.2593196 0.52280617 0.2593196 0.49818769 0.2593196 0.47356918 0.2593196 0.44895074
		 0.2593196 0.42433223 0.2593196 0.39971372 0.2593196 0.37509528 0.2593196 0.35047677
		 0.2593196 0.32585832 0.2593196 0.30123985 0.2593196 0.27662134 0.2593196 0.25200289
		 0.2593196 0.22738439 0.2593196 0.20276588 0.2593196 0.17814744 0.2593196 0.15352896
		 0.2593196 0.12891051 0.2593196 0.10429201 0.2593196 0.079673529 0.2593196 0.055055052
		 0.2593196 0.54742467 0.2593196 0.52280617 0.2593196 0.49818769 0.2593196 0.47356918
		 0.2593196 0.44895074 0.2593196 0.42433223 0.2593196 0.39971372 0.2593196 0.37509522
		 0.2593196 0.35047677 0.2593196 0.32585832 0.2593196 0.30123985 0.2593196 0.27662134
		 0.2593196 0.25200289 0.2593196 0.22738439 0.2593196 0.20276588 0.2593196 0.17814744
		 0.2593196 0.15352896 0.2593196 0.12891051 0.2593196 0.10429201 0.2593196 0.079673529
		 0.2593196 0.055055052 0.2593196 0.54742467 0.25931966 0.52280617 0.25931966 0.49818769
		 0.25931966 0.47356918 0.25931966 0.44895074 0.25931966 0.42433223 0.25931966 0.39971372
		 0.25931966 0.37509528 0.25931966 0.35047677 0.25931966 0.32585832 0.25931966 0.30123985
		 0.25931966 0.27662134 0.25931966 0.25200289 0.25931966 0.22738439 0.25931966 0.20276588
		 0.25931966 0.17814744 0.25931966 0.15352896 0.25931966 0.12891051 0.25931966 0.10429201
		 0.25931966 0.079673529 0.25931966 0.055055052 0.25931966 0.54742467 0.25931966 0.52280617
		 0.25931966 0.49818769 0.25931966 0.47356918 0.25931966 0.44895074 0.25931966 0.42433223
		 0.25931966 0.39971372 0.25931966 0.37509528 0.25931966 0.35047677 0.25931966 0.32585832
		 0.25931966 0.30123985 0.25931966 0.27662134 0.25931966 0.25200289 0.25931966 0.22738439
		 0.25931966 0.20276588 0.25931966 0.17814744 0.25931966 0.15352896 0.25931966 0.12891051
		 0.25931966 0.10429201 0.25931966 0.079673529 0.25931966 0.055055052 0.25931966 0.54742467
		 0.2593196 0.52280617 0.2593196 0.49818769 0.2593196 0.47356918 0.2593196 0.44895068
		 0.2593196 0.42433223 0.2593196 0.39971372 0.2593196 0.37509522 0.2593196 0.35047677
		 0.2593196 0.32585832 0.2593196 0.30123985 0.2593196 0.27662134 0.2593196 0.25200289
		 0.2593196 0.22738439 0.2593196 0.20276588 0.2593196 0.17814744 0.2593196 0.15352896
		 0.2593196 0.12891048 0.2593196 0.10429201 0.2593196 0.079673529 0.2593196 0.055055052
		 0.2593196 0.54742467 0.2593196 0.52280617 0.2593196 0.49818769 0.2593196 0.47356918
		 0.2593196 0.44895074 0.2593196 0.42433223 0.2593196 0.39971372 0.2593196 0.37509522
		 0.2593196 0.35047677 0.2593196 0.32585832 0.2593196 0.30123985 0.2593196 0.27662134;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.2593196 0.25200287 0.2593196 0.22738439
		 0.2593196 0.20276591 0.2593196 0.17814744 0.2593196 0.15352896 0.2593196 0.12891048
		 0.2593196 0.10429201 0.2593196 0.079673529 0.2593196 0.055055052 0.2593196 0.54742467
		 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467 0.033650324 0.055055141 0.52601981 0.055055141 0.52601981 0.54742467 0.033650324
		 0.54742467;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.16687518 0.033650324 0.16687518
		 0.52601981 0.16687518 0.033650324 0.16687518 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.33583662 0.033650324 0.33583662
		 0.52601981 0.33583662 0.033650324 0.33583662 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.47178254 0.033650324 0.47178254
		 0.52601981 0.47178254 0.033650324 0.47178254 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.51533937 0.033650324 0.51533937
		 0.52601981 0.51533937 0.033650324 0.51533937 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.46344623 0.033650324 0.46344623
		 0.52601981 0.46344623 0.033650324 0.46344623 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.41024497 0.033650324 0.41024497
		 0.52601981 0.41024497 0.033650324 0.41024497 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.35878798 0.033650324 0.35878798 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.35878798 0.033650324 0.35878798 0.52601981 0.35878798 0.033650324 0.35878798;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.35878798 0.033650324 0.35878798 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.35878798 0.033650324 0.35878798 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.35878798 0.033650324 0.35878798 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.35878798 0.033650324 0.35878798 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.35878798 0.033650324 0.35878798 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.35878798 0.033650324 0.35878798 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.35878798 0.033650324 0.35878798 0.52601981 0.35878798 0.033650324 0.35878798
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.30645886 0.033650324 0.30645886 0.52601981 0.30645886 0.033650324 0.30645886
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.20398092 0.033650324 0.20398092 0.52601981 0.20398092 0.033650324 0.20398092
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.25325757 0.033650324 0.25325757 0.52601981 0.25325757 0.033650324 0.25325757
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.52601981 0.12897584 0.033650324 0.12897584 0.52601981 0.12897584 0.033650324 0.12897584
		 0.072401643 0.64761794 0.072401643 0.66630602 0.091089725 0.66630602 0.091089725
		 0.64761794 0.10977781 0.66630602 0.10977781 0.64761794 0.12846589 0.66630602 0.12846589
		 0.64761794 0.14715397 0.66630602 0.14715397 0.64761794 0.16584206 0.66630602 0.16584206
		 0.64761794 0.18453014 0.66630602 0.18453014 0.64761794 0.20321834 0.66630602 0.20321834
		 0.64761794 0.2219063 0.66630602 0.2219063 0.64761794 0.24059451 0.66630602 0.24059451
		 0.64761794 0.25928259 0.66630602 0.25928259 0.64761794 0.27797067 0.66630602 0.27797067
		 0.64761794 0.29665875 0.66630602 0.29665875 0.64761794 0.31534684 0.66630602 0.31534684
		 0.64761794 0.33403492 0.66630602 0.33403492 0.64761794 0.352723 0.66630602 0.352723
		 0.64761794 0.072401643 0.68499416 0.091089725 0.68499416 0.10977781 0.68499416 0.12846589
		 0.68499416 0.14715397 0.68499416 0.16584206 0.68499416 0.18453014 0.68499416 0.20321834
		 0.68499416 0.2219063 0.68499416 0.24059451 0.68499416 0.25928259 0.68499416 0.27797067
		 0.68499416 0.29665875 0.68499416 0.31534684 0.68499416 0.33403492 0.68499416 0.352723
		 0.68499416 0.072401643 0.70368224 0.091089725 0.70368224 0.10977781 0.70368224 0.12846589
		 0.70368224 0.14715397 0.70368224 0.16584206 0.70368224 0.18453014 0.70368224 0.20321834
		 0.70368224 0.2219063 0.70368224 0.24059451 0.70368224 0.25928259 0.70368224 0.27797067
		 0.70368224;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.29665875 0.70368224 0.31534684 0.70368224
		 0.33403492 0.70368224 0.352723 0.70368224 0.072401643 0.72237033 0.091089725 0.72237033
		 0.10977781 0.72237033 0.12846589 0.72237033 0.14715397 0.72237033 0.16584206 0.72237033
		 0.18453014 0.72237033 0.20321834 0.72237033 0.2219063 0.72237033 0.24059451 0.72237033
		 0.25928259 0.72237033 0.27797067 0.72237033 0.29665875 0.72237033 0.31534684 0.72237033
		 0.33403492 0.72237033 0.352723 0.72237033 0.072401643 0.74105841 0.091089725 0.74105841
		 0.10977781 0.74105841 0.12846589 0.74105841 0.14715397 0.74105841 0.16584206 0.74105841
		 0.18453014 0.74105841 0.20321834 0.74105841 0.2219063 0.74105841 0.24059451 0.74105841
		 0.25928259 0.74105841 0.27797067 0.74105841 0.29665875 0.74105841 0.31534684 0.74105841
		 0.33403492 0.74105841 0.352723 0.74105841 0.072401643 0.75974649 0.091089725 0.75974649
		 0.10977781 0.75974649 0.12846589 0.75974649 0.14715397 0.75974649 0.16584206 0.75974649
		 0.18453014 0.75974649 0.20321834 0.75974649 0.2219063 0.75974649 0.24059451 0.75974649
		 0.25928259 0.75974649 0.27797067 0.75974649 0.29665875 0.75974649 0.31534684 0.75974649
		 0.33403492 0.75974649 0.352723 0.75974649 0.072401643 0.77843457 0.091089725 0.77843457
		 0.10977781 0.77843457 0.12846589 0.77843457 0.14715397 0.77843457 0.16584206 0.77843457
		 0.18453014 0.77843457 0.20321834 0.77843457 0.2219063 0.77843457 0.24059451 0.77843457
		 0.25928259 0.77843457 0.27797067 0.77843457 0.29665875 0.77843457 0.31534684 0.77843457
		 0.33403492 0.77843457 0.352723 0.77843457 0.072401643 0.79712266 0.091089725 0.79712266
		 0.10977781 0.79712266 0.12846589 0.79712266 0.14715397 0.79712266 0.16584206 0.79712266
		 0.18453014 0.79712266 0.20321834 0.79712266 0.2219063 0.79712266 0.24059451 0.79712266
		 0.25928259 0.79712266 0.27797067 0.79712266 0.29665875 0.79712266 0.31534684 0.79712266
		 0.33403492 0.79712266 0.352723 0.79712266 0.072401643 0.81581074 0.091089725 0.81581074
		 0.10977781 0.81581074 0.12846589 0.81581074 0.14715397 0.81581074 0.16584206 0.81581074
		 0.18453014 0.81581074 0.20321834 0.81581074 0.2219063 0.81581074 0.24059451 0.81581074
		 0.25928259 0.81581074 0.27797067 0.81581074 0.29665875 0.81581074 0.31534684 0.81581074
		 0.33403492 0.81581074 0.352723 0.81581074 0.072401643 0.83449882 0.091089725 0.83449882
		 0.10977781 0.83449882 0.12846589 0.83449882 0.14715397 0.83449882 0.16584206 0.83449882
		 0.18453014 0.83449882 0.20321834 0.83449882 0.2219063 0.83449882 0.24059451 0.83449882
		 0.25928259 0.83449882 0.27797067 0.83449882 0.29665875 0.83449882 0.31534684 0.83449882
		 0.33403492 0.83449882 0.352723 0.83449882 0.072401643 0.85318691 0.091089725 0.85318691
		 0.10977781 0.85318691 0.12846589 0.85318691 0.14715397 0.85318691 0.16584206 0.85318691
		 0.18453014 0.85318691 0.20321834 0.85318691 0.2219063 0.85318691 0.24059451 0.85318691
		 0.25928259 0.85318691 0.27797067 0.85318691 0.29665875 0.85318691 0.31534684 0.85318691
		 0.33403492 0.85318691 0.352723 0.85318691 0.072401643 0.87187499 0.091089725 0.87187499
		 0.10977781 0.87187499 0.12846589 0.87187499 0.14715397 0.87187499 0.16584206 0.87187499
		 0.18453014 0.87187499 0.20321834 0.87187499 0.2219063 0.87187499 0.24059451 0.87187499
		 0.25928259 0.87187499 0.27797067 0.87187499 0.29665875 0.87187499 0.31534684 0.87187499
		 0.33403492 0.87187499 0.352723 0.87187499 0.072401643 0.89056313 0.091089725 0.89056313
		 0.10977781 0.89056313 0.12846589 0.89056313 0.14715397 0.89056313 0.16584206 0.89056313
		 0.18453014 0.89056313 0.20321834 0.89056313 0.2219063 0.89056313 0.24059451 0.89056313
		 0.25928259 0.89056313 0.27797067 0.89056313 0.29665875 0.89056313 0.31534684 0.89056313
		 0.33403492 0.89056313 0.352723 0.89056313 0.081745744 0.62892985 0.10043383 0.62892985
		 0.11912191 0.62892985 0.13780999 0.62892985 0.15649807 0.62892985 0.17518616 0.62892985
		 0.19387424 0.62892985 0.21256232 0.62892985 0.23125041 0.62892985 0.24993849 0.62892985
		 0.26862657 0.62892985 0.28731465 0.62892985 0.30600286 0.62892985 0.32469082 0.62892985
		 0.34337902 0.62892985 0.081745744 0.90925115 0.10043383 0.90925115 0.11912191 0.90925115
		 0.13780999 0.90925115 0.15649807 0.90925115 0.17518616 0.90925115 0.19387424 0.90925115
		 0.21256232 0.90925115 0.23125041 0.90925115 0.24993849 0.90925115 0.26862657 0.90925115
		 0.28731465 0.90925115 0.30600286 0.90925115 0.32469082 0.90925115 0.34337902 0.90925115
		 0.072401643 0.64761794 0.091089725 0.64761794 0.091089725 0.66630602 0.072401643
		 0.66630602 0.10977781 0.64761794 0.10977781 0.66630602 0.12846589 0.64761794 0.12846589
		 0.66630602 0.14715397 0.64761794 0.14715397 0.66630602 0.16584206 0.64761794 0.16584206
		 0.66630602 0.18453014 0.64761794 0.18453014 0.66630602 0.20321834 0.64761794 0.20321834
		 0.66630602 0.2219063 0.64761794 0.2219063 0.66630602 0.24059451 0.64761794 0.24059451
		 0.66630602 0.25928259 0.64761794 0.25928259 0.66630602 0.27797067 0.64761794 0.27797067
		 0.66630602 0.29665875 0.64761794 0.29665875 0.66630602 0.31534684 0.64761794 0.31534684
		 0.66630602 0.33403492 0.64761794 0.33403492 0.66630602 0.352723 0.64761794 0.352723
		 0.66630602 0.091089725 0.68499416 0.072401643 0.68499416 0.10977781 0.68499416 0.12846589
		 0.68499416 0.14715397 0.68499416 0.16584206 0.68499416 0.18453014 0.68499416 0.20321834
		 0.68499416 0.2219063 0.68499416 0.24059451 0.68499416 0.25928259 0.68499416 0.27797067
		 0.68499416 0.29665875 0.68499416 0.31534684 0.68499416 0.33403492 0.68499416 0.352723
		 0.68499416 0.091089725 0.70368224 0.072401643 0.70368224 0.10977781 0.70368224 0.12846589
		 0.70368224 0.14715397 0.70368224 0.16584206 0.70368224 0.18453014 0.70368224 0.20321834
		 0.70368224;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.2219063 0.70368224 0.24059451 0.70368224
		 0.25928259 0.70368224 0.27797067 0.70368224 0.29665875 0.70368224 0.31534684 0.70368224
		 0.33403492 0.70368224 0.352723 0.70368224 0.091089725 0.72237033 0.072401643 0.72237033
		 0.10977781 0.72237033 0.12846589 0.72237033 0.14715397 0.72237033 0.16584206 0.72237033
		 0.18453014 0.72237033 0.20321834 0.72237033 0.2219063 0.72237033 0.24059451 0.72237033
		 0.25928259 0.72237033 0.27797067 0.72237033 0.29665875 0.72237033 0.31534684 0.72237033
		 0.33403492 0.72237033 0.352723 0.72237033 0.091089725 0.74105841 0.072401643 0.74105841
		 0.10977781 0.74105841 0.12846589 0.74105841 0.14715397 0.74105841 0.16584206 0.74105841
		 0.18453014 0.74105841 0.20321834 0.74105841 0.2219063 0.74105841 0.24059451 0.74105841
		 0.25928259 0.74105841 0.27797067 0.74105841 0.29665875 0.74105841 0.31534684 0.74105841
		 0.33403492 0.74105841 0.352723 0.74105841 0.091089725 0.75974649 0.072401643 0.75974649
		 0.10977781 0.75974649 0.12846589 0.75974649 0.14715397 0.75974649 0.16584206 0.75974649
		 0.18453014 0.75974649 0.20321834 0.75974649 0.2219063 0.75974649 0.24059451 0.75974649
		 0.25928259 0.75974649 0.27797067 0.75974649 0.29665875 0.75974649 0.31534684 0.75974649
		 0.33403492 0.75974649 0.352723 0.75974649 0.091089725 0.77843457 0.072401643 0.77843457
		 0.10977781 0.77843457 0.12846589 0.77843457 0.14715397 0.77843457 0.16584206 0.77843457
		 0.18453014 0.77843457 0.20321834 0.77843457 0.2219063 0.77843457 0.24059451 0.77843457
		 0.25928259 0.77843457 0.27797067 0.77843457 0.29665875 0.77843457 0.31534684 0.77843457
		 0.33403492 0.77843457 0.352723 0.77843457 0.091089725 0.79712266 0.072401643 0.79712266
		 0.10977781 0.79712266 0.12846589 0.79712266 0.14715397 0.79712266 0.16584206 0.79712266
		 0.18453014 0.79712266 0.20321834 0.79712266 0.2219063 0.79712266 0.24059451 0.79712266
		 0.25928259 0.79712266 0.27797067 0.79712266 0.29665875 0.79712266 0.31534684 0.79712266
		 0.33403492 0.79712266 0.352723 0.79712266 0.091089725 0.81581074 0.072401643 0.81581074
		 0.10977781 0.81581074 0.12846589 0.81581074 0.14715397 0.81581074 0.16584206 0.81581074
		 0.18453014 0.81581074 0.20321834 0.81581074 0.2219063 0.81581074 0.24059451 0.81581074
		 0.25928259 0.81581074 0.27797067 0.81581074 0.29665875 0.81581074 0.31534684 0.81581074
		 0.33403492 0.81581074 0.352723 0.81581074 0.091089725 0.83449882 0.072401643 0.83449882
		 0.10977781 0.83449882 0.12846589 0.83449882 0.14715397 0.83449882 0.16584206 0.83449882
		 0.18453014 0.83449882 0.20321834 0.83449882 0.2219063 0.83449882 0.24059451 0.83449882
		 0.25928259 0.83449882 0.27797067 0.83449882 0.29665875 0.83449882 0.31534684 0.83449882
		 0.33403492 0.83449882 0.352723 0.83449882 0.091089725 0.85318691 0.072401643 0.85318691
		 0.10977781 0.85318691 0.12846589 0.85318691 0.14715397 0.85318691 0.16584206 0.85318691
		 0.18453014 0.85318691 0.20321834 0.85318691 0.2219063 0.85318691 0.24059451 0.85318691
		 0.25928259 0.85318691 0.27797067 0.85318691 0.29665875 0.85318691 0.31534684 0.85318691
		 0.33403492 0.85318691 0.352723 0.85318691 0.091089725 0.87187499 0.072401643 0.87187499
		 0.10977781 0.87187499 0.12846589 0.87187499 0.14715397 0.87187499 0.16584206 0.87187499
		 0.18453014 0.87187499 0.20321834 0.87187499 0.2219063 0.87187499 0.24059451 0.87187499
		 0.25928259 0.87187499 0.27797067 0.87187499 0.29665875 0.87187499 0.31534684 0.87187499
		 0.33403492 0.87187499 0.352723 0.87187499 0.091089725 0.89056313 0.072401643 0.89056313
		 0.10977781 0.89056313 0.12846589 0.89056313 0.14715397 0.89056313 0.16584206 0.89056313
		 0.18453014 0.89056313 0.20321834 0.89056313 0.2219063 0.89056313 0.24059451 0.89056313
		 0.25928259 0.89056313 0.27797067 0.89056313 0.29665875 0.89056313 0.31534684 0.89056313
		 0.33403492 0.89056313 0.352723 0.89056313 0.081745744 0.62892985 0.10043383 0.62892985
		 0.11912191 0.62892985 0.13780999 0.62892985 0.15649807 0.62892985 0.17518616 0.62892985
		 0.19387424 0.62892985 0.21256232 0.62892985 0.23125041 0.62892985 0.24993849 0.62892985
		 0.26862657 0.62892985 0.28731465 0.62892985 0.30600286 0.62892985 0.32469082 0.62892985
		 0.34337902 0.62892985 0.081745744 0.90925115 0.10043383 0.90925115 0.11912191 0.90925115
		 0.13780999 0.90925115 0.15649807 0.90925115 0.17518616 0.90925115 0.19387424 0.90925115
		 0.21256232 0.90925115 0.23125041 0.90925115 0.24993849 0.90925115 0.26862657 0.90925115
		 0.28731465 0.90925115 0.30600286 0.90925115 0.32469082 0.90925115 0.34337902 0.90925115
		 0.55769658 0.14721638 0.5790031 0.14721638 0.5790031 0.16852279 0.55769658 0.16852279
		 0.60030973 0.14721638 0.60030973 0.16852279 0.62161589 0.14721638 0.62161589 0.16852279
		 0.6429224 0.14721638 0.6429224 0.16852279 0.66422904 0.14721638 0.66422904 0.16852279
		 0.68553519 0.14721638 0.68553519 0.16852279 0.70684147 0.14721638 0.70684147 0.16852279
		 0.72814798 0.14721638 0.72814798 0.16852279 0.7494545 0.14721638 0.7494545 0.16852279
		 0.77076066 0.14721638 0.77076066 0.16852279 0.79206717 0.14721638 0.79206717 0.16852279
		 0.81337368 0.14721638 0.81337368 0.16852279 0.83468008 0.14721638 0.83468008 0.16852279
		 0.85598648 0.14721638 0.85598648 0.16852279 0.87729311 0.14721638 0.87729311 0.16852279
		 0.89859915 0.14721638 0.89859915 0.16852279 0.91990554 0.14721638 0.91990554 0.16852279
		 0.94121218 0.14721638 0.94121218 0.16852279 0.96251845 0.14721638 0.96251845 0.16852279
		 0.98382497 0.14721638 0.98382497 0.16852279 0.5790031 0.18982919 0.55769658 0.18982919
		 0.60030973 0.18982919 0.62161589 0.18982919 0.6429224 0.18982919 0.66422904 0.18982919
		 0.68553519 0.18982919 0.70684147 0.18982919 0.72814798 0.18982919 0.7494545 0.18982919;
	setAttr ".uvst[0].uvsp[2500:2749]" 0.77076066 0.18982919 0.79206717 0.18982919
		 0.81337368 0.18982919 0.83468008 0.18982919 0.85598648 0.18982919 0.87729311 0.18982919
		 0.89859915 0.18982919 0.91990554 0.18982919 0.94121218 0.18982919 0.96251845 0.18982919
		 0.98382497 0.18982919 0.5790031 0.21113557 0.55769658 0.21113557 0.60030973 0.21113557
		 0.62161589 0.21113557 0.6429224 0.21113557 0.66422904 0.21113557 0.68553519 0.21113557
		 0.70684147 0.21113557 0.72814798 0.21113557 0.7494545 0.21113557 0.77076066 0.21113557
		 0.79206717 0.21113557 0.81337368 0.21113557 0.83468008 0.21113557 0.85598648 0.21113557
		 0.87729311 0.21113557 0.89859915 0.21113557 0.91990554 0.21113557 0.94121218 0.21113557
		 0.96251845 0.21113557 0.98382497 0.21113557 0.5790031 0.23244198 0.55769658 0.23244198
		 0.60030973 0.23244198 0.62161589 0.23244198 0.6429224 0.23244198 0.66422904 0.23244198
		 0.68553519 0.23244198 0.70684147 0.23244198 0.72814798 0.23244198 0.7494545 0.23244198
		 0.77076066 0.23244198 0.79206717 0.23244198 0.81337368 0.23244198 0.83468008 0.23244198
		 0.85598648 0.23244198 0.87729311 0.23244198 0.89859915 0.23244198 0.91990554 0.23244198
		 0.94121218 0.23244198 0.96251845 0.23244198 0.98382497 0.23244198 0.5790031 0.25374836
		 0.55769658 0.25374836 0.60030973 0.25374836 0.62161589 0.25374836 0.6429224 0.25374836
		 0.66422904 0.25374836 0.68553519 0.25374836 0.70684147 0.25374836 0.72814798 0.25374836
		 0.7494545 0.25374836 0.77076066 0.25374836 0.79206717 0.25374836 0.81337368 0.25374836
		 0.83468008 0.25374836 0.85598648 0.25374836 0.87729311 0.25374836 0.89859915 0.25374836
		 0.91990554 0.25374836 0.94121218 0.25374836 0.96251845 0.25374836 0.98382497 0.25374836
		 0.5790031 0.27505478 0.55769658 0.27505478 0.60030973 0.27505478 0.62161589 0.27505478
		 0.6429224 0.27505478 0.66422904 0.27505478 0.68553519 0.27505478 0.70684147 0.27505478
		 0.72814798 0.27505478 0.7494545 0.27505478 0.77076066 0.27505478 0.79206717 0.27505478
		 0.81337368 0.27505478 0.83468008 0.27505478 0.85598648 0.27505478 0.87729311 0.27505478
		 0.89859915 0.27505478 0.91990554 0.27505478 0.94121218 0.27505478 0.96251845 0.27505478
		 0.98382497 0.27505478 0.5790031 0.29636127 0.55769658 0.29636127 0.60030973 0.29636127
		 0.62161589 0.29636127 0.6429224 0.29636127 0.66422904 0.29636127 0.68553519 0.29636127
		 0.70684147 0.29636127 0.72814798 0.29636127 0.7494545 0.29636127 0.77076066 0.29636127
		 0.79206717 0.29636127 0.81337368 0.29636127 0.83468008 0.29636127 0.85598648 0.29636127
		 0.87729311 0.29636127 0.89859915 0.29636127 0.91990554 0.29636127 0.94121218 0.29636127
		 0.96251845 0.29636127 0.98382497 0.29636127 0.5790031 0.31766763 0.55769658 0.31766763
		 0.60030973 0.31766763 0.62161589 0.31766763 0.6429224 0.31766763 0.66422904 0.31766763
		 0.68553519 0.31766763 0.70684147 0.31766763 0.72814798 0.31766763 0.7494545 0.31766763
		 0.77076066 0.31766763 0.79206717 0.31766763 0.81337368 0.31766763 0.83468008 0.31766763
		 0.85598648 0.31766763 0.87729311 0.31766763 0.89859915 0.31766763 0.91990554 0.31766763
		 0.94121218 0.31766763 0.96251845 0.31766763 0.98382497 0.31766763 0.5790031 0.33897403
		 0.55769658 0.33897403 0.60030973 0.33897403 0.62161589 0.33897403 0.6429224 0.33897403
		 0.66422904 0.33897403 0.68553519 0.33897403 0.70684147 0.33897403 0.72814798 0.33897403
		 0.7494545 0.33897403 0.77076066 0.33897403 0.79206717 0.33897403 0.81337368 0.33897403
		 0.83468008 0.33897403 0.85598648 0.33897403 0.87729311 0.33897403 0.89859915 0.33897403
		 0.91990554 0.33897403 0.94121218 0.33897403 0.96251845 0.33897403 0.98382497 0.33897403
		 0.5790031 0.36028042 0.55769658 0.36028042 0.60030973 0.36028042 0.62161589 0.36028042
		 0.6429224 0.36028042 0.66422904 0.36028042 0.68553519 0.36028042 0.70684147 0.36028042
		 0.72814798 0.36028042 0.7494545 0.36028042 0.77076066 0.36028042 0.79206717 0.36028042
		 0.81337368 0.36028042 0.83468008 0.36028042 0.85598648 0.36028042 0.87729311 0.36028042
		 0.89859915 0.36028042 0.91990554 0.36028042 0.94121218 0.36028042 0.96251845 0.36028042
		 0.98382497 0.36028042 0.5790031 0.38158685 0.55769658 0.38158685 0.60030973 0.38158685
		 0.62161589 0.38158685 0.6429224 0.38158685 0.66422904 0.38158685 0.68553519 0.38158685
		 0.70684147 0.38158685 0.72814798 0.38158685 0.7494545 0.38158685 0.77076066 0.38158685
		 0.79206717 0.38158685 0.81337368 0.38158685 0.83468008 0.38158685 0.85598648 0.38158685
		 0.87729311 0.38158685 0.89859915 0.38158685 0.91990554 0.38158685 0.94121218 0.38158685
		 0.96251845 0.38158685 0.98382497 0.38158685 0.5790031 0.40289322 0.55769658 0.40289322
		 0.60030973 0.40289322 0.62161589 0.40289322 0.6429224 0.40289322 0.66422904 0.40289322
		 0.68553519 0.40289322 0.70684147 0.40289322 0.72814798 0.40289322 0.7494545 0.40289322
		 0.77076066 0.40289322 0.79206717 0.40289322 0.81337368 0.40289322 0.83468008 0.40289322
		 0.85598648 0.40289322 0.87729311 0.40289322 0.89859915 0.40289322 0.91990554 0.40289322
		 0.94121218 0.40289322 0.96251845 0.40289322 0.98382497 0.40289322 0.5790031 0.42419964
		 0.55769658 0.42419964 0.60030973 0.42419964 0.62161589 0.42419964 0.6429224 0.42419964
		 0.66422904 0.42419964 0.68553519 0.42419964 0.70684147 0.42419964 0.72814798 0.42419964
		 0.7494545 0.42419964 0.77076066 0.42419964 0.79206717 0.42419964 0.81337368 0.42419964
		 0.83468008 0.42419964 0.85598648 0.42419964 0.87729311 0.42419964 0.89859915 0.42419964
		 0.91990554 0.42419964 0.94121218 0.42419964 0.96251845 0.42419964 0.98382497 0.42419964
		 0.5790031 0.4455061 0.55769658 0.4455061 0.60030973 0.4455061 0.62161589 0.4455061
		 0.6429224 0.4455061 0.66422904 0.4455061 0.68553519 0.4455061 0.70684147 0.4455061;
	setAttr ".uvst[0].uvsp[2750:2999]" 0.72814798 0.4455061 0.7494545 0.4455061 0.77076066
		 0.4455061 0.79206717 0.4455061 0.81337368 0.4455061 0.83468008 0.4455061 0.85598648
		 0.4455061 0.87729311 0.4455061 0.89859915 0.4455061 0.91990554 0.4455061 0.94121218
		 0.4455061 0.96251845 0.4455061 0.98382497 0.4455061 0.5790031 0.46681249 0.55769658
		 0.46681249 0.60030973 0.46681249 0.62161589 0.46681249 0.6429224 0.46681249 0.66422904
		 0.46681249 0.68553519 0.46681249 0.70684147 0.46681249 0.72814798 0.46681249 0.7494545
		 0.46681249 0.77076066 0.46681249 0.79206717 0.46681249 0.81337368 0.46681249 0.83468008
		 0.46681249 0.85598648 0.46681249 0.87729311 0.46681249 0.89859915 0.46681249 0.91990554
		 0.46681249 0.94121218 0.46681249 0.96251845 0.46681249 0.98382497 0.46681249 0.5790031
		 0.48811889 0.55769658 0.48811889 0.60030973 0.48811889 0.62161589 0.48811889 0.6429224
		 0.48811889 0.66422904 0.48811889 0.68553519 0.48811889 0.70684147 0.48811889 0.72814798
		 0.48811889 0.7494545 0.48811889 0.77076066 0.48811889 0.79206717 0.48811889 0.81337368
		 0.48811889 0.83468008 0.48811889 0.85598648 0.48811889 0.87729311 0.48811889 0.89859915
		 0.48811889 0.91990554 0.48811889 0.94121218 0.48811889 0.96251845 0.48811889 0.98382497
		 0.48811889 0.5790031 0.50942534 0.55769658 0.50942534 0.60030973 0.50942534 0.62161589
		 0.50942534 0.6429224 0.50942534 0.66422904 0.50942534 0.68553519 0.50942534 0.70684147
		 0.50942534 0.72814798 0.50942534 0.7494545 0.50942534 0.77076066 0.50942534 0.79206717
		 0.50942534 0.81337368 0.50942534 0.83468008 0.50942534 0.85598648 0.50942534 0.87729311
		 0.50942534 0.89859915 0.50942534 0.91990554 0.50942534 0.94121218 0.50942534 0.96251845
		 0.50942534 0.98382497 0.50942534 0.5790031 0.53073174 0.55769658 0.53073174 0.60030973
		 0.53073174 0.62161589 0.53073174 0.6429224 0.53073174 0.66422904 0.53073174 0.68553519
		 0.53073174 0.70684147 0.53073174 0.72814798 0.53073174 0.7494545 0.53073174 0.77076066
		 0.53073174 0.79206717 0.53073174 0.81337368 0.53073174 0.83468008 0.53073174 0.85598648
		 0.53073174 0.87729311 0.53073174 0.89859915 0.53073174 0.91990554 0.53073174 0.94121218
		 0.53073174 0.96251845 0.53073174 0.98382497 0.53073174 0.56834984 0.12591 0.58965647
		 0.12591 0.61096275 0.12591 0.63226914 0.12591 0.65357554 0.12591 0.67488205 0.12591
		 0.69618821 0.12591 0.71749473 0.12591 0.73880124 0.12591 0.76010752 0.12591 0.78141379
		 0.12591 0.80272031 0.12591 0.82402694 0.12591 0.8453331 0.12591 0.86663938 0.12591
		 0.88794589 0.12591 0.90925229 0.12591 0.93055868 0.12591 0.95186532 0.12591 0.97317159
		 0.12591 0.56834984 0.55203807 0.58965647 0.55203807 0.61096275 0.55203807 0.63226914
		 0.55203807 0.65357554 0.55203807 0.67488205 0.55203807 0.69618821 0.55203807 0.71749473
		 0.55203807 0.73880124 0.55203807 0.76010752 0.55203807 0.78141379 0.55203807 0.80272031
		 0.55203807 0.82402694 0.55203807 0.8453331 0.55203807 0.86663938 0.55203807 0.88794589
		 0.55203807 0.90925229 0.55203807 0.93055868 0.55203807 0.95186532 0.55203807 0.97317159
		 0.55203807 0.84072316 0.7672087 0.84072316 0.74976271 0.82094514 0.74976271 0.82094514
		 0.7672087 0.80116749 0.74976271 0.80116749 0.7672087 0.78138924 0.74976271 0.78138924
		 0.7672087 0.76161146 0.74976271 0.76161146 0.7672087 0.74183345 0.74976271 0.74183345
		 0.7672087 0.72205567 0.74976271 0.72205567 0.7672087 0.70227778 0.74976271 0.70227778
		 0.7672087 0.68249989 0.74976271 0.68249989 0.7672087 0.66272211 0.74976271 0.66272211
		 0.7672087 0.64294398 0.74976271 0.64294398 0.7672087 0.62316585 0.74976271 0.62316585
		 0.7672087 0.60338807 0.74976271 0.60338807 0.7672087 0.58361042 0.74976271 0.58361042
		 0.7672087 0.56383252 0.74976271 0.56383252 0.7672087 0.54405451 0.74976271 0.54405451
		 0.7672087 0.52427661 0.74976271 0.52427661 0.7672087 0.50449896 0.74976271 0.50449896
		 0.7672087 0.48472095 0.74976271 0.48472095 0.7672087 0.46494305 0.74976271 0.46494305
		 0.7672087 0.44516516 0.74976271 0.44516516 0.7672087 0.84072316 0.73231667 0.82094514
		 0.73231667 0.80116749 0.73231667 0.78138924 0.73231667 0.76161146 0.73231667 0.74183345
		 0.73231667 0.72205567 0.73231667 0.70227778 0.73231667 0.68249989 0.73231667 0.66272211
		 0.73231667 0.64294398 0.73231667 0.62316585 0.73231667 0.60338807 0.73231667 0.58361042
		 0.73231667 0.56383252 0.73231667 0.54405451 0.73231667 0.52427661 0.73231667 0.50449896
		 0.73231667 0.48472095 0.73231667 0.46494305 0.73231667 0.44516516 0.73231667 0.84072316
		 0.71487063 0.82094514 0.71487063 0.80116749 0.71487063 0.78138924 0.71487063 0.76161146
		 0.71487063 0.74183345 0.71487063 0.72205567 0.71487063 0.70227778 0.71487063 0.68249989
		 0.71487063 0.66272211 0.71487063 0.64294398 0.71487063 0.62316585 0.71487063 0.60338807
		 0.71487063 0.58361042 0.71487063 0.56383252 0.71487063 0.54405451 0.71487063 0.52427661
		 0.71487063 0.50449896 0.71487063 0.48472095 0.71487063 0.46494305 0.71487063 0.44516516
		 0.71487063 0.84072316 0.69742453 0.82094514 0.69742453 0.80116749 0.69742453 0.78138924
		 0.69742453 0.76161146 0.69742453 0.74183345 0.69742453 0.72205567 0.69742453 0.70227778
		 0.69742453 0.68249989 0.69742453 0.66272211 0.69742453 0.64294398 0.69742453 0.62316585
		 0.69742453 0.60338807 0.69742453 0.58361042 0.69742453 0.56383252 0.69742453 0.54405451
		 0.69742453 0.52427661 0.69742453 0.50449896 0.69742453 0.48472095 0.69742453 0.46494305
		 0.69742453 0.44516516 0.69742453 0.84072316 0.67997843 0.82094514 0.67997843 0.80116749
		 0.67997843 0.78138924 0.67997843 0.76161146 0.67997843 0.74183345 0.67997843 0.72205567
		 0.67997843 0.70227778 0.67997843;
	setAttr ".uvst[0].uvsp[3000:3249]" 0.68249989 0.67997843 0.66272211 0.67997843
		 0.64294398 0.67997843 0.62316585 0.67997843 0.60338807 0.67997843 0.58361042 0.67997843
		 0.56383252 0.67997843 0.54405451 0.67997843 0.52427661 0.67997843 0.50449896 0.67997843
		 0.48472095 0.67997843 0.46494305 0.67997843 0.44516516 0.67997843 0.84072316 0.66253251
		 0.82094514 0.66253251 0.80116749 0.66253251 0.78138924 0.66253251 0.76161146 0.66253251
		 0.74183345 0.66253251 0.72205567 0.66253251 0.70227778 0.66253251 0.68249989 0.66253251
		 0.66272211 0.66253251 0.64294398 0.66253251 0.62316585 0.66253251 0.60338807 0.66253251
		 0.58361042 0.66253251 0.56383252 0.66253251 0.54405451 0.66253251 0.52427661 0.66253251
		 0.50449896 0.66253251 0.48472095 0.66253251 0.46494305 0.66253251 0.44516516 0.66253251
		 0.84072316 0.64508641 0.82094514 0.64508641 0.80116749 0.64508641 0.78138924 0.64508641
		 0.76161146 0.64508641 0.74183345 0.64508641 0.72205567 0.64508641 0.70227778 0.64508641
		 0.68249989 0.64508641 0.66272211 0.64508641 0.64294398 0.64508641 0.62316585 0.64508641
		 0.60338807 0.64508641 0.58361042 0.64508641 0.56383252 0.64508641 0.54405451 0.64508641
		 0.52427661 0.64508641 0.50449896 0.64508641 0.48472095 0.64508641 0.46494305 0.64508641
		 0.44516516 0.64508641 0.84072316 0.62764025 0.82094514 0.62764025 0.80116749 0.62764025
		 0.78138924 0.62764025 0.76161146 0.62764025 0.74183345 0.62764025 0.72205567 0.62764025
		 0.70227778 0.62764025 0.68249989 0.62764025 0.66272211 0.62764025 0.64294398 0.62764025
		 0.62316585 0.62764025 0.60338807 0.62764025 0.58361042 0.62764025 0.56383252 0.62764025
		 0.54405451 0.62764025 0.52427661 0.62764025 0.50449896 0.62764025 0.48472095 0.62764025
		 0.46494305 0.62764025 0.44516516 0.62764025 0.84072316 0.61019427 0.82094514 0.61019427
		 0.80116749 0.61019427 0.78138924 0.61019427 0.76161146 0.61019427 0.74183345 0.61019427
		 0.72205567 0.61019427 0.70227778 0.61019427 0.68249989 0.61019427 0.66272211 0.61019427
		 0.64294398 0.61019427 0.62316585 0.61019427 0.60338807 0.61019427 0.58361042 0.61019427
		 0.56383252 0.61019427 0.54405451 0.61019427 0.52427661 0.61019427 0.50449896 0.61019427
		 0.48472095 0.61019427 0.46494305 0.61019427 0.44516516 0.61019427 0.84072316 0.59274817
		 0.82094514 0.59274817 0.80116749 0.59274817 0.78138924 0.59274817 0.76161146 0.59274817
		 0.74183345 0.59274817 0.72205567 0.59274817 0.70227778 0.59274817 0.68249989 0.59274817
		 0.66272211 0.59274817 0.64294398 0.59274817 0.62316585 0.59274817 0.60338807 0.59274817
		 0.58361042 0.59274817 0.56383252 0.59274817 0.54405451 0.59274817 0.52427661 0.59274817
		 0.50449896 0.59274817 0.48472095 0.59274817 0.46494305 0.59274817 0.44516516 0.59274817
		 0.83083439 0.57530212 0.81105649 0.57530212 0.79127836 0.57530212 0.77150059 0.57530212
		 0.75172257 0.57530212 0.73194492 0.57530212 0.71216679 0.57530212 0.69238901 0.57530212
		 0.67261088 0.57530212 0.65283298 0.57530212 0.63305521 0.57530212 0.61327732 0.57530212
		 0.5934993 0.57530212 0.57372141 0.57530212 0.55394363 0.57530212 0.5341655 0.57530212
		 0.51438761 0.57530212 0.49460971 0.57530212 0.47483182 0.57530212 0.45505404 0.57530212
		 0.44516516 0.77037764 0.46494281 0.77037764 0.46494281 0.78738999 0.44516516 0.78738999
		 0.48472083 0.77037764 0.48472083 0.78738999 0.50449896 0.77037764 0.50449896 0.78738999
		 0.52427673 0.77037764 0.52427673 0.78738999 0.54405475 0.77037764 0.54405475 0.78738999
		 0.56383252 0.77037764 0.56383252 0.78738999 0.58361053 0.77037764 0.58361053 0.78738999
		 0.60338819 0.77037764 0.60338819 0.78738999 0.62316608 0.77037764 0.62316608 0.78738999
		 0.64294434 0.77037764 0.64294434 0.78738999 0.66272223 0.77037764 0.66272223 0.78738999
		 0.68249989 0.77037764 0.68249989 0.78738999 0.7022779 0.77037764 0.7022779 0.78738999
		 0.72205579 0.77037764 0.72205579 0.78738999 0.74183369 0.77037764 0.74183369 0.78738999
		 0.7616117 0.77037764 0.7616117 0.78738999 0.78138924 0.77037764 0.78138924 0.78738999
		 0.80116749 0.77037764 0.80116749 0.78738999 0.82094526 0.77037764 0.82094526 0.78738999
		 0.84072316 0.77037764 0.84072316 0.78738999 0.46494281 0.80440235 0.44516516 0.80440235
		 0.48472083 0.80440235 0.50449896 0.80440235 0.52427673 0.80440235 0.54405475 0.80440235
		 0.56383252 0.80440235 0.58361053 0.80440235 0.60338819 0.80440235 0.62316608 0.80440235
		 0.64294434 0.80440235 0.66272223 0.80440235 0.68249989 0.80440235 0.7022779 0.80440235
		 0.72205579 0.80440235 0.74183369 0.80440235 0.7616117 0.80440235 0.78138924 0.80440235
		 0.80116749 0.80440235 0.82094526 0.80440235 0.84072316 0.80440235 0.46494281 0.82141447
		 0.44516516 0.82141447 0.48472083 0.82141447 0.50449896 0.82141447 0.52427673 0.82141447
		 0.54405475 0.82141447 0.56383252 0.82141447 0.58361053 0.82141447 0.60338819 0.82141447
		 0.62316608 0.82141447 0.64294434 0.82141447 0.66272223 0.82141447 0.68249989 0.82141447
		 0.7022779 0.82141447 0.72205579 0.82141447 0.74183369 0.82141447 0.7616117 0.82141447
		 0.78138924 0.82141447 0.80116749 0.82141447 0.82094526 0.82141447 0.84072316 0.82141447
		 0.46494281 0.83842695 0.44516516 0.83842695 0.48472083 0.83842695 0.50449896 0.83842695
		 0.52427673 0.83842695 0.54405475 0.83842695 0.56383252 0.83842695 0.58361053 0.83842695
		 0.60338819 0.83842695 0.62316608 0.83842695 0.64294434 0.83842695 0.66272223 0.83842695
		 0.68249989 0.83842695 0.7022779 0.83842695 0.72205579 0.83842695 0.74183369 0.83842695
		 0.7616117 0.83842695 0.78138924 0.83842695 0.80116749 0.83842695 0.82094526 0.83842695
		 0.84072316 0.83842695 0.46494281 0.85543931 0.44516516 0.85543931 0.48472083 0.85543931
		 0.50449896 0.85543931 0.52427673 0.85543931 0.54405475 0.85543931 0.56383252 0.85543931;
	setAttr ".uvst[0].uvsp[3250:3499]" 0.58361053 0.85543931 0.60338819 0.85543931
		 0.62316608 0.85543931 0.64294434 0.85543931 0.66272223 0.85543931 0.68249989 0.85543931
		 0.7022779 0.85543931 0.72205579 0.85543931 0.74183369 0.85543931 0.7616117 0.85543931
		 0.78138924 0.85543931 0.80116749 0.85543931 0.82094526 0.85543931 0.84072316 0.85543931
		 0.46494281 0.87245166 0.44516516 0.87245166 0.48472083 0.87245166 0.50449896 0.87245166
		 0.52427673 0.87245166 0.54405475 0.87245166 0.56383252 0.87245166 0.58361053 0.87245166
		 0.60338819 0.87245166 0.62316608 0.87245166 0.64294434 0.87245166 0.66272223 0.87245166
		 0.68249989 0.87245166 0.7022779 0.87245166 0.72205579 0.87245166 0.74183369 0.87245166
		 0.7616117 0.87245166 0.78138924 0.87245166 0.80116749 0.87245166 0.82094526 0.87245166
		 0.84072316 0.87245166 0.46494281 0.88946402 0.44516516 0.88946402 0.48472083 0.88946402
		 0.50449896 0.88946402 0.52427673 0.88946402 0.54405475 0.88946402 0.56383252 0.88946402
		 0.58361053 0.88946402 0.60338819 0.88946402 0.62316608 0.88946402 0.64294434 0.88946402
		 0.66272223 0.88946402 0.68249989 0.88946402 0.7022779 0.88946402 0.72205579 0.88946402
		 0.74183369 0.88946402 0.7616117 0.88946402 0.78138924 0.88946402 0.80116749 0.88946402
		 0.82094526 0.88946402 0.84072316 0.88946402 0.46494281 0.90647632 0.44516516 0.90647632
		 0.48472083 0.90647632 0.50449896 0.90647632 0.52427673 0.90647632 0.54405475 0.90647632
		 0.56383252 0.90647632 0.58361053 0.90647632 0.60338819 0.90647632 0.62316608 0.90647632
		 0.64294434 0.90647632 0.66272223 0.90647632 0.68249989 0.90647632 0.7022779 0.90647632
		 0.72205579 0.90647632 0.74183369 0.90647632 0.7616117 0.90647632 0.78138924 0.90647632
		 0.80116749 0.90647632 0.82094526 0.90647632 0.84072316 0.90647632 0.46494281 0.92348868
		 0.44516516 0.92348868 0.48472083 0.92348868 0.50449896 0.92348868 0.52427673 0.92348868
		 0.54405475 0.92348868 0.56383252 0.92348868 0.58361053 0.92348868 0.60338819 0.92348868
		 0.62316608 0.92348868 0.64294434 0.92348868 0.66272223 0.92348868 0.68249989 0.92348868
		 0.7022779 0.92348868 0.72205579 0.92348868 0.74183369 0.92348868 0.7616117 0.92348868
		 0.78138924 0.92348868 0.80116749 0.92348868 0.82094526 0.92348868 0.84072316 0.92348868
		 0.46494281 0.94050097 0.44516516 0.94050097 0.48472083 0.94050097 0.50449896 0.94050097
		 0.52427673 0.94050097 0.54405475 0.94050097 0.56383252 0.94050097 0.58361053 0.94050097
		 0.60338819 0.94050097 0.62316608 0.94050097 0.64294434 0.94050097 0.66272223 0.94050097
		 0.68249989 0.94050097 0.7022779 0.94050097 0.72205579 0.94050097 0.74183369 0.94050097
		 0.7616117 0.94050097 0.78138924 0.94050097 0.80116749 0.94050097 0.82094526 0.94050097
		 0.84072316 0.94050097 0.45505404 0.95751315 0.47483194 0.95751315 0.49460983 0.95751315
		 0.51438761 0.95751315 0.53416562 0.95751315 0.55394328 0.95751315 0.57372141 0.95751315
		 0.5934993 0.95751315 0.61327732 0.95751315 0.63305497 0.95751315 0.65283298 0.95751315
		 0.672611 0.95751315 0.69238889 0.95751315 0.71216655 0.95751315 0.73194492 0.95751315
		 0.75172246 0.95751315 0.77150059 0.95751315 0.79127848 0.95751315 0.81105638 0.95751315
		 0.83083439 0.95751315 0.55769634 0.14721638 0.57900286 0.14721638 0.57900286 0.16852279
		 0.55769634 0.16852279 0.60030925 0.14721638 0.60030925 0.16852279 0.62161577 0.14721638
		 0.62161577 0.16852279 0.64292216 0.14721638 0.64292216 0.16852279 0.6642282 0.14721638
		 0.6642282 0.16852279 0.68553472 0.14721638 0.68553472 0.16852279 0.70684123 0.14721638
		 0.70684123 0.16852279 0.72814763 0.14721638 0.72814763 0.16852279 0.74945414 0.14721638
		 0.74945414 0.16852279 0.77076077 0.14721638 0.77076077 0.16852279 0.79206681 0.14721638
		 0.79206681 0.16852279 0.81337333 0.14721638 0.81337333 0.16852279 0.83467984 0.14721638
		 0.83467984 0.16852279 0.85598612 0.14721638 0.85598612 0.16852279 0.87729228 0.14721638
		 0.87729228 0.16852279 0.89859891 0.14721638 0.89859891 0.16852279 0.91990542 0.14721638
		 0.91990542 0.16852279 0.94121158 0.14721638 0.94121158 0.16852279 0.96251822 0.14721638
		 0.96251822 0.16852279 0.98382449 0.14721638 0.98382449 0.16852279 0.57900286 0.1898292
		 0.55769634 0.1898292 0.60030925 0.1898292 0.62161577 0.1898292 0.64292216 0.1898292
		 0.6642282 0.1898292 0.68553472 0.1898292 0.70684123 0.1898292 0.72814763 0.1898292
		 0.74945414 0.1898292 0.77076077 0.1898292 0.79206681 0.1898292 0.81337333 0.1898292
		 0.83467984 0.1898292 0.85598612 0.1898292 0.87729228 0.1898292 0.89859891 0.1898292
		 0.91990542 0.1898292 0.94121158 0.1898292 0.96251822 0.1898292 0.98382449 0.1898292
		 0.57900286 0.21113561 0.55769634 0.21113561 0.60030925 0.21113561 0.62161577 0.21113561
		 0.64292216 0.21113561 0.6642282 0.21113561 0.68553472 0.21113561 0.70684123 0.21113561
		 0.72814763 0.21113561 0.74945414 0.21113561 0.77076077 0.21113561 0.79206681 0.21113561
		 0.81337333 0.21113561 0.83467984 0.21113561 0.85598612 0.21113561 0.87729228 0.21113561
		 0.89859891 0.21113561 0.91990542 0.21113561 0.94121158 0.21113561 0.96251822 0.21113561
		 0.98382449 0.21113561 0.57900286 0.23244199 0.55769634 0.23244199 0.60030925 0.23244199
		 0.62161577 0.23244199 0.64292216 0.23244199 0.6642282 0.23244199 0.68553472 0.23244199
		 0.70684123 0.23244199 0.72814763 0.23244199 0.74945414 0.23244199 0.77076077 0.23244199
		 0.79206681 0.23244199 0.81337333 0.23244199 0.83467984 0.23244199 0.85598612 0.23244199
		 0.87729228 0.23244199 0.89859891 0.23244199 0.91990542 0.23244199 0.94121158 0.23244199
		 0.96251822 0.23244199 0.98382449 0.23244199 0.57900286 0.25374839 0.55769634 0.25374839
		 0.60030925 0.25374839 0.62161577 0.25374839 0.64292216 0.25374839 0.6642282 0.25374839;
	setAttr ".uvst[0].uvsp[3500:3749]" 0.68553472 0.25374839 0.70684123 0.25374839
		 0.72814763 0.25374839 0.74945414 0.25374839 0.77076077 0.25374839 0.79206681 0.25374839
		 0.81337333 0.25374839 0.83467984 0.25374839 0.85598612 0.25374839 0.87729228 0.25374839
		 0.89859891 0.25374839 0.91990542 0.25374839 0.94121158 0.25374839 0.96251822 0.25374839
		 0.98382449 0.25374839 0.57900286 0.27505481 0.55769634 0.27505481 0.60030925 0.27505481
		 0.62161577 0.27505481 0.64292216 0.27505481 0.6642282 0.27505481 0.68553472 0.27505481
		 0.70684123 0.27505481 0.72814763 0.27505481 0.74945414 0.27505481 0.77076077 0.27505481
		 0.79206681 0.27505481 0.81337333 0.27505481 0.83467984 0.27505481 0.85598612 0.27505481
		 0.87729228 0.27505481 0.89859891 0.27505481 0.91990542 0.27505481 0.94121158 0.27505481
		 0.96251822 0.27505481 0.98382449 0.27505481 0.57900286 0.29636124 0.55769634 0.29636124
		 0.60030925 0.29636124 0.62161577 0.29636124 0.64292216 0.29636124 0.6642282 0.29636124
		 0.68553472 0.29636124 0.70684123 0.29636124 0.72814763 0.29636124 0.74945414 0.29636124
		 0.77076077 0.29636124 0.79206681 0.29636124 0.81337333 0.29636124 0.83467984 0.29636124
		 0.85598612 0.29636124 0.87729228 0.29636124 0.89859891 0.29636124 0.91990542 0.29636124
		 0.94121158 0.29636124 0.96251822 0.29636124 0.98382449 0.29636124 0.57900286 0.31766763
		 0.55769634 0.31766763 0.60030925 0.31766763 0.62161577 0.31766763 0.64292216 0.31766763
		 0.6642282 0.31766763 0.68553472 0.31766763 0.70684123 0.31766763 0.72814763 0.31766763
		 0.74945414 0.31766763 0.77076077 0.31766763 0.79206681 0.31766763 0.81337333 0.31766763
		 0.83467984 0.31766763 0.85598612 0.31766763 0.87729228 0.31766763 0.89859891 0.31766763
		 0.91990542 0.31766763 0.94121158 0.31766763 0.96251822 0.31766763 0.98382449 0.31766763
		 0.57900286 0.33897403 0.55769634 0.33897403 0.60030925 0.33897403 0.62161577 0.33897403
		 0.64292216 0.33897403 0.6642282 0.33897403 0.68553472 0.33897403 0.70684123 0.33897403
		 0.72814763 0.33897403 0.74945414 0.33897403 0.77076077 0.33897403 0.79206681 0.33897403
		 0.81337333 0.33897403 0.83467984 0.33897403 0.85598612 0.33897403 0.87729228 0.33897403
		 0.89859891 0.33897403 0.91990542 0.33897403 0.94121158 0.33897403 0.96251822 0.33897403
		 0.98382449 0.33897403 0.57900286 0.36028039 0.55769634 0.36028039 0.60030925 0.36028039
		 0.62161577 0.36028039 0.64292216 0.36028039 0.6642282 0.36028039 0.68553472 0.36028039
		 0.70684123 0.36028039 0.72814763 0.36028039 0.74945414 0.36028039 0.77076077 0.36028039
		 0.79206681 0.36028039 0.81337333 0.36028039 0.83467984 0.36028039 0.85598612 0.36028039
		 0.87729228 0.36028039 0.89859891 0.36028039 0.91990542 0.36028039 0.94121158 0.36028039
		 0.96251822 0.36028039 0.98382449 0.36028039 0.57900286 0.38158685 0.55769634 0.38158685
		 0.60030925 0.38158685 0.62161577 0.38158685 0.64292216 0.38158685 0.6642282 0.38158685
		 0.68553472 0.38158685 0.70684123 0.38158685 0.72814763 0.38158685 0.74945414 0.38158685
		 0.77076077 0.38158685 0.79206681 0.38158685 0.81337333 0.38158685 0.83467984 0.38158685
		 0.85598612 0.38158685 0.87729228 0.38158685 0.89859891 0.38158685 0.91990542 0.38158685
		 0.94121158 0.38158685 0.96251822 0.38158685 0.98382449 0.38158685 0.57900286 0.40289325
		 0.55769634 0.40289325 0.60030925 0.40289325 0.62161577 0.40289325 0.64292216 0.40289325
		 0.6642282 0.40289325 0.68553472 0.40289325 0.70684123 0.40289325 0.72814763 0.40289325
		 0.74945414 0.40289325 0.77076077 0.40289325 0.79206681 0.40289325 0.81337333 0.40289325
		 0.83467984 0.40289325 0.85598612 0.40289325 0.87729228 0.40289325 0.89859891 0.40289325
		 0.91990542 0.40289325 0.94121158 0.40289325 0.96251822 0.40289325 0.98382449 0.40289325
		 0.57900286 0.4241997 0.55769634 0.4241997 0.60030925 0.4241997 0.62161577 0.4241997
		 0.64292216 0.4241997 0.6642282 0.4241997 0.68553472 0.4241997 0.70684123 0.4241997
		 0.72814763 0.4241997 0.74945414 0.4241997 0.77076077 0.4241997 0.79206681 0.4241997
		 0.81337333 0.4241997 0.83467984 0.4241997 0.85598612 0.4241997 0.87729228 0.4241997
		 0.89859891 0.4241997 0.91990542 0.4241997 0.94121158 0.4241997 0.96251822 0.4241997
		 0.98382449 0.4241997 0.57900286 0.44550604 0.55769634 0.44550604 0.60030925 0.44550604
		 0.62161577 0.44550604 0.64292216 0.44550604 0.6642282 0.44550604 0.68553472 0.44550604
		 0.70684123 0.44550604 0.72814763 0.44550604 0.74945414 0.44550604 0.77076077 0.44550604
		 0.79206681 0.44550604 0.81337333 0.44550604 0.83467984 0.44550604 0.85598612 0.44550604
		 0.87729228 0.44550604 0.89859891 0.44550604 0.91990542 0.44550604 0.94121158 0.44550604
		 0.96251822 0.44550604 0.98382449 0.44550604 0.57900286 0.46681246 0.55769634 0.46681246
		 0.60030925 0.46681246 0.62161577 0.46681246 0.64292216 0.46681246 0.6642282 0.46681246
		 0.68553472 0.46681246 0.70684123 0.46681246 0.72814763 0.46681246 0.74945414 0.46681246
		 0.77076077 0.46681246 0.79206681 0.46681246 0.81337333 0.46681246 0.83467984 0.46681246
		 0.85598612 0.46681246 0.87729228 0.46681246 0.89859891 0.46681246 0.91990542 0.46681246
		 0.94121158 0.46681246 0.96251822 0.46681246 0.98382449 0.46681246 0.57900286 0.48811889
		 0.55769634 0.48811889 0.60030925 0.48811889 0.62161577 0.48811889 0.64292216 0.48811889
		 0.6642282 0.48811889 0.68553472 0.48811889 0.70684123 0.48811889 0.72814763 0.48811889
		 0.74945414 0.48811889 0.77076077 0.48811889 0.79206681 0.48811889 0.81337333 0.48811889
		 0.83467984 0.48811889 0.85598612 0.48811889 0.87729228 0.48811889 0.89859891 0.48811889
		 0.91990542 0.48811889 0.94121158 0.48811889 0.96251822 0.48811889 0.98382449 0.48811889
		 0.57900286 0.50942534 0.55769634 0.50942534 0.60030925 0.50942534 0.62161577 0.50942534;
	setAttr ".uvst[0].uvsp[3750:3999]" 0.64292216 0.50942534 0.6642282 0.50942534
		 0.68553472 0.50942534 0.70684123 0.50942534 0.72814763 0.50942534 0.74945414 0.50942534
		 0.77076077 0.50942534 0.79206681 0.50942534 0.81337333 0.50942534 0.83467984 0.50942534
		 0.85598612 0.50942534 0.87729228 0.50942534 0.89859891 0.50942534 0.91990542 0.50942534
		 0.94121158 0.50942534 0.96251822 0.50942534 0.98382449 0.50942534 0.57900286 0.53073168
		 0.55769634 0.53073168 0.60030925 0.53073168 0.62161577 0.53073168 0.64292216 0.53073168
		 0.6642282 0.53073168 0.68553472 0.53073168 0.70684123 0.53073168 0.72814763 0.53073168
		 0.74945414 0.53073168 0.77076077 0.53073168 0.79206681 0.53073168 0.81337333 0.53073168
		 0.83467984 0.53073168 0.85598612 0.53073168 0.87729228 0.53073168 0.89859891 0.53073168
		 0.91990542 0.53073168 0.94121158 0.53073168 0.96251822 0.53073168 0.98382449 0.53073168
		 0.56834984 0.12590998 0.589656 0.12590998 0.61096251 0.12590998 0.63226902 0.12590998
		 0.65357542 0.12590998 0.6748817 0.12590998 0.69618821 0.12590998 0.71749449 0.12590998
		 0.73880076 0.12590998 0.7601074 0.12590998 0.78141379 0.12590998 0.80272007 0.12590998
		 0.82402647 0.12590998 0.8453331 0.12590998 0.86663938 0.12590998 0.88794565 0.12590998
		 0.90925205 0.12590998 0.93055844 0.12590998 0.95186496 0.12590998 0.97317123 0.12590998
		 0.56834984 0.55203801 0.589656 0.55203801 0.61096251 0.55203801 0.63226902 0.55203801
		 0.65357542 0.55203801 0.6748817 0.55203801 0.69618821 0.55203801 0.71749449 0.55203801
		 0.73880076 0.55203801 0.7601074 0.55203801 0.78141379 0.55203801 0.80272007 0.55203801
		 0.82402647 0.55203801 0.8453331 0.55203801 0.86663938 0.55203801 0.88794565 0.55203801
		 0.90925205 0.55203801 0.93055844 0.55203801 0.95186496 0.55203801 0.97317123 0.55203801
		 0.84072316 0.7672087 0.84072316 0.74976271 0.82094514 0.74976271 0.82094514 0.7672087
		 0.80116749 0.74976271 0.80116749 0.7672087 0.78138924 0.74976271 0.78138924 0.7672087
		 0.76161146 0.74976271 0.76161146 0.7672087 0.74183345 0.74976271 0.74183345 0.7672087
		 0.72205567 0.74976271 0.72205567 0.7672087 0.70227778 0.74976271 0.70227778 0.7672087
		 0.68249989 0.74976271 0.68249989 0.7672087 0.66272211 0.74976271 0.66272211 0.7672087
		 0.64294398 0.74976271 0.64294398 0.7672087 0.62316585 0.74976271 0.62316585 0.7672087
		 0.60338807 0.74976271 0.60338807 0.7672087 0.58361042 0.74976271 0.58361042 0.7672087
		 0.56383252 0.74976271 0.56383252 0.7672087 0.54405451 0.74976271 0.54405451 0.7672087
		 0.52427661 0.74976271 0.52427661 0.7672087 0.50449896 0.74976271 0.50449896 0.7672087
		 0.48472095 0.74976271 0.48472095 0.7672087 0.46494305 0.74976271 0.46494305 0.7672087
		 0.44516516 0.74976271 0.44516516 0.7672087 0.84072316 0.73231667 0.82094514 0.73231667
		 0.80116749 0.73231667 0.78138924 0.73231667 0.76161146 0.73231667 0.74183345 0.73231667
		 0.72205567 0.73231667 0.70227778 0.73231667 0.68249989 0.73231667 0.66272211 0.73231667
		 0.64294398 0.73231667 0.62316585 0.73231667 0.60338807 0.73231667 0.58361042 0.73231667
		 0.56383252 0.73231667 0.54405451 0.73231667 0.52427661 0.73231667 0.50449896 0.73231667
		 0.48472095 0.73231667 0.46494305 0.73231667 0.44516516 0.73231667 0.84072316 0.71487063
		 0.82094514 0.71487063 0.80116749 0.71487063 0.78138924 0.71487063 0.76161146 0.71487063
		 0.74183345 0.71487063 0.72205567 0.71487063 0.70227778 0.71487063 0.68249989 0.71487063
		 0.66272211 0.71487063 0.64294398 0.71487063 0.62316585 0.71487063 0.60338807 0.71487063
		 0.58361042 0.71487063 0.56383252 0.71487063 0.54405451 0.71487063 0.52427661 0.71487063
		 0.50449896 0.71487063 0.48472095 0.71487063 0.46494305 0.71487063 0.44516516 0.71487063
		 0.84072316 0.69742453 0.82094514 0.69742453 0.80116749 0.69742453 0.78138924 0.69742453
		 0.76161146 0.69742453 0.74183345 0.69742453 0.72205567 0.69742453 0.70227778 0.69742453
		 0.68249989 0.69742453 0.66272211 0.69742453 0.64294398 0.69742453 0.62316585 0.69742453
		 0.60338807 0.69742453 0.58361042 0.69742453 0.56383252 0.69742453 0.54405451 0.69742453
		 0.52427661 0.69742453 0.50449896 0.69742453 0.48472095 0.69742453 0.46494305 0.69742453
		 0.44516516 0.69742453 0.84072316 0.67997843 0.82094514 0.67997843 0.80116749 0.67997843
		 0.78138924 0.67997843 0.76161146 0.67997843 0.74183345 0.67997843 0.72205567 0.67997843
		 0.70227778 0.67997843 0.68249989 0.67997843 0.66272211 0.67997843 0.64294398 0.67997843
		 0.62316585 0.67997843 0.60338807 0.67997843 0.58361042 0.67997843 0.56383252 0.67997843
		 0.54405451 0.67997843 0.52427661 0.67997843 0.50449896 0.67997843 0.48472095 0.67997843
		 0.46494305 0.67997843 0.44516516 0.67997843 0.84072316 0.66253251 0.82094514 0.66253251
		 0.80116749 0.66253251 0.78138924 0.66253251 0.76161146 0.66253251 0.74183345 0.66253251
		 0.72205567 0.66253251 0.70227778 0.66253251 0.68249989 0.66253251 0.66272211 0.66253251
		 0.64294398 0.66253251 0.62316585 0.66253251 0.60338807 0.66253251 0.58361042 0.66253251
		 0.56383252 0.66253251 0.54405451 0.66253251 0.52427661 0.66253251 0.50449896 0.66253251
		 0.48472095 0.66253251 0.46494305 0.66253251 0.44516516 0.66253251 0.84072316 0.64508641
		 0.82094514 0.64508641 0.80116749 0.64508641 0.78138924 0.64508641 0.76161146 0.64508641
		 0.74183345 0.64508641 0.72205567 0.64508641 0.70227778 0.64508641 0.68249989 0.64508641
		 0.66272211 0.64508641 0.64294398 0.64508641 0.62316585 0.64508641 0.60338807 0.64508641
		 0.58361042 0.64508641 0.56383252 0.64508641 0.54405451 0.64508641 0.52427661 0.64508641
		 0.50449896 0.64508641 0.48472095 0.64508641 0.46494305 0.64508641 0.44516516 0.64508641
		 0.84072316 0.62764025 0.82094514 0.62764025 0.80116749 0.62764025 0.78138924 0.62764025;
	setAttr ".uvst[0].uvsp[4000:4249]" 0.76161146 0.62764025 0.74183345 0.62764025
		 0.72205567 0.62764025 0.70227778 0.62764025 0.68249989 0.62764025 0.66272211 0.62764025
		 0.64294398 0.62764025 0.62316585 0.62764025 0.60338807 0.62764025 0.58361042 0.62764025
		 0.56383252 0.62764025 0.54405451 0.62764025 0.52427661 0.62764025 0.50449896 0.62764025
		 0.48472095 0.62764025 0.46494305 0.62764025 0.44516516 0.62764025 0.84072316 0.61019427
		 0.82094514 0.61019427 0.80116749 0.61019427 0.78138924 0.61019427 0.76161146 0.61019427
		 0.74183345 0.61019427 0.72205567 0.61019427 0.70227778 0.61019427 0.68249989 0.61019427
		 0.66272211 0.61019427 0.64294398 0.61019427 0.62316585 0.61019427 0.60338807 0.61019427
		 0.58361042 0.61019427 0.56383252 0.61019427 0.54405451 0.61019427 0.52427661 0.61019427
		 0.50449896 0.61019427 0.48472095 0.61019427 0.46494305 0.61019427 0.44516516 0.61019427
		 0.84072316 0.59274817 0.82094514 0.59274817 0.80116749 0.59274817 0.78138924 0.59274817
		 0.76161146 0.59274817 0.74183345 0.59274817 0.72205567 0.59274817 0.70227778 0.59274817
		 0.68249989 0.59274817 0.66272211 0.59274817 0.64294398 0.59274817 0.62316585 0.59274817
		 0.60338807 0.59274817 0.58361042 0.59274817 0.56383252 0.59274817 0.54405451 0.59274817
		 0.52427661 0.59274817 0.50449896 0.59274817 0.48472095 0.59274817 0.46494305 0.59274817
		 0.44516516 0.59274817 0.83083439 0.57530212 0.81105649 0.57530212 0.79127836 0.57530212
		 0.77150059 0.57530212 0.75172257 0.57530212 0.73194492 0.57530212 0.71216679 0.57530212
		 0.69238901 0.57530212 0.67261088 0.57530212 0.65283298 0.57530212 0.63305521 0.57530212
		 0.61327732 0.57530212 0.5934993 0.57530212 0.57372141 0.57530212 0.55394363 0.57530212
		 0.5341655 0.57530212 0.51438761 0.57530212 0.49460971 0.57530212 0.47483182 0.57530212
		 0.45505404 0.57530212 0.44516516 0.77037764 0.46494281 0.77037764 0.46494281 0.78738999
		 0.44516516 0.78738999 0.48472083 0.77037764 0.48472083 0.78738999 0.50449896 0.77037764
		 0.50449896 0.78738999 0.52427673 0.77037764 0.52427673 0.78738999 0.54405475 0.77037764
		 0.54405475 0.78738999 0.56383252 0.77037764 0.56383252 0.78738999 0.58361053 0.77037764
		 0.58361053 0.78738999 0.60338819 0.77037764 0.60338819 0.78738999 0.62316608 0.77037764
		 0.62316608 0.78738999 0.64294434 0.77037764 0.64294434 0.78738999 0.66272223 0.77037764
		 0.66272223 0.78738999 0.68249989 0.77037764 0.68249989 0.78738999 0.7022779 0.77037764
		 0.7022779 0.78738999 0.72205579 0.77037764 0.72205579 0.78738999 0.74183369 0.77037764
		 0.74183369 0.78738999 0.7616117 0.77037764 0.7616117 0.78738999 0.78138924 0.77037764
		 0.78138924 0.78738999 0.80116749 0.77037764 0.80116749 0.78738999 0.82094526 0.77037764
		 0.82094526 0.78738999 0.84072316 0.77037764 0.84072316 0.78738999 0.46494281 0.80440235
		 0.44516516 0.80440235 0.48472083 0.80440235 0.50449896 0.80440235 0.52427673 0.80440235
		 0.54405475 0.80440235 0.56383252 0.80440235 0.58361053 0.80440235 0.60338819 0.80440235
		 0.62316608 0.80440235 0.64294434 0.80440235 0.66272223 0.80440235 0.68249989 0.80440235
		 0.7022779 0.80440235 0.72205579 0.80440235 0.74183369 0.80440235 0.7616117 0.80440235
		 0.78138924 0.80440235 0.80116749 0.80440235 0.82094526 0.80440235 0.84072316 0.80440235
		 0.46494281 0.82141447 0.44516516 0.82141447 0.48472083 0.82141447 0.50449896 0.82141447
		 0.52427673 0.82141447 0.54405475 0.82141447 0.56383252 0.82141447 0.58361053 0.82141447
		 0.60338819 0.82141447 0.62316608 0.82141447 0.64294434 0.82141447 0.66272223 0.82141447
		 0.68249989 0.82141447 0.7022779 0.82141447 0.72205579 0.82141447 0.74183369 0.82141447
		 0.7616117 0.82141447 0.78138924 0.82141447 0.80116749 0.82141447 0.82094526 0.82141447
		 0.84072316 0.82141447 0.46494281 0.83842695 0.44516516 0.83842695 0.48472083 0.83842695
		 0.50449896 0.83842695 0.52427673 0.83842695 0.54405475 0.83842695 0.56383252 0.83842695
		 0.58361053 0.83842695 0.60338819 0.83842695 0.62316608 0.83842695 0.64294434 0.83842695
		 0.66272223 0.83842695 0.68249989 0.83842695 0.7022779 0.83842695 0.72205579 0.83842695
		 0.74183369 0.83842695 0.7616117 0.83842695 0.78138924 0.83842695 0.80116749 0.83842695
		 0.82094526 0.83842695 0.84072316 0.83842695 0.46494281 0.85543931 0.44516516 0.85543931
		 0.48472083 0.85543931 0.50449896 0.85543931 0.52427673 0.85543931 0.54405475 0.85543931
		 0.56383252 0.85543931 0.58361053 0.85543931 0.60338819 0.85543931 0.62316608 0.85543931
		 0.64294434 0.85543931 0.66272223 0.85543931 0.68249989 0.85543931 0.7022779 0.85543931
		 0.72205579 0.85543931 0.74183369 0.85543931 0.7616117 0.85543931 0.78138924 0.85543931
		 0.80116749 0.85543931 0.82094526 0.85543931 0.84072316 0.85543931 0.46494281 0.87245166
		 0.44516516 0.87245166 0.48472083 0.87245166 0.50449896 0.87245166 0.52427673 0.87245166
		 0.54405475 0.87245166 0.56383252 0.87245166 0.58361053 0.87245166 0.60338819 0.87245166
		 0.62316608 0.87245166 0.64294434 0.87245166 0.66272223 0.87245166 0.68249989 0.87245166
		 0.7022779 0.87245166 0.72205579 0.87245166 0.74183369 0.87245166 0.7616117 0.87245166
		 0.78138924 0.87245166 0.80116749 0.87245166 0.82094526 0.87245166 0.84072316 0.87245166
		 0.46494281 0.88946402 0.44516516 0.88946402 0.48472083 0.88946402 0.50449896 0.88946402
		 0.52427673 0.88946402 0.54405475 0.88946402 0.56383252 0.88946402 0.58361053 0.88946402
		 0.60338819 0.88946402 0.62316608 0.88946402 0.64294434 0.88946402 0.66272223 0.88946402
		 0.68249989 0.88946402 0.7022779 0.88946402 0.72205579 0.88946402 0.74183369 0.88946402
		 0.7616117 0.88946402 0.78138924 0.88946402 0.80116749 0.88946402 0.82094526 0.88946402
		 0.84072316 0.88946402 0.46494281 0.90647632 0.44516516 0.90647632 0.48472083 0.90647632;
	setAttr ".uvst[0].uvsp[4250:4329]" 0.50449896 0.90647632 0.52427673 0.90647632
		 0.54405475 0.90647632 0.56383252 0.90647632 0.58361053 0.90647632 0.60338819 0.90647632
		 0.62316608 0.90647632 0.64294434 0.90647632 0.66272223 0.90647632 0.68249989 0.90647632
		 0.7022779 0.90647632 0.72205579 0.90647632 0.74183369 0.90647632 0.7616117 0.90647632
		 0.78138924 0.90647632 0.80116749 0.90647632 0.82094526 0.90647632 0.84072316 0.90647632
		 0.46494281 0.92348868 0.44516516 0.92348868 0.48472083 0.92348868 0.50449896 0.92348868
		 0.52427673 0.92348868 0.54405475 0.92348868 0.56383252 0.92348868 0.58361053 0.92348868
		 0.60338819 0.92348868 0.62316608 0.92348868 0.64294434 0.92348868 0.66272223 0.92348868
		 0.68249989 0.92348868 0.7022779 0.92348868 0.72205579 0.92348868 0.74183369 0.92348868
		 0.7616117 0.92348868 0.78138924 0.92348868 0.80116749 0.92348868 0.82094526 0.92348868
		 0.84072316 0.92348868 0.46494281 0.94050097 0.44516516 0.94050097 0.48472083 0.94050097
		 0.50449896 0.94050097 0.52427673 0.94050097 0.54405475 0.94050097 0.56383252 0.94050097
		 0.58361053 0.94050097 0.60338819 0.94050097 0.62316608 0.94050097 0.64294434 0.94050097
		 0.66272223 0.94050097 0.68249989 0.94050097 0.7022779 0.94050097 0.72205579 0.94050097
		 0.74183369 0.94050097 0.7616117 0.94050097 0.78138924 0.94050097 0.80116749 0.94050097
		 0.82094526 0.94050097 0.84072316 0.94050097 0.45505404 0.95751315 0.47483194 0.95751315
		 0.49460983 0.95751315 0.51438761 0.95751315 0.53416562 0.95751315 0.55394328 0.95751315
		 0.57372141 0.95751315 0.5934993 0.95751315 0.61327732 0.95751315 0.63305497 0.95751315
		 0.65283298 0.95751315 0.672611 0.95751315 0.69238889 0.95751315 0.71216655 0.95751315
		 0.73194492 0.95751315 0.75172246 0.95751315 0.77150059 0.95751315 0.79127848 0.95751315
		 0.81105638 0.95751315 0.83083439 0.95751315;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3532 ".vt";
	setAttr ".vt[0:165]"  8.8128624 109.69599915 0 7.68980694 112.40729523 0
		 5.90328407 114.73553467 0 3.57504249 116.52205658 0 0.86374736 117.64511108 0 -2.045830488 118.028167725 0
		 -4.95540905 117.64511871 0 -7.66670513 116.52206421 0 -9.99494839 114.7355423 0 -11.78147125 112.40729523 0
		 -12.90452766 109.69599915 0 -13.28758049 106.78642273 0 9.19592094 106.78642273 0
		 8.90268517 109.72006989 0.58713228 7.77033997 112.45378876 0.58713228 5.96903992 114.80129242 0.58713228
		 3.6215384 116.60259247 0.58713228 0.88781548 117.73493958 0.58713228 -2.045830488 118.12116241 0.58713228
		 -4.97947693 117.73493958 0.58713228 -7.71320057 116.6026001 0.58713228 -10.060703278 114.80129242 0.58713228
		 -11.86200523 112.45379639 0.58713228 -12.99435043 109.72006989 0.58713228 -13.38057232 106.78642273 0.58713228
		 9.28891277 106.78642273 0.58713228 9.16336441 109.78991699 1.11679208 8.0040588379 112.58872986 1.11679208
		 6.15987015 114.99212646 1.11679208 3.75647616 116.83631134 1.11679208 0.95766449 117.99562073 1.11679208
		 -2.045830488 118.39103699 1.11679208 -5.049325943 117.99562073 1.11679208 -7.84813881 116.83631897 1.11679208
		 -10.25153351 114.99212646 1.11679208 -12.095724106 112.58872986 1.11679208 -13.25503063 109.78991699 1.11679208
		 -13.65044785 106.78642273 1.11679208 9.5587883 106.78642273 1.11679208 9.56938267 109.89871216 1.53713238
		 8.36808395 112.79889679 1.53713238 6.4570961 115.28934479 1.53713238 3.96664596 117.20034027 1.53713238
		 1.066456556 118.40163422 1.53713238 -2.045830488 118.81137848 1.53713238 -5.15811777 118.40163422 1.53713238
		 -8.058308601 117.20034027 1.53713238 -10.54875946 115.28935242 1.53713238 -12.45974922 112.79890442 1.53713238
		 -13.66104794 109.89871216 1.53713238 -14.070788383 106.78642273 1.53713238 9.97912884 106.78642273 1.53713238
		 10.080993652 110.035797119 1.80700755 8.82678223 113.063728333 1.80700755 6.83162117 115.66387177 1.80700755
		 4.23147583 117.65903473 1.80700755 1.20354247 118.91324615 1.80700755 -2.045830488 119.34103394 1.80700755
		 -5.29520369 118.91324615 1.80700755 -8.32313824 117.65904236 1.80700755 -10.92328453 115.66387939 1.80700755
		 -12.91844749 113.063728333 1.80700755 -14.17265892 110.035797119 1.80700755 -14.60044765 106.78642273 1.80700755
		 10.50878811 106.78642273 1.80700755 10.64811993 110.18775177 1.90000021 9.33525372 113.35729218 1.90000021
		 7.24678612 116.079040527 1.90000021 4.52504158 118.16751099 1.90000021 1.35550332 119.48036957 1.90000021
		 -2.04583025 119.92816925 1.90000021 -5.44716454 119.4803772 1.90000021 -8.61670399 118.16751099 1.90000021
		 -11.33844948 116.079040527 1.90000021 -13.42691898 113.3572998 1.90000021 -14.73978519 110.1877594 1.90000021
		 -15.18758011 106.78642273 1.90000021 11.095920563 106.78642273 1.90000021 11.2152462 110.33971405 1.80700767
		 9.8437252 113.65086365 1.80700767 7.66195107 116.49420166 1.80700767 4.81860828 118.67597961 1.80700767
		 1.50746441 120.04750061 1.80700767 -2.04583025 120.51529694 1.80700767 -5.59912539 120.04750061 1.80700767
		 -8.91026974 118.67597961 1.80700767 -11.75361443 116.49420929 1.80700767 -13.93539047 113.65086365 1.80700767
		 -15.30691147 110.33972168 1.80700767 -15.77471256 106.78642273 1.80700767 11.68305302 106.78642273 1.80700767
		 11.72685814 110.47679901 1.5371325 10.30242443 113.91568756 1.5371325 8.036478043 116.86872864 1.5371325
		 5.08343792 119.13467407 1.5371325 1.64455056 120.55911255 1.5371325 -2.04583025 121.044960022 1.5371325
		 -5.73621178 120.55911255 1.5371325 -9.17510033 119.1346817 1.5371325 -12.1281414 116.86873627 1.5371325
		 -14.3940897 113.91569519 1.5371325 -15.81852436 110.47680664 1.5371325 -16.30437279 106.78642273 1.5371325
		 12.21271324 106.78642273 1.5371325 12.13287449 110.58559418 1.1167922 10.66644859 114.12586212 1.1167922
		 8.33370209 117.16595459 1.1167922 5.29360771 119.498703 1.1167922 1.75334239 120.96512604 1.1167922
		 -2.04583025 121.46530151 1.1167922 -5.84500313 120.96513367 1.1167922 -9.38527012 119.498703 1.1167922
		 -12.42536545 117.16595459 1.1167922 -14.75811386 114.12586212 1.1167922 -16.22454071 110.58559418 1.1167922
		 -16.72471237 106.78642273 1.1167922 12.63305283 106.78642273 1.1167922 12.39355469 110.65544128 0.58713239
		 10.90016747 114.26079559 0.58713239 8.52453327 117.35678101 0.58713239 5.428545 119.73242188 0.58713239
		 1.8231914 121.22580719 0.58713239 -2.04583025 121.73517609 0.58713239 -5.91485214 121.22580719 0.58713239
		 -9.52020741 119.73242188 0.58713239 -12.61619663 117.35678864 0.58713239 -14.99183273 114.26080322 0.58713239
		 -16.48521996 110.65544891 0.58713239 -16.99458694 106.78642273 0.58713239 12.90292835 106.78642273 0.58713239
		 12.48337841 110.67951202 0 10.98070145 114.30729675 0 8.59028912 117.42253876 0 5.47504139 119.81295776 0
		 1.84725976 121.31562805 0 -2.045830011 121.82817078 0 -5.9389205 121.31563568 0 -9.5667038 119.81295776 0
		 -12.68195248 117.42254639 0 -15.072366714 114.30729675 0 -16.57504463 110.67951202 0
		 -17.087579727 106.78642273 0 12.99592113 106.78642273 0 12.39355469 110.65544128 -0.58713239
		 10.90016747 114.26079559 -0.58713239 8.52453327 117.35678101 -0.58713239 5.428545 119.73242188 -0.58713239
		 1.8231914 121.22580719 -0.58713239 -2.04583025 121.73517609 -0.58713239 -5.91485214 121.22580719 -0.58713239
		 -9.52020741 119.73242188 -0.58713239 -12.61619663 117.35678864 -0.58713239 -14.99183273 114.26080322 -0.58713239
		 -16.48521996 110.65544891 -0.58713239 -16.99458694 106.78642273 -0.58713239 12.90292835 106.78642273 -0.58713239
		 12.13287449 110.58559418 -1.11679232 10.66644859 114.12586212 -1.11679232 8.33370209 117.16595459 -1.11679232
		 5.29360771 119.498703 -1.11679232 1.75334239 120.96512604 -1.11679232 -2.04583025 121.46530151 -1.11679232
		 -5.84500313 120.96513367 -1.11679232 -9.38527012 119.498703 -1.11679232 -12.42536545 117.16595459 -1.11679232
		 -14.75811386 114.12586212 -1.11679232;
	setAttr ".vt[166:331]" -16.22454071 110.58559418 -1.11679232 -16.72471237 106.78642273 -1.11679232
		 12.63305283 106.78642273 -1.11679232 11.72685814 110.47679901 -1.53713286 10.30242443 113.91568756 -1.53713286
		 8.036478043 116.86872864 -1.53713286 5.08343792 119.13467407 -1.53713286 1.64455056 120.55911255 -1.53713286
		 -2.04583025 121.044960022 -1.53713286 -5.73621178 120.55911255 -1.53713286 -9.17510033 119.1346817 -1.53713286
		 -12.1281414 116.86873627 -1.53713286 -14.3940897 113.91569519 -1.53713286 -15.81852436 110.47680664 -1.53713286
		 -16.30437279 106.78642273 -1.53713286 12.21271324 106.78642273 -1.53713286 11.2152462 110.33971405 -1.80700815
		 9.8437252 113.65086365 -1.80700815 7.66195107 116.49420166 -1.80700815 4.81860828 118.67597961 -1.80700815
		 1.50746441 120.04750061 -1.80700815 -2.04583025 120.51529694 -1.80700815 -5.59912539 120.04750061 -1.80700815
		 -8.91026974 118.67597961 -1.80700815 -11.75361443 116.49420929 -1.80700815 -13.93539047 113.65086365 -1.80700815
		 -15.30691147 110.33972168 -1.80700815 -15.77471256 106.78642273 -1.80700815 11.68305302 106.78642273 -1.80700815
		 10.64811993 110.18775177 -1.90000093 9.33525372 113.35729218 -1.90000093 7.24678612 116.079040527 -1.90000093
		 4.52504158 118.16751099 -1.90000093 1.35550332 119.48036957 -1.90000093 -2.04583025 119.92816925 -1.90000093
		 -5.44716454 119.4803772 -1.90000093 -8.61670399 118.16751099 -1.90000093 -11.33844948 116.079040527 -1.90000093
		 -13.42691898 113.3572998 -1.90000093 -14.73978519 110.1877594 -1.90000093 -15.18758011 106.78642273 -1.90000093
		 11.095920563 106.78642273 -1.90000093 10.080993652 110.035797119 -1.80700827 8.82678223 113.063728333 -1.80700827
		 6.83162117 115.66387177 -1.80700827 4.23147583 117.65903473 -1.80700827 1.20354247 118.91324615 -1.80700827
		 -2.045830488 119.34103394 -1.80700827 -5.29520369 118.91324615 -1.80700827 -8.32313824 117.65904236 -1.80700827
		 -10.92328453 115.66387939 -1.80700827 -12.91844749 113.063728333 -1.80700827 -14.17265892 110.035797119 -1.80700827
		 -14.60044765 106.78642273 -1.80700827 10.50878811 106.78642273 -1.80700827 9.56938171 109.89871216 -1.53713322
		 8.36808395 112.79889679 -1.53713322 6.45709515 115.28934479 -1.53713322 3.96664548 117.20033264 -1.53713322
		 1.066456318 118.40163422 -1.53713322 -2.045830488 118.81137848 -1.53713322 -5.15811729 118.40163422 -1.53713322
		 -8.058307648 117.20034027 -1.53713322 -10.54875851 115.28935242 -1.53713322 -12.45974827 112.79890442 -1.53713322
		 -13.66104698 109.89871216 -1.53713322 -14.07078743 106.78642273 -1.53713322 9.97912788 106.78642273 -1.53713322
		 9.16336346 109.78991699 -1.11679268 8.0040578842 112.58872986 -1.11679268 6.15986919 114.99211884 -1.11679268
		 3.75647569 116.83631134 -1.11679268 0.95766425 117.99562073 -1.11679268 -2.045830488 118.39103699 -1.11679268
		 -5.049325466 117.99562073 -1.11679268 -7.84813786 116.83631134 -1.11679268 -10.25153255 114.99212646 -1.11679268
		 -12.095723152 112.58872986 -1.11679268 -13.25502968 109.78991699 -1.11679268 -13.65044689 106.78642273 -1.11679268
		 9.55878735 106.78642273 -1.11679268 8.90268421 109.72006989 -0.58713263 7.77033901 112.45378876 -0.58713263
		 5.96903896 114.80129242 -0.58713263 3.62153792 116.60259247 -0.58713263 0.88781524 117.73493958 -0.58713263
		 -2.045830488 118.12116241 -0.58713263 -4.97947693 117.73493958 -0.58713263 -7.71320057 116.60259247 -0.58713263
		 -10.060702324 114.80129242 -0.58713263 -11.86200428 112.45379639 -0.58713263 -12.99434948 109.72006989 -0.58713263
		 -13.38057137 106.78642273 -0.58713263 9.28891182 106.78642273 -0.58713263 -9.48758221 48.85107422 0
		 -9.16927052 46.43325043 0 -8.23602581 44.18019867 0 -6.75144768 42.24546051 0 -4.81670809 40.76087952 0
		 -2.56365561 39.82763672 0 -0.14583255 39.50932312 0 2.27199078 39.82763672 0 4.52504349 40.76087952 0
		 6.45978403 42.2454567 0 7.94436359 44.18019867 0 8.8776083 46.43325043 0 9.19592094 48.85107422 0
		 -9.58057404 48.85107422 0.58713228 -9.25909328 46.4091835 0.58713228 -8.31655884 44.13370514 0.58713228
		 -6.81720304 42.17970276 0.58713228 -4.863204 40.68034744 0.58713228 -2.58772373 39.73781204 0.58713228
		 -0.14583255 39.41633224 0.58713228 2.29605865 39.73781204 0.58713228 4.5715394 40.68034744 0.58713228
		 6.5255394 42.17970276 0.58713228 8.024896622 44.13370132 0.58713228 8.96743107 46.4091835 0.58713228
		 9.28891277 48.85107422 0.58713228 -9.85044956 48.85107422 1.11679208 -9.51977348 46.3393364 1.11679208
		 -8.55027771 43.99876404 1.11679208 -7.0080337524 41.98887253 1.11679208 -4.99814177 40.44662857 1.11679208
		 -2.65757251 39.4771347 1.11679208 -0.14583255 39.14645386 1.11679208 2.36590767 39.47713089 1.11679208
		 4.70647717 40.44662857 1.11679208 6.71637011 41.98887253 1.11679208 8.25861549 43.99876404 1.11679208
		 9.22811127 46.33933258 1.11679208 9.5587883 48.85107422 1.11679208 -10.2707901 48.85107422 1.53713238
		 -9.92579079 46.23054123 1.53713238 -8.91430378 43.78859711 1.53713238 -7.30525923 41.69164658 1.53713238
		 -5.20831203 40.082603455 1.53713238 -2.76636481 39.071113586 1.53713238 -0.14583257 38.72611618 1.53713238
		 2.47469974 39.071113586 1.53713238 4.91664743 40.082603455 1.53713238 7.013595581 41.69164658 1.53713238
		 8.62264156 43.78859329 1.53713238 9.63412857 46.23054123 1.53713238 9.97912884 48.85107422 1.53713238
		 -10.80044937 48.85107422 1.80700755 -10.43740177 46.093456268 1.80700755 -9.37300205 43.52376556 1.80700755
		 -7.67978477 41.31712341 1.80700755 -5.47314167 39.62390518 1.80700755 -2.90345049 38.55950165 1.80700755
		 -0.14583258 38.19645691 1.80700755 2.61178565 38.55950165 1.80700755 5.18147707 39.62390137 1.80700755
		 7.38812113 41.3171196 1.80700755 9.081339836 43.52376556 1.80700755 10.14574051 46.093456268 1.80700755
		 10.50878811 48.85107422 1.80700755 -11.38758087 48.85107422 1.90000021 -11.0045280457 45.9414978 1.90000021
		 -9.88147354 43.23020172 1.90000021 -8.094950676 40.90195847 1.90000021 -5.7667079 39.11543274 1.90000021
		 -3.055411577 37.99237823 1.90000021 -0.1458326 37.60932159 1.90000021;
	setAttr ".vt[332:497]" 2.76374674 37.99237823 1.90000021 5.4750433 39.11543274 1.90000021
		 7.80328655 40.90195465 1.90000021 9.58981133 43.23019791 1.90000021 10.71286678 45.94149399 1.90000021
		 11.095920563 48.85107422 1.90000021 -11.97471333 48.85107422 1.80700767 -11.57165432 45.78953552 1.80700767
		 -10.38994503 42.93663406 1.80700767 -8.51011562 40.48679352 1.80700767 -6.060274124 38.6069603 1.80700767
		 -3.20737267 37.42525101 1.80700767 -0.14583263 37.022190094 1.80700767 2.91570783 37.42525101 1.80700767
		 5.76860952 38.6069603 1.80700767 8.2184515 40.4867897 1.80700767 10.098282814 42.93663025 1.80700767
		 11.27999306 45.78953171 1.80700767 11.68305302 48.85107422 1.80700767 -12.50437355 48.85107422 1.5371325
		 -12.083267212 45.65245056 1.5371325 -10.84864426 42.67180252 1.5371325 -8.88464165 40.11226654 1.5371325
		 -6.32510376 38.14826202 1.5371325 -3.34445882 36.91363907 1.5371325 -0.14583264 36.49253082 1.5371325
		 3.052793741 36.91363907 1.5371325 6.033439636 38.14826202 1.5371325 8.59297848 40.11226273 1.5371325
		 10.55698204 42.67180252 1.5371325 11.79160595 45.65244675 1.5371325 12.21271324 48.85107422 1.5371325
		 -12.92471313 48.85107422 1.1167922 -12.48928356 45.5436554 1.1167922 -11.21266842 42.46163559 1.1167922
		 -9.18186665 39.81504059 1.1167922 -6.53527355 37.78423691 1.1167922 -3.45325065 36.50762177 1.1167922
		 -0.14583266 36.072189331 1.1167922 3.16158581 36.50762177 1.1167922 6.24360943 37.78423691 1.1167922
		 8.89020348 39.81504059 1.1167922 10.92100716 42.46163177 1.1167922 12.1976223 45.5436554 1.1167922
		 12.63305283 48.85107422 1.1167922 -13.19458866 48.85107422 0.58713239 -12.74996376 45.47380829 0.58713239
		 -11.44638729 42.3266983 0.58713239 -9.37269688 39.62421036 0.58713239 -6.67021132 37.55051804 0.58713239
		 -3.52309966 36.24694061 0.58713239 -0.14583266 35.80231476 0.58713239 3.23143458 36.24694061 0.58713239
		 6.37854719 37.55051804 0.58713239 9.081033707 39.62420654 0.58713239 11.15472603 42.32669449 0.58713239
		 12.4583025 45.47380829 0.58713239 12.90292835 48.85107422 0.58713239 -13.28758144 48.85107422 0
		 -12.83978748 45.44974136 0 -11.52692127 42.28020096 0 -9.43845272 39.55845261 0 -6.71670771 37.46998596 0
		 -3.54716802 36.15711975 0 -0.14583266 35.70932388 0 3.25550294 36.15711594 0 6.42504358 37.46998215 0
		 9.14678955 39.55845261 0 11.23526001 42.28019714 0 12.54812622 45.44973755 0 12.99592113 48.85107422 0
		 -13.19458866 48.85107422 -0.58713239 -12.74996376 45.47380829 -0.58713239 -11.44638729 42.3266983 -0.58713239
		 -9.37269688 39.62421036 -0.58713239 -6.67021132 37.55051804 -0.58713239 -3.52309966 36.24694061 -0.58713239
		 -0.14583266 35.80231476 -0.58713239 3.23143458 36.24694061 -0.58713239 6.37854719 37.55051804 -0.58713239
		 9.081033707 39.62420654 -0.58713239 11.15472603 42.32669449 -0.58713239 12.4583025 45.47380829 -0.58713239
		 12.90292835 48.85107422 -0.58713239 -12.92471313 48.85107422 -1.11679232 -12.48928356 45.5436554 -1.11679232
		 -11.21266842 42.46163559 -1.11679232 -9.18186665 39.81504059 -1.11679232 -6.53527355 37.78423691 -1.11679232
		 -3.45325065 36.50762177 -1.11679232 -0.14583266 36.072189331 -1.11679232 3.16158581 36.50762177 -1.11679232
		 6.24360943 37.78423691 -1.11679232 8.89020348 39.81504059 -1.11679232 10.92100716 42.46163177 -1.11679232
		 12.1976223 45.5436554 -1.11679232 12.63305283 48.85107422 -1.11679232 -12.50437355 48.85107422 -1.53713286
		 -12.083267212 45.65245056 -1.53713286 -10.84864426 42.67180252 -1.53713286 -8.88464165 40.11226654 -1.53713286
		 -6.32510376 38.14826202 -1.53713286 -3.34445882 36.91363907 -1.53713286 -0.14583264 36.49253082 -1.53713286
		 3.052793741 36.91363907 -1.53713286 6.033439636 38.14826202 -1.53713286 8.59297848 40.11226273 -1.53713286
		 10.55698204 42.67180252 -1.53713286 11.79160595 45.65244675 -1.53713286 12.21271324 48.85107422 -1.53713286
		 -11.97471333 48.85107422 -1.80700815 -11.57165432 45.78953552 -1.80700815 -10.38994503 42.93663406 -1.80700815
		 -8.51011562 40.48679352 -1.80700815 -6.060274124 38.6069603 -1.80700815 -3.20737267 37.42525101 -1.80700815
		 -0.14583263 37.022190094 -1.80700815 2.91570783 37.42525101 -1.80700815 5.76860952 38.6069603 -1.80700815
		 8.2184515 40.4867897 -1.80700815 10.098282814 42.93663025 -1.80700815 11.27999306 45.78953171 -1.80700815
		 11.68305302 48.85107422 -1.80700815 -11.38758087 48.85107422 -1.90000093 -11.0045280457 45.9414978 -1.90000093
		 -9.88147354 43.23020172 -1.90000093 -8.094950676 40.90195847 -1.90000093 -5.7667079 39.11543274 -1.90000093
		 -3.055411577 37.99237823 -1.90000093 -0.1458326 37.60932159 -1.90000093 2.76374674 37.99237823 -1.90000093
		 5.4750433 39.11543274 -1.90000093 7.80328655 40.90195465 -1.90000093 9.58981133 43.23019791 -1.90000093
		 10.71286678 45.94149399 -1.90000093 11.095920563 48.85107422 -1.90000093 -10.80044937 48.85107422 -1.80700827
		 -10.43740177 46.093456268 -1.80700827 -9.37300205 43.52376556 -1.80700827 -7.67978477 41.31712341 -1.80700827
		 -5.47314167 39.62390518 -1.80700827 -2.90345049 38.55950165 -1.80700827 -0.14583258 38.19645691 -1.80700827
		 2.61178565 38.55950165 -1.80700827 5.18147707 39.62390137 -1.80700827 7.38812113 41.3171196 -1.80700827
		 9.081339836 43.52376556 -1.80700827 10.14574051 46.093456268 -1.80700827 10.50878811 48.85107422 -1.80700827
		 -10.27078915 48.85107422 -1.53713322 -9.92578983 46.23054123 -1.53713322 -8.91430283 43.78859711 -1.53713322
		 -7.30525875 41.69165039 -1.53713322 -5.20831156 40.082603455 -1.53713322 -2.76636434 39.071113586 -1.53713322
		 -0.14583257 38.72611618 -1.53713322 2.4746995 39.071113586 -1.53713322 4.91664696 40.082603455 -1.53713322
		 7.013595104 41.69164658 -1.53713322 8.62264061 43.78859329 -1.53713322 9.63412857 46.23054123 -1.53713322
		 9.97912788 48.85107422 -1.53713322 -9.85044861 48.85107422 -1.11679268 -9.51977253 46.3393364 -1.11679268
		 -8.55027676 43.99876785 -1.11679268 -7.0080327988 41.98887253 -1.11679268;
	setAttr ".vt[498:663]" -4.99814129 40.44662857 -1.11679268 -2.65757227 39.4771347 -1.11679268
		 -0.14583255 39.14645767 -1.11679268 2.36590743 39.4771347 -1.11679268 4.70647669 40.44662857 -1.11679268
		 6.71636963 41.98887253 -1.11679268 8.25861454 43.99876404 -1.11679268 9.22811031 46.33933258 -1.11679268
		 9.55878735 48.85107422 -1.11679268 -9.58057308 48.85107422 -0.58713263 -9.25909233 46.4091835 -0.58713263
		 -8.31655788 44.13370514 -0.58713263 -6.81720209 42.17970276 -0.58713263 -4.86320353 40.68034744 -0.58713263
		 -2.58772349 39.73781204 -0.58713263 -0.14583255 39.41633224 -0.58713263 2.29605842 39.73781204 -0.58713263
		 4.57153893 40.68034744 -0.58713263 6.52553844 42.17970276 -0.58713263 8.024895668 44.13370132 -0.58713263
		 8.96743011 46.4091835 -0.58713263 9.28891182 48.85107422 -0.58713263 -13.28758144 23.73847389 0
		 -12.83978748 20.33713913 0 -11.52692127 17.16759872 0 -9.43845272 14.44585323 0 -6.71670771 12.35738468 0
		 -3.54716802 11.044517517 0 -0.14583266 10.5967226 0 3.25550294 11.044516563 0 6.42504358 12.35738277 0
		 9.14678955 14.44585133 0 11.23526001 17.16759682 0 12.54812622 20.33713722 0 12.99592113 23.73847389 0
		 -13.38057327 23.73847389 0.58713228 -12.92961121 20.3130722 0.58713228 -11.60745525 17.12110329 0.58713228
		 -9.50420856 14.38009834 0.58713228 -6.76320362 12.2768507 0.58713228 -3.5712359 10.95469475 0.58713228
		 -0.14583266 10.50373077 0.58713228 3.27957106 10.95469379 0.58713228 6.4715395 12.27684975 0.58713228
		 9.21254539 14.38009644 0.58713228 11.31579304 17.12110138 0.58713228 12.63794994 20.3130703 0.58713228
		 13.088912964 23.73847389 0.58713228 -13.6504488 23.73847389 1.11679208 -13.19029045 20.24322319 1.11679208
		 -11.84117413 16.986166 1.11679208 -9.6950388 14.18926811 1.11679208 -6.89814138 12.043131828 1.11679208
		 -3.64108491 10.69401455 1.11679208 -0.14583267 10.2338562 1.11679208 3.34941983 10.6940136 1.11679208
		 6.60647678 12.043130875 1.11679208 9.40337563 14.18926525 1.11679208 11.54951191 16.98616409 1.11679208
		 12.89862919 20.24322128 1.11679208 13.35878849 23.73847389 1.11679208 -14.070789337 23.73847389 1.53713238
		 -13.59630775 20.13442993 1.53713238 -12.20519924 16.77599525 1.53713238 -9.99226475 13.89204216 1.53713238
		 -7.10831165 11.67910671 1.53713238 -3.74987698 10.28799725 1.53713238 -0.14583269 9.81351566 1.53713238
		 3.4582119 10.28799629 1.53713238 6.81664705 11.6791048 1.53713238 9.70060158 13.8920393 1.53713238
		 11.91353798 16.77599335 1.53713238 13.30464745 20.13442802 1.53713238 13.77912903 23.73847389 1.53713238
		 -14.60044765 23.73847389 1.80700755 -14.10791969 19.99734497 1.80700755 -12.66389751 16.51116562 1.80700755
		 -10.36678982 13.51751614 1.80700755 -7.37314129 11.22040844 1.80700755 -3.88696289 9.77638531 1.80700755
		 -0.1458327 9.28385639 1.80700755 3.59529781 9.77638435 1.80700755 7.081476688 11.22040653 1.80700755
		 10.075126648 13.51751423 1.80700755 12.37223625 16.51116371 1.80700755 13.81625843 19.99734306 1.80700755
		 14.3087883 23.73847389 1.80700755 -15.18758011 23.73847389 1.90000021 -14.67504597 19.84538269 1.90000021
		 -13.172369 16.21759987 1.90000021 -10.78195572 13.10235119 1.90000021 -7.66670752 10.71193695 1.90000021
		 -4.03892374 9.20925903 1.90000021 -0.14583272 8.69672394 1.90000021 3.7472589 9.20925808 1.90000021
		 7.37504292 10.71193504 1.90000021 10.49029255 13.10234833 1.90000021 12.88070774 16.21759796 1.90000021
		 14.38338566 19.84538269 1.90000021 14.89592075 23.73847389 1.90000021 -15.77471256 23.73847389 1.80700767
		 -15.24217224 19.69342232 1.80700767 -13.68084049 15.92403412 1.80700767 -11.19712067 12.68718624 1.80700767
		 -7.96027374 10.20346546 1.80700767 -4.19088459 8.64213276 1.80700767 -0.14583273 8.10959148 1.80700767
		 3.89921975 8.64213181 1.80700767 7.66860914 10.20346355 1.80700767 10.9054575 12.68718338 1.80700767
		 13.38917923 15.92403126 1.80700767 14.95051193 19.69342041 1.80700767 15.48305321 23.73847389 1.80700767
		 -16.30437088 23.7384758 1.5371325 -15.75378323 19.55633736 1.5371325 -14.13953876 15.65920448 1.5371325
		 -11.57164669 12.31266022 1.5371325 -8.22510338 9.74476719 1.5371325 -4.3279705 8.13052177 1.5371325
		 -0.14583275 7.57993317 1.5371325 4.036305904 8.13052082 1.5371325 7.9334383 9.74476528 1.5371325
		 11.27998352 12.31265736 1.5371325 13.8478775 15.65920162 1.5371325 15.46212292 19.55633545 1.5371325
		 16.012712479 23.73847389 1.5371325 -16.72471237 23.7384758 1.1167922 -16.15980148 19.4475441 1.1167922
		 -14.50356483 15.44903374 1.1167922 -11.86887264 12.015434265 1.1167922 -8.43527412 9.38074112 1.1167922
		 -4.43676281 7.72450256 1.1167922 -0.14583276 7.15959167 1.1167922 4.14509821 7.72450256 1.1167922
		 8.14360905 9.38073826 1.1167922 11.57720947 12.015431404 1.1167922 14.21190453 15.44903088 1.1167922
		 15.86814117 19.44754219 1.1167922 16.43305397 23.73847389 1.1167922 -16.99458694 23.7384758 0.58713239
		 -16.42048073 19.37769508 0.58713239 -14.73728371 15.31409645 0.58713239 -12.059702873 11.82460403 0.58713239
		 -8.57021141 9.14702225 0.58713239 -4.50661182 7.46382332 0.58713239 -0.14583278 6.8897171 0.58713239
		 4.21494722 7.46382332 0.58713239 8.27854633 9.14702034 0.58713239 11.7680397 11.82460117 0.58713239
		 14.44562244 15.31409359 0.58713239 16.12882042 19.37769318 0.58713239 16.70292854 23.73847389 0.58713239
		 -17.087579727 23.7384758 0 -16.5103054 19.35362816 0 -14.81781769 15.26760006 0 -12.12545872 11.75884819 0
		 -8.6167078 9.066488266 0 -4.53068018 7.37400055 0 -0.14583278 6.79672432 0 4.2390151 7.37399864 0
		 8.32504272 9.066486359 0 11.83379555 11.75884533 0 14.52615643 15.2675972 0 16.2186451 19.35362625 0
		 16.79592133 23.73847389 0 -16.99458694 23.7384758 -0.58713239;
	setAttr ".vt[664:829]" -16.42048073 19.37769508 -0.58713239 -14.73728371 15.31409645 -0.58713239
		 -12.059702873 11.82460403 -0.58713239 -8.57021141 9.14702225 -0.58713239 -4.50661182 7.46382332 -0.58713239
		 -0.14583278 6.8897171 -0.58713239 4.21494722 7.46382332 -0.58713239 8.27854633 9.14702034 -0.58713239
		 11.7680397 11.82460117 -0.58713239 14.44562244 15.31409359 -0.58713239 16.12882042 19.37769318 -0.58713239
		 16.70292854 23.73847389 -0.58713239 -16.72471237 23.7384758 -1.11679232 -16.15980148 19.4475441 -1.11679232
		 -14.50356483 15.44903374 -1.11679232 -11.86887264 12.015434265 -1.11679232 -8.43527412 9.38074112 -1.11679232
		 -4.43676281 7.72450256 -1.11679232 -0.14583276 7.15959167 -1.11679232 4.14509821 7.72450256 -1.11679232
		 8.14360905 9.38073826 -1.11679232 11.57720947 12.015431404 -1.11679232 14.21190453 15.44903088 -1.11679232
		 15.86814117 19.44754219 -1.11679232 16.43305397 23.73847389 -1.11679232 -16.30437088 23.7384758 -1.53713286
		 -15.75378323 19.55633736 -1.53713286 -14.13953876 15.65920448 -1.53713286 -11.57164669 12.31266022 -1.53713286
		 -8.22510338 9.74476719 -1.53713286 -4.3279705 8.13052177 -1.53713286 -0.14583275 7.57993317 -1.53713286
		 4.036305904 8.13052082 -1.53713286 7.9334383 9.74476528 -1.53713286 11.27998352 12.31265736 -1.53713286
		 13.8478775 15.65920162 -1.53713286 15.46212292 19.55633545 -1.53713286 16.012712479 23.73847389 -1.53713286
		 -15.77471256 23.73847389 -1.80700815 -15.24217224 19.69342232 -1.80700815 -13.68084049 15.92403412 -1.80700815
		 -11.19712067 12.68718624 -1.80700815 -7.96027374 10.20346546 -1.80700815 -4.19088459 8.64213276 -1.80700815
		 -0.14583273 8.10959148 -1.80700815 3.89921975 8.64213181 -1.80700815 7.66860914 10.20346355 -1.80700815
		 10.9054575 12.68718338 -1.80700815 13.38917923 15.92403126 -1.80700815 14.95051193 19.69342041 -1.80700815
		 15.48305321 23.73847389 -1.80700815 -15.18758011 23.73847389 -1.90000093 -14.67504597 19.84538269 -1.90000093
		 -13.172369 16.21759987 -1.90000093 -10.78195572 13.10235119 -1.90000093 -7.66670752 10.71193695 -1.90000093
		 -4.03892374 9.20925903 -1.90000093 -0.14583272 8.69672394 -1.90000093 3.7472589 9.20925808 -1.90000093
		 7.37504292 10.71193504 -1.90000093 10.49029255 13.10234833 -1.90000093 12.88070774 16.21759796 -1.90000093
		 14.38338566 19.84538269 -1.90000093 14.89592075 23.73847389 -1.90000093 -14.60044765 23.73847389 -1.80700827
		 -14.10791969 19.99734497 -1.80700827 -12.66389751 16.51116562 -1.80700827 -10.36678982 13.51751614 -1.80700827
		 -7.37314129 11.22040844 -1.80700827 -3.88696289 9.77638531 -1.80700827 -0.1458327 9.28385639 -1.80700827
		 3.59529781 9.77638435 -1.80700827 7.081476688 11.22040653 -1.80700827 10.075126648 13.51751423 -1.80700827
		 12.37223625 16.51116371 -1.80700827 13.81625843 19.99734306 -1.80700827 14.3087883 23.73847389 -1.80700827
		 -14.070788383 23.73847389 -1.53713322 -13.5963068 20.13442993 -1.53713322 -12.20519829 16.77599716 -1.53713322
		 -9.99226379 13.89204311 -1.53713322 -7.10831118 11.67910767 -1.53713322 -3.74987674 10.2879982 -1.53713322
		 -0.14583269 9.81351662 -1.53713322 3.45821166 10.28799725 -1.53713322 6.81664658 11.67910576 -1.53713322
		 9.70060062 13.89204025 -1.53713322 11.91353703 16.77599335 -1.53713322 13.30464649 20.13442993 -1.53713322
		 13.77912807 23.73847389 -1.53713322 -13.65044785 23.73847389 -1.11679268 -13.1902895 20.24322319 -1.11679268
		 -11.84117317 16.986166 -1.11679268 -9.6950388 14.18926811 -1.11679268 -6.89814091 12.043132782 -1.11679268
		 -3.64108467 10.6940155 -1.11679268 -0.14583267 10.23385715 -1.11679268 3.34941959 10.69401455 -1.11679268
		 6.60647631 12.043130875 -1.11679268 9.40337467 14.1892662 -1.11679268 11.54951096 16.98616409 -1.11679268
		 12.89862823 20.24322128 -1.11679268 13.35878754 23.73847389 -1.11679268 -13.38057232 23.73847389 -0.58713263
		 -12.92961025 20.3130722 -0.58713263 -11.6074543 17.12110519 -0.58713263 -9.50420761 14.3800993 -0.58713263
		 -6.76320314 12.27685165 -0.58713263 -3.57123566 10.9546957 -0.58713263 -0.14583266 10.50373173 -0.58713263
		 3.27957082 10.95469475 -0.58713263 6.47153902 12.2768507 -0.58713263 9.21254444 14.38009644 -0.58713263
		 11.31579208 17.12110138 -0.58713263 12.63794899 20.3130703 -0.58713263 13.08891201 23.73847389 -0.58713263
		 9.28891182 101.5195694 0.58713228 9.19592094 101.5195694 0 9.28891087 101.5195694 -0.58713263
		 9.55878639 101.5195694 -1.11679268 9.97912693 101.5195694 -1.53713322 10.50878716 101.5195694 -1.80700827
		 11.095920563 101.5195694 -1.90000081 11.68305302 101.5195694 -1.80700815 12.21271324 101.5195694 -1.53713286
		 12.63305283 101.5195694 -1.11679232 12.90292835 101.5195694 -0.58713233 12.99592018 101.5195694 0
		 12.90292835 101.5195694 0.58713233 12.63305283 101.5195694 1.1167922 12.21271324 101.5195694 1.53713238
		 11.68305302 101.5195694 1.80700755 11.095920563 101.5195694 1.90000021 10.50878716 101.5195694 1.80700743
		 9.97912788 101.5195694 1.53713226 9.55878735 101.5195694 1.11679196 9.28891182 96.25271606 0.58713222
		 9.19592094 96.25271606 0 9.28891087 96.25271606 -0.58713263 9.55878639 96.25271606 -1.11679268
		 9.97912598 96.25271606 -1.53713322 10.50878716 96.25271606 -1.80700815 11.095920563 96.25271606 -1.90000069
		 11.68305302 96.25271606 -1.80700803 12.21271324 96.25271606 -1.53713274 12.63305283 96.25271606 -1.1167922
		 12.90292835 96.25271606 -0.58713233 12.99592018 96.25271606 0 12.90292835 96.25271606 0.58713233
		 12.63305283 96.25271606 1.1167922 12.21271324 96.25271606 1.53713238 11.68305302 96.25271606 1.80700755
		 11.095920563 96.25271606 1.90000021 10.50878716 96.25271606 1.80700743 9.97912788 96.25271606 1.53713226
		 9.55878735 96.25271606 1.11679196 9.28891182 90.98586273 0.58713222 9.19592094 90.98586273 0
		 9.28891182 90.98586273 -0.58713269 9.55878639 90.98586273 -1.11679268 9.97912693 90.98586273 -1.53713322
		 10.50878811 90.98586273 -1.80700815 11.095920563 90.98586273 -1.90000069 11.68305302 90.98586273 -1.80700815
		 12.21271324 90.98586273 -1.53713286 12.63305283 90.98586273 -1.1167922;
	setAttr ".vt[830:995]" 12.90292835 90.98586273 -0.58713233 12.99592113 90.98586273 0
		 12.90292835 90.98586273 0.58713233 12.63305283 90.98586273 1.1167922 12.21271324 90.98586273 1.53713238
		 11.68305302 90.98586273 1.80700755 11.095920563 90.98586273 1.90000033 10.50878811 90.98586273 1.80700743
		 9.97912788 90.98586273 1.53713226 9.5587883 90.98586273 1.11679196 9.28891182 85.71901703 0.58713222
		 9.19592094 85.71901703 0 9.28891182 85.71901703 -0.58713269 9.55878639 85.71901703 -1.11679268
		 9.97912693 85.71901703 -1.53713322 10.50878811 85.71901703 -1.80700827 11.095920563 85.71901703 -1.90000069
		 11.68305302 85.71901703 -1.80700815 12.21271324 85.71901703 -1.53713286 12.63305283 85.71901703 -1.1167922
		 12.90292835 85.71901703 -0.58713233 12.99592113 85.71901703 0 12.90292835 85.71901703 0.58713233
		 12.63305283 85.71901703 1.1167922 12.21271324 85.71901703 1.53713238 11.68305302 85.71901703 1.80700755
		 11.095920563 85.71901703 1.90000033 10.50878811 85.71901703 1.80700743 9.97912788 85.71901703 1.53713226
		 9.5587883 85.71901703 1.11679196 9.28891182 80.4521637 0.58713222 9.19592094 80.4521637 0
		 9.28891182 80.4521637 -0.58713269 9.55878735 80.4521637 -1.11679268 9.97912693 80.4521637 -1.53713322
		 10.50878906 80.4521637 -1.80700827 11.095920563 80.4521637 -1.90000069 11.68305302 80.4521637 -1.80700815
		 12.2127142 80.4521637 -1.53713286 12.63305283 80.4521637 -1.1167922 12.90292931 80.4521637 -0.58713239
		 12.99592209 80.4521637 0 12.90292931 80.4521637 0.58713239 12.63305283 80.4521637 1.1167922
		 12.2127142 80.4521637 1.5371325 11.68305302 80.4521637 1.80700755 11.095920563 80.4521637 1.90000033
		 10.50878906 80.4521637 1.80700755 9.97912788 80.4521637 1.53713226 9.5587883 80.4521637 1.11679196
		 9.28891182 75.18531036 0.58713222 9.19592094 75.18531036 0 9.28891182 75.18531036 -0.58713269
		 9.55878735 75.18531036 -1.11679268 9.97912693 75.18531036 -1.53713322 10.50878906 75.18531036 -1.80700827
		 11.095920563 75.18531036 -1.90000069 11.68305206 75.18531036 -1.80700803 12.21271324 75.18531036 -1.53713274
		 12.63305283 75.18531036 -1.1167922 12.90292835 75.18531036 -0.58713239 12.99592209 75.18531036 0
		 12.90292835 75.18531036 0.58713239 12.63305283 75.18531036 1.1167922 12.21271324 75.18531036 1.5371325
		 11.68305206 75.18531036 1.80700755 11.095920563 75.18531036 1.90000033 10.50878906 75.18531036 1.80700755
		 9.97912788 75.18531036 1.53713226 9.5587883 75.18531036 1.11679196 9.28891182 69.91846466 0.58713222
		 9.19592094 69.91846466 0 9.28891182 69.91846466 -0.58713269 9.55878735 69.91846466 -1.11679268
		 9.97912693 69.91846466 -1.53713334 10.50878906 69.91846466 -1.80700827 11.095920563 69.91846466 -1.90000081
		 11.68305302 69.91846466 -1.80700815 12.2127142 69.91846466 -1.53713274 12.63305283 69.91846466 -1.1167922
		 12.90292835 69.91846466 -0.58713239 12.99592209 69.91846466 0 12.90292835 69.91846466 0.58713239
		 12.63305283 69.91846466 1.1167922 12.2127142 69.91846466 1.5371325 11.68305302 69.91846466 1.80700767
		 11.095920563 69.91846466 1.90000033 10.50878906 69.91846466 1.80700767 9.97912788 69.91846466 1.53713226
		 9.5587883 69.91846466 1.11679196 9.28891182 64.65161896 0.58713222 9.19592094 64.65161896 0
		 9.28891182 64.65161896 -0.58713269 9.55878735 64.65161896 -1.11679268 9.97912788 64.65161896 -1.53713334
		 10.50878906 64.65161896 -1.80700827 11.095920563 64.65161896 -1.90000093 11.68305302 64.65161896 -1.80700815
		 12.21271324 64.65161896 -1.53713274 12.63305283 64.65161896 -1.1167922 12.90292835 64.65161896 -0.58713239
		 12.99592209 64.65161896 0 12.90292835 64.65161896 0.58713239 12.63305283 64.65161896 1.1167922
		 12.21271324 64.65161896 1.5371325 11.68305302 64.65161896 1.80700767 11.095920563 64.65161896 1.90000021
		 10.50878906 64.65161896 1.80700755 9.97912788 64.65161896 1.53713226 9.5587883 64.65161896 1.11679196
		 9.28891182 59.38476944 0.58713222 9.19592094 59.38476944 0 9.28891182 59.38476944 -0.58713263
		 9.55878735 59.38476944 -1.11679268 9.97912788 59.38476944 -1.53713322 10.50878811 59.38476944 -1.80700827
		 11.095920563 59.38476944 -1.90000093 11.68305206 59.38476944 -1.80700803 12.21271324 59.38476944 -1.53713274
		 12.63305187 59.38476944 -1.1167922 12.9029274 59.38476944 -0.58713239 12.99592113 59.38476944 0
		 12.9029274 59.38476944 0.58713239 12.63305187 59.38476944 1.1167922 12.21271324 59.38476944 1.53713238
		 11.68305206 59.38476944 1.80700767 11.095920563 59.38476944 1.90000021 10.50878811 59.38476944 1.80700755
		 9.97912788 59.38476944 1.53713226 9.5587883 59.38476944 1.11679196 9.28891182 54.11791992 0.58713222
		 9.19592094 54.11791992 0 9.28891182 54.11791992 -0.58713263 9.55878735 54.11791992 -1.11679268
		 9.97912788 54.11791992 -1.53713322 10.50878811 54.11791992 -1.80700827 11.095920563 54.11791992 -1.90000093
		 11.68305206 54.11791992 -1.80700803 12.21271324 54.11791992 -1.53713274 12.63305283 54.11791992 -1.1167922
		 12.9029274 54.11791992 -0.58713239 12.99592113 54.11791992 0 12.9029274 54.11791992 0.58713239
		 12.63305283 54.11791992 1.1167922 12.21271324 54.11791992 1.5371325 11.68305206 54.11791992 1.80700767
		 11.095920563 54.11791992 1.90000021 10.50878811 54.11791992 1.80700755 9.97912788 54.11791992 1.53713226
		 9.5587883 54.11791992 1.11679196 -13.38057137 99.23660278 0.58713228 -13.65044689 99.23660278 1.11679196
		 -14.07078743 99.23660278 1.53713226 -14.60044765 99.23660278 1.80700743 -15.18758011 99.23660278 1.90000021
		 -15.77471256 99.23660278 1.80700755 -16.30437279 99.23660278 1.53713238 -16.72471237 99.23660278 1.1167922
		 -16.99458694 99.23660278 0.58713233 -17.087579727 99.23660278 0 -16.99458694 99.23660278 -0.58713233
		 -16.72471237 99.23660278 -1.11679232 -16.30437279 99.23660278 -1.53713286 -15.77471256 99.23660278 -1.80700815
		 -15.18758011 99.23660278 -1.90000081 -14.60044765 99.23660278 -1.80700827;
	setAttr ".vt[996:1161]" -14.070786476 99.23660278 -1.53713322 -13.65044594 99.23660278 -1.11679268
		 -13.38057041 99.23660278 -0.58713263 -13.28758049 99.23660278 0 -13.38057137 91.68679047 0.58713222
		 -13.65044689 91.68679047 1.11679196 -14.07078743 91.68679047 1.53713226 -14.60044765 91.68679047 1.80700743
		 -15.18757915 91.68679047 1.90000021 -15.77471161 91.68679047 1.80700755 -16.30437279 91.68679047 1.53713238
		 -16.72471237 91.68679047 1.1167922 -16.99458694 91.68679047 0.58713233 -17.087579727 91.68679047 0
		 -16.99458694 91.68679047 -0.58713233 -16.72471237 91.68679047 -1.1167922 -16.30437279 91.68679047 -1.53713274
		 -15.77471161 91.68679047 -1.80700803 -15.18757915 91.68679047 -1.90000069 -14.60044765 91.68679047 -1.80700815
		 -14.070786476 91.68679047 -1.53713322 -13.65044594 91.68679047 -1.11679268 -13.38057041 91.68679047 -0.58713263
		 -13.28758049 91.68679047 0 -13.38057232 84.13697815 0.58713222 -13.65044785 84.13697815 1.11679196
		 -14.070788383 84.13697815 1.53713226 -14.60044861 84.13697815 1.80700743 -15.18757915 84.13697815 1.90000033
		 -15.77471161 84.13697815 1.80700755 -16.30437279 84.13697815 1.53713238 -16.72471237 84.13697815 1.1167922
		 -16.99458694 84.13697815 0.58713233 -17.087579727 84.13697815 0 -16.99458694 84.13697815 -0.58713233
		 -16.72471237 84.13697815 -1.1167922 -16.30437279 84.13697815 -1.53713286 -15.77471161 84.13697815 -1.80700815
		 -15.18757915 84.13697815 -1.90000069 -14.60044861 84.13697815 -1.80700815 -14.07078743 84.13697815 -1.53713322
		 -13.65044594 84.13697815 -1.11679268 -13.38057137 84.13697815 -0.58713269 -13.28758049 84.13697815 0
		 -13.38057327 76.58716583 0.58713222 -13.65044785 76.58716583 1.11679196 -14.070789337 76.58716583 1.53713226
		 -14.60044861 76.58716583 1.80700743 -15.18758011 76.58716583 1.90000033 -15.77471161 76.58716583 1.80700755
		 -16.30437279 76.58716583 1.53713238 -16.72471237 76.58716583 1.1167922 -16.99458694 76.58716583 0.58713233
		 -17.087579727 76.58716583 0 -16.99458694 76.58716583 -0.58713233 -16.72471237 76.58716583 -1.1167922
		 -16.30437279 76.58716583 -1.53713286 -15.77471161 76.58716583 -1.80700815 -15.18758011 76.58716583 -1.90000069
		 -14.60044861 76.58716583 -1.80700827 -14.07078743 76.58716583 -1.53713322 -13.65044594 76.58716583 -1.11679268
		 -13.38057137 76.58716583 -0.58713269 -13.28758049 76.58716583 0 -13.38057327 69.037353516 0.58713222
		 -13.65044785 69.037353516 1.11679196 -14.070789337 69.037353516 1.53713226 -14.60044861 69.037353516 1.80700755
		 -15.18758011 69.037353516 1.90000033 -15.77471161 69.037353516 1.80700755 -16.30437279 69.037353516 1.5371325
		 -16.72471237 69.037353516 1.1167922 -16.99458694 69.037353516 0.58713239 -17.087579727 69.037353516 0
		 -16.99458694 69.037353516 -0.58713239 -16.72471237 69.037353516 -1.1167922 -16.30437279 69.037353516 -1.53713286
		 -15.77471161 69.037353516 -1.80700815 -15.18758011 69.037353516 -1.90000069 -14.60044861 69.037353516 -1.80700827
		 -14.07078743 69.037353516 -1.53713322 -13.65044594 69.037353516 -1.11679268 -13.38057137 69.037353516 -0.58713269
		 -13.28758049 69.037353516 0 -13.38057327 61.4875412 0.58713222 -13.65044785 61.4875412 1.11679196
		 -14.070789337 61.4875412 1.53713226 -14.60044765 61.4875412 1.80700755 -15.18758011 61.4875412 1.90000033
		 -15.77471161 61.4875412 1.80700755 -16.30437279 61.4875412 1.5371325 -16.72471237 61.4875412 1.1167922
		 -16.99458694 61.4875412 0.58713239 -17.087579727 61.4875412 0 -16.99458694 61.4875412 -0.58713239
		 -16.72471237 61.4875412 -1.1167922 -16.30437279 61.4875412 -1.53713274 -15.77471161 61.4875412 -1.80700803
		 -15.18758011 61.4875412 -1.90000069 -14.60044765 61.4875412 -1.80700827 -14.07078743 61.4875412 -1.53713322
		 -13.65044594 61.4875412 -1.11679268 -13.38057137 61.4875412 -0.58713269 -13.28758049 61.4875412 0
		 -13.38057423 53.93772888 0.58713222 -13.6504488 53.93772888 1.11679196 -14.070789337 53.93772888 1.53713226
		 -14.60044765 53.93772888 1.80700767 -15.18758011 53.93772888 1.90000033 -15.77471161 53.93772888 1.80700767
		 -16.30437279 53.93772888 1.5371325 -16.72471237 53.93772888 1.1167922 -16.99458694 53.93772888 0.58713239
		 -17.087579727 53.93772888 0 -16.99458694 53.93772888 -0.58713239 -16.72471237 53.93772888 -1.1167922
		 -16.30437279 53.93772888 -1.53713274 -15.77471161 53.93772888 -1.80700815 -15.18758011 53.93772888 -1.90000081
		 -14.60044765 53.93772888 -1.80700827 -14.07078743 53.93772888 -1.53713334 -13.65044594 53.93772888 -1.11679268
		 -13.38057137 53.93772888 -0.58713269 -13.28758144 53.93772888 0 -13.38057423 46.38791656 0.58713222
		 -13.6504488 46.38791656 1.11679196 -14.070789337 46.38791656 1.53713226 -14.60044765 46.38791656 1.80700755
		 -15.18758011 46.38791656 1.90000021 -15.77471161 46.38791656 1.80700767 -16.30437088 46.38791656 1.5371325
		 -16.72471237 46.38791656 1.1167922 -16.99458694 46.38791656 0.58713239 -17.087579727 46.38791656 0
		 -16.99458694 46.38791656 -0.58713239 -16.72471237 46.38791656 -1.1167922 -16.30437088 46.38791656 -1.53713274
		 -15.77471161 46.38791656 -1.80700815 -15.18758011 46.38791656 -1.90000093 -14.60044765 46.38791656 -1.80700827
		 -14.070788383 46.38791656 -1.53713334 -13.65044689 46.38791656 -1.11679268 -13.38057232 46.38791656 -0.58713269
		 -13.28758144 46.38791656 0 -13.38057327 38.83810043 0.58713222 -13.6504488 38.83810043 1.11679196
		 -14.070789337 38.83810043 1.53713226 -14.6004467 38.83810043 1.80700755 -15.18757915 38.83810043 1.90000021
		 -15.77471161 38.83810043 1.80700767 -16.30437088 38.83810043 1.53713238 -16.72471237 38.83810043 1.1167922
		 -16.99458694 38.83810043 0.58713239 -17.08757782 38.83810043 0 -16.99458694 38.83810043 -0.58713239
		 -16.72471237 38.83810043 -1.1167922 -16.30437088 38.83810043 -1.53713274 -15.77471161 38.83810043 -1.80700803
		 -15.18757915 38.83810043 -1.90000093 -14.6004467 38.83810043 -1.80700827 -14.07078743 38.83810043 -1.53713322
		 -13.65044594 38.83810043 -1.11679268 -13.38057137 38.83810043 -0.58713263 -13.28758049 38.83810043 0
		 -13.38057327 31.28828812 0.58713222 -13.6504488 31.28828812 1.11679196;
	setAttr ".vt[1162:1327]" -14.070789337 31.28828812 1.53713226 -14.6004467 31.28828812 1.80700755
		 -15.18758011 31.28828812 1.90000021 -15.77471161 31.28828812 1.80700767 -16.30437088 31.28828812 1.5371325
		 -16.72471237 31.28828812 1.1167922 -16.99458694 31.28828812 0.58713239 -17.08757782 31.28828812 0
		 -16.99458694 31.28828812 -0.58713239 -16.72471237 31.28828812 -1.1167922 -16.30437088 31.28828812 -1.53713274
		 -15.77471161 31.28828812 -1.80700803 -15.18758011 31.28828812 -1.90000093 -14.6004467 31.28828812 -1.80700827
		 -14.07078743 31.28828812 -1.53713322 -13.65044689 31.28828812 -1.11679268 -13.38057137 31.28828812 -0.58713263
		 -13.28758049 31.28828812 0 12.99592113 23.73847198 0 13.088912964 23.73847198 0.58713228
		 13.35878849 23.73847198 1.11679208 13.77912903 23.73847198 1.53713238 14.3087883 23.73847198 1.80700755
		 14.89592075 23.73847198 1.90000021 15.48305321 23.73847198 1.80700767 16.012712479 23.73847198 1.5371325
		 16.43305397 23.73847198 1.1167922 16.70292854 23.7384758 0.58713239 16.79592133 23.73847198 0
		 16.70292854 23.73847198 -0.58713239 16.43305397 23.73847198 -1.11679232 16.012712479 23.73847198 -1.53713286
		 15.48305321 23.73847198 -1.80700815 14.89592075 23.73847198 -1.90000093 14.3087883 23.73847198 -1.80700827
		 13.77912807 23.73847198 -1.53713322 13.35878754 23.73847198 -1.11679268 13.08891201 23.7384758 -0.58713263
		 12.99592113 73.19164276 0 13.088912964 73.19164276 0.58713228 13.35878849 73.19164276 1.11679208
		 13.77912903 73.19164276 1.53713238 14.3087883 73.19164276 1.80700755 14.89592075 73.19164276 1.90000021
		 15.48305321 73.19164276 1.80700767 16.012712479 73.19164276 1.5371325 16.43305397 73.19164276 1.1167922
		 16.70292854 73.19165039 0.58713239 16.79592133 73.19164276 0 16.70292854 73.19164276 -0.58713239
		 16.43305397 73.19164276 -1.11679232 16.012712479 73.19164276 -1.53713286 15.48305321 73.19164276 -1.80700815
		 14.89592075 73.19164276 -1.90000093 14.3087883 73.19164276 -1.80700827 13.77912807 73.19164276 -1.53713322
		 13.35878754 73.19164276 -1.11679268 13.08891201 73.19165039 -0.58713263 -9.48758221 71.059524536 0
		 -9.58057404 71.059524536 0.58713228 -9.85044956 71.059524536 1.11679208 -10.2707901 71.059524536 1.53713238
		 -10.80044937 71.059524536 1.80700755 -11.38758087 71.059524536 1.90000021 -11.97471333 71.059524536 1.80700767
		 -12.50437355 71.059524536 1.5371325 -12.92471313 71.059524536 1.1167922 -13.19458866 71.059524536 0.58713239
		 -13.28758144 71.059524536 0 -13.19458866 71.059524536 -0.58713239 -12.92471313 71.059524536 -1.11679232
		 -12.50437355 71.059524536 -1.53713286 -11.97471333 71.059524536 -1.80700815 -11.38758087 71.059524536 -1.90000093
		 -10.80044937 71.059524536 -1.80700827 -10.27078915 71.059524536 -1.53713322 -9.85044861 71.059524536 -1.11679268
		 -9.58057308 71.059524536 -0.58713263 -11.38758087 53.89474487 1.90000021 -11.97471237 53.89474487 1.80700755
		 -12.50437355 53.89474487 1.5371325 -12.92471313 53.89474487 1.1167922 -13.19458866 53.89474487 0.58713239
		 -13.28758144 53.89474487 0 -13.19458866 53.89474487 -0.58713239 -12.92471313 53.89474487 -1.11679232
		 -12.50437355 53.89474487 -1.53713286 -11.97471237 53.89474487 -1.80700803 -11.38758087 53.89474487 -1.90000093
		 -10.80044937 53.89474487 -1.80700827 -10.27078915 53.89474487 -1.53713322 -9.85044861 53.89474487 -1.11679268
		 -9.58057308 53.89474487 -0.58713263 -9.48758221 53.89474487 0 -9.58057404 53.89474487 0.58713228
		 -9.85044956 53.89474487 1.11679208 -10.2707901 53.89474487 1.53713226 -10.80044937 53.89474487 1.80700743
		 -11.38758087 61.51579285 1.90000021 -11.97471237 61.51579285 1.80700767 -12.50437355 61.51579285 1.5371325
		 -12.92471313 61.51579285 1.1167922 -13.19458866 61.51579285 0.58713239 -13.28758144 61.51579285 0
		 -13.19458866 61.51579285 -0.58713239 -12.92471313 61.51579285 -1.11679232 -12.50437355 61.51579285 -1.53713286
		 -11.97471237 61.51579285 -1.80700803 -11.38758087 61.51579285 -1.90000093 -10.80044937 61.51579285 -1.80700827
		 -10.27078915 61.51579285 -1.53713322 -9.85044861 61.51579285 -1.11679268 -9.58057308 61.51579285 -0.58713263
		 -9.48758221 61.51579285 0 -9.58057404 61.51579285 0.58713228 -9.85044956 61.51579285 1.11679208
		 -10.2707901 61.51579285 1.53713226 -10.80044937 61.51579285 1.80700755 -11.38758087 67.64767456 1.90000033
		 -11.97471237 67.64767456 1.80700767 -12.50437355 67.64767456 1.5371325 -12.92471313 67.64767456 1.1167922
		 -13.19458866 67.64767456 0.58713239 -13.2875824 67.64767456 0 -13.19458866 67.64767456 -0.58713239
		 -12.92471313 67.64767456 -1.11679232 -12.50437355 67.64767456 -1.53713286 -11.97471237 67.64767456 -1.80700815
		 -11.38758087 67.64767456 -1.90000081 -10.80044937 67.64767456 -1.80700827 -10.27078915 67.64767456 -1.53713322
		 -9.85044861 67.64767456 -1.11679268 -9.58057308 67.64767456 -0.58713263 -9.48758221 67.64767456 0
		 -9.58057404 67.64767456 0.58713228 -9.85044956 67.64767456 1.11679208 -10.2707901 67.64767456 1.53713226
		 -10.80044937 67.64767456 1.80700755 14.89592075 69.96902466 1.90000021 14.3087883 69.96902466 1.80700755
		 13.77912903 69.96902466 1.53713238 13.35878849 69.96902466 1.11679208 13.088912964 69.96902466 0.58713228
		 12.99592113 69.96902466 0 13.08891201 69.96903229 -0.58713263 13.35878754 69.96902466 -1.11679268
		 13.77912807 69.96902466 -1.53713322 14.3087883 69.96902466 -1.80700827 14.89592075 69.96902466 -1.90000093
		 15.48305321 69.96902466 -1.80700815 16.012712479 69.96902466 -1.53713286 16.43305397 69.96902466 -1.11679232
		 16.70292854 69.96902466 -0.58713239 16.79592133 69.96902466 0 16.70292854 69.96903229 0.58713239
		 16.43305397 69.96902466 1.1167922 16.012712479 69.96902466 1.5371325 15.48305321 69.96902466 1.80700767
		 14.89592075 64.75691986 1.90000021 14.3087883 64.75691986 1.80700755 13.77912903 64.75691986 1.53713238
		 13.35878849 64.75691986 1.11679208 13.088912964 64.75691986 0.58713228 12.99592113 64.75691986 0
		 13.08891201 64.75692749 -0.58713263 13.35878754 64.75691986 -1.11679268;
	setAttr ".vt[1328:1493]" 13.77912807 64.75691986 -1.53713322 14.3087883 64.75691986 -1.80700827
		 14.89592075 64.75691986 -1.90000105 15.48305321 64.75691986 -1.80700815 16.012712479 64.75691986 -1.53713286
		 16.43305397 64.75691986 -1.11679232 16.70292854 64.75691986 -0.58713239 16.79592133 64.75691986 0
		 16.70292854 64.75692749 0.58713239 16.43305397 64.75691986 1.1167922 16.012712479 64.75691986 1.5371325
		 15.48305321 64.75691986 1.80700767 14.89592075 59.41342926 1.9000001 14.3087883 59.41342926 1.80700755
		 13.77912903 59.41342926 1.53713238 13.35878849 59.41342926 1.11679208 13.088912964 59.41342926 0.58713228
		 12.99592113 59.41342926 0 13.08891201 59.41343689 -0.58713263 13.35878754 59.41342926 -1.11679268
		 13.77912712 59.41342926 -1.53713322 14.3087883 59.41342926 -1.80700827 14.89592075 59.41342926 -1.90000105
		 15.48305321 59.41342926 -1.80700815 16.012712479 59.41342926 -1.53713286 16.43305397 59.41342926 -1.11679232
		 16.70292854 59.41342926 -0.58713239 16.79592133 59.41342926 0 16.70292854 59.41343689 0.58713239
		 16.43305397 59.41342926 1.1167922 16.012712479 59.41342926 1.5371325 15.48305321 59.41342926 1.80700779
		 14.89592171 54.24513626 1.9000001 14.3087883 54.24513626 1.80700755 13.77912903 54.24513626 1.53713238
		 13.35878849 54.24513626 1.11679208 13.088912964 54.24513626 0.58713228 12.99592113 54.24513626 0
		 13.088911057 54.24514389 -0.58713263 13.35878754 54.24513626 -1.11679268 13.77912807 54.24513626 -1.53713322
		 14.3087883 54.24513626 -1.80700827 14.89592171 54.24513626 -1.90000105 15.48305321 54.24513626 -1.80700827
		 16.012712479 54.24513626 -1.53713274 16.43305397 54.24513626 -1.11679232 16.70292854 54.24513626 -0.58713239
		 16.79592133 54.24513626 0 16.70292854 54.24514389 0.58713239 16.43305397 54.24513626 1.1167922
		 16.012712479 54.24513626 1.5371325 15.48305321 54.24513626 1.80700779 14.89592171 48.98924637 1.9000001
		 14.3087883 48.98924637 1.80700755 13.77912903 48.98924637 1.53713238 13.35878849 48.98924637 1.11679208
		 13.088912964 48.98924637 0.58713228 12.99592113 48.98924637 0 13.088911057 48.989254 -0.58713263
		 13.35878754 48.98924637 -1.11679268 13.77912807 48.98924637 -1.53713322 14.3087883 48.98924637 -1.80700827
		 14.89592171 48.98924637 -1.90000105 15.48305321 48.98924637 -1.80700827 16.012712479 48.98924637 -1.53713274
		 16.43305397 48.98924637 -1.11679232 16.70292854 48.98924637 -0.58713239 16.79592133 48.98924637 0
		 16.70292854 48.989254 0.58713239 16.43305397 48.98924637 1.1167922 16.012712479 48.98924637 1.5371325
		 15.48305321 48.98924637 1.80700779 14.89592171 38.69644928 1.9000001 14.3087883 38.69644928 1.80700755
		 13.77912903 38.69644928 1.53713238 13.35878849 38.69644928 1.11679208 13.088912964 38.69644928 0.58713228
		 12.99592113 38.69644928 0 13.088911057 38.69645691 -0.58713263 13.35878754 38.69644928 -1.11679268
		 13.77912712 38.69644928 -1.53713322 14.3087883 38.69644928 -1.80700827 14.89592171 38.69644928 -1.90000093
		 15.48305321 38.69644928 -1.80700827 16.012712479 38.69644928 -1.53713274 16.43305397 38.69644928 -1.11679232
		 16.70292854 38.69644928 -0.58713239 16.79592133 38.69644928 0 16.70292854 38.69645691 0.58713239
		 16.43305397 38.69644928 1.1167922 16.012712479 38.69644928 1.5371325 15.48305321 38.69644928 1.80700779
		 16.012712479 43.64575195 1.5371325 15.48305321 43.64575195 1.80700779 14.89592171 43.64575195 1.9000001
		 14.3087883 43.64575195 1.80700755 13.77912903 43.64575195 1.53713238 13.35878849 43.64575195 1.11679208
		 13.088912964 43.64575195 0.58713228 12.99592113 43.64575195 0 13.088911057 43.64575958 -0.58713263
		 13.35878754 43.64575195 -1.11679268 13.77912712 43.64575195 -1.53713322 14.3087883 43.64575195 -1.80700827
		 14.89592171 43.64575195 -1.90000105 15.48305321 43.64575195 -1.80700827 16.012712479 43.64575195 -1.53713274
		 16.43305397 43.64575195 -1.11679232 16.70292854 43.64575195 -0.58713239 16.79592133 43.64575195 0
		 16.70292854 43.64575958 0.58713239 16.43305397 43.64575195 1.1167922 15.48305321 31.16300201 1.80700779
		 14.89592171 31.16300201 1.9000001 14.3087883 31.16300201 1.80700755 13.77912903 31.16300201 1.53713238
		 13.35878849 31.16300201 1.11679208 13.088912964 31.16300201 0.58713228 12.99592113 31.16300201 0
		 13.088911057 31.16300583 -0.58713263 13.35878754 31.16300201 -1.11679268 13.77912712 31.16300201 -1.53713322
		 14.3087883 31.16300201 -1.80700827 14.89592171 31.16300201 -1.90000093 15.48305321 31.16300201 -1.80700827
		 16.012712479 31.16300201 -1.53713274 16.43305397 31.16300201 -1.11679232 16.70292854 31.16300201 -0.58713239
		 16.79592133 31.16300201 0 16.70292854 31.16300583 0.58713239 16.43305397 31.16300201 1.1167922
		 16.012712479 31.16300201 1.5371325 -24.091808319 103.28154755 7.59875774 -24.032737732 103.21398163 7.44878721
		 -23.93640518 103.12304688 7.35609961 -23.82891083 103.015434265 7.33672237 -23.71961212 102.90660095 7.39400625
		 -23.62788391 102.817276 7.51804638 -23.57659149 102.76721954 7.68739414 -23.57680511 102.7682724 7.87276888
		 -23.6309166 102.82113647 8.042117119 -23.72677994 102.9135437 8.16615677 -23.84572983 103.03313446 8.22344112
		 -23.96910095 103.15454865 8.20406342 -24.070835114 103.25678253 8.11137676 -24.13225937 103.3196106 7.96140528
		 -24.14060211 103.32933807 7.78008175 -23.46179199 104.83703613 7.42535925 -23.36458969 104.70006561 7.13197136
		 -23.20023346 104.47458649 6.95064783 -23.023937225 104.23799133 6.91274071 -22.84051132 104.001449585 7.024805069
		 -22.68619919 103.80931091 7.26746273 -22.59930801 103.70324707 7.59875774 -22.60173798 103.70597839 7.96140528
		 -22.69165039 103.81604767 8.29269981 -22.85312653 104.016036987 8.53535843 -23.052600861 104.27041626 8.64742279
		 -23.25234604 104.53366089 8.60951614 -23.41539383 104.75499725 8.42819214 -23.51122665 104.89107513 8.13480473
		 -23.52027512 104.9120636 7.78008175 -22.33334732 106.3136673 7.26746368 -22.25010681 106.10069275 6.84348106
		 -22.092941284 105.74353027 6.58144569 -21.8875885 105.31064606 6.52666521;
	setAttr ".vt[1494:1659]" -21.71160126 104.95066071 6.68861246 -21.55667877 104.65663147 7.039283752
		 -21.4667244 104.49233246 7.5180459 -21.47039795 104.49721527 8.042117119 -21.56520844 104.66921997 8.52087975
		 -21.73217392 104.98290253 8.87155056 -21.93399048 105.38355255 9.03349781 -22.13151169 105.80030823 8.9787178
		 -22.28699112 106.15276337 8.71668243 -22.37319946 106.37065887 8.29269981 -22.37172318 106.40507507 7.78008175
		 -20.78081131 107.64527893 7.13197184 -20.7267952 107.36286926 6.59592485 -20.60403824 106.87772369 6.26463032
		 -20.43531799 106.27802277 6.19537067 -20.28749466 105.7831192 6.40012169 -20.16654968 105.38434601 6.84348106
		 -20.095615387 105.15604401 7.44878674 -20.10049057 105.1631012 8.11137676 -20.17991257 105.4045639 8.71668243
		 -20.31806946 105.8404541 9.16004181 -20.48561478 106.39076996 9.36479282 -20.64808655 106.95656586 9.29553318
		 -20.77076721 107.43125916 8.96423817 -20.83042908 107.72283936 8.42819214 -20.81122589 107.76842499 7.78008175
		 -19.055671692 108.70254517 7.024804592 -19.029632568 108.37246704 6.40012264 -18.93943787 107.79556274 6.014046669
		 -18.8073082 107.07396698 5.93333435 -18.69470978 106.50714111 6.17194271 -18.59873199 106.040077209 6.68861198
		 -18.54337692 105.76873779 7.39400625 -18.54946899 105.77761078 8.16615677 -18.61619949 106.066452026 8.87155151
		 -18.72965431 106.58118439 9.38822079 -18.86457062 107.23100281 9.62682819 -18.99187088 107.89862061 9.54611683
		 -19.082847595 108.4577179 9.16004181 -19.11796188 108.7986908 8.53535843 -19.081893921 108.8507309 7.78008175
		 -17.33702278 109.53756714 6.95064831 -17.31463623 109.17053986 6.26463079 -17.23204613 108.53302002 5.84064817
		 -17.10780716 107.71704865 5.7520113 -17.0081939697 107.10152435 6.014047146 -16.92273331 106.58092499 6.58144522
		 -16.87508774 106.28230286 7.35609913 -16.88205338 106.29249573 8.20406342 -16.94264221 106.61073303 8.9787178
		 -17.046585083 107.18292999 9.54611588 -17.17125702 107.90554047 9.80815125 -17.29022408 108.64762878 9.7195158
		 -17.37686539 109.26948547 9.29553318 -17.40716362 109.64945984 8.60951614 -17.36596298 109.70632172 7.78008175
		 -15.5544157 110.033058167 6.91274071 -15.53593731 109.64613342 6.19537067 -15.45709896 108.97203827 5.75201178
		 -15.33566952 108.11386108 5.65932417 -15.24171925 107.47697449 5.93333435 -15.16285801 106.93667603 6.52666473
		 -15.11974239 106.6255188 7.3367219 -15.12705231 106.63633728 8.22344017 -15.1843214 106.96868134 9.03349781
		 -15.28196907 107.56451416 9.62682819 -15.40073967 108.32085419 9.90083885 -15.51807594 109.09513092 9.8081522
		 -15.60088253 109.75138855 9.36479282 -15.62695885 110.15078735 8.64742279 -15.58250427 110.21109009 7.78008175
		 -13.64383221 110.2857132 6.91274071 -13.63113689 109.90615082 6.19537067 -13.56880474 109.2459259 5.75201178
		 -13.48297405 108.40359497 5.65932417 -13.42345715 107.76819611 5.93333435 -13.37966633 107.23318481 6.52666473
		 -13.35968685 106.92326355 7.3367219 -13.36683369 106.93374634 8.22344017 -13.40129757 107.26342773 9.03349781
		 -13.45995617 107.85599518 9.62682819 -13.54062748 108.60066223 9.90083885 -13.62742043 109.36395264 9.8081522
		 -13.69415855 110.0076675415 9.36479282 -13.71440315 110.40037537 8.64742279 -13.66915607 110.45797729 7.78008175
		 -11.60900402 110.28477478 6.95064831 -11.62769413 109.91682434 6.26463079 -11.62105846 109.27601624 5.84064817
		 -11.61403751 108.47006226 5.7520113 -11.61735535 107.84176636 6.014047146 -11.62926674 107.32393646 6.58144522
		 -11.64169216 107.020515442 7.35609913 -11.64825726 107.030281067 8.20406342 -11.64763737 107.35042572 8.9787178
		 -11.64718151 107.92378235 9.54611588 -11.6558485 108.64656067 9.80815125 -11.67157459 109.38735962 9.7195158
		 -11.68454456 110.008392334 9.29553318 -11.67268944 110.38832092 8.60951614 -11.61979389 110.44665527 7.78008175
		 -9.69836617 109.86551666 7.024804592 -9.760746 109.52098846 6.40012264 -9.82543945 108.92669678 6.014046669
		 -9.9018383 108.18732452 5.93333435 -9.96747875 107.59096527 6.17194271 -10.027635574 107.1026535 6.68861198
		 -10.06661129 106.82185364 7.39400625 -10.072231293 106.82968903 8.16615677 -10.043203354 107.12534332 8.87155151
		 -9.98856354 107.65630341 9.38822079 -9.92504311 108.32758331 9.62682819 -9.86405182 109.017593384 9.54611683
		 -9.80753899 109.59564972 9.16004181 -9.75044632 109.95036316 8.53535843 -9.68433666 110.0060577393 7.78008175
		 -8.13829613 109.13565826 7.13197184 -8.23256207 108.83686829 6.59592485 -8.34389591 108.32538605 6.26463032
		 -8.4691658 107.69470215 6.19537067 -8.57179642 107.16414642 6.40012169 -8.65559387 106.73036194 6.84348106
		 -8.7064352 106.48448944 7.44878674 -8.71098804 106.49216461 8.11137676 -8.66649342 106.74703979 8.71668243
		 -8.58555508 107.20972443 9.16004181 -8.48167038 107.79429626 9.36479282 -8.37115288 108.39242554 9.29553318
		 -8.26820087 108.89360809 8.96423817 -8.17854977 109.19997406 8.42819214 -8.10517311 109.24636078 7.78008175
		 -7.0041241646 108.31864929 7.26746368 -7.10181999 108.08480072 6.84348106 -7.22029305 107.6855011 6.58144569
		 -7.34834337 107.1949234 6.52666521 -7.45354891 106.7641449 6.68861246 -7.53710651 106.41662598 7.039283752
		 -7.58560085 106.22055817 7.5180459 -7.58894825 106.22589111 8.042117119 -7.54527235 106.42868042 8.52087975
		 -7.4630785 106.79521942 8.87155056 -7.3564558 107.25817108 9.03349781 -7.2394743 107.73126984 8.9787178
		 -7.12742519 108.12545776 8.71668243 -7.032938004 108.36452484 8.29269981 -6.9643569 108.39774323 7.78008175
		 -6.26393414 107.58013153 7.42535925 -6.34073257 107.42195129 7.13197136 -6.43412209 107.15103149 6.95064783
		 -6.53360701 106.81937408 6.91274071 -6.61709881 106.51982117 7.024805069 -6.68265867 106.27957916 7.26746273
		 -6.71974325 106.14527893 7.59875774 -6.72191477 106.14849854 7.96140528 -6.68803167 106.28967285 8.29269981
		 -6.62495852 106.54006958 8.53535843 -6.54046726 106.85669708 8.64742279 -6.44752741 107.18036652 8.60951614
		 -6.35818338 107.44935608 8.42819214 -6.28335571 107.61096954 8.13480473 -6.23124504 107.63085938 7.78008175
		 -5.88096428 106.98580933 7.59875774 -5.92226219 106.90737915 7.44878721 -5.97409678 106.77360535 7.35609961
		 -6.029136181 106.60967255 7.33672237 -6.075962067 106.45896912 7.39400625;
	setAttr ".vt[1660:1825]" -6.11269569 106.33921814 7.51804638 -6.1336441 106.27248383 7.68739414
		 -6.1347003 106.27481842 7.87276888 -6.11679029 106.3452301 8.042117119 -6.08193779 106.47059631 8.16615677
		 -6.034330368 106.62900543 8.22344112 -5.98242664 106.79000854 8.20406342 -5.93249035 106.92354584 8.11137676
		 -5.89089823 107.0022506714 7.96140528 -5.86521435 107.014198303 7.78008175 -24.52622223 101.86821747 7.78008175
		 -5.84893608 106.5578537 7.78008175 19.99673271 103.27461243 7.54828835 19.93674469 103.20704651 7.39868355
		 19.83980942 103.1161499 7.30658531 19.73212242 103.0086135864 7.28786659 19.62306976 102.89989471 7.34581804
		 19.53199387 102.81067657 7.47041607 19.48163795 102.76071167 7.64007473 19.48292351 102.76182556 7.82544422
		 19.53805733 102.8147049 7.99445915 19.6347065 102.9070816 8.11791134 19.75407791 103.026603699 8.17446709
		 19.87742615 103.14791107 8.15433598 19.97870445 103.25003815 8.061027527 20.039308548 103.31277466 7.91068268
		 20.046611786 103.32242584 7.72931051 19.36692429 104.83052063 7.37800455 19.26792145 104.69354248 7.085229874
		 19.10234833 104.46812439 6.90493536 18.92565155 104.23165131 6.86812782 18.74269867 103.99528503 6.98133039
		 18.58964157 103.80335236 7.22494173 18.50458336 103.69746399 7.55676889 18.5091095 103.70031738 7.91939497
		 18.60102081 103.8104248 8.25012684 18.76405144 104.010368347 8.49178123 18.96436119 104.26463318 8.60260487
		 19.16409302 104.52770996 8.56345463 19.32625961 104.74886322 8.38111687 19.42050171 104.88476563 8.087134361
		 19.42751694 104.90563202 7.73235798 18.23872375 106.30797577 7.22613096 18.15287209 106.094932556 6.8027091
		 17.99391937 105.73778534 6.54170752 17.78792 105.30505371 6.4882617 17.6125927 104.94525909 6.6513443
		 17.45947266 104.65146637 7.0030050278 17.37215996 104.48740387 7.48233509 17.3788662 104.4924469 8.0063743591
		 17.47657394 104.66454315 8.48452282 17.64580536 104.97821808 8.83411694 17.8488636 105.37876129 8.99475861
		 18.046384811 105.79534912 8.93869686 18.20062065 106.14759827 8.67564774 18.28454208 106.36528015 8.25110054
		 18.28013039 106.3995285 7.73848772 16.68645668 107.64073944 7.099160194 16.6291256 107.35819244 6.56353092
		 16.50408554 106.87303925 6.2331152 16.33450317 106.2734375 6.16503525 16.18748283 105.77871704 6.37080574
		 16.068796158 105.38018799 6.814991 16.0011844635 105.15214539 7.42077398 16.0098953247 105.15942383 8.083322525
		 16.092998505 105.40102386 8.68807697 16.23405266 105.83695221 9.13048267 16.40320206 106.38720703 9.33407593
		 16.56570625 106.95285797 9.26368618 16.68683434 107.42735291 8.93152809 16.74362373 107.71870422 8.39504623
		 16.72071075 107.76408386 7.7470417 14.96154022 108.69930267 7.0016050339 14.93163681 108.36903381 6.37719488
		 14.83877087 107.79207611 5.99184322 14.70561886 107.070556641 5.91214132 14.59396648 106.50389099 6.15158749
		 14.50061512 106.037071228 6.66896152 14.4491272 105.7660141 7.37475586 14.45969105 105.77514648 8.14685535
		 14.53071594 106.064170837 8.85175419 14.64755249 106.57898712 9.36758518 14.78434467 107.22878265 9.60518837
		 14.91169262 107.89627075 9.5235157 15.00086688995 108.45517731 9.1367321 15.032633781 108.79590607 8.51174068
		 14.99223995 108.84772491 7.75666714 13.24313736 109.53562927 6.9370966 13.2165041 109.168396 6.2513442
		 13.13097382 108.53079987 5.82806253 13.0055980682 107.71489716 5.74042273 12.90702534 107.099525452 6.0032377243
		 12.82444286 106.57919312 6.57129765 12.78104401 106.2808609 7.34631538 12.79291821 106.29132843 8.1942215
		 12.85822773 106.60977936 8.96840477 12.96588802 107.18208313 9.53499889 13.092628479 107.9046936 9.79606438
		 13.21165371 108.64665985 9.70649052 13.29632378 109.26830292 9.28180313 13.32294846 109.64803314 8.59549332
		 13.27699947 109.70464325 7.76629162 11.46072197 110.032485962 6.90932226 11.43779945 109.64533997 6.19220257
		 11.35588264 108.97116089 5.74953556 11.2332592 108.11303711 5.65784216 11.14040184 107.47631836 5.93260765
		 11.064554214 106.93627167 6.52656651 11.025880814 106.62541962 7.33696461 11.038322449 106.63653564 8.22362232
		 11.10052776 106.96910858 9.033222198 11.20206261 107.56505585 9.62577629 11.32299709 108.32139587 9.898839
		 11.44039154 109.095558167 9.80521297 11.5211401 109.75160217 9.36116028 11.54337788 110.15073395 8.64351559
		 11.49395943 110.21078491 7.77642584 9.55036449 110.28661346 6.92027664 9.53323269 109.90682983 6.20312071
		 9.46783066 109.24649811 5.76035357 9.38081741 108.40419769 5.6684494 9.32239532 107.76894379 5.9430151
		 9.28162289 107.23416901 6.53676939 9.26608562 106.92453766 7.34703398 9.27836418 106.93530273 8.23369217
		 9.31776237 107.26522827 9.043424606 9.38030529 107.8579483 9.63620567 9.46313095 108.60264587 9.90949249
		 9.54997444 109.3658371 9.81604671 9.61464691 110.0093612671 9.37209034 9.6310482 110.40180206 8.65448284
		 9.58083344 110.45914459 7.78739786 7.51578999 110.28726959 6.96994114 7.53023195 109.91906738 6.28395176
		 7.52065277 109.27812195 5.86023235 7.51249933 108.47213745 5.77191162 7.51684809 107.84393311 6.034136295
		 7.53163719 107.32628632 6.6016326 7.54830599 107.023109436 7.37630463 7.5597806 107.033157349 8.2242136
		 7.56388187 107.3535614 8.99874973 7.5671463 107.92711639 9.56594658 7.5778842 108.64996338 9.8276825
		 7.59366798 109.39072418 9.73870564 7.60466814 110.011604309 9.31444454 7.58914089 110.39131165 8.62837791
		 7.531497 110.44940186 7.79924345 5.60528898 109.86950684 7.055279255 5.66379452 109.52472687 6.43036318
		 5.7257967 108.9302597 6.044122696 5.80115986 108.19078827 5.96322155 5.86771774 107.59446716 6.20164824
		 5.93048239 107.10627747 6.71812677 5.97332001 106.82567596 7.42337942 5.98340702 106.83377838 8.19548225
		 5.95868349 107.12969208 8.90093231 5.90743876 107.66086578 9.41772842 5.84581566 108.33227539 9.65647125
		 5.78489017 109.022293091 9.5758791 5.72659254 109.6002655 9.18994141 5.6661644 109.95481873 8.56547737
		 5.59573364 110.010307312 7.81057644 4.045302868 109.1408844 7.1717062 4.13624048 108.84184265 6.63522577
		 4.24526405 108.33016205 6.30346632 4.36964464 107.69935608 6.23369837;
	setAttr ".vt[1826:1991]" 4.47305012 107.16879272 6.4380331 4.55907393 106.73509216 6.88104773
		 4.61322165 106.48937225 7.4861331 4.62160921 106.49728394 8.14868259 4.58080959 106.752388 8.75414944
		 4.50279093 107.21528625 9.19781208 4.40054226 107.80000305 9.40296078 4.29008722 108.39819336 9.33413792
		 4.18560743 108.8993454 9.0032749176 4.093098164 109.20560455 8.46765041 4.016012669 109.25183868 7.81995916
		 2.91130519 108.32480621 7.31402683 3.0063695908 108.09072876 6.8895669 3.12301898 107.69126129 6.6269865
		 3.25037217 107.20055389 6.57163382 3.35617995 106.76976013 6.73311567 3.44149637 106.42228699 7.083416462
		 3.49260354 106.22634888 7.56195736 3.49898314 106.23186493 8.085998535 3.45823026 106.43482971 8.56493664
		 3.37834716 106.80155945 8.91595268 3.2730186 107.26464081 9.078355789 3.15608692 107.73780823 9.024091721
		 3.042829037 108.13199615 8.7625742 2.94607854 108.37099457 8.33906364 2.8745625 108.40409088 7.82683945
		 2.17147088 107.58691406 7.47644758 2.24644971 107.42856598 7.18267441 2.33858323 107.15750885 7.00090646744
		 2.43759227 106.82577515 6.96253729 2.5214982 106.52618408 7.07421875 2.58827543 106.28598022 7.316576
		 2.62717032 106.15176392 7.6476965 2.63143897 106.15510559 8.010324478 2.59957862 106.29641724 8.34176064
		 2.53810263 106.54694366 8.58469486 2.45450377 106.86367035 8.69713783 2.36159611 107.18740082 8.65965939
		 2.27141309 107.45639038 8.47876358 2.19501638 107.61797333 8.18575859 2.14087009 107.63777161 7.83133554
		 1.78905261 106.99293518 7.6522584 1.82942271 106.91442108 7.5020771 1.88061738 106.78057861 7.40913773
		 1.9354167 106.61659241 7.38949871 1.98245811 106.46587372 7.44656229 2.019815683 106.34614563 7.57042837
		 2.041690826 106.27944946 7.73967505 2.04382062 106.28183746 7.92503929 2.026943684 106.35232544 8.094464302
		 1.99290454 106.47776031 8.21866035 1.94574904 106.63622284 8.27616596 1.89385927 106.79725647 8.2570343
		 1.84349108 106.93080902 8.16459179 1.80109417 107.0094909668 8.014836311 1.77437162 107.021400452 7.83366013
		 20.43109703 101.86101532 7.72757816 1.75774121 106.56505585 7.83390903 12.38871956 90.37210846 -4.35537958
		 12.19564152 90.75105286 -4.35537958 11.89491463 91.051780701 -4.35537958 11.51597691 91.24485016 -4.35537958
		 11.095921516 91.31138611 -4.35537958 10.67586613 91.24485016 -4.35537958 10.29692841 91.051780701 -4.35537958
		 9.99620152 90.75105286 -4.35537958 9.80312347 90.37210846 -4.35537958 9.73659325 89.95205688 -4.35537958
		 9.80312347 89.53200531 -4.35537958 9.99620152 89.15306091 -4.35537958 10.29692841 88.85233307 -4.35537958
		 10.67586613 88.65926361 -4.35537958 11.095921516 88.59272766 -4.35537958 11.51597691 88.65926361 -4.35537958
		 11.89491463 88.85233307 -4.35537958 12.19564056 89.15306091 -4.35537958 12.38871956 89.53200531 -4.35537958
		 12.45524979 89.95205688 -4.35537958 13.64968586 90.7818222 -4.037069321 13.26828289 91.53037262 -4.037069321
		 12.67423439 92.12442017 -4.037069321 11.9256897 92.50582123 -4.037069321 11.095921516 92.63724518 -4.037069321
		 10.26615334 92.50582123 -4.037069321 9.51760864 92.12442017 -4.037069321 8.9235611 91.53037262 -4.037069321
		 8.54215813 90.7818222 -4.037069321 8.41073608 89.95205688 -4.037069321 8.54215813 89.12229156 -4.037069321
		 8.9235611 88.37374115 -4.037069321 9.51760864 87.77970123 -4.037069321 10.26615334 87.39829254 -4.037069321
		 11.095921516 87.26687622 -4.037069321 11.92568874 87.39829254 -4.037069321 12.67423344 87.77970123 -4.037069321
		 13.26828194 88.37374115 -4.037069321 13.64968395 89.12229156 -4.037069321 13.78110695 89.95205688 -4.037069321
		 14.84776878 91.17110443 -3.51526833 14.28743458 92.27082825 -3.51526833 13.41469097 93.14356995 -3.51526833
		 12.31497002 93.7039032 -3.51526833 11.095921516 93.89698792 -3.51526833 9.87687302 93.7039032 -3.51526833
		 8.77715206 93.14356995 -3.51526833 7.90440989 92.27082825 -3.51526833 7.34407473 91.17110443 -3.51526833
		 7.15099669 89.95205688 -3.51526833 7.34407473 88.73300934 -3.51526833 7.90441036 87.63328552 -3.51526833
		 8.77715302 86.76054382 -3.51526833 9.87687302 86.20021057 -3.51526833 11.095921516 86.0071258545 -3.51526833
		 12.31497002 86.20021057 -3.51526833 13.41469002 86.76054382 -3.51526833 14.28743172 87.63328552 -3.51526833
		 14.84776688 88.73300934 -3.51526833 15.040844917 89.95205688 -3.51526833 15.95347023 91.53037262 -2.80282545
		 15.22799969 92.95418549 -2.80282545 14.098051071 94.084136963 -2.80282545 12.67423439 94.80960846 -2.80282545
		 11.095921516 95.059585571 -2.80282545 9.51760864 94.80960846 -2.80282545 8.093791962 94.084136963 -2.80282545
		 6.96384573 92.95418549 -2.80282545 6.23837519 91.53037262 -2.80282545 5.98839521 89.95205688 -2.80282545
		 6.23837519 88.37374115 -2.80282545 6.96384621 86.94992828 -2.80282545 8.093792915 85.81997681 -2.80282545
		 9.51760864 85.09450531 -2.80282545 11.095921516 84.8445282 -2.80282545 12.67423344 85.094512939 -2.80282545
		 14.098049164 85.81997681 -2.80282545 15.22799587 86.94993591 -2.80282545 15.95346642 88.37374115 -2.80282545
		 16.20344543 89.95205688 -2.80282545 16.93956184 91.85077667 -1.9172821 16.066818237 93.56362152 -1.9172821
		 14.70748901 94.92295074 -1.9172821 12.99463463 95.79569244 -1.9172821 11.095921516 96.096420288 -1.9172821
		 9.19720745 95.79569244 -1.9172821 7.4843545 94.92295074 -1.9172821 6.12502623 93.56362152 -1.9172821
		 5.25228405 91.85077667 -1.9172821 4.95155764 89.95205688 -1.9172821 5.25228405 88.053344727 -1.9172821
		 6.12502623 86.34049225 -1.9172821 7.48435497 84.98116302 -1.9172821 9.1972084 84.10842133 -1.9172821
		 11.095921516 83.80769348 -1.9172821 12.99463367 84.10842133 -1.9172821 14.70748711 84.98116302 -1.9172821
		 16.066814423 86.34049225 -1.9172821 16.93955803 88.053344727 -1.9172821 17.24028397 89.95205688 -1.9172821
		 17.78176308 92.12442017 -0.88044453 16.78323746 94.084136963 -0.88044453 15.22799969 95.63937378 -0.88044453
		 13.26828289 96.63789368 -0.88044453 11.095921516 96.98196411 -0.88044453 8.92356014 96.63789368 -0.88044453
		 6.96384478 95.63937378 -0.88044453 5.40860653 94.084136963 -0.88044453;
	setAttr ".vt[1992:2157]" 4.41008186 92.12442017 -0.88044453 4.06601429 89.95205688 -0.88044453
		 4.41008186 87.77970123 -0.88044453 5.40860701 85.81997681 -0.88044453 6.96384573 84.26473999 -0.88044453
		 8.9235611 83.26622009 -0.88044453 11.095921516 82.92214966 -0.88044453 13.26828194 83.26622009 -0.88044453
		 15.22799587 84.26473999 -0.88044453 16.78323555 85.81997681 -0.88044453 17.78175926 87.77970123 -0.88044453
		 18.12582588 89.95205688 -0.88044453 18.45933914 92.34457397 0.28215647 17.35961723 94.50289917 0.28215647
		 15.64676189 96.21575928 0.28215647 13.48843956 97.31546783 0.28215647 11.095921516 97.69441223 0.28215647
		 8.70340252 97.31546783 0.28215647 6.54508114 96.21575165 0.28215647 4.83222771 94.50289917 0.28215647
		 3.73250794 92.34457397 0.28215647 3.35357094 89.95205688 0.28215647 3.73250794 87.55953979 0.28215647
		 4.83222818 85.4012146 0.28215647 6.54508209 83.68836212 0.28215647 8.70340347 82.58864594 0.28215647
		 11.095921516 82.20970917 0.28215647 13.48843861 82.58864594 0.28215647 15.64675999 83.68836212 0.28215647
		 17.35961342 85.4012146 0.28215647 18.45933342 87.55953979 0.28215647 18.83827019 89.95205688 0.28215647
		 18.95560074 92.50582123 1.54189539 17.78176308 94.80960846 1.54189539 15.95347023 96.63789368 1.54189539
		 13.64968491 97.81173706 1.54189539 11.095921516 98.21620941 1.54189539 8.54215813 97.81173706 1.54189539
		 6.23837376 96.63789368 1.54189539 4.41008186 94.80960846 1.54189539 3.23624563 92.50582123 1.54189539
		 2.83176994 89.95205688 1.54189539 3.23624563 87.39829254 1.54189539 4.41008186 85.09450531 1.54189539
		 6.23837519 83.26622009 1.54189539 8.54215813 82.092384338 1.54189539 11.095921516 81.68790436 1.54189539
		 13.64968395 82.092384338 1.54189539 15.95346642 83.26622009 1.54189539 17.78175926 85.09450531 1.54189539
		 18.95559502 87.39829254 1.54189539 19.36007118 89.95205688 1.54189539 19.2583313 92.60417938 2.86775303
		 18.039281845 94.9967041 2.86775303 16.14056778 96.89541626 2.86775303 13.74804878 98.11446381 2.86775303
		 11.095921516 98.53452301 2.86775303 8.4437933 98.11446381 2.86775303 6.051276207 96.89541626 2.86775303
		 4.15256357 94.9967041 2.86775303 2.9335146 92.60417938 2.86775303 2.51345992 89.95205688 2.86775303
		 2.9335146 87.29993439 2.86775303 4.15256405 84.9074173 2.86775303 6.051277161 83.0086975098 2.86775303
		 8.44379425 81.78964996 2.86775303 11.095921516 81.36959839 2.86775303 13.74804783 81.78964996 2.86775303
		 16.14056396 83.0087051392 2.86775303 18.039276123 84.9074173 2.86775303 19.25832558 87.29993439 2.86775303
		 19.67838097 89.95205688 2.86775303 19.3600769 92.63724518 4.22708035 18.1258316 95.059585571 4.22708035
		 16.20344925 96.98196411 4.22708035 13.78110695 98.21620941 4.22708035 11.095921516 98.64150238 4.22708035
		 8.41073513 98.21620941 4.22708035 5.98839426 96.98196411 4.22708035 4.06601429 95.059585571 4.22708035
		 2.83176994 92.63723755 4.22708035 2.40647888 89.95205688 4.22708035 2.83176994 87.26687622 4.22708035
		 4.066014767 84.8445282 4.22708035 5.98839521 82.92214966 4.22708035 8.41073608 81.68790436 4.22708035
		 11.095921516 81.26261902 4.22708035 13.78110695 81.68791199 4.22708035 16.20344543 82.92214966 4.22708035
		 18.12582588 84.8445282 4.22708035 19.36007118 87.26687622 4.22708035 19.78536224 89.95205688 4.22708035
		 19.2583313 92.60417938 5.58640766 18.039281845 94.9967041 5.58640766 16.14056778 96.89541626 5.58640766
		 13.74804878 98.11446381 5.58640766 11.095921516 98.53452301 5.58640766 8.4437933 98.11446381 5.58640766
		 6.051276207 96.89541626 5.58640766 4.15256357 94.9967041 5.58640766 2.9335146 92.60417938 5.58640766
		 2.51345992 89.95205688 5.58640766 2.9335146 87.29993439 5.58640766 4.15256405 84.9074173 5.58640766
		 6.051277161 83.0086975098 5.58640766 8.44379425 81.78964996 5.58640766 11.095921516 81.36959839 5.58640766
		 13.74804783 81.78964996 5.58640766 16.14056396 83.0087051392 5.58640766 18.039276123 84.9074173 5.58640766
		 19.25832558 87.29993439 5.58640766 19.67838097 89.95205688 5.58640766 18.95560074 92.50582123 6.91226482
		 17.78176308 94.80960846 6.91226482 15.95347023 96.63789368 6.91226482 13.64968491 97.81173706 6.91226482
		 11.095921516 98.21620941 6.91226482 8.54215813 97.81173706 6.91226482 6.23837376 96.63789368 6.91226482
		 4.41008186 94.80960846 6.91226482 3.23624563 92.50582123 6.91226482 2.83176994 89.95205688 6.91226482
		 3.23624563 87.39829254 6.91226482 4.41008186 85.09450531 6.91226482 6.23837519 83.26622009 6.91226482
		 8.54215813 82.092384338 6.91226482 11.095921516 81.68790436 6.91226482 13.64968395 82.092384338 6.91226482
		 15.95346642 83.26622009 6.91226482 17.78175926 85.09450531 6.91226482 18.95559502 87.39829254 6.91226482
		 19.36007118 89.95205688 6.91226482 18.45933914 92.34457397 8.1720047 17.35961723 94.50289917 8.1720047
		 15.64676189 96.21575928 8.1720047 13.48843956 97.31546783 8.1720047 11.095921516 97.69441223 8.1720047
		 8.70340252 97.31546783 8.1720047 6.54508114 96.21575165 8.1720047 4.83222771 94.50289917 8.1720047
		 3.73250794 92.34457397 8.1720047 3.35357094 89.95205688 8.1720047 3.73250794 87.55953979 8.1720047
		 4.83222818 85.4012146 8.1720047 6.54508209 83.68836212 8.1720047 8.70340347 82.58864594 8.1720047
		 11.095921516 82.20970917 8.1720047 13.48843861 82.58864594 8.1720047 15.64675999 83.68836212 8.1720047
		 17.35961342 85.4012146 8.1720047 18.45933342 87.55953979 8.1720047 18.83827019 89.95205688 8.1720047
		 17.78176308 92.12442017 9.33460522 16.78323746 94.084136963 9.33460522 15.22799969 95.63937378 9.33460522
		 13.26828289 96.63789368 9.33460522 11.095921516 96.98196411 9.33460522 8.92356014 96.63789368 9.33460522
		 6.96384478 95.63937378 9.33460522 5.40860653 94.084136963 9.33460522 4.41008186 92.12442017 9.33460522
		 4.06601429 89.95205688 9.33460522 4.41008186 87.77970123 9.33460522 5.40860701 85.81997681 9.33460522
		 6.96384573 84.26473999 9.33460522 8.9235611 83.26622009 9.33460522;
	setAttr ".vt[2158:2323]" 11.095921516 82.92214966 9.33460522 13.26828194 83.26622009 9.33460522
		 15.22799587 84.26473999 9.33460522 16.78323555 85.81997681 9.33460522 17.78175926 87.77970123 9.33460522
		 18.12582588 89.95205688 9.33460522 16.93956184 91.85077667 10.37144279 16.066818237 93.56362152 10.37144279
		 14.70748901 94.92295074 10.37144279 12.99463463 95.79569244 10.37144279 11.095921516 96.096420288 10.37144279
		 9.19720745 95.79569244 10.37144279 7.4843545 94.92295074 10.37144279 6.12502623 93.56362152 10.37144279
		 5.25228405 91.85077667 10.37144279 4.95155764 89.95205688 10.37144279 5.25228405 88.053344727 10.37144279
		 6.12502623 86.34049225 10.37144279 7.48435497 84.98116302 10.37144279 9.1972084 84.10842133 10.37144279
		 11.095921516 83.80769348 10.37144279 12.99463367 84.10842133 10.37144279 14.70748711 84.98116302 10.37144279
		 16.066814423 86.34049225 10.37144279 16.93955803 88.053344727 10.37144279 17.24028397 89.95205688 10.37144279
		 15.95347023 91.53037262 11.25698566 15.22799969 92.95418549 11.25698566 14.098051071 94.084136963 11.25698566
		 12.67423439 94.80960846 11.25698566 11.095921516 95.059585571 11.25698566 9.51760864 94.80960846 11.25698566
		 8.093791962 94.084136963 11.25698566 6.96384573 92.95418549 11.25698566 6.23837519 91.53037262 11.25698566
		 5.98839521 89.95205688 11.25698566 6.23837519 88.37374115 11.25698566 6.96384621 86.94992828 11.25698566
		 8.093792915 85.81997681 11.25698566 9.51760864 85.09450531 11.25698566 11.095921516 84.8445282 11.25698566
		 12.67423344 85.094512939 11.25698566 14.098049164 85.81997681 11.25698566 15.22799587 86.94993591 11.25698566
		 15.95346642 88.37374115 11.25698566 16.20344543 89.95205688 11.25698566 14.84776878 91.17110443 11.96942902
		 14.28743458 92.27082825 11.96942902 13.41469097 93.14356995 11.96942902 12.31497002 93.7039032 11.96942902
		 11.095921516 93.89698792 11.96942902 9.87687302 93.7039032 11.96942902 8.77715206 93.14356995 11.96942902
		 7.90440989 92.27082825 11.96942902 7.34407473 91.17110443 11.96942902 7.15099669 89.95205688 11.96942902
		 7.34407473 88.73300934 11.96942902 7.90441036 87.63328552 11.96942902 8.77715302 86.76054382 11.96942902
		 9.87687302 86.20021057 11.96942902 11.095921516 86.0071258545 11.96942902 12.31497002 86.20021057 11.96942902
		 13.41469002 86.76054382 11.96942902 14.28743172 87.63328552 11.96942902 14.84776688 88.73300934 11.96942902
		 15.040844917 89.95205688 11.96942902 13.64968586 90.7818222 12.49123001 13.26828289 91.53037262 12.49123001
		 12.67423439 92.12442017 12.49123001 11.9256897 92.50582123 12.49123001 11.095921516 92.63724518 12.49123001
		 10.26615334 92.50582123 12.49123001 9.51760864 92.12442017 12.49123001 8.9235611 91.53037262 12.49123001
		 8.54215813 90.7818222 12.49123001 8.41073608 89.95205688 12.49123001 8.54215813 89.12229156 12.49123001
		 8.9235611 88.37374115 12.49123001 9.51760864 87.77970123 12.49123001 10.26615334 87.39829254 12.49123001
		 11.095921516 87.26687622 12.49123001 11.92568874 87.39829254 12.49123001 12.67423344 87.77970123 12.49123001
		 13.26828194 88.37374115 12.49123001 13.64968395 89.12229156 12.49123001 13.78110695 89.95205688 12.49123001
		 12.38871956 90.37210846 12.80953979 12.19564152 90.75105286 12.80953979 11.89491463 91.051780701 12.80953979
		 11.51597691 91.24485016 12.80953979 11.095921516 91.31138611 12.80953979 10.67586613 91.24485016 12.80953979
		 10.29692841 91.051780701 12.80953979 9.99620152 90.75105286 12.80953979 9.80312347 90.37210846 12.80953979
		 9.73659325 89.95205688 12.80953979 9.80312347 89.53200531 12.80953979 9.99620152 89.15306091 12.80953979
		 10.29692841 88.85233307 12.80953979 10.67586613 88.65926361 12.80953979 11.095921516 88.59272766 12.80953979
		 11.51597691 88.65926361 12.80953979 11.89491463 88.85233307 12.80953979 12.19564056 89.15306091 12.80953979
		 12.38871956 89.53200531 12.80953979 12.45524979 89.95205688 12.80953979 11.095921516 89.95205688 -4.46236038
		 11.095921516 89.95205688 12.91652107 17.16210747 89.63520813 2.25605464 16.25613022 89.63520813 0.47796866
		 14.84503078 89.63520813 -0.93312943 13.06694603 89.63520813 -1.8391099 11.095920563 89.63520813 -2.1512897
		 9.1248951 89.63520813 -1.8391099 7.34681082 89.63520813 -0.93312764 5.93571424 89.63520813 0.47796944
		 5.029736996 89.63520813 2.25605536 4.71755314 89.63520813 4.22707939 5.029736996 89.63520813 6.19810295
		 5.93571472 89.63520813 7.97619009 7.34681177 89.63520813 9.38728619 9.1248951 89.63520813 10.2932682
		 11.095920563 89.63520813 10.60544682 13.06694603 89.63520813 10.2932682 14.84502888 89.63520813 9.38728523
		 16.25612831 89.63520813 7.97619009 17.16210365 89.63520813 6.198102 17.47429085 89.63520813 4.22707939
		 19.92665482 89.63520813 1.35779881 18.60779762 89.63520813 -1.23061764 16.55361557 89.63520813 -3.28479528
		 13.96520329 89.63520813 -4.60365868 11.095921516 89.63520813 -5.058109283 8.22663879 89.63520813 -4.60365772
		 5.63822508 89.63520813 -3.28479433 3.58404684 89.63520813 -1.2306155 2.2651844 89.63520813 1.35780001
		 1.81073737 89.63520813 4.22708035 2.2651844 89.63520813 7.09635973 3.58404732 89.63520813 9.68477821
		 5.63822603 89.63520813 11.73895073 8.22663975 89.63520813 13.057815552 11.095921516 89.63520813 13.5122633
		 13.96520233 89.63520813 13.057814598 16.55361366 89.63520813 11.73894978 18.60779572 89.63520813 9.68477631
		 19.92665482 89.63520813 7.096359253 20.38110924 89.63520813 4.22708035 19.81794167 88.18270874 1.39312458
		 18.51531601 88.18270874 -1.16342425 16.48642731 88.18270874 -3.19231224 13.92988205 88.18270874 -4.49493742
		 11.095921516 88.18270874 -4.94379187 8.26197338 88.18270874 -4.49493694 5.70541906 88.18270874 -3.19231009
		 3.67653012 88.18270874 -1.16342282 2.37390471 88.18270874 1.39312506 1.92505145 88.18270874 4.22708035
		 2.37390471 88.18270874 7.061034679 3.6765306 88.18270874 9.61758423 5.70542002 88.18270874 11.64646721
		 8.26197338 88.18270874 12.94909668 11.095921516 88.18270874 13.39795017 13.92988205 88.18270874 12.94909668
		 16.48642349 88.18270874 11.64646626 18.51531219 88.18270874 9.61758232;
	setAttr ".vt[2324:2489]" 19.81793404 88.18270874 7.061034203 20.2667923 88.18270874 4.22708035
		 19.49445152 86.76583099 1.49823141 18.2401371 86.76583099 -0.96349883 16.28649712 86.76583099 -2.9171381
		 13.82476902 86.76583099 -4.17145157 11.095921516 86.76583099 -4.60365868 8.36707306 86.76583099 -4.17145157
		 5.90534401 86.76583099 -2.91713738 3.95170522 86.76583099 -0.96349663 2.69739056 86.76583099 1.49823225
		 2.2651844 86.76583099 4.22708035 2.69739056 86.76583099 6.95592928 3.95170569 86.76583099 9.41765594
		 5.90534544 86.76583099 11.37129688 8.36707401 86.76583099 12.62561035 11.095921516 86.76583099 13.057815552
		 13.82476711 86.76583099 12.62561035 16.2864933 86.76583099 11.37129593 18.24013138 86.76583099 9.41765594
		 19.49444771 86.76583099 6.95592833 19.92665482 86.76583099 4.22708035 18.96416664 85.4197998 1.67053187
		 17.78905106 85.4197998 -0.63576359 15.95876694 85.4197998 -2.46605039 13.65247059 85.4197998 -3.64116621
		 11.095921516 85.4197998 -4.04608345 8.53937149 85.4197998 -3.64116526 6.23307896 85.4197998 -2.46604943
		 4.40279293 85.4197998 -0.63576275 3.22767615 85.4197998 1.67053235 2.82275939 85.4197998 4.22708035
		 3.22767615 85.4197998 6.78362656 4.40279341 85.4197998 9.089923859 6.23307943 85.4197998 10.92020798
		 8.5393734 85.4197998 12.095328331 11.095921516 85.4197998 12.50024128 13.65246964 85.4197998 12.095328331
		 15.95876312 85.4197998 10.92020702 17.78904724 85.4197998 9.089922905 18.96416092 85.4197998 6.7836256
		 19.36907768 85.4197998 4.22708035 18.2401371 84.17755127 1.90578353 17.17314339 84.17755127 -0.18829012
		 15.51128769 84.17755127 -1.85015535 13.41721725 84.17755127 -2.91713762 11.095921516 84.17755127 -3.28479528
		 8.77462482 84.17755127 -2.91713738 6.68055153 84.17755127 -1.85015345 5.018687725 84.17755127 -0.18828869
		 3.95170569 84.17755127 1.90578377 3.58404684 84.17755127 4.22708035 3.95170569 84.17755127 6.54837751
		 5.018688202 84.17755127 8.64244556 6.68055248 84.17755127 10.30431271 8.77462482 84.17755127 11.37129688
		 11.095921516 84.17755127 11.73895073 13.41721725 84.17755127 11.37129593 15.51128769 84.17755127 10.30431175
		 17.17314339 84.17755127 8.64244556 18.24013138 84.17755127 6.54837751 18.60779572 84.17755127 4.22708035
		 17.34021187 83.069587708 2.19819164 16.40761948 83.069587708 0.36790547 14.95509529 83.069587708 -1.084618449
		 13.12480927 83.069587708 -2.017195225 11.095921516 83.069587708 -2.33853841 9.067032814 83.069587708 -2.017194748
		 7.23674822 83.069587708 -1.084616542 5.78422689 83.069587708 0.3679069 4.85164738 83.069587708 2.19819236
		 4.53030396 83.069587708 4.22708035 4.85164738 83.069587708 6.25596666 5.78422689 83.069587708 8.086256027
		 7.2367487 83.069587708 9.53877735 9.067032814 83.069587708 10.47136211 11.095921516 83.069587708 10.792696
		 13.12480927 83.069587708 10.47136211 14.95509338 83.069587708 9.5387764 16.40761757 83.069587708 8.08625412
		 17.34021187 83.069587708 6.25596619 17.66153526 83.069587708 4.22708035 16.28649712 82.12330627 2.54056001
		 15.51128769 82.12330627 1.019126415 14.30387306 82.12330627 -0.1882897 12.78244114 82.12330627 -0.96349788
		 11.095921516 82.12330627 -1.23061764 9.40940189 82.12330627 -0.96349764 7.88796949 82.12330627 -0.18828869
		 6.68055248 82.12330627 1.01912725 5.90534544 82.12330627 2.54056001 5.63822603 82.12330627 4.22708035
		 5.90534544 82.12330627 5.91360378 6.68055296 82.12330627 7.4350338 7.88797188 82.12330627 8.64244556
		 9.40940189 82.12330627 9.41765594 11.095921516 82.12330627 9.68477631 12.78244019 82.12330627 9.41765594
		 14.30387115 82.12330627 8.64244556 15.51128769 82.12330627 7.43503284 16.2864933 82.12330627 5.91360378
		 16.55361366 82.12330627 4.22708035 15.10499191 81.36196136 2.92445421 14.5062418 81.36196136 1.74933708
		 13.57366562 81.36196136 0.81675982 12.39854908 81.36196136 0.21800818 11.095921516 81.36196136 0.011693269
		 9.793293 81.36196136 0.21800818 8.61817741 81.36196136 0.8167603 7.68560219 81.36196136 1.74933803
		 7.086849689 81.36196136 2.92445469 6.8805337 81.36196136 4.22708035 7.086849689 81.36196136 5.52970648
		 7.68560219 81.36196136 6.7048192 8.61817741 81.36196136 7.6373992 9.793293 81.36196136 8.23614979
		 11.095921516 81.36196136 8.44246483 12.39854813 81.36196136 8.23614883 13.57366371 81.36196136 7.63739872
		 14.50623989 81.36196136 6.7048192 15.10498905 81.36196136 5.52970648 15.31130505 81.36196136 4.22708035
		 13.82476902 80.80446625 3.34042335 13.41721725 80.80446625 2.54056001 12.78244209 80.80446625 1.90578353
		 11.98257828 80.80446625 1.49823165 11.095921516 80.80446625 1.35779953 10.20926476 80.80446625 1.49823189
		 9.40940189 80.80446625 1.90578353 8.77462482 80.80446625 2.54056001 8.36707401 80.80446625 3.34042335
		 8.22663975 80.80446625 4.22708035 8.36707401 80.80446625 5.11373758 8.77462482 80.80446625 5.91360378
		 9.40940189 80.80446625 6.54837751 10.20926476 80.80446625 6.9559288 11.095921516 80.80446625 7.096359253
		 11.98257732 80.80446625 6.95592833 12.78244019 80.80446625 6.54837751 13.41721725 80.80446625 5.91360378
		 13.82476711 80.80446625 5.11373711 13.96520233 80.80446625 4.22708035 12.47735405 80.46430969 3.77822614
		 12.27103901 80.46430969 3.37330842 11.94969273 80.46430969 3.051964045 11.54477596 80.46430969 2.84564829
		 11.095921516 80.46430969 2.77455616 10.64706707 80.46430969 2.84564829 10.24215031 80.46430969 3.051964283
		 9.92080307 80.46430969 3.37330866 9.71448803 80.46430969 3.77822614 9.64339638 80.46430969 4.22708035
		 9.71448803 80.46430969 4.67593384 9.92080307 80.46430969 5.080852985 10.24215031 80.46430969 5.40219688
		 10.64706707 80.46430969 5.6085124 11.095921516 80.46430969 5.67960262 11.54477501 80.46430969 5.6085124
		 11.94969273 80.46430969 5.40219688 12.27103806 80.46430969 5.080852509 12.47735405 80.46430969 4.67593384
		 12.5484457 80.46430969 4.22708035 11.095921516 80.34999847 4.22708035 17.52155113 89.95205688 2.13926578
		 16.56188774 89.95205688 0.2558217 15.067178726 89.95205688 -1.23888779;
	setAttr ".vt[2490:2655]" 13.18373394 89.95205688 -2.1985507 11.095920563 89.95205688 -2.52922773
		 9.0081071854 89.95205688 -2.1985507 7.12466383 89.95205688 -1.23888588 5.62995529 89.95205688 0.2558229
		 4.6702919 89.95205688 2.13926649 4.33961535 89.95205688 4.22707939 4.6702919 89.95205688 6.31489277
		 5.62995577 89.95205688 8.19833565 7.12466478 89.95205688 9.69304466 9.0081071854 89.95205688 10.6527071
		 11.095920563 89.95205688 10.98338413 13.18373394 89.95205688 10.6527071 15.067176819 89.95205688 9.69304371
		 16.56188583 89.95205688 8.19833565 17.52154732 89.95205688 6.31489182 17.85222626 89.95205688 4.22707939
		 20.44990921 89.95205688 1.18778491 19.052900314 89.95205688 -1.55400276 16.87700272 89.95205688 -3.7298975
		 14.13521576 89.95205688 -5.12690783 11.095921516 89.95205688 -5.60828447 8.05662632 89.95205688 -5.12690687
		 5.31483936 89.95205688 -3.72989655 3.13894558 89.95205688 -1.55400085 1.74193573 89.95205688 1.18778634
		 1.26055992 89.95205688 4.22708035 1.74193573 89.95205688 7.26637411 3.13894606 89.95205688 10.0081615448
		 5.31484032 89.95205688 12.18405437 8.056627274 89.95205688 13.58106422 11.095921516 89.95205688 14.062440872
		 14.13521481 89.95205688 13.58106327 16.87700081 89.95205688 12.18405342 19.052894592 89.95205688 10.0081596375
		 20.4499054 89.95205688 7.26637363 20.93128204 89.95205688 4.22708035 20.33474731 91.49064636 1.22520399
		 18.95493507 91.49064636 -1.48282814 16.80583 91.49064636 -3.63193464 14.09779644 91.49064636 -5.011744976
		 11.095921516 91.49064636 -5.48719549 8.094044685 91.49064636 -5.011744022 5.38601398 91.49064636 -3.63193226
		 3.23690891 91.49064636 -1.48282671 1.85709798 91.49064636 1.22520447 1.38164842 91.49064636 4.22708035
		 1.85709798 91.49064636 7.22895527 3.23690939 91.49064636 9.93698692 5.38601494 91.49064636 12.086091042
		 8.094045639 91.49064636 13.46590137 11.095921516 91.49064636 13.94135189 14.097795486 91.49064636 13.46590137
		 16.80582619 91.49064636 12.086090088 18.95493126 91.49064636 9.93698502 20.33473969 91.49064636 7.22895479
		 20.81019211 91.49064636 4.22708035 19.99209213 92.99134827 1.33653855 18.66345787 92.99134827 -1.27105665
		 16.59405708 92.99134827 -3.34045553 13.98646259 92.99134827 -4.66909122 11.095921516 92.99134827 -5.12690783
		 8.20537949 92.99134827 -4.66909122 5.59778547 92.99134827 -3.34045458 3.52838707 92.99134827 -1.27105474
		 2.19975138 92.99134827 1.33653951 1.74193573 92.99134827 4.22708035 2.19975138 92.99134827 7.11762094
		 3.52838755 92.99134827 9.725214 5.5977869 92.99134827 11.79461288 8.20538044 92.99134827 13.12324905
		 11.095921516 92.99134827 13.58106422 13.98646069 92.99134827 13.12324715 16.59405327 92.99134827 11.79461193
		 18.66345215 92.99134827 9.725214 19.99208832 92.99134827 7.11761999 20.4499054 92.99134827 4.22708035
		 19.4303875 94.41721344 1.51904869 18.18564034 94.41721344 -0.92390251 16.24690437 94.41721344 -2.86263943
		 13.80395317 94.41721344 -4.1073842 11.095921516 94.41721344 -4.53629351 8.38788891 94.41721344 -4.10738325
		 5.94493961 94.41721344 -2.86263752 4.0062036514 94.41721344 -0.92390108 2.7614584 94.41721344 1.51904917
		 2.3325491 94.41721344 4.22708035 2.7614584 94.41721344 6.93511105 4.0062041283 94.41721344 9.37806129
		 5.94494009 94.41721344 11.31679726 8.38789082 94.41721344 12.56154156 11.095921516 94.41721344 12.99045086
		 13.80395222 94.41721344 12.5615406 16.24690056 94.41721344 11.3167963 18.18563652 94.41721344 9.37806034
		 19.43038177 94.41721344 6.93511009 19.85929108 94.41721344 4.22708035 18.66345787 95.73313904 1.76823902
		 17.53325272 95.73313904 -0.44991446 15.77291489 95.73313904 -2.21025038 13.55476284 95.73313904 -3.34045506
		 11.095921516 95.73313904 -3.7298975 8.63707924 95.73313904 -3.34045458 6.41892719 95.73313904 -2.21024847
		 4.6585927 95.73313904 -0.44991302 3.52838755 95.73313904 1.76823974 3.13894558 95.73313904 4.22708035
		 3.52838755 95.73313904 6.68592072 4.65859318 95.73313904 8.90407276 6.41892815 95.73313904 10.66440773
		 8.63708019 95.73313904 11.79461288 11.095921516 95.73313904 12.18405437 13.55476189 95.73313904 11.79461193
		 15.77291298 95.73313904 10.66440678 17.53324699 95.73313904 8.90407181 18.66345215 95.73313904 6.68592072
		 19.052894592 95.73313904 4.22708035 17.71018982 96.90670776 2.077974081 16.72235298 96.90670776 0.1392374
		 15.1837635 96.90670776 -1.39935303 13.24502754 96.90670776 -2.38718796 11.095921516 96.90670776 -2.72757244
		 8.94681549 96.90670776 -2.38718748 7.0080795288 96.90670776 -1.39935112 5.46949005 96.90670776 0.13923883
		 4.48165464 96.90670776 2.077974796 4.14127016 96.90670776 4.22708035 4.48165464 96.90670776 6.37618542
		 5.46949005 96.90670776 8.31492233 7.0080800056 96.90670776 9.85351086 8.94681644 96.90670776 10.84134579
		 11.095921516 96.90670776 11.18173027 13.24502659 96.90670776 10.84134579 15.1837616 96.90670776 9.8535099
		 16.72235107 96.90670776 8.31492043 17.710186 96.90670776 6.37618494 18.050569534 96.90670776 4.22708035
		 16.59405708 97.9090271 2.44062734 15.77291489 97.9090271 0.8290453 14.49395561 97.9090271 -0.44991398
		 12.88237381 97.9090271 -1.2710557 11.095921516 97.9090271 -1.55400229 9.30946922 97.9090271 -1.27105522
		 7.69788647 97.9090271 -0.44991302 6.41892815 97.9090271 0.82904625 5.5977869 97.9090271 2.44062805
		 5.31484032 97.9090271 4.22708035 5.5977869 97.9090271 6.013532162 6.41892862 97.9090271 7.62511444
		 7.69788742 97.9090271 8.90407181 9.30946922 97.9090271 9.725214 11.095921516 97.9090271 10.0081596375
		 12.88237286 97.9090271 9.725214 14.4939537 97.9090271 8.90407181 15.77291298 97.9090271 7.62511349
		 16.59405327 97.9090271 6.013531685 16.87700081 97.9090271 4.22708035 15.3425436 98.71543121 2.84726906
		 14.70831394 98.71543121 1.60252309 13.72047806 98.71543121 0.61468768 12.47573185 98.71543121 -0.01954174
		 11.095921516 98.71543121 -0.23808146 9.71611023 98.71543121 -0.01954174 8.47136497 98.71543121 0.6146884
		 7.48353004 98.71543121 1.60252404 6.84930038 98.71543121 2.84726954;
	setAttr ".vt[2656:2821]" 6.63075972 98.71543121 4.22708035 6.84930038 98.71543121 5.60689068
		 7.48353052 98.71543121 6.85163593 8.47136497 98.71543121 7.83947134 9.71611023 98.71543121 8.47370052
		 11.095921516 98.71543121 8.69224072 12.4757309 98.71543121 8.47369957 13.72047615 98.71543121 7.83947086
		 14.70831203 98.71543121 6.85163593 15.34254074 98.71543121 5.60689068 15.56108093 98.71543121 4.22708035
		 13.98646259 99.30604553 3.28788614 13.55476284 99.30604553 2.44062734 12.88237476 99.30604553 1.76823902
		 12.035115242 99.30604553 1.33653879 11.095921516 99.30604553 1.18778563 10.15672779 99.30604553 1.33653903
		 9.30946922 99.30604553 1.7682395 8.63708019 99.30604553 2.44062781 8.20538044 99.30604553 3.28788662
		 8.056627274 99.30604553 4.22708035 8.20538044 99.30604553 5.16627407 8.63708019 99.30604553 6.013532162
		 9.30946922 99.30604553 6.68592072 10.15672779 99.30604553 7.11762047 11.095921516 99.30604553 7.26637363
		 12.035114288 99.30604553 7.11761999 12.88237286 99.30604553 6.68592072 13.55476189 99.30604553 6.013532162
		 13.98646069 99.30604553 5.16627359 14.13521481 99.30604553 4.22708035 12.55920792 99.66632843 3.75162983
		 12.34066677 99.66632843 3.32271957 12.0002822876 99.66632843 2.98233438 11.57137203 99.66632843 2.76379395
		 11.095921516 99.66632843 2.68848991 10.620471 99.66632843 2.76379395 10.19156075 99.66632843 2.98233461
		 9.85117531 99.66632843 3.32271981 9.63263512 99.66632843 3.75162983 9.55733109 99.66632843 4.22708035
		 9.63263512 99.66632843 4.70253038 9.85117531 99.66632843 5.13144064 10.19156075 99.66632843 5.4718256
		 10.620471 99.66632843 5.69036579 11.095921516 99.66632843 5.76566982 11.57137108 99.66632843 5.69036579
		 12.0002822876 99.66632843 5.4718256 12.34066582 99.66632843 5.13144016 12.55920696 99.66632843 4.70253038
		 12.63451099 99.66632843 4.22708035 11.095921516 99.78741455 4.22708035 -13.89478111 90.37210846 -4.35537958
		 -14.0878582 90.75105286 -4.35537958 -14.38858509 91.051780701 -4.35537958 -14.76752281 91.24485016 -4.35537958
		 -15.18757915 91.31138611 -4.35537958 -15.6076355 91.24485016 -4.35537958 -15.98657322 91.051780701 -4.35537958
		 -16.28730011 90.75105286 -4.35537958 -16.4803772 90.37210846 -4.35537958 -16.54690742 89.95205688 -4.35537958
		 -16.4803772 89.53200531 -4.35537958 -16.28730011 89.15306091 -4.35537958 -15.98657322 88.85233307 -4.35537958
		 -15.6076355 88.65926361 -4.35537958 -15.18757915 88.59272766 -4.35537958 -14.76752281 88.65926361 -4.35537958
		 -14.38858509 88.85233307 -4.35537958 -14.087859154 89.15306091 -4.35537958 -13.89478111 89.53200531 -4.35537958
		 -13.82825089 89.95205688 -4.35537958 -12.63381481 90.7818222 -4.037069321 -13.015217781 91.53037262 -4.037069321
		 -13.60926628 92.12442017 -4.037069321 -14.35781002 92.50582123 -4.037069321 -15.18757915 92.63724518 -4.037069321
		 -16.017349243 92.50582123 -4.037069321 -16.76589203 92.12442017 -4.037069321 -17.35993958 91.53037262 -4.037069321
		 -17.74134254 90.7818222 -4.037069321 -17.87276459 89.95205688 -4.037069321 -17.74134254 89.12229156 -4.037069321
		 -17.35993958 88.37374115 -4.037069321 -16.76589203 87.77970123 -4.037069321 -16.017347336 87.39829254 -4.037069321
		 -15.18757915 87.26687622 -4.037069321 -14.35781097 87.39829254 -4.037069321 -13.60926819 87.77970123 -4.037069321
		 -13.015218735 88.37374115 -4.037069321 -12.63381672 89.12229156 -4.037069321 -12.50239372 89.95205688 -4.037069321
		 -11.43573093 91.17110443 -3.51526833 -11.99606705 92.27082825 -3.51526833 -12.86880875 93.14356995 -3.51526833
		 -13.96853065 93.7039032 -3.51526833 -15.18757915 93.89698792 -3.51526833 -16.40662766 93.7039032 -3.51526833
		 -17.50634766 93.14356995 -3.51526833 -18.37908936 92.27082825 -3.51526833 -18.93942642 91.17110443 -3.51526833
		 -19.13250351 89.95205688 -3.51526833 -18.93942642 88.73300934 -3.51526833 -18.37908936 87.63328552 -3.51526833
		 -17.50634766 86.76054382 -3.51526833 -16.40662766 86.20021057 -3.51526833 -15.18757915 86.0071258545 -3.51526833
		 -13.96853065 86.20021057 -3.51526833 -12.86881065 86.76054382 -3.51526833 -11.99606991 87.63328552 -3.51526833
		 -11.4357338 88.73300934 -3.51526833 -11.24265671 89.95205688 -3.51526833 -10.33003044 91.53037262 -2.80282545
		 -11.055501938 92.95418549 -2.80282545 -12.1854496 94.084136963 -2.80282545 -13.60926723 94.80960846 -2.80282545
		 -15.18757915 95.059585571 -2.80282545 -16.76589203 94.80960846 -2.80282545 -18.18970871 94.084136963 -2.80282545
		 -19.31965637 92.95418549 -2.80282545 -20.045125961 91.53037262 -2.80282545 -20.29510498 89.95205688 -2.80282545
		 -20.045125961 88.37374115 -2.80282545 -19.31965637 86.94992828 -2.80282545 -18.18970871 85.81997681 -2.80282545
		 -16.76589203 85.09450531 -2.80282545 -15.18757915 84.8445282 -2.80282545 -13.60926819 85.094512939 -2.80282545
		 -12.18545151 85.81997681 -2.80282545 -11.055503845 86.94993591 -2.80282545 -10.33003426 88.37374115 -2.80282545
		 -10.080055237 89.95205688 -2.80282545 -9.34393883 91.85077667 -1.9172821 -10.21668243 93.56362152 -1.9172821
		 -11.57601166 94.92295074 -1.9172821 -13.28886604 95.79569244 -1.9172821 -15.18757915 96.096420288 -1.9172821
		 -17.086292267 95.79569244 -1.9172821 -18.79914665 94.92295074 -1.9172821 -20.15847397 93.56362152 -1.9172821
		 -21.031217575 91.85077667 -1.9172821 -21.33194351 89.95205688 -1.9172821 -21.031217575 88.053344727 -1.9172821
		 -20.15847397 86.34049225 -1.9172821 -18.79914474 84.98116302 -1.9172821 -17.086292267 84.10842133 -1.9172821
		 -15.18757915 83.80769348 -1.9172821 -13.28886795 84.10842133 -1.9172821 -11.57601357 84.98116302 -1.9172821
		 -10.21668625 86.34049225 -1.9172821 -9.34394264 88.053344727 -1.9172821 -9.043216705 89.95205688 -1.9172821
		 -8.50173759 92.12442017 -0.88044453 -9.50026321 94.084136963 -0.88044453 -11.055501938 95.63937378 -0.88044453
		 -13.015217781 96.63789368 -0.88044453 -15.18757915 96.98196411 -0.88044453 -17.35993958 96.63789368 -0.88044453
		 -19.31965446 95.63937378 -0.88044453 -20.8748951 94.084136963 -0.88044453 -21.87341881 92.12442017 -0.88044453
		 -22.21748734 89.95205688 -0.88044453 -21.87341881 87.77970123 -0.88044453 -20.87489319 85.81997681 -0.88044453
		 -19.31965637 84.26473999 -0.88044453 -17.35993958 83.26622009 -0.88044453;
	setAttr ".vt[2822:2987]" -15.18757915 82.92214966 -0.88044453 -13.015218735 83.26622009 -0.88044453
		 -11.055503845 84.26473999 -0.88044453 -9.50026512 85.81997681 -0.88044453 -8.50174141 87.77970123 -0.88044453
		 -8.15767479 89.95205688 -0.88044453 -7.82416153 92.34457397 0.28215647 -8.92388344 94.50289917 0.28215647
		 -10.63673973 96.21575928 0.28215647 -12.79506016 97.31546783 0.28215647 -15.18757915 97.69441223 0.28215647
		 -17.5800972 97.31546783 0.28215647 -19.73842049 96.21575165 0.28215647 -21.45127296 94.50289917 0.28215647
		 -22.55099297 92.34457397 0.28215647 -22.92992973 89.95205688 0.28215647 -22.55099297 87.55953979 0.28215647
		 -21.45127106 85.4012146 0.28215647 -19.73841858 83.68836212 0.28215647 -17.5800972 82.58864594 0.28215647
		 -15.18757915 82.20970917 0.28215647 -12.79506111 82.58864594 0.28215647 -10.63673973 83.68836212 0.28215647
		 -8.92388725 85.4012146 0.28215647 -7.82416725 87.55953979 0.28215647 -7.44523048 89.95205688 0.28215647
		 -7.32790184 92.50582123 1.54189539 -8.50173759 94.80960846 1.54189539 -10.33003044 96.63789368 1.54189539
		 -12.63381577 97.81173706 1.54189539 -15.18757915 98.21620941 1.54189539 -17.74134254 97.81173706 1.54189539
		 -20.045127869 96.63789368 1.54189539 -21.87342072 94.80960846 1.54189539 -23.04725647 92.50582123 1.54189539
		 -23.45173073 89.95205688 1.54189539 -23.04725647 87.39829254 1.54189539 -21.87341881 85.09450531 1.54189539
		 -20.045125961 83.26622009 1.54189539 -17.74134254 82.092384338 1.54189539 -15.18757915 81.68790436 1.54189539
		 -12.63381672 82.092384338 1.54189539 -10.33003426 83.26622009 1.54189539 -8.50174141 85.09450531 1.54189539
		 -7.32790565 87.39829254 1.54189539 -6.92342949 89.95205688 1.54189539 -7.025169373 92.60417938 2.86775303
		 -8.24421883 94.9967041 2.86775303 -10.14293289 96.89541626 2.86775303 -12.53545189 98.11446381 2.86775303
		 -15.18757915 98.53452301 2.86775303 -17.83970642 98.11446381 2.86775303 -20.23222351 96.89541626 2.86775303
		 -22.13093567 94.9967041 2.86775303 -23.34998703 92.60417938 2.86775303 -23.77004051 89.95205688 2.86775303
		 -23.34998703 87.29993439 2.86775303 -22.13093567 84.9074173 2.86775303 -20.23222351 83.0086975098 2.86775303
		 -17.83970642 81.78964996 2.86775303 -15.18757915 81.36959839 2.86775303 -12.5354538 81.78964996 2.86775303
		 -10.14293671 83.0087051392 2.86775303 -8.24422455 84.9074173 2.86775303 -7.025175095 87.29993439 2.86775303
		 -6.60511971 89.95205688 2.86775303 -6.92342377 92.63724518 4.22708035 -8.15766907 95.059585571 4.22708035
		 -10.080051422 96.98196411 4.22708035 -12.50239277 98.21620941 4.22708035 -15.18757915 98.64150238 4.22708035
		 -17.87276459 98.21620941 4.22708035 -20.29510498 96.98196411 4.22708035 -22.21748734 95.059585571 4.22708035
		 -23.45173073 92.63723755 4.22708035 -23.87702179 89.95205688 4.22708035 -23.45173073 87.26687622 4.22708035
		 -22.21748543 84.8445282 4.22708035 -20.29510498 82.92214966 4.22708035 -17.87276459 81.68790436 4.22708035
		 -15.18757915 81.26261902 4.22708035 -12.50239372 81.68791199 4.22708035 -10.080055237 82.92214966 4.22708035
		 -8.15767479 84.8445282 4.22708035 -6.92342949 87.26687622 4.22708035 -6.49813843 89.95205688 4.22708035
		 -7.025169373 92.60417938 5.58640766 -8.24421883 94.9967041 5.58640766 -10.14293289 96.89541626 5.58640766
		 -12.53545189 98.11446381 5.58640766 -15.18757915 98.53452301 5.58640766 -17.83970642 98.11446381 5.58640766
		 -20.23222351 96.89541626 5.58640766 -22.13093567 94.9967041 5.58640766 -23.34998703 92.60417938 5.58640766
		 -23.77004051 89.95205688 5.58640766 -23.34998703 87.29993439 5.58640766 -22.13093567 84.9074173 5.58640766
		 -20.23222351 83.0086975098 5.58640766 -17.83970642 81.78964996 5.58640766 -15.18757915 81.36959839 5.58640766
		 -12.5354538 81.78964996 5.58640766 -10.14293671 83.0087051392 5.58640766 -8.24422455 84.9074173 5.58640766
		 -7.025175095 87.29993439 5.58640766 -6.60511971 89.95205688 5.58640766 -7.32790184 92.50582123 6.91226482
		 -8.50173759 94.80960846 6.91226482 -10.33003044 96.63789368 6.91226482 -12.63381577 97.81173706 6.91226482
		 -15.18757915 98.21620941 6.91226482 -17.74134254 97.81173706 6.91226482 -20.045127869 96.63789368 6.91226482
		 -21.87342072 94.80960846 6.91226482 -23.04725647 92.50582123 6.91226482 -23.45173073 89.95205688 6.91226482
		 -23.04725647 87.39829254 6.91226482 -21.87341881 85.09450531 6.91226482 -20.045125961 83.26622009 6.91226482
		 -17.74134254 82.092384338 6.91226482 -15.18757915 81.68790436 6.91226482 -12.63381672 82.092384338 6.91226482
		 -10.33003426 83.26622009 6.91226482 -8.50174141 85.09450531 6.91226482 -7.32790565 87.39829254 6.91226482
		 -6.92342949 89.95205688 6.91226482 -7.82416153 92.34457397 8.1720047 -8.92388344 94.50289917 8.1720047
		 -10.63673973 96.21575928 8.1720047 -12.79506016 97.31546783 8.1720047 -15.18757915 97.69441223 8.1720047
		 -17.5800972 97.31546783 8.1720047 -19.73842049 96.21575165 8.1720047 -21.45127296 94.50289917 8.1720047
		 -22.55099297 92.34457397 8.1720047 -22.92992973 89.95205688 8.1720047 -22.55099297 87.55953979 8.1720047
		 -21.45127106 85.4012146 8.1720047 -19.73841858 83.68836212 8.1720047 -17.5800972 82.58864594 8.1720047
		 -15.18757915 82.20970917 8.1720047 -12.79506111 82.58864594 8.1720047 -10.63673973 83.68836212 8.1720047
		 -8.92388725 85.4012146 8.1720047 -7.82416725 87.55953979 8.1720047 -7.44523048 89.95205688 8.1720047
		 -8.50173759 92.12442017 9.33460522 -9.50026321 94.084136963 9.33460522 -11.055501938 95.63937378 9.33460522
		 -13.015217781 96.63789368 9.33460522 -15.18757915 96.98196411 9.33460522 -17.35993958 96.63789368 9.33460522
		 -19.31965446 95.63937378 9.33460522 -20.8748951 94.084136963 9.33460522 -21.87341881 92.12442017 9.33460522
		 -22.21748734 89.95205688 9.33460522 -21.87341881 87.77970123 9.33460522 -20.87489319 85.81997681 9.33460522
		 -19.31965637 84.26473999 9.33460522 -17.35993958 83.26622009 9.33460522 -15.18757915 82.92214966 9.33460522
		 -13.015218735 83.26622009 9.33460522 -11.055503845 84.26473999 9.33460522 -9.50026512 85.81997681 9.33460522
		 -8.50174141 87.77970123 9.33460522 -8.15767479 89.95205688 9.33460522;
	setAttr ".vt[2988:3153]" -9.34393883 91.85077667 10.37144279 -10.21668243 93.56362152 10.37144279
		 -11.57601166 94.92295074 10.37144279 -13.28886604 95.79569244 10.37144279 -15.18757915 96.096420288 10.37144279
		 -17.086292267 95.79569244 10.37144279 -18.79914665 94.92295074 10.37144279 -20.15847397 93.56362152 10.37144279
		 -21.031217575 91.85077667 10.37144279 -21.33194351 89.95205688 10.37144279 -21.031217575 88.053344727 10.37144279
		 -20.15847397 86.34049225 10.37144279 -18.79914474 84.98116302 10.37144279 -17.086292267 84.10842133 10.37144279
		 -15.18757915 83.80769348 10.37144279 -13.28886795 84.10842133 10.37144279 -11.57601357 84.98116302 10.37144279
		 -10.21668625 86.34049225 10.37144279 -9.34394264 88.053344727 10.37144279 -9.043216705 89.95205688 10.37144279
		 -10.33003044 91.53037262 11.25698566 -11.055501938 92.95418549 11.25698566 -12.1854496 94.084136963 11.25698566
		 -13.60926723 94.80960846 11.25698566 -15.18757915 95.059585571 11.25698566 -16.76589203 94.80960846 11.25698566
		 -18.18970871 94.084136963 11.25698566 -19.31965637 92.95418549 11.25698566 -20.045125961 91.53037262 11.25698566
		 -20.29510498 89.95205688 11.25698566 -20.045125961 88.37374115 11.25698566 -19.31965637 86.94992828 11.25698566
		 -18.18970871 85.81997681 11.25698566 -16.76589203 85.09450531 11.25698566 -15.18757915 84.8445282 11.25698566
		 -13.60926819 85.094512939 11.25698566 -12.18545151 85.81997681 11.25698566 -11.055503845 86.94993591 11.25698566
		 -10.33003426 88.37374115 11.25698566 -10.080055237 89.95205688 11.25698566 -11.43573093 91.17110443 11.96942902
		 -11.99606705 92.27082825 11.96942902 -12.86880875 93.14356995 11.96942902 -13.96853065 93.7039032 11.96942902
		 -15.18757915 93.89698792 11.96942902 -16.40662766 93.7039032 11.96942902 -17.50634766 93.14356995 11.96942902
		 -18.37908936 92.27082825 11.96942902 -18.93942642 91.17110443 11.96942902 -19.13250351 89.95205688 11.96942902
		 -18.93942642 88.73300934 11.96942902 -18.37908936 87.63328552 11.96942902 -17.50634766 86.76054382 11.96942902
		 -16.40662766 86.20021057 11.96942902 -15.18757915 86.0071258545 11.96942902 -13.96853065 86.20021057 11.96942902
		 -12.86881065 86.76054382 11.96942902 -11.99606991 87.63328552 11.96942902 -11.4357338 88.73300934 11.96942902
		 -11.24265671 89.95205688 11.96942902 -12.63381481 90.7818222 12.49123001 -13.015217781 91.53037262 12.49123001
		 -13.60926628 92.12442017 12.49123001 -14.35781002 92.50582123 12.49123001 -15.18757915 92.63724518 12.49123001
		 -16.017349243 92.50582123 12.49123001 -16.76589203 92.12442017 12.49123001 -17.35993958 91.53037262 12.49123001
		 -17.74134254 90.7818222 12.49123001 -17.87276459 89.95205688 12.49123001 -17.74134254 89.12229156 12.49123001
		 -17.35993958 88.37374115 12.49123001 -16.76589203 87.77970123 12.49123001 -16.017347336 87.39829254 12.49123001
		 -15.18757915 87.26687622 12.49123001 -14.35781097 87.39829254 12.49123001 -13.60926819 87.77970123 12.49123001
		 -13.015218735 88.37374115 12.49123001 -12.63381672 89.12229156 12.49123001 -12.50239372 89.95205688 12.49123001
		 -13.89478111 90.37210846 12.80953979 -14.0878582 90.75105286 12.80953979 -14.38858509 91.051780701 12.80953979
		 -14.76752281 91.24485016 12.80953979 -15.18757915 91.31138611 12.80953979 -15.6076355 91.24485016 12.80953979
		 -15.98657322 91.051780701 12.80953979 -16.28730011 90.75105286 12.80953979 -16.4803772 90.37210846 12.80953979
		 -16.54690742 89.95205688 12.80953979 -16.4803772 89.53200531 12.80953979 -16.28730011 89.15306091 12.80953979
		 -15.98657322 88.85233307 12.80953979 -15.6076355 88.65926361 12.80953979 -15.18757915 88.59272766 12.80953979
		 -14.76752281 88.65926361 12.80953979 -14.38858509 88.85233307 12.80953979 -14.087859154 89.15306091 12.80953979
		 -13.89478111 89.53200531 12.80953979 -13.82825089 89.95205688 12.80953979 -15.18757915 89.95205688 -4.46236038
		 -15.18757915 89.95205688 12.91652107 -9.12138939 89.63520813 2.25605464 -10.027371407 89.63520813 0.47796866
		 -11.43846989 89.63520813 -0.93312943 -13.2165556 89.63520813 -1.8391099 -15.18758011 89.63520813 -2.1512897
		 -17.15860748 89.63520813 -1.8391099 -18.93669319 89.63520813 -0.93312764 -20.34779167 89.63520813 0.47796944
		 -21.25376511 89.63520813 2.25605536 -21.56594849 89.63520813 4.22707939 -21.25376511 89.63520813 6.19810295
		 -20.34779167 89.63520813 7.97619009 -18.93669319 89.63520813 9.38728619 -17.15860748 89.63520813 10.2932682
		 -15.18758011 89.63520813 10.60544682 -13.2165556 89.63520813 10.2932682 -11.43847275 89.63520813 9.38728523
		 -10.027373314 89.63520813 7.97619009 -9.12139225 89.63520813 6.198102 -8.80921173 89.63520813 4.22707939
		 -6.35684061 89.63520813 1.35779881 -7.67570353 89.63520813 -1.23061669 -9.72988129 89.63520813 -3.28479528
		 -12.31829834 89.63520813 -4.60365868 -15.18757915 89.63520813 -5.058109283 -18.056856155 89.63520813 -4.60365772
		 -20.64527321 89.63520813 -3.28479433 -22.69945526 89.63520813 -1.2306155 -24.018312454 89.63520813 1.35780001
		 -24.47276878 89.63520813 4.22708035 -24.018312454 89.63520813 7.09635973 -22.69945526 89.63520813 9.68477821
		 -20.64527512 89.63520813 11.73895073 -18.056856155 89.63520813 13.057815552 -15.18757915 89.63520813 13.5122633
		 -12.31829929 89.63520813 13.057814598 -9.72988319 89.63520813 11.73894978 -7.67570925 89.63520813 9.68477631
		 -6.35684443 89.63520813 7.096359253 -5.90239096 89.63520813 4.22708035 -6.4655633 88.18270874 1.39312458
		 -7.76818943 88.18270874 -1.16342425 -9.79707336 88.18270874 -3.19231224 -12.35361862 88.18270874 -4.49493742
		 -15.18757915 88.18270874 -4.94379187 -18.021547318 88.18270874 -4.49493694 -20.57808495 88.18270874 -3.19231009
		 -22.60697365 88.18270874 -1.16342282 -23.9095974 88.18270874 1.39312506 -24.35845184 88.18270874 4.22708035
		 -23.9095974 88.18270874 7.061034679 -22.60697365 88.18270874 9.61758423 -20.57808304 88.18270874 11.64646721
		 -18.021547318 88.18270874 12.94909668 -15.18757915 88.18270874 13.39795017 -12.35361862 88.18270874 12.94909668
		 -9.79707718 88.18270874 11.64646626 -7.76819324 88.18270874 9.61758232 -6.46556807 88.18270874 7.061034203
		 -6.016710281 88.18270874 4.22708035 -6.78904676 86.76583099 1.49823141 -8.043356895 86.76583099 -0.96349883
		 -9.99700165 86.76583099 -2.9171381 -12.4587307 86.76583099 -4.17145157;
	setAttr ".vt[3154:3319]" -15.18757915 86.76583099 -4.60365868 -17.91643143 86.76583099 -4.17145157
		 -20.37815475 86.76583099 -2.91713738 -22.33179283 86.76583099 -0.96349663 -23.58610725 86.76583099 1.49823225
		 -24.018312454 86.76583099 4.22708035 -23.58610725 86.76583099 6.95592928 -22.33179283 86.76583099 9.41765594
		 -20.37815285 86.76583099 11.37129688 -17.91643143 86.76583099 12.62561035 -15.18757915 86.76583099 13.057815552
		 -12.4587326 86.76583099 12.62561035 -9.99700546 86.76583099 11.37129593 -8.043362617 86.76583099 9.41765594
		 -6.78905058 86.76583099 6.95592833 -6.35684443 86.76583099 4.22708035 -7.31933212 85.4197998 1.67053187
		 -8.49444962 85.4197998 -0.63576376 -10.32473373 85.4197998 -2.46605039 -12.63103104 85.4197998 -3.64116621
		 -15.18757915 85.4197998 -4.04608345 -17.74413109 85.4197998 -3.64116526 -20.050420761 85.4197998 -2.46604943
		 -21.88070869 85.4197998 -0.63576275 -23.055820465 85.4197998 1.67053235 -23.46073723 85.4197998 4.22708035
		 -23.055820465 85.4197998 6.78362656 -21.88070869 85.4197998 9.089923859 -20.050418854 85.4197998 10.92020798
		 -17.74412918 85.4197998 12.095328331 -15.18757915 85.4197998 12.50024128 -12.63103199 85.4197998 12.095328331
		 -10.32473755 85.4197998 10.92020702 -8.49445343 85.4197998 9.089922905 -7.31933403 85.4197998 6.7836256
		 -6.91442108 85.4197998 4.22708035 -8.043356895 84.17755127 1.90578353 -9.11034298 84.17755127 -0.18829012
		 -10.77221298 84.17755127 -1.85015535 -12.86628342 84.17755127 -2.91713762 -15.18757915 84.17755127 -3.28479528
		 -17.50887489 84.17755127 -2.91713738 -19.60295105 84.17755127 -1.85015345 -21.26482773 84.17755127 -0.18828881
		 -22.33179283 84.17755127 1.90578377 -22.69945526 84.17755127 4.22708035 -22.33179283 84.17755127 6.54837751
		 -21.26482773 84.17755127 8.64244556 -19.60295105 84.17755127 10.30431271 -17.50887299 84.17755127 11.37129688
		 -15.18757915 84.17755127 11.73895073 -12.86628342 84.17755127 11.37129593 -10.77221298 84.17755127 10.30431175
		 -9.1103487 84.17755127 8.64244556 -8.043362617 84.17755127 6.54837751 -7.67570925 84.17755127 4.22708035
		 -8.94330978 83.069587708 2.19819164 -9.8758812 83.069587708 0.36790547 -11.32840538 83.069587708 -1.084618449
		 -13.15869141 83.069587708 -2.017195225 -15.18757915 83.069587708 -2.33853841 -17.21646881 83.069587708 -2.017194748
		 -19.046751022 83.069587708 -1.084616542 -20.49927711 83.069587708 0.3679069 -21.43186951 83.069587708 2.19819236
		 -21.75319672 83.069587708 4.22708035 -21.43186951 83.069587708 6.25596666 -20.49927711 83.069587708 8.086256027
		 -19.046751022 83.069587708 9.53877735 -17.21646881 83.069587708 10.47136211 -15.18757915 83.069587708 10.792696
		 -13.15869141 83.069587708 10.47136211 -11.32840824 83.069587708 9.5387764 -9.8758831 83.069587708 8.08625412
		 -8.94330978 83.069587708 6.25596619 -8.62196541 83.069587708 4.22708035 -9.99700165 82.12330627 2.54055691
		 -10.77221298 82.12330627 1.019126415 -11.97962761 82.12330627 -0.1882897 -13.50106049 82.12330627 -0.96349788
		 -15.18757915 82.12330627 -1.23061669 -16.87409973 82.12330627 -0.96349686 -18.39552879 82.12330627 -0.18828881
		 -19.60295105 82.12330627 1.01912725 -20.37815285 82.12330627 2.54055691 -20.64527512 82.12330627 4.22708035
		 -20.37815285 82.12330627 5.91360378 -19.60294914 82.12330627 7.4350338 -18.39552879 82.12330627 8.64244556
		 -16.87409973 82.12330627 9.41765594 -15.18757915 82.12330627 9.68477631 -13.50106144 82.12330627 9.41765594
		 -11.97962952 82.12330627 8.64244556 -10.77221298 82.12330627 7.43503284 -9.99700546 82.12330627 5.91360378
		 -9.72988319 82.12330627 4.22708035 -11.1785078 81.36196136 2.92445421 -11.77725792 81.36196136 1.74933708
		 -12.70983505 81.36196136 0.81675982 -13.88495159 81.36196136 0.21800818 -15.18757915 81.36196136 0.011693269
		 -16.49020386 81.36196136 0.21800818 -17.66532516 81.36196136 0.81676042 -18.59789848 81.36196136 1.74933803
		 -19.19665337 81.36196136 2.92445469 -19.40296173 81.36196136 4.22708035 -19.19665337 81.36196136 5.52970648
		 -18.59789848 81.36196136 6.7048192 -17.66532516 81.36196136 7.6373992 -16.49020386 81.36196136 8.23614979
		 -15.18757915 81.36196136 8.44246483 -13.88495255 81.36196136 8.23614883 -12.70983696 81.36196136 7.63739872
		 -11.77726078 81.36196136 6.7048192 -11.17851162 81.36196136 5.52970648 -10.97219563 81.36196136 4.22708035
		 -12.4587307 80.80446625 3.34042335 -12.86628342 80.80446625 2.54055691 -13.50105953 80.80446625 1.90578353
		 -14.30092239 80.80446625 1.49823165 -15.18757915 80.80446625 1.35779953 -16.074234009 80.80446625 1.49823189
		 -16.87409973 80.80446625 1.90578353 -17.50887299 80.80446625 2.54055691 -17.91643143 80.80446625 3.34042335
		 -18.056856155 80.80446625 4.22708035 -17.91643143 80.80446625 5.11373758 -17.50887299 80.80446625 5.91360378
		 -16.87409973 80.80446625 6.54837751 -16.074232101 80.80446625 6.9559288 -15.18757915 80.80446625 7.096359253
		 -14.30092335 80.80446625 6.95592833 -13.50106144 80.80446625 6.54837751 -12.86628342 80.80446625 5.91360378
		 -12.4587326 80.80446625 5.11373711 -12.31829929 80.80446625 4.22708035 -13.80614662 80.46430969 3.77822614
		 -14.012461662 80.46430969 3.37330842 -14.3338089 80.46430969 3.051964045 -14.73872566 80.46430969 2.84564829
		 -15.18757915 80.46430969 2.77455616 -15.63643265 80.46430969 2.84564829 -16.041347504 80.46430969 3.051964283
		 -16.36269379 80.46430969 3.37330866 -16.56900787 80.46430969 3.77822614 -16.64010048 80.46430969 4.22708035
		 -16.56900787 80.46430969 4.67593384 -16.36269379 80.46430969 5.080852985 -16.041347504 80.46430969 5.40219688
		 -15.63643265 80.46430969 5.6085124 -15.18757915 80.46430969 5.67960262 -14.73872662 80.46430969 5.6085124
		 -14.3338089 80.46430969 5.40219688 -14.012462616 80.46430969 5.080852509 -13.80614662 80.46430969 4.67593384
		 -13.73505592 80.46430969 4.22708035 -15.18757915 80.34999847 4.22708035 -8.76194954 89.95205688 2.13926578
		 -9.72161293 89.95205688 0.2558217 -11.21632195 89.95205688 -1.23888779 -13.099767685 89.95205688 -2.1985507
		 -15.18758011 89.95205688 -2.52922773 -17.27539253 89.95205688 -2.1985507 -19.15883636 89.95205688 -1.23888588
		 -20.65354538 89.95205688 0.2558229 -21.61320877 89.95205688 2.13926649;
	setAttr ".vt[3320:3485]" -21.9438839 89.95205688 4.22707939 -21.61320877 89.95205688 6.31489277
		 -20.65354538 89.95205688 8.19833565 -19.15883636 89.95205688 9.69304466 -17.27539253 89.95205688 10.6527071
		 -15.18758011 89.95205688 10.98338413 -13.099767685 89.95205688 10.6527071 -11.21632481 89.95205688 9.69304371
		 -9.72161484 89.95205688 8.19833565 -8.76195335 89.95205688 6.31489182 -8.43127441 89.95205688 4.22707939
		 -5.83359146 89.95205688 1.18778491 -7.23060036 89.95205688 -1.55400276 -9.40649796 89.95205688 -3.7298975
		 -12.14828587 89.95205688 -5.12690783 -15.18757915 89.95205688 -5.60828447 -18.2268734 89.95205688 -5.12690687
		 -20.96866035 89.95205688 -3.72989655 -23.14455414 89.95205688 -1.55400085 -24.54156494 89.95205688 1.18778634
		 -25.022941589 89.95205688 4.22708035 -24.54156494 89.95205688 7.26637411 -23.14455414 89.95205688 10.0081615448
		 -20.96866226 89.95205688 12.18405437 -18.2268734 89.95205688 13.58106422 -15.18757915 89.95205688 14.062440872
		 -12.14828682 89.95205688 13.58106327 -9.40649986 89.95205688 12.18405342 -7.23060608 89.95205688 10.0081596375
		 -5.83359528 89.95205688 7.26637363 -5.35221863 89.95205688 4.22708035 -5.94875336 91.49064636 1.22520399
		 -7.3285656 91.49064636 -1.48282814 -9.47767067 91.49064636 -3.63193464 -12.18570328 91.49064636 -5.011744976
		 -15.18757915 91.49064636 -5.48719549 -18.18945694 91.49064636 -5.011744022 -20.89748764 91.49064636 -3.63193226
		 -23.046592712 91.49064636 -1.48282671 -24.42640305 91.49064636 1.22520447 -24.90185165 91.49064636 4.22708035
		 -24.42640305 91.49064636 7.22895527 -23.046592712 91.49064636 9.93698692 -20.89748573 91.49064636 12.086091042
		 -18.18945694 91.49064636 13.46590137 -15.18757915 91.49064636 13.94135189 -12.18570423 91.49064636 13.46590137
		 -9.47767448 91.49064636 12.086090088 -7.32856941 91.49064636 9.93698502 -5.94876099 91.49064636 7.22895479
		 -5.47330856 91.49064636 4.22708035 -6.29140854 92.99134827 1.33653855 -7.6200428 92.99134827 -1.27105665
		 -9.68944359 92.99134827 -3.34045553 -12.29703712 92.99134827 -4.66909122 -15.18757915 92.99134827 -5.12690783
		 -18.078121185 92.99134827 -4.66909122 -20.68571472 92.99134827 -3.34045458 -22.7551136 92.99134827 -1.27105474
		 -24.083747864 92.99134827 1.33653951 -24.54156494 92.99134827 4.22708035 -24.083747864 92.99134827 7.11762094
		 -22.7551136 92.99134827 9.725214 -20.68571281 92.99134827 11.79461288 -18.078121185 92.99134827 13.12324905
		 -15.18757915 92.99134827 13.58106422 -12.29703903 92.99134827 13.12324715 -9.6894474 92.99134827 11.79461193
		 -7.62004852 92.99134827 9.725214 -6.29141235 92.99134827 7.11761999 -5.83359528 92.99134827 4.22708035
		 -6.85311317 94.41721344 1.51904869 -8.097860336 94.41721344 -0.92390251 -10.036596298 94.41721344 -2.86263943
		 -12.47954845 94.41721344 -4.1073842 -15.18757915 94.41721344 -4.53629351 -17.89561081 94.41721344 -4.10738325
		 -20.33856201 94.41721344 -2.86263752 -22.27729797 94.41721344 -0.92390108 -23.52204132 94.41721344 1.51904917
		 -23.95095062 94.41721344 4.22708035 -23.52204132 94.41721344 6.93511105 -22.27729797 94.41721344 9.37806129
		 -20.3385601 94.41721344 11.31679726 -17.8956089 94.41721344 12.56154156 -15.18757915 94.41721344 12.99045086
		 -12.47954941 94.41721344 12.5615406 -10.036600113 94.41721344 11.3167963 -8.097864151 94.41721344 9.37806034
		 -6.8531189 94.41721344 6.93511009 -6.42420959 94.41721344 4.22708035 -7.6200428 95.73313904 1.76823902
		 -8.75024796 95.73313904 -0.44991446 -10.51058578 95.73313904 -2.21025038 -12.72873783 95.73313904 -3.34045506
		 -15.18757915 95.73313904 -3.7298975 -17.64642143 95.73313904 -3.34045458 -19.86457253 95.73313904 -2.21024847
		 -21.62490654 95.73313904 -0.44991302 -22.7551136 95.73313904 1.76823974 -23.14455414 95.73313904 4.22708035
		 -22.7551136 95.73313904 6.68592072 -21.62490654 95.73313904 8.90407276 -19.86457253 95.73313904 10.66440773
		 -17.64641953 95.73313904 11.79461288 -15.18757915 95.73313904 12.18405437 -12.72873878 95.73313904 11.79461193
		 -10.51058769 95.73313904 10.66440678 -8.75025368 95.73313904 8.90407181 -7.62004852 95.73313904 6.68592072
		 -7.23060608 95.73313904 4.22708035 -8.57331085 96.90670776 2.077974081 -9.56114769 96.90670776 0.1392374
		 -11.099737167 96.90670776 -1.39935303 -13.038474083 96.90670776 -2.38718796 -15.18757915 96.90670776 -2.72757244
		 -17.33668518 96.90670776 -2.38718748 -19.27542114 96.90670776 -1.39935112 -20.81401062 96.90670776 0.13923883
		 -21.80184555 96.90670776 2.077974796 -22.14223099 96.90670776 4.22708035 -21.80184555 96.90670776 6.37618542
		 -20.81401062 96.90670776 8.31492233 -19.27542114 96.90670776 9.85351086 -17.33668518 96.90670776 10.84134579
		 -15.18757915 96.90670776 11.18173027 -13.038475037 96.90670776 10.84134579 -11.099740028 96.90670776 9.8535099
		 -9.5611496 96.90670776 8.31492043 -8.57331467 96.90670776 6.37618494 -8.23293114 96.90670776 4.22708035
		 -9.68944359 97.9090271 2.44062734 -10.51058578 97.9090271 0.8290453 -11.78954506 97.9090271 -0.44991398
		 -13.40112782 97.9090271 -1.2710557 -15.18757915 97.9090271 -1.55400229 -16.97403336 97.9090271 -1.27105522
		 -18.58561325 97.9090271 -0.44991302 -19.86457253 97.9090271 0.82904625 -20.68571281 97.9090271 2.44062805
		 -20.96866226 97.9090271 4.22708035 -20.68571281 97.9090271 6.013532162 -19.86457062 97.9090271 7.62511444
		 -18.58561325 97.9090271 8.90407181 -16.97403336 97.9090271 9.725214 -15.18757915 97.9090271 10.0081596375
		 -13.40112877 97.9090271 9.725214 -11.78954697 97.9090271 8.90407181 -10.51058769 97.9090271 7.62511349
		 -9.6894474 97.9090271 6.013531685 -9.40649986 97.9090271 4.22708035 -10.94095612 98.71543121 2.84726906
		 -11.57518578 98.71543121 1.60252309 -12.56302261 98.71543121 0.61468768 -13.80776882 98.71543121 -0.01954174
		 -15.18757915 98.71543121 -0.23808146 -16.56739044 98.71543121 -0.01954174 -17.8121357 98.71543121 0.6146884
		 -18.79997063 98.71543121 1.60252404 -19.43420029 98.71543121 2.84726954 -19.65274048 98.71543121 4.22708035
		 -19.43420029 98.71543121 5.60689068 -18.79997063 98.71543121 6.85163593 -17.8121357 98.71543121 7.83947134
		 -16.56739044 98.71543121 8.47370052 -15.18757915 98.71543121 8.69224072;
	setAttr ".vt[3486:3531]" -13.80776978 98.71543121 8.47369957 -12.56302452 98.71543121 7.83947086
		 -11.57518864 98.71543121 6.85163593 -10.94095993 98.71543121 5.60689068 -10.72241974 98.71543121 4.22708035
		 -12.29703712 99.30604553 3.28788614 -12.72873783 99.30604553 2.44062734 -13.40112686 99.30604553 1.76823902
		 -14.24838543 99.30604553 1.33653879 -15.18757915 99.30604553 1.18778563 -16.12677383 99.30604553 1.33653903
		 -16.97403336 99.30604553 1.7682395 -17.64641953 99.30604553 2.44062781 -18.078121185 99.30604553 3.28788662
		 -18.2268734 99.30604553 4.22708035 -18.078121185 99.30604553 5.16627407 -17.64641953 99.30604553 6.013532162
		 -16.97403336 99.30604553 6.68592072 -16.12677193 99.30604553 7.11762047 -15.18757915 99.30604553 7.26637363
		 -14.24838638 99.30604553 7.11761999 -13.40112877 99.30604553 6.68592072 -12.72873878 99.30604553 6.013532162
		 -12.29703903 99.30604553 5.16627359 -12.14828682 99.30604553 4.22708035 -13.72429276 99.66632843 3.75162983
		 -13.9428339 99.66632843 3.32271957 -14.28321934 99.66632843 2.98233438 -14.71212959 99.66632843 2.76379395
		 -15.18757915 99.66632843 2.68848991 -15.66302872 99.66632843 2.76379395 -16.091938019 99.66632843 2.98233461
		 -16.43232536 99.66632843 3.32271981 -16.65086365 99.66632843 3.75162983 -16.72616959 99.66632843 4.22708035
		 -16.65086365 99.66632843 4.70253038 -16.43232536 99.66632843 5.13144064 -16.091938019 99.66632843 5.4718256
		 -15.66302872 99.66632843 5.69036579 -15.18757915 99.66632843 5.76566982 -14.71213055 99.66632843 5.69036579
		 -14.28321934 99.66632843 5.4718256 -13.94283485 99.66632843 5.13144016 -13.72429466 99.66632843 4.70253038
		 -13.64899063 99.66632843 4.22708035 -15.18757915 99.78741455 4.22708035;
	setAttr -s 7090 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 12 0 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1 20 21 1
		 21 22 1 22 23 1 23 24 1 25 13 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1 31 32 1 32 33 1
		 33 34 1 34 35 1 35 36 1 36 37 1 38 26 1 39 40 1 40 41 1 41 42 1 42 43 1 43 44 1 44 45 1
		 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 51 39 1 52 53 1 53 54 1 54 55 1 55 56 1 56 57 1
		 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 64 52 1 65 66 1 66 67 1 67 68 1 68 69 1
		 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 77 65 1 78 79 1 79 80 1 80 81 1
		 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 90 78 1 91 92 1 92 93 1
		 93 94 1 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 103 91 1
		 104 105 1 105 106 1 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1
		 113 114 1 114 115 1 116 104 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1
		 123 124 1 124 125 1 125 126 1 126 127 1 127 128 1 129 117 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 142 130 1
		 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1
		 152 153 1 153 154 1 155 143 1 156 157 1 157 158 1 158 159 1 159 160 1 160 161 1 161 162 1
		 162 163 1 163 164 1 164 165 1 165 166 1 166 167 1 168 156 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1;
	setAttr ".ed[166:331]" 179 180 1 181 169 1 182 183 1 183 184 1 184 185 1 185 186 1
		 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1 191 192 1 192 193 1 194 182 1 195 196 1
		 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1
		 205 206 1 207 195 1 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1
		 215 216 1 216 217 1 217 218 1 218 219 1 220 208 1 221 222 1 222 223 1 223 224 1 224 225 1
		 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 233 221 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 240 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 246 234 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1
		 254 255 1 255 256 1 256 257 1 257 258 1 259 247 1 0 13 1 1 14 1 2 15 1 3 16 1 4 17 1
		 5 18 1 6 19 1 7 20 1 8 21 1 9 22 1 10 23 1 11 24 1 12 25 1 13 26 1 14 27 1 15 28 1
		 16 29 1 17 30 1 18 31 1 19 32 1 20 33 1 21 34 1 22 35 1 23 36 1 24 37 1 25 38 1 26 39 1
		 27 40 1 28 41 1 29 42 1 30 43 1 31 44 1 32 45 1 33 46 1 34 47 1 35 48 1 36 49 1 37 50 1
		 38 51 1 39 52 1 40 53 1 41 54 1 42 55 1 43 56 1 44 57 1 45 58 1 46 59 1 47 60 1 48 61 1
		 49 62 1 50 63 1 51 64 1 52 65 1 53 66 1 54 67 1 55 68 1 56 69 1 57 70 1 58 71 1 59 72 1
		 60 73 1 61 74 1 62 75 1 63 76 1 64 77 1 65 78 1 66 79 1 67 80 1 68 81 1 69 82 1 70 83 1
		 71 84 1 72 85 1 73 86 1 74 87 1 75 88 1 76 89 1 77 90 1 78 91 1 79 92 1 80 93 1 81 94 1
		 82 95 1 83 96 1 84 97 1 85 98 1 86 99 1 87 100 1 88 101 1 89 102 1 90 103 1 91 104 1;
	setAttr ".ed[332:497]" 92 105 1 93 106 1 94 107 1 95 108 1 96 109 1 97 110 1
		 98 111 1 99 112 1 100 113 1 101 114 1 102 115 1 103 116 1 104 117 1 105 118 1 106 119 1
		 107 120 1 108 121 1 109 122 1 110 123 1 111 124 1 112 125 1 113 126 1 114 127 1 115 128 1
		 116 129 1 117 130 1 118 131 1 119 132 1 120 133 1 121 134 1 122 135 1 123 136 1 124 137 1
		 125 138 1 126 139 1 127 140 1 128 141 1 129 142 1 130 143 1 131 144 1 132 145 1 133 146 1
		 134 147 1 135 148 1 136 149 1 137 150 1 138 151 1 139 152 1 140 153 1 141 154 1 142 155 1
		 143 156 1 144 157 1 145 158 1 146 159 1 147 160 1 148 161 1 149 162 1 150 163 1 151 164 1
		 152 165 1 153 166 1 154 167 1 155 168 1 156 169 1 157 170 1 158 171 1 159 172 1 160 173 1
		 161 174 1 162 175 1 163 176 1 164 177 1 165 178 1 166 179 1 167 180 1 168 181 1 169 182 1
		 170 183 1 171 184 1 172 185 1 173 186 1 174 187 1 175 188 1 176 189 1 177 190 1 178 191 1
		 179 192 1 180 193 1 181 194 1 182 195 1 183 196 1 184 197 1 185 198 1 186 199 1 187 200 1
		 188 201 1 189 202 1 190 203 1 191 204 1 192 205 1 193 206 1 194 207 1 195 208 1 196 209 1
		 197 210 1 198 211 1 199 212 1 200 213 1 201 214 1 202 215 1 203 216 1 204 217 1 205 218 1
		 206 219 1 207 220 1 208 221 1 209 222 1 210 223 1 211 224 1 212 225 1 213 226 1 214 227 1
		 215 228 1 216 229 1 217 230 1 218 231 1 219 232 1 220 233 1 221 234 1 222 235 1 223 236 1
		 224 237 1 225 238 1 226 239 1 227 240 1 228 241 1 229 242 1 230 243 1 231 244 1 232 245 1
		 233 246 1 234 247 1 235 248 1 236 249 1 237 250 1 238 251 1 239 252 1 240 253 1 241 254 1
		 242 255 1 243 256 1 244 257 1 245 258 1 246 259 1 247 0 1 248 1 1 249 2 1 250 3 1
		 251 4 1 252 5 1 253 6 1 254 7 1 255 8 1 256 9 1 257 10 1;
	setAttr ".ed[498:663]" 258 11 1 259 12 1 260 261 1 261 262 1 262 263 1 263 264 1
		 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1 271 272 1 273 274 1
		 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1
		 283 284 1 284 285 1 286 287 1 287 288 1 288 289 1 289 290 1 290 291 1 291 292 1 292 293 1
		 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 299 300 1 300 301 1 301 302 1 302 303 1
		 303 304 1 304 305 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1 312 313 1
		 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 319 320 1 320 321 1 321 322 1
		 322 323 1 323 324 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1
		 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 338 339 1 339 340 1 340 341 1 341 342 1
		 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1 349 350 1 351 352 1
		 352 353 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1 359 360 1 360 361 1
		 361 362 1 362 363 1 364 365 1 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1
		 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1 377 378 1 378 379 1 379 380 1 380 381 1
		 381 382 1 382 383 1 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 390 391 1
		 391 392 1 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 400 1
		 400 401 1 401 402 1 403 404 1 404 405 1 405 406 1 406 407 1 407 408 1 408 409 1 409 410 1
		 410 411 1 411 412 1 412 413 1 413 414 1 414 415 1 416 417 1 417 418 1 418 419 1 419 420 1
		 420 421 1 421 422 1 422 423 1 423 424 1 424 425 1 425 426 1 426 427 1 427 428 1 429 430 1
		 430 431 1 431 432 1 432 433 1 433 434 1 434 435 1 435 436 1 436 437 1;
	setAttr ".ed[664:829]" 437 438 1 438 439 1 439 440 1 440 441 1 442 443 1 443 444 1
		 444 445 1 445 446 1 446 447 1 447 448 1 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1
		 453 454 1 455 456 1 456 457 1 457 458 1 458 459 1 459 460 1 460 461 1 461 462 1 462 463 1
		 463 464 1 464 465 1 465 466 1 466 467 1 468 469 1 469 470 1 470 471 1 471 472 1 472 473 1
		 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1 478 479 1 479 480 1 481 482 1 482 483 1
		 483 484 1 484 485 1 485 486 1 486 487 1 487 488 1 488 489 1 489 490 1 490 491 1 491 492 1
		 492 493 1 494 495 1 495 496 1 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1 501 502 1
		 502 503 1 503 504 1 504 505 1 505 506 1 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1
		 512 513 1 513 514 1 514 515 1 515 516 1 516 517 1 517 518 1 518 519 1 260 273 1 261 274 1
		 262 275 1 263 276 1 264 277 1 265 278 1 266 279 1 267 280 1 268 281 1 269 282 1 270 283 1
		 271 284 1 272 285 1 273 286 1 274 287 1 275 288 1 276 289 1 277 290 1 278 291 1 279 292 1
		 280 293 1 281 294 1 282 295 1 283 296 1 284 297 1 285 298 1 286 299 1 287 300 1 288 301 1
		 289 302 1 290 303 1 291 304 1 292 305 1 293 306 1 294 307 1 295 308 1 296 309 1 297 310 1
		 298 311 1 299 312 1 300 313 1 301 314 1 302 315 1 303 316 1 304 317 1 305 318 1 306 319 1
		 307 320 1 308 321 1 309 322 1 310 323 1 311 324 1 312 325 1 313 326 1 314 327 1 315 328 1
		 316 329 1 317 330 1 318 331 1 319 332 1 320 333 1 321 334 1 322 335 1 323 336 1 324 337 1
		 325 338 1 326 339 1 327 340 1 328 341 1 329 342 1 330 343 1 331 344 1 332 345 1 333 346 1
		 334 347 1 335 348 1 336 349 1 337 350 1 338 351 1 339 352 1 340 353 1 341 354 1 342 355 1
		 343 356 1 344 357 1 345 358 1 346 359 1 347 360 1 348 361 1 349 362 1;
	setAttr ".ed[830:995]" 350 363 1 351 364 1 352 365 1 353 366 1 354 367 1 355 368 1
		 356 369 1 357 370 1 358 371 1 359 372 1 360 373 1 361 374 1 362 375 1 363 376 1 364 377 1
		 365 378 1 366 379 1 367 380 1 368 381 1 369 382 1 370 383 1 371 384 1 372 385 1 373 386 1
		 374 387 1 375 388 1 376 389 1 377 390 1 378 391 1 379 392 1 380 393 1 381 394 1 382 395 1
		 383 396 1 384 397 1 385 398 1 386 399 1 387 400 1 388 401 1 389 402 1 390 403 1 391 404 1
		 392 405 1 393 406 1 394 407 1 395 408 1 396 409 1 397 410 1 398 411 1 399 412 1 400 413 1
		 401 414 1 402 415 1 403 416 1 404 417 1 405 418 1 406 419 1 407 420 1 408 421 1 409 422 1
		 410 423 1 411 424 1 412 425 1 413 426 1 414 427 1 415 428 1 416 429 1 417 430 1 418 431 1
		 419 432 1 420 433 1 421 434 1 422 435 1 423 436 1 424 437 1 425 438 1 426 439 1 427 440 1
		 428 441 1 429 442 1 430 443 1 431 444 1 432 445 1 433 446 1 434 447 1 435 448 1 436 449 1
		 437 450 1 438 451 1 439 452 1 440 453 1 441 454 1 442 455 1 443 456 1 444 457 1 445 458 1
		 446 459 1 447 460 1 448 461 1 449 462 1 450 463 1 451 464 1 452 465 1 453 466 1 454 467 1
		 455 468 1 456 469 1 457 470 1 458 471 1 459 472 1 460 473 1 461 474 1 462 475 1 463 476 1
		 464 477 1 465 478 1 466 479 1 467 480 1 468 481 1 469 482 1 470 483 1 471 484 1 472 485 1
		 473 486 1 474 487 1 475 488 1 476 489 1 477 490 1 478 491 1 479 492 1 480 493 1 481 494 1
		 482 495 1 483 496 1 484 497 1 485 498 1 486 499 1 487 500 1 488 501 1 489 502 1 490 503 1
		 491 504 1 492 505 1 493 506 1 494 507 1 495 508 1 496 509 1 497 510 1 498 511 1 499 512 1
		 500 513 1 501 514 1 502 515 1 503 516 1 504 517 1 505 518 1 506 519 1 507 260 1 508 261 1
		 509 262 1 510 263 1 511 264 1 512 265 1 513 266 1 514 267 1 515 268 1;
	setAttr ".ed[996:1161]" 516 269 1 517 270 1 518 271 1 519 272 1 520 521 1 521 522 1
		 522 523 1 523 524 1 524 525 1 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1
		 531 532 1 533 534 1 534 535 1 535 536 1 536 537 1 537 538 1 538 539 1 539 540 1 540 541 1
		 541 542 1 542 543 1 543 544 1 544 545 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1
		 551 552 1 552 553 1 553 554 1 554 555 1 555 556 1 556 557 1 557 558 1 559 560 1 560 561 1
		 561 562 1 562 563 1 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 568 569 1 569 570 1
		 570 571 1 572 573 1 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1
		 580 581 1 581 582 1 582 583 1 583 584 1 585 586 1 586 587 1 587 588 1 588 589 1 589 590 1
		 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1 596 597 1 598 599 1 599 600 1
		 600 601 1 601 602 1 602 603 1 603 604 1 604 605 1 605 606 1 606 607 1 607 608 1 608 609 1
		 609 610 1 611 612 1 612 613 1 613 614 1 614 615 1 615 616 1 616 617 1 617 618 1 618 619 1
		 619 620 1 620 621 1 621 622 1 622 623 1 624 625 1 625 626 1 626 627 1 627 628 1 628 629 1
		 629 630 1 630 631 1 631 632 1 632 633 1 633 634 1 634 635 1 635 636 1 637 638 1 638 639 1
		 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1 644 645 1 645 646 1 646 647 1 647 648 1
		 648 649 1 650 651 1 651 652 1 652 653 1 653 654 1 654 655 1 655 656 1 656 657 1 657 658 1
		 658 659 1 659 660 1 660 661 1 661 662 1 663 664 1 664 665 1 665 666 1 666 667 1 667 668 1
		 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1 673 674 1 674 675 1 676 677 1 677 678 1
		 678 679 1 679 680 1 680 681 1 681 682 1 682 683 1 683 684 1 684 685 1 685 686 1 686 687 1
		 687 688 1 689 690 1 690 691 1 691 692 1 692 693 1 693 694 1 694 695 1;
	setAttr ".ed[1162:1327]" 695 696 1 696 697 1 697 698 1 698 699 1 699 700 1 700 701 1
		 702 703 1 703 704 1 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1
		 711 712 1 712 713 1 713 714 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1
		 721 722 1 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 728 729 1 729 730 1 730 731 1
		 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 741 742 1 742 743 1 743 744 1 744 745 1 745 746 1 746 747 1 747 748 1 748 749 1 749 750 1
		 750 751 1 751 752 1 752 753 1 754 755 1 755 756 1 756 757 1 757 758 1 758 759 1 759 760 1
		 760 761 1 761 762 1 762 763 1 763 764 1 764 765 1 765 766 1 767 768 1 768 769 1 769 770 1
		 770 771 1 771 772 1 772 773 1 773 774 1 774 775 1 775 776 1 776 777 1 777 778 1 778 779 1
		 520 533 1 521 534 1 522 535 1 523 536 1 524 537 1 525 538 1 526 539 1 527 540 1 528 541 1
		 529 542 1 530 543 1 531 544 1 532 545 0 533 546 1 534 547 1 535 548 1 536 549 1 537 550 1
		 538 551 1 539 552 1 540 553 1 541 554 1 542 555 1 543 556 1 544 557 1 545 558 0 546 559 1
		 547 560 1 548 561 1 549 562 1 550 563 1 551 564 1 552 565 1 553 566 1 554 567 1 555 568 1
		 556 569 1 557 570 1 558 571 0 559 572 1 560 573 1 561 574 1 562 575 1 563 576 1 564 577 1
		 565 578 1 566 579 1 567 580 1 568 581 1 569 582 1 570 583 1 571 584 0 572 585 1 573 586 1
		 574 587 1 575 588 1 576 589 1 577 590 1 578 591 1 579 592 1 580 593 1 581 594 1 582 595 1
		 583 596 1 584 597 0 585 598 1 586 599 1 587 600 1 588 601 1 589 602 1 590 603 1 591 604 1
		 592 605 1 593 606 1 594 607 1 595 608 1 596 609 1 597 610 0 598 611 1 599 612 1 600 613 1
		 601 614 1 602 615 1 603 616 1 604 617 1 605 618 1 606 619 1 607 620 1;
	setAttr ".ed[1328:1493]" 608 621 1 609 622 1 610 623 0 611 624 1 612 625 1 613 626 1
		 614 627 1 615 628 1 616 629 1 617 630 1 618 631 1 619 632 1 620 633 1 621 634 1 622 635 1
		 623 636 0 624 637 1 625 638 1 626 639 1 627 640 1 628 641 1 629 642 1 630 643 1 631 644 1
		 632 645 1 633 646 1 634 647 1 635 648 1 636 649 0 637 650 1 638 651 1 639 652 1 640 653 1
		 641 654 1 642 655 1 643 656 1 644 657 1 645 658 1 646 659 1 647 660 1 648 661 1 649 662 0
		 650 663 1 651 664 1 652 665 1 653 666 1 654 667 1 655 668 1 656 669 1 657 670 1 658 671 1
		 659 672 1 660 673 1 661 674 1 662 675 0 663 676 1 664 677 1 665 678 1 666 679 1 667 680 1
		 668 681 1 669 682 1 670 683 1 671 684 1 672 685 1 673 686 1 674 687 1 675 688 0 676 689 1
		 677 690 1 678 691 1 679 692 1 680 693 1 681 694 1 682 695 1 683 696 1 684 697 1 685 698 1
		 686 699 1 687 700 1 688 701 0 689 702 1 690 703 1 691 704 1 692 705 1 693 706 1 694 707 1
		 695 708 1 696 709 1 697 710 1 698 711 1 699 712 1 700 713 1 701 714 0 702 715 1 703 716 1
		 704 717 1 705 718 1 706 719 1 707 720 1 708 721 1 709 722 1 710 723 1 711 724 1 712 725 1
		 713 726 1 714 727 0 715 728 1 716 729 1 717 730 1 718 731 1 719 732 1 720 733 1 721 734 1
		 722 735 1 723 736 1 724 737 1 725 738 1 726 739 1 727 740 0 728 741 1 729 742 1 730 743 1
		 731 744 1 732 745 1 733 746 1 734 747 1 735 748 1 736 749 1 737 750 1 738 751 1 739 752 1
		 740 753 0 741 754 1 742 755 1 743 756 1 744 757 1 745 758 1 746 759 1 747 760 1 748 761 1
		 749 762 1 750 763 1 751 764 1 752 765 1 753 766 0 754 767 1 755 768 1 756 769 1 757 770 1
		 758 771 1 759 772 1 760 773 1 761 774 1 762 775 1 763 776 1 764 777 1 765 778 1 766 779 0
		 767 520 1 768 521 1 769 522 1 770 523 1 771 524 1 772 525 1 773 526 1;
	setAttr ".ed[1494:1659]" 774 527 1 775 528 1 776 529 1 777 530 1 778 531 1 779 532 0
		 25 780 1 12 781 1 259 782 1 246 783 1 233 784 1 220 785 1 207 786 1 194 787 1 181 788 1
		 168 789 1 155 790 1 142 791 1 129 792 1 116 793 1 103 794 1 90 795 1 77 796 1 64 797 1
		 51 798 1 38 799 1 780 800 1 781 801 1 780 781 1 782 802 1 781 782 1 783 803 1 782 783 1
		 784 804 1 783 784 1 785 805 1 784 785 1 786 806 1 785 786 1 787 807 1 786 787 1 788 808 1
		 787 788 1 789 809 1 788 789 1 790 810 1 789 790 1 791 811 1 790 791 1 792 812 1 791 792 1
		 793 813 1 792 793 1 794 814 1 793 794 1 795 815 1 794 795 1 796 816 1 795 796 1 797 817 1
		 796 797 1 798 818 1 797 798 1 799 819 1 798 799 1 799 780 1 800 820 1 801 821 1 800 801 1
		 802 822 1 801 802 1 803 823 1 802 803 1 804 824 1 803 804 1 805 825 1 804 805 1 806 826 1
		 805 806 1 807 827 1 806 807 1 808 828 1 807 808 1 809 829 1 808 809 1 810 830 1 809 810 1
		 811 831 1 810 811 1 812 832 1 811 812 1 813 833 1 812 813 1 814 834 1 813 814 1 815 835 1
		 814 815 1 816 836 1 815 816 1 817 837 1 816 817 1 818 838 1 817 818 1 819 839 1 818 819 1
		 819 800 1 820 840 1 821 841 1 820 821 1 822 842 1 821 822 1 823 843 1 822 823 1 824 844 1
		 823 824 1 825 845 1 824 825 1 826 846 1 825 826 1 827 847 1 826 827 1 828 848 1 827 828 1
		 829 849 1 828 829 1 830 850 1 829 830 1 831 851 1 830 831 1 832 852 1 831 832 1 833 853 1
		 832 833 1 834 854 1 833 834 1 835 855 1 834 835 1 836 856 1 835 836 1 837 857 1 836 837 1
		 838 858 1 837 838 1 839 859 1 838 839 1 839 820 1 840 860 1 841 861 1 840 841 1 842 862 1
		 841 842 1 843 863 1 842 843 1 844 864 1 843 844 1 845 865 1 844 845 1 846 866 1 845 846 1
		 847 867 1 846 847 1 848 868 1 847 848 1 849 869 1 848 849 1 850 870 1;
	setAttr ".ed[1660:1825]" 849 850 1 851 871 1 850 851 1 852 872 1 851 852 1 853 873 1
		 852 853 1 854 874 1 853 854 1 855 875 1 854 855 1 856 876 1 855 856 1 857 877 1 856 857 1
		 858 878 1 857 858 1 859 879 1 858 859 1 859 840 1 860 880 1 861 881 1 860 861 1 862 882 1
		 861 862 1 863 883 1 862 863 1 864 884 1 863 864 1 865 885 1 864 865 1 866 886 1 865 866 1
		 867 887 1 866 867 1 868 888 1 867 868 1 869 889 1 868 869 1 870 890 1 869 870 1 871 891 1
		 870 871 1 872 892 1 871 872 1 873 893 1 872 873 1 874 894 1 873 874 1 875 895 1 874 875 1
		 876 896 1 875 876 1 877 897 1 876 877 1 878 898 1 877 878 1 879 899 1 878 879 1 879 860 1
		 880 900 1 881 901 1 880 881 1 882 902 1 881 882 1 883 903 1 882 883 1 884 904 1 883 884 1
		 885 905 1 884 885 1 886 906 1 885 886 1 887 907 1 886 887 1 888 908 1 887 888 1 889 909 1
		 888 889 1 890 910 1 889 890 1 891 911 1 890 891 1 892 912 1 891 892 1 893 913 1 892 893 1
		 894 914 1 893 894 1 895 915 1 894 895 1 896 916 1 895 896 1 897 917 1 896 897 1 898 918 1
		 897 898 1 899 919 1 898 899 1 899 880 1 900 920 1 901 921 1 900 901 1 902 922 1 901 902 1
		 903 923 1 902 903 1 904 924 1 903 904 1 905 925 1 904 905 1 906 926 1 905 906 1 907 927 1
		 906 907 1 908 928 1 907 908 1 909 929 1 908 909 1 910 930 1 909 910 1 911 931 1 910 911 1
		 912 932 1 911 912 1 913 933 1 912 913 1 914 934 1 913 914 1 915 935 1 914 915 1 916 936 1
		 915 916 1 917 937 1 916 917 1 918 938 1 917 918 1 919 939 1 918 919 1 919 900 1 920 940 1
		 921 941 1 920 921 1 922 942 1 921 922 1 923 943 1 922 923 1 924 944 1 923 924 1 925 945 1
		 924 925 1 926 946 1 925 926 1 927 947 1 926 927 1 928 948 1 927 928 1 929 949 1 928 929 1
		 930 950 1 929 930 1 931 951 1 930 931 1 932 952 1 931 932 1 933 953 1;
	setAttr ".ed[1826:1991]" 932 933 1 934 954 1 933 934 1 935 955 1 934 935 1 936 956 1
		 935 936 1 937 957 1 936 937 1 938 958 1 937 938 1 939 959 1 938 939 1 939 920 1 940 960 1
		 941 961 1 940 941 1 942 962 1 941 942 1 943 963 1 942 943 1 944 964 1 943 944 1 945 965 1
		 944 945 1 946 966 1 945 946 1 947 967 1 946 947 1 948 968 1 947 948 1 949 969 1 948 949 1
		 950 970 1 949 950 1 951 971 1 950 951 1 952 972 1 951 952 1 953 973 1 952 953 1 954 974 1
		 953 954 1 955 975 1 954 955 1 956 976 1 955 956 1 957 977 1 956 957 1 958 978 1 957 958 1
		 959 979 1 958 959 1 959 940 1 960 285 1 961 272 1 960 961 1 962 519 1 961 962 1 963 506 1
		 962 963 1 964 493 1 963 964 1 965 480 1 964 965 1 966 467 1 965 966 1 967 454 1 966 967 1
		 968 441 1 967 968 1 969 428 1 968 969 1 970 415 1 969 970 1 971 402 1 970 971 1 972 389 1
		 971 972 1 973 376 1 972 973 1 974 363 1 973 974 1 975 350 1 974 975 1 976 337 1 975 976 1
		 977 324 1 976 977 1 978 311 1 977 978 1 979 298 1 978 979 1 979 960 1 24 980 1 37 981 1
		 50 982 1 63 983 1 76 984 1 89 985 1 102 986 1 115 987 1 128 988 1 141 989 1 154 990 1
		 167 991 1 180 992 1 193 993 1 206 994 1 219 995 1 232 996 1 245 997 1 258 998 1 11 999 1
		 980 1000 1 981 1001 1 980 981 1 982 1002 1 981 982 1 983 1003 1 982 983 1 984 1004 1
		 983 984 1 985 1005 1 984 985 1 986 1006 1 985 986 1 987 1007 1 986 987 1 988 1008 1
		 987 988 1 989 1009 1 988 989 1 990 1010 1 989 990 1 991 1011 1 990 991 1 992 1012 1
		 991 992 1 993 1013 1 992 993 1 994 1014 1 993 994 1 995 1015 1 994 995 1 996 1016 1
		 995 996 1 997 1017 1 996 997 1 998 1018 1 997 998 1 999 1019 1 998 999 1 999 980 1
		 1000 1020 1 1001 1021 1 1000 1001 1 1002 1022 1 1001 1002 1 1003 1023 1 1002 1003 1
		 1004 1024 1 1003 1004 1 1005 1025 1 1004 1005 1 1006 1026 1;
	setAttr ".ed[1992:2157]" 1005 1006 1 1007 1027 1 1006 1007 1 1008 1028 1 1007 1008 1
		 1009 1029 1 1008 1009 1 1010 1030 1 1009 1010 1 1011 1031 1 1010 1011 1 1012 1032 1
		 1011 1012 1 1013 1033 1 1012 1013 1 1014 1034 1 1013 1014 1 1015 1035 1 1014 1015 1
		 1016 1036 1 1015 1016 1 1017 1037 1 1016 1017 1 1018 1038 1 1017 1018 1 1019 1039 1
		 1018 1019 1 1019 1000 1 1020 1040 1 1021 1041 1 1020 1021 1 1022 1042 1 1021 1022 1
		 1023 1043 1 1022 1023 1 1024 1044 1 1023 1024 1 1025 1045 1 1024 1025 1 1026 1046 1
		 1025 1026 1 1027 1047 1 1026 1027 1 1028 1048 1 1027 1028 1 1029 1049 1 1028 1029 1
		 1030 1050 1 1029 1030 1 1031 1051 1 1030 1031 1 1032 1052 1 1031 1032 1 1033 1053 1
		 1032 1033 1 1034 1054 1 1033 1034 1 1035 1055 1 1034 1035 1 1036 1056 1 1035 1036 1
		 1037 1057 1 1036 1037 1 1038 1058 1 1037 1038 1 1039 1059 1 1038 1039 1 1039 1020 1
		 1040 1060 1 1041 1061 1 1040 1041 1 1042 1062 1 1041 1042 1 1043 1063 1 1042 1043 1
		 1044 1064 1 1043 1044 1 1045 1065 1 1044 1045 1 1046 1066 1 1045 1046 1 1047 1067 1
		 1046 1047 1 1048 1068 1 1047 1048 1 1049 1069 1 1048 1049 1 1050 1070 1 1049 1050 1
		 1051 1071 1 1050 1051 1 1052 1072 1 1051 1052 1 1053 1073 1 1052 1053 1 1054 1074 1
		 1053 1054 1 1055 1075 1 1054 1055 1 1056 1076 1 1055 1056 1 1057 1077 1 1056 1057 1
		 1058 1078 1 1057 1058 1 1059 1079 1 1058 1059 1 1059 1040 1 1060 1080 1 1061 1081 1
		 1060 1061 1 1062 1082 1 1061 1062 1 1063 1083 1 1062 1063 1 1064 1084 1 1063 1064 1
		 1065 1085 1 1064 1065 1 1066 1086 1 1065 1066 1 1067 1087 1 1066 1067 1 1068 1088 1
		 1067 1068 1 1069 1089 1 1068 1069 1 1070 1090 1 1069 1070 1 1071 1091 1 1070 1071 1
		 1072 1092 1 1071 1072 1 1073 1093 1 1072 1073 1 1074 1094 1 1073 1074 1 1075 1095 1
		 1074 1075 1 1076 1096 1 1075 1076 1 1077 1097 1 1076 1077 1 1078 1098 1 1077 1078 1
		 1079 1099 1 1078 1079 1 1079 1060 1 1080 1100 1 1081 1101 1 1080 1081 1 1082 1102 1
		 1081 1082 1 1083 1103 1 1082 1083 1 1084 1104 1 1083 1084 1 1085 1105 1 1084 1085 1
		 1086 1106 1 1085 1086 1 1087 1107 1 1086 1087 1 1088 1108 1 1087 1088 1 1089 1109 1;
	setAttr ".ed[2158:2323]" 1088 1089 1 1090 1110 1 1089 1090 1 1091 1111 1 1090 1091 1
		 1092 1112 1 1091 1092 1 1093 1113 1 1092 1093 1 1094 1114 1 1093 1094 1 1095 1115 1
		 1094 1095 1 1096 1116 1 1095 1096 1 1097 1117 1 1096 1097 1 1098 1118 1 1097 1098 1
		 1099 1119 1 1098 1099 1 1099 1080 1 1100 1120 1 1101 1121 1 1100 1101 1 1102 1122 1
		 1101 1102 1 1103 1123 1 1102 1103 1 1104 1124 1 1103 1104 1 1105 1125 1 1104 1105 1
		 1106 1126 1 1105 1106 1 1107 1127 1 1106 1107 1 1108 1128 1 1107 1108 1 1109 1129 1
		 1108 1109 1 1110 1130 1 1109 1110 1 1111 1131 1 1110 1111 1 1112 1132 1 1111 1112 1
		 1113 1133 1 1112 1113 1 1114 1134 1 1113 1114 1 1115 1135 1 1114 1115 1 1116 1136 1
		 1115 1116 1 1117 1137 1 1116 1117 1 1118 1138 1 1117 1118 1 1119 1139 1 1118 1119 1
		 1119 1100 1 1120 1140 1 1121 1141 1 1120 1121 1 1122 1142 1 1121 1122 1 1123 1143 1
		 1122 1123 1 1124 1144 1 1123 1124 1 1125 1145 1 1124 1125 1 1126 1146 1 1125 1126 1
		 1127 1147 1 1126 1127 1 1128 1148 1 1127 1128 1 1129 1149 1 1128 1129 1 1130 1150 1
		 1129 1130 1 1131 1151 1 1130 1131 1 1132 1152 1 1131 1132 1 1133 1153 1 1132 1133 1
		 1134 1154 1 1133 1134 1 1135 1155 1 1134 1135 1 1136 1156 1 1135 1136 1 1137 1157 1
		 1136 1137 1 1138 1158 1 1137 1138 1 1139 1159 1 1138 1139 1 1139 1120 1 1140 1160 1
		 1141 1161 1 1140 1141 1 1142 1162 1 1141 1142 1 1143 1163 1 1142 1143 1 1144 1164 1
		 1143 1144 1 1145 1165 1 1144 1145 1 1146 1166 1 1145 1146 1 1147 1167 1 1146 1147 1
		 1148 1168 1 1147 1148 1 1149 1169 1 1148 1149 1 1150 1170 1 1149 1150 1 1151 1171 1
		 1150 1151 1 1152 1172 1 1151 1152 1 1153 1173 1 1152 1153 1 1154 1174 1 1153 1154 1
		 1155 1175 1 1154 1155 1 1156 1176 1 1155 1156 1 1157 1177 1 1156 1157 1 1158 1178 1
		 1157 1158 1 1159 1179 1 1158 1159 1 1159 1140 1 1160 533 1 1161 546 1 1160 1161 1
		 1162 559 1 1161 1162 1 1163 572 1 1162 1163 1 1164 585 1 1163 1164 1 1165 598 1 1164 1165 1
		 1166 611 1 1165 1166 1 1167 624 1 1166 1167 1 1168 637 1 1167 1168 1 1169 650 1 1168 1169 1
		 1170 663 1 1169 1170 1 1171 676 1 1170 1171 1 1172 689 1;
	setAttr ".ed[2324:2489]" 1171 1172 1 1173 702 1 1172 1173 1 1174 715 1 1173 1174 1
		 1175 728 1 1174 1175 1 1176 741 1 1175 1176 1 1177 754 1 1176 1177 1 1178 767 1 1177 1178 1
		 1179 520 1 1178 1179 1 1179 1160 1 532 1180 0 545 1181 1 1180 1181 0 558 1182 1 1181 1182 0
		 571 1183 1 1182 1183 0 584 1184 1 1183 1184 0 597 1185 1 1184 1185 0 610 1186 1 1185 1186 0
		 623 1187 1 1186 1187 0 636 1188 0 1187 1188 0 649 1189 0 1188 1189 0 662 1190 0 1189 1190 0
		 675 1191 1 1190 1191 0 688 1192 1 1191 1192 0 701 1193 1 1192 1193 0 714 1194 1 1193 1194 0
		 727 1195 1 1194 1195 0 740 1196 1 1195 1196 0 753 1197 1 1196 1197 0 766 1198 0 1197 1198 0
		 779 1199 0 1198 1199 0 1199 1180 0 532 1446 1 545 1445 1 1200 1201 0 558 1444 1 1201 1202 0
		 571 1443 1 1202 1203 0 584 1442 1 1203 1204 0 597 1441 1 1204 1205 0 610 1440 1 1205 1206 0
		 623 1459 1 1206 1207 0 636 1458 1 1207 1208 0 649 1457 1 1208 1209 0 662 1456 1 1209 1210 0
		 675 1455 1 1210 1211 0 688 1454 1 1211 1212 0 701 1453 1 1212 1213 0 714 1452 1 1213 1214 0
		 727 1451 1 1214 1215 0 740 1450 1 1215 1216 0 753 1449 1 1216 1217 0 766 1448 1 1217 1218 0
		 779 1447 1 1218 1219 0 1219 1200 0 260 1255 1 273 1256 1 1220 1221 0 286 1257 1 1221 1222 0
		 299 1258 1 1222 1223 0 312 1259 1 1223 1224 0 325 1240 1 1224 1225 0 338 1241 1 1225 1226 0
		 351 1242 1 1226 1227 0 364 1243 1 1227 1228 0 377 1244 1 1228 1229 0 390 1245 1 1229 1230 0
		 403 1246 1 1230 1231 0 416 1247 1 1231 1232 0 429 1248 1 1232 1233 0 442 1249 1 1233 1234 0
		 455 1250 1 1234 1235 0 468 1251 1 1235 1236 0 481 1252 1 1236 1237 0 494 1253 1 1237 1238 0
		 507 1254 1 1238 1239 0 1239 1220 0 1240 1260 1 1241 1261 1 1240 1241 1 1242 1262 1
		 1241 1242 1 1243 1263 1 1242 1243 1 1244 1264 1 1243 1244 1 1245 1265 1 1244 1245 1
		 1246 1266 1 1245 1246 1 1247 1267 1 1246 1247 1 1248 1268 1 1247 1248 1 1249 1269 1
		 1248 1249 1 1250 1270 1 1249 1250 1 1251 1271 1 1250 1251 1 1252 1272 1 1251 1252 1
		 1253 1273 1 1252 1253 1 1254 1274 1 1253 1254 1 1255 1275 1;
	setAttr ".ed[2490:2655]" 1254 1255 1 1256 1276 1 1255 1256 1 1257 1277 1 1256 1257 1
		 1258 1278 1 1257 1258 1 1259 1279 1 1258 1259 1 1259 1240 1 1260 1280 1 1261 1281 1
		 1260 1261 1 1262 1282 1 1261 1262 1 1263 1283 1 1262 1263 1 1264 1284 1 1263 1264 1
		 1265 1285 1 1264 1265 1 1266 1286 1 1265 1266 1 1267 1287 1 1266 1267 1 1268 1288 1
		 1267 1268 1 1269 1289 1 1268 1269 1 1270 1290 1 1269 1270 1 1271 1291 1 1270 1271 1
		 1272 1292 1 1271 1272 1 1273 1293 1 1272 1273 1 1274 1294 1 1273 1274 1 1275 1295 1
		 1274 1275 1 1276 1296 1 1275 1276 1 1277 1297 1 1276 1277 1 1278 1298 1 1277 1278 1
		 1279 1299 1 1278 1279 1 1279 1260 1 1280 1225 1 1281 1226 1 1280 1281 1 1282 1227 1
		 1281 1282 1 1283 1228 1 1282 1283 1 1284 1229 1 1283 1284 1 1285 1230 1 1284 1285 1
		 1286 1231 1 1285 1286 1 1287 1232 1 1286 1287 1 1288 1233 1 1287 1288 1 1289 1234 1
		 1288 1289 1 1290 1235 1 1289 1290 1 1291 1236 1 1290 1291 1 1292 1237 1 1291 1292 1
		 1293 1238 1 1292 1293 1 1294 1239 1 1293 1294 1 1295 1220 1 1294 1295 1 1296 1221 1
		 1295 1296 1 1297 1222 1 1296 1297 1 1298 1223 1 1297 1298 1 1299 1224 1 1298 1299 1
		 1299 1280 1 1300 1205 1 1301 1204 1 1300 1301 1 1302 1203 1 1301 1302 1 1303 1202 1
		 1302 1303 1 1304 1201 1 1303 1304 1 1305 1200 1 1304 1305 1 1306 1219 1 1305 1306 1
		 1307 1218 1 1306 1307 1 1308 1217 1 1307 1308 1 1309 1216 1 1308 1309 1 1310 1215 1
		 1309 1310 1 1311 1214 1 1310 1311 1 1312 1213 1 1311 1312 1 1313 1212 1 1312 1313 1
		 1314 1211 1 1313 1314 1 1315 1210 1 1314 1315 1 1316 1209 1 1315 1316 1 1317 1208 1
		 1316 1317 1 1318 1207 1 1317 1318 1 1319 1206 1 1318 1319 1 1319 1300 1 1320 1300 1
		 1321 1301 1 1320 1321 1 1322 1302 1 1321 1322 1 1323 1303 1 1322 1323 1 1324 1304 1
		 1323 1324 1 1325 1305 1 1324 1325 1 1326 1306 1 1325 1326 1 1327 1307 1 1326 1327 1
		 1328 1308 1 1327 1328 1 1329 1309 1 1328 1329 1 1330 1310 1 1329 1330 1 1331 1311 1
		 1330 1331 1 1332 1312 1 1331 1332 1 1333 1313 1 1332 1333 1 1334 1314 1 1333 1334 1
		 1335 1315 1 1334 1335 1 1336 1316 1 1335 1336 1 1337 1317 1 1336 1337 1 1338 1318 1;
	setAttr ".ed[2656:2821]" 1337 1338 1 1339 1319 1 1338 1339 1 1339 1320 1 1340 1320 1
		 1341 1321 1 1340 1341 1 1342 1322 1 1341 1342 1 1343 1323 1 1342 1343 1 1344 1324 1
		 1343 1344 1 1345 1325 1 1344 1345 1 1346 1326 1 1345 1346 1 1347 1327 1 1346 1347 1
		 1348 1328 1 1347 1348 1 1349 1329 1 1348 1349 1 1350 1330 1 1349 1350 1 1351 1331 1
		 1350 1351 1 1352 1332 1 1351 1352 1 1353 1333 1 1352 1353 1 1354 1334 1 1353 1354 1
		 1355 1335 1 1354 1355 1 1356 1336 1 1355 1356 1 1357 1337 1 1356 1357 1 1358 1338 1
		 1357 1358 1 1359 1339 1 1358 1359 1 1359 1340 1 1360 1340 1 1361 1341 1 1360 1361 1
		 1362 1342 1 1361 1362 1 1363 1343 1 1362 1363 1 1364 1344 1 1363 1364 1 1365 1345 1
		 1364 1365 1 1366 1346 1 1365 1366 1 1367 1347 1 1366 1367 1 1368 1348 1 1367 1368 1
		 1369 1349 1 1368 1369 1 1370 1350 1 1369 1370 1 1371 1351 1 1370 1371 1 1372 1352 1
		 1371 1372 1 1373 1353 1 1372 1373 1 1374 1354 1 1373 1374 1 1375 1355 1 1374 1375 1
		 1376 1356 1 1375 1376 1 1377 1357 1 1376 1377 1 1378 1358 1 1377 1378 1 1379 1359 1
		 1378 1379 1 1379 1360 1 1380 1360 1 1381 1361 1 1380 1381 1 1382 1362 1 1381 1382 1
		 1383 1363 1 1382 1383 1 1384 1364 1 1383 1384 1 1385 1365 1 1384 1385 1 1386 1366 1
		 1385 1386 1 1387 1367 1 1386 1387 1 1388 1368 1 1387 1388 1 1389 1369 1 1388 1389 1
		 1390 1370 1 1389 1390 1 1391 1371 1 1390 1391 1 1392 1372 1 1391 1392 1 1393 1373 1
		 1392 1393 1 1394 1374 1 1393 1394 1 1395 1375 1 1394 1395 1 1396 1376 1 1395 1396 1
		 1397 1377 1 1396 1397 1 1398 1378 1 1397 1398 1 1399 1379 1 1398 1399 1 1399 1380 1
		 1400 1422 1 1401 1423 1 1400 1401 1 1402 1424 1 1401 1402 1 1403 1425 1 1402 1403 1
		 1404 1426 1 1403 1404 1 1405 1427 1 1404 1405 1 1406 1428 1 1405 1406 1 1407 1429 1
		 1406 1407 1 1408 1430 1 1407 1408 1 1409 1431 1 1408 1409 1 1410 1432 1 1409 1410 1
		 1411 1433 1 1410 1411 1 1412 1434 1 1411 1412 1 1413 1435 1 1412 1413 1 1414 1436 1
		 1413 1414 1 1415 1437 1 1414 1415 1 1416 1438 1 1415 1416 1 1417 1439 1 1416 1417 1
		 1418 1420 1 1417 1418 1 1419 1421 1 1418 1419 1 1419 1400 1 1420 1398 1 1421 1399 1;
	setAttr ".ed[2822:2987]" 1420 1421 1 1422 1380 1 1421 1422 1 1423 1381 1 1422 1423 1
		 1424 1382 1 1423 1424 1 1425 1383 1 1424 1425 1 1426 1384 1 1425 1426 1 1427 1385 1
		 1426 1427 1 1428 1386 1 1427 1428 1 1429 1387 1 1428 1429 1 1430 1388 1 1429 1430 1
		 1431 1389 1 1430 1431 1 1432 1390 1 1431 1432 1 1433 1391 1 1432 1433 1 1434 1392 1
		 1433 1434 1 1435 1393 1 1434 1435 1 1436 1394 1 1435 1436 1 1437 1395 1 1436 1437 1
		 1438 1396 1 1437 1438 1 1439 1397 1 1438 1439 1 1439 1420 1 1440 1419 1 1441 1400 1
		 1440 1441 1 1442 1401 1 1441 1442 1 1443 1402 1 1442 1443 1 1444 1403 1 1443 1444 1
		 1445 1404 1 1444 1445 1 1446 1405 1 1445 1446 1 1447 1406 1 1446 1447 1 1448 1407 1
		 1447 1448 1 1449 1408 1 1448 1449 1 1450 1409 1 1449 1450 1 1451 1410 1 1450 1451 1
		 1452 1411 1 1451 1452 1 1453 1412 1 1452 1453 1 1454 1413 1 1453 1454 1 1455 1414 1
		 1454 1455 1 1456 1415 1 1455 1456 1 1457 1416 1 1456 1457 1 1458 1417 1 1457 1458 1
		 1459 1418 1 1458 1459 1 1459 1440 1 1460 1461 1 1461 1462 1 1462 1463 1 1463 1464 1
		 1464 1465 1 1465 1466 1 1466 1467 1 1467 1468 1 1468 1469 1 1469 1470 1 1470 1471 1
		 1471 1472 1 1472 1473 1 1473 1474 1 1474 1460 1 1475 1476 1 1476 1477 1 1477 1478 1
		 1478 1479 1 1479 1480 1 1480 1481 1 1481 1482 1 1482 1483 1 1483 1484 1 1484 1485 1
		 1485 1486 1 1486 1487 1 1487 1488 1 1488 1489 1 1489 1475 1 1490 1491 1 1491 1492 1
		 1492 1493 1 1493 1494 1 1494 1495 1 1495 1496 1 1496 1497 1 1497 1498 1 1498 1499 1
		 1499 1500 1 1500 1501 1 1501 1502 1 1502 1503 1 1503 1504 1 1504 1490 1 1505 1506 1
		 1506 1507 1 1507 1508 1 1508 1509 1 1509 1510 1 1510 1511 1 1511 1512 1 1512 1513 1
		 1513 1514 1 1514 1515 1 1515 1516 1 1516 1517 1 1517 1518 1 1518 1519 1 1519 1505 1
		 1520 1521 1 1521 1522 1 1522 1523 1 1523 1524 1 1524 1525 1 1525 1526 1 1526 1527 1
		 1527 1528 1 1528 1529 1 1529 1530 1 1530 1531 1 1531 1532 1 1532 1533 1 1533 1534 1
		 1534 1520 1 1535 1536 1 1536 1537 1 1537 1538 1 1538 1539 1 1539 1540 1 1540 1541 1
		 1541 1542 1 1542 1543 1 1543 1544 1 1544 1545 1 1545 1546 1 1546 1547 1 1547 1548 1;
	setAttr ".ed[2988:3153]" 1548 1549 1 1549 1535 1 1550 1551 1 1551 1552 1 1552 1553 1
		 1553 1554 1 1554 1555 1 1555 1556 1 1556 1557 1 1557 1558 1 1558 1559 1 1559 1560 1
		 1560 1561 1 1561 1562 1 1562 1563 1 1563 1564 1 1564 1550 1 1565 1566 1 1566 1567 1
		 1567 1568 1 1568 1569 1 1569 1570 1 1570 1571 1 1571 1572 1 1572 1573 1 1573 1574 1
		 1574 1575 1 1575 1576 1 1576 1577 1 1577 1578 1 1578 1579 1 1579 1565 1 1580 1581 1
		 1581 1582 1 1582 1583 1 1583 1584 1 1584 1585 1 1585 1586 1 1586 1587 1 1587 1588 1
		 1588 1589 1 1589 1590 1 1590 1591 1 1591 1592 1 1592 1593 1 1593 1594 1 1594 1580 1
		 1595 1596 1 1596 1597 1 1597 1598 1 1598 1599 1 1599 1600 1 1600 1601 1 1601 1602 1
		 1602 1603 1 1603 1604 1 1604 1605 1 1605 1606 1 1606 1607 1 1607 1608 1 1608 1609 1
		 1609 1595 1 1610 1611 1 1611 1612 1 1612 1613 1 1613 1614 1 1614 1615 1 1615 1616 1
		 1616 1617 1 1617 1618 1 1618 1619 1 1619 1620 1 1620 1621 1 1621 1622 1 1622 1623 1
		 1623 1624 1 1624 1610 1 1625 1626 1 1626 1627 1 1627 1628 1 1628 1629 1 1629 1630 1
		 1630 1631 1 1631 1632 1 1632 1633 1 1633 1634 1 1634 1635 1 1635 1636 1 1636 1637 1
		 1637 1638 1 1638 1639 1 1639 1625 1 1640 1641 1 1641 1642 1 1642 1643 1 1643 1644 1
		 1644 1645 1 1645 1646 1 1646 1647 1 1647 1648 1 1648 1649 1 1649 1650 1 1650 1651 1
		 1651 1652 1 1652 1653 1 1653 1654 1 1654 1640 1 1655 1656 1 1656 1657 1 1657 1658 1
		 1658 1659 1 1659 1660 1 1660 1661 1 1661 1662 1 1662 1663 1 1663 1664 1 1664 1665 1
		 1665 1666 1 1666 1667 1 1667 1668 1 1668 1669 1 1669 1655 1 1460 1475 1 1461 1476 1
		 1462 1477 1 1463 1478 1 1464 1479 1 1465 1480 1 1466 1481 1 1467 1482 1 1468 1483 1
		 1469 1484 1 1470 1485 1 1471 1486 1 1472 1487 1 1473 1488 1 1474 1489 1 1475 1490 1
		 1476 1491 1 1477 1492 1 1478 1493 1 1479 1494 1 1480 1495 1 1481 1496 1 1482 1497 1
		 1483 1498 1 1484 1499 1 1485 1500 1 1486 1501 1 1487 1502 1 1488 1503 1 1489 1504 1
		 1490 1505 1 1491 1506 1 1492 1507 1 1493 1508 1 1494 1509 1 1495 1510 1 1496 1511 1
		 1497 1512 1 1498 1513 1 1499 1514 1 1500 1515 1 1501 1516 1 1502 1517 1 1503 1518 1;
	setAttr ".ed[3154:3319]" 1504 1519 1 1505 1520 1 1506 1521 1 1507 1522 1 1508 1523 1
		 1509 1524 1 1510 1525 1 1511 1526 1 1512 1527 1 1513 1528 1 1514 1529 1 1515 1530 1
		 1516 1531 1 1517 1532 1 1518 1533 1 1519 1534 1 1520 1535 1 1521 1536 1 1522 1537 1
		 1523 1538 1 1524 1539 1 1525 1540 1 1526 1541 1 1527 1542 1 1528 1543 1 1529 1544 1
		 1530 1545 1 1531 1546 1 1532 1547 1 1533 1548 1 1534 1549 1 1535 1550 1 1536 1551 1
		 1537 1552 1 1538 1553 1 1539 1554 1 1540 1555 1 1541 1556 1 1542 1557 1 1543 1558 1
		 1544 1559 1 1545 1560 1 1546 1561 1 1547 1562 1 1548 1563 1 1549 1564 1 1550 1565 1
		 1551 1566 1 1552 1567 1 1553 1568 1 1554 1569 1 1555 1570 1 1556 1571 1 1557 1572 1
		 1558 1573 1 1559 1574 1 1560 1575 1 1561 1576 1 1562 1577 1 1563 1578 1 1564 1579 1
		 1565 1580 1 1566 1581 1 1567 1582 1 1568 1583 1 1569 1584 1 1570 1585 1 1571 1586 1
		 1572 1587 1 1573 1588 1 1574 1589 1 1575 1590 1 1576 1591 1 1577 1592 1 1578 1593 1
		 1579 1594 1 1580 1595 1 1581 1596 1 1582 1597 1 1583 1598 1 1584 1599 1 1585 1600 1
		 1586 1601 1 1587 1602 1 1588 1603 1 1589 1604 1 1590 1605 1 1591 1606 1 1592 1607 1
		 1593 1608 1 1594 1609 1 1595 1610 1 1596 1611 1 1597 1612 1 1598 1613 1 1599 1614 1
		 1600 1615 1 1601 1616 1 1602 1617 1 1603 1618 1 1604 1619 1 1605 1620 1 1606 1621 1
		 1607 1622 1 1608 1623 1 1609 1624 1 1610 1625 1 1611 1626 1 1612 1627 1 1613 1628 1
		 1614 1629 1 1615 1630 1 1616 1631 1 1617 1632 1 1618 1633 1 1619 1634 1 1620 1635 1
		 1621 1636 1 1622 1637 1 1623 1638 1 1624 1639 1 1625 1640 1 1626 1641 1 1627 1642 1
		 1628 1643 1 1629 1644 1 1630 1645 1 1631 1646 1 1632 1647 1 1633 1648 1 1634 1649 1
		 1635 1650 1 1636 1651 1 1637 1652 1 1638 1653 1 1639 1654 1 1640 1655 1 1641 1656 1
		 1642 1657 1 1643 1658 1 1644 1659 1 1645 1660 1 1646 1661 1 1647 1662 1 1648 1663 1
		 1649 1664 1 1650 1665 1 1651 1666 1 1652 1667 1 1653 1668 1 1654 1669 1 1670 1460 1
		 1670 1461 1 1670 1462 1 1670 1463 1 1670 1464 1 1670 1465 1 1670 1466 1 1670 1467 1
		 1670 1468 1 1670 1469 1 1670 1470 1 1670 1471 1 1670 1472 1 1670 1473 1 1670 1474 1;
	setAttr ".ed[3320:3485]" 1655 1671 1 1656 1671 1 1657 1671 1 1658 1671 1 1659 1671 1
		 1660 1671 1 1661 1671 1 1662 1671 1 1663 1671 1 1664 1671 1 1665 1671 1 1666 1671 1
		 1667 1671 1 1668 1671 1 1669 1671 1 1672 1673 1 1673 1674 1 1674 1675 1 1675 1676 1
		 1676 1677 1 1677 1678 1 1678 1679 1 1679 1680 1 1680 1681 1 1681 1682 1 1682 1683 1
		 1683 1684 1 1684 1685 1 1685 1686 1 1686 1672 1 1687 1688 1 1688 1689 1 1689 1690 1
		 1690 1691 1 1691 1692 1 1692 1693 1 1693 1694 1 1694 1695 1 1695 1696 1 1696 1697 1
		 1697 1698 1 1698 1699 1 1699 1700 1 1700 1701 1 1701 1687 1 1702 1703 1 1703 1704 1
		 1704 1705 1 1705 1706 1 1706 1707 1 1707 1708 1 1708 1709 1 1709 1710 1 1710 1711 1
		 1711 1712 1 1712 1713 1 1713 1714 1 1714 1715 1 1715 1716 1 1716 1702 1 1717 1718 1
		 1718 1719 1 1719 1720 1 1720 1721 1 1721 1722 1 1722 1723 1 1723 1724 1 1724 1725 1
		 1725 1726 1 1726 1727 1 1727 1728 1 1728 1729 1 1729 1730 1 1730 1731 1 1731 1717 1
		 1732 1733 1 1733 1734 1 1734 1735 1 1735 1736 1 1736 1737 1 1737 1738 1 1738 1739 1
		 1739 1740 1 1740 1741 1 1741 1742 1 1742 1743 1 1743 1744 1 1744 1745 1 1745 1746 1
		 1746 1732 1 1747 1748 1 1748 1749 1 1749 1750 1 1750 1751 1 1751 1752 1 1752 1753 1
		 1753 1754 1 1754 1755 1 1755 1756 1 1756 1757 1 1757 1758 1 1758 1759 1 1759 1760 1
		 1760 1761 1 1761 1747 1 1762 1763 1 1763 1764 1 1764 1765 1 1765 1766 1 1766 1767 1
		 1767 1768 1 1768 1769 1 1769 1770 1 1770 1771 1 1771 1772 1 1772 1773 1 1773 1774 1
		 1774 1775 1 1775 1776 1 1776 1762 1 1777 1778 1 1778 1779 1 1779 1780 1 1780 1781 1
		 1781 1782 1 1782 1783 1 1783 1784 1 1784 1785 1 1785 1786 1 1786 1787 1 1787 1788 1
		 1788 1789 1 1789 1790 1 1790 1791 1 1791 1777 1 1792 1793 1 1793 1794 1 1794 1795 1
		 1795 1796 1 1796 1797 1 1797 1798 1 1798 1799 1 1799 1800 1 1800 1801 1 1801 1802 1
		 1802 1803 1 1803 1804 1 1804 1805 1 1805 1806 1 1806 1792 1 1807 1808 1 1808 1809 1
		 1809 1810 1 1810 1811 1 1811 1812 1 1812 1813 1 1813 1814 1 1814 1815 1 1815 1816 1
		 1816 1817 1 1817 1818 1 1818 1819 1 1819 1820 1 1820 1821 1 1821 1807 1 1822 1823 1;
	setAttr ".ed[3486:3651]" 1823 1824 1 1824 1825 1 1825 1826 1 1826 1827 1 1827 1828 1
		 1828 1829 1 1829 1830 1 1830 1831 1 1831 1832 1 1832 1833 1 1833 1834 1 1834 1835 1
		 1835 1836 1 1836 1822 1 1837 1838 1 1838 1839 1 1839 1840 1 1840 1841 1 1841 1842 1
		 1842 1843 1 1843 1844 1 1844 1845 1 1845 1846 1 1846 1847 1 1847 1848 1 1848 1849 1
		 1849 1850 1 1850 1851 1 1851 1837 1 1852 1853 1 1853 1854 1 1854 1855 1 1855 1856 1
		 1856 1857 1 1857 1858 1 1858 1859 1 1859 1860 1 1860 1861 1 1861 1862 1 1862 1863 1
		 1863 1864 1 1864 1865 1 1865 1866 1 1866 1852 1 1867 1868 1 1868 1869 1 1869 1870 1
		 1870 1871 1 1871 1872 1 1872 1873 1 1873 1874 1 1874 1875 1 1875 1876 1 1876 1877 1
		 1877 1878 1 1878 1879 1 1879 1880 1 1880 1881 1 1881 1867 1 1672 1687 1 1673 1688 1
		 1674 1689 1 1675 1690 1 1676 1691 1 1677 1692 1 1678 1693 1 1679 1694 1 1680 1695 1
		 1681 1696 1 1682 1697 1 1683 1698 1 1684 1699 1 1685 1700 1 1686 1701 1 1687 1702 1
		 1688 1703 1 1689 1704 1 1690 1705 1 1691 1706 1 1692 1707 1 1693 1708 1 1694 1709 1
		 1695 1710 1 1696 1711 1 1697 1712 1 1698 1713 1 1699 1714 1 1700 1715 1 1701 1716 1
		 1702 1717 1 1703 1718 1 1704 1719 1 1705 1720 1 1706 1721 1 1707 1722 1 1708 1723 1
		 1709 1724 1 1710 1725 1 1711 1726 1 1712 1727 1 1713 1728 1 1714 1729 1 1715 1730 1
		 1716 1731 1 1717 1732 1 1718 1733 1 1719 1734 1 1720 1735 1 1721 1736 1 1722 1737 1
		 1723 1738 1 1724 1739 1 1725 1740 1 1726 1741 1 1727 1742 1 1728 1743 1 1729 1744 1
		 1730 1745 1 1731 1746 1 1732 1747 1 1733 1748 1 1734 1749 1 1735 1750 1 1736 1751 1
		 1737 1752 1 1738 1753 1 1739 1754 1 1740 1755 1 1741 1756 1 1742 1757 1 1743 1758 1
		 1744 1759 1 1745 1760 1 1746 1761 1 1747 1762 1 1748 1763 1 1749 1764 1 1750 1765 1
		 1751 1766 1 1752 1767 1 1753 1768 1 1754 1769 1 1755 1770 1 1756 1771 1 1757 1772 1
		 1758 1773 1 1759 1774 1 1760 1775 1 1761 1776 1 1762 1777 1 1763 1778 1 1764 1779 1
		 1765 1780 1 1766 1781 1 1767 1782 1 1768 1783 1 1769 1784 1 1770 1785 1 1771 1786 1
		 1772 1787 1 1773 1788 1 1774 1789 1 1775 1790 1 1776 1791 1 1777 1792 1 1778 1793 1;
	setAttr ".ed[3652:3817]" 1779 1794 1 1780 1795 1 1781 1796 1 1782 1797 1 1783 1798 1
		 1784 1799 1 1785 1800 1 1786 1801 1 1787 1802 1 1788 1803 1 1789 1804 1 1790 1805 1
		 1791 1806 1 1792 1807 1 1793 1808 1 1794 1809 1 1795 1810 1 1796 1811 1 1797 1812 1
		 1798 1813 1 1799 1814 1 1800 1815 1 1801 1816 1 1802 1817 1 1803 1818 1 1804 1819 1
		 1805 1820 1 1806 1821 1 1807 1822 1 1808 1823 1 1809 1824 1 1810 1825 1 1811 1826 1
		 1812 1827 1 1813 1828 1 1814 1829 1 1815 1830 1 1816 1831 1 1817 1832 1 1818 1833 1
		 1819 1834 1 1820 1835 1 1821 1836 1 1822 1837 1 1823 1838 1 1824 1839 1 1825 1840 1
		 1826 1841 1 1827 1842 1 1828 1843 1 1829 1844 1 1830 1845 1 1831 1846 1 1832 1847 1
		 1833 1848 1 1834 1849 1 1835 1850 1 1836 1851 1 1837 1852 1 1838 1853 1 1839 1854 1
		 1840 1855 1 1841 1856 1 1842 1857 1 1843 1858 1 1844 1859 1 1845 1860 1 1846 1861 1
		 1847 1862 1 1848 1863 1 1849 1864 1 1850 1865 1 1851 1866 1 1852 1867 1 1853 1868 1
		 1854 1869 1 1855 1870 1 1856 1871 1 1857 1872 1 1858 1873 1 1859 1874 1 1860 1875 1
		 1861 1876 1 1862 1877 1 1863 1878 1 1864 1879 1 1865 1880 1 1866 1881 1 1882 1672 1
		 1882 1673 1 1882 1674 1 1882 1675 1 1882 1676 1 1882 1677 1 1882 1678 1 1882 1679 1
		 1882 1680 1 1882 1681 1 1882 1682 1 1882 1683 1 1882 1684 1 1882 1685 1 1882 1686 1
		 1867 1883 1 1868 1883 1 1869 1883 1 1870 1883 1 1871 1883 1 1872 1883 1 1873 1883 1
		 1874 1883 1 1875 1883 1 1876 1883 1 1877 1883 1 1878 1883 1 1879 1883 1 1880 1883 1
		 1881 1883 1 1884 1885 1 1885 1886 1 1886 1887 1 1887 1888 1 1888 1889 1 1889 1890 1
		 1890 1891 1 1891 1892 1 1892 1893 1 1893 1894 1 1894 1895 1 1895 1896 1 1896 1897 1
		 1897 1898 1 1898 1899 1 1899 1900 1 1900 1901 1 1901 1902 1 1902 1903 1 1903 1884 1
		 1904 1905 1 1905 1906 1 1906 1907 1 1907 1908 1 1908 1909 1 1909 1910 1 1910 1911 1
		 1911 1912 1 1912 1913 1 1913 1914 1 1914 1915 1 1915 1916 1 1916 1917 1 1917 1918 1
		 1918 1919 1 1919 1920 1 1920 1921 1 1921 1922 1 1922 1923 1 1923 1904 1 1924 1925 1
		 1925 1926 1 1926 1927 1 1927 1928 1 1928 1929 1 1929 1930 1 1930 1931 1 1931 1932 1;
	setAttr ".ed[3818:3983]" 1932 1933 1 1933 1934 1 1934 1935 1 1935 1936 1 1936 1937 1
		 1937 1938 1 1938 1939 1 1939 1940 1 1940 1941 1 1941 1942 1 1942 1943 1 1943 1924 1
		 1944 1945 1 1945 1946 1 1946 1947 1 1947 1948 1 1948 1949 1 1949 1950 1 1950 1951 1
		 1951 1952 1 1952 1953 1 1953 1954 1 1954 1955 1 1955 1956 1 1956 1957 1 1957 1958 1
		 1958 1959 1 1959 1960 1 1960 1961 1 1961 1962 1 1962 1963 1 1963 1944 1 1964 1965 1
		 1965 1966 1 1966 1967 1 1967 1968 1 1968 1969 1 1969 1970 1 1970 1971 1 1971 1972 1
		 1972 1973 1 1973 1974 1 1974 1975 1 1975 1976 1 1976 1977 1 1977 1978 1 1978 1979 1
		 1979 1980 1 1980 1981 1 1981 1982 1 1982 1983 1 1983 1964 1 1984 1985 1 1985 1986 1
		 1986 1987 1 1987 1988 1 1988 1989 1 1989 1990 1 1990 1991 1 1991 1992 1 1992 1993 1
		 1993 1994 1 1994 1995 1 1995 1996 1 1996 1997 1 1997 1998 1 1998 1999 1 1999 2000 1
		 2000 2001 1 2001 2002 1 2002 2003 1 2003 1984 1 2004 2005 1 2005 2006 1 2006 2007 1
		 2007 2008 1 2008 2009 1 2009 2010 1 2010 2011 1 2011 2012 1 2012 2013 1 2013 2014 1
		 2014 2015 1 2015 2016 1 2016 2017 1 2017 2018 1 2018 2019 1 2019 2020 1 2020 2021 1
		 2021 2022 1 2022 2023 1 2023 2004 1 2024 2025 1 2025 2026 1 2026 2027 1 2027 2028 1
		 2028 2029 1 2029 2030 1 2030 2031 1 2031 2032 1 2032 2033 1 2033 2034 1 2034 2035 1
		 2035 2036 1 2036 2037 1 2037 2038 1 2038 2039 1 2039 2040 1 2040 2041 1 2041 2042 1
		 2042 2043 1 2043 2024 1 2044 2045 1 2045 2046 1 2046 2047 1 2047 2048 1 2048 2049 1
		 2049 2050 1 2050 2051 1 2051 2052 1 2052 2053 1 2053 2054 1 2054 2055 1 2055 2056 1
		 2056 2057 1 2057 2058 1 2058 2059 1 2059 2060 1 2060 2061 1 2061 2062 1 2062 2063 1
		 2063 2044 1 2064 2065 1 2065 2066 1 2066 2067 1 2067 2068 1 2068 2069 1 2069 2070 1
		 2070 2071 1 2071 2072 1 2072 2073 1 2073 2074 1 2074 2075 1 2075 2076 1 2076 2077 1
		 2077 2078 1 2078 2079 1 2079 2080 1 2080 2081 1 2081 2082 1 2082 2083 1 2083 2064 1
		 2084 2085 1 2085 2086 1 2086 2087 1 2087 2088 1 2088 2089 1 2089 2090 1 2090 2091 1
		 2091 2092 1 2092 2093 1 2093 2094 1 2094 2095 1 2095 2096 1 2096 2097 1 2097 2098 1;
	setAttr ".ed[3984:4149]" 2098 2099 1 2099 2100 1 2100 2101 1 2101 2102 1 2102 2103 1
		 2103 2084 1 2104 2105 1 2105 2106 1 2106 2107 1 2107 2108 1 2108 2109 1 2109 2110 1
		 2110 2111 1 2111 2112 1 2112 2113 1 2113 2114 1 2114 2115 1 2115 2116 1 2116 2117 1
		 2117 2118 1 2118 2119 1 2119 2120 1 2120 2121 1 2121 2122 1 2122 2123 1 2123 2104 1
		 2124 2125 1 2125 2126 1 2126 2127 1 2127 2128 1 2128 2129 1 2129 2130 1 2130 2131 1
		 2131 2132 1 2132 2133 1 2133 2134 1 2134 2135 1 2135 2136 1 2136 2137 1 2137 2138 1
		 2138 2139 1 2139 2140 1 2140 2141 1 2141 2142 1 2142 2143 1 2143 2124 1 2144 2145 1
		 2145 2146 1 2146 2147 1 2147 2148 1 2148 2149 1 2149 2150 1 2150 2151 1 2151 2152 1
		 2152 2153 1 2153 2154 1 2154 2155 1 2155 2156 1 2156 2157 1 2157 2158 1 2158 2159 1
		 2159 2160 1 2160 2161 1 2161 2162 1 2162 2163 1 2163 2144 1 2164 2165 1 2165 2166 1
		 2166 2167 1 2167 2168 1 2168 2169 1 2169 2170 1 2170 2171 1 2171 2172 1 2172 2173 1
		 2173 2174 1 2174 2175 1 2175 2176 1 2176 2177 1 2177 2178 1 2178 2179 1 2179 2180 1
		 2180 2181 1 2181 2182 1 2182 2183 1 2183 2164 1 2184 2185 1 2185 2186 1 2186 2187 1
		 2187 2188 1 2188 2189 1 2189 2190 1 2190 2191 1 2191 2192 1 2192 2193 1 2193 2194 1
		 2194 2195 1 2195 2196 1 2196 2197 1 2197 2198 1 2198 2199 1 2199 2200 1 2200 2201 1
		 2201 2202 1 2202 2203 1 2203 2184 1 2204 2205 1 2205 2206 1 2206 2207 1 2207 2208 1
		 2208 2209 1 2209 2210 1 2210 2211 1 2211 2212 1 2212 2213 1 2213 2214 1 2214 2215 1
		 2215 2216 1 2216 2217 1 2217 2218 1 2218 2219 1 2219 2220 1 2220 2221 1 2221 2222 1
		 2222 2223 1 2223 2204 1 2224 2225 1 2225 2226 1 2226 2227 1 2227 2228 1 2228 2229 1
		 2229 2230 1 2230 2231 1 2231 2232 1 2232 2233 1 2233 2234 1 2234 2235 1 2235 2236 1
		 2236 2237 1 2237 2238 1 2238 2239 1 2239 2240 1 2240 2241 1 2241 2242 1 2242 2243 1
		 2243 2224 1 2244 2245 1 2245 2246 1 2246 2247 1 2247 2248 1 2248 2249 1 2249 2250 1
		 2250 2251 1 2251 2252 1 2252 2253 1 2253 2254 1 2254 2255 1 2255 2256 1 2256 2257 1
		 2257 2258 1 2258 2259 1 2259 2260 1 2260 2261 1 2261 2262 1 2262 2263 1 2263 2244 1;
	setAttr ".ed[4150:4315]" 1884 1904 1 1885 1905 1 1886 1906 1 1887 1907 1 1888 1908 1
		 1889 1909 1 1890 1910 1 1891 1911 1 1892 1912 1 1893 1913 1 1894 1914 1 1895 1915 1
		 1896 1916 1 1897 1917 1 1898 1918 1 1899 1919 1 1900 1920 1 1901 1921 1 1902 1922 1
		 1903 1923 1 1904 1924 1 1905 1925 1 1906 1926 1 1907 1927 1 1908 1928 1 1909 1929 1
		 1910 1930 1 1911 1931 1 1912 1932 1 1913 1933 1 1914 1934 1 1915 1935 1 1916 1936 1
		 1917 1937 1 1918 1938 1 1919 1939 1 1920 1940 1 1921 1941 1 1922 1942 1 1923 1943 1
		 1924 1944 1 1925 1945 1 1926 1946 1 1927 1947 1 1928 1948 1 1929 1949 1 1930 1950 1
		 1931 1951 1 1932 1952 1 1933 1953 1 1934 1954 1 1935 1955 1 1936 1956 1 1937 1957 1
		 1938 1958 1 1939 1959 1 1940 1960 1 1941 1961 1 1942 1962 1 1943 1963 1 1944 1964 1
		 1945 1965 1 1946 1966 1 1947 1967 1 1948 1968 1 1949 1969 1 1950 1970 1 1951 1971 1
		 1952 1972 1 1953 1973 1 1954 1974 1 1955 1975 1 1956 1976 1 1957 1977 1 1958 1978 1
		 1959 1979 1 1960 1980 1 1961 1981 1 1962 1982 1 1963 1983 1 1964 1984 1 1965 1985 1
		 1966 1986 1 1967 1987 1 1968 1988 1 1969 1989 1 1970 1990 1 1971 1991 1 1972 1992 1
		 1973 1993 1 1974 1994 1 1975 1995 1 1976 1996 1 1977 1997 1 1978 1998 1 1979 1999 1
		 1980 2000 1 1981 2001 1 1982 2002 1 1983 2003 1 1984 2004 1 1985 2005 1 1986 2006 1
		 1987 2007 1 1988 2008 1 1989 2009 1 1990 2010 1 1991 2011 1 1992 2012 1 1993 2013 1
		 1994 2014 1 1995 2015 1 1996 2016 1 1997 2017 1 1998 2018 1 1999 2019 1 2000 2020 1
		 2001 2021 1 2002 2022 1 2003 2023 1 2004 2024 1 2005 2025 1 2006 2026 1 2007 2027 1
		 2008 2028 1 2009 2029 1 2010 2030 1 2011 2031 1 2012 2032 1 2013 2033 1 2014 2034 1
		 2015 2035 1 2016 2036 1 2017 2037 1 2018 2038 1 2019 2039 1 2020 2040 1 2021 2041 1
		 2022 2042 1 2023 2043 1 2024 2044 1 2025 2045 1 2026 2046 1 2027 2047 1 2028 2048 1
		 2029 2049 1 2030 2050 1 2031 2051 1 2032 2052 1 2033 2053 1 2034 2054 1 2035 2055 1
		 2036 2056 1 2037 2057 1 2038 2058 1 2039 2059 1 2040 2060 1 2041 2061 1 2042 2062 1
		 2043 2063 1 2044 2064 1 2045 2065 1 2046 2066 1 2047 2067 1 2048 2068 1 2049 2069 1;
	setAttr ".ed[4316:4481]" 2050 2070 1 2051 2071 1 2052 2072 1 2053 2073 1 2054 2074 1
		 2055 2075 1 2056 2076 1 2057 2077 1 2058 2078 1 2059 2079 1 2060 2080 1 2061 2081 1
		 2062 2082 1 2063 2083 1 2064 2084 1 2065 2085 1 2066 2086 1 2067 2087 1 2068 2088 1
		 2069 2089 1 2070 2090 1 2071 2091 1 2072 2092 1 2073 2093 1 2074 2094 1 2075 2095 1
		 2076 2096 1 2077 2097 1 2078 2098 1 2079 2099 1 2080 2100 1 2081 2101 1 2082 2102 1
		 2083 2103 1 2084 2104 1 2085 2105 1 2086 2106 1 2087 2107 1 2088 2108 1 2089 2109 1
		 2090 2110 1 2091 2111 1 2092 2112 1 2093 2113 1 2094 2114 1 2095 2115 1 2096 2116 1
		 2097 2117 1 2098 2118 1 2099 2119 1 2100 2120 1 2101 2121 1 2102 2122 1 2103 2123 1
		 2104 2124 1 2105 2125 1 2106 2126 1 2107 2127 1 2108 2128 1 2109 2129 1 2110 2130 1
		 2111 2131 1 2112 2132 1 2113 2133 1 2114 2134 1 2115 2135 1 2116 2136 1 2117 2137 1
		 2118 2138 1 2119 2139 1 2120 2140 1 2121 2141 1 2122 2142 1 2123 2143 1 2124 2144 1
		 2125 2145 1 2126 2146 1 2127 2147 1 2128 2148 1 2129 2149 1 2130 2150 1 2131 2151 1
		 2132 2152 1 2133 2153 1 2134 2154 1 2135 2155 1 2136 2156 1 2137 2157 1 2138 2158 1
		 2139 2159 1 2140 2160 1 2141 2161 1 2142 2162 1 2143 2163 1 2144 2164 1 2145 2165 1
		 2146 2166 1 2147 2167 1 2148 2168 1 2149 2169 1 2150 2170 1 2151 2171 1 2152 2172 1
		 2153 2173 1 2154 2174 1 2155 2175 1 2156 2176 1 2157 2177 1 2158 2178 1 2159 2179 1
		 2160 2180 1 2161 2181 1 2162 2182 1 2163 2183 1 2164 2184 1 2165 2185 1 2166 2186 1
		 2167 2187 1 2168 2188 1 2169 2189 1 2170 2190 1 2171 2191 1 2172 2192 1 2173 2193 1
		 2174 2194 1 2175 2195 1 2176 2196 1 2177 2197 1 2178 2198 1 2179 2199 1 2180 2200 1
		 2181 2201 1 2182 2202 1 2183 2203 1 2184 2204 1 2185 2205 1 2186 2206 1 2187 2207 1
		 2188 2208 1 2189 2209 1 2190 2210 1 2191 2211 1 2192 2212 1 2193 2213 1 2194 2214 1
		 2195 2215 1 2196 2216 1 2197 2217 1 2198 2218 1 2199 2219 1 2200 2220 1 2201 2221 1
		 2202 2222 1 2203 2223 1 2204 2224 1 2205 2225 1 2206 2226 1 2207 2227 1 2208 2228 1
		 2209 2229 1 2210 2230 1 2211 2231 1 2212 2232 1 2213 2233 1 2214 2234 1 2215 2235 1;
	setAttr ".ed[4482:4647]" 2216 2236 1 2217 2237 1 2218 2238 1 2219 2239 1 2220 2240 1
		 2221 2241 1 2222 2242 1 2223 2243 1 2224 2244 1 2225 2245 1 2226 2246 1 2227 2247 1
		 2228 2248 1 2229 2249 1 2230 2250 1 2231 2251 1 2232 2252 1 2233 2253 1 2234 2254 1
		 2235 2255 1 2236 2256 1 2237 2257 1 2238 2258 1 2239 2259 1 2240 2260 1 2241 2261 1
		 2242 2262 1 2243 2263 1 2264 1884 1 2264 1885 1 2264 1886 1 2264 1887 1 2264 1888 1
		 2264 1889 1 2264 1890 1 2264 1891 1 2264 1892 1 2264 1893 1 2264 1894 1 2264 1895 1
		 2264 1896 1 2264 1897 1 2264 1898 1 2264 1899 1 2264 1900 1 2264 1901 1 2264 1902 1
		 2264 1903 1 2244 2265 1 2245 2265 1 2246 2265 1 2247 2265 1 2248 2265 1 2249 2265 1
		 2250 2265 1 2251 2265 1 2252 2265 1 2253 2265 1 2254 2265 1 2255 2265 1 2256 2265 1
		 2257 2265 1 2258 2265 1 2259 2265 1 2260 2265 1 2261 2265 1 2262 2265 1 2263 2265 1
		 2266 2267 0 2267 2268 0 2268 2269 0 2269 2270 0 2270 2271 0 2271 2272 0 2272 2273 0
		 2273 2274 0 2274 2275 0 2275 2276 0 2276 2277 0 2277 2278 0 2278 2279 0 2279 2280 0
		 2280 2281 0 2281 2282 0 2282 2283 0 2283 2284 0 2284 2285 0 2285 2266 0 2286 2287 0
		 2287 2288 0 2288 2289 0 2289 2290 0 2290 2291 0 2291 2292 0 2292 2293 0 2293 2294 0
		 2294 2295 0 2295 2296 0 2296 2297 0 2297 2298 0 2298 2299 0 2299 2300 0 2300 2301 0
		 2301 2302 0 2302 2303 0 2303 2304 0 2304 2305 0 2305 2286 0 2306 2307 1 2307 2308 1
		 2308 2309 1 2309 2310 1 2310 2311 1 2311 2312 1 2312 2313 1 2313 2314 1 2314 2315 1
		 2315 2316 1 2316 2317 1 2317 2318 1 2318 2319 1 2319 2320 1 2320 2321 1 2321 2322 1
		 2322 2323 1 2323 2324 1 2324 2325 1 2325 2306 1 2326 2327 1 2327 2328 1 2328 2329 1
		 2329 2330 1 2330 2331 1 2331 2332 1 2332 2333 1 2333 2334 1 2334 2335 1 2335 2336 1
		 2336 2337 1 2337 2338 1 2338 2339 1 2339 2340 1 2340 2341 1 2341 2342 1 2342 2343 1
		 2343 2344 1 2344 2345 1 2345 2326 1 2346 2347 1 2347 2348 1 2348 2349 1 2349 2350 1
		 2350 2351 1 2351 2352 1 2352 2353 1 2353 2354 1 2354 2355 1 2355 2356 1 2356 2357 1
		 2357 2358 1 2358 2359 1 2359 2360 1 2360 2361 1 2361 2362 1 2362 2363 1 2363 2364 1;
	setAttr ".ed[4648:4813]" 2364 2365 1 2365 2346 1 2366 2367 1 2367 2368 1 2368 2369 1
		 2369 2370 1 2370 2371 1 2371 2372 1 2372 2373 1 2373 2374 1 2374 2375 1 2375 2376 1
		 2376 2377 1 2377 2378 1 2378 2379 1 2379 2380 1 2380 2381 1 2381 2382 1 2382 2383 1
		 2383 2384 1 2384 2385 1 2385 2366 1 2386 2387 1 2387 2388 1 2388 2389 1 2389 2390 1
		 2390 2391 1 2391 2392 1 2392 2393 1 2393 2394 1 2394 2395 1 2395 2396 1 2396 2397 1
		 2397 2398 1 2398 2399 1 2399 2400 1 2400 2401 1 2401 2402 1 2402 2403 1 2403 2404 1
		 2404 2405 1 2405 2386 1 2406 2407 1 2407 2408 1 2408 2409 1 2409 2410 1 2410 2411 1
		 2411 2412 1 2412 2413 1 2413 2414 1 2414 2415 1 2415 2416 1 2416 2417 1 2417 2418 1
		 2418 2419 1 2419 2420 1 2420 2421 1 2421 2422 1 2422 2423 1 2423 2424 1 2424 2425 1
		 2425 2406 1 2426 2427 1 2427 2428 1 2428 2429 1 2429 2430 1 2430 2431 1 2431 2432 1
		 2432 2433 1 2433 2434 1 2434 2435 1 2435 2436 1 2436 2437 1 2437 2438 1 2438 2439 1
		 2439 2440 1 2440 2441 1 2441 2442 1 2442 2443 1 2443 2444 1 2444 2445 1 2445 2426 1
		 2446 2447 1 2447 2448 1 2448 2449 1 2449 2450 1 2450 2451 1 2451 2452 1 2452 2453 1
		 2453 2454 1 2454 2455 1 2455 2456 1 2456 2457 1 2457 2458 1 2458 2459 1 2459 2460 1
		 2460 2461 1 2461 2462 1 2462 2463 1 2463 2464 1 2464 2465 1 2465 2446 1 2466 2467 1
		 2467 2468 1 2468 2469 1 2469 2470 1 2470 2471 1 2471 2472 1 2472 2473 1 2473 2474 1
		 2474 2475 1 2475 2476 1 2476 2477 1 2477 2478 1 2478 2479 1 2479 2480 1 2480 2481 1
		 2481 2482 1 2482 2483 1 2483 2484 1 2484 2485 1 2485 2466 1 2266 2286 1 2267 2287 1
		 2268 2288 1 2269 2289 1 2270 2290 1 2271 2291 1 2272 2292 1 2273 2293 1 2274 2294 1
		 2275 2295 1 2276 2296 1 2277 2297 1 2278 2298 1 2279 2299 1 2280 2300 1 2281 2301 1
		 2282 2302 1 2283 2303 1 2284 2304 1 2285 2305 1 2286 2306 1 2287 2307 1 2288 2308 1
		 2289 2309 1 2290 2310 1 2291 2311 1 2292 2312 1 2293 2313 1 2294 2314 1 2295 2315 1
		 2296 2316 1 2297 2317 1 2298 2318 1 2299 2319 1 2300 2320 1 2301 2321 1 2302 2322 1
		 2303 2323 1 2304 2324 1 2305 2325 1 2306 2326 1 2307 2327 1 2308 2328 1 2309 2329 1;
	setAttr ".ed[4814:4979]" 2310 2330 1 2311 2331 1 2312 2332 1 2313 2333 1 2314 2334 1
		 2315 2335 1 2316 2336 1 2317 2337 1 2318 2338 1 2319 2339 1 2320 2340 1 2321 2341 1
		 2322 2342 1 2323 2343 1 2324 2344 1 2325 2345 1 2326 2346 1 2327 2347 1 2328 2348 1
		 2329 2349 1 2330 2350 1 2331 2351 1 2332 2352 1 2333 2353 1 2334 2354 1 2335 2355 1
		 2336 2356 1 2337 2357 1 2338 2358 1 2339 2359 1 2340 2360 1 2341 2361 1 2342 2362 1
		 2343 2363 1 2344 2364 1 2345 2365 1 2346 2366 1 2347 2367 1 2348 2368 1 2349 2369 1
		 2350 2370 1 2351 2371 1 2352 2372 1 2353 2373 1 2354 2374 1 2355 2375 1 2356 2376 1
		 2357 2377 1 2358 2378 1 2359 2379 1 2360 2380 1 2361 2381 1 2362 2382 1 2363 2383 1
		 2364 2384 1 2365 2385 1 2366 2386 1 2367 2387 1 2368 2388 1 2369 2389 1 2370 2390 1
		 2371 2391 1 2372 2392 1 2373 2393 1 2374 2394 1 2375 2395 1 2376 2396 1 2377 2397 1
		 2378 2398 1 2379 2399 1 2380 2400 1 2381 2401 1 2382 2402 1 2383 2403 1 2384 2404 1
		 2385 2405 1 2386 2406 1 2387 2407 1 2388 2408 1 2389 2409 1 2390 2410 1 2391 2411 1
		 2392 2412 1 2393 2413 1 2394 2414 1 2395 2415 1 2396 2416 1 2397 2417 1 2398 2418 1
		 2399 2419 1 2400 2420 1 2401 2421 1 2402 2422 1 2403 2423 1 2404 2424 1 2405 2425 1
		 2406 2426 1 2407 2427 1 2408 2428 1 2409 2429 1 2410 2430 1 2411 2431 1 2412 2432 1
		 2413 2433 1 2414 2434 1 2415 2435 1 2416 2436 1 2417 2437 1 2418 2438 1 2419 2439 1
		 2420 2440 1 2421 2441 1 2422 2442 1 2423 2443 1 2424 2444 1 2425 2445 1 2426 2446 1
		 2427 2447 1 2428 2448 1 2429 2449 1 2430 2450 1 2431 2451 1 2432 2452 1 2433 2453 1
		 2434 2454 1 2435 2455 1 2436 2456 1 2437 2457 1 2438 2458 1 2439 2459 1 2440 2460 1
		 2441 2461 1 2442 2462 1 2443 2463 1 2444 2464 1 2445 2465 1 2446 2466 1 2447 2467 1
		 2448 2468 1 2449 2469 1 2450 2470 1 2451 2471 1 2452 2472 1 2453 2473 1 2454 2474 1
		 2455 2475 1 2456 2476 1 2457 2477 1 2458 2478 1 2459 2479 1 2460 2480 1 2461 2481 1
		 2462 2482 1 2463 2483 1 2464 2484 1 2465 2485 1 2466 2486 1 2467 2486 1 2468 2486 1
		 2469 2486 1 2470 2486 1 2471 2486 1 2472 2486 1 2473 2486 1 2474 2486 1 2475 2486 1;
	setAttr ".ed[4980:5145]" 2476 2486 1 2477 2486 1 2478 2486 1 2479 2486 1 2480 2486 1
		 2481 2486 1 2482 2486 1 2483 2486 1 2484 2486 1 2485 2486 1 2487 2488 0 2488 2489 0
		 2489 2490 0 2490 2491 0 2491 2492 0 2492 2493 0 2493 2494 0 2494 2495 0 2495 2496 0
		 2496 2497 0 2497 2498 0 2498 2499 0 2499 2500 0 2500 2501 0 2501 2502 0 2502 2503 0
		 2503 2504 0 2504 2505 0 2505 2506 0 2506 2487 0 2507 2508 0 2508 2509 0 2509 2510 0
		 2510 2511 0 2511 2512 0 2512 2513 0 2513 2514 0 2514 2515 0 2515 2516 0 2516 2517 0
		 2517 2518 0 2518 2519 0 2519 2520 0 2520 2521 0 2521 2522 0 2522 2523 0 2523 2524 0
		 2524 2525 0 2525 2526 0 2526 2507 0 2527 2528 1 2528 2529 1 2529 2530 1 2530 2531 1
		 2531 2532 1 2532 2533 1 2533 2534 1 2534 2535 1 2535 2536 1 2536 2537 1 2537 2538 1
		 2538 2539 1 2539 2540 1 2540 2541 1 2541 2542 1 2542 2543 1 2543 2544 1 2544 2545 1
		 2545 2546 1 2546 2527 1 2547 2548 1 2548 2549 1 2549 2550 1 2550 2551 1 2551 2552 1
		 2552 2553 1 2553 2554 1 2554 2555 1 2555 2556 1 2556 2557 1 2557 2558 1 2558 2559 1
		 2559 2560 1 2560 2561 1 2561 2562 1 2562 2563 1 2563 2564 1 2564 2565 1 2565 2566 1
		 2566 2547 1 2567 2568 1 2568 2569 1 2569 2570 1 2570 2571 1 2571 2572 1 2572 2573 1
		 2573 2574 1 2574 2575 1 2575 2576 1 2576 2577 1 2577 2578 1 2578 2579 1 2579 2580 1
		 2580 2581 1 2581 2582 1 2582 2583 1 2583 2584 1 2584 2585 1 2585 2586 1 2586 2567 1
		 2587 2588 1 2588 2589 1 2589 2590 1 2590 2591 1 2591 2592 1 2592 2593 1 2593 2594 1
		 2594 2595 1 2595 2596 1 2596 2597 1 2597 2598 1 2598 2599 1 2599 2600 1 2600 2601 1
		 2601 2602 1 2602 2603 1 2603 2604 1 2604 2605 1 2605 2606 1 2606 2587 1 2607 2608 1
		 2608 2609 1 2609 2610 1 2610 2611 1 2611 2612 1 2612 2613 1 2613 2614 1 2614 2615 1
		 2615 2616 1 2616 2617 1 2617 2618 1 2618 2619 1 2619 2620 1 2620 2621 1 2621 2622 1
		 2622 2623 1 2623 2624 1 2624 2625 1 2625 2626 1 2626 2607 1 2627 2628 1 2628 2629 1
		 2629 2630 1 2630 2631 1 2631 2632 1 2632 2633 1 2633 2634 1 2634 2635 1 2635 2636 1
		 2636 2637 1 2637 2638 1 2638 2639 1 2639 2640 1 2640 2641 1 2641 2642 1 2642 2643 1;
	setAttr ".ed[5146:5311]" 2643 2644 1 2644 2645 1 2645 2646 1 2646 2627 1 2647 2648 1
		 2648 2649 1 2649 2650 1 2650 2651 1 2651 2652 1 2652 2653 1 2653 2654 1 2654 2655 1
		 2655 2656 1 2656 2657 1 2657 2658 1 2658 2659 1 2659 2660 1 2660 2661 1 2661 2662 1
		 2662 2663 1 2663 2664 1 2664 2665 1 2665 2666 1 2666 2647 1 2667 2668 1 2668 2669 1
		 2669 2670 1 2670 2671 1 2671 2672 1 2672 2673 1 2673 2674 1 2674 2675 1 2675 2676 1
		 2676 2677 1 2677 2678 1 2678 2679 1 2679 2680 1 2680 2681 1 2681 2682 1 2682 2683 1
		 2683 2684 1 2684 2685 1 2685 2686 1 2686 2667 1 2687 2688 1 2688 2689 1 2689 2690 1
		 2690 2691 1 2691 2692 1 2692 2693 1 2693 2694 1 2694 2695 1 2695 2696 1 2696 2697 1
		 2697 2698 1 2698 2699 1 2699 2700 1 2700 2701 1 2701 2702 1 2702 2703 1 2703 2704 1
		 2704 2705 1 2705 2706 1 2706 2687 1 2487 2507 1 2488 2508 1 2489 2509 1 2490 2510 1
		 2491 2511 1 2492 2512 1 2493 2513 1 2494 2514 1 2495 2515 1 2496 2516 1 2497 2517 1
		 2498 2518 1 2499 2519 1 2500 2520 1 2501 2521 1 2502 2522 1 2503 2523 1 2504 2524 1
		 2505 2525 1 2506 2526 1 2507 2527 1 2508 2528 1 2509 2529 1 2510 2530 1 2511 2531 1
		 2512 2532 1 2513 2533 1 2514 2534 1 2515 2535 1 2516 2536 1 2517 2537 1 2518 2538 1
		 2519 2539 1 2520 2540 1 2521 2541 1 2522 2542 1 2523 2543 1 2524 2544 1 2525 2545 1
		 2526 2546 1 2527 2547 1 2528 2548 1 2529 2549 1 2530 2550 1 2531 2551 1 2532 2552 1
		 2533 2553 1 2534 2554 1 2535 2555 1 2536 2556 1 2537 2557 1 2538 2558 1 2539 2559 1
		 2540 2560 1 2541 2561 1 2542 2562 1 2543 2563 1 2544 2564 1 2545 2565 1 2546 2566 1
		 2547 2567 1 2548 2568 1 2549 2569 1 2550 2570 1 2551 2571 1 2552 2572 1 2553 2573 1
		 2554 2574 1 2555 2575 1 2556 2576 1 2557 2577 1 2558 2578 1 2559 2579 1 2560 2580 1
		 2561 2581 1 2562 2582 1 2563 2583 1 2564 2584 1 2565 2585 1 2566 2586 1 2567 2587 1
		 2568 2588 1 2569 2589 1 2570 2590 1 2571 2591 1 2572 2592 1 2573 2593 1 2574 2594 1
		 2575 2595 1 2576 2596 1 2577 2597 1 2578 2598 1 2579 2599 1 2580 2600 1 2581 2601 1
		 2582 2602 1 2583 2603 1 2584 2604 1 2585 2605 1 2586 2606 1 2587 2607 1 2588 2608 1;
	setAttr ".ed[5312:5477]" 2589 2609 1 2590 2610 1 2591 2611 1 2592 2612 1 2593 2613 1
		 2594 2614 1 2595 2615 1 2596 2616 1 2597 2617 1 2598 2618 1 2599 2619 1 2600 2620 1
		 2601 2621 1 2602 2622 1 2603 2623 1 2604 2624 1 2605 2625 1 2606 2626 1 2607 2627 1
		 2608 2628 1 2609 2629 1 2610 2630 1 2611 2631 1 2612 2632 1 2613 2633 1 2614 2634 1
		 2615 2635 1 2616 2636 1 2617 2637 1 2618 2638 1 2619 2639 1 2620 2640 1 2621 2641 1
		 2622 2642 1 2623 2643 1 2624 2644 1 2625 2645 1 2626 2646 1 2627 2647 1 2628 2648 1
		 2629 2649 1 2630 2650 1 2631 2651 1 2632 2652 1 2633 2653 1 2634 2654 1 2635 2655 1
		 2636 2656 1 2637 2657 1 2638 2658 1 2639 2659 1 2640 2660 1 2641 2661 1 2642 2662 1
		 2643 2663 1 2644 2664 1 2645 2665 1 2646 2666 1 2647 2667 1 2648 2668 1 2649 2669 1
		 2650 2670 1 2651 2671 1 2652 2672 1 2653 2673 1 2654 2674 1 2655 2675 1 2656 2676 1
		 2657 2677 1 2658 2678 1 2659 2679 1 2660 2680 1 2661 2681 1 2662 2682 1 2663 2683 1
		 2664 2684 1 2665 2685 1 2666 2686 1 2667 2687 1 2668 2688 1 2669 2689 1 2670 2690 1
		 2671 2691 1 2672 2692 1 2673 2693 1 2674 2694 1 2675 2695 1 2676 2696 1 2677 2697 1
		 2678 2698 1 2679 2699 1 2680 2700 1 2681 2701 1 2682 2702 1 2683 2703 1 2684 2704 1
		 2685 2705 1 2686 2706 1 2687 2707 1 2688 2707 1 2689 2707 1 2690 2707 1 2691 2707 1
		 2692 2707 1 2693 2707 1 2694 2707 1 2695 2707 1 2696 2707 1 2697 2707 1 2698 2707 1
		 2699 2707 1 2700 2707 1 2701 2707 1 2702 2707 1 2703 2707 1 2704 2707 1 2705 2707 1
		 2706 2707 1 2708 2709 1 2709 2710 1 2710 2711 1 2711 2712 1 2712 2713 1 2713 2714 1
		 2714 2715 1 2715 2716 1 2716 2717 1 2717 2718 1 2718 2719 1 2719 2720 1 2720 2721 1
		 2721 2722 1 2722 2723 1 2723 2724 1 2724 2725 1 2725 2726 1 2726 2727 1 2727 2708 1
		 2728 2729 1 2729 2730 1 2730 2731 1 2731 2732 1 2732 2733 1 2733 2734 1 2734 2735 1
		 2735 2736 1 2736 2737 1 2737 2738 1 2738 2739 1 2739 2740 1 2740 2741 1 2741 2742 1
		 2742 2743 1 2743 2744 1 2744 2745 1 2745 2746 1 2746 2747 1 2747 2728 1 2748 2749 1
		 2749 2750 1 2750 2751 1 2751 2752 1 2752 2753 1 2753 2754 1 2754 2755 1 2755 2756 1;
	setAttr ".ed[5478:5643]" 2756 2757 1 2757 2758 1 2758 2759 1 2759 2760 1 2760 2761 1
		 2761 2762 1 2762 2763 1 2763 2764 1 2764 2765 1 2765 2766 1 2766 2767 1 2767 2748 1
		 2768 2769 1 2769 2770 1 2770 2771 1 2771 2772 1 2772 2773 1 2773 2774 1 2774 2775 1
		 2775 2776 1 2776 2777 1 2777 2778 1 2778 2779 1 2779 2780 1 2780 2781 1 2781 2782 1
		 2782 2783 1 2783 2784 1 2784 2785 1 2785 2786 1 2786 2787 1 2787 2768 1 2788 2789 1
		 2789 2790 1 2790 2791 1 2791 2792 1 2792 2793 1 2793 2794 1 2794 2795 1 2795 2796 1
		 2796 2797 1 2797 2798 1 2798 2799 1 2799 2800 1 2800 2801 1 2801 2802 1 2802 2803 1
		 2803 2804 1 2804 2805 1 2805 2806 1 2806 2807 1 2807 2788 1 2808 2809 1 2809 2810 1
		 2810 2811 1 2811 2812 1 2812 2813 1 2813 2814 1 2814 2815 1 2815 2816 1 2816 2817 1
		 2817 2818 1 2818 2819 1 2819 2820 1 2820 2821 1 2821 2822 1 2822 2823 1 2823 2824 1
		 2824 2825 1 2825 2826 1 2826 2827 1 2827 2808 1 2828 2829 1 2829 2830 1 2830 2831 1
		 2831 2832 1 2832 2833 1 2833 2834 1 2834 2835 1 2835 2836 1 2836 2837 1 2837 2838 1
		 2838 2839 1 2839 2840 1 2840 2841 1 2841 2842 1 2842 2843 1 2843 2844 1 2844 2845 1
		 2845 2846 1 2846 2847 1 2847 2828 1 2848 2849 1 2849 2850 1 2850 2851 1 2851 2852 1
		 2852 2853 1 2853 2854 1 2854 2855 1 2855 2856 1 2856 2857 1 2857 2858 1 2858 2859 1
		 2859 2860 1 2860 2861 1 2861 2862 1 2862 2863 1 2863 2864 1 2864 2865 1 2865 2866 1
		 2866 2867 1 2867 2848 1 2868 2869 1 2869 2870 1 2870 2871 1 2871 2872 1 2872 2873 1
		 2873 2874 1 2874 2875 1 2875 2876 1 2876 2877 1 2877 2878 1 2878 2879 1 2879 2880 1
		 2880 2881 1 2881 2882 1 2882 2883 1 2883 2884 1 2884 2885 1 2885 2886 1 2886 2887 1
		 2887 2868 1 2888 2889 1 2889 2890 1 2890 2891 1 2891 2892 1 2892 2893 1 2893 2894 1
		 2894 2895 1 2895 2896 1 2896 2897 1 2897 2898 1 2898 2899 1 2899 2900 1 2900 2901 1
		 2901 2902 1 2902 2903 1 2903 2904 1 2904 2905 1 2905 2906 1 2906 2907 1 2907 2888 1
		 2908 2909 1 2909 2910 1 2910 2911 1 2911 2912 1 2912 2913 1 2913 2914 1 2914 2915 1
		 2915 2916 1 2916 2917 1 2917 2918 1 2918 2919 1 2919 2920 1 2920 2921 1 2921 2922 1;
	setAttr ".ed[5644:5809]" 2922 2923 1 2923 2924 1 2924 2925 1 2925 2926 1 2926 2927 1
		 2927 2908 1 2928 2929 1 2929 2930 1 2930 2931 1 2931 2932 1 2932 2933 1 2933 2934 1
		 2934 2935 1 2935 2936 1 2936 2937 1 2937 2938 1 2938 2939 1 2939 2940 1 2940 2941 1
		 2941 2942 1 2942 2943 1 2943 2944 1 2944 2945 1 2945 2946 1 2946 2947 1 2947 2928 1
		 2948 2949 1 2949 2950 1 2950 2951 1 2951 2952 1 2952 2953 1 2953 2954 1 2954 2955 1
		 2955 2956 1 2956 2957 1 2957 2958 1 2958 2959 1 2959 2960 1 2960 2961 1 2961 2962 1
		 2962 2963 1 2963 2964 1 2964 2965 1 2965 2966 1 2966 2967 1 2967 2948 1 2968 2969 1
		 2969 2970 1 2970 2971 1 2971 2972 1 2972 2973 1 2973 2974 1 2974 2975 1 2975 2976 1
		 2976 2977 1 2977 2978 1 2978 2979 1 2979 2980 1 2980 2981 1 2981 2982 1 2982 2983 1
		 2983 2984 1 2984 2985 1 2985 2986 1 2986 2987 1 2987 2968 1 2988 2989 1 2989 2990 1
		 2990 2991 1 2991 2992 1 2992 2993 1 2993 2994 1 2994 2995 1 2995 2996 1 2996 2997 1
		 2997 2998 1 2998 2999 1 2999 3000 1 3000 3001 1 3001 3002 1 3002 3003 1 3003 3004 1
		 3004 3005 1 3005 3006 1 3006 3007 1 3007 2988 1 3008 3009 1 3009 3010 1 3010 3011 1
		 3011 3012 1 3012 3013 1 3013 3014 1 3014 3015 1 3015 3016 1 3016 3017 1 3017 3018 1
		 3018 3019 1 3019 3020 1 3020 3021 1 3021 3022 1 3022 3023 1 3023 3024 1 3024 3025 1
		 3025 3026 1 3026 3027 1 3027 3008 1 3028 3029 1 3029 3030 1 3030 3031 1 3031 3032 1
		 3032 3033 1 3033 3034 1 3034 3035 1 3035 3036 1 3036 3037 1 3037 3038 1 3038 3039 1
		 3039 3040 1 3040 3041 1 3041 3042 1 3042 3043 1 3043 3044 1 3044 3045 1 3045 3046 1
		 3046 3047 1 3047 3028 1 3048 3049 1 3049 3050 1 3050 3051 1 3051 3052 1 3052 3053 1
		 3053 3054 1 3054 3055 1 3055 3056 1 3056 3057 1 3057 3058 1 3058 3059 1 3059 3060 1
		 3060 3061 1 3061 3062 1 3062 3063 1 3063 3064 1 3064 3065 1 3065 3066 1 3066 3067 1
		 3067 3048 1 3068 3069 1 3069 3070 1 3070 3071 1 3071 3072 1 3072 3073 1 3073 3074 1
		 3074 3075 1 3075 3076 1 3076 3077 1 3077 3078 1 3078 3079 1 3079 3080 1 3080 3081 1
		 3081 3082 1 3082 3083 1 3083 3084 1 3084 3085 1 3085 3086 1 3086 3087 1 3087 3068 1;
	setAttr ".ed[5810:5975]" 2708 2728 1 2709 2729 1 2710 2730 1 2711 2731 1 2712 2732 1
		 2713 2733 1 2714 2734 1 2715 2735 1 2716 2736 1 2717 2737 1 2718 2738 1 2719 2739 1
		 2720 2740 1 2721 2741 1 2722 2742 1 2723 2743 1 2724 2744 1 2725 2745 1 2726 2746 1
		 2727 2747 1 2728 2748 1 2729 2749 1 2730 2750 1 2731 2751 1 2732 2752 1 2733 2753 1
		 2734 2754 1 2735 2755 1 2736 2756 1 2737 2757 1 2738 2758 1 2739 2759 1 2740 2760 1
		 2741 2761 1 2742 2762 1 2743 2763 1 2744 2764 1 2745 2765 1 2746 2766 1 2747 2767 1
		 2748 2768 1 2749 2769 1 2750 2770 1 2751 2771 1 2752 2772 1 2753 2773 1 2754 2774 1
		 2755 2775 1 2756 2776 1 2757 2777 1 2758 2778 1 2759 2779 1 2760 2780 1 2761 2781 1
		 2762 2782 1 2763 2783 1 2764 2784 1 2765 2785 1 2766 2786 1 2767 2787 1 2768 2788 1
		 2769 2789 1 2770 2790 1 2771 2791 1 2772 2792 1 2773 2793 1 2774 2794 1 2775 2795 1
		 2776 2796 1 2777 2797 1 2778 2798 1 2779 2799 1 2780 2800 1 2781 2801 1 2782 2802 1
		 2783 2803 1 2784 2804 1 2785 2805 1 2786 2806 1 2787 2807 1 2788 2808 1 2789 2809 1
		 2790 2810 1 2791 2811 1 2792 2812 1 2793 2813 1 2794 2814 1 2795 2815 1 2796 2816 1
		 2797 2817 1 2798 2818 1 2799 2819 1 2800 2820 1 2801 2821 1 2802 2822 1 2803 2823 1
		 2804 2824 1 2805 2825 1 2806 2826 1 2807 2827 1 2808 2828 1 2809 2829 1 2810 2830 1
		 2811 2831 1 2812 2832 1 2813 2833 1 2814 2834 1 2815 2835 1 2816 2836 1 2817 2837 1
		 2818 2838 1 2819 2839 1 2820 2840 1 2821 2841 1 2822 2842 1 2823 2843 1 2824 2844 1
		 2825 2845 1 2826 2846 1 2827 2847 1 2828 2848 1 2829 2849 1 2830 2850 1 2831 2851 1
		 2832 2852 1 2833 2853 1 2834 2854 1 2835 2855 1 2836 2856 1 2837 2857 1 2838 2858 1
		 2839 2859 1 2840 2860 1 2841 2861 1 2842 2862 1 2843 2863 1 2844 2864 1 2845 2865 1
		 2846 2866 1 2847 2867 1 2848 2868 1 2849 2869 1 2850 2870 1 2851 2871 1 2852 2872 1
		 2853 2873 1 2854 2874 1 2855 2875 1 2856 2876 1 2857 2877 1 2858 2878 1 2859 2879 1
		 2860 2880 1 2861 2881 1 2862 2882 1 2863 2883 1 2864 2884 1 2865 2885 1 2866 2886 1
		 2867 2887 1 2868 2888 1 2869 2889 1 2870 2890 1 2871 2891 1 2872 2892 1 2873 2893 1;
	setAttr ".ed[5976:6141]" 2874 2894 1 2875 2895 1 2876 2896 1 2877 2897 1 2878 2898 1
		 2879 2899 1 2880 2900 1 2881 2901 1 2882 2902 1 2883 2903 1 2884 2904 1 2885 2905 1
		 2886 2906 1 2887 2907 1 2888 2908 1 2889 2909 1 2890 2910 1 2891 2911 1 2892 2912 1
		 2893 2913 1 2894 2914 1 2895 2915 1 2896 2916 1 2897 2917 1 2898 2918 1 2899 2919 1
		 2900 2920 1 2901 2921 1 2902 2922 1 2903 2923 1 2904 2924 1 2905 2925 1 2906 2926 1
		 2907 2927 1 2908 2928 1 2909 2929 1 2910 2930 1 2911 2931 1 2912 2932 1 2913 2933 1
		 2914 2934 1 2915 2935 1 2916 2936 1 2917 2937 1 2918 2938 1 2919 2939 1 2920 2940 1
		 2921 2941 1 2922 2942 1 2923 2943 1 2924 2944 1 2925 2945 1 2926 2946 1 2927 2947 1
		 2928 2948 1 2929 2949 1 2930 2950 1 2931 2951 1 2932 2952 1 2933 2953 1 2934 2954 1
		 2935 2955 1 2936 2956 1 2937 2957 1 2938 2958 1 2939 2959 1 2940 2960 1 2941 2961 1
		 2942 2962 1 2943 2963 1 2944 2964 1 2945 2965 1 2946 2966 1 2947 2967 1 2948 2968 1
		 2949 2969 1 2950 2970 1 2951 2971 1 2952 2972 1 2953 2973 1 2954 2974 1 2955 2975 1
		 2956 2976 1 2957 2977 1 2958 2978 1 2959 2979 1 2960 2980 1 2961 2981 1 2962 2982 1
		 2963 2983 1 2964 2984 1 2965 2985 1 2966 2986 1 2967 2987 1 2968 2988 1 2969 2989 1
		 2970 2990 1 2971 2991 1 2972 2992 1 2973 2993 1 2974 2994 1 2975 2995 1 2976 2996 1
		 2977 2997 1 2978 2998 1 2979 2999 1 2980 3000 1 2981 3001 1 2982 3002 1 2983 3003 1
		 2984 3004 1 2985 3005 1 2986 3006 1 2987 3007 1 2988 3008 1 2989 3009 1 2990 3010 1
		 2991 3011 1 2992 3012 1 2993 3013 1 2994 3014 1 2995 3015 1 2996 3016 1 2997 3017 1
		 2998 3018 1 2999 3019 1 3000 3020 1 3001 3021 1 3002 3022 1 3003 3023 1 3004 3024 1
		 3005 3025 1 3006 3026 1 3007 3027 1 3008 3028 1 3009 3029 1 3010 3030 1 3011 3031 1
		 3012 3032 1 3013 3033 1 3014 3034 1 3015 3035 1 3016 3036 1 3017 3037 1 3018 3038 1
		 3019 3039 1 3020 3040 1 3021 3041 1 3022 3042 1 3023 3043 1 3024 3044 1 3025 3045 1
		 3026 3046 1 3027 3047 1 3028 3048 1 3029 3049 1 3030 3050 1 3031 3051 1 3032 3052 1
		 3033 3053 1 3034 3054 1 3035 3055 1 3036 3056 1 3037 3057 1 3038 3058 1 3039 3059 1;
	setAttr ".ed[6142:6307]" 3040 3060 1 3041 3061 1 3042 3062 1 3043 3063 1 3044 3064 1
		 3045 3065 1 3046 3066 1 3047 3067 1 3048 3068 1 3049 3069 1 3050 3070 1 3051 3071 1
		 3052 3072 1 3053 3073 1 3054 3074 1 3055 3075 1 3056 3076 1 3057 3077 1 3058 3078 1
		 3059 3079 1 3060 3080 1 3061 3081 1 3062 3082 1 3063 3083 1 3064 3084 1 3065 3085 1
		 3066 3086 1 3067 3087 1 3088 2708 1 3088 2709 1 3088 2710 1 3088 2711 1 3088 2712 1
		 3088 2713 1 3088 2714 1 3088 2715 1 3088 2716 1 3088 2717 1 3088 2718 1 3088 2719 1
		 3088 2720 1 3088 2721 1 3088 2722 1 3088 2723 1 3088 2724 1 3088 2725 1 3088 2726 1
		 3088 2727 1 3068 3089 1 3069 3089 1 3070 3089 1 3071 3089 1 3072 3089 1 3073 3089 1
		 3074 3089 1 3075 3089 1 3076 3089 1 3077 3089 1 3078 3089 1 3079 3089 1 3080 3089 1
		 3081 3089 1 3082 3089 1 3083 3089 1 3084 3089 1 3085 3089 1 3086 3089 1 3087 3089 1
		 3090 3091 0 3091 3092 0 3092 3093 0 3093 3094 0 3094 3095 0 3095 3096 0 3096 3097 0
		 3097 3098 0 3098 3099 0 3099 3100 0 3100 3101 0 3101 3102 0 3102 3103 0 3103 3104 0
		 3104 3105 0 3105 3106 0 3106 3107 0 3107 3108 0 3108 3109 0 3109 3090 0 3110 3111 0
		 3111 3112 0 3112 3113 0 3113 3114 0 3114 3115 0 3115 3116 0 3116 3117 0 3117 3118 0
		 3118 3119 0 3119 3120 0 3120 3121 0 3121 3122 0 3122 3123 0 3123 3124 0 3124 3125 0
		 3125 3126 0 3126 3127 0 3127 3128 0 3128 3129 0 3129 3110 0 3130 3131 1 3131 3132 1
		 3132 3133 1 3133 3134 1 3134 3135 1 3135 3136 1 3136 3137 1 3137 3138 1 3138 3139 1
		 3139 3140 1 3140 3141 1 3141 3142 1 3142 3143 1 3143 3144 1 3144 3145 1 3145 3146 1
		 3146 3147 1 3147 3148 1 3148 3149 1 3149 3130 1 3150 3151 1 3151 3152 1 3152 3153 1
		 3153 3154 1 3154 3155 1 3155 3156 1 3156 3157 1 3157 3158 1 3158 3159 1 3159 3160 1
		 3160 3161 1 3161 3162 1 3162 3163 1 3163 3164 1 3164 3165 1 3165 3166 1 3166 3167 1
		 3167 3168 1 3168 3169 1 3169 3150 1 3170 3171 1 3171 3172 1 3172 3173 1 3173 3174 1
		 3174 3175 1 3175 3176 1 3176 3177 1 3177 3178 1 3178 3179 1 3179 3180 1 3180 3181 1
		 3181 3182 1 3182 3183 1 3183 3184 1 3184 3185 1 3185 3186 1 3186 3187 1 3187 3188 1;
	setAttr ".ed[6308:6473]" 3188 3189 1 3189 3170 1 3190 3191 1 3191 3192 1 3192 3193 1
		 3193 3194 1 3194 3195 1 3195 3196 1 3196 3197 1 3197 3198 1 3198 3199 1 3199 3200 1
		 3200 3201 1 3201 3202 1 3202 3203 1 3203 3204 1 3204 3205 1 3205 3206 1 3206 3207 1
		 3207 3208 1 3208 3209 1 3209 3190 1 3210 3211 1 3211 3212 1 3212 3213 1 3213 3214 1
		 3214 3215 1 3215 3216 1 3216 3217 1 3217 3218 1 3218 3219 1 3219 3220 1 3220 3221 1
		 3221 3222 1 3222 3223 1 3223 3224 1 3224 3225 1 3225 3226 1 3226 3227 1 3227 3228 1
		 3228 3229 1 3229 3210 1 3230 3231 1 3231 3232 1 3232 3233 1 3233 3234 1 3234 3235 1
		 3235 3236 1 3236 3237 1 3237 3238 1 3238 3239 1 3239 3240 1 3240 3241 1 3241 3242 1
		 3242 3243 1 3243 3244 1 3244 3245 1 3245 3246 1 3246 3247 1 3247 3248 1 3248 3249 1
		 3249 3230 1 3250 3251 1 3251 3252 1 3252 3253 1 3253 3254 1 3254 3255 1 3255 3256 1
		 3256 3257 1 3257 3258 1 3258 3259 1 3259 3260 1 3260 3261 1 3261 3262 1 3262 3263 1
		 3263 3264 1 3264 3265 1 3265 3266 1 3266 3267 1 3267 3268 1 3268 3269 1 3269 3250 1
		 3270 3271 1 3271 3272 1 3272 3273 1 3273 3274 1 3274 3275 1 3275 3276 1 3276 3277 1
		 3277 3278 1 3278 3279 1 3279 3280 1 3280 3281 1 3281 3282 1 3282 3283 1 3283 3284 1
		 3284 3285 1 3285 3286 1 3286 3287 1 3287 3288 1 3288 3289 1 3289 3270 1 3290 3291 1
		 3291 3292 1 3292 3293 1 3293 3294 1 3294 3295 1 3295 3296 1 3296 3297 1 3297 3298 1
		 3298 3299 1 3299 3300 1 3300 3301 1 3301 3302 1 3302 3303 1 3303 3304 1 3304 3305 1
		 3305 3306 1 3306 3307 1 3307 3308 1 3308 3309 1 3309 3290 1 3090 3110 1 3091 3111 1
		 3092 3112 1 3093 3113 1 3094 3114 1 3095 3115 1 3096 3116 1 3097 3117 1 3098 3118 1
		 3099 3119 1 3100 3120 1 3101 3121 1 3102 3122 1 3103 3123 1 3104 3124 1 3105 3125 1
		 3106 3126 1 3107 3127 1 3108 3128 1 3109 3129 1 3110 3130 1 3111 3131 1 3112 3132 1
		 3113 3133 1 3114 3134 1 3115 3135 1 3116 3136 1 3117 3137 1 3118 3138 1 3119 3139 1
		 3120 3140 1 3121 3141 1 3122 3142 1 3123 3143 1 3124 3144 1 3125 3145 1 3126 3146 1
		 3127 3147 1 3128 3148 1 3129 3149 1 3130 3150 1 3131 3151 1 3132 3152 1 3133 3153 1;
	setAttr ".ed[6474:6639]" 3134 3154 1 3135 3155 1 3136 3156 1 3137 3157 1 3138 3158 1
		 3139 3159 1 3140 3160 1 3141 3161 1 3142 3162 1 3143 3163 1 3144 3164 1 3145 3165 1
		 3146 3166 1 3147 3167 1 3148 3168 1 3149 3169 1 3150 3170 1 3151 3171 1 3152 3172 1
		 3153 3173 1 3154 3174 1 3155 3175 1 3156 3176 1 3157 3177 1 3158 3178 1 3159 3179 1
		 3160 3180 1 3161 3181 1 3162 3182 1 3163 3183 1 3164 3184 1 3165 3185 1 3166 3186 1
		 3167 3187 1 3168 3188 1 3169 3189 1 3170 3190 1 3171 3191 1 3172 3192 1 3173 3193 1
		 3174 3194 1 3175 3195 1 3176 3196 1 3177 3197 1 3178 3198 1 3179 3199 1 3180 3200 1
		 3181 3201 1 3182 3202 1 3183 3203 1 3184 3204 1 3185 3205 1 3186 3206 1 3187 3207 1
		 3188 3208 1 3189 3209 1 3190 3210 1 3191 3211 1 3192 3212 1 3193 3213 1 3194 3214 1
		 3195 3215 1 3196 3216 1 3197 3217 1 3198 3218 1 3199 3219 1 3200 3220 1 3201 3221 1
		 3202 3222 1 3203 3223 1 3204 3224 1 3205 3225 1 3206 3226 1 3207 3227 1 3208 3228 1
		 3209 3229 1 3210 3230 1 3211 3231 1 3212 3232 1 3213 3233 1 3214 3234 1 3215 3235 1
		 3216 3236 1 3217 3237 1 3218 3238 1 3219 3239 1 3220 3240 1 3221 3241 1 3222 3242 1
		 3223 3243 1 3224 3244 1 3225 3245 1 3226 3246 1 3227 3247 1 3228 3248 1 3229 3249 1
		 3230 3250 1 3231 3251 1 3232 3252 1 3233 3253 1 3234 3254 1 3235 3255 1 3236 3256 1
		 3237 3257 1 3238 3258 1 3239 3259 1 3240 3260 1 3241 3261 1 3242 3262 1 3243 3263 1
		 3244 3264 1 3245 3265 1 3246 3266 1 3247 3267 1 3248 3268 1 3249 3269 1 3250 3270 1
		 3251 3271 1 3252 3272 1 3253 3273 1 3254 3274 1 3255 3275 1 3256 3276 1 3257 3277 1
		 3258 3278 1 3259 3279 1 3260 3280 1 3261 3281 1 3262 3282 1 3263 3283 1 3264 3284 1
		 3265 3285 1 3266 3286 1 3267 3287 1 3268 3288 1 3269 3289 1 3270 3290 1 3271 3291 1
		 3272 3292 1 3273 3293 1 3274 3294 1 3275 3295 1 3276 3296 1 3277 3297 1 3278 3298 1
		 3279 3299 1 3280 3300 1 3281 3301 1 3282 3302 1 3283 3303 1 3284 3304 1 3285 3305 1
		 3286 3306 1 3287 3307 1 3288 3308 1 3289 3309 1 3290 3310 1 3291 3310 1 3292 3310 1
		 3293 3310 1 3294 3310 1 3295 3310 1 3296 3310 1 3297 3310 1 3298 3310 1 3299 3310 1;
	setAttr ".ed[6640:6805]" 3300 3310 1 3301 3310 1 3302 3310 1 3303 3310 1 3304 3310 1
		 3305 3310 1 3306 3310 1 3307 3310 1 3308 3310 1 3309 3310 1 3311 3312 0 3312 3313 0
		 3313 3314 0 3314 3315 0 3315 3316 0 3316 3317 0 3317 3318 0 3318 3319 0 3319 3320 0
		 3320 3321 0 3321 3322 0 3322 3323 0 3323 3324 0 3324 3325 0 3325 3326 0 3326 3327 0
		 3327 3328 0 3328 3329 0 3329 3330 0 3330 3311 0 3331 3332 0 3332 3333 0 3333 3334 0
		 3334 3335 0 3335 3336 0 3336 3337 0 3337 3338 0 3338 3339 0 3339 3340 0 3340 3341 0
		 3341 3342 0 3342 3343 0 3343 3344 0 3344 3345 0 3345 3346 0 3346 3347 0 3347 3348 0
		 3348 3349 0 3349 3350 0 3350 3331 0 3351 3352 1 3352 3353 1 3353 3354 1 3354 3355 1
		 3355 3356 1 3356 3357 1 3357 3358 1 3358 3359 1 3359 3360 1 3360 3361 1 3361 3362 1
		 3362 3363 1 3363 3364 1 3364 3365 1 3365 3366 1 3366 3367 1 3367 3368 1 3368 3369 1
		 3369 3370 1 3370 3351 1 3371 3372 1 3372 3373 1 3373 3374 1 3374 3375 1 3375 3376 1
		 3376 3377 1 3377 3378 1 3378 3379 1 3379 3380 1 3380 3381 1 3381 3382 1 3382 3383 1
		 3383 3384 1 3384 3385 1 3385 3386 1 3386 3387 1 3387 3388 1 3388 3389 1 3389 3390 1
		 3390 3371 1 3391 3392 1 3392 3393 1 3393 3394 1 3394 3395 1 3395 3396 1 3396 3397 1
		 3397 3398 1 3398 3399 1 3399 3400 1 3400 3401 1 3401 3402 1 3402 3403 1 3403 3404 1
		 3404 3405 1 3405 3406 1 3406 3407 1 3407 3408 1 3408 3409 1 3409 3410 1 3410 3391 1
		 3411 3412 1 3412 3413 1 3413 3414 1 3414 3415 1 3415 3416 1 3416 3417 1 3417 3418 1
		 3418 3419 1 3419 3420 1 3420 3421 1 3421 3422 1 3422 3423 1 3423 3424 1 3424 3425 1
		 3425 3426 1 3426 3427 1 3427 3428 1 3428 3429 1 3429 3430 1 3430 3411 1 3431 3432 1
		 3432 3433 1 3433 3434 1 3434 3435 1 3435 3436 1 3436 3437 1 3437 3438 1 3438 3439 1
		 3439 3440 1 3440 3441 1 3441 3442 1 3442 3443 1 3443 3444 1 3444 3445 1 3445 3446 1
		 3446 3447 1 3447 3448 1 3448 3449 1 3449 3450 1 3450 3431 1 3451 3452 1 3452 3453 1
		 3453 3454 1 3454 3455 1 3455 3456 1 3456 3457 1 3457 3458 1 3458 3459 1 3459 3460 1
		 3460 3461 1 3461 3462 1 3462 3463 1 3463 3464 1 3464 3465 1 3465 3466 1 3466 3467 1;
	setAttr ".ed[6806:6971]" 3467 3468 1 3468 3469 1 3469 3470 1 3470 3451 1 3471 3472 1
		 3472 3473 1 3473 3474 1 3474 3475 1 3475 3476 1 3476 3477 1 3477 3478 1 3478 3479 1
		 3479 3480 1 3480 3481 1 3481 3482 1 3482 3483 1 3483 3484 1 3484 3485 1 3485 3486 1
		 3486 3487 1 3487 3488 1 3488 3489 1 3489 3490 1 3490 3471 1 3491 3492 1 3492 3493 1
		 3493 3494 1 3494 3495 1 3495 3496 1 3496 3497 1 3497 3498 1 3498 3499 1 3499 3500 1
		 3500 3501 1 3501 3502 1 3502 3503 1 3503 3504 1 3504 3505 1 3505 3506 1 3506 3507 1
		 3507 3508 1 3508 3509 1 3509 3510 1 3510 3491 1 3511 3512 1 3512 3513 1 3513 3514 1
		 3514 3515 1 3515 3516 1 3516 3517 1 3517 3518 1 3518 3519 1 3519 3520 1 3520 3521 1
		 3521 3522 1 3522 3523 1 3523 3524 1 3524 3525 1 3525 3526 1 3526 3527 1 3527 3528 1
		 3528 3529 1 3529 3530 1 3530 3511 1 3311 3331 1 3312 3332 1 3313 3333 1 3314 3334 1
		 3315 3335 1 3316 3336 1 3317 3337 1 3318 3338 1 3319 3339 1 3320 3340 1 3321 3341 1
		 3322 3342 1 3323 3343 1 3324 3344 1 3325 3345 1 3326 3346 1 3327 3347 1 3328 3348 1
		 3329 3349 1 3330 3350 1 3331 3351 1 3332 3352 1 3333 3353 1 3334 3354 1 3335 3355 1
		 3336 3356 1 3337 3357 1 3338 3358 1 3339 3359 1 3340 3360 1 3341 3361 1 3342 3362 1
		 3343 3363 1 3344 3364 1 3345 3365 1 3346 3366 1 3347 3367 1 3348 3368 1 3349 3369 1
		 3350 3370 1 3351 3371 1 3352 3372 1 3353 3373 1 3354 3374 1 3355 3375 1 3356 3376 1
		 3357 3377 1 3358 3378 1 3359 3379 1 3360 3380 1 3361 3381 1 3362 3382 1 3363 3383 1
		 3364 3384 1 3365 3385 1 3366 3386 1 3367 3387 1 3368 3388 1 3369 3389 1 3370 3390 1
		 3371 3391 1 3372 3392 1 3373 3393 1 3374 3394 1 3375 3395 1 3376 3396 1 3377 3397 1
		 3378 3398 1 3379 3399 1 3380 3400 1 3381 3401 1 3382 3402 1 3383 3403 1 3384 3404 1
		 3385 3405 1 3386 3406 1 3387 3407 1 3388 3408 1 3389 3409 1 3390 3410 1 3391 3411 1
		 3392 3412 1 3393 3413 1 3394 3414 1 3395 3415 1 3396 3416 1 3397 3417 1 3398 3418 1
		 3399 3419 1 3400 3420 1 3401 3421 1 3402 3422 1 3403 3423 1 3404 3424 1 3405 3425 1
		 3406 3426 1 3407 3427 1 3408 3428 1 3409 3429 1 3410 3430 1 3411 3431 1 3412 3432 1;
	setAttr ".ed[6972:7089]" 3413 3433 1 3414 3434 1 3415 3435 1 3416 3436 1 3417 3437 1
		 3418 3438 1 3419 3439 1 3420 3440 1 3421 3441 1 3422 3442 1 3423 3443 1 3424 3444 1
		 3425 3445 1 3426 3446 1 3427 3447 1 3428 3448 1 3429 3449 1 3430 3450 1 3431 3451 1
		 3432 3452 1 3433 3453 1 3434 3454 1 3435 3455 1 3436 3456 1 3437 3457 1 3438 3458 1
		 3439 3459 1 3440 3460 1 3441 3461 1 3442 3462 1 3443 3463 1 3444 3464 1 3445 3465 1
		 3446 3466 1 3447 3467 1 3448 3468 1 3449 3469 1 3450 3470 1 3451 3471 1 3452 3472 1
		 3453 3473 1 3454 3474 1 3455 3475 1 3456 3476 1 3457 3477 1 3458 3478 1 3459 3479 1
		 3460 3480 1 3461 3481 1 3462 3482 1 3463 3483 1 3464 3484 1 3465 3485 1 3466 3486 1
		 3467 3487 1 3468 3488 1 3469 3489 1 3470 3490 1 3471 3491 1 3472 3492 1 3473 3493 1
		 3474 3494 1 3475 3495 1 3476 3496 1 3477 3497 1 3478 3498 1 3479 3499 1 3480 3500 1
		 3481 3501 1 3482 3502 1 3483 3503 1 3484 3504 1 3485 3505 1 3486 3506 1 3487 3507 1
		 3488 3508 1 3489 3509 1 3490 3510 1 3491 3511 1 3492 3512 1 3493 3513 1 3494 3514 1
		 3495 3515 1 3496 3516 1 3497 3517 1 3498 3518 1 3499 3519 1 3500 3520 1 3501 3521 1
		 3502 3522 1 3503 3523 1 3504 3524 1 3505 3525 1 3506 3526 1 3507 3527 1 3508 3528 1
		 3509 3529 1 3510 3530 1 3511 3531 1 3512 3531 1 3513 3531 1 3514 3531 1 3515 3531 1
		 3516 3531 1 3517 3531 1 3518 3531 1 3519 3531 1 3520 3531 1 3521 3531 1 3522 3531 1
		 3523 3531 1 3524 3531 1 3525 3531 1 3526 3531 1 3527 3531 1 3528 3531 1 3529 3531 1
		 3530 3531 1;
	setAttr -s 3704 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[166:331]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[332:497]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[498:663]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[664:829]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[830:995]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[996:1161]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1162:1327]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1328:1493]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1494:1659]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1660:1825]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1826:1991]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1992:2157]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2158:2323]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2324:2489]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2490:2655]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2656:2821]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2822:2987]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2988:3153]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[3154:3319]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[3320:3485]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[3486:3651]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[3652:3703]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 3572 -ch 14100 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -1 240 12 -242
		mu 0 4 1 0 14 15
		f 4 -2 241 13 -243
		mu 0 4 2 1 15 16
		f 4 -3 242 14 -244
		mu 0 4 3 2 16 17
		f 4 -4 243 15 -245
		mu 0 4 4 3 17 18
		f 4 -5 244 16 -246
		mu 0 4 5 4 18 19
		f 4 -6 245 17 -247
		mu 0 4 6 5 19 20
		f 4 -7 246 18 -248
		mu 0 4 7 6 20 21
		f 4 -8 247 19 -249
		mu 0 4 8 7 21 22
		f 4 -9 248 20 -250
		mu 0 4 9 8 22 23
		f 4 -10 249 21 -251
		mu 0 4 10 9 23 24
		f 4 -11 250 22 -252
		mu 0 4 11 10 24 25
		f 4 -12 252 23 -241
		mu 0 4 13 12 26 27
		f 4 -13 253 24 -255
		mu 0 4 15 14 28 29
		f 4 -14 254 25 -256
		mu 0 4 16 15 29 30
		f 4 -15 255 26 -257
		mu 0 4 17 16 30 31
		f 4 -16 256 27 -258
		mu 0 4 18 17 31 32
		f 4 -17 257 28 -259
		mu 0 4 19 18 32 33
		f 4 -18 258 29 -260
		mu 0 4 20 19 33 34
		f 4 -19 259 30 -261
		mu 0 4 21 20 34 35
		f 4 -20 260 31 -262
		mu 0 4 22 21 35 36
		f 4 -21 261 32 -263
		mu 0 4 23 22 36 37
		f 4 -22 262 33 -264
		mu 0 4 24 23 37 38
		f 4 -23 263 34 -265
		mu 0 4 25 24 38 39
		f 4 -24 265 35 -254
		mu 0 4 27 26 40 41
		f 4 -25 266 36 -268
		mu 0 4 29 28 42 43
		f 4 -26 267 37 -269
		mu 0 4 30 29 43 44
		f 4 -27 268 38 -270
		mu 0 4 31 30 44 45
		f 4 -28 269 39 -271
		mu 0 4 32 31 45 46
		f 4 -29 270 40 -272
		mu 0 4 33 32 46 47
		f 4 -30 271 41 -273
		mu 0 4 34 33 47 48
		f 4 -31 272 42 -274
		mu 0 4 35 34 48 49
		f 4 -32 273 43 -275
		mu 0 4 36 35 49 50
		f 4 -33 274 44 -276
		mu 0 4 37 36 50 51
		f 4 -34 275 45 -277
		mu 0 4 38 37 51 52
		f 4 -35 276 46 -278
		mu 0 4 39 38 52 53
		f 4 -36 278 47 -267
		mu 0 4 41 40 54 55
		f 4 -37 279 48 -281
		mu 0 4 43 42 56 57
		f 4 -38 280 49 -282
		mu 0 4 44 43 57 58
		f 4 -39 281 50 -283
		mu 0 4 45 44 58 59
		f 4 -40 282 51 -284
		mu 0 4 46 45 59 60
		f 4 -41 283 52 -285
		mu 0 4 47 46 60 61
		f 4 -42 284 53 -286
		mu 0 4 48 47 61 62
		f 4 -43 285 54 -287
		mu 0 4 49 48 62 63
		f 4 -44 286 55 -288
		mu 0 4 50 49 63 64
		f 4 -45 287 56 -289
		mu 0 4 51 50 64 65
		f 4 -46 288 57 -290
		mu 0 4 52 51 65 66
		f 4 -47 289 58 -291
		mu 0 4 53 52 66 67
		f 4 -48 291 59 -280
		mu 0 4 55 54 68 69
		f 4 -49 292 60 -294
		mu 0 4 57 56 70 71
		f 4 -50 293 61 -295
		mu 0 4 58 57 71 72
		f 4 -51 294 62 -296
		mu 0 4 59 58 72 73
		f 4 -52 295 63 -297
		mu 0 4 60 59 73 74
		f 4 -53 296 64 -298
		mu 0 4 61 60 74 75
		f 4 -54 297 65 -299
		mu 0 4 62 61 75 76
		f 4 -55 298 66 -300
		mu 0 4 63 62 76 77
		f 4 -56 299 67 -301
		mu 0 4 64 63 77 78
		f 4 -57 300 68 -302
		mu 0 4 65 64 78 79
		f 4 -58 301 69 -303
		mu 0 4 66 65 79 80
		f 4 -59 302 70 -304
		mu 0 4 67 66 80 81
		f 4 -60 304 71 -293
		mu 0 4 69 68 82 83
		f 4 -61 305 72 -307
		mu 0 4 71 70 84 85
		f 4 -62 306 73 -308
		mu 0 4 72 71 85 86
		f 4 -63 307 74 -309
		mu 0 4 73 72 86 87
		f 4 -64 308 75 -310
		mu 0 4 74 73 87 88
		f 4 -65 309 76 -311
		mu 0 4 75 74 88 89
		f 4 -66 310 77 -312
		mu 0 4 76 75 89 90
		f 4 -67 311 78 -313
		mu 0 4 77 76 90 91
		f 4 -68 312 79 -314
		mu 0 4 78 77 91 92
		f 4 -69 313 80 -315
		mu 0 4 79 78 92 93
		f 4 -70 314 81 -316
		mu 0 4 80 79 93 94
		f 4 -71 315 82 -317
		mu 0 4 81 80 94 95
		f 4 -72 317 83 -306
		mu 0 4 83 82 96 97
		f 4 -73 318 84 -320
		mu 0 4 85 84 98 99
		f 4 -74 319 85 -321
		mu 0 4 86 85 99 100
		f 4 -75 320 86 -322
		mu 0 4 87 86 100 101
		f 4 -76 321 87 -323
		mu 0 4 88 87 101 102
		f 4 -77 322 88 -324
		mu 0 4 89 88 102 103
		f 4 -78 323 89 -325
		mu 0 4 90 89 103 104
		f 4 -79 324 90 -326
		mu 0 4 91 90 104 105
		f 4 -80 325 91 -327
		mu 0 4 92 91 105 106
		f 4 -81 326 92 -328
		mu 0 4 93 92 106 107
		f 4 -82 327 93 -329
		mu 0 4 94 93 107 108
		f 4 -83 328 94 -330
		mu 0 4 95 94 108 109
		f 4 -84 330 95 -319
		mu 0 4 97 96 110 111
		f 4 -85 331 96 -333
		mu 0 4 99 98 112 113
		f 4 -86 332 97 -334
		mu 0 4 100 99 113 114
		f 4 -87 333 98 -335
		mu 0 4 101 100 114 115
		f 4 -88 334 99 -336
		mu 0 4 102 101 115 116
		f 4 -89 335 100 -337
		mu 0 4 103 102 116 117
		f 4 -90 336 101 -338
		mu 0 4 104 103 117 118
		f 4 -91 337 102 -339
		mu 0 4 105 104 118 119
		f 4 -92 338 103 -340
		mu 0 4 106 105 119 120
		f 4 -93 339 104 -341
		mu 0 4 107 106 120 121
		f 4 -94 340 105 -342
		mu 0 4 108 107 121 122
		f 4 -95 341 106 -343
		mu 0 4 109 108 122 123
		f 4 -96 343 107 -332
		mu 0 4 111 110 124 125
		f 4 -97 344 108 -346
		mu 0 4 113 112 126 127
		f 4 -98 345 109 -347
		mu 0 4 114 113 127 128
		f 4 -99 346 110 -348
		mu 0 4 115 114 128 129
		f 4 -100 347 111 -349
		mu 0 4 116 115 129 130
		f 4 -101 348 112 -350
		mu 0 4 117 116 130 131
		f 4 -102 349 113 -351
		mu 0 4 118 117 131 132
		f 4 -103 350 114 -352
		mu 0 4 119 118 132 133
		f 4 -104 351 115 -353
		mu 0 4 120 119 133 134
		f 4 -105 352 116 -354
		mu 0 4 121 120 134 135
		f 4 -106 353 117 -355
		mu 0 4 122 121 135 136
		f 4 -107 354 118 -356
		mu 0 4 123 122 136 137
		f 4 -108 356 119 -345
		mu 0 4 125 124 138 139
		f 4 -109 357 120 -359
		mu 0 4 127 126 140 141
		f 4 -110 358 121 -360
		mu 0 4 128 127 141 142
		f 4 -111 359 122 -361
		mu 0 4 129 128 142 143
		f 4 -112 360 123 -362
		mu 0 4 130 129 143 144
		f 4 -113 361 124 -363
		mu 0 4 131 130 144 145
		f 4 -114 362 125 -364
		mu 0 4 132 131 145 146
		f 4 -115 363 126 -365
		mu 0 4 133 132 146 147
		f 4 -116 364 127 -366
		mu 0 4 134 133 147 148
		f 4 -117 365 128 -367
		mu 0 4 135 134 148 149
		f 4 -118 366 129 -368
		mu 0 4 136 135 149 150
		f 4 -119 367 130 -369
		mu 0 4 137 136 150 151
		f 4 -120 369 131 -358
		mu 0 4 139 138 152 153
		f 4 -121 370 132 -372
		mu 0 4 141 140 154 155
		f 4 -122 371 133 -373
		mu 0 4 142 141 155 156
		f 4 -123 372 134 -374
		mu 0 4 143 142 156 157
		f 4 -124 373 135 -375
		mu 0 4 144 143 157 158
		f 4 -125 374 136 -376
		mu 0 4 145 144 158 159
		f 4 -126 375 137 -377
		mu 0 4 146 145 159 160
		f 4 -127 376 138 -378
		mu 0 4 147 146 160 161
		f 4 -128 377 139 -379
		mu 0 4 148 147 161 162
		f 4 -129 378 140 -380
		mu 0 4 149 148 162 163
		f 4 -130 379 141 -381
		mu 0 4 150 149 163 164
		f 4 -131 380 142 -382
		mu 0 4 151 150 164 165
		f 4 -132 382 143 -371
		mu 0 4 153 152 166 167
		f 4 -133 383 144 -385
		mu 0 4 155 154 168 169
		f 4 -134 384 145 -386
		mu 0 4 156 155 169 170
		f 4 -135 385 146 -387
		mu 0 4 157 156 170 171
		f 4 -136 386 147 -388
		mu 0 4 158 157 171 172
		f 4 -137 387 148 -389
		mu 0 4 159 158 172 173
		f 4 -138 388 149 -390
		mu 0 4 160 159 173 174
		f 4 -139 389 150 -391
		mu 0 4 161 160 174 175
		f 4 -140 390 151 -392
		mu 0 4 162 161 175 176
		f 4 -141 391 152 -393
		mu 0 4 163 162 176 177
		f 4 -142 392 153 -394
		mu 0 4 164 163 177 178
		f 4 -143 393 154 -395
		mu 0 4 165 164 178 179
		f 4 -144 395 155 -384
		mu 0 4 167 166 180 181
		f 4 -145 396 156 -398
		mu 0 4 169 168 182 183
		f 4 -146 397 157 -399
		mu 0 4 170 169 183 184
		f 4 -147 398 158 -400
		mu 0 4 171 170 184 185
		f 4 -148 399 159 -401
		mu 0 4 172 171 185 186
		f 4 -149 400 160 -402
		mu 0 4 173 172 186 187
		f 4 -150 401 161 -403
		mu 0 4 174 173 187 188
		f 4 -151 402 162 -404
		mu 0 4 175 174 188 189
		f 4 -152 403 163 -405
		mu 0 4 176 175 189 190
		f 4 -153 404 164 -406
		mu 0 4 177 176 190 191
		f 4 -154 405 165 -407
		mu 0 4 178 177 191 192
		f 4 -155 406 166 -408
		mu 0 4 179 178 192 193
		f 4 -156 408 167 -397
		mu 0 4 181 180 194 195
		f 4 -157 409 168 -411
		mu 0 4 183 182 196 197
		f 4 -158 410 169 -412
		mu 0 4 184 183 197 198
		f 4 -159 411 170 -413
		mu 0 4 185 184 198 199
		f 4 -160 412 171 -414
		mu 0 4 186 185 199 200
		f 4 -161 413 172 -415
		mu 0 4 187 186 200 201
		f 4 -162 414 173 -416
		mu 0 4 188 187 201 202
		f 4 -163 415 174 -417
		mu 0 4 189 188 202 203
		f 4 -164 416 175 -418
		mu 0 4 190 189 203 204
		f 4 -165 417 176 -419
		mu 0 4 191 190 204 205
		f 4 -166 418 177 -420
		mu 0 4 192 191 205 206
		f 4 -167 419 178 -421
		mu 0 4 193 192 206 207
		f 4 -168 421 179 -410
		mu 0 4 195 194 208 209
		f 4 -169 422 180 -424
		mu 0 4 197 196 210 211
		f 4 -170 423 181 -425
		mu 0 4 198 197 211 212
		f 4 -171 424 182 -426
		mu 0 4 199 198 212 213
		f 4 -172 425 183 -427
		mu 0 4 200 199 213 214
		f 4 -173 426 184 -428
		mu 0 4 201 200 214 215
		f 4 -174 427 185 -429
		mu 0 4 202 201 215 216
		f 4 -175 428 186 -430
		mu 0 4 203 202 216 217
		f 4 -176 429 187 -431
		mu 0 4 204 203 217 218
		f 4 -177 430 188 -432
		mu 0 4 205 204 218 219
		f 4 -178 431 189 -433
		mu 0 4 206 205 219 220
		f 4 -179 432 190 -434
		mu 0 4 207 206 220 221
		f 4 -180 434 191 -423
		mu 0 4 209 208 222 223
		f 4 -181 435 192 -437
		mu 0 4 211 210 224 225
		f 4 -182 436 193 -438
		mu 0 4 212 211 225 226
		f 4 -183 437 194 -439
		mu 0 4 213 212 226 227
		f 4 -184 438 195 -440
		mu 0 4 214 213 227 228
		f 4 -185 439 196 -441
		mu 0 4 215 214 228 229
		f 4 -186 440 197 -442
		mu 0 4 216 215 229 230
		f 4 -187 441 198 -443
		mu 0 4 217 216 230 231
		f 4 -188 442 199 -444
		mu 0 4 218 217 231 232
		f 4 -189 443 200 -445
		mu 0 4 219 218 232 233
		f 4 -190 444 201 -446
		mu 0 4 220 219 233 234
		f 4 -191 445 202 -447
		mu 0 4 221 220 234 235
		f 4 -192 447 203 -436
		mu 0 4 223 222 236 237
		f 4 -193 448 204 -450
		mu 0 4 225 224 238 239
		f 4 -194 449 205 -451
		mu 0 4 226 225 239 240
		f 4 -195 450 206 -452
		mu 0 4 227 226 240 241
		f 4 -196 451 207 -453
		mu 0 4 228 227 241 242
		f 4 -197 452 208 -454
		mu 0 4 229 228 242 243
		f 4 -198 453 209 -455
		mu 0 4 230 229 243 244
		f 4 -199 454 210 -456
		mu 0 4 231 230 244 245
		f 4 -200 455 211 -457
		mu 0 4 232 231 245 246
		f 4 -201 456 212 -458
		mu 0 4 233 232 246 247
		f 4 -202 457 213 -459
		mu 0 4 234 233 247 248
		f 4 -203 458 214 -460
		mu 0 4 235 234 248 249
		f 4 -204 460 215 -449
		mu 0 4 237 236 250 251
		f 4 -205 461 216 -463
		mu 0 4 239 238 252 253
		f 4 -206 462 217 -464
		mu 0 4 240 239 253 254
		f 4 -207 463 218 -465
		mu 0 4 241 240 254 255
		f 4 -208 464 219 -466
		mu 0 4 242 241 255 256
		f 4 -209 465 220 -467
		mu 0 4 243 242 256 257
		f 4 -210 466 221 -468
		mu 0 4 244 243 257 258
		f 4 -211 467 222 -469
		mu 0 4 245 244 258 259
		f 4 -212 468 223 -470
		mu 0 4 246 245 259 260
		f 4 -213 469 224 -471
		mu 0 4 247 246 260 261
		f 4 -214 470 225 -472
		mu 0 4 248 247 261 262
		f 4 -215 471 226 -473
		mu 0 4 249 248 262 263
		f 4 -216 473 227 -462
		mu 0 4 251 250 264 265
		f 4 -217 474 228 -476
		mu 0 4 253 252 266 267
		f 4 -218 475 229 -477
		mu 0 4 254 253 267 268
		f 4 -219 476 230 -478
		mu 0 4 255 254 268 269
		f 4 -220 477 231 -479
		mu 0 4 256 255 269 270
		f 4 -221 478 232 -480
		mu 0 4 257 256 270 271
		f 4 -222 479 233 -481
		mu 0 4 258 257 271 272
		f 4 -223 480 234 -482
		mu 0 4 259 258 272 273
		f 4 -224 481 235 -483
		mu 0 4 260 259 273 274
		f 4 -225 482 236 -484
		mu 0 4 261 260 274 275
		f 4 -226 483 237 -485
		mu 0 4 262 261 275 276
		f 4 -227 484 238 -486
		mu 0 4 263 262 276 277
		f 4 -228 486 239 -475
		mu 0 4 265 264 278 279
		f 4 -229 487 0 -489
		mu 0 4 267 266 280 281
		f 4 -230 488 1 -490
		mu 0 4 268 267 281 282
		f 4 -231 489 2 -491
		mu 0 4 269 268 282 283
		f 4 -232 490 3 -492
		mu 0 4 270 269 283 284
		f 4 -233 491 4 -493
		mu 0 4 271 270 284 285
		f 4 -234 492 5 -494
		mu 0 4 272 271 285 286
		f 4 -235 493 6 -495
		mu 0 4 273 272 286 287
		f 4 -236 494 7 -496
		mu 0 4 274 273 287 288
		f 4 -237 495 8 -497
		mu 0 4 275 274 288 289
		f 4 -238 496 9 -498
		mu 0 4 276 275 289 290
		f 4 -239 497 10 -499
		mu 0 4 277 276 290 291
		f 4 -240 499 11 -488
		mu 0 4 279 278 292 293
		f 4 -501 740 512 -742
		mu 0 4 294 295 296 297
		f 4 -502 741 513 -743
		mu 0 4 298 294 297 299
		f 4 -503 742 514 -744
		mu 0 4 300 298 299 301
		f 4 -504 743 515 -745
		mu 0 4 302 300 301 303
		f 4 -505 744 516 -746
		mu 0 4 304 302 303 305
		f 4 -506 745 517 -747
		mu 0 4 306 304 305 307
		f 4 -507 746 518 -748
		mu 0 4 308 306 307 309
		f 4 -508 747 519 -749
		mu 0 4 310 308 309 311
		f 4 -509 748 520 -750
		mu 0 4 312 310 311 313
		f 4 -510 749 521 -751
		mu 0 4 314 312 313 315
		f 4 -511 750 522 -752
		mu 0 4 316 314 315 317
		f 4 -512 751 523 -753
		mu 0 4 318 316 317 319
		f 4 -513 753 524 -755
		mu 0 4 297 296 320 321
		f 4 -514 754 525 -756
		mu 0 4 299 297 321 322
		f 4 -515 755 526 -757
		mu 0 4 301 299 322 323
		f 4 -516 756 527 -758
		mu 0 4 303 301 323 324
		f 4 -517 757 528 -759
		mu 0 4 305 303 324 325
		f 4 -518 758 529 -760
		mu 0 4 307 305 325 326
		f 4 -519 759 530 -761
		mu 0 4 309 307 326 327
		f 4 -520 760 531 -762
		mu 0 4 311 309 327 328
		f 4 -521 761 532 -763
		mu 0 4 313 311 328 329
		f 4 -522 762 533 -764
		mu 0 4 315 313 329 330
		f 4 -523 763 534 -765
		mu 0 4 317 315 330 331
		f 4 -524 764 535 -766
		mu 0 4 319 317 331 332
		f 4 -525 766 536 -768
		mu 0 4 321 320 333 334
		f 4 -526 767 537 -769
		mu 0 4 322 321 334 335
		f 4 -527 768 538 -770
		mu 0 4 323 322 335 336
		f 4 -528 769 539 -771
		mu 0 4 324 323 336 337
		f 4 -529 770 540 -772
		mu 0 4 325 324 337 338
		f 4 -530 771 541 -773
		mu 0 4 326 325 338 339
		f 4 -531 772 542 -774
		mu 0 4 327 326 339 340
		f 4 -532 773 543 -775
		mu 0 4 328 327 340 341
		f 4 -533 774 544 -776
		mu 0 4 329 328 341 342
		f 4 -534 775 545 -777
		mu 0 4 330 329 342 343
		f 4 -535 776 546 -778
		mu 0 4 331 330 343 344
		f 4 -536 777 547 -779
		mu 0 4 332 331 344 345
		f 4 -537 779 548 -781
		mu 0 4 334 333 346 347
		f 4 -538 780 549 -782
		mu 0 4 335 334 347 348
		f 4 -539 781 550 -783
		mu 0 4 336 335 348 349
		f 4 -540 782 551 -784
		mu 0 4 337 336 349 350
		f 4 -541 783 552 -785
		mu 0 4 338 337 350 351
		f 4 -542 784 553 -786
		mu 0 4 339 338 351 352
		f 4 -543 785 554 -787
		mu 0 4 340 339 352 353
		f 4 -544 786 555 -788
		mu 0 4 341 340 353 354
		f 4 -545 787 556 -789
		mu 0 4 342 341 354 355
		f 4 -546 788 557 -790
		mu 0 4 343 342 355 356
		f 4 -547 789 558 -791
		mu 0 4 344 343 356 357
		f 4 -548 790 559 -792
		mu 0 4 345 344 357 358
		f 4 -549 792 560 -794
		mu 0 4 347 346 359 360
		f 4 -550 793 561 -795
		mu 0 4 348 347 360 361
		f 4 -551 794 562 -796
		mu 0 4 349 348 361 362
		f 4 -552 795 563 -797
		mu 0 4 350 349 362 363
		f 4 -553 796 564 -798
		mu 0 4 351 350 363 364
		f 4 -554 797 565 -799
		mu 0 4 352 351 364 365
		f 4 -555 798 566 -800
		mu 0 4 353 352 365 366
		f 4 -556 799 567 -801
		mu 0 4 354 353 366 367
		f 4 -557 800 568 -802
		mu 0 4 355 354 367 368
		f 4 -558 801 569 -803
		mu 0 4 356 355 368 369
		f 4 -559 802 570 -804
		mu 0 4 357 356 369 370
		f 4 -560 803 571 -805
		mu 0 4 358 357 370 371
		f 4 -561 805 572 -807
		mu 0 4 360 359 372 373
		f 4 -562 806 573 -808
		mu 0 4 361 360 373 374
		f 4 -563 807 574 -809
		mu 0 4 362 361 374 375
		f 4 -564 808 575 -810
		mu 0 4 363 362 375 376
		f 4 -565 809 576 -811
		mu 0 4 364 363 376 377
		f 4 -566 810 577 -812
		mu 0 4 365 364 377 378
		f 4 -567 811 578 -813
		mu 0 4 366 365 378 379
		f 4 -568 812 579 -814
		mu 0 4 367 366 379 380
		f 4 -569 813 580 -815
		mu 0 4 368 367 380 381
		f 4 -570 814 581 -816
		mu 0 4 369 368 381 382
		f 4 -571 815 582 -817
		mu 0 4 370 369 382 383
		f 4 -572 816 583 -818
		mu 0 4 371 370 383 384
		f 4 -573 818 584 -820
		mu 0 4 373 372 385 386
		f 4 -574 819 585 -821
		mu 0 4 374 373 386 387
		f 4 -575 820 586 -822
		mu 0 4 375 374 387 388
		f 4 -576 821 587 -823
		mu 0 4 376 375 388 389
		f 4 -577 822 588 -824
		mu 0 4 377 376 389 390
		f 4 -578 823 589 -825
		mu 0 4 378 377 390 391
		f 4 -579 824 590 -826
		mu 0 4 379 378 391 392
		f 4 -580 825 591 -827
		mu 0 4 380 379 392 393
		f 4 -581 826 592 -828
		mu 0 4 381 380 393 394
		f 4 -582 827 593 -829
		mu 0 4 382 381 394 395
		f 4 -583 828 594 -830
		mu 0 4 383 382 395 396
		f 4 -584 829 595 -831
		mu 0 4 384 383 396 397
		f 4 -585 831 596 -833
		mu 0 4 386 385 398 399
		f 4 -586 832 597 -834
		mu 0 4 387 386 399 400
		f 4 -587 833 598 -835
		mu 0 4 388 387 400 401
		f 4 -588 834 599 -836
		mu 0 4 389 388 401 402
		f 4 -589 835 600 -837
		mu 0 4 390 389 402 403
		f 4 -590 836 601 -838
		mu 0 4 391 390 403 404
		f 4 -591 837 602 -839
		mu 0 4 392 391 404 405
		f 4 -592 838 603 -840
		mu 0 4 393 392 405 406
		f 4 -593 839 604 -841
		mu 0 4 394 393 406 407
		f 4 -594 840 605 -842
		mu 0 4 395 394 407 408
		f 4 -595 841 606 -843
		mu 0 4 396 395 408 409
		f 4 -596 842 607 -844
		mu 0 4 397 396 409 410
		f 4 -597 844 608 -846
		mu 0 4 399 398 411 412
		f 4 -598 845 609 -847
		mu 0 4 400 399 412 413
		f 4 -599 846 610 -848
		mu 0 4 401 400 413 414
		f 4 -600 847 611 -849
		mu 0 4 402 401 414 415
		f 4 -601 848 612 -850
		mu 0 4 403 402 415 416
		f 4 -602 849 613 -851
		mu 0 4 404 403 416 417
		f 4 -603 850 614 -852
		mu 0 4 405 404 417 418
		f 4 -604 851 615 -853
		mu 0 4 406 405 418 419
		f 4 -605 852 616 -854
		mu 0 4 407 406 419 420
		f 4 -606 853 617 -855
		mu 0 4 408 407 420 421
		f 4 -607 854 618 -856
		mu 0 4 409 408 421 422
		f 4 -608 855 619 -857
		mu 0 4 410 409 422 423
		f 4 -609 857 620 -859
		mu 0 4 412 411 424 425
		f 4 -610 858 621 -860
		mu 0 4 413 412 425 426
		f 4 -611 859 622 -861
		mu 0 4 414 413 426 427
		f 4 -612 860 623 -862
		mu 0 4 415 414 427 428
		f 4 -613 861 624 -863
		mu 0 4 416 415 428 429
		f 4 -614 862 625 -864
		mu 0 4 417 416 429 430
		f 4 -615 863 626 -865
		mu 0 4 418 417 430 431
		f 4 -616 864 627 -866
		mu 0 4 419 418 431 432
		f 4 -617 865 628 -867
		mu 0 4 420 419 432 433
		f 4 -618 866 629 -868
		mu 0 4 421 420 433 434
		f 4 -619 867 630 -869
		mu 0 4 422 421 434 435
		f 4 -620 868 631 -870
		mu 0 4 423 422 435 436
		f 4 -621 870 632 -872
		mu 0 4 425 424 437 438
		f 4 -622 871 633 -873
		mu 0 4 426 425 438 439
		f 4 -623 872 634 -874
		mu 0 4 427 426 439 440
		f 4 -624 873 635 -875
		mu 0 4 428 427 440 441
		f 4 -625 874 636 -876
		mu 0 4 429 428 441 442
		f 4 -626 875 637 -877
		mu 0 4 430 429 442 443
		f 4 -627 876 638 -878
		mu 0 4 431 430 443 444
		f 4 -628 877 639 -879
		mu 0 4 432 431 444 445
		f 4 -629 878 640 -880
		mu 0 4 433 432 445 446
		f 4 -630 879 641 -881
		mu 0 4 434 433 446 447
		f 4 -631 880 642 -882
		mu 0 4 435 434 447 448
		f 4 -632 881 643 -883
		mu 0 4 436 435 448 449
		f 4 -633 883 644 -885
		mu 0 4 438 437 450 451
		f 4 -634 884 645 -886
		mu 0 4 439 438 451 452
		f 4 -635 885 646 -887
		mu 0 4 440 439 452 453
		f 4 -636 886 647 -888
		mu 0 4 441 440 453 454
		f 4 -637 887 648 -889
		mu 0 4 442 441 454 455
		f 4 -638 888 649 -890
		mu 0 4 443 442 455 456
		f 4 -639 889 650 -891
		mu 0 4 444 443 456 457
		f 4 -640 890 651 -892
		mu 0 4 445 444 457 458
		f 4 -641 891 652 -893
		mu 0 4 446 445 458 459
		f 4 -642 892 653 -894
		mu 0 4 447 446 459 460
		f 4 -643 893 654 -895
		mu 0 4 448 447 460 461
		f 4 -644 894 655 -896
		mu 0 4 449 448 461 462
		f 4 -645 896 656 -898
		mu 0 4 451 450 463 464
		f 4 -646 897 657 -899
		mu 0 4 452 451 464 465
		f 4 -647 898 658 -900
		mu 0 4 453 452 465 466
		f 4 -648 899 659 -901
		mu 0 4 454 453 466 467
		f 4 -649 900 660 -902
		mu 0 4 455 454 467 468
		f 4 -650 901 661 -903
		mu 0 4 456 455 468 469
		f 4 -651 902 662 -904
		mu 0 4 457 456 469 470
		f 4 -652 903 663 -905
		mu 0 4 458 457 470 471
		f 4 -653 904 664 -906
		mu 0 4 459 458 471 472
		f 4 -654 905 665 -907
		mu 0 4 460 459 472 473
		f 4 -655 906 666 -908
		mu 0 4 461 460 473 474
		f 4 -656 907 667 -909
		mu 0 4 462 461 474 475
		f 4 -657 909 668 -911
		mu 0 4 464 463 476 477
		f 4 -658 910 669 -912
		mu 0 4 465 464 477 478
		f 4 -659 911 670 -913
		mu 0 4 466 465 478 479
		f 4 -660 912 671 -914
		mu 0 4 467 466 479 480
		f 4 -661 913 672 -915
		mu 0 4 468 467 480 481
		f 4 -662 914 673 -916
		mu 0 4 469 468 481 482
		f 4 -663 915 674 -917
		mu 0 4 470 469 482 483
		f 4 -664 916 675 -918
		mu 0 4 471 470 483 484
		f 4 -665 917 676 -919
		mu 0 4 472 471 484 485
		f 4 -666 918 677 -920
		mu 0 4 473 472 485 486
		f 4 -667 919 678 -921
		mu 0 4 474 473 486 487
		f 4 -668 920 679 -922
		mu 0 4 475 474 487 488
		f 4 -669 922 680 -924
		mu 0 4 477 476 489 490
		f 4 -670 923 681 -925
		mu 0 4 478 477 490 491
		f 4 -671 924 682 -926
		mu 0 4 479 478 491 492
		f 4 -672 925 683 -927
		mu 0 4 480 479 492 493
		f 4 -673 926 684 -928
		mu 0 4 481 480 493 494
		f 4 -674 927 685 -929
		mu 0 4 482 481 494 495
		f 4 -675 928 686 -930
		mu 0 4 483 482 495 496
		f 4 -676 929 687 -931
		mu 0 4 484 483 496 497
		f 4 -677 930 688 -932
		mu 0 4 485 484 497 498
		f 4 -678 931 689 -933
		mu 0 4 486 485 498 499
		f 4 -679 932 690 -934
		mu 0 4 487 486 499 500
		f 4 -680 933 691 -935
		mu 0 4 488 487 500 501
		f 4 -681 935 692 -937
		mu 0 4 490 489 502 503
		f 4 -682 936 693 -938
		mu 0 4 491 490 503 504
		f 4 -683 937 694 -939
		mu 0 4 492 491 504 505
		f 4 -684 938 695 -940
		mu 0 4 493 492 505 506
		f 4 -685 939 696 -941
		mu 0 4 494 493 506 507
		f 4 -686 940 697 -942
		mu 0 4 495 494 507 508
		f 4 -687 941 698 -943
		mu 0 4 496 495 508 509
		f 4 -688 942 699 -944
		mu 0 4 497 496 509 510
		f 4 -689 943 700 -945
		mu 0 4 498 497 510 511
		f 4 -690 944 701 -946
		mu 0 4 499 498 511 512
		f 4 -691 945 702 -947
		mu 0 4 500 499 512 513
		f 4 -692 946 703 -948
		mu 0 4 501 500 513 514
		f 4 -693 948 704 -950
		mu 0 4 503 502 515 516
		f 4 -694 949 705 -951
		mu 0 4 504 503 516 517
		f 4 -695 950 706 -952
		mu 0 4 505 504 517 518
		f 4 -696 951 707 -953
		mu 0 4 506 505 518 519
		f 4 -697 952 708 -954
		mu 0 4 507 506 519 520
		f 4 -698 953 709 -955
		mu 0 4 508 507 520 521
		f 4 -699 954 710 -956
		mu 0 4 509 508 521 522
		f 4 -700 955 711 -957
		mu 0 4 510 509 522 523
		f 4 -701 956 712 -958
		mu 0 4 511 510 523 524
		f 4 -702 957 713 -959
		mu 0 4 512 511 524 525
		f 4 -703 958 714 -960
		mu 0 4 513 512 525 526
		f 4 -704 959 715 -961
		mu 0 4 514 513 526 527
		f 4 -705 961 716 -963
		mu 0 4 516 515 528 529
		f 4 -706 962 717 -964
		mu 0 4 517 516 529 530
		f 4 -707 963 718 -965
		mu 0 4 518 517 530 531
		f 4 -708 964 719 -966
		mu 0 4 519 518 531 532
		f 4 -709 965 720 -967
		mu 0 4 520 519 532 533
		f 4 -710 966 721 -968
		mu 0 4 521 520 533 534
		f 4 -711 967 722 -969
		mu 0 4 522 521 534 535
		f 4 -712 968 723 -970
		mu 0 4 523 522 535 536
		f 4 -713 969 724 -971
		mu 0 4 524 523 536 537
		f 4 -714 970 725 -972
		mu 0 4 525 524 537 538
		f 4 -715 971 726 -973
		mu 0 4 526 525 538 539
		f 4 -716 972 727 -974
		mu 0 4 527 526 539 540
		f 4 -717 974 728 -976
		mu 0 4 529 528 541 542
		f 4 -718 975 729 -977
		mu 0 4 530 529 542 543
		f 4 -719 976 730 -978
		mu 0 4 531 530 543 544
		f 4 -720 977 731 -979
		mu 0 4 532 531 544 545
		f 4 -721 978 732 -980
		mu 0 4 533 532 545 546
		f 4 -722 979 733 -981
		mu 0 4 534 533 546 547
		f 4 -723 980 734 -982
		mu 0 4 535 534 547 548
		f 4 -724 981 735 -983
		mu 0 4 536 535 548 549
		f 4 -725 982 736 -984
		mu 0 4 537 536 549 550
		f 4 -726 983 737 -985
		mu 0 4 538 537 550 551
		f 4 -727 984 738 -986
		mu 0 4 539 538 551 552
		f 4 -728 985 739 -987
		mu 0 4 540 539 552 553
		f 4 -729 987 500 -989
		mu 0 4 542 541 554 555
		f 4 -730 988 501 -990
		mu 0 4 543 542 555 556
		f 4 -731 989 502 -991
		mu 0 4 544 543 556 557
		f 4 -732 990 503 -992
		mu 0 4 545 544 557 558
		f 4 -733 991 504 -993
		mu 0 4 546 545 558 559
		f 4 -734 992 505 -994
		mu 0 4 547 546 559 560
		f 4 -735 993 506 -995
		mu 0 4 548 547 560 561
		f 4 -736 994 507 -996
		mu 0 4 549 548 561 562
		f 4 -737 995 508 -997
		mu 0 4 550 549 562 563
		f 4 -738 996 509 -998
		mu 0 4 551 550 563 564
		f 4 -739 997 510 -999
		mu 0 4 552 551 564 565
		f 4 -740 998 511 -1000
		mu 0 4 553 552 565 566
		f 4 -1001 1240 1012 -1242
		mu 0 4 567 568 569 570
		f 4 -1002 1241 1013 -1243
		mu 0 4 571 567 570 572
		f 4 -1003 1242 1014 -1244
		mu 0 4 573 571 572 574
		f 4 -1004 1243 1015 -1245
		mu 0 4 575 573 574 576
		f 4 -1005 1244 1016 -1246
		mu 0 4 577 575 576 578
		f 4 -1006 1245 1017 -1247
		mu 0 4 579 577 578 580
		f 4 -1007 1246 1018 -1248
		mu 0 4 581 579 580 582
		f 4 -1008 1247 1019 -1249
		mu 0 4 583 581 582 584
		f 4 -1009 1248 1020 -1250
		mu 0 4 585 583 584 586
		f 4 -1010 1249 1021 -1251
		mu 0 4 587 585 586 588
		f 4 -1011 1250 1022 -1252
		mu 0 4 589 587 588 590
		f 4 -1012 1251 1023 -1253
		mu 0 4 591 589 590 592
		f 4 -1013 1253 1024 -1255
		mu 0 4 570 569 593 594
		f 4 -1014 1254 1025 -1256
		mu 0 4 572 570 594 595
		f 4 -1015 1255 1026 -1257
		mu 0 4 574 572 595 596
		f 4 -1016 1256 1027 -1258
		mu 0 4 576 574 596 597
		f 4 -1017 1257 1028 -1259
		mu 0 4 578 576 597 598
		f 4 -1018 1258 1029 -1260
		mu 0 4 580 578 598 599
		f 4 -1019 1259 1030 -1261
		mu 0 4 582 580 599 600
		f 4 -1020 1260 1031 -1262
		mu 0 4 584 582 600 601;
	setAttr ".fc[500:999]"
		f 4 -1021 1261 1032 -1263
		mu 0 4 586 584 601 602
		f 4 -1022 1262 1033 -1264
		mu 0 4 588 586 602 603
		f 4 -1023 1263 1034 -1265
		mu 0 4 590 588 603 604
		f 4 -1024 1264 1035 -1266
		mu 0 4 592 590 604 605
		f 4 -1025 1266 1036 -1268
		mu 0 4 594 593 606 607
		f 4 -1026 1267 1037 -1269
		mu 0 4 595 594 607 608
		f 4 -1027 1268 1038 -1270
		mu 0 4 596 595 608 609
		f 4 -1028 1269 1039 -1271
		mu 0 4 597 596 609 610
		f 4 -1029 1270 1040 -1272
		mu 0 4 598 597 610 611
		f 4 -1030 1271 1041 -1273
		mu 0 4 599 598 611 612
		f 4 -1031 1272 1042 -1274
		mu 0 4 600 599 612 613
		f 4 -1032 1273 1043 -1275
		mu 0 4 601 600 613 614
		f 4 -1033 1274 1044 -1276
		mu 0 4 602 601 614 615
		f 4 -1034 1275 1045 -1277
		mu 0 4 603 602 615 616
		f 4 -1035 1276 1046 -1278
		mu 0 4 604 603 616 617
		f 4 -1036 1277 1047 -1279
		mu 0 4 605 604 617 618
		f 4 -1037 1279 1048 -1281
		mu 0 4 607 606 619 620
		f 4 -1038 1280 1049 -1282
		mu 0 4 608 607 620 621
		f 4 -1039 1281 1050 -1283
		mu 0 4 609 608 621 622
		f 4 -1040 1282 1051 -1284
		mu 0 4 610 609 622 623
		f 4 -1041 1283 1052 -1285
		mu 0 4 611 610 623 624
		f 4 -1042 1284 1053 -1286
		mu 0 4 612 611 624 625
		f 4 -1043 1285 1054 -1287
		mu 0 4 613 612 625 626
		f 4 -1044 1286 1055 -1288
		mu 0 4 614 613 626 627
		f 4 -1045 1287 1056 -1289
		mu 0 4 615 614 627 628
		f 4 -1046 1288 1057 -1290
		mu 0 4 616 615 628 629
		f 4 -1047 1289 1058 -1291
		mu 0 4 617 616 629 630
		f 4 -1048 1290 1059 -1292
		mu 0 4 618 617 630 631
		f 4 -1049 1292 1060 -1294
		mu 0 4 620 619 632 633
		f 4 -1050 1293 1061 -1295
		mu 0 4 621 620 633 634
		f 4 -1051 1294 1062 -1296
		mu 0 4 622 621 634 635
		f 4 -1052 1295 1063 -1297
		mu 0 4 623 622 635 636
		f 4 -1053 1296 1064 -1298
		mu 0 4 624 623 636 637
		f 4 -1054 1297 1065 -1299
		mu 0 4 625 624 637 638
		f 4 -1055 1298 1066 -1300
		mu 0 4 626 625 638 639
		f 4 -1056 1299 1067 -1301
		mu 0 4 627 626 639 640
		f 4 -1057 1300 1068 -1302
		mu 0 4 628 627 640 641
		f 4 -1058 1301 1069 -1303
		mu 0 4 629 628 641 642
		f 4 -1059 1302 1070 -1304
		mu 0 4 630 629 642 643
		f 4 -1060 1303 1071 -1305
		mu 0 4 631 630 643 644
		f 4 -1061 1305 1072 -1307
		mu 0 4 633 632 645 646
		f 4 -1062 1306 1073 -1308
		mu 0 4 634 633 646 647
		f 4 -1063 1307 1074 -1309
		mu 0 4 635 634 647 648
		f 4 -1064 1308 1075 -1310
		mu 0 4 636 635 648 649
		f 4 -1065 1309 1076 -1311
		mu 0 4 637 636 649 650
		f 4 -1066 1310 1077 -1312
		mu 0 4 638 637 650 651
		f 4 -1067 1311 1078 -1313
		mu 0 4 639 638 651 652
		f 4 -1068 1312 1079 -1314
		mu 0 4 640 639 652 653
		f 4 -1069 1313 1080 -1315
		mu 0 4 641 640 653 654
		f 4 -1070 1314 1081 -1316
		mu 0 4 642 641 654 655
		f 4 -1071 1315 1082 -1317
		mu 0 4 643 642 655 656
		f 4 -1072 1316 1083 -1318
		mu 0 4 644 643 656 657
		f 4 -1073 1318 1084 -1320
		mu 0 4 646 645 658 659
		f 4 -1074 1319 1085 -1321
		mu 0 4 647 646 659 660
		f 4 -1075 1320 1086 -1322
		mu 0 4 648 647 660 661
		f 4 -1076 1321 1087 -1323
		mu 0 4 649 648 661 662
		f 4 -1077 1322 1088 -1324
		mu 0 4 650 649 662 663
		f 4 -1078 1323 1089 -1325
		mu 0 4 651 650 663 664
		f 4 -1079 1324 1090 -1326
		mu 0 4 652 651 664 665
		f 4 -1080 1325 1091 -1327
		mu 0 4 653 652 665 666
		f 4 -1081 1326 1092 -1328
		mu 0 4 654 653 666 667
		f 4 -1082 1327 1093 -1329
		mu 0 4 655 654 667 668
		f 4 -1083 1328 1094 -1330
		mu 0 4 656 655 668 669
		f 4 -1084 1329 1095 -1331
		mu 0 4 657 656 669 670
		f 4 -1085 1331 1096 -1333
		mu 0 4 659 658 671 672
		f 4 -1086 1332 1097 -1334
		mu 0 4 660 659 672 673
		f 4 -1087 1333 1098 -1335
		mu 0 4 661 660 673 674
		f 4 -1088 1334 1099 -1336
		mu 0 4 662 661 674 675
		f 4 -1089 1335 1100 -1337
		mu 0 4 663 662 675 676
		f 4 -1090 1336 1101 -1338
		mu 0 4 664 663 676 677
		f 4 -1091 1337 1102 -1339
		mu 0 4 665 664 677 678
		f 4 -1092 1338 1103 -1340
		mu 0 4 666 665 678 679
		f 4 -1093 1339 1104 -1341
		mu 0 4 667 666 679 680
		f 4 -1094 1340 1105 -1342
		mu 0 4 668 667 680 681
		f 4 -1095 1341 1106 -1343
		mu 0 4 669 668 681 682
		f 4 -1096 1342 1107 -1344
		mu 0 4 670 669 682 683
		f 4 -1097 1344 1108 -1346
		mu 0 4 672 671 684 685
		f 4 -1098 1345 1109 -1347
		mu 0 4 673 672 685 686
		f 4 -1099 1346 1110 -1348
		mu 0 4 674 673 686 687
		f 4 -1100 1347 1111 -1349
		mu 0 4 675 674 687 688
		f 4 -1101 1348 1112 -1350
		mu 0 4 676 675 688 689
		f 4 -1102 1349 1113 -1351
		mu 0 4 677 676 689 690
		f 4 -1103 1350 1114 -1352
		mu 0 4 678 677 690 691
		f 4 -1104 1351 1115 -1353
		mu 0 4 679 678 691 692
		f 4 -1105 1352 1116 -1354
		mu 0 4 680 679 692 693
		f 4 -1106 1353 1117 -1355
		mu 0 4 681 680 693 694
		f 4 -1107 1354 1118 -1356
		mu 0 4 682 681 694 695
		f 4 -1108 1355 1119 -1357
		mu 0 4 683 682 695 696
		f 4 -1109 1357 1120 -1359
		mu 0 4 685 684 697 698
		f 4 -1110 1358 1121 -1360
		mu 0 4 686 685 698 699
		f 4 -1111 1359 1122 -1361
		mu 0 4 687 686 699 700
		f 4 -1112 1360 1123 -1362
		mu 0 4 688 687 700 701
		f 4 -1113 1361 1124 -1363
		mu 0 4 689 688 701 702
		f 4 -1114 1362 1125 -1364
		mu 0 4 690 689 702 703
		f 4 -1115 1363 1126 -1365
		mu 0 4 691 690 703 704
		f 4 -1116 1364 1127 -1366
		mu 0 4 692 691 704 705
		f 4 -1117 1365 1128 -1367
		mu 0 4 693 692 705 706
		f 4 -1118 1366 1129 -1368
		mu 0 4 694 693 706 707
		f 4 -1119 1367 1130 -1369
		mu 0 4 695 694 707 708
		f 4 -1120 1368 1131 -1370
		mu 0 4 696 695 708 709
		f 4 -1121 1370 1132 -1372
		mu 0 4 698 697 710 711
		f 4 -1122 1371 1133 -1373
		mu 0 4 699 698 711 712
		f 4 -1123 1372 1134 -1374
		mu 0 4 700 699 712 713
		f 4 -1124 1373 1135 -1375
		mu 0 4 701 700 713 714
		f 4 -1125 1374 1136 -1376
		mu 0 4 702 701 714 715
		f 4 -1126 1375 1137 -1377
		mu 0 4 703 702 715 716
		f 4 -1127 1376 1138 -1378
		mu 0 4 704 703 716 717
		f 4 -1128 1377 1139 -1379
		mu 0 4 705 704 717 718
		f 4 -1129 1378 1140 -1380
		mu 0 4 706 705 718 719
		f 4 -1130 1379 1141 -1381
		mu 0 4 707 706 719 720
		f 4 -1131 1380 1142 -1382
		mu 0 4 708 707 720 721
		f 4 -1132 1381 1143 -1383
		mu 0 4 709 708 721 722
		f 4 -1133 1383 1144 -1385
		mu 0 4 711 710 723 724
		f 4 -1134 1384 1145 -1386
		mu 0 4 712 711 724 725
		f 4 -1135 1385 1146 -1387
		mu 0 4 713 712 725 726
		f 4 -1136 1386 1147 -1388
		mu 0 4 714 713 726 727
		f 4 -1137 1387 1148 -1389
		mu 0 4 715 714 727 728
		f 4 -1138 1388 1149 -1390
		mu 0 4 716 715 728 729
		f 4 -1139 1389 1150 -1391
		mu 0 4 717 716 729 730
		f 4 -1140 1390 1151 -1392
		mu 0 4 718 717 730 731
		f 4 -1141 1391 1152 -1393
		mu 0 4 719 718 731 732
		f 4 -1142 1392 1153 -1394
		mu 0 4 720 719 732 733
		f 4 -1143 1393 1154 -1395
		mu 0 4 721 720 733 734
		f 4 -1144 1394 1155 -1396
		mu 0 4 722 721 734 735
		f 4 -1145 1396 1156 -1398
		mu 0 4 724 723 736 737
		f 4 -1146 1397 1157 -1399
		mu 0 4 725 724 737 738
		f 4 -1147 1398 1158 -1400
		mu 0 4 726 725 738 739
		f 4 -1148 1399 1159 -1401
		mu 0 4 727 726 739 740
		f 4 -1149 1400 1160 -1402
		mu 0 4 728 727 740 741
		f 4 -1150 1401 1161 -1403
		mu 0 4 729 728 741 742
		f 4 -1151 1402 1162 -1404
		mu 0 4 730 729 742 743
		f 4 -1152 1403 1163 -1405
		mu 0 4 731 730 743 744
		f 4 -1153 1404 1164 -1406
		mu 0 4 732 731 744 745
		f 4 -1154 1405 1165 -1407
		mu 0 4 733 732 745 746
		f 4 -1155 1406 1166 -1408
		mu 0 4 734 733 746 747
		f 4 -1156 1407 1167 -1409
		mu 0 4 735 734 747 748
		f 4 -1157 1409 1168 -1411
		mu 0 4 737 736 749 750
		f 4 -1158 1410 1169 -1412
		mu 0 4 738 737 750 751
		f 4 -1159 1411 1170 -1413
		mu 0 4 739 738 751 752
		f 4 -1160 1412 1171 -1414
		mu 0 4 740 739 752 753
		f 4 -1161 1413 1172 -1415
		mu 0 4 741 740 753 754
		f 4 -1162 1414 1173 -1416
		mu 0 4 742 741 754 755
		f 4 -1163 1415 1174 -1417
		mu 0 4 743 742 755 756
		f 4 -1164 1416 1175 -1418
		mu 0 4 744 743 756 757
		f 4 -1165 1417 1176 -1419
		mu 0 4 745 744 757 758
		f 4 -1166 1418 1177 -1420
		mu 0 4 746 745 758 759
		f 4 -1167 1419 1178 -1421
		mu 0 4 747 746 759 760
		f 4 -1168 1420 1179 -1422
		mu 0 4 748 747 760 761
		f 4 -1169 1422 1180 -1424
		mu 0 4 750 749 762 763
		f 4 -1170 1423 1181 -1425
		mu 0 4 751 750 763 764
		f 4 -1171 1424 1182 -1426
		mu 0 4 752 751 764 765
		f 4 -1172 1425 1183 -1427
		mu 0 4 753 752 765 766
		f 4 -1173 1426 1184 -1428
		mu 0 4 754 753 766 767
		f 4 -1174 1427 1185 -1429
		mu 0 4 755 754 767 768
		f 4 -1175 1428 1186 -1430
		mu 0 4 756 755 768 769
		f 4 -1176 1429 1187 -1431
		mu 0 4 757 756 769 770
		f 4 -1177 1430 1188 -1432
		mu 0 4 758 757 770 771
		f 4 -1178 1431 1189 -1433
		mu 0 4 759 758 771 772
		f 4 -1179 1432 1190 -1434
		mu 0 4 760 759 772 773
		f 4 -1180 1433 1191 -1435
		mu 0 4 761 760 773 774
		f 4 -1181 1435 1192 -1437
		mu 0 4 763 762 775 776
		f 4 -1182 1436 1193 -1438
		mu 0 4 764 763 776 777
		f 4 -1183 1437 1194 -1439
		mu 0 4 765 764 777 778
		f 4 -1184 1438 1195 -1440
		mu 0 4 766 765 778 779
		f 4 -1185 1439 1196 -1441
		mu 0 4 767 766 779 780
		f 4 -1186 1440 1197 -1442
		mu 0 4 768 767 780 781
		f 4 -1187 1441 1198 -1443
		mu 0 4 769 768 781 782
		f 4 -1188 1442 1199 -1444
		mu 0 4 770 769 782 783
		f 4 -1189 1443 1200 -1445
		mu 0 4 771 770 783 784
		f 4 -1190 1444 1201 -1446
		mu 0 4 772 771 784 785
		f 4 -1191 1445 1202 -1447
		mu 0 4 773 772 785 786
		f 4 -1192 1446 1203 -1448
		mu 0 4 774 773 786 787
		f 4 -1193 1448 1204 -1450
		mu 0 4 776 775 788 789
		f 4 -1194 1449 1205 -1451
		mu 0 4 777 776 789 790
		f 4 -1195 1450 1206 -1452
		mu 0 4 778 777 790 791
		f 4 -1196 1451 1207 -1453
		mu 0 4 779 778 791 792
		f 4 -1197 1452 1208 -1454
		mu 0 4 780 779 792 793
		f 4 -1198 1453 1209 -1455
		mu 0 4 781 780 793 794
		f 4 -1199 1454 1210 -1456
		mu 0 4 782 781 794 795
		f 4 -1200 1455 1211 -1457
		mu 0 4 783 782 795 796
		f 4 -1201 1456 1212 -1458
		mu 0 4 784 783 796 797
		f 4 -1202 1457 1213 -1459
		mu 0 4 785 784 797 798
		f 4 -1203 1458 1214 -1460
		mu 0 4 786 785 798 799
		f 4 -1204 1459 1215 -1461
		mu 0 4 787 786 799 800
		f 4 -1205 1461 1216 -1463
		mu 0 4 789 788 801 802
		f 4 -1206 1462 1217 -1464
		mu 0 4 790 789 802 803
		f 4 -1207 1463 1218 -1465
		mu 0 4 791 790 803 804
		f 4 -1208 1464 1219 -1466
		mu 0 4 792 791 804 805
		f 4 -1209 1465 1220 -1467
		mu 0 4 793 792 805 806
		f 4 -1210 1466 1221 -1468
		mu 0 4 794 793 806 807
		f 4 -1211 1467 1222 -1469
		mu 0 4 795 794 807 808
		f 4 -1212 1468 1223 -1470
		mu 0 4 796 795 808 809
		f 4 -1213 1469 1224 -1471
		mu 0 4 797 796 809 810
		f 4 -1214 1470 1225 -1472
		mu 0 4 798 797 810 811
		f 4 -1215 1471 1226 -1473
		mu 0 4 799 798 811 812
		f 4 -1216 1472 1227 -1474
		mu 0 4 800 799 812 813
		f 4 -1217 1474 1228 -1476
		mu 0 4 802 801 814 815
		f 4 -1218 1475 1229 -1477
		mu 0 4 803 802 815 816
		f 4 -1219 1476 1230 -1478
		mu 0 4 804 803 816 817
		f 4 -1220 1477 1231 -1479
		mu 0 4 805 804 817 818
		f 4 -1221 1478 1232 -1480
		mu 0 4 806 805 818 819
		f 4 -1222 1479 1233 -1481
		mu 0 4 807 806 819 820
		f 4 -1223 1480 1234 -1482
		mu 0 4 808 807 820 821
		f 4 -1224 1481 1235 -1483
		mu 0 4 809 808 821 822
		f 4 -1225 1482 1236 -1484
		mu 0 4 810 809 822 823
		f 4 -1226 1483 1237 -1485
		mu 0 4 811 810 823 824
		f 4 -1227 1484 1238 -1486
		mu 0 4 812 811 824 825
		f 4 -1228 1485 1239 -1487
		mu 0 4 813 812 825 826
		f 4 -1229 1487 1000 -1489
		mu 0 4 815 814 827 828
		f 4 -1230 1488 1001 -1490
		mu 0 4 816 815 828 829
		f 4 -1231 1489 1002 -1491
		mu 0 4 817 816 829 830
		f 4 -1232 1490 1003 -1492
		mu 0 4 818 817 830 831
		f 4 -1233 1491 1004 -1493
		mu 0 4 819 818 831 832
		f 4 -1234 1492 1005 -1494
		mu 0 4 820 819 832 833
		f 4 -1235 1493 1006 -1495
		mu 0 4 821 820 833 834
		f 4 -1236 1494 1007 -1496
		mu 0 4 822 821 834 835
		f 4 -1237 1495 1008 -1497
		mu 0 4 823 822 835 836
		f 4 -1238 1496 1009 -1498
		mu 0 4 824 823 836 837
		f 4 -1239 1497 1010 -1499
		mu 0 4 825 824 837 838
		f 4 -1240 1498 1011 -1500
		mu 0 4 826 825 838 839
		f 4 1882 1881 752 -1881
		mu 0 4 1029 1030 318 319
		f 4 1884 1883 999 -1882
		mu 0 4 1031 1032 553 566
		f 4 1886 1885 986 -1884
		mu 0 4 1032 1033 540 553
		f 4 1888 1887 973 -1886
		mu 0 4 1033 1034 527 540
		f 4 1890 1889 960 -1888
		mu 0 4 1034 1035 514 527
		f 4 1892 1891 947 -1890
		mu 0 4 1035 1036 501 514
		f 4 1894 1893 934 -1892
		mu 0 4 1036 1037 488 501
		f 4 1896 1895 921 -1894
		mu 0 4 1037 1038 475 488
		f 4 1898 1897 908 -1896
		mu 0 4 1038 1039 462 475
		f 4 1900 1899 895 -1898
		mu 0 4 1039 1040 449 462
		f 4 1902 1901 882 -1900
		mu 0 4 1040 1041 436 449
		f 4 1904 1903 869 -1902
		mu 0 4 1041 1042 423 436
		f 4 1906 1905 856 -1904
		mu 0 4 1042 1043 410 423
		f 4 1908 1907 843 -1906
		mu 0 4 1043 1044 397 410
		f 4 1910 1909 830 -1908
		mu 0 4 1044 1045 384 397
		f 4 1912 1911 817 -1910
		mu 0 4 1045 1046 371 384
		f 4 1914 1913 804 -1912
		mu 0 4 1046 1047 358 371
		f 4 1916 1915 791 -1914
		mu 0 4 1047 1048 345 358
		f 4 1918 1917 778 -1916
		mu 0 4 1048 1049 332 345
		f 4 1919 1880 765 -1918
		mu 0 4 1049 1029 319 332
		f 4 -253 1501 -1523 -1501
		mu 0 4 26 12 841 840
		f 4 -500 1502 -1525 -1502
		mu 0 4 292 278 843 842
		f 4 -487 1503 -1527 -1503
		mu 0 4 278 264 844 843
		f 4 -474 1504 -1529 -1504
		mu 0 4 264 250 845 844
		f 4 -461 1505 -1531 -1505
		mu 0 4 250 236 846 845
		f 4 -448 1506 -1533 -1506
		mu 0 4 236 222 847 846
		f 4 -435 1507 -1535 -1507
		mu 0 4 222 208 848 847
		f 4 -422 1508 -1537 -1508
		mu 0 4 208 194 849 848
		f 4 -409 1509 -1539 -1509
		mu 0 4 194 180 850 849
		f 4 -396 1510 -1541 -1510
		mu 0 4 180 166 851 850
		f 4 -383 1511 -1543 -1511
		mu 0 4 166 152 852 851
		f 4 -370 1512 -1545 -1512
		mu 0 4 152 138 853 852
		f 4 -357 1513 -1547 -1513
		mu 0 4 138 124 854 853
		f 4 -344 1514 -1549 -1514
		mu 0 4 124 110 855 854
		f 4 -331 1515 -1551 -1515
		mu 0 4 110 96 856 855
		f 4 -318 1516 -1553 -1516
		mu 0 4 96 82 857 856
		f 4 -305 1517 -1555 -1517
		mu 0 4 82 68 858 857
		f 4 -292 1518 -1557 -1518
		mu 0 4 68 54 859 858
		f 4 -279 1519 -1559 -1519
		mu 0 4 54 40 860 859
		f 4 -266 1500 -1560 -1520
		mu 0 4 40 26 840 860
		f 4 1522 1521 -1563 -1521
		mu 0 4 840 841 862 861
		f 4 1524 1523 -1565 -1522
		mu 0 4 842 843 864 863
		f 4 1526 1525 -1567 -1524
		mu 0 4 843 844 865 864
		f 4 1528 1527 -1569 -1526
		mu 0 4 844 845 866 865
		f 4 1530 1529 -1571 -1528
		mu 0 4 845 846 867 866
		f 4 1532 1531 -1573 -1530
		mu 0 4 846 847 868 867
		f 4 1534 1533 -1575 -1532
		mu 0 4 847 848 869 868
		f 4 1536 1535 -1577 -1534
		mu 0 4 848 849 870 869
		f 4 1538 1537 -1579 -1536
		mu 0 4 849 850 871 870
		f 4 1540 1539 -1581 -1538
		mu 0 4 850 851 872 871
		f 4 1542 1541 -1583 -1540
		mu 0 4 851 852 873 872
		f 4 1544 1543 -1585 -1542
		mu 0 4 852 853 874 873
		f 4 1546 1545 -1587 -1544
		mu 0 4 853 854 875 874
		f 4 1548 1547 -1589 -1546
		mu 0 4 854 855 876 875
		f 4 1550 1549 -1591 -1548
		mu 0 4 855 856 877 876
		f 4 1552 1551 -1593 -1550
		mu 0 4 856 857 878 877
		f 4 1554 1553 -1595 -1552
		mu 0 4 857 858 879 878
		f 4 1556 1555 -1597 -1554
		mu 0 4 858 859 880 879
		f 4 1558 1557 -1599 -1556
		mu 0 4 859 860 881 880
		f 4 1559 1520 -1600 -1558
		mu 0 4 860 840 861 881
		f 4 1562 1561 -1603 -1561
		mu 0 4 861 862 883 882
		f 4 1564 1563 -1605 -1562
		mu 0 4 863 864 885 884
		f 4 1566 1565 -1607 -1564
		mu 0 4 864 865 886 885
		f 4 1568 1567 -1609 -1566
		mu 0 4 865 866 887 886
		f 4 1570 1569 -1611 -1568
		mu 0 4 866 867 888 887
		f 4 1572 1571 -1613 -1570
		mu 0 4 867 868 889 888
		f 4 1574 1573 -1615 -1572
		mu 0 4 868 869 890 889
		f 4 1576 1575 -1617 -1574
		mu 0 4 869 870 891 890
		f 4 1578 1577 -1619 -1576
		mu 0 4 870 871 892 891
		f 4 1580 1579 -1621 -1578
		mu 0 4 871 872 893 892
		f 4 1582 1581 -1623 -1580
		mu 0 4 872 873 894 893
		f 4 1584 1583 -1625 -1582
		mu 0 4 873 874 895 894
		f 4 1586 1585 -1627 -1584
		mu 0 4 874 875 896 895
		f 4 1588 1587 -1629 -1586
		mu 0 4 875 876 897 896
		f 4 1590 1589 -1631 -1588
		mu 0 4 876 877 898 897
		f 4 1592 1591 -1633 -1590
		mu 0 4 877 878 899 898
		f 4 1594 1593 -1635 -1592
		mu 0 4 878 879 900 899
		f 4 1596 1595 -1637 -1594
		mu 0 4 879 880 901 900
		f 4 1598 1597 -1639 -1596
		mu 0 4 880 881 902 901
		f 4 1599 1560 -1640 -1598
		mu 0 4 881 861 882 902
		f 4 1602 1601 -1643 -1601
		mu 0 4 882 883 904 903
		f 4 1604 1603 -1645 -1602
		mu 0 4 884 885 906 905
		f 4 1606 1605 -1647 -1604
		mu 0 4 885 886 907 906
		f 4 1608 1607 -1649 -1606
		mu 0 4 886 887 908 907
		f 4 1610 1609 -1651 -1608
		mu 0 4 887 888 909 908
		f 4 1612 1611 -1653 -1610
		mu 0 4 888 889 910 909
		f 4 1614 1613 -1655 -1612
		mu 0 4 889 890 911 910
		f 4 1616 1615 -1657 -1614
		mu 0 4 890 891 912 911
		f 4 1618 1617 -1659 -1616
		mu 0 4 891 892 913 912
		f 4 1620 1619 -1661 -1618
		mu 0 4 892 893 914 913
		f 4 1622 1621 -1663 -1620
		mu 0 4 893 894 915 914
		f 4 1624 1623 -1665 -1622
		mu 0 4 894 895 916 915
		f 4 1626 1625 -1667 -1624
		mu 0 4 895 896 917 916
		f 4 1628 1627 -1669 -1626
		mu 0 4 896 897 918 917
		f 4 1630 1629 -1671 -1628
		mu 0 4 897 898 919 918
		f 4 1632 1631 -1673 -1630
		mu 0 4 898 899 920 919
		f 4 1634 1633 -1675 -1632
		mu 0 4 899 900 921 920
		f 4 1636 1635 -1677 -1634
		mu 0 4 900 901 922 921
		f 4 1638 1637 -1679 -1636
		mu 0 4 901 902 923 922
		f 4 1639 1600 -1680 -1638
		mu 0 4 902 882 903 923
		f 4 1642 1641 -1683 -1641
		mu 0 4 903 904 925 924
		f 4 1644 1643 -1685 -1642
		mu 0 4 905 906 927 926
		f 4 1646 1645 -1687 -1644
		mu 0 4 906 907 928 927
		f 4 1648 1647 -1689 -1646
		mu 0 4 907 908 929 928
		f 4 1650 1649 -1691 -1648
		mu 0 4 908 909 930 929
		f 4 1652 1651 -1693 -1650
		mu 0 4 909 910 931 930
		f 4 1654 1653 -1695 -1652
		mu 0 4 910 911 932 931
		f 4 1656 1655 -1697 -1654
		mu 0 4 911 912 933 932
		f 4 1658 1657 -1699 -1656
		mu 0 4 912 913 934 933
		f 4 1660 1659 -1701 -1658
		mu 0 4 913 914 935 934
		f 4 1662 1661 -1703 -1660
		mu 0 4 914 915 936 935
		f 4 1664 1663 -1705 -1662
		mu 0 4 915 916 937 936
		f 4 1666 1665 -1707 -1664
		mu 0 4 916 917 938 937
		f 4 1668 1667 -1709 -1666
		mu 0 4 917 918 939 938
		f 4 1670 1669 -1711 -1668
		mu 0 4 918 919 940 939
		f 4 1672 1671 -1713 -1670
		mu 0 4 919 920 941 940
		f 4 1674 1673 -1715 -1672
		mu 0 4 920 921 942 941
		f 4 1676 1675 -1717 -1674
		mu 0 4 921 922 943 942
		f 4 1678 1677 -1719 -1676
		mu 0 4 922 923 944 943
		f 4 1679 1640 -1720 -1678
		mu 0 4 923 903 924 944
		f 4 1682 1681 -1723 -1681
		mu 0 4 924 925 946 945
		f 4 1684 1683 -1725 -1682
		mu 0 4 926 927 948 947
		f 4 1686 1685 -1727 -1684
		mu 0 4 927 928 949 948
		f 4 1688 1687 -1729 -1686
		mu 0 4 928 929 950 949
		f 4 1690 1689 -1731 -1688
		mu 0 4 929 930 951 950
		f 4 1692 1691 -1733 -1690
		mu 0 4 930 931 952 951
		f 4 1694 1693 -1735 -1692
		mu 0 4 931 932 953 952
		f 4 1696 1695 -1737 -1694
		mu 0 4 932 933 954 953
		f 4 1698 1697 -1739 -1696
		mu 0 4 933 934 955 954
		f 4 1700 1699 -1741 -1698
		mu 0 4 934 935 956 955
		f 4 1702 1701 -1743 -1700
		mu 0 4 935 936 957 956
		f 4 1704 1703 -1745 -1702
		mu 0 4 936 937 958 957
		f 4 1706 1705 -1747 -1704
		mu 0 4 937 938 959 958
		f 4 1708 1707 -1749 -1706
		mu 0 4 938 939 960 959
		f 4 1710 1709 -1751 -1708
		mu 0 4 939 940 961 960
		f 4 1712 1711 -1753 -1710
		mu 0 4 940 941 962 961
		f 4 1714 1713 -1755 -1712
		mu 0 4 941 942 963 962
		f 4 1716 1715 -1757 -1714
		mu 0 4 942 943 964 963
		f 4 1718 1717 -1759 -1716
		mu 0 4 943 944 965 964
		f 4 1719 1680 -1760 -1718
		mu 0 4 944 924 945 965
		f 4 1722 1721 -1763 -1721
		mu 0 4 945 946 967 966
		f 4 1724 1723 -1765 -1722
		mu 0 4 947 948 969 968
		f 4 1726 1725 -1767 -1724
		mu 0 4 948 949 970 969
		f 4 1728 1727 -1769 -1726
		mu 0 4 949 950 971 970
		f 4 1730 1729 -1771 -1728
		mu 0 4 950 951 972 971
		f 4 1732 1731 -1773 -1730
		mu 0 4 951 952 973 972
		f 4 1734 1733 -1775 -1732
		mu 0 4 952 953 974 973
		f 4 1736 1735 -1777 -1734
		mu 0 4 953 954 975 974
		f 4 1738 1737 -1779 -1736
		mu 0 4 954 955 976 975
		f 4 1740 1739 -1781 -1738
		mu 0 4 955 956 977 976
		f 4 1742 1741 -1783 -1740
		mu 0 4 956 957 978 977
		f 4 1744 1743 -1785 -1742
		mu 0 4 957 958 979 978
		f 4 1746 1745 -1787 -1744
		mu 0 4 958 959 980 979
		f 4 1748 1747 -1789 -1746
		mu 0 4 959 960 981 980
		f 4 1750 1749 -1791 -1748
		mu 0 4 960 961 982 981
		f 4 1752 1751 -1793 -1750
		mu 0 4 961 962 983 982
		f 4 1754 1753 -1795 -1752
		mu 0 4 962 963 984 983
		f 4 1756 1755 -1797 -1754
		mu 0 4 963 964 985 984
		f 4 1758 1757 -1799 -1756
		mu 0 4 964 965 986 985
		f 4 1759 1720 -1800 -1758
		mu 0 4 965 945 966 986
		f 4 1762 1761 -1803 -1761
		mu 0 4 966 967 988 987
		f 4 1764 1763 -1805 -1762
		mu 0 4 968 969 990 989
		f 4 1766 1765 -1807 -1764
		mu 0 4 969 970 991 990
		f 4 1768 1767 -1809 -1766
		mu 0 4 970 971 992 991
		f 4 1770 1769 -1811 -1768
		mu 0 4 971 972 993 992
		f 4 1772 1771 -1813 -1770
		mu 0 4 972 973 994 993
		f 4 1774 1773 -1815 -1772
		mu 0 4 973 974 995 994
		f 4 1776 1775 -1817 -1774
		mu 0 4 974 975 996 995
		f 4 1778 1777 -1819 -1776
		mu 0 4 975 976 997 996
		f 4 1780 1779 -1821 -1778
		mu 0 4 976 977 998 997
		f 4 1782 1781 -1823 -1780
		mu 0 4 977 978 999 998
		f 4 1784 1783 -1825 -1782
		mu 0 4 978 979 1000 999
		f 4 1786 1785 -1827 -1784
		mu 0 4 979 980 1001 1000
		f 4 1788 1787 -1829 -1786
		mu 0 4 980 981 1002 1001
		f 4 1790 1789 -1831 -1788
		mu 0 4 981 982 1003 1002
		f 4 1792 1791 -1833 -1790
		mu 0 4 982 983 1004 1003
		f 4 1794 1793 -1835 -1792
		mu 0 4 983 984 1005 1004
		f 4 1796 1795 -1837 -1794
		mu 0 4 984 985 1006 1005
		f 4 1798 1797 -1839 -1796
		mu 0 4 985 986 1007 1006
		f 4 1799 1760 -1840 -1798
		mu 0 4 986 966 987 1007
		f 4 1802 1801 -1843 -1801
		mu 0 4 987 988 1009 1008
		f 4 1804 1803 -1845 -1802
		mu 0 4 989 990 1011 1010
		f 4 1806 1805 -1847 -1804
		mu 0 4 990 991 1012 1011
		f 4 1808 1807 -1849 -1806
		mu 0 4 991 992 1013 1012
		f 4 1810 1809 -1851 -1808
		mu 0 4 992 993 1014 1013
		f 4 1812 1811 -1853 -1810
		mu 0 4 993 994 1015 1014
		f 4 1814 1813 -1855 -1812
		mu 0 4 994 995 1016 1015
		f 4 1816 1815 -1857 -1814
		mu 0 4 995 996 1017 1016
		f 4 1818 1817 -1859 -1816
		mu 0 4 996 997 1018 1017
		f 4 1820 1819 -1861 -1818
		mu 0 4 997 998 1019 1018
		f 4 1822 1821 -1863 -1820
		mu 0 4 998 999 1020 1019
		f 4 1824 1823 -1865 -1822
		mu 0 4 999 1000 1021 1020
		f 4 1826 1825 -1867 -1824
		mu 0 4 1000 1001 1022 1021
		f 4 1828 1827 -1869 -1826
		mu 0 4 1001 1002 1023 1022
		f 4 1830 1829 -1871 -1828
		mu 0 4 1002 1003 1024 1023
		f 4 1832 1831 -1873 -1830
		mu 0 4 1003 1004 1025 1024
		f 4 1834 1833 -1875 -1832
		mu 0 4 1004 1005 1026 1025
		f 4 1836 1835 -1877 -1834
		mu 0 4 1005 1006 1027 1026
		f 4 1838 1837 -1879 -1836
		mu 0 4 1006 1007 1028 1027
		f 4 1839 1800 -1880 -1838
		mu 0 4 1007 987 1008 1028
		f 4 1842 1841 -1883 -1841
		mu 0 4 1008 1009 1030 1029
		f 4 1844 1843 -1885 -1842
		mu 0 4 1010 1011 1032 1031
		f 4 1846 1845 -1887 -1844
		mu 0 4 1011 1012 1033 1032
		f 4 1848 1847 -1889 -1846
		mu 0 4 1012 1013 1034 1033
		f 4 1850 1849 -1891 -1848
		mu 0 4 1013 1014 1035 1034
		f 4 1852 1851 -1893 -1850
		mu 0 4 1014 1015 1036 1035
		f 4 1854 1853 -1895 -1852
		mu 0 4 1015 1016 1037 1036
		f 4 1856 1855 -1897 -1854
		mu 0 4 1016 1017 1038 1037
		f 4 1858 1857 -1899 -1856
		mu 0 4 1017 1018 1039 1038
		f 4 1860 1859 -1901 -1858
		mu 0 4 1018 1019 1040 1039
		f 4 1862 1861 -1903 -1860
		mu 0 4 1019 1020 1041 1040
		f 4 1864 1863 -1905 -1862
		mu 0 4 1020 1021 1042 1041
		f 4 1866 1865 -1907 -1864
		mu 0 4 1021 1022 1043 1042
		f 4 1868 1867 -1909 -1866
		mu 0 4 1022 1023 1044 1043
		f 4 1870 1869 -1911 -1868
		mu 0 4 1023 1024 1045 1044
		f 4 1872 1871 -1913 -1870
		mu 0 4 1024 1025 1046 1045
		f 4 1874 1873 -1915 -1872
		mu 0 4 1025 1026 1047 1046
		f 4 1876 1875 -1917 -1874
		mu 0 4 1026 1027 1048 1047
		f 4 1878 1877 -1919 -1876
		mu 0 4 1027 1028 1049 1048
		f 4 1879 1840 -1920 -1878
		mu 0 4 1028 1008 1029 1049
		f 4 2302 2301 -1254 -2301
		mu 0 4 1239 1240 593 569
		f 4 2304 2303 -1267 -2302
		mu 0 4 1240 1241 606 593
		f 4 2306 2305 -1280 -2304
		mu 0 4 1241 1242 619 606
		f 4 2308 2307 -1293 -2306
		mu 0 4 1242 1243 632 619
		f 4 2310 2309 -1306 -2308
		mu 0 4 1243 1244 645 632
		f 4 2312 2311 -1319 -2310
		mu 0 4 1244 1245 658 645
		f 4 2314 2313 -1332 -2312
		mu 0 4 1245 1246 671 658
		f 4 2316 2315 -1345 -2314
		mu 0 4 1246 1247 684 671
		f 4 2318 2317 -1358 -2316
		mu 0 4 1247 1248 697 684
		f 4 2320 2319 -1371 -2318
		mu 0 4 1248 1249 710 697
		f 4 2322 2321 -1384 -2320
		mu 0 4 1249 1250 723 710
		f 4 2324 2323 -1397 -2322
		mu 0 4 1250 1251 736 723
		f 4 2326 2325 -1410 -2324
		mu 0 4 1251 1252 749 736
		f 4 2328 2327 -1423 -2326
		mu 0 4 1252 1253 762 749
		f 4 2330 2329 -1436 -2328
		mu 0 4 1253 1254 775 762
		f 4 2332 2331 -1449 -2330
		mu 0 4 1254 1255 788 775
		f 4 2334 2333 -1462 -2332
		mu 0 4 1255 1256 801 788
		f 4 2336 2335 -1475 -2334
		mu 0 4 1256 1257 814 801
		f 4 2338 2337 -1488 -2336
		mu 0 4 1257 1258 827 814
		f 4 2339 2300 -1241 -2338
		mu 0 4 1259 1239 569 568
		f 4 264 1921 -1943 -1921
		mu 0 4 25 39 1051 1050
		f 4 277 1922 -1945 -1922
		mu 0 4 39 53 1052 1051
		f 4 290 1923 -1947 -1923
		mu 0 4 53 67 1053 1052
		f 4 303 1924 -1949 -1924
		mu 0 4 67 81 1054 1053
		f 4 316 1925 -1951 -1925
		mu 0 4 81 95 1055 1054
		f 4 329 1926 -1953 -1926
		mu 0 4 95 109 1056 1055
		f 4 342 1927 -1955 -1927
		mu 0 4 109 123 1057 1056
		f 4 355 1928 -1957 -1928
		mu 0 4 123 137 1058 1057
		f 4 368 1929 -1959 -1929
		mu 0 4 137 151 1059 1058
		f 4 381 1930 -1961 -1930
		mu 0 4 151 165 1060 1059
		f 4 394 1931 -1963 -1931
		mu 0 4 165 179 1061 1060
		f 4 407 1932 -1965 -1932
		mu 0 4 179 193 1062 1061
		f 4 420 1933 -1967 -1933
		mu 0 4 193 207 1063 1062
		f 4 433 1934 -1969 -1934
		mu 0 4 207 221 1064 1063
		f 4 446 1935 -1971 -1935
		mu 0 4 221 235 1065 1064
		f 4 459 1936 -1973 -1936
		mu 0 4 235 249 1066 1065
		f 4 472 1937 -1975 -1937
		mu 0 4 249 263 1067 1066
		f 4 485 1938 -1977 -1938
		mu 0 4 263 277 1068 1067
		f 4 498 1939 -1979 -1939
		mu 0 4 277 291 1069 1068
		f 4 251 1920 -1980 -1940
		mu 0 4 11 25 1050 1070
		f 4 1942 1941 -1983 -1941
		mu 0 4 1050 1051 1072 1071
		f 4 1944 1943 -1985 -1942
		mu 0 4 1051 1052 1073 1072
		f 4 1946 1945 -1987 -1944
		mu 0 4 1052 1053 1074 1073
		f 4 1948 1947 -1989 -1946
		mu 0 4 1053 1054 1075 1074
		f 4 1950 1949 -1991 -1948
		mu 0 4 1054 1055 1076 1075
		f 4 1952 1951 -1993 -1950
		mu 0 4 1055 1056 1077 1076
		f 4 1954 1953 -1995 -1952
		mu 0 4 1056 1057 1078 1077
		f 4 1956 1955 -1997 -1954
		mu 0 4 1057 1058 1079 1078
		f 4 1958 1957 -1999 -1956
		mu 0 4 1058 1059 1080 1079
		f 4 1960 1959 -2001 -1958
		mu 0 4 1059 1060 1081 1080
		f 4 1962 1961 -2003 -1960
		mu 0 4 1060 1061 1082 1081
		f 4 1964 1963 -2005 -1962
		mu 0 4 1061 1062 1083 1082
		f 4 1966 1965 -2007 -1964
		mu 0 4 1062 1063 1084 1083
		f 4 1968 1967 -2009 -1966
		mu 0 4 1063 1064 1085 1084
		f 4 1970 1969 -2011 -1968
		mu 0 4 1064 1065 1086 1085
		f 4 1972 1971 -2013 -1970
		mu 0 4 1065 1066 1087 1086
		f 4 1974 1973 -2015 -1972
		mu 0 4 1066 1067 1088 1087
		f 4 1976 1975 -2017 -1974
		mu 0 4 1067 1068 1089 1088
		f 4 1978 1977 -2019 -1976
		mu 0 4 1068 1069 1090 1089
		f 4 1979 1940 -2020 -1978
		mu 0 4 1070 1050 1071 1091;
	setAttr ".fc[1000:1499]"
		f 4 1982 1981 -2023 -1981
		mu 0 4 1071 1072 1093 1092
		f 4 1984 1983 -2025 -1982
		mu 0 4 1072 1073 1094 1093
		f 4 1986 1985 -2027 -1984
		mu 0 4 1073 1074 1095 1094
		f 4 1988 1987 -2029 -1986
		mu 0 4 1074 1075 1096 1095
		f 4 1990 1989 -2031 -1988
		mu 0 4 1075 1076 1097 1096
		f 4 1992 1991 -2033 -1990
		mu 0 4 1076 1077 1098 1097
		f 4 1994 1993 -2035 -1992
		mu 0 4 1077 1078 1099 1098
		f 4 1996 1995 -2037 -1994
		mu 0 4 1078 1079 1100 1099
		f 4 1998 1997 -2039 -1996
		mu 0 4 1079 1080 1101 1100
		f 4 2000 1999 -2041 -1998
		mu 0 4 1080 1081 1102 1101
		f 4 2002 2001 -2043 -2000
		mu 0 4 1081 1082 1103 1102
		f 4 2004 2003 -2045 -2002
		mu 0 4 1082 1083 1104 1103
		f 4 2006 2005 -2047 -2004
		mu 0 4 1083 1084 1105 1104
		f 4 2008 2007 -2049 -2006
		mu 0 4 1084 1085 1106 1105
		f 4 2010 2009 -2051 -2008
		mu 0 4 1085 1086 1107 1106
		f 4 2012 2011 -2053 -2010
		mu 0 4 1086 1087 1108 1107
		f 4 2014 2013 -2055 -2012
		mu 0 4 1087 1088 1109 1108
		f 4 2016 2015 -2057 -2014
		mu 0 4 1088 1089 1110 1109
		f 4 2018 2017 -2059 -2016
		mu 0 4 1089 1090 1111 1110
		f 4 2019 1980 -2060 -2018
		mu 0 4 1091 1071 1092 1112
		f 4 2022 2021 -2063 -2021
		mu 0 4 1092 1093 1114 1113
		f 4 2024 2023 -2065 -2022
		mu 0 4 1093 1094 1115 1114
		f 4 2026 2025 -2067 -2024
		mu 0 4 1094 1095 1116 1115
		f 4 2028 2027 -2069 -2026
		mu 0 4 1095 1096 1117 1116
		f 4 2030 2029 -2071 -2028
		mu 0 4 1096 1097 1118 1117
		f 4 2032 2031 -2073 -2030
		mu 0 4 1097 1098 1119 1118
		f 4 2034 2033 -2075 -2032
		mu 0 4 1098 1099 1120 1119
		f 4 2036 2035 -2077 -2034
		mu 0 4 1099 1100 1121 1120
		f 4 2038 2037 -2079 -2036
		mu 0 4 1100 1101 1122 1121
		f 4 2040 2039 -2081 -2038
		mu 0 4 1101 1102 1123 1122
		f 4 2042 2041 -2083 -2040
		mu 0 4 1102 1103 1124 1123
		f 4 2044 2043 -2085 -2042
		mu 0 4 1103 1104 1125 1124
		f 4 2046 2045 -2087 -2044
		mu 0 4 1104 1105 1126 1125
		f 4 2048 2047 -2089 -2046
		mu 0 4 1105 1106 1127 1126
		f 4 2050 2049 -2091 -2048
		mu 0 4 1106 1107 1128 1127
		f 4 2052 2051 -2093 -2050
		mu 0 4 1107 1108 1129 1128
		f 4 2054 2053 -2095 -2052
		mu 0 4 1108 1109 1130 1129
		f 4 2056 2055 -2097 -2054
		mu 0 4 1109 1110 1131 1130
		f 4 2058 2057 -2099 -2056
		mu 0 4 1110 1111 1132 1131
		f 4 2059 2020 -2100 -2058
		mu 0 4 1112 1092 1113 1133
		f 4 2062 2061 -2103 -2061
		mu 0 4 1113 1114 1135 1134
		f 4 2064 2063 -2105 -2062
		mu 0 4 1114 1115 1136 1135
		f 4 2066 2065 -2107 -2064
		mu 0 4 1115 1116 1137 1136
		f 4 2068 2067 -2109 -2066
		mu 0 4 1116 1117 1138 1137
		f 4 2070 2069 -2111 -2068
		mu 0 4 1117 1118 1139 1138
		f 4 2072 2071 -2113 -2070
		mu 0 4 1118 1119 1140 1139
		f 4 2074 2073 -2115 -2072
		mu 0 4 1119 1120 1141 1140
		f 4 2076 2075 -2117 -2074
		mu 0 4 1120 1121 1142 1141
		f 4 2078 2077 -2119 -2076
		mu 0 4 1121 1122 1143 1142
		f 4 2080 2079 -2121 -2078
		mu 0 4 1122 1123 1144 1143
		f 4 2082 2081 -2123 -2080
		mu 0 4 1123 1124 1145 1144
		f 4 2084 2083 -2125 -2082
		mu 0 4 1124 1125 1146 1145
		f 4 2086 2085 -2127 -2084
		mu 0 4 1125 1126 1147 1146
		f 4 2088 2087 -2129 -2086
		mu 0 4 1126 1127 1148 1147
		f 4 2090 2089 -2131 -2088
		mu 0 4 1127 1128 1149 1148
		f 4 2092 2091 -2133 -2090
		mu 0 4 1128 1129 1150 1149
		f 4 2094 2093 -2135 -2092
		mu 0 4 1129 1130 1151 1150
		f 4 2096 2095 -2137 -2094
		mu 0 4 1130 1131 1152 1151
		f 4 2098 2097 -2139 -2096
		mu 0 4 1131 1132 1153 1152
		f 4 2099 2060 -2140 -2098
		mu 0 4 1133 1113 1134 1154
		f 4 2102 2101 -2143 -2101
		mu 0 4 1134 1135 1156 1155
		f 4 2104 2103 -2145 -2102
		mu 0 4 1135 1136 1157 1156
		f 4 2106 2105 -2147 -2104
		mu 0 4 1136 1137 1158 1157
		f 4 2108 2107 -2149 -2106
		mu 0 4 1137 1138 1159 1158
		f 4 2110 2109 -2151 -2108
		mu 0 4 1138 1139 1160 1159
		f 4 2112 2111 -2153 -2110
		mu 0 4 1139 1140 1161 1160
		f 4 2114 2113 -2155 -2112
		mu 0 4 1140 1141 1162 1161
		f 4 2116 2115 -2157 -2114
		mu 0 4 1141 1142 1163 1162
		f 4 2118 2117 -2159 -2116
		mu 0 4 1142 1143 1164 1163
		f 4 2120 2119 -2161 -2118
		mu 0 4 1143 1144 1165 1164
		f 4 2122 2121 -2163 -2120
		mu 0 4 1144 1145 1166 1165
		f 4 2124 2123 -2165 -2122
		mu 0 4 1145 1146 1167 1166
		f 4 2126 2125 -2167 -2124
		mu 0 4 1146 1147 1168 1167
		f 4 2128 2127 -2169 -2126
		mu 0 4 1147 1148 1169 1168
		f 4 2130 2129 -2171 -2128
		mu 0 4 1148 1149 1170 1169
		f 4 2132 2131 -2173 -2130
		mu 0 4 1149 1150 1171 1170
		f 4 2134 2133 -2175 -2132
		mu 0 4 1150 1151 1172 1171
		f 4 2136 2135 -2177 -2134
		mu 0 4 1151 1152 1173 1172
		f 4 2138 2137 -2179 -2136
		mu 0 4 1152 1153 1174 1173
		f 4 2139 2100 -2180 -2138
		mu 0 4 1154 1134 1155 1175
		f 4 2142 2141 -2183 -2141
		mu 0 4 1155 1156 1177 1176
		f 4 2144 2143 -2185 -2142
		mu 0 4 1156 1157 1178 1177
		f 4 2146 2145 -2187 -2144
		mu 0 4 1157 1158 1179 1178
		f 4 2148 2147 -2189 -2146
		mu 0 4 1158 1159 1180 1179
		f 4 2150 2149 -2191 -2148
		mu 0 4 1159 1160 1181 1180
		f 4 2152 2151 -2193 -2150
		mu 0 4 1160 1161 1182 1181
		f 4 2154 2153 -2195 -2152
		mu 0 4 1161 1162 1183 1182
		f 4 2156 2155 -2197 -2154
		mu 0 4 1162 1163 1184 1183
		f 4 2158 2157 -2199 -2156
		mu 0 4 1163 1164 1185 1184
		f 4 2160 2159 -2201 -2158
		mu 0 4 1164 1165 1186 1185
		f 4 2162 2161 -2203 -2160
		mu 0 4 1165 1166 1187 1186
		f 4 2164 2163 -2205 -2162
		mu 0 4 1166 1167 1188 1187
		f 4 2166 2165 -2207 -2164
		mu 0 4 1167 1168 1189 1188
		f 4 2168 2167 -2209 -2166
		mu 0 4 1168 1169 1190 1189
		f 4 2170 2169 -2211 -2168
		mu 0 4 1169 1170 1191 1190
		f 4 2172 2171 -2213 -2170
		mu 0 4 1170 1171 1192 1191
		f 4 2174 2173 -2215 -2172
		mu 0 4 1171 1172 1193 1192
		f 4 2176 2175 -2217 -2174
		mu 0 4 1172 1173 1194 1193
		f 4 2178 2177 -2219 -2176
		mu 0 4 1173 1174 1195 1194
		f 4 2179 2140 -2220 -2178
		mu 0 4 1175 1155 1176 1196
		f 4 2182 2181 -2223 -2181
		mu 0 4 1176 1177 1198 1197
		f 4 2184 2183 -2225 -2182
		mu 0 4 1177 1178 1199 1198
		f 4 2186 2185 -2227 -2184
		mu 0 4 1178 1179 1200 1199
		f 4 2188 2187 -2229 -2186
		mu 0 4 1179 1180 1201 1200
		f 4 2190 2189 -2231 -2188
		mu 0 4 1180 1181 1202 1201
		f 4 2192 2191 -2233 -2190
		mu 0 4 1181 1182 1203 1202
		f 4 2194 2193 -2235 -2192
		mu 0 4 1182 1183 1204 1203
		f 4 2196 2195 -2237 -2194
		mu 0 4 1183 1184 1205 1204
		f 4 2198 2197 -2239 -2196
		mu 0 4 1184 1185 1206 1205
		f 4 2200 2199 -2241 -2198
		mu 0 4 1185 1186 1207 1206
		f 4 2202 2201 -2243 -2200
		mu 0 4 1186 1187 1208 1207
		f 4 2204 2203 -2245 -2202
		mu 0 4 1187 1188 1209 1208
		f 4 2206 2205 -2247 -2204
		mu 0 4 1188 1189 1210 1209
		f 4 2208 2207 -2249 -2206
		mu 0 4 1189 1190 1211 1210
		f 4 2210 2209 -2251 -2208
		mu 0 4 1190 1191 1212 1211
		f 4 2212 2211 -2253 -2210
		mu 0 4 1191 1192 1213 1212
		f 4 2214 2213 -2255 -2212
		mu 0 4 1192 1193 1214 1213
		f 4 2216 2215 -2257 -2214
		mu 0 4 1193 1194 1215 1214
		f 4 2218 2217 -2259 -2216
		mu 0 4 1194 1195 1216 1215
		f 4 2219 2180 -2260 -2218
		mu 0 4 1196 1176 1197 1217
		f 4 2222 2221 -2263 -2221
		mu 0 4 1197 1198 1219 1218
		f 4 2224 2223 -2265 -2222
		mu 0 4 1198 1199 1220 1219
		f 4 2226 2225 -2267 -2224
		mu 0 4 1199 1200 1221 1220
		f 4 2228 2227 -2269 -2226
		mu 0 4 1200 1201 1222 1221
		f 4 2230 2229 -2271 -2228
		mu 0 4 1201 1202 1223 1222
		f 4 2232 2231 -2273 -2230
		mu 0 4 1202 1203 1224 1223
		f 4 2234 2233 -2275 -2232
		mu 0 4 1203 1204 1225 1224
		f 4 2236 2235 -2277 -2234
		mu 0 4 1204 1205 1226 1225
		f 4 2238 2237 -2279 -2236
		mu 0 4 1205 1206 1227 1226
		f 4 2240 2239 -2281 -2238
		mu 0 4 1206 1207 1228 1227
		f 4 2242 2241 -2283 -2240
		mu 0 4 1207 1208 1229 1228
		f 4 2244 2243 -2285 -2242
		mu 0 4 1208 1209 1230 1229
		f 4 2246 2245 -2287 -2244
		mu 0 4 1209 1210 1231 1230
		f 4 2248 2247 -2289 -2246
		mu 0 4 1210 1211 1232 1231
		f 4 2250 2249 -2291 -2248
		mu 0 4 1211 1212 1233 1232
		f 4 2252 2251 -2293 -2250
		mu 0 4 1212 1213 1234 1233
		f 4 2254 2253 -2295 -2252
		mu 0 4 1213 1214 1235 1234
		f 4 2256 2255 -2297 -2254
		mu 0 4 1214 1215 1236 1235
		f 4 2258 2257 -2299 -2256
		mu 0 4 1215 1216 1237 1236
		f 4 2259 2220 -2300 -2258
		mu 0 4 1217 1197 1218 1238
		f 4 2262 2261 -2303 -2261
		mu 0 4 1218 1219 1240 1239
		f 4 2264 2263 -2305 -2262
		mu 0 4 1219 1220 1241 1240
		f 4 2266 2265 -2307 -2264
		mu 0 4 1220 1221 1242 1241
		f 4 2268 2267 -2309 -2266
		mu 0 4 1221 1222 1243 1242
		f 4 2270 2269 -2311 -2268
		mu 0 4 1222 1223 1244 1243
		f 4 2272 2271 -2313 -2270
		mu 0 4 1223 1224 1245 1244
		f 4 2274 2273 -2315 -2272
		mu 0 4 1224 1225 1246 1245
		f 4 2276 2275 -2317 -2274
		mu 0 4 1225 1226 1247 1246
		f 4 2278 2277 -2319 -2276
		mu 0 4 1226 1227 1248 1247
		f 4 2280 2279 -2321 -2278
		mu 0 4 1227 1228 1249 1248
		f 4 2282 2281 -2323 -2280
		mu 0 4 1228 1229 1250 1249
		f 4 2284 2283 -2325 -2282
		mu 0 4 1229 1230 1251 1250
		f 4 2286 2285 -2327 -2284
		mu 0 4 1230 1231 1252 1251
		f 4 2288 2287 -2329 -2286
		mu 0 4 1231 1232 1253 1252
		f 4 2290 2289 -2331 -2288
		mu 0 4 1232 1233 1254 1253
		f 4 2292 2291 -2333 -2290
		mu 0 4 1233 1234 1255 1254
		f 4 2294 2293 -2335 -2292
		mu 0 4 1234 1235 1256 1255
		f 4 2296 2295 -2337 -2294
		mu 0 4 1235 1236 1257 1256
		f 4 2298 2297 -2339 -2296
		mu 0 4 1236 1237 1258 1257
		f 4 2299 2260 -2340 -2298
		mu 0 4 1238 1218 1239 1259
		f 4 1252 2341 -2343 -2341
		mu 0 4 1260 1261 1262 1263
		f 4 1265 2343 -2345 -2342
		mu 0 4 1264 1265 1266 1267
		f 4 1278 2345 -2347 -2344
		mu 0 4 1268 1269 1270 1271
		f 4 1291 2347 -2349 -2346
		mu 0 4 1272 1273 1274 1275
		f 4 1304 2349 -2351 -2348
		mu 0 4 1276 1277 1278 1279
		f 4 1317 2351 -2353 -2350
		mu 0 4 1280 1281 1282 1283
		f 4 1330 2353 -2355 -2352
		mu 0 4 1284 1285 1286 1287
		f 4 1343 2355 -2357 -2354
		mu 0 4 1288 1289 1290 1291
		f 4 1356 2357 -2359 -2356
		mu 0 4 1292 1293 1294 1295
		f 4 1369 2359 -2361 -2358
		mu 0 4 1296 1297 1298 1299
		f 4 1382 2361 -2363 -2360
		mu 0 4 1300 1301 1302 1303
		f 4 1395 2363 -2365 -2362
		mu 0 4 1304 1305 1306 1307
		f 4 1408 2365 -2367 -2364
		mu 0 4 1308 1309 1310 1311
		f 4 1421 2367 -2369 -2366
		mu 0 4 1312 1313 1314 1315
		f 4 1434 2369 -2371 -2368
		mu 0 4 1316 1317 1318 1319
		f 4 1447 2371 -2373 -2370
		mu 0 4 1320 1321 1322 1323
		f 4 1460 2373 -2375 -2372
		mu 0 4 1324 1325 1326 1327
		f 4 1473 2375 -2377 -2374
		mu 0 4 1328 1329 1330 1331
		f 4 1486 2377 -2379 -2376
		mu 0 4 1332 1333 1334 1335
		f 4 1499 2340 -2380 -2378
		mu 0 4 1336 1337 1338 1339
		f 4 1252 2381 2872 -2381
		mu 0 4 1340 1341 1910 1913
		f 4 1265 2383 2870 -2382
		mu 0 4 1344 1345 1908 1911
		f 4 1278 2385 2868 -2384
		mu 0 4 1348 1349 1906 1909
		f 4 1291 2387 2866 -2386
		mu 0 4 1352 1353 1904 1907
		f 4 1304 2389 2864 -2388
		mu 0 4 1356 1357 1902 1905
		f 4 1317 2391 2862 -2390
		mu 0 4 1360 1361 1900 1903
		f 4 1330 2393 2899 -2392
		mu 0 4 1364 1365 1938 1901
		f 4 1343 2395 2898 -2394
		mu 0 4 1368 1369 1936 1939
		f 4 1356 2397 2896 -2396
		mu 0 4 1372 1373 1934 1937
		f 4 1369 2399 2894 -2398
		mu 0 4 1376 1377 1932 1935
		f 4 1382 2401 2892 -2400
		mu 0 4 1380 1381 1930 1933
		f 4 1395 2403 2890 -2402
		mu 0 4 1384 1385 1928 1931
		f 4 1408 2405 2888 -2404
		mu 0 4 1388 1389 1926 1929
		f 4 1421 2407 2886 -2406
		mu 0 4 1392 1393 1924 1927
		f 4 1434 2409 2884 -2408
		mu 0 4 1396 1397 1922 1925
		f 4 1447 2411 2882 -2410
		mu 0 4 1400 1401 1920 1923
		f 4 1460 2413 2880 -2412
		mu 0 4 1404 1405 1918 1921
		f 4 1473 2415 2878 -2414
		mu 0 4 1408 1409 1916 1919
		f 4 1486 2417 2876 -2416
		mu 0 4 1412 1413 1914 1917
		f 4 1499 2380 2874 -2418
		mu 0 4 1416 1417 1912 1915
		f 4 -741 2420 2492 -2422
		mu 0 4 1420 1421 1530 1533
		f 4 -754 2421 2494 -2424
		mu 0 4 1424 1425 1532 1535
		f 4 -767 2423 2496 -2426
		mu 0 4 1428 1429 1534 1537
		f 4 -780 2425 2498 -2428
		mu 0 4 1432 1433 1536 1539
		f 4 -793 2427 2499 -2430
		mu 0 4 1436 1437 1538 1501
		f 4 -806 2429 2462 -2432
		mu 0 4 1440 1441 1500 1503
		f 4 -819 2431 2464 -2434
		mu 0 4 1444 1445 1502 1505
		f 4 -832 2433 2466 -2436
		mu 0 4 1448 1449 1504 1507
		f 4 -845 2435 2468 -2438
		mu 0 4 1452 1453 1506 1509
		f 4 -858 2437 2470 -2440
		mu 0 4 1456 1457 1508 1511
		f 4 -871 2439 2472 -2442
		mu 0 4 1460 1461 1510 1513
		f 4 -884 2441 2474 -2444
		mu 0 4 1464 1465 1512 1515
		f 4 -897 2443 2476 -2446
		mu 0 4 1468 1469 1514 1517
		f 4 -910 2445 2478 -2448
		mu 0 4 1472 1473 1516 1519
		f 4 -923 2447 2480 -2450
		mu 0 4 1476 1477 1518 1521
		f 4 -936 2449 2482 -2452
		mu 0 4 1480 1481 1520 1523
		f 4 -949 2451 2484 -2454
		mu 0 4 1484 1485 1522 1525
		f 4 -962 2453 2486 -2456
		mu 0 4 1488 1489 1524 1527
		f 4 -975 2455 2488 -2458
		mu 0 4 1492 1493 1526 1529
		f 4 -988 2457 2490 -2421
		mu 0 4 1496 1497 1528 1531
		f 20 -2423 -2460 -2459 -2457 -2455 -2453 -2451 -2449 -2447 -2445 -2443 -2441 -2439 -2437
		 -2435 -2433 -2431 -2429 -2427 -2425
		mu 0 20 1423 1499 1495 1491 1487 1483 1479 1475 1471 1467 1463 1459 1455 1451 1447 1443
		 1439 1435 1431 1427
		f 20 2384 2386 2388 2390 2392 2394 2396 2398 2400 2402 2404 2406 2408 2410 2412 2414
		 2416 2418 2419 2382
		mu 0 20 1347 1351 1355 1359 1363 1367 1371 1375 1379 1383 1387 1391 1395 1399 1403 1407
		 1411 1415 1419 1343
		f 4 -2463 2460 2502 -2462
		mu 0 4 1503 1500 1540 1543
		f 4 -2465 2461 2504 -2464
		mu 0 4 1505 1502 1542 1545
		f 4 -2467 2463 2506 -2466
		mu 0 4 1507 1504 1544 1547
		f 4 -2469 2465 2508 -2468
		mu 0 4 1509 1506 1546 1549
		f 4 -2471 2467 2510 -2470
		mu 0 4 1511 1508 1548 1551
		f 4 -2473 2469 2512 -2472
		mu 0 4 1513 1510 1550 1553
		f 4 -2475 2471 2514 -2474
		mu 0 4 1515 1512 1552 1555
		f 4 -2477 2473 2516 -2476
		mu 0 4 1517 1514 1554 1557
		f 4 -2479 2475 2518 -2478
		mu 0 4 1519 1516 1556 1559
		f 4 -2481 2477 2520 -2480
		mu 0 4 1521 1518 1558 1561
		f 4 -2483 2479 2522 -2482
		mu 0 4 1523 1520 1560 1563
		f 4 -2485 2481 2524 -2484
		mu 0 4 1525 1522 1562 1565
		f 4 -2487 2483 2526 -2486
		mu 0 4 1527 1524 1564 1567
		f 4 -2489 2485 2528 -2488
		mu 0 4 1529 1526 1566 1569
		f 4 -2491 2487 2530 -2490
		mu 0 4 1531 1528 1568 1571
		f 4 -2493 2489 2532 -2492
		mu 0 4 1533 1530 1570 1573
		f 4 -2495 2491 2534 -2494
		mu 0 4 1535 1532 1572 1575
		f 4 -2497 2493 2536 -2496
		mu 0 4 1537 1534 1574 1577
		f 4 -2499 2495 2538 -2498
		mu 0 4 1539 1536 1576 1579
		f 4 -2500 2497 2539 -2461
		mu 0 4 1501 1538 1578 1541
		f 4 -2503 2500 2542 -2502
		mu 0 4 1543 1540 1580 1583
		f 4 -2505 2501 2544 -2504
		mu 0 4 1545 1542 1582 1585
		f 4 -2507 2503 2546 -2506
		mu 0 4 1547 1544 1584 1587
		f 4 -2509 2505 2548 -2508
		mu 0 4 1549 1546 1586 1589
		f 4 -2511 2507 2550 -2510
		mu 0 4 1551 1548 1588 1591
		f 4 -2513 2509 2552 -2512
		mu 0 4 1553 1550 1590 1593
		f 4 -2515 2511 2554 -2514
		mu 0 4 1555 1552 1592 1595
		f 4 -2517 2513 2556 -2516
		mu 0 4 1557 1554 1594 1597
		f 4 -2519 2515 2558 -2518
		mu 0 4 1559 1556 1596 1599
		f 4 -2521 2517 2560 -2520
		mu 0 4 1561 1558 1598 1601
		f 4 -2523 2519 2562 -2522
		mu 0 4 1563 1560 1600 1603
		f 4 -2525 2521 2564 -2524
		mu 0 4 1565 1562 1602 1605
		f 4 -2527 2523 2566 -2526
		mu 0 4 1567 1564 1604 1607
		f 4 -2529 2525 2568 -2528
		mu 0 4 1569 1566 1606 1609
		f 4 -2531 2527 2570 -2530
		mu 0 4 1571 1568 1608 1611
		f 4 -2533 2529 2572 -2532
		mu 0 4 1573 1570 1610 1613
		f 4 -2535 2531 2574 -2534
		mu 0 4 1575 1572 1612 1615
		f 4 -2537 2533 2576 -2536
		mu 0 4 1577 1574 1614 1617
		f 4 -2539 2535 2578 -2538
		mu 0 4 1579 1576 1616 1619
		f 4 -2540 2537 2579 -2501
		mu 0 4 1541 1578 1618 1581
		f 4 -2543 2540 2432 -2542
		mu 0 4 1583 1580 1442 1443
		f 4 -2545 2541 2434 -2544
		mu 0 4 1585 1582 1446 1447
		f 4 -2547 2543 2436 -2546
		mu 0 4 1587 1584 1450 1451
		f 4 -2549 2545 2438 -2548
		mu 0 4 1589 1586 1454 1455
		f 4 -2551 2547 2440 -2550
		mu 0 4 1591 1588 1458 1459
		f 4 -2553 2549 2442 -2552
		mu 0 4 1593 1590 1462 1463
		f 4 -2555 2551 2444 -2554
		mu 0 4 1595 1592 1466 1467
		f 4 -2557 2553 2446 -2556
		mu 0 4 1597 1594 1470 1471
		f 4 -2559 2555 2448 -2558
		mu 0 4 1599 1596 1474 1475
		f 4 -2561 2557 2450 -2560
		mu 0 4 1601 1598 1478 1479
		f 4 -2563 2559 2452 -2562
		mu 0 4 1603 1600 1482 1483
		f 4 -2565 2561 2454 -2564
		mu 0 4 1605 1602 1486 1487
		f 4 -2567 2563 2456 -2566
		mu 0 4 1607 1604 1490 1491
		f 4 -2569 2565 2458 -2568
		mu 0 4 1609 1606 1494 1495
		f 4 -2571 2567 2459 -2570
		mu 0 4 1611 1608 1498 1499
		f 4 -2573 2569 2422 -2572
		mu 0 4 1613 1610 1422 1423
		f 4 -2575 2571 2424 -2574
		mu 0 4 1615 1612 1426 1427
		f 4 -2577 2573 2426 -2576
		mu 0 4 1617 1614 1430 1431
		f 4 -2579 2575 2428 -2578
		mu 0 4 1619 1616 1434 1435
		f 4 -2580 2577 2430 -2541
		mu 0 4 1581 1618 1438 1439
		f 4 -2583 2580 -2391 -2582
		mu 0 4 1623 1620 1358 1359
		f 4 -2585 2581 -2389 -2584
		mu 0 4 1625 1622 1354 1355
		f 4 -2587 2583 -2387 -2586
		mu 0 4 1627 1624 1350 1351
		f 4 -2589 2585 -2385 -2588
		mu 0 4 1629 1626 1346 1347
		f 4 -2591 2587 -2383 -2590
		mu 0 4 1631 1628 1342 1343
		f 4 -2593 2589 -2420 -2592
		mu 0 4 1633 1630 1418 1419
		f 4 -2595 2591 -2419 -2594
		mu 0 4 1635 1632 1414 1415
		f 4 -2597 2593 -2417 -2596
		mu 0 4 1637 1634 1410 1411
		f 4 -2599 2595 -2415 -2598
		mu 0 4 1639 1636 1406 1407
		f 4 -2601 2597 -2413 -2600
		mu 0 4 1641 1638 1402 1403
		f 4 -2603 2599 -2411 -2602
		mu 0 4 1643 1640 1398 1399
		f 4 -2605 2601 -2409 -2604
		mu 0 4 1645 1642 1394 1395
		f 4 -2607 2603 -2407 -2606
		mu 0 4 1647 1644 1390 1391
		f 4 -2609 2605 -2405 -2608
		mu 0 4 1649 1646 1386 1387
		f 4 -2611 2607 -2403 -2610
		mu 0 4 1651 1648 1382 1383
		f 4 -2613 2609 -2401 -2612
		mu 0 4 1653 1650 1378 1379
		f 4 -2615 2611 -2399 -2614
		mu 0 4 1655 1652 1374 1375
		f 4 -2617 2613 -2397 -2616
		mu 0 4 1657 1654 1370 1371
		f 4 -2619 2615 -2395 -2618
		mu 0 4 1659 1656 1366 1367
		f 4 -2620 2617 -2393 -2581
		mu 0 4 1621 1658 1362 1363
		f 4 -2623 2620 2582 -2622
		mu 0 4 1663 1660 1620 1623
		f 4 -2625 2621 2584 -2624
		mu 0 4 1665 1662 1622 1625
		f 4 -2627 2623 2586 -2626
		mu 0 4 1667 1664 1624 1627
		f 4 -2629 2625 2588 -2628
		mu 0 4 1669 1666 1626 1629
		f 4 -2631 2627 2590 -2630
		mu 0 4 1671 1668 1628 1631
		f 4 -2633 2629 2592 -2632
		mu 0 4 1673 1670 1630 1633
		f 4 -2635 2631 2594 -2634
		mu 0 4 1675 1672 1632 1635
		f 4 -2637 2633 2596 -2636
		mu 0 4 1677 1674 1634 1637
		f 4 -2639 2635 2598 -2638
		mu 0 4 1679 1676 1636 1639
		f 4 -2641 2637 2600 -2640
		mu 0 4 1681 1678 1638 1641
		f 4 -2643 2639 2602 -2642
		mu 0 4 1683 1680 1640 1643
		f 4 -2645 2641 2604 -2644
		mu 0 4 1685 1682 1642 1645
		f 4 -2647 2643 2606 -2646
		mu 0 4 1687 1684 1644 1647
		f 4 -2649 2645 2608 -2648
		mu 0 4 1689 1686 1646 1649
		f 4 -2651 2647 2610 -2650
		mu 0 4 1691 1688 1648 1651
		f 4 -2653 2649 2612 -2652
		mu 0 4 1693 1690 1650 1653
		f 4 -2655 2651 2614 -2654
		mu 0 4 1695 1692 1652 1655
		f 4 -2657 2653 2616 -2656
		mu 0 4 1697 1694 1654 1657
		f 4 -2659 2655 2618 -2658
		mu 0 4 1699 1696 1656 1659
		f 4 -2660 2657 2619 -2621
		mu 0 4 1661 1698 1658 1621
		f 4 -2663 2660 2622 -2662
		mu 0 4 1703 1700 1660 1663
		f 4 -2665 2661 2624 -2664
		mu 0 4 1705 1702 1662 1665
		f 4 -2667 2663 2626 -2666
		mu 0 4 1707 1704 1664 1667
		f 4 -2669 2665 2628 -2668
		mu 0 4 1709 1706 1666 1669
		f 4 -2671 2667 2630 -2670
		mu 0 4 1711 1708 1668 1671
		f 4 -2673 2669 2632 -2672
		mu 0 4 1713 1710 1670 1673
		f 4 -2675 2671 2634 -2674
		mu 0 4 1715 1712 1672 1675
		f 4 -2677 2673 2636 -2676
		mu 0 4 1717 1714 1674 1677
		f 4 -2679 2675 2638 -2678
		mu 0 4 1719 1716 1676 1679
		f 4 -2681 2677 2640 -2680
		mu 0 4 1721 1718 1678 1681
		f 4 -2683 2679 2642 -2682
		mu 0 4 1723 1720 1680 1683
		f 4 -2685 2681 2644 -2684
		mu 0 4 1725 1722 1682 1685
		f 4 -2687 2683 2646 -2686
		mu 0 4 1727 1724 1684 1687
		f 4 -2689 2685 2648 -2688
		mu 0 4 1729 1726 1686 1689
		f 4 -2691 2687 2650 -2690
		mu 0 4 1731 1728 1688 1691
		f 4 -2693 2689 2652 -2692
		mu 0 4 1733 1730 1690 1693
		f 4 -2695 2691 2654 -2694
		mu 0 4 1735 1732 1692 1695
		f 4 -2697 2693 2656 -2696
		mu 0 4 1737 1734 1694 1697
		f 4 -2699 2695 2658 -2698
		mu 0 4 1739 1736 1696 1699
		f 4 -2700 2697 2659 -2661
		mu 0 4 1701 1738 1698 1661
		f 4 -2703 2700 2662 -2702
		mu 0 4 1743 1740 1700 1703
		f 4 -2705 2701 2664 -2704
		mu 0 4 1745 1742 1702 1705
		f 4 -2707 2703 2666 -2706
		mu 0 4 1747 1744 1704 1707
		f 4 -2709 2705 2668 -2708
		mu 0 4 1749 1746 1706 1709
		f 4 -2711 2707 2670 -2710
		mu 0 4 1751 1748 1708 1711
		f 4 -2713 2709 2672 -2712
		mu 0 4 1753 1750 1710 1713
		f 4 -2715 2711 2674 -2714
		mu 0 4 1755 1752 1712 1715
		f 4 -2717 2713 2676 -2716
		mu 0 4 1757 1754 1714 1717
		f 4 -2719 2715 2678 -2718
		mu 0 4 1759 1756 1716 1719
		f 4 -2721 2717 2680 -2720
		mu 0 4 1761 1758 1718 1721
		f 4 -2723 2719 2682 -2722
		mu 0 4 1763 1760 1720 1723
		f 4 -2725 2721 2684 -2724
		mu 0 4 1765 1762 1722 1725
		f 4 -2727 2723 2686 -2726
		mu 0 4 1767 1764 1724 1727
		f 4 -2729 2725 2688 -2728
		mu 0 4 1769 1766 1726 1729
		f 4 -2731 2727 2690 -2730
		mu 0 4 1771 1768 1728 1731
		f 4 -2733 2729 2692 -2732
		mu 0 4 1773 1770 1730 1733
		f 4 -2735 2731 2694 -2734
		mu 0 4 1775 1772 1732 1735
		f 4 -2737 2733 2696 -2736
		mu 0 4 1777 1774 1734 1737
		f 4 -2739 2735 2698 -2738
		mu 0 4 1779 1776 1736 1739
		f 4 -2740 2737 2699 -2701
		mu 0 4 1741 1778 1738 1701
		f 4 -2743 2740 2702 -2742
		mu 0 4 1783 1780 1740 1743
		f 4 -2745 2741 2704 -2744
		mu 0 4 1785 1782 1742 1745
		f 4 -2747 2743 2706 -2746
		mu 0 4 1787 1784 1744 1747
		f 4 -2749 2745 2708 -2748
		mu 0 4 1789 1786 1746 1749
		f 4 -2751 2747 2710 -2750
		mu 0 4 1791 1788 1748 1751
		f 4 -2753 2749 2712 -2752
		mu 0 4 1793 1790 1750 1753
		f 4 -2755 2751 2714 -2754
		mu 0 4 1795 1792 1752 1755
		f 4 -2757 2753 2716 -2756
		mu 0 4 1797 1794 1754 1757
		f 4 -2759 2755 2718 -2758
		mu 0 4 1799 1796 1756 1759
		f 4 -2761 2757 2720 -2760
		mu 0 4 1801 1798 1758 1761
		f 4 -2763 2759 2722 -2762
		mu 0 4 1803 1800 1760 1763
		f 4 -2765 2761 2724 -2764
		mu 0 4 1805 1802 1762 1765
		f 4 -2767 2763 2726 -2766
		mu 0 4 1807 1804 1764 1767
		f 4 -2769 2765 2728 -2768
		mu 0 4 1809 1806 1766 1769
		f 4 -2771 2767 2730 -2770
		mu 0 4 1811 1808 1768 1771
		f 4 -2773 2769 2732 -2772
		mu 0 4 1813 1810 1770 1773
		f 4 -2775 2771 2734 -2774
		mu 0 4 1815 1812 1772 1775
		f 4 -2777 2773 2736 -2776
		mu 0 4 1817 1814 1774 1777
		f 4 -2779 2775 2738 -2778
		mu 0 4 1819 1816 1776 1779
		f 4 -2780 2777 2739 -2741
		mu 0 4 1781 1818 1778 1741
		f 4 -2783 2780 2826 -2782
		mu 0 4 1823 1820 1864 1867
		f 4 -2785 2781 2828 -2784
		mu 0 4 1825 1822 1866 1869
		f 4 -2787 2783 2830 -2786
		mu 0 4 1827 1824 1868 1871
		f 4 -2789 2785 2832 -2788
		mu 0 4 1829 1826 1870 1873
		f 4 -2791 2787 2834 -2790
		mu 0 4 1831 1828 1872 1875
		f 4 -2793 2789 2836 -2792
		mu 0 4 1833 1830 1874 1877
		f 4 -2795 2791 2838 -2794
		mu 0 4 1835 1832 1876 1879
		f 4 -2797 2793 2840 -2796
		mu 0 4 1837 1834 1878 1881
		f 4 -2799 2795 2842 -2798
		mu 0 4 1839 1836 1880 1883
		f 4 -2801 2797 2844 -2800
		mu 0 4 1841 1838 1882 1885
		f 4 -2803 2799 2846 -2802
		mu 0 4 1843 1840 1884 1887
		f 4 -2805 2801 2848 -2804
		mu 0 4 1845 1842 1886 1889
		f 4 -2807 2803 2850 -2806
		mu 0 4 1847 1844 1888 1891
		f 4 -2809 2805 2852 -2808
		mu 0 4 1849 1846 1890 1893
		f 4 -2811 2807 2854 -2810
		mu 0 4 1851 1848 1892 1895
		f 4 -2813 2809 2856 -2812
		mu 0 4 1853 1850 1894 1897
		f 4 -2815 2811 2858 -2814
		mu 0 4 1855 1852 1896 1899
		f 4 -2817 2813 2859 -2816
		mu 0 4 1857 1854 1898 1861
		f 4 -2819 2815 2822 -2818
		mu 0 4 1859 1856 1860 1863
		f 4 -2820 2817 2824 -2781
		mu 0 4 1821 1858 1862 1865
		f 4 -2823 2820 2778 -2822
		mu 0 4 1863 1860 1816 1819
		f 4 -2825 2821 2779 -2824
		mu 0 4 1865 1862 1818 1781
		f 4 -2827 2823 2742 -2826
		mu 0 4 1867 1864 1780 1783
		f 4 -2829 2825 2744 -2828
		mu 0 4 1869 1866 1782 1785
		f 4 -2831 2827 2746 -2830
		mu 0 4 1871 1868 1784 1787
		f 4 -2833 2829 2748 -2832
		mu 0 4 1873 1870 1786 1789
		f 4 -2835 2831 2750 -2834
		mu 0 4 1875 1872 1788 1791
		f 4 -2837 2833 2752 -2836
		mu 0 4 1877 1874 1790 1793
		f 4 -2839 2835 2754 -2838
		mu 0 4 1879 1876 1792 1795
		f 4 -2841 2837 2756 -2840
		mu 0 4 1881 1878 1794 1797
		f 4 -2843 2839 2758 -2842
		mu 0 4 1883 1880 1796 1799
		f 4 -2845 2841 2760 -2844
		mu 0 4 1885 1882 1798 1801
		f 4 -2847 2843 2762 -2846
		mu 0 4 1887 1884 1800 1803
		f 4 -2849 2845 2764 -2848
		mu 0 4 1889 1886 1802 1805
		f 4 -2851 2847 2766 -2850
		mu 0 4 1891 1888 1804 1807
		f 4 -2853 2849 2768 -2852
		mu 0 4 1893 1890 1806 1809
		f 4 -2855 2851 2770 -2854
		mu 0 4 1895 1892 1808 1811
		f 4 -2857 2853 2772 -2856
		mu 0 4 1897 1894 1810 1813
		f 4 -2859 2855 2774 -2858
		mu 0 4 1899 1896 1812 1815
		f 4 -2860 2857 2776 -2821
		mu 0 4 1861 1898 1814 1817
		f 4 -2863 2860 2819 -2862
		mu 0 4 1903 1900 1858 1821
		f 4 -2865 2861 2782 -2864
		mu 0 4 1905 1902 1820 1823
		f 4 -2867 2863 2784 -2866
		mu 0 4 1907 1904 1822 1825
		f 4 -2869 2865 2786 -2868
		mu 0 4 1909 1906 1824 1827
		f 4 -2871 2867 2788 -2870
		mu 0 4 1911 1908 1826 1829
		f 4 -2873 2869 2790 -2872
		mu 0 4 1913 1910 1828 1831
		f 4 -2875 2871 2792 -2874
		mu 0 4 1915 1912 1830 1833
		f 4 -2877 2873 2794 -2876
		mu 0 4 1917 1914 1832 1835
		f 4 -2879 2875 2796 -2878
		mu 0 4 1919 1916 1834 1837
		f 4 -2881 2877 2798 -2880
		mu 0 4 1921 1918 1836 1839
		f 4 -2883 2879 2800 -2882
		mu 0 4 1923 1920 1838 1841
		f 4 -2885 2881 2802 -2884
		mu 0 4 1925 1922 1840 1843
		f 4 -2887 2883 2804 -2886
		mu 0 4 1927 1924 1842 1845
		f 4 -2889 2885 2806 -2888
		mu 0 4 1929 1926 1844 1847
		f 4 -2891 2887 2808 -2890
		mu 0 4 1931 1928 1846 1849
		f 4 -2893 2889 2810 -2892
		mu 0 4 1933 1930 1848 1851
		f 4 -2895 2891 2812 -2894
		mu 0 4 1935 1932 1850 1853
		f 4 -2897 2893 2814 -2896
		mu 0 4 1937 1934 1852 1855
		f 4 -2899 2895 2816 -2898
		mu 0 4 1939 1936 1854 1857
		f 4 -2900 2897 2818 -2861
		mu 0 4 1901 1938 1856 1859
		f 4 3110 2915 -3112 -2901
		mu 0 4 1940 1941 1942 1943
		f 4 3111 2916 -3113 -2902
		mu 0 4 1943 1942 1944 1945
		f 4 3112 2917 -3114 -2903
		mu 0 4 1945 1944 1946 1947
		f 4 3113 2918 -3115 -2904
		mu 0 4 1947 1946 1948 1949
		f 4 3114 2919 -3116 -2905
		mu 0 4 1949 1948 1950 1951
		f 4 3115 2920 -3117 -2906
		mu 0 4 1951 1950 1952 1953
		f 4 3116 2921 -3118 -2907
		mu 0 4 1953 1952 1954 1955
		f 4 3117 2922 -3119 -2908
		mu 0 4 1955 1954 1956 1957
		f 4 3118 2923 -3120 -2909
		mu 0 4 1957 1956 1958 1959
		f 4 3119 2924 -3121 -2910
		mu 0 4 1959 1958 1960 1961
		f 4 3120 2925 -3122 -2911
		mu 0 4 1961 1960 1962 1963
		f 4 3121 2926 -3123 -2912
		mu 0 4 1963 1962 1964 1965
		f 4 3122 2927 -3124 -2913
		mu 0 4 1965 1964 1966 1967
		f 4 3123 2928 -3125 -2914
		mu 0 4 1967 1966 1968 1969
		f 4 3124 2929 -3111 -2915
		mu 0 4 1969 1968 1970 1971
		f 4 3125 2930 -3127 -2916
		mu 0 4 1941 1972 1973 1942
		f 4 3126 2931 -3128 -2917
		mu 0 4 1942 1973 1974 1944
		f 4 3127 2932 -3129 -2918
		mu 0 4 1944 1974 1975 1946
		f 4 3128 2933 -3130 -2919
		mu 0 4 1946 1975 1976 1948
		f 4 3129 2934 -3131 -2920
		mu 0 4 1948 1976 1977 1950
		f 4 3130 2935 -3132 -2921
		mu 0 4 1950 1977 1978 1952
		f 4 3131 2936 -3133 -2922
		mu 0 4 1952 1978 1979 1954
		f 4 3132 2937 -3134 -2923
		mu 0 4 1954 1979 1980 1956
		f 4 3133 2938 -3135 -2924
		mu 0 4 1956 1980 1981 1958
		f 4 3134 2939 -3136 -2925
		mu 0 4 1958 1981 1982 1960
		f 4 3135 2940 -3137 -2926
		mu 0 4 1960 1982 1983 1962
		f 4 3136 2941 -3138 -2927
		mu 0 4 1962 1983 1984 1964
		f 4 3137 2942 -3139 -2928
		mu 0 4 1964 1984 1985 1966
		f 4 3138 2943 -3140 -2929
		mu 0 4 1966 1985 1986 1968
		f 4 3139 2944 -3126 -2930
		mu 0 4 1968 1986 1987 1970
		f 4 3140 2945 -3142 -2931
		mu 0 4 1972 1988 1989 1973
		f 4 3141 2946 -3143 -2932
		mu 0 4 1973 1989 1990 1974
		f 4 3142 2947 -3144 -2933
		mu 0 4 1974 1990 1991 1975
		f 4 3143 2948 -3145 -2934
		mu 0 4 1975 1991 1992 1976
		f 4 3144 2949 -3146 -2935
		mu 0 4 1976 1992 1993 1977
		f 4 3145 2950 -3147 -2936
		mu 0 4 1977 1993 1994 1978
		f 4 3146 2951 -3148 -2937
		mu 0 4 1978 1994 1995 1979
		f 4 3147 2952 -3149 -2938
		mu 0 4 1979 1995 1996 1980
		f 4 3148 2953 -3150 -2939
		mu 0 4 1980 1996 1997 1981
		f 4 3149 2954 -3151 -2940
		mu 0 4 1981 1997 1998 1982
		f 4 3150 2955 -3152 -2941
		mu 0 4 1982 1998 1999 1983
		f 4 3151 2956 -3153 -2942
		mu 0 4 1983 1999 2000 1984
		f 4 3152 2957 -3154 -2943
		mu 0 4 1984 2000 2001 1985
		f 4 3153 2958 -3155 -2944
		mu 0 4 1985 2001 2002 1986
		f 4 3154 2959 -3141 -2945
		mu 0 4 1986 2002 2003 1987
		f 4 3155 2960 -3157 -2946
		mu 0 4 1988 2004 2005 1989
		f 4 3156 2961 -3158 -2947
		mu 0 4 1989 2005 2006 1990
		f 4 3157 2962 -3159 -2948
		mu 0 4 1990 2006 2007 1991
		f 4 3158 2963 -3160 -2949
		mu 0 4 1991 2007 2008 1992
		f 4 3159 2964 -3161 -2950
		mu 0 4 1992 2008 2009 1993
		f 4 3160 2965 -3162 -2951
		mu 0 4 1993 2009 2010 1994
		f 4 3161 2966 -3163 -2952
		mu 0 4 1994 2010 2011 1995
		f 4 3162 2967 -3164 -2953
		mu 0 4 1995 2011 2012 1996
		f 4 3163 2968 -3165 -2954
		mu 0 4 1996 2012 2013 1997
		f 4 3164 2969 -3166 -2955
		mu 0 4 1997 2013 2014 1998
		f 4 3165 2970 -3167 -2956
		mu 0 4 1998 2014 2015 1999
		f 4 3166 2971 -3168 -2957
		mu 0 4 1999 2015 2016 2000
		f 4 3167 2972 -3169 -2958
		mu 0 4 2000 2016 2017 2001;
	setAttr ".fc[1500:1999]"
		f 4 3168 2973 -3170 -2959
		mu 0 4 2001 2017 2018 2002
		f 4 3169 2974 -3156 -2960
		mu 0 4 2002 2018 2019 2003
		f 4 3170 2975 -3172 -2961
		mu 0 4 2004 2020 2021 2005
		f 4 3171 2976 -3173 -2962
		mu 0 4 2005 2021 2022 2006
		f 4 3172 2977 -3174 -2963
		mu 0 4 2006 2022 2023 2007
		f 4 3173 2978 -3175 -2964
		mu 0 4 2007 2023 2024 2008
		f 4 3174 2979 -3176 -2965
		mu 0 4 2008 2024 2025 2009
		f 4 3175 2980 -3177 -2966
		mu 0 4 2009 2025 2026 2010
		f 4 3176 2981 -3178 -2967
		mu 0 4 2010 2026 2027 2011
		f 4 3177 2982 -3179 -2968
		mu 0 4 2011 2027 2028 2012
		f 4 3178 2983 -3180 -2969
		mu 0 4 2012 2028 2029 2013
		f 4 3179 2984 -3181 -2970
		mu 0 4 2013 2029 2030 2014
		f 4 3180 2985 -3182 -2971
		mu 0 4 2014 2030 2031 2015
		f 4 3181 2986 -3183 -2972
		mu 0 4 2015 2031 2032 2016
		f 4 3182 2987 -3184 -2973
		mu 0 4 2016 2032 2033 2017
		f 4 3183 2988 -3185 -2974
		mu 0 4 2017 2033 2034 2018
		f 4 3184 2989 -3171 -2975
		mu 0 4 2018 2034 2035 2019
		f 4 3185 2990 -3187 -2976
		mu 0 4 2020 2036 2037 2021
		f 4 3186 2991 -3188 -2977
		mu 0 4 2021 2037 2038 2022
		f 4 3187 2992 -3189 -2978
		mu 0 4 2022 2038 2039 2023
		f 4 3188 2993 -3190 -2979
		mu 0 4 2023 2039 2040 2024
		f 4 3189 2994 -3191 -2980
		mu 0 4 2024 2040 2041 2025
		f 4 3190 2995 -3192 -2981
		mu 0 4 2025 2041 2042 2026
		f 4 3191 2996 -3193 -2982
		mu 0 4 2026 2042 2043 2027
		f 4 3192 2997 -3194 -2983
		mu 0 4 2027 2043 2044 2028
		f 4 3193 2998 -3195 -2984
		mu 0 4 2028 2044 2045 2029
		f 4 3194 2999 -3196 -2985
		mu 0 4 2029 2045 2046 2030
		f 4 3195 3000 -3197 -2986
		mu 0 4 2030 2046 2047 2031
		f 4 3196 3001 -3198 -2987
		mu 0 4 2031 2047 2048 2032
		f 4 3197 3002 -3199 -2988
		mu 0 4 2032 2048 2049 2033
		f 4 3198 3003 -3200 -2989
		mu 0 4 2033 2049 2050 2034
		f 4 3199 3004 -3186 -2990
		mu 0 4 2034 2050 2051 2035
		f 4 3200 3005 -3202 -2991
		mu 0 4 2036 2052 2053 2037
		f 4 3201 3006 -3203 -2992
		mu 0 4 2037 2053 2054 2038
		f 4 3202 3007 -3204 -2993
		mu 0 4 2038 2054 2055 2039
		f 4 3203 3008 -3205 -2994
		mu 0 4 2039 2055 2056 2040
		f 4 3204 3009 -3206 -2995
		mu 0 4 2040 2056 2057 2041
		f 4 3205 3010 -3207 -2996
		mu 0 4 2041 2057 2058 2042
		f 4 3206 3011 -3208 -2997
		mu 0 4 2042 2058 2059 2043
		f 4 3207 3012 -3209 -2998
		mu 0 4 2043 2059 2060 2044
		f 4 3208 3013 -3210 -2999
		mu 0 4 2044 2060 2061 2045
		f 4 3209 3014 -3211 -3000
		mu 0 4 2045 2061 2062 2046
		f 4 3210 3015 -3212 -3001
		mu 0 4 2046 2062 2063 2047
		f 4 3211 3016 -3213 -3002
		mu 0 4 2047 2063 2064 2048
		f 4 3212 3017 -3214 -3003
		mu 0 4 2048 2064 2065 2049
		f 4 3213 3018 -3215 -3004
		mu 0 4 2049 2065 2066 2050
		f 4 3214 3019 -3201 -3005
		mu 0 4 2050 2066 2067 2051
		f 4 3215 3020 -3217 -3006
		mu 0 4 2052 2068 2069 2053
		f 4 3216 3021 -3218 -3007
		mu 0 4 2053 2069 2070 2054
		f 4 3217 3022 -3219 -3008
		mu 0 4 2054 2070 2071 2055
		f 4 3218 3023 -3220 -3009
		mu 0 4 2055 2071 2072 2056
		f 4 3219 3024 -3221 -3010
		mu 0 4 2056 2072 2073 2057
		f 4 3220 3025 -3222 -3011
		mu 0 4 2057 2073 2074 2058
		f 4 3221 3026 -3223 -3012
		mu 0 4 2058 2074 2075 2059
		f 4 3222 3027 -3224 -3013
		mu 0 4 2059 2075 2076 2060
		f 4 3223 3028 -3225 -3014
		mu 0 4 2060 2076 2077 2061
		f 4 3224 3029 -3226 -3015
		mu 0 4 2061 2077 2078 2062
		f 4 3225 3030 -3227 -3016
		mu 0 4 2062 2078 2079 2063
		f 4 3226 3031 -3228 -3017
		mu 0 4 2063 2079 2080 2064
		f 4 3227 3032 -3229 -3018
		mu 0 4 2064 2080 2081 2065
		f 4 3228 3033 -3230 -3019
		mu 0 4 2065 2081 2082 2066
		f 4 3229 3034 -3216 -3020
		mu 0 4 2066 2082 2083 2067
		f 4 3230 3035 -3232 -3021
		mu 0 4 2068 2084 2085 2069
		f 4 3231 3036 -3233 -3022
		mu 0 4 2069 2085 2086 2070
		f 4 3232 3037 -3234 -3023
		mu 0 4 2070 2086 2087 2071
		f 4 3233 3038 -3235 -3024
		mu 0 4 2071 2087 2088 2072
		f 4 3234 3039 -3236 -3025
		mu 0 4 2072 2088 2089 2073
		f 4 3235 3040 -3237 -3026
		mu 0 4 2073 2089 2090 2074
		f 4 3236 3041 -3238 -3027
		mu 0 4 2074 2090 2091 2075
		f 4 3237 3042 -3239 -3028
		mu 0 4 2075 2091 2092 2076
		f 4 3238 3043 -3240 -3029
		mu 0 4 2076 2092 2093 2077
		f 4 3239 3044 -3241 -3030
		mu 0 4 2077 2093 2094 2078
		f 4 3240 3045 -3242 -3031
		mu 0 4 2078 2094 2095 2079
		f 4 3241 3046 -3243 -3032
		mu 0 4 2079 2095 2096 2080
		f 4 3242 3047 -3244 -3033
		mu 0 4 2080 2096 2097 2081
		f 4 3243 3048 -3245 -3034
		mu 0 4 2081 2097 2098 2082
		f 4 3244 3049 -3231 -3035
		mu 0 4 2082 2098 2099 2083
		f 4 3245 3050 -3247 -3036
		mu 0 4 2084 2100 2101 2085
		f 4 3246 3051 -3248 -3037
		mu 0 4 2085 2101 2102 2086
		f 4 3247 3052 -3249 -3038
		mu 0 4 2086 2102 2103 2087
		f 4 3248 3053 -3250 -3039
		mu 0 4 2087 2103 2104 2088
		f 4 3249 3054 -3251 -3040
		mu 0 4 2088 2104 2105 2089
		f 4 3250 3055 -3252 -3041
		mu 0 4 2089 2105 2106 2090
		f 4 3251 3056 -3253 -3042
		mu 0 4 2090 2106 2107 2091
		f 4 3252 3057 -3254 -3043
		mu 0 4 2091 2107 2108 2092
		f 4 3253 3058 -3255 -3044
		mu 0 4 2092 2108 2109 2093
		f 4 3254 3059 -3256 -3045
		mu 0 4 2093 2109 2110 2094
		f 4 3255 3060 -3257 -3046
		mu 0 4 2094 2110 2111 2095
		f 4 3256 3061 -3258 -3047
		mu 0 4 2095 2111 2112 2096
		f 4 3257 3062 -3259 -3048
		mu 0 4 2096 2112 2113 2097
		f 4 3258 3063 -3260 -3049
		mu 0 4 2097 2113 2114 2098
		f 4 3259 3064 -3246 -3050
		mu 0 4 2098 2114 2115 2099
		f 4 3260 3065 -3262 -3051
		mu 0 4 2100 2116 2117 2101
		f 4 3261 3066 -3263 -3052
		mu 0 4 2101 2117 2118 2102
		f 4 3262 3067 -3264 -3053
		mu 0 4 2102 2118 2119 2103
		f 4 3263 3068 -3265 -3054
		mu 0 4 2103 2119 2120 2104
		f 4 3264 3069 -3266 -3055
		mu 0 4 2104 2120 2121 2105
		f 4 3265 3070 -3267 -3056
		mu 0 4 2105 2121 2122 2106
		f 4 3266 3071 -3268 -3057
		mu 0 4 2106 2122 2123 2107
		f 4 3267 3072 -3269 -3058
		mu 0 4 2107 2123 2124 2108
		f 4 3268 3073 -3270 -3059
		mu 0 4 2108 2124 2125 2109
		f 4 3269 3074 -3271 -3060
		mu 0 4 2109 2125 2126 2110
		f 4 3270 3075 -3272 -3061
		mu 0 4 2110 2126 2127 2111
		f 4 3271 3076 -3273 -3062
		mu 0 4 2111 2127 2128 2112
		f 4 3272 3077 -3274 -3063
		mu 0 4 2112 2128 2129 2113
		f 4 3273 3078 -3275 -3064
		mu 0 4 2113 2129 2130 2114
		f 4 3274 3079 -3261 -3065
		mu 0 4 2114 2130 2131 2115
		f 4 3275 3080 -3277 -3066
		mu 0 4 2116 2132 2133 2117
		f 4 3276 3081 -3278 -3067
		mu 0 4 2117 2133 2134 2118
		f 4 3277 3082 -3279 -3068
		mu 0 4 2118 2134 2135 2119
		f 4 3278 3083 -3280 -3069
		mu 0 4 2119 2135 2136 2120
		f 4 3279 3084 -3281 -3070
		mu 0 4 2120 2136 2137 2121
		f 4 3280 3085 -3282 -3071
		mu 0 4 2121 2137 2138 2122
		f 4 3281 3086 -3283 -3072
		mu 0 4 2122 2138 2139 2123
		f 4 3282 3087 -3284 -3073
		mu 0 4 2123 2139 2140 2124
		f 4 3283 3088 -3285 -3074
		mu 0 4 2124 2140 2141 2125
		f 4 3284 3089 -3286 -3075
		mu 0 4 2125 2141 2142 2126
		f 4 3285 3090 -3287 -3076
		mu 0 4 2126 2142 2143 2127
		f 4 3286 3091 -3288 -3077
		mu 0 4 2127 2143 2144 2128
		f 4 3287 3092 -3289 -3078
		mu 0 4 2128 2144 2145 2129
		f 4 3288 3093 -3290 -3079
		mu 0 4 2129 2145 2146 2130
		f 4 3289 3094 -3276 -3080
		mu 0 4 2130 2146 2147 2131
		f 4 3290 3095 -3292 -3081
		mu 0 4 2132 2148 2149 2133
		f 4 3291 3096 -3293 -3082
		mu 0 4 2133 2149 2150 2134
		f 4 3292 3097 -3294 -3083
		mu 0 4 2134 2150 2151 2135
		f 4 3293 3098 -3295 -3084
		mu 0 4 2135 2151 2152 2136
		f 4 3294 3099 -3296 -3085
		mu 0 4 2136 2152 2153 2137
		f 4 3295 3100 -3297 -3086
		mu 0 4 2137 2153 2154 2138
		f 4 3296 3101 -3298 -3087
		mu 0 4 2138 2154 2155 2139
		f 4 3297 3102 -3299 -3088
		mu 0 4 2139 2155 2156 2140
		f 4 3298 3103 -3300 -3089
		mu 0 4 2140 2156 2157 2141
		f 4 3299 3104 -3301 -3090
		mu 0 4 2141 2157 2158 2142
		f 4 3300 3105 -3302 -3091
		mu 0 4 2142 2158 2159 2143
		f 4 3301 3106 -3303 -3092
		mu 0 4 2143 2159 2160 2144
		f 4 3302 3107 -3304 -3093
		mu 0 4 2144 2160 2161 2145
		f 4 3303 3108 -3305 -3094
		mu 0 4 2145 2161 2162 2146
		f 4 3304 3109 -3291 -3095
		mu 0 4 2146 2162 2163 2147
		f 3 -3307 3305 2900
		mu 0 3 1943 2164 1940
		f 3 -3308 3306 2901
		mu 0 3 1945 2165 1943
		f 3 -3309 3307 2902
		mu 0 3 1947 2166 1945
		f 3 -3310 3308 2903
		mu 0 3 1949 2167 1947
		f 3 -3311 3309 2904
		mu 0 3 1951 2168 1949
		f 3 -3312 3310 2905
		mu 0 3 1953 2169 1951
		f 3 -3313 3311 2906
		mu 0 3 1955 2170 1953
		f 3 -3314 3312 2907
		mu 0 3 1957 2171 1955
		f 3 -3315 3313 2908
		mu 0 3 1959 2172 1957
		f 3 -3316 3314 2909
		mu 0 3 1961 2173 1959
		f 3 -3317 3315 2910
		mu 0 3 1963 2174 1961
		f 3 -3318 3316 2911
		mu 0 3 1965 2175 1963
		f 3 -3319 3317 2912
		mu 0 3 1967 2176 1965
		f 3 -3320 3318 2913
		mu 0 3 1969 2177 1967
		f 3 -3306 3319 2914
		mu 0 3 1971 2178 1969
		f 3 3320 -3322 -3096
		mu 0 3 2148 2179 2149
		f 3 3321 -3323 -3097
		mu 0 3 2149 2180 2150
		f 3 3322 -3324 -3098
		mu 0 3 2150 2181 2151
		f 3 3323 -3325 -3099
		mu 0 3 2151 2182 2152
		f 3 3324 -3326 -3100
		mu 0 3 2152 2183 2153
		f 3 3325 -3327 -3101
		mu 0 3 2153 2184 2154
		f 3 3326 -3328 -3102
		mu 0 3 2154 2185 2155
		f 3 3327 -3329 -3103
		mu 0 3 2155 2186 2156
		f 3 3328 -3330 -3104
		mu 0 3 2156 2187 2157
		f 3 3329 -3331 -3105
		mu 0 3 2157 2188 2158
		f 3 3330 -3332 -3106
		mu 0 3 2158 2189 2159
		f 3 3331 -3333 -3107
		mu 0 3 2159 2190 2160
		f 3 3332 -3334 -3108
		mu 0 3 2160 2191 2161
		f 3 3333 -3335 -3109
		mu 0 3 2161 2192 2162
		f 3 3334 -3321 -3110
		mu 0 3 2162 2193 2163
		f 4 3335 3546 -3351 -3546
		mu 0 4 2194 2195 2196 2197
		f 4 3336 3547 -3352 -3547
		mu 0 4 2195 2198 2199 2196
		f 4 3337 3548 -3353 -3548
		mu 0 4 2198 2200 2201 2199
		f 4 3338 3549 -3354 -3549
		mu 0 4 2200 2202 2203 2201
		f 4 3339 3550 -3355 -3550
		mu 0 4 2202 2204 2205 2203
		f 4 3340 3551 -3356 -3551
		mu 0 4 2204 2206 2207 2205
		f 4 3341 3552 -3357 -3552
		mu 0 4 2206 2208 2209 2207
		f 4 3342 3553 -3358 -3553
		mu 0 4 2208 2210 2211 2209
		f 4 3343 3554 -3359 -3554
		mu 0 4 2210 2212 2213 2211
		f 4 3344 3555 -3360 -3555
		mu 0 4 2212 2214 2215 2213
		f 4 3345 3556 -3361 -3556
		mu 0 4 2214 2216 2217 2215
		f 4 3346 3557 -3362 -3557
		mu 0 4 2216 2218 2219 2217
		f 4 3347 3558 -3363 -3558
		mu 0 4 2218 2220 2221 2219
		f 4 3348 3559 -3364 -3559
		mu 0 4 2220 2222 2223 2221
		f 4 3349 3545 -3365 -3560
		mu 0 4 2222 2224 2225 2223
		f 4 3350 3561 -3366 -3561
		mu 0 4 2197 2196 2226 2227
		f 4 3351 3562 -3367 -3562
		mu 0 4 2196 2199 2228 2226
		f 4 3352 3563 -3368 -3563
		mu 0 4 2199 2201 2229 2228
		f 4 3353 3564 -3369 -3564
		mu 0 4 2201 2203 2230 2229
		f 4 3354 3565 -3370 -3565
		mu 0 4 2203 2205 2231 2230
		f 4 3355 3566 -3371 -3566
		mu 0 4 2205 2207 2232 2231
		f 4 3356 3567 -3372 -3567
		mu 0 4 2207 2209 2233 2232
		f 4 3357 3568 -3373 -3568
		mu 0 4 2209 2211 2234 2233
		f 4 3358 3569 -3374 -3569
		mu 0 4 2211 2213 2235 2234
		f 4 3359 3570 -3375 -3570
		mu 0 4 2213 2215 2236 2235
		f 4 3360 3571 -3376 -3571
		mu 0 4 2215 2217 2237 2236
		f 4 3361 3572 -3377 -3572
		mu 0 4 2217 2219 2238 2237
		f 4 3362 3573 -3378 -3573
		mu 0 4 2219 2221 2239 2238
		f 4 3363 3574 -3379 -3574
		mu 0 4 2221 2223 2240 2239
		f 4 3364 3560 -3380 -3575
		mu 0 4 2223 2225 2241 2240
		f 4 3365 3576 -3381 -3576
		mu 0 4 2227 2226 2242 2243
		f 4 3366 3577 -3382 -3577
		mu 0 4 2226 2228 2244 2242
		f 4 3367 3578 -3383 -3578
		mu 0 4 2228 2229 2245 2244
		f 4 3368 3579 -3384 -3579
		mu 0 4 2229 2230 2246 2245
		f 4 3369 3580 -3385 -3580
		mu 0 4 2230 2231 2247 2246
		f 4 3370 3581 -3386 -3581
		mu 0 4 2231 2232 2248 2247
		f 4 3371 3582 -3387 -3582
		mu 0 4 2232 2233 2249 2248
		f 4 3372 3583 -3388 -3583
		mu 0 4 2233 2234 2250 2249
		f 4 3373 3584 -3389 -3584
		mu 0 4 2234 2235 2251 2250
		f 4 3374 3585 -3390 -3585
		mu 0 4 2235 2236 2252 2251
		f 4 3375 3586 -3391 -3586
		mu 0 4 2236 2237 2253 2252
		f 4 3376 3587 -3392 -3587
		mu 0 4 2237 2238 2254 2253
		f 4 3377 3588 -3393 -3588
		mu 0 4 2238 2239 2255 2254
		f 4 3378 3589 -3394 -3589
		mu 0 4 2239 2240 2256 2255
		f 4 3379 3575 -3395 -3590
		mu 0 4 2240 2241 2257 2256
		f 4 3380 3591 -3396 -3591
		mu 0 4 2243 2242 2258 2259
		f 4 3381 3592 -3397 -3592
		mu 0 4 2242 2244 2260 2258
		f 4 3382 3593 -3398 -3593
		mu 0 4 2244 2245 2261 2260
		f 4 3383 3594 -3399 -3594
		mu 0 4 2245 2246 2262 2261
		f 4 3384 3595 -3400 -3595
		mu 0 4 2246 2247 2263 2262
		f 4 3385 3596 -3401 -3596
		mu 0 4 2247 2248 2264 2263
		f 4 3386 3597 -3402 -3597
		mu 0 4 2248 2249 2265 2264
		f 4 3387 3598 -3403 -3598
		mu 0 4 2249 2250 2266 2265
		f 4 3388 3599 -3404 -3599
		mu 0 4 2250 2251 2267 2266
		f 4 3389 3600 -3405 -3600
		mu 0 4 2251 2252 2268 2267
		f 4 3390 3601 -3406 -3601
		mu 0 4 2252 2253 2269 2268
		f 4 3391 3602 -3407 -3602
		mu 0 4 2253 2254 2270 2269
		f 4 3392 3603 -3408 -3603
		mu 0 4 2254 2255 2271 2270
		f 4 3393 3604 -3409 -3604
		mu 0 4 2255 2256 2272 2271
		f 4 3394 3590 -3410 -3605
		mu 0 4 2256 2257 2273 2272
		f 4 3395 3606 -3411 -3606
		mu 0 4 2259 2258 2274 2275
		f 4 3396 3607 -3412 -3607
		mu 0 4 2258 2260 2276 2274
		f 4 3397 3608 -3413 -3608
		mu 0 4 2260 2261 2277 2276
		f 4 3398 3609 -3414 -3609
		mu 0 4 2261 2262 2278 2277
		f 4 3399 3610 -3415 -3610
		mu 0 4 2262 2263 2279 2278
		f 4 3400 3611 -3416 -3611
		mu 0 4 2263 2264 2280 2279
		f 4 3401 3612 -3417 -3612
		mu 0 4 2264 2265 2281 2280
		f 4 3402 3613 -3418 -3613
		mu 0 4 2265 2266 2282 2281
		f 4 3403 3614 -3419 -3614
		mu 0 4 2266 2267 2283 2282
		f 4 3404 3615 -3420 -3615
		mu 0 4 2267 2268 2284 2283
		f 4 3405 3616 -3421 -3616
		mu 0 4 2268 2269 2285 2284
		f 4 3406 3617 -3422 -3617
		mu 0 4 2269 2270 2286 2285
		f 4 3407 3618 -3423 -3618
		mu 0 4 2270 2271 2287 2286
		f 4 3408 3619 -3424 -3619
		mu 0 4 2271 2272 2288 2287
		f 4 3409 3605 -3425 -3620
		mu 0 4 2272 2273 2289 2288
		f 4 3410 3621 -3426 -3621
		mu 0 4 2275 2274 2290 2291
		f 4 3411 3622 -3427 -3622
		mu 0 4 2274 2276 2292 2290
		f 4 3412 3623 -3428 -3623
		mu 0 4 2276 2277 2293 2292
		f 4 3413 3624 -3429 -3624
		mu 0 4 2277 2278 2294 2293
		f 4 3414 3625 -3430 -3625
		mu 0 4 2278 2279 2295 2294
		f 4 3415 3626 -3431 -3626
		mu 0 4 2279 2280 2296 2295
		f 4 3416 3627 -3432 -3627
		mu 0 4 2280 2281 2297 2296
		f 4 3417 3628 -3433 -3628
		mu 0 4 2281 2282 2298 2297
		f 4 3418 3629 -3434 -3629
		mu 0 4 2282 2283 2299 2298
		f 4 3419 3630 -3435 -3630
		mu 0 4 2283 2284 2300 2299
		f 4 3420 3631 -3436 -3631
		mu 0 4 2284 2285 2301 2300
		f 4 3421 3632 -3437 -3632
		mu 0 4 2285 2286 2302 2301
		f 4 3422 3633 -3438 -3633
		mu 0 4 2286 2287 2303 2302
		f 4 3423 3634 -3439 -3634
		mu 0 4 2287 2288 2304 2303
		f 4 3424 3620 -3440 -3635
		mu 0 4 2288 2289 2305 2304
		f 4 3425 3636 -3441 -3636
		mu 0 4 2291 2290 2306 2307
		f 4 3426 3637 -3442 -3637
		mu 0 4 2290 2292 2308 2306
		f 4 3427 3638 -3443 -3638
		mu 0 4 2292 2293 2309 2308
		f 4 3428 3639 -3444 -3639
		mu 0 4 2293 2294 2310 2309
		f 4 3429 3640 -3445 -3640
		mu 0 4 2294 2295 2311 2310
		f 4 3430 3641 -3446 -3641
		mu 0 4 2295 2296 2312 2311
		f 4 3431 3642 -3447 -3642
		mu 0 4 2296 2297 2313 2312
		f 4 3432 3643 -3448 -3643
		mu 0 4 2297 2298 2314 2313
		f 4 3433 3644 -3449 -3644
		mu 0 4 2298 2299 2315 2314
		f 4 3434 3645 -3450 -3645
		mu 0 4 2299 2300 2316 2315
		f 4 3435 3646 -3451 -3646
		mu 0 4 2300 2301 2317 2316
		f 4 3436 3647 -3452 -3647
		mu 0 4 2301 2302 2318 2317
		f 4 3437 3648 -3453 -3648
		mu 0 4 2302 2303 2319 2318
		f 4 3438 3649 -3454 -3649
		mu 0 4 2303 2304 2320 2319
		f 4 3439 3635 -3455 -3650
		mu 0 4 2304 2305 2321 2320
		f 4 3440 3651 -3456 -3651
		mu 0 4 2307 2306 2322 2323
		f 4 3441 3652 -3457 -3652
		mu 0 4 2306 2308 2324 2322
		f 4 3442 3653 -3458 -3653
		mu 0 4 2308 2309 2325 2324
		f 4 3443 3654 -3459 -3654
		mu 0 4 2309 2310 2326 2325
		f 4 3444 3655 -3460 -3655
		mu 0 4 2310 2311 2327 2326
		f 4 3445 3656 -3461 -3656
		mu 0 4 2311 2312 2328 2327
		f 4 3446 3657 -3462 -3657
		mu 0 4 2312 2313 2329 2328
		f 4 3447 3658 -3463 -3658
		mu 0 4 2313 2314 2330 2329
		f 4 3448 3659 -3464 -3659
		mu 0 4 2314 2315 2331 2330
		f 4 3449 3660 -3465 -3660
		mu 0 4 2315 2316 2332 2331
		f 4 3450 3661 -3466 -3661
		mu 0 4 2316 2317 2333 2332
		f 4 3451 3662 -3467 -3662
		mu 0 4 2317 2318 2334 2333
		f 4 3452 3663 -3468 -3663
		mu 0 4 2318 2319 2335 2334
		f 4 3453 3664 -3469 -3664
		mu 0 4 2319 2320 2336 2335
		f 4 3454 3650 -3470 -3665
		mu 0 4 2320 2321 2337 2336
		f 4 3455 3666 -3471 -3666
		mu 0 4 2323 2322 2338 2339
		f 4 3456 3667 -3472 -3667
		mu 0 4 2322 2324 2340 2338
		f 4 3457 3668 -3473 -3668
		mu 0 4 2324 2325 2341 2340
		f 4 3458 3669 -3474 -3669
		mu 0 4 2325 2326 2342 2341
		f 4 3459 3670 -3475 -3670
		mu 0 4 2326 2327 2343 2342
		f 4 3460 3671 -3476 -3671
		mu 0 4 2327 2328 2344 2343
		f 4 3461 3672 -3477 -3672
		mu 0 4 2328 2329 2345 2344
		f 4 3462 3673 -3478 -3673
		mu 0 4 2329 2330 2346 2345
		f 4 3463 3674 -3479 -3674
		mu 0 4 2330 2331 2347 2346
		f 4 3464 3675 -3480 -3675
		mu 0 4 2331 2332 2348 2347
		f 4 3465 3676 -3481 -3676
		mu 0 4 2332 2333 2349 2348
		f 4 3466 3677 -3482 -3677
		mu 0 4 2333 2334 2350 2349
		f 4 3467 3678 -3483 -3678
		mu 0 4 2334 2335 2351 2350
		f 4 3468 3679 -3484 -3679
		mu 0 4 2335 2336 2352 2351
		f 4 3469 3665 -3485 -3680
		mu 0 4 2336 2337 2353 2352
		f 4 3470 3681 -3486 -3681
		mu 0 4 2339 2338 2354 2355
		f 4 3471 3682 -3487 -3682
		mu 0 4 2338 2340 2356 2354
		f 4 3472 3683 -3488 -3683
		mu 0 4 2340 2341 2357 2356
		f 4 3473 3684 -3489 -3684
		mu 0 4 2341 2342 2358 2357
		f 4 3474 3685 -3490 -3685
		mu 0 4 2342 2343 2359 2358
		f 4 3475 3686 -3491 -3686
		mu 0 4 2343 2344 2360 2359
		f 4 3476 3687 -3492 -3687
		mu 0 4 2344 2345 2361 2360
		f 4 3477 3688 -3493 -3688
		mu 0 4 2345 2346 2362 2361
		f 4 3478 3689 -3494 -3689
		mu 0 4 2346 2347 2363 2362
		f 4 3479 3690 -3495 -3690
		mu 0 4 2347 2348 2364 2363
		f 4 3480 3691 -3496 -3691
		mu 0 4 2348 2349 2365 2364
		f 4 3481 3692 -3497 -3692
		mu 0 4 2349 2350 2366 2365
		f 4 3482 3693 -3498 -3693
		mu 0 4 2350 2351 2367 2366
		f 4 3483 3694 -3499 -3694
		mu 0 4 2351 2352 2368 2367
		f 4 3484 3680 -3500 -3695
		mu 0 4 2352 2353 2369 2368
		f 4 3485 3696 -3501 -3696
		mu 0 4 2355 2354 2370 2371
		f 4 3486 3697 -3502 -3697
		mu 0 4 2354 2356 2372 2370
		f 4 3487 3698 -3503 -3698
		mu 0 4 2356 2357 2373 2372
		f 4 3488 3699 -3504 -3699
		mu 0 4 2357 2358 2374 2373
		f 4 3489 3700 -3505 -3700
		mu 0 4 2358 2359 2375 2374
		f 4 3490 3701 -3506 -3701
		mu 0 4 2359 2360 2376 2375
		f 4 3491 3702 -3507 -3702
		mu 0 4 2360 2361 2377 2376
		f 4 3492 3703 -3508 -3703
		mu 0 4 2361 2362 2378 2377
		f 4 3493 3704 -3509 -3704
		mu 0 4 2362 2363 2379 2378
		f 4 3494 3705 -3510 -3705
		mu 0 4 2363 2364 2380 2379
		f 4 3495 3706 -3511 -3706
		mu 0 4 2364 2365 2381 2380
		f 4 3496 3707 -3512 -3707
		mu 0 4 2365 2366 2382 2381
		f 4 3497 3708 -3513 -3708
		mu 0 4 2366 2367 2383 2382
		f 4 3498 3709 -3514 -3709
		mu 0 4 2367 2368 2384 2383
		f 4 3499 3695 -3515 -3710
		mu 0 4 2368 2369 2385 2384
		f 4 3500 3711 -3516 -3711
		mu 0 4 2371 2370 2386 2387
		f 4 3501 3712 -3517 -3712
		mu 0 4 2370 2372 2388 2386
		f 4 3502 3713 -3518 -3713
		mu 0 4 2372 2373 2389 2388
		f 4 3503 3714 -3519 -3714
		mu 0 4 2373 2374 2390 2389
		f 4 3504 3715 -3520 -3715
		mu 0 4 2374 2375 2391 2390
		f 4 3505 3716 -3521 -3716
		mu 0 4 2375 2376 2392 2391
		f 4 3506 3717 -3522 -3717
		mu 0 4 2376 2377 2393 2392
		f 4 3507 3718 -3523 -3718
		mu 0 4 2377 2378 2394 2393
		f 4 3508 3719 -3524 -3719
		mu 0 4 2378 2379 2395 2394
		f 4 3509 3720 -3525 -3720
		mu 0 4 2379 2380 2396 2395
		f 4 3510 3721 -3526 -3721
		mu 0 4 2380 2381 2397 2396
		f 4 3511 3722 -3527 -3722
		mu 0 4 2381 2382 2398 2397
		f 4 3512 3723 -3528 -3723
		mu 0 4 2382 2383 2399 2398
		f 4 3513 3724 -3529 -3724
		mu 0 4 2383 2384 2400 2399
		f 4 3514 3710 -3530 -3725
		mu 0 4 2384 2385 2401 2400
		f 4 3515 3726 -3531 -3726
		mu 0 4 2387 2386 2402 2403
		f 4 3516 3727 -3532 -3727
		mu 0 4 2386 2388 2404 2402
		f 4 3517 3728 -3533 -3728
		mu 0 4 2388 2389 2405 2404
		f 4 3518 3729 -3534 -3729
		mu 0 4 2389 2390 2406 2405
		f 4 3519 3730 -3535 -3730
		mu 0 4 2390 2391 2407 2406
		f 4 3520 3731 -3536 -3731
		mu 0 4 2391 2392 2408 2407
		f 4 3521 3732 -3537 -3732
		mu 0 4 2392 2393 2409 2408
		f 4 3522 3733 -3538 -3733
		mu 0 4 2393 2394 2410 2409
		f 4 3523 3734 -3539 -3734
		mu 0 4 2394 2395 2411 2410
		f 4 3524 3735 -3540 -3735
		mu 0 4 2395 2396 2412 2411
		f 4 3525 3736 -3541 -3736
		mu 0 4 2396 2397 2413 2412
		f 4 3526 3737 -3542 -3737
		mu 0 4 2397 2398 2414 2413
		f 4 3527 3738 -3543 -3738
		mu 0 4 2398 2399 2415 2414
		f 4 3528 3739 -3544 -3739
		mu 0 4 2399 2400 2416 2415
		f 4 3529 3725 -3545 -3740
		mu 0 4 2400 2401 2417 2416
		f 3 -3336 -3741 3741
		mu 0 3 2195 2194 2418
		f 3 -3337 -3742 3742
		mu 0 3 2198 2195 2419
		f 3 -3338 -3743 3743
		mu 0 3 2200 2198 2420
		f 3 -3339 -3744 3744
		mu 0 3 2202 2200 2421
		f 3 -3340 -3745 3745
		mu 0 3 2204 2202 2422
		f 3 -3341 -3746 3746
		mu 0 3 2206 2204 2423
		f 3 -3342 -3747 3747
		mu 0 3 2208 2206 2424
		f 3 -3343 -3748 3748
		mu 0 3 2210 2208 2425
		f 3 -3344 -3749 3749
		mu 0 3 2212 2210 2426
		f 3 -3345 -3750 3750
		mu 0 3 2214 2212 2427
		f 3 -3346 -3751 3751
		mu 0 3 2216 2214 2428
		f 3 -3347 -3752 3752
		mu 0 3 2218 2216 2429
		f 3 -3348 -3753 3753
		mu 0 3 2220 2218 2430
		f 3 -3349 -3754 3754
		mu 0 3 2222 2220 2431
		f 3 -3350 -3755 3740
		mu 0 3 2224 2222 2432
		f 3 3530 3756 -3756
		mu 0 3 2403 2402 2433
		f 3 3531 3757 -3757
		mu 0 3 2402 2404 2434
		f 3 3532 3758 -3758
		mu 0 3 2404 2405 2435
		f 3 3533 3759 -3759
		mu 0 3 2405 2406 2436
		f 3 3534 3760 -3760
		mu 0 3 2406 2407 2437
		f 3 3535 3761 -3761
		mu 0 3 2407 2408 2438
		f 3 3536 3762 -3762
		mu 0 3 2408 2409 2439
		f 3 3537 3763 -3763
		mu 0 3 2409 2410 2440
		f 3 3538 3764 -3764
		mu 0 3 2410 2411 2441
		f 3 3539 3765 -3765
		mu 0 3 2411 2412 2442
		f 3 3540 3766 -3766
		mu 0 3 2412 2413 2443
		f 3 3541 3767 -3767
		mu 0 3 2413 2414 2444
		f 3 3542 3768 -3768
		mu 0 3 2414 2415 2445
		f 3 3543 3769 -3769
		mu 0 3 2415 2416 2446
		f 3 3544 3755 -3770
		mu 0 3 2416 2417 2447
		f 4 3770 4151 -3791 -4151
		mu 0 4 2448 2449 2450 2451
		f 4 3771 4152 -3792 -4152
		mu 0 4 2449 2452 2453 2450
		f 4 3772 4153 -3793 -4153
		mu 0 4 2452 2454 2455 2453
		f 4 3773 4154 -3794 -4154
		mu 0 4 2454 2456 2457 2455
		f 4 3774 4155 -3795 -4155
		mu 0 4 2456 2458 2459 2457
		f 4 3775 4156 -3796 -4156
		mu 0 4 2458 2460 2461 2459
		f 4 3776 4157 -3797 -4157
		mu 0 4 2460 2462 2463 2461
		f 4 3777 4158 -3798 -4158
		mu 0 4 2462 2464 2465 2463
		f 4 3778 4159 -3799 -4159
		mu 0 4 2464 2466 2467 2465
		f 4 3779 4160 -3800 -4160
		mu 0 4 2466 2468 2469 2467
		f 4 3780 4161 -3801 -4161
		mu 0 4 2468 2470 2471 2469
		f 4 3781 4162 -3802 -4162
		mu 0 4 2470 2472 2473 2471
		f 4 3782 4163 -3803 -4163
		mu 0 4 2472 2474 2475 2473
		f 4 3783 4164 -3804 -4164
		mu 0 4 2474 2476 2477 2475
		f 4 3784 4165 -3805 -4165
		mu 0 4 2476 2478 2479 2477
		f 4 3785 4166 -3806 -4166
		mu 0 4 2478 2480 2481 2479
		f 4 3786 4167 -3807 -4167
		mu 0 4 2480 2482 2483 2481
		f 4 3787 4168 -3808 -4168
		mu 0 4 2482 2484 2485 2483
		f 4 3788 4169 -3809 -4169
		mu 0 4 2484 2486 2487 2485
		f 4 3789 4150 -3810 -4170
		mu 0 4 2486 2488 2489 2487
		f 4 3790 4171 -3811 -4171
		mu 0 4 2451 2450 2490 2491
		f 4 3791 4172 -3812 -4172
		mu 0 4 2450 2453 2492 2490
		f 4 3792 4173 -3813 -4173
		mu 0 4 2453 2455 2493 2492
		f 4 3793 4174 -3814 -4174
		mu 0 4 2455 2457 2494 2493
		f 4 3794 4175 -3815 -4175
		mu 0 4 2457 2459 2495 2494
		f 4 3795 4176 -3816 -4176
		mu 0 4 2459 2461 2496 2495
		f 4 3796 4177 -3817 -4177
		mu 0 4 2461 2463 2497 2496
		f 4 3797 4178 -3818 -4178
		mu 0 4 2463 2465 2498 2497
		f 4 3798 4179 -3819 -4179
		mu 0 4 2465 2467 2499 2498
		f 4 3799 4180 -3820 -4180
		mu 0 4 2467 2469 2500 2499
		f 4 3800 4181 -3821 -4181
		mu 0 4 2469 2471 2501 2500
		f 4 3801 4182 -3822 -4182
		mu 0 4 2471 2473 2502 2501
		f 4 3802 4183 -3823 -4183
		mu 0 4 2473 2475 2503 2502
		f 4 3803 4184 -3824 -4184
		mu 0 4 2475 2477 2504 2503
		f 4 3804 4185 -3825 -4185
		mu 0 4 2477 2479 2505 2504
		f 4 3805 4186 -3826 -4186
		mu 0 4 2479 2481 2506 2505
		f 4 3806 4187 -3827 -4187
		mu 0 4 2481 2483 2507 2506
		f 4 3807 4188 -3828 -4188
		mu 0 4 2483 2485 2508 2507
		f 4 3808 4189 -3829 -4189
		mu 0 4 2485 2487 2509 2508
		f 4 3809 4170 -3830 -4190
		mu 0 4 2487 2489 2510 2509
		f 4 3810 4191 -3831 -4191
		mu 0 4 2491 2490 2511 2512
		f 4 3811 4192 -3832 -4192
		mu 0 4 2490 2492 2513 2511
		f 4 3812 4193 -3833 -4193
		mu 0 4 2492 2493 2514 2513
		f 4 3813 4194 -3834 -4194
		mu 0 4 2493 2494 2515 2514
		f 4 3814 4195 -3835 -4195
		mu 0 4 2494 2495 2516 2515
		f 4 3815 4196 -3836 -4196
		mu 0 4 2495 2496 2517 2516
		f 4 3816 4197 -3837 -4197
		mu 0 4 2496 2497 2518 2517
		f 4 3817 4198 -3838 -4198
		mu 0 4 2497 2498 2519 2518
		f 4 3818 4199 -3839 -4199
		mu 0 4 2498 2499 2520 2519
		f 4 3819 4200 -3840 -4200
		mu 0 4 2499 2500 2521 2520
		f 4 3820 4201 -3841 -4201
		mu 0 4 2500 2501 2522 2521
		f 4 3821 4202 -3842 -4202
		mu 0 4 2501 2502 2523 2522
		f 4 3822 4203 -3843 -4203
		mu 0 4 2502 2503 2524 2523
		f 4 3823 4204 -3844 -4204
		mu 0 4 2503 2504 2525 2524
		f 4 3824 4205 -3845 -4205
		mu 0 4 2504 2505 2526 2525
		f 4 3825 4206 -3846 -4206
		mu 0 4 2505 2506 2527 2526
		f 4 3826 4207 -3847 -4207
		mu 0 4 2506 2507 2528 2527
		f 4 3827 4208 -3848 -4208
		mu 0 4 2507 2508 2529 2528
		f 4 3828 4209 -3849 -4209
		mu 0 4 2508 2509 2530 2529
		f 4 3829 4190 -3850 -4210
		mu 0 4 2509 2510 2531 2530
		f 4 3830 4211 -3851 -4211
		mu 0 4 2512 2511 2532 2533
		f 4 3831 4212 -3852 -4212
		mu 0 4 2511 2513 2534 2532
		f 4 3832 4213 -3853 -4213
		mu 0 4 2513 2514 2535 2534
		f 4 3833 4214 -3854 -4214
		mu 0 4 2514 2515 2536 2535
		f 4 3834 4215 -3855 -4215
		mu 0 4 2515 2516 2537 2536
		f 4 3835 4216 -3856 -4216
		mu 0 4 2516 2517 2538 2537
		f 4 3836 4217 -3857 -4217
		mu 0 4 2517 2518 2539 2538
		f 4 3837 4218 -3858 -4218
		mu 0 4 2518 2519 2540 2539
		f 4 3838 4219 -3859 -4219
		mu 0 4 2519 2520 2541 2540
		f 4 3839 4220 -3860 -4220
		mu 0 4 2520 2521 2542 2541
		f 4 3840 4221 -3861 -4221
		mu 0 4 2521 2522 2543 2542
		f 4 3841 4222 -3862 -4222
		mu 0 4 2522 2523 2544 2543
		f 4 3842 4223 -3863 -4223
		mu 0 4 2523 2524 2545 2544
		f 4 3843 4224 -3864 -4224
		mu 0 4 2524 2525 2546 2545
		f 4 3844 4225 -3865 -4225
		mu 0 4 2525 2526 2547 2546
		f 4 3845 4226 -3866 -4226
		mu 0 4 2526 2527 2548 2547
		f 4 3846 4227 -3867 -4227
		mu 0 4 2527 2528 2549 2548
		f 4 3847 4228 -3868 -4228
		mu 0 4 2528 2529 2550 2549
		f 4 3848 4229 -3869 -4229
		mu 0 4 2529 2530 2551 2550
		f 4 3849 4210 -3870 -4230
		mu 0 4 2530 2531 2552 2551
		f 4 3850 4231 -3871 -4231
		mu 0 4 2533 2532 2553 2554
		f 4 3851 4232 -3872 -4232
		mu 0 4 2532 2534 2555 2553
		f 4 3852 4233 -3873 -4233
		mu 0 4 2534 2535 2556 2555
		f 4 3853 4234 -3874 -4234
		mu 0 4 2535 2536 2557 2556
		f 4 3854 4235 -3875 -4235
		mu 0 4 2536 2537 2558 2557
		f 4 3855 4236 -3876 -4236
		mu 0 4 2537 2538 2559 2558
		f 4 3856 4237 -3877 -4237
		mu 0 4 2538 2539 2560 2559
		f 4 3857 4238 -3878 -4238
		mu 0 4 2539 2540 2561 2560
		f 4 3858 4239 -3879 -4239
		mu 0 4 2540 2541 2562 2561
		f 4 3859 4240 -3880 -4240
		mu 0 4 2541 2542 2563 2562
		f 4 3860 4241 -3881 -4241
		mu 0 4 2542 2543 2564 2563
		f 4 3861 4242 -3882 -4242
		mu 0 4 2543 2544 2565 2564
		f 4 3862 4243 -3883 -4243
		mu 0 4 2544 2545 2566 2565
		f 4 3863 4244 -3884 -4244
		mu 0 4 2545 2546 2567 2566
		f 4 3864 4245 -3885 -4245
		mu 0 4 2546 2547 2568 2567
		f 4 3865 4246 -3886 -4246
		mu 0 4 2547 2548 2569 2568
		f 4 3866 4247 -3887 -4247
		mu 0 4 2548 2549 2570 2569
		f 4 3867 4248 -3888 -4248
		mu 0 4 2549 2550 2571 2570
		f 4 3868 4249 -3889 -4249
		mu 0 4 2550 2551 2572 2571
		f 4 3869 4230 -3890 -4250
		mu 0 4 2551 2552 2573 2572
		f 4 3870 4251 -3891 -4251
		mu 0 4 2554 2553 2574 2575
		f 4 3871 4252 -3892 -4252
		mu 0 4 2553 2555 2576 2574
		f 4 3872 4253 -3893 -4253
		mu 0 4 2555 2556 2577 2576
		f 4 3873 4254 -3894 -4254
		mu 0 4 2556 2557 2578 2577
		f 4 3874 4255 -3895 -4255
		mu 0 4 2557 2558 2579 2578
		f 4 3875 4256 -3896 -4256
		mu 0 4 2558 2559 2580 2579
		f 4 3876 4257 -3897 -4257
		mu 0 4 2559 2560 2581 2580
		f 4 3877 4258 -3898 -4258
		mu 0 4 2560 2561 2582 2581;
	setAttr ".fc[2000:2499]"
		f 4 3878 4259 -3899 -4259
		mu 0 4 2561 2562 2583 2582
		f 4 3879 4260 -3900 -4260
		mu 0 4 2562 2563 2584 2583
		f 4 3880 4261 -3901 -4261
		mu 0 4 2563 2564 2585 2584
		f 4 3881 4262 -3902 -4262
		mu 0 4 2564 2565 2586 2585
		f 4 3882 4263 -3903 -4263
		mu 0 4 2565 2566 2587 2586
		f 4 3883 4264 -3904 -4264
		mu 0 4 2566 2567 2588 2587
		f 4 3884 4265 -3905 -4265
		mu 0 4 2567 2568 2589 2588
		f 4 3885 4266 -3906 -4266
		mu 0 4 2568 2569 2590 2589
		f 4 3886 4267 -3907 -4267
		mu 0 4 2569 2570 2591 2590
		f 4 3887 4268 -3908 -4268
		mu 0 4 2570 2571 2592 2591
		f 4 3888 4269 -3909 -4269
		mu 0 4 2571 2572 2593 2592
		f 4 3889 4250 -3910 -4270
		mu 0 4 2572 2573 2594 2593
		f 4 3890 4271 -3911 -4271
		mu 0 4 2575 2574 2595 2596
		f 4 3891 4272 -3912 -4272
		mu 0 4 2574 2576 2597 2595
		f 4 3892 4273 -3913 -4273
		mu 0 4 2576 2577 2598 2597
		f 4 3893 4274 -3914 -4274
		mu 0 4 2577 2578 2599 2598
		f 4 3894 4275 -3915 -4275
		mu 0 4 2578 2579 2600 2599
		f 4 3895 4276 -3916 -4276
		mu 0 4 2579 2580 2601 2600
		f 4 3896 4277 -3917 -4277
		mu 0 4 2580 2581 2602 2601
		f 4 3897 4278 -3918 -4278
		mu 0 4 2581 2582 2603 2602
		f 4 3898 4279 -3919 -4279
		mu 0 4 2582 2583 2604 2603
		f 4 3899 4280 -3920 -4280
		mu 0 4 2583 2584 2605 2604
		f 4 3900 4281 -3921 -4281
		mu 0 4 2584 2585 2606 2605
		f 4 3901 4282 -3922 -4282
		mu 0 4 2585 2586 2607 2606
		f 4 3902 4283 -3923 -4283
		mu 0 4 2586 2587 2608 2607
		f 4 3903 4284 -3924 -4284
		mu 0 4 2587 2588 2609 2608
		f 4 3904 4285 -3925 -4285
		mu 0 4 2588 2589 2610 2609
		f 4 3905 4286 -3926 -4286
		mu 0 4 2589 2590 2611 2610
		f 4 3906 4287 -3927 -4287
		mu 0 4 2590 2591 2612 2611
		f 4 3907 4288 -3928 -4288
		mu 0 4 2591 2592 2613 2612
		f 4 3908 4289 -3929 -4289
		mu 0 4 2592 2593 2614 2613
		f 4 3909 4270 -3930 -4290
		mu 0 4 2593 2594 2615 2614
		f 4 3910 4291 -3931 -4291
		mu 0 4 2596 2595 2616 2617
		f 4 3911 4292 -3932 -4292
		mu 0 4 2595 2597 2618 2616
		f 4 3912 4293 -3933 -4293
		mu 0 4 2597 2598 2619 2618
		f 4 3913 4294 -3934 -4294
		mu 0 4 2598 2599 2620 2619
		f 4 3914 4295 -3935 -4295
		mu 0 4 2599 2600 2621 2620
		f 4 3915 4296 -3936 -4296
		mu 0 4 2600 2601 2622 2621
		f 4 3916 4297 -3937 -4297
		mu 0 4 2601 2602 2623 2622
		f 4 3917 4298 -3938 -4298
		mu 0 4 2602 2603 2624 2623
		f 4 3918 4299 -3939 -4299
		mu 0 4 2603 2604 2625 2624
		f 4 3919 4300 -3940 -4300
		mu 0 4 2604 2605 2626 2625
		f 4 3920 4301 -3941 -4301
		mu 0 4 2605 2606 2627 2626
		f 4 3921 4302 -3942 -4302
		mu 0 4 2606 2607 2628 2627
		f 4 3922 4303 -3943 -4303
		mu 0 4 2607 2608 2629 2628
		f 4 3923 4304 -3944 -4304
		mu 0 4 2608 2609 2630 2629
		f 4 3924 4305 -3945 -4305
		mu 0 4 2609 2610 2631 2630
		f 4 3925 4306 -3946 -4306
		mu 0 4 2610 2611 2632 2631
		f 4 3926 4307 -3947 -4307
		mu 0 4 2611 2612 2633 2632
		f 4 3927 4308 -3948 -4308
		mu 0 4 2612 2613 2634 2633
		f 4 3928 4309 -3949 -4309
		mu 0 4 2613 2614 2635 2634
		f 4 3929 4290 -3950 -4310
		mu 0 4 2614 2615 2636 2635
		f 4 3930 4311 -3951 -4311
		mu 0 4 2617 2616 2637 2638
		f 4 3931 4312 -3952 -4312
		mu 0 4 2616 2618 2639 2637
		f 4 3932 4313 -3953 -4313
		mu 0 4 2618 2619 2640 2639
		f 4 3933 4314 -3954 -4314
		mu 0 4 2619 2620 2641 2640
		f 4 3934 4315 -3955 -4315
		mu 0 4 2620 2621 2642 2641
		f 4 3935 4316 -3956 -4316
		mu 0 4 2621 2622 2643 2642
		f 4 3936 4317 -3957 -4317
		mu 0 4 2622 2623 2644 2643
		f 4 3937 4318 -3958 -4318
		mu 0 4 2623 2624 2645 2644
		f 4 3938 4319 -3959 -4319
		mu 0 4 2624 2625 2646 2645
		f 4 3939 4320 -3960 -4320
		mu 0 4 2625 2626 2647 2646
		f 4 3940 4321 -3961 -4321
		mu 0 4 2626 2627 2648 2647
		f 4 3941 4322 -3962 -4322
		mu 0 4 2627 2628 2649 2648
		f 4 3942 4323 -3963 -4323
		mu 0 4 2628 2629 2650 2649
		f 4 3943 4324 -3964 -4324
		mu 0 4 2629 2630 2651 2650
		f 4 3944 4325 -3965 -4325
		mu 0 4 2630 2631 2652 2651
		f 4 3945 4326 -3966 -4326
		mu 0 4 2631 2632 2653 2652
		f 4 3946 4327 -3967 -4327
		mu 0 4 2632 2633 2654 2653
		f 4 3947 4328 -3968 -4328
		mu 0 4 2633 2634 2655 2654
		f 4 3948 4329 -3969 -4329
		mu 0 4 2634 2635 2656 2655
		f 4 3949 4310 -3970 -4330
		mu 0 4 2635 2636 2657 2656
		f 4 3950 4331 -3971 -4331
		mu 0 4 2638 2637 2658 2659
		f 4 3951 4332 -3972 -4332
		mu 0 4 2637 2639 2660 2658
		f 4 3952 4333 -3973 -4333
		mu 0 4 2639 2640 2661 2660
		f 4 3953 4334 -3974 -4334
		mu 0 4 2640 2641 2662 2661
		f 4 3954 4335 -3975 -4335
		mu 0 4 2641 2642 2663 2662
		f 4 3955 4336 -3976 -4336
		mu 0 4 2642 2643 2664 2663
		f 4 3956 4337 -3977 -4337
		mu 0 4 2643 2644 2665 2664
		f 4 3957 4338 -3978 -4338
		mu 0 4 2644 2645 2666 2665
		f 4 3958 4339 -3979 -4339
		mu 0 4 2645 2646 2667 2666
		f 4 3959 4340 -3980 -4340
		mu 0 4 2646 2647 2668 2667
		f 4 3960 4341 -3981 -4341
		mu 0 4 2647 2648 2669 2668
		f 4 3961 4342 -3982 -4342
		mu 0 4 2648 2649 2670 2669
		f 4 3962 4343 -3983 -4343
		mu 0 4 2649 2650 2671 2670
		f 4 3963 4344 -3984 -4344
		mu 0 4 2650 2651 2672 2671
		f 4 3964 4345 -3985 -4345
		mu 0 4 2651 2652 2673 2672
		f 4 3965 4346 -3986 -4346
		mu 0 4 2652 2653 2674 2673
		f 4 3966 4347 -3987 -4347
		mu 0 4 2653 2654 2675 2674
		f 4 3967 4348 -3988 -4348
		mu 0 4 2654 2655 2676 2675
		f 4 3968 4349 -3989 -4349
		mu 0 4 2655 2656 2677 2676
		f 4 3969 4330 -3990 -4350
		mu 0 4 2656 2657 2678 2677
		f 4 3970 4351 -3991 -4351
		mu 0 4 2659 2658 2679 2680
		f 4 3971 4352 -3992 -4352
		mu 0 4 2658 2660 2681 2679
		f 4 3972 4353 -3993 -4353
		mu 0 4 2660 2661 2682 2681
		f 4 3973 4354 -3994 -4354
		mu 0 4 2661 2662 2683 2682
		f 4 3974 4355 -3995 -4355
		mu 0 4 2662 2663 2684 2683
		f 4 3975 4356 -3996 -4356
		mu 0 4 2663 2664 2685 2684
		f 4 3976 4357 -3997 -4357
		mu 0 4 2664 2665 2686 2685
		f 4 3977 4358 -3998 -4358
		mu 0 4 2665 2666 2687 2686
		f 4 3978 4359 -3999 -4359
		mu 0 4 2666 2667 2688 2687
		f 4 3979 4360 -4000 -4360
		mu 0 4 2667 2668 2689 2688
		f 4 3980 4361 -4001 -4361
		mu 0 4 2668 2669 2690 2689
		f 4 3981 4362 -4002 -4362
		mu 0 4 2669 2670 2691 2690
		f 4 3982 4363 -4003 -4363
		mu 0 4 2670 2671 2692 2691
		f 4 3983 4364 -4004 -4364
		mu 0 4 2671 2672 2693 2692
		f 4 3984 4365 -4005 -4365
		mu 0 4 2672 2673 2694 2693
		f 4 3985 4366 -4006 -4366
		mu 0 4 2673 2674 2695 2694
		f 4 3986 4367 -4007 -4367
		mu 0 4 2674 2675 2696 2695
		f 4 3987 4368 -4008 -4368
		mu 0 4 2675 2676 2697 2696
		f 4 3988 4369 -4009 -4369
		mu 0 4 2676 2677 2698 2697
		f 4 3989 4350 -4010 -4370
		mu 0 4 2677 2678 2699 2698
		f 4 3990 4371 -4011 -4371
		mu 0 4 2680 2679 2700 2701
		f 4 3991 4372 -4012 -4372
		mu 0 4 2679 2681 2702 2700
		f 4 3992 4373 -4013 -4373
		mu 0 4 2681 2682 2703 2702
		f 4 3993 4374 -4014 -4374
		mu 0 4 2682 2683 2704 2703
		f 4 3994 4375 -4015 -4375
		mu 0 4 2683 2684 2705 2704
		f 4 3995 4376 -4016 -4376
		mu 0 4 2684 2685 2706 2705
		f 4 3996 4377 -4017 -4377
		mu 0 4 2685 2686 2707 2706
		f 4 3997 4378 -4018 -4378
		mu 0 4 2686 2687 2708 2707
		f 4 3998 4379 -4019 -4379
		mu 0 4 2687 2688 2709 2708
		f 4 3999 4380 -4020 -4380
		mu 0 4 2688 2689 2710 2709
		f 4 4000 4381 -4021 -4381
		mu 0 4 2689 2690 2711 2710
		f 4 4001 4382 -4022 -4382
		mu 0 4 2690 2691 2712 2711
		f 4 4002 4383 -4023 -4383
		mu 0 4 2691 2692 2713 2712
		f 4 4003 4384 -4024 -4384
		mu 0 4 2692 2693 2714 2713
		f 4 4004 4385 -4025 -4385
		mu 0 4 2693 2694 2715 2714
		f 4 4005 4386 -4026 -4386
		mu 0 4 2694 2695 2716 2715
		f 4 4006 4387 -4027 -4387
		mu 0 4 2695 2696 2717 2716
		f 4 4007 4388 -4028 -4388
		mu 0 4 2696 2697 2718 2717
		f 4 4008 4389 -4029 -4389
		mu 0 4 2697 2698 2719 2718
		f 4 4009 4370 -4030 -4390
		mu 0 4 2698 2699 2720 2719
		f 4 4010 4391 -4031 -4391
		mu 0 4 2701 2700 2721 2722
		f 4 4011 4392 -4032 -4392
		mu 0 4 2700 2702 2723 2721
		f 4 4012 4393 -4033 -4393
		mu 0 4 2702 2703 2724 2723
		f 4 4013 4394 -4034 -4394
		mu 0 4 2703 2704 2725 2724
		f 4 4014 4395 -4035 -4395
		mu 0 4 2704 2705 2726 2725
		f 4 4015 4396 -4036 -4396
		mu 0 4 2705 2706 2727 2726
		f 4 4016 4397 -4037 -4397
		mu 0 4 2706 2707 2728 2727
		f 4 4017 4398 -4038 -4398
		mu 0 4 2707 2708 2729 2728
		f 4 4018 4399 -4039 -4399
		mu 0 4 2708 2709 2730 2729
		f 4 4019 4400 -4040 -4400
		mu 0 4 2709 2710 2731 2730
		f 4 4020 4401 -4041 -4401
		mu 0 4 2710 2711 2732 2731
		f 4 4021 4402 -4042 -4402
		mu 0 4 2711 2712 2733 2732
		f 4 4022 4403 -4043 -4403
		mu 0 4 2712 2713 2734 2733
		f 4 4023 4404 -4044 -4404
		mu 0 4 2713 2714 2735 2734
		f 4 4024 4405 -4045 -4405
		mu 0 4 2714 2715 2736 2735
		f 4 4025 4406 -4046 -4406
		mu 0 4 2715 2716 2737 2736
		f 4 4026 4407 -4047 -4407
		mu 0 4 2716 2717 2738 2737
		f 4 4027 4408 -4048 -4408
		mu 0 4 2717 2718 2739 2738
		f 4 4028 4409 -4049 -4409
		mu 0 4 2718 2719 2740 2739
		f 4 4029 4390 -4050 -4410
		mu 0 4 2719 2720 2741 2740
		f 4 4030 4411 -4051 -4411
		mu 0 4 2722 2721 2742 2743
		f 4 4031 4412 -4052 -4412
		mu 0 4 2721 2723 2744 2742
		f 4 4032 4413 -4053 -4413
		mu 0 4 2723 2724 2745 2744
		f 4 4033 4414 -4054 -4414
		mu 0 4 2724 2725 2746 2745
		f 4 4034 4415 -4055 -4415
		mu 0 4 2725 2726 2747 2746
		f 4 4035 4416 -4056 -4416
		mu 0 4 2726 2727 2748 2747
		f 4 4036 4417 -4057 -4417
		mu 0 4 2727 2728 2749 2748
		f 4 4037 4418 -4058 -4418
		mu 0 4 2728 2729 2750 2749
		f 4 4038 4419 -4059 -4419
		mu 0 4 2729 2730 2751 2750
		f 4 4039 4420 -4060 -4420
		mu 0 4 2730 2731 2752 2751
		f 4 4040 4421 -4061 -4421
		mu 0 4 2731 2732 2753 2752
		f 4 4041 4422 -4062 -4422
		mu 0 4 2732 2733 2754 2753
		f 4 4042 4423 -4063 -4423
		mu 0 4 2733 2734 2755 2754
		f 4 4043 4424 -4064 -4424
		mu 0 4 2734 2735 2756 2755
		f 4 4044 4425 -4065 -4425
		mu 0 4 2735 2736 2757 2756
		f 4 4045 4426 -4066 -4426
		mu 0 4 2736 2737 2758 2757
		f 4 4046 4427 -4067 -4427
		mu 0 4 2737 2738 2759 2758
		f 4 4047 4428 -4068 -4428
		mu 0 4 2738 2739 2760 2759
		f 4 4048 4429 -4069 -4429
		mu 0 4 2739 2740 2761 2760
		f 4 4049 4410 -4070 -4430
		mu 0 4 2740 2741 2762 2761
		f 4 4050 4431 -4071 -4431
		mu 0 4 2743 2742 2763 2764
		f 4 4051 4432 -4072 -4432
		mu 0 4 2742 2744 2765 2763
		f 4 4052 4433 -4073 -4433
		mu 0 4 2744 2745 2766 2765
		f 4 4053 4434 -4074 -4434
		mu 0 4 2745 2746 2767 2766
		f 4 4054 4435 -4075 -4435
		mu 0 4 2746 2747 2768 2767
		f 4 4055 4436 -4076 -4436
		mu 0 4 2747 2748 2769 2768
		f 4 4056 4437 -4077 -4437
		mu 0 4 2748 2749 2770 2769
		f 4 4057 4438 -4078 -4438
		mu 0 4 2749 2750 2771 2770
		f 4 4058 4439 -4079 -4439
		mu 0 4 2750 2751 2772 2771
		f 4 4059 4440 -4080 -4440
		mu 0 4 2751 2752 2773 2772
		f 4 4060 4441 -4081 -4441
		mu 0 4 2752 2753 2774 2773
		f 4 4061 4442 -4082 -4442
		mu 0 4 2753 2754 2775 2774
		f 4 4062 4443 -4083 -4443
		mu 0 4 2754 2755 2776 2775
		f 4 4063 4444 -4084 -4444
		mu 0 4 2755 2756 2777 2776
		f 4 4064 4445 -4085 -4445
		mu 0 4 2756 2757 2778 2777
		f 4 4065 4446 -4086 -4446
		mu 0 4 2757 2758 2779 2778
		f 4 4066 4447 -4087 -4447
		mu 0 4 2758 2759 2780 2779
		f 4 4067 4448 -4088 -4448
		mu 0 4 2759 2760 2781 2780
		f 4 4068 4449 -4089 -4449
		mu 0 4 2760 2761 2782 2781
		f 4 4069 4430 -4090 -4450
		mu 0 4 2761 2762 2783 2782
		f 4 4070 4451 -4091 -4451
		mu 0 4 2764 2763 2784 2785
		f 4 4071 4452 -4092 -4452
		mu 0 4 2763 2765 2786 2784
		f 4 4072 4453 -4093 -4453
		mu 0 4 2765 2766 2787 2786
		f 4 4073 4454 -4094 -4454
		mu 0 4 2766 2767 2788 2787
		f 4 4074 4455 -4095 -4455
		mu 0 4 2767 2768 2789 2788
		f 4 4075 4456 -4096 -4456
		mu 0 4 2768 2769 2790 2789
		f 4 4076 4457 -4097 -4457
		mu 0 4 2769 2770 2791 2790
		f 4 4077 4458 -4098 -4458
		mu 0 4 2770 2771 2792 2791
		f 4 4078 4459 -4099 -4459
		mu 0 4 2771 2772 2793 2792
		f 4 4079 4460 -4100 -4460
		mu 0 4 2772 2773 2794 2793
		f 4 4080 4461 -4101 -4461
		mu 0 4 2773 2774 2795 2794
		f 4 4081 4462 -4102 -4462
		mu 0 4 2774 2775 2796 2795
		f 4 4082 4463 -4103 -4463
		mu 0 4 2775 2776 2797 2796
		f 4 4083 4464 -4104 -4464
		mu 0 4 2776 2777 2798 2797
		f 4 4084 4465 -4105 -4465
		mu 0 4 2777 2778 2799 2798
		f 4 4085 4466 -4106 -4466
		mu 0 4 2778 2779 2800 2799
		f 4 4086 4467 -4107 -4467
		mu 0 4 2779 2780 2801 2800
		f 4 4087 4468 -4108 -4468
		mu 0 4 2780 2781 2802 2801
		f 4 4088 4469 -4109 -4469
		mu 0 4 2781 2782 2803 2802
		f 4 4089 4450 -4110 -4470
		mu 0 4 2782 2783 2804 2803
		f 4 4090 4471 -4111 -4471
		mu 0 4 2785 2784 2805 2806
		f 4 4091 4472 -4112 -4472
		mu 0 4 2784 2786 2807 2805
		f 4 4092 4473 -4113 -4473
		mu 0 4 2786 2787 2808 2807
		f 4 4093 4474 -4114 -4474
		mu 0 4 2787 2788 2809 2808
		f 4 4094 4475 -4115 -4475
		mu 0 4 2788 2789 2810 2809
		f 4 4095 4476 -4116 -4476
		mu 0 4 2789 2790 2811 2810
		f 4 4096 4477 -4117 -4477
		mu 0 4 2790 2791 2812 2811
		f 4 4097 4478 -4118 -4478
		mu 0 4 2791 2792 2813 2812
		f 4 4098 4479 -4119 -4479
		mu 0 4 2792 2793 2814 2813
		f 4 4099 4480 -4120 -4480
		mu 0 4 2793 2794 2815 2814
		f 4 4100 4481 -4121 -4481
		mu 0 4 2794 2795 2816 2815
		f 4 4101 4482 -4122 -4482
		mu 0 4 2795 2796 2817 2816
		f 4 4102 4483 -4123 -4483
		mu 0 4 2796 2797 2818 2817
		f 4 4103 4484 -4124 -4484
		mu 0 4 2797 2798 2819 2818
		f 4 4104 4485 -4125 -4485
		mu 0 4 2798 2799 2820 2819
		f 4 4105 4486 -4126 -4486
		mu 0 4 2799 2800 2821 2820
		f 4 4106 4487 -4127 -4487
		mu 0 4 2800 2801 2822 2821
		f 4 4107 4488 -4128 -4488
		mu 0 4 2801 2802 2823 2822
		f 4 4108 4489 -4129 -4489
		mu 0 4 2802 2803 2824 2823
		f 4 4109 4470 -4130 -4490
		mu 0 4 2803 2804 2825 2824
		f 4 4110 4491 -4131 -4491
		mu 0 4 2806 2805 2826 2827
		f 4 4111 4492 -4132 -4492
		mu 0 4 2805 2807 2828 2826
		f 4 4112 4493 -4133 -4493
		mu 0 4 2807 2808 2829 2828
		f 4 4113 4494 -4134 -4494
		mu 0 4 2808 2809 2830 2829
		f 4 4114 4495 -4135 -4495
		mu 0 4 2809 2810 2831 2830
		f 4 4115 4496 -4136 -4496
		mu 0 4 2810 2811 2832 2831
		f 4 4116 4497 -4137 -4497
		mu 0 4 2811 2812 2833 2832
		f 4 4117 4498 -4138 -4498
		mu 0 4 2812 2813 2834 2833
		f 4 4118 4499 -4139 -4499
		mu 0 4 2813 2814 2835 2834
		f 4 4119 4500 -4140 -4500
		mu 0 4 2814 2815 2836 2835
		f 4 4120 4501 -4141 -4501
		mu 0 4 2815 2816 2837 2836
		f 4 4121 4502 -4142 -4502
		mu 0 4 2816 2817 2838 2837
		f 4 4122 4503 -4143 -4503
		mu 0 4 2817 2818 2839 2838
		f 4 4123 4504 -4144 -4504
		mu 0 4 2818 2819 2840 2839
		f 4 4124 4505 -4145 -4505
		mu 0 4 2819 2820 2841 2840
		f 4 4125 4506 -4146 -4506
		mu 0 4 2820 2821 2842 2841
		f 4 4126 4507 -4147 -4507
		mu 0 4 2821 2822 2843 2842
		f 4 4127 4508 -4148 -4508
		mu 0 4 2822 2823 2844 2843
		f 4 4128 4509 -4149 -4509
		mu 0 4 2823 2824 2845 2844
		f 4 4129 4490 -4150 -4510
		mu 0 4 2824 2825 2846 2845
		f 3 -3771 -4511 4511
		mu 0 3 2449 2448 2847
		f 3 -3772 -4512 4512
		mu 0 3 2452 2449 2848
		f 3 -3773 -4513 4513
		mu 0 3 2454 2452 2849
		f 3 -3774 -4514 4514
		mu 0 3 2456 2454 2850
		f 3 -3775 -4515 4515
		mu 0 3 2458 2456 2851
		f 3 -3776 -4516 4516
		mu 0 3 2460 2458 2852
		f 3 -3777 -4517 4517
		mu 0 3 2462 2460 2853
		f 3 -3778 -4518 4518
		mu 0 3 2464 2462 2854
		f 3 -3779 -4519 4519
		mu 0 3 2466 2464 2855
		f 3 -3780 -4520 4520
		mu 0 3 2468 2466 2856
		f 3 -3781 -4521 4521
		mu 0 3 2470 2468 2857
		f 3 -3782 -4522 4522
		mu 0 3 2472 2470 2858
		f 3 -3783 -4523 4523
		mu 0 3 2474 2472 2859
		f 3 -3784 -4524 4524
		mu 0 3 2476 2474 2860
		f 3 -3785 -4525 4525
		mu 0 3 2478 2476 2861
		f 3 -3786 -4526 4526
		mu 0 3 2480 2478 2862
		f 3 -3787 -4527 4527
		mu 0 3 2482 2480 2863
		f 3 -3788 -4528 4528
		mu 0 3 2484 2482 2864
		f 3 -3789 -4529 4529
		mu 0 3 2486 2484 2865
		f 3 -3790 -4530 4510
		mu 0 3 2488 2486 2866
		f 3 4130 4531 -4531
		mu 0 3 2827 2826 2867
		f 3 4131 4532 -4532
		mu 0 3 2826 2828 2868
		f 3 4132 4533 -4533
		mu 0 3 2828 2829 2869
		f 3 4133 4534 -4534
		mu 0 3 2829 2830 2870
		f 3 4134 4535 -4535
		mu 0 3 2830 2831 2871
		f 3 4135 4536 -4536
		mu 0 3 2831 2832 2872
		f 3 4136 4537 -4537
		mu 0 3 2832 2833 2873
		f 3 4137 4538 -4538
		mu 0 3 2833 2834 2874
		f 3 4138 4539 -4539
		mu 0 3 2834 2835 2875
		f 3 4139 4540 -4540
		mu 0 3 2835 2836 2876
		f 3 4140 4541 -4541
		mu 0 3 2836 2837 2877
		f 3 4141 4542 -4542
		mu 0 3 2837 2838 2878
		f 3 4142 4543 -4543
		mu 0 3 2838 2839 2879
		f 3 4143 4544 -4544
		mu 0 3 2839 2840 2880
		f 3 4144 4545 -4545
		mu 0 3 2840 2841 2881
		f 3 4145 4546 -4546
		mu 0 3 2841 2842 2882
		f 3 4146 4547 -4547
		mu 0 3 2842 2843 2883
		f 3 4147 4548 -4548
		mu 0 3 2843 2844 2884
		f 3 4148 4549 -4549
		mu 0 3 2844 2845 2885
		f 3 4149 4530 -4550
		mu 0 3 2845 2846 2886
		f 4 4770 4570 -4772 -4551
		mu 0 4 2887 2888 2889 2890
		f 4 4771 4571 -4773 -4552
		mu 0 4 2890 2889 2891 2892
		f 4 4772 4572 -4774 -4553
		mu 0 4 2892 2891 2893 2894
		f 4 4773 4573 -4775 -4554
		mu 0 4 2894 2893 2895 2896
		f 4 4774 4574 -4776 -4555
		mu 0 4 2896 2895 2897 2898
		f 4 4775 4575 -4777 -4556
		mu 0 4 2898 2897 2899 2900
		f 4 4776 4576 -4778 -4557
		mu 0 4 2900 2899 2901 2902
		f 4 4777 4577 -4779 -4558
		mu 0 4 2902 2901 2903 2904
		f 4 4778 4578 -4780 -4559
		mu 0 4 2904 2903 2905 2906
		f 4 4779 4579 -4781 -4560
		mu 0 4 2906 2905 2907 2908
		f 4 4780 4580 -4782 -4561
		mu 0 4 2908 2907 2909 2910
		f 4 4781 4581 -4783 -4562
		mu 0 4 2910 2909 2911 2912
		f 4 4782 4582 -4784 -4563
		mu 0 4 2912 2911 2913 2914
		f 4 4783 4583 -4785 -4564
		mu 0 4 2914 2913 2915 2916
		f 4 4784 4584 -4786 -4565
		mu 0 4 2916 2915 2917 2918
		f 4 4785 4585 -4787 -4566
		mu 0 4 2918 2917 2919 2920
		f 4 4786 4586 -4788 -4567
		mu 0 4 2920 2919 2921 2922
		f 4 4787 4587 -4789 -4568
		mu 0 4 2922 2921 2923 2924
		f 4 4788 4588 -4790 -4569
		mu 0 4 2924 2923 2925 2926
		f 4 4789 4589 -4771 -4570
		mu 0 4 2926 2925 2927 2928
		f 4 4790 4590 -4792 -4571
		mu 0 4 2888 2929 2930 2889
		f 4 4791 4591 -4793 -4572
		mu 0 4 2889 2930 2931 2891
		f 4 4792 4592 -4794 -4573
		mu 0 4 2891 2931 2932 2893
		f 4 4793 4593 -4795 -4574
		mu 0 4 2893 2932 2933 2895
		f 4 4794 4594 -4796 -4575
		mu 0 4 2895 2933 2934 2897
		f 4 4795 4595 -4797 -4576
		mu 0 4 2897 2934 2935 2899
		f 4 4796 4596 -4798 -4577
		mu 0 4 2899 2935 2936 2901
		f 4 4797 4597 -4799 -4578
		mu 0 4 2901 2936 2937 2903
		f 4 4798 4598 -4800 -4579
		mu 0 4 2903 2937 2938 2905
		f 4 4799 4599 -4801 -4580
		mu 0 4 2905 2938 2939 2907
		f 4 4800 4600 -4802 -4581
		mu 0 4 2907 2939 2940 2909
		f 4 4801 4601 -4803 -4582
		mu 0 4 2909 2940 2941 2911
		f 4 4802 4602 -4804 -4583
		mu 0 4 2911 2941 2942 2913
		f 4 4803 4603 -4805 -4584
		mu 0 4 2913 2942 2943 2915
		f 4 4804 4604 -4806 -4585
		mu 0 4 2915 2943 2944 2917
		f 4 4805 4605 -4807 -4586
		mu 0 4 2917 2944 2945 2919
		f 4 4806 4606 -4808 -4587
		mu 0 4 2919 2945 2946 2921
		f 4 4807 4607 -4809 -4588
		mu 0 4 2921 2946 2947 2923
		f 4 4808 4608 -4810 -4589
		mu 0 4 2923 2947 2948 2925
		f 4 4809 4609 -4791 -4590
		mu 0 4 2925 2948 2949 2927
		f 4 4810 4610 -4812 -4591
		mu 0 4 2929 2950 2951 2930
		f 4 4811 4611 -4813 -4592
		mu 0 4 2930 2951 2952 2931
		f 4 4812 4612 -4814 -4593
		mu 0 4 2931 2952 2953 2932
		f 4 4813 4613 -4815 -4594
		mu 0 4 2932 2953 2954 2933
		f 4 4814 4614 -4816 -4595
		mu 0 4 2933 2954 2955 2934
		f 4 4815 4615 -4817 -4596
		mu 0 4 2934 2955 2956 2935
		f 4 4816 4616 -4818 -4597
		mu 0 4 2935 2956 2957 2936
		f 4 4817 4617 -4819 -4598
		mu 0 4 2936 2957 2958 2937
		f 4 4818 4618 -4820 -4599
		mu 0 4 2937 2958 2959 2938
		f 4 4819 4619 -4821 -4600
		mu 0 4 2938 2959 2960 2939
		f 4 4820 4620 -4822 -4601
		mu 0 4 2939 2960 2961 2940
		f 4 4821 4621 -4823 -4602
		mu 0 4 2940 2961 2962 2941
		f 4 4822 4622 -4824 -4603
		mu 0 4 2941 2962 2963 2942
		f 4 4823 4623 -4825 -4604
		mu 0 4 2942 2963 2964 2943
		f 4 4824 4624 -4826 -4605
		mu 0 4 2943 2964 2965 2944
		f 4 4825 4625 -4827 -4606
		mu 0 4 2944 2965 2966 2945
		f 4 4826 4626 -4828 -4607
		mu 0 4 2945 2966 2967 2946
		f 4 4827 4627 -4829 -4608
		mu 0 4 2946 2967 2968 2947
		f 4 4828 4628 -4830 -4609
		mu 0 4 2947 2968 2969 2948
		f 4 4829 4629 -4811 -4610
		mu 0 4 2948 2969 2970 2949
		f 4 4830 4630 -4832 -4611
		mu 0 4 2950 2971 2972 2951
		f 4 4831 4631 -4833 -4612
		mu 0 4 2951 2972 2973 2952
		f 4 4832 4632 -4834 -4613
		mu 0 4 2952 2973 2974 2953
		f 4 4833 4633 -4835 -4614
		mu 0 4 2953 2974 2975 2954
		f 4 4834 4634 -4836 -4615
		mu 0 4 2954 2975 2976 2955
		f 4 4835 4635 -4837 -4616
		mu 0 4 2955 2976 2977 2956
		f 4 4836 4636 -4838 -4617
		mu 0 4 2956 2977 2978 2957
		f 4 4837 4637 -4839 -4618
		mu 0 4 2957 2978 2979 2958
		f 4 4838 4638 -4840 -4619
		mu 0 4 2958 2979 2980 2959
		f 4 4839 4639 -4841 -4620
		mu 0 4 2959 2980 2981 2960
		f 4 4840 4640 -4842 -4621
		mu 0 4 2960 2981 2982 2961
		f 4 4841 4641 -4843 -4622
		mu 0 4 2961 2982 2983 2962
		f 4 4842 4642 -4844 -4623
		mu 0 4 2962 2983 2984 2963
		f 4 4843 4643 -4845 -4624
		mu 0 4 2963 2984 2985 2964
		f 4 4844 4644 -4846 -4625
		mu 0 4 2964 2985 2986 2965
		f 4 4845 4645 -4847 -4626
		mu 0 4 2965 2986 2987 2966
		f 4 4846 4646 -4848 -4627
		mu 0 4 2966 2987 2988 2967
		f 4 4847 4647 -4849 -4628
		mu 0 4 2967 2988 2989 2968
		f 4 4848 4648 -4850 -4629
		mu 0 4 2968 2989 2990 2969
		f 4 4849 4649 -4831 -4630
		mu 0 4 2969 2990 2991 2970
		f 4 4850 4650 -4852 -4631
		mu 0 4 2971 2992 2993 2972
		f 4 4851 4651 -4853 -4632
		mu 0 4 2972 2993 2994 2973
		f 4 4852 4652 -4854 -4633
		mu 0 4 2973 2994 2995 2974
		f 4 4853 4653 -4855 -4634
		mu 0 4 2974 2995 2996 2975
		f 4 4854 4654 -4856 -4635
		mu 0 4 2975 2996 2997 2976
		f 4 4855 4655 -4857 -4636
		mu 0 4 2976 2997 2998 2977
		f 4 4856 4656 -4858 -4637
		mu 0 4 2977 2998 2999 2978
		f 4 4857 4657 -4859 -4638
		mu 0 4 2978 2999 3000 2979
		f 4 4858 4658 -4860 -4639
		mu 0 4 2979 3000 3001 2980
		f 4 4859 4659 -4861 -4640
		mu 0 4 2980 3001 3002 2981
		f 4 4860 4660 -4862 -4641
		mu 0 4 2981 3002 3003 2982
		f 4 4861 4661 -4863 -4642
		mu 0 4 2982 3003 3004 2983
		f 4 4862 4662 -4864 -4643
		mu 0 4 2983 3004 3005 2984
		f 4 4863 4663 -4865 -4644
		mu 0 4 2984 3005 3006 2985
		f 4 4864 4664 -4866 -4645
		mu 0 4 2985 3006 3007 2986
		f 4 4865 4665 -4867 -4646
		mu 0 4 2986 3007 3008 2987
		f 4 4866 4666 -4868 -4647
		mu 0 4 2987 3008 3009 2988
		f 4 4867 4667 -4869 -4648
		mu 0 4 2988 3009 3010 2989
		f 4 4868 4668 -4870 -4649
		mu 0 4 2989 3010 3011 2990
		f 4 4869 4669 -4851 -4650
		mu 0 4 2990 3011 3012 2991
		f 4 4870 4670 -4872 -4651
		mu 0 4 2992 3013 3014 2993
		f 4 4871 4671 -4873 -4652
		mu 0 4 2993 3014 3015 2994
		f 4 4872 4672 -4874 -4653
		mu 0 4 2994 3015 3016 2995
		f 4 4873 4673 -4875 -4654
		mu 0 4 2995 3016 3017 2996
		f 4 4874 4674 -4876 -4655
		mu 0 4 2996 3017 3018 2997
		f 4 4875 4675 -4877 -4656
		mu 0 4 2997 3018 3019 2998
		f 4 4876 4676 -4878 -4657
		mu 0 4 2998 3019 3020 2999
		f 4 4877 4677 -4879 -4658
		mu 0 4 2999 3020 3021 3000
		f 4 4878 4678 -4880 -4659
		mu 0 4 3000 3021 3022 3001
		f 4 4879 4679 -4881 -4660
		mu 0 4 3001 3022 3023 3002
		f 4 4880 4680 -4882 -4661
		mu 0 4 3002 3023 3024 3003
		f 4 4881 4681 -4883 -4662
		mu 0 4 3003 3024 3025 3004
		f 4 4882 4682 -4884 -4663
		mu 0 4 3004 3025 3026 3005
		f 4 4883 4683 -4885 -4664
		mu 0 4 3005 3026 3027 3006
		f 4 4884 4684 -4886 -4665
		mu 0 4 3006 3027 3028 3007
		f 4 4885 4685 -4887 -4666
		mu 0 4 3007 3028 3029 3008
		f 4 4886 4686 -4888 -4667
		mu 0 4 3008 3029 3030 3009
		f 4 4887 4687 -4889 -4668
		mu 0 4 3009 3030 3031 3010
		f 4 4888 4688 -4890 -4669
		mu 0 4 3010 3031 3032 3011
		f 4 4889 4689 -4871 -4670
		mu 0 4 3011 3032 3033 3012
		f 4 4890 4690 -4892 -4671
		mu 0 4 3013 3034 3035 3014
		f 4 4891 4691 -4893 -4672
		mu 0 4 3014 3035 3036 3015
		f 4 4892 4692 -4894 -4673
		mu 0 4 3015 3036 3037 3016
		f 4 4893 4693 -4895 -4674
		mu 0 4 3016 3037 3038 3017
		f 4 4894 4694 -4896 -4675
		mu 0 4 3017 3038 3039 3018
		f 4 4895 4695 -4897 -4676
		mu 0 4 3018 3039 3040 3019
		f 4 4896 4696 -4898 -4677
		mu 0 4 3019 3040 3041 3020
		f 4 4897 4697 -4899 -4678
		mu 0 4 3020 3041 3042 3021
		f 4 4898 4698 -4900 -4679
		mu 0 4 3021 3042 3043 3022
		f 4 4899 4699 -4901 -4680
		mu 0 4 3022 3043 3044 3023
		f 4 4900 4700 -4902 -4681
		mu 0 4 3023 3044 3045 3024
		f 4 4901 4701 -4903 -4682
		mu 0 4 3024 3045 3046 3025
		f 4 4902 4702 -4904 -4683
		mu 0 4 3025 3046 3047 3026
		f 4 4903 4703 -4905 -4684
		mu 0 4 3026 3047 3048 3027
		f 4 4904 4704 -4906 -4685
		mu 0 4 3027 3048 3049 3028
		f 4 4905 4705 -4907 -4686
		mu 0 4 3028 3049 3050 3029
		f 4 4906 4706 -4908 -4687
		mu 0 4 3029 3050 3051 3030
		f 4 4907 4707 -4909 -4688
		mu 0 4 3030 3051 3052 3031
		f 4 4908 4708 -4910 -4689
		mu 0 4 3031 3052 3053 3032
		f 4 4909 4709 -4891 -4690
		mu 0 4 3032 3053 3054 3033
		f 4 4910 4710 -4912 -4691
		mu 0 4 3034 3055 3056 3035
		f 4 4911 4711 -4913 -4692
		mu 0 4 3035 3056 3057 3036
		f 4 4912 4712 -4914 -4693
		mu 0 4 3036 3057 3058 3037
		f 4 4913 4713 -4915 -4694
		mu 0 4 3037 3058 3059 3038
		f 4 4914 4714 -4916 -4695
		mu 0 4 3038 3059 3060 3039
		f 4 4915 4715 -4917 -4696
		mu 0 4 3039 3060 3061 3040
		f 4 4916 4716 -4918 -4697
		mu 0 4 3040 3061 3062 3041
		f 4 4917 4717 -4919 -4698
		mu 0 4 3041 3062 3063 3042
		f 4 4918 4718 -4920 -4699
		mu 0 4 3042 3063 3064 3043
		f 4 4919 4719 -4921 -4700
		mu 0 4 3043 3064 3065 3044
		f 4 4920 4720 -4922 -4701
		mu 0 4 3044 3065 3066 3045
		f 4 4921 4721 -4923 -4702
		mu 0 4 3045 3066 3067 3046
		f 4 4922 4722 -4924 -4703
		mu 0 4 3046 3067 3068 3047
		f 4 4923 4723 -4925 -4704
		mu 0 4 3047 3068 3069 3048
		f 4 4924 4724 -4926 -4705
		mu 0 4 3048 3069 3070 3049
		f 4 4925 4725 -4927 -4706
		mu 0 4 3049 3070 3071 3050
		f 4 4926 4726 -4928 -4707
		mu 0 4 3050 3071 3072 3051
		f 4 4927 4727 -4929 -4708
		mu 0 4 3051 3072 3073 3052
		f 4 4928 4728 -4930 -4709
		mu 0 4 3052 3073 3074 3053
		f 4 4929 4729 -4911 -4710
		mu 0 4 3053 3074 3075 3054
		f 4 4930 4730 -4932 -4711
		mu 0 4 3055 3076 3077 3056
		f 4 4931 4731 -4933 -4712
		mu 0 4 3056 3077 3078 3057
		f 4 4932 4732 -4934 -4713
		mu 0 4 3057 3078 3079 3058
		f 4 4933 4733 -4935 -4714
		mu 0 4 3058 3079 3080 3059
		f 4 4934 4734 -4936 -4715
		mu 0 4 3059 3080 3081 3060
		f 4 4935 4735 -4937 -4716
		mu 0 4 3060 3081 3082 3061
		f 4 4936 4736 -4938 -4717
		mu 0 4 3061 3082 3083 3062
		f 4 4937 4737 -4939 -4718
		mu 0 4 3062 3083 3084 3063
		f 4 4938 4738 -4940 -4719
		mu 0 4 3063 3084 3085 3064
		f 4 4939 4739 -4941 -4720
		mu 0 4 3064 3085 3086 3065
		f 4 4940 4740 -4942 -4721
		mu 0 4 3065 3086 3087 3066
		f 4 4941 4741 -4943 -4722
		mu 0 4 3066 3087 3088 3067
		f 4 4942 4742 -4944 -4723
		mu 0 4 3067 3088 3089 3068
		f 4 4943 4743 -4945 -4724
		mu 0 4 3068 3089 3090 3069
		f 4 4944 4744 -4946 -4725
		mu 0 4 3069 3090 3091 3070
		f 4 4945 4745 -4947 -4726
		mu 0 4 3070 3091 3092 3071
		f 4 4946 4746 -4948 -4727
		mu 0 4 3071 3092 3093 3072
		f 4 4947 4747 -4949 -4728
		mu 0 4 3072 3093 3094 3073
		f 4 4948 4748 -4950 -4729
		mu 0 4 3073 3094 3095 3074
		f 4 4949 4749 -4931 -4730
		mu 0 4 3074 3095 3096 3075
		f 4 4950 4750 -4952 -4731
		mu 0 4 3076 3097 3098 3077
		f 4 4951 4751 -4953 -4732
		mu 0 4 3077 3098 3099 3078
		f 4 4952 4752 -4954 -4733
		mu 0 4 3078 3099 3100 3079
		f 4 4953 4753 -4955 -4734
		mu 0 4 3079 3100 3101 3080
		f 4 4954 4754 -4956 -4735
		mu 0 4 3080 3101 3102 3081
		f 4 4955 4755 -4957 -4736
		mu 0 4 3081 3102 3103 3082
		f 4 4956 4756 -4958 -4737
		mu 0 4 3082 3103 3104 3083
		f 4 4957 4757 -4959 -4738
		mu 0 4 3083 3104 3105 3084
		f 4 4958 4758 -4960 -4739
		mu 0 4 3084 3105 3106 3085
		f 4 4959 4759 -4961 -4740
		mu 0 4 3085 3106 3107 3086
		f 4 4960 4760 -4962 -4741
		mu 0 4 3086 3107 3108 3087
		f 4 4961 4761 -4963 -4742
		mu 0 4 3087 3108 3109 3088
		f 4 4962 4762 -4964 -4743
		mu 0 4 3088 3109 3110 3089
		f 4 4963 4763 -4965 -4744
		mu 0 4 3089 3110 3111 3090
		f 4 4964 4764 -4966 -4745
		mu 0 4 3090 3111 3112 3091
		f 4 4965 4765 -4967 -4746
		mu 0 4 3091 3112 3113 3092
		f 4 4966 4766 -4968 -4747
		mu 0 4 3092 3113 3114 3093
		f 4 4967 4767 -4969 -4748
		mu 0 4 3093 3114 3115 3094
		f 4 4968 4768 -4970 -4749
		mu 0 4 3094 3115 3116 3095
		f 4 4969 4769 -4951 -4750
		mu 0 4 3095 3116 3117 3096
		f 3 4970 -4972 -4751
		mu 0 3 3097 3118 3098
		f 3 4971 -4973 -4752
		mu 0 3 3098 3119 3099
		f 3 4972 -4974 -4753
		mu 0 3 3099 3120 3100
		f 3 4973 -4975 -4754
		mu 0 3 3100 3121 3101
		f 3 4974 -4976 -4755
		mu 0 3 3101 3122 3102
		f 3 4975 -4977 -4756
		mu 0 3 3102 3123 3103
		f 3 4976 -4978 -4757
		mu 0 3 3103 3124 3104
		f 3 4977 -4979 -4758
		mu 0 3 3104 3125 3105;
	setAttr ".fc[2500:2999]"
		f 3 4978 -4980 -4759
		mu 0 3 3105 3126 3106
		f 3 4979 -4981 -4760
		mu 0 3 3106 3127 3107
		f 3 4980 -4982 -4761
		mu 0 3 3107 3128 3108
		f 3 4981 -4983 -4762
		mu 0 3 3108 3129 3109
		f 3 4982 -4984 -4763
		mu 0 3 3109 3130 3110
		f 3 4983 -4985 -4764
		mu 0 3 3110 3131 3111
		f 3 4984 -4986 -4765
		mu 0 3 3111 3132 3112
		f 3 4985 -4987 -4766
		mu 0 3 3112 3133 3113
		f 3 4986 -4988 -4767
		mu 0 3 3113 3134 3114
		f 3 4987 -4989 -4768
		mu 0 3 3114 3135 3115
		f 3 4988 -4990 -4769
		mu 0 3 3115 3136 3116
		f 3 4989 -4971 -4770
		mu 0 3 3116 3137 3117
		f 4 4990 5211 -5011 -5211
		mu 0 4 3138 3139 3140 3141
		f 4 4991 5212 -5012 -5212
		mu 0 4 3139 3142 3143 3140
		f 4 4992 5213 -5013 -5213
		mu 0 4 3142 3144 3145 3143
		f 4 4993 5214 -5014 -5214
		mu 0 4 3144 3146 3147 3145
		f 4 4994 5215 -5015 -5215
		mu 0 4 3146 3148 3149 3147
		f 4 4995 5216 -5016 -5216
		mu 0 4 3148 3150 3151 3149
		f 4 4996 5217 -5017 -5217
		mu 0 4 3150 3152 3153 3151
		f 4 4997 5218 -5018 -5218
		mu 0 4 3152 3154 3155 3153
		f 4 4998 5219 -5019 -5219
		mu 0 4 3154 3156 3157 3155
		f 4 4999 5220 -5020 -5220
		mu 0 4 3156 3158 3159 3157
		f 4 5000 5221 -5021 -5221
		mu 0 4 3158 3160 3161 3159
		f 4 5001 5222 -5022 -5222
		mu 0 4 3160 3162 3163 3161
		f 4 5002 5223 -5023 -5223
		mu 0 4 3162 3164 3165 3163
		f 4 5003 5224 -5024 -5224
		mu 0 4 3164 3166 3167 3165
		f 4 5004 5225 -5025 -5225
		mu 0 4 3166 3168 3169 3167
		f 4 5005 5226 -5026 -5226
		mu 0 4 3168 3170 3171 3169
		f 4 5006 5227 -5027 -5227
		mu 0 4 3170 3172 3173 3171
		f 4 5007 5228 -5028 -5228
		mu 0 4 3172 3174 3175 3173
		f 4 5008 5229 -5029 -5229
		mu 0 4 3174 3176 3177 3175
		f 4 5009 5210 -5030 -5230
		mu 0 4 3176 3178 3179 3177
		f 4 5010 5231 -5031 -5231
		mu 0 4 3141 3140 3180 3181
		f 4 5011 5232 -5032 -5232
		mu 0 4 3140 3143 3182 3180
		f 4 5012 5233 -5033 -5233
		mu 0 4 3143 3145 3183 3182
		f 4 5013 5234 -5034 -5234
		mu 0 4 3145 3147 3184 3183
		f 4 5014 5235 -5035 -5235
		mu 0 4 3147 3149 3185 3184
		f 4 5015 5236 -5036 -5236
		mu 0 4 3149 3151 3186 3185
		f 4 5016 5237 -5037 -5237
		mu 0 4 3151 3153 3187 3186
		f 4 5017 5238 -5038 -5238
		mu 0 4 3153 3155 3188 3187
		f 4 5018 5239 -5039 -5239
		mu 0 4 3155 3157 3189 3188
		f 4 5019 5240 -5040 -5240
		mu 0 4 3157 3159 3190 3189
		f 4 5020 5241 -5041 -5241
		mu 0 4 3159 3161 3191 3190
		f 4 5021 5242 -5042 -5242
		mu 0 4 3161 3163 3192 3191
		f 4 5022 5243 -5043 -5243
		mu 0 4 3163 3165 3193 3192
		f 4 5023 5244 -5044 -5244
		mu 0 4 3165 3167 3194 3193
		f 4 5024 5245 -5045 -5245
		mu 0 4 3167 3169 3195 3194
		f 4 5025 5246 -5046 -5246
		mu 0 4 3169 3171 3196 3195
		f 4 5026 5247 -5047 -5247
		mu 0 4 3171 3173 3197 3196
		f 4 5027 5248 -5048 -5248
		mu 0 4 3173 3175 3198 3197
		f 4 5028 5249 -5049 -5249
		mu 0 4 3175 3177 3199 3198
		f 4 5029 5230 -5050 -5250
		mu 0 4 3177 3179 3200 3199
		f 4 5030 5251 -5051 -5251
		mu 0 4 3181 3180 3201 3202
		f 4 5031 5252 -5052 -5252
		mu 0 4 3180 3182 3203 3201
		f 4 5032 5253 -5053 -5253
		mu 0 4 3182 3183 3204 3203
		f 4 5033 5254 -5054 -5254
		mu 0 4 3183 3184 3205 3204
		f 4 5034 5255 -5055 -5255
		mu 0 4 3184 3185 3206 3205
		f 4 5035 5256 -5056 -5256
		mu 0 4 3185 3186 3207 3206
		f 4 5036 5257 -5057 -5257
		mu 0 4 3186 3187 3208 3207
		f 4 5037 5258 -5058 -5258
		mu 0 4 3187 3188 3209 3208
		f 4 5038 5259 -5059 -5259
		mu 0 4 3188 3189 3210 3209
		f 4 5039 5260 -5060 -5260
		mu 0 4 3189 3190 3211 3210
		f 4 5040 5261 -5061 -5261
		mu 0 4 3190 3191 3212 3211
		f 4 5041 5262 -5062 -5262
		mu 0 4 3191 3192 3213 3212
		f 4 5042 5263 -5063 -5263
		mu 0 4 3192 3193 3214 3213
		f 4 5043 5264 -5064 -5264
		mu 0 4 3193 3194 3215 3214
		f 4 5044 5265 -5065 -5265
		mu 0 4 3194 3195 3216 3215
		f 4 5045 5266 -5066 -5266
		mu 0 4 3195 3196 3217 3216
		f 4 5046 5267 -5067 -5267
		mu 0 4 3196 3197 3218 3217
		f 4 5047 5268 -5068 -5268
		mu 0 4 3197 3198 3219 3218
		f 4 5048 5269 -5069 -5269
		mu 0 4 3198 3199 3220 3219
		f 4 5049 5250 -5070 -5270
		mu 0 4 3199 3200 3221 3220
		f 4 5050 5271 -5071 -5271
		mu 0 4 3202 3201 3222 3223
		f 4 5051 5272 -5072 -5272
		mu 0 4 3201 3203 3224 3222
		f 4 5052 5273 -5073 -5273
		mu 0 4 3203 3204 3225 3224
		f 4 5053 5274 -5074 -5274
		mu 0 4 3204 3205 3226 3225
		f 4 5054 5275 -5075 -5275
		mu 0 4 3205 3206 3227 3226
		f 4 5055 5276 -5076 -5276
		mu 0 4 3206 3207 3228 3227
		f 4 5056 5277 -5077 -5277
		mu 0 4 3207 3208 3229 3228
		f 4 5057 5278 -5078 -5278
		mu 0 4 3208 3209 3230 3229
		f 4 5058 5279 -5079 -5279
		mu 0 4 3209 3210 3231 3230
		f 4 5059 5280 -5080 -5280
		mu 0 4 3210 3211 3232 3231
		f 4 5060 5281 -5081 -5281
		mu 0 4 3211 3212 3233 3232
		f 4 5061 5282 -5082 -5282
		mu 0 4 3212 3213 3234 3233
		f 4 5062 5283 -5083 -5283
		mu 0 4 3213 3214 3235 3234
		f 4 5063 5284 -5084 -5284
		mu 0 4 3214 3215 3236 3235
		f 4 5064 5285 -5085 -5285
		mu 0 4 3215 3216 3237 3236
		f 4 5065 5286 -5086 -5286
		mu 0 4 3216 3217 3238 3237
		f 4 5066 5287 -5087 -5287
		mu 0 4 3217 3218 3239 3238
		f 4 5067 5288 -5088 -5288
		mu 0 4 3218 3219 3240 3239
		f 4 5068 5289 -5089 -5289
		mu 0 4 3219 3220 3241 3240
		f 4 5069 5270 -5090 -5290
		mu 0 4 3220 3221 3242 3241
		f 4 5070 5291 -5091 -5291
		mu 0 4 3223 3222 3243 3244
		f 4 5071 5292 -5092 -5292
		mu 0 4 3222 3224 3245 3243
		f 4 5072 5293 -5093 -5293
		mu 0 4 3224 3225 3246 3245
		f 4 5073 5294 -5094 -5294
		mu 0 4 3225 3226 3247 3246
		f 4 5074 5295 -5095 -5295
		mu 0 4 3226 3227 3248 3247
		f 4 5075 5296 -5096 -5296
		mu 0 4 3227 3228 3249 3248
		f 4 5076 5297 -5097 -5297
		mu 0 4 3228 3229 3250 3249
		f 4 5077 5298 -5098 -5298
		mu 0 4 3229 3230 3251 3250
		f 4 5078 5299 -5099 -5299
		mu 0 4 3230 3231 3252 3251
		f 4 5079 5300 -5100 -5300
		mu 0 4 3231 3232 3253 3252
		f 4 5080 5301 -5101 -5301
		mu 0 4 3232 3233 3254 3253
		f 4 5081 5302 -5102 -5302
		mu 0 4 3233 3234 3255 3254
		f 4 5082 5303 -5103 -5303
		mu 0 4 3234 3235 3256 3255
		f 4 5083 5304 -5104 -5304
		mu 0 4 3235 3236 3257 3256
		f 4 5084 5305 -5105 -5305
		mu 0 4 3236 3237 3258 3257
		f 4 5085 5306 -5106 -5306
		mu 0 4 3237 3238 3259 3258
		f 4 5086 5307 -5107 -5307
		mu 0 4 3238 3239 3260 3259
		f 4 5087 5308 -5108 -5308
		mu 0 4 3239 3240 3261 3260
		f 4 5088 5309 -5109 -5309
		mu 0 4 3240 3241 3262 3261
		f 4 5089 5290 -5110 -5310
		mu 0 4 3241 3242 3263 3262
		f 4 5090 5311 -5111 -5311
		mu 0 4 3244 3243 3264 3265
		f 4 5091 5312 -5112 -5312
		mu 0 4 3243 3245 3266 3264
		f 4 5092 5313 -5113 -5313
		mu 0 4 3245 3246 3267 3266
		f 4 5093 5314 -5114 -5314
		mu 0 4 3246 3247 3268 3267
		f 4 5094 5315 -5115 -5315
		mu 0 4 3247 3248 3269 3268
		f 4 5095 5316 -5116 -5316
		mu 0 4 3248 3249 3270 3269
		f 4 5096 5317 -5117 -5317
		mu 0 4 3249 3250 3271 3270
		f 4 5097 5318 -5118 -5318
		mu 0 4 3250 3251 3272 3271
		f 4 5098 5319 -5119 -5319
		mu 0 4 3251 3252 3273 3272
		f 4 5099 5320 -5120 -5320
		mu 0 4 3252 3253 3274 3273
		f 4 5100 5321 -5121 -5321
		mu 0 4 3253 3254 3275 3274
		f 4 5101 5322 -5122 -5322
		mu 0 4 3254 3255 3276 3275
		f 4 5102 5323 -5123 -5323
		mu 0 4 3255 3256 3277 3276
		f 4 5103 5324 -5124 -5324
		mu 0 4 3256 3257 3278 3277
		f 4 5104 5325 -5125 -5325
		mu 0 4 3257 3258 3279 3278
		f 4 5105 5326 -5126 -5326
		mu 0 4 3258 3259 3280 3279
		f 4 5106 5327 -5127 -5327
		mu 0 4 3259 3260 3281 3280
		f 4 5107 5328 -5128 -5328
		mu 0 4 3260 3261 3282 3281
		f 4 5108 5329 -5129 -5329
		mu 0 4 3261 3262 3283 3282
		f 4 5109 5310 -5130 -5330
		mu 0 4 3262 3263 3284 3283
		f 4 5110 5331 -5131 -5331
		mu 0 4 3265 3264 3285 3286
		f 4 5111 5332 -5132 -5332
		mu 0 4 3264 3266 3287 3285
		f 4 5112 5333 -5133 -5333
		mu 0 4 3266 3267 3288 3287
		f 4 5113 5334 -5134 -5334
		mu 0 4 3267 3268 3289 3288
		f 4 5114 5335 -5135 -5335
		mu 0 4 3268 3269 3290 3289
		f 4 5115 5336 -5136 -5336
		mu 0 4 3269 3270 3291 3290
		f 4 5116 5337 -5137 -5337
		mu 0 4 3270 3271 3292 3291
		f 4 5117 5338 -5138 -5338
		mu 0 4 3271 3272 3293 3292
		f 4 5118 5339 -5139 -5339
		mu 0 4 3272 3273 3294 3293
		f 4 5119 5340 -5140 -5340
		mu 0 4 3273 3274 3295 3294
		f 4 5120 5341 -5141 -5341
		mu 0 4 3274 3275 3296 3295
		f 4 5121 5342 -5142 -5342
		mu 0 4 3275 3276 3297 3296
		f 4 5122 5343 -5143 -5343
		mu 0 4 3276 3277 3298 3297
		f 4 5123 5344 -5144 -5344
		mu 0 4 3277 3278 3299 3298
		f 4 5124 5345 -5145 -5345
		mu 0 4 3278 3279 3300 3299
		f 4 5125 5346 -5146 -5346
		mu 0 4 3279 3280 3301 3300
		f 4 5126 5347 -5147 -5347
		mu 0 4 3280 3281 3302 3301
		f 4 5127 5348 -5148 -5348
		mu 0 4 3281 3282 3303 3302
		f 4 5128 5349 -5149 -5349
		mu 0 4 3282 3283 3304 3303
		f 4 5129 5330 -5150 -5350
		mu 0 4 3283 3284 3305 3304
		f 4 5130 5351 -5151 -5351
		mu 0 4 3286 3285 3306 3307
		f 4 5131 5352 -5152 -5352
		mu 0 4 3285 3287 3308 3306
		f 4 5132 5353 -5153 -5353
		mu 0 4 3287 3288 3309 3308
		f 4 5133 5354 -5154 -5354
		mu 0 4 3288 3289 3310 3309
		f 4 5134 5355 -5155 -5355
		mu 0 4 3289 3290 3311 3310
		f 4 5135 5356 -5156 -5356
		mu 0 4 3290 3291 3312 3311
		f 4 5136 5357 -5157 -5357
		mu 0 4 3291 3292 3313 3312
		f 4 5137 5358 -5158 -5358
		mu 0 4 3292 3293 3314 3313
		f 4 5138 5359 -5159 -5359
		mu 0 4 3293 3294 3315 3314
		f 4 5139 5360 -5160 -5360
		mu 0 4 3294 3295 3316 3315
		f 4 5140 5361 -5161 -5361
		mu 0 4 3295 3296 3317 3316
		f 4 5141 5362 -5162 -5362
		mu 0 4 3296 3297 3318 3317
		f 4 5142 5363 -5163 -5363
		mu 0 4 3297 3298 3319 3318
		f 4 5143 5364 -5164 -5364
		mu 0 4 3298 3299 3320 3319
		f 4 5144 5365 -5165 -5365
		mu 0 4 3299 3300 3321 3320
		f 4 5145 5366 -5166 -5366
		mu 0 4 3300 3301 3322 3321
		f 4 5146 5367 -5167 -5367
		mu 0 4 3301 3302 3323 3322
		f 4 5147 5368 -5168 -5368
		mu 0 4 3302 3303 3324 3323
		f 4 5148 5369 -5169 -5369
		mu 0 4 3303 3304 3325 3324
		f 4 5149 5350 -5170 -5370
		mu 0 4 3304 3305 3326 3325
		f 4 5150 5371 -5171 -5371
		mu 0 4 3307 3306 3327 3328
		f 4 5151 5372 -5172 -5372
		mu 0 4 3306 3308 3329 3327
		f 4 5152 5373 -5173 -5373
		mu 0 4 3308 3309 3330 3329
		f 4 5153 5374 -5174 -5374
		mu 0 4 3309 3310 3331 3330
		f 4 5154 5375 -5175 -5375
		mu 0 4 3310 3311 3332 3331
		f 4 5155 5376 -5176 -5376
		mu 0 4 3311 3312 3333 3332
		f 4 5156 5377 -5177 -5377
		mu 0 4 3312 3313 3334 3333
		f 4 5157 5378 -5178 -5378
		mu 0 4 3313 3314 3335 3334
		f 4 5158 5379 -5179 -5379
		mu 0 4 3314 3315 3336 3335
		f 4 5159 5380 -5180 -5380
		mu 0 4 3315 3316 3337 3336
		f 4 5160 5381 -5181 -5381
		mu 0 4 3316 3317 3338 3337
		f 4 5161 5382 -5182 -5382
		mu 0 4 3317 3318 3339 3338
		f 4 5162 5383 -5183 -5383
		mu 0 4 3318 3319 3340 3339
		f 4 5163 5384 -5184 -5384
		mu 0 4 3319 3320 3341 3340
		f 4 5164 5385 -5185 -5385
		mu 0 4 3320 3321 3342 3341
		f 4 5165 5386 -5186 -5386
		mu 0 4 3321 3322 3343 3342
		f 4 5166 5387 -5187 -5387
		mu 0 4 3322 3323 3344 3343
		f 4 5167 5388 -5188 -5388
		mu 0 4 3323 3324 3345 3344
		f 4 5168 5389 -5189 -5389
		mu 0 4 3324 3325 3346 3345
		f 4 5169 5370 -5190 -5390
		mu 0 4 3325 3326 3347 3346
		f 4 5170 5391 -5191 -5391
		mu 0 4 3328 3327 3348 3349
		f 4 5171 5392 -5192 -5392
		mu 0 4 3327 3329 3350 3348
		f 4 5172 5393 -5193 -5393
		mu 0 4 3329 3330 3351 3350
		f 4 5173 5394 -5194 -5394
		mu 0 4 3330 3331 3352 3351
		f 4 5174 5395 -5195 -5395
		mu 0 4 3331 3332 3353 3352
		f 4 5175 5396 -5196 -5396
		mu 0 4 3332 3333 3354 3353
		f 4 5176 5397 -5197 -5397
		mu 0 4 3333 3334 3355 3354
		f 4 5177 5398 -5198 -5398
		mu 0 4 3334 3335 3356 3355
		f 4 5178 5399 -5199 -5399
		mu 0 4 3335 3336 3357 3356
		f 4 5179 5400 -5200 -5400
		mu 0 4 3336 3337 3358 3357
		f 4 5180 5401 -5201 -5401
		mu 0 4 3337 3338 3359 3358
		f 4 5181 5402 -5202 -5402
		mu 0 4 3338 3339 3360 3359
		f 4 5182 5403 -5203 -5403
		mu 0 4 3339 3340 3361 3360
		f 4 5183 5404 -5204 -5404
		mu 0 4 3340 3341 3362 3361
		f 4 5184 5405 -5205 -5405
		mu 0 4 3341 3342 3363 3362
		f 4 5185 5406 -5206 -5406
		mu 0 4 3342 3343 3364 3363
		f 4 5186 5407 -5207 -5407
		mu 0 4 3343 3344 3365 3364
		f 4 5187 5408 -5208 -5408
		mu 0 4 3344 3345 3366 3365
		f 4 5188 5409 -5209 -5409
		mu 0 4 3345 3346 3367 3366
		f 4 5189 5390 -5210 -5410
		mu 0 4 3346 3347 3368 3367
		f 3 5190 5411 -5411
		mu 0 3 3349 3348 3369
		f 3 5191 5412 -5412
		mu 0 3 3348 3350 3370
		f 3 5192 5413 -5413
		mu 0 3 3350 3351 3371
		f 3 5193 5414 -5414
		mu 0 3 3351 3352 3372
		f 3 5194 5415 -5415
		mu 0 3 3352 3353 3373
		f 3 5195 5416 -5416
		mu 0 3 3353 3354 3374
		f 3 5196 5417 -5417
		mu 0 3 3354 3355 3375
		f 3 5197 5418 -5418
		mu 0 3 3355 3356 3376
		f 3 5198 5419 -5419
		mu 0 3 3356 3357 3377
		f 3 5199 5420 -5420
		mu 0 3 3357 3358 3378
		f 3 5200 5421 -5421
		mu 0 3 3358 3359 3379
		f 3 5201 5422 -5422
		mu 0 3 3359 3360 3380
		f 3 5202 5423 -5423
		mu 0 3 3360 3361 3381
		f 3 5203 5424 -5424
		mu 0 3 3361 3362 3382
		f 3 5204 5425 -5425
		mu 0 3 3362 3363 3383
		f 3 5205 5426 -5426
		mu 0 3 3363 3364 3384
		f 3 5206 5427 -5427
		mu 0 3 3364 3365 3385
		f 3 5207 5428 -5428
		mu 0 3 3365 3366 3386
		f 3 5208 5429 -5429
		mu 0 3 3366 3367 3387
		f 3 5209 5410 -5430
		mu 0 3 3367 3368 3388
		f 4 5430 5811 -5451 -5811
		mu 0 4 3389 3390 3391 3392
		f 4 5431 5812 -5452 -5812
		mu 0 4 3390 3393 3394 3391
		f 4 5432 5813 -5453 -5813
		mu 0 4 3393 3395 3396 3394
		f 4 5433 5814 -5454 -5814
		mu 0 4 3395 3397 3398 3396
		f 4 5434 5815 -5455 -5815
		mu 0 4 3397 3399 3400 3398
		f 4 5435 5816 -5456 -5816
		mu 0 4 3399 3401 3402 3400
		f 4 5436 5817 -5457 -5817
		mu 0 4 3401 3403 3404 3402
		f 4 5437 5818 -5458 -5818
		mu 0 4 3403 3405 3406 3404
		f 4 5438 5819 -5459 -5819
		mu 0 4 3405 3407 3408 3406
		f 4 5439 5820 -5460 -5820
		mu 0 4 3407 3409 3410 3408
		f 4 5440 5821 -5461 -5821
		mu 0 4 3409 3411 3412 3410
		f 4 5441 5822 -5462 -5822
		mu 0 4 3411 3413 3414 3412
		f 4 5442 5823 -5463 -5823
		mu 0 4 3413 3415 3416 3414
		f 4 5443 5824 -5464 -5824
		mu 0 4 3415 3417 3418 3416
		f 4 5444 5825 -5465 -5825
		mu 0 4 3417 3419 3420 3418
		f 4 5445 5826 -5466 -5826
		mu 0 4 3419 3421 3422 3420
		f 4 5446 5827 -5467 -5827
		mu 0 4 3421 3423 3424 3422
		f 4 5447 5828 -5468 -5828
		mu 0 4 3423 3425 3426 3424
		f 4 5448 5829 -5469 -5829
		mu 0 4 3425 3427 3428 3426
		f 4 5449 5810 -5470 -5830
		mu 0 4 3427 3429 3430 3428
		f 4 5450 5831 -5471 -5831
		mu 0 4 3392 3391 3431 3432
		f 4 5451 5832 -5472 -5832
		mu 0 4 3391 3394 3433 3431
		f 4 5452 5833 -5473 -5833
		mu 0 4 3394 3396 3434 3433
		f 4 5453 5834 -5474 -5834
		mu 0 4 3396 3398 3435 3434
		f 4 5454 5835 -5475 -5835
		mu 0 4 3398 3400 3436 3435
		f 4 5455 5836 -5476 -5836
		mu 0 4 3400 3402 3437 3436
		f 4 5456 5837 -5477 -5837
		mu 0 4 3402 3404 3438 3437
		f 4 5457 5838 -5478 -5838
		mu 0 4 3404 3406 3439 3438
		f 4 5458 5839 -5479 -5839
		mu 0 4 3406 3408 3440 3439
		f 4 5459 5840 -5480 -5840
		mu 0 4 3408 3410 3441 3440
		f 4 5460 5841 -5481 -5841
		mu 0 4 3410 3412 3442 3441
		f 4 5461 5842 -5482 -5842
		mu 0 4 3412 3414 3443 3442
		f 4 5462 5843 -5483 -5843
		mu 0 4 3414 3416 3444 3443
		f 4 5463 5844 -5484 -5844
		mu 0 4 3416 3418 3445 3444
		f 4 5464 5845 -5485 -5845
		mu 0 4 3418 3420 3446 3445
		f 4 5465 5846 -5486 -5846
		mu 0 4 3420 3422 3447 3446
		f 4 5466 5847 -5487 -5847
		mu 0 4 3422 3424 3448 3447
		f 4 5467 5848 -5488 -5848
		mu 0 4 3424 3426 3449 3448
		f 4 5468 5849 -5489 -5849
		mu 0 4 3426 3428 3450 3449
		f 4 5469 5830 -5490 -5850
		mu 0 4 3428 3430 3451 3450
		f 4 5470 5851 -5491 -5851
		mu 0 4 3432 3431 3452 3453
		f 4 5471 5852 -5492 -5852
		mu 0 4 3431 3433 3454 3452
		f 4 5472 5853 -5493 -5853
		mu 0 4 3433 3434 3455 3454
		f 4 5473 5854 -5494 -5854
		mu 0 4 3434 3435 3456 3455
		f 4 5474 5855 -5495 -5855
		mu 0 4 3435 3436 3457 3456
		f 4 5475 5856 -5496 -5856
		mu 0 4 3436 3437 3458 3457
		f 4 5476 5857 -5497 -5857
		mu 0 4 3437 3438 3459 3458
		f 4 5477 5858 -5498 -5858
		mu 0 4 3438 3439 3460 3459
		f 4 5478 5859 -5499 -5859
		mu 0 4 3439 3440 3461 3460
		f 4 5479 5860 -5500 -5860
		mu 0 4 3440 3441 3462 3461
		f 4 5480 5861 -5501 -5861
		mu 0 4 3441 3442 3463 3462
		f 4 5481 5862 -5502 -5862
		mu 0 4 3442 3443 3464 3463
		f 4 5482 5863 -5503 -5863
		mu 0 4 3443 3444 3465 3464
		f 4 5483 5864 -5504 -5864
		mu 0 4 3444 3445 3466 3465
		f 4 5484 5865 -5505 -5865
		mu 0 4 3445 3446 3467 3466
		f 4 5485 5866 -5506 -5866
		mu 0 4 3446 3447 3468 3467
		f 4 5486 5867 -5507 -5867
		mu 0 4 3447 3448 3469 3468
		f 4 5487 5868 -5508 -5868
		mu 0 4 3448 3449 3470 3469
		f 4 5488 5869 -5509 -5869
		mu 0 4 3449 3450 3471 3470
		f 4 5489 5850 -5510 -5870
		mu 0 4 3450 3451 3472 3471
		f 4 5490 5871 -5511 -5871
		mu 0 4 3453 3452 3473 3474
		f 4 5491 5872 -5512 -5872
		mu 0 4 3452 3454 3475 3473
		f 4 5492 5873 -5513 -5873
		mu 0 4 3454 3455 3476 3475
		f 4 5493 5874 -5514 -5874
		mu 0 4 3455 3456 3477 3476
		f 4 5494 5875 -5515 -5875
		mu 0 4 3456 3457 3478 3477
		f 4 5495 5876 -5516 -5876
		mu 0 4 3457 3458 3479 3478
		f 4 5496 5877 -5517 -5877
		mu 0 4 3458 3459 3480 3479
		f 4 5497 5878 -5518 -5878
		mu 0 4 3459 3460 3481 3480
		f 4 5498 5879 -5519 -5879
		mu 0 4 3460 3461 3482 3481
		f 4 5499 5880 -5520 -5880
		mu 0 4 3461 3462 3483 3482
		f 4 5500 5881 -5521 -5881
		mu 0 4 3462 3463 3484 3483
		f 4 5501 5882 -5522 -5882
		mu 0 4 3463 3464 3485 3484
		f 4 5502 5883 -5523 -5883
		mu 0 4 3464 3465 3486 3485
		f 4 5503 5884 -5524 -5884
		mu 0 4 3465 3466 3487 3486
		f 4 5504 5885 -5525 -5885
		mu 0 4 3466 3467 3488 3487
		f 4 5505 5886 -5526 -5886
		mu 0 4 3467 3468 3489 3488
		f 4 5506 5887 -5527 -5887
		mu 0 4 3468 3469 3490 3489
		f 4 5507 5888 -5528 -5888
		mu 0 4 3469 3470 3491 3490
		f 4 5508 5889 -5529 -5889
		mu 0 4 3470 3471 3492 3491
		f 4 5509 5870 -5530 -5890
		mu 0 4 3471 3472 3493 3492
		f 4 5510 5891 -5531 -5891
		mu 0 4 3474 3473 3494 3495
		f 4 5511 5892 -5532 -5892
		mu 0 4 3473 3475 3496 3494
		f 4 5512 5893 -5533 -5893
		mu 0 4 3475 3476 3497 3496
		f 4 5513 5894 -5534 -5894
		mu 0 4 3476 3477 3498 3497
		f 4 5514 5895 -5535 -5895
		mu 0 4 3477 3478 3499 3498
		f 4 5515 5896 -5536 -5896
		mu 0 4 3478 3479 3500 3499
		f 4 5516 5897 -5537 -5897
		mu 0 4 3479 3480 3501 3500
		f 4 5517 5898 -5538 -5898
		mu 0 4 3480 3481 3502 3501
		f 4 5518 5899 -5539 -5899
		mu 0 4 3481 3482 3503 3502
		f 4 5519 5900 -5540 -5900
		mu 0 4 3482 3483 3504 3503
		f 4 5520 5901 -5541 -5901
		mu 0 4 3483 3484 3505 3504
		f 4 5521 5902 -5542 -5902
		mu 0 4 3484 3485 3506 3505
		f 4 5522 5903 -5543 -5903
		mu 0 4 3485 3486 3507 3506
		f 4 5523 5904 -5544 -5904
		mu 0 4 3486 3487 3508 3507
		f 4 5524 5905 -5545 -5905
		mu 0 4 3487 3488 3509 3508
		f 4 5525 5906 -5546 -5906
		mu 0 4 3488 3489 3510 3509
		f 4 5526 5907 -5547 -5907
		mu 0 4 3489 3490 3511 3510
		f 4 5527 5908 -5548 -5908
		mu 0 4 3490 3491 3512 3511
		f 4 5528 5909 -5549 -5909
		mu 0 4 3491 3492 3513 3512
		f 4 5529 5890 -5550 -5910
		mu 0 4 3492 3493 3514 3513
		f 4 5530 5911 -5551 -5911
		mu 0 4 3495 3494 3515 3516
		f 4 5531 5912 -5552 -5912
		mu 0 4 3494 3496 3517 3515
		f 4 5532 5913 -5553 -5913
		mu 0 4 3496 3497 3518 3517
		f 4 5533 5914 -5554 -5914
		mu 0 4 3497 3498 3519 3518
		f 4 5534 5915 -5555 -5915
		mu 0 4 3498 3499 3520 3519
		f 4 5535 5916 -5556 -5916
		mu 0 4 3499 3500 3521 3520
		f 4 5536 5917 -5557 -5917
		mu 0 4 3500 3501 3522 3521
		f 4 5537 5918 -5558 -5918
		mu 0 4 3501 3502 3523 3522
		f 4 5538 5919 -5559 -5919
		mu 0 4 3502 3503 3524 3523
		f 4 5539 5920 -5560 -5920
		mu 0 4 3503 3504 3525 3524
		f 4 5540 5921 -5561 -5921
		mu 0 4 3504 3505 3526 3525
		f 4 5541 5922 -5562 -5922
		mu 0 4 3505 3506 3527 3526
		f 4 5542 5923 -5563 -5923
		mu 0 4 3506 3507 3528 3527
		f 4 5543 5924 -5564 -5924
		mu 0 4 3507 3508 3529 3528
		f 4 5544 5925 -5565 -5925
		mu 0 4 3508 3509 3530 3529
		f 4 5545 5926 -5566 -5926
		mu 0 4 3509 3510 3531 3530
		f 4 5546 5927 -5567 -5927
		mu 0 4 3510 3511 3532 3531
		f 4 5547 5928 -5568 -5928
		mu 0 4 3511 3512 3533 3532
		f 4 5548 5929 -5569 -5929
		mu 0 4 3512 3513 3534 3533
		f 4 5549 5910 -5570 -5930
		mu 0 4 3513 3514 3535 3534
		f 4 5550 5931 -5571 -5931
		mu 0 4 3516 3515 3536 3537
		f 4 5551 5932 -5572 -5932
		mu 0 4 3515 3517 3538 3536
		f 4 5552 5933 -5573 -5933
		mu 0 4 3517 3518 3539 3538
		f 4 5553 5934 -5574 -5934
		mu 0 4 3518 3519 3540 3539
		f 4 5554 5935 -5575 -5935
		mu 0 4 3519 3520 3541 3540
		f 4 5555 5936 -5576 -5936
		mu 0 4 3520 3521 3542 3541
		f 4 5556 5937 -5577 -5937
		mu 0 4 3521 3522 3543 3542
		f 4 5557 5938 -5578 -5938
		mu 0 4 3522 3523 3544 3543
		f 4 5558 5939 -5579 -5939
		mu 0 4 3523 3524 3545 3544
		f 4 5559 5940 -5580 -5940
		mu 0 4 3524 3525 3546 3545
		f 4 5560 5941 -5581 -5941
		mu 0 4 3525 3526 3547 3546
		f 4 5561 5942 -5582 -5942
		mu 0 4 3526 3527 3548 3547
		f 4 5562 5943 -5583 -5943
		mu 0 4 3527 3528 3549 3548
		f 4 5563 5944 -5584 -5944
		mu 0 4 3528 3529 3550 3549
		f 4 5564 5945 -5585 -5945
		mu 0 4 3529 3530 3551 3550
		f 4 5565 5946 -5586 -5946
		mu 0 4 3530 3531 3552 3551
		f 4 5566 5947 -5587 -5947
		mu 0 4 3531 3532 3553 3552
		f 4 5567 5948 -5588 -5948
		mu 0 4 3532 3533 3554 3553
		f 4 5568 5949 -5589 -5949
		mu 0 4 3533 3534 3555 3554
		f 4 5569 5930 -5590 -5950
		mu 0 4 3534 3535 3556 3555
		f 4 5570 5951 -5591 -5951
		mu 0 4 3537 3536 3557 3558
		f 4 5571 5952 -5592 -5952
		mu 0 4 3536 3538 3559 3557
		f 4 5572 5953 -5593 -5953
		mu 0 4 3538 3539 3560 3559
		f 4 5573 5954 -5594 -5954
		mu 0 4 3539 3540 3561 3560
		f 4 5574 5955 -5595 -5955
		mu 0 4 3540 3541 3562 3561
		f 4 5575 5956 -5596 -5956
		mu 0 4 3541 3542 3563 3562
		f 4 5576 5957 -5597 -5957
		mu 0 4 3542 3543 3564 3563
		f 4 5577 5958 -5598 -5958
		mu 0 4 3543 3544 3565 3564
		f 4 5578 5959 -5599 -5959
		mu 0 4 3544 3545 3566 3565
		f 4 5579 5960 -5600 -5960
		mu 0 4 3545 3546 3567 3566
		f 4 5580 5961 -5601 -5961
		mu 0 4 3546 3547 3568 3567
		f 4 5581 5962 -5602 -5962
		mu 0 4 3547 3548 3569 3568
		f 4 5582 5963 -5603 -5963
		mu 0 4 3548 3549 3570 3569
		f 4 5583 5964 -5604 -5964
		mu 0 4 3549 3550 3571 3570
		f 4 5584 5965 -5605 -5965
		mu 0 4 3550 3551 3572 3571
		f 4 5585 5966 -5606 -5966
		mu 0 4 3551 3552 3573 3572
		f 4 5586 5967 -5607 -5967
		mu 0 4 3552 3553 3574 3573
		f 4 5587 5968 -5608 -5968
		mu 0 4 3553 3554 3575 3574
		f 4 5588 5969 -5609 -5969
		mu 0 4 3554 3555 3576 3575
		f 4 5589 5950 -5610 -5970
		mu 0 4 3555 3556 3577 3576
		f 4 5590 5971 -5611 -5971
		mu 0 4 3558 3557 3578 3579
		f 4 5591 5972 -5612 -5972
		mu 0 4 3557 3559 3580 3578
		f 4 5592 5973 -5613 -5973
		mu 0 4 3559 3560 3581 3580
		f 4 5593 5974 -5614 -5974
		mu 0 4 3560 3561 3582 3581
		f 4 5594 5975 -5615 -5975
		mu 0 4 3561 3562 3583 3582
		f 4 5595 5976 -5616 -5976
		mu 0 4 3562 3563 3584 3583
		f 4 5596 5977 -5617 -5977
		mu 0 4 3563 3564 3585 3584
		f 4 5597 5978 -5618 -5978
		mu 0 4 3564 3565 3586 3585
		f 4 5598 5979 -5619 -5979
		mu 0 4 3565 3566 3587 3586
		f 4 5599 5980 -5620 -5980
		mu 0 4 3566 3567 3588 3587
		f 4 5600 5981 -5621 -5981
		mu 0 4 3567 3568 3589 3588
		f 4 5601 5982 -5622 -5982
		mu 0 4 3568 3569 3590 3589
		f 4 5602 5983 -5623 -5983
		mu 0 4 3569 3570 3591 3590
		f 4 5603 5984 -5624 -5984
		mu 0 4 3570 3571 3592 3591
		f 4 5604 5985 -5625 -5985
		mu 0 4 3571 3572 3593 3592
		f 4 5605 5986 -5626 -5986
		mu 0 4 3572 3573 3594 3593
		f 4 5606 5987 -5627 -5987
		mu 0 4 3573 3574 3595 3594
		f 4 5607 5988 -5628 -5988
		mu 0 4 3574 3575 3596 3595
		f 4 5608 5989 -5629 -5989
		mu 0 4 3575 3576 3597 3596
		f 4 5609 5970 -5630 -5990
		mu 0 4 3576 3577 3598 3597
		f 4 5610 5991 -5631 -5991
		mu 0 4 3579 3578 3599 3600
		f 4 5611 5992 -5632 -5992
		mu 0 4 3578 3580 3601 3599
		f 4 5612 5993 -5633 -5993
		mu 0 4 3580 3581 3602 3601
		f 4 5613 5994 -5634 -5994
		mu 0 4 3581 3582 3603 3602
		f 4 5614 5995 -5635 -5995
		mu 0 4 3582 3583 3604 3603
		f 4 5615 5996 -5636 -5996
		mu 0 4 3583 3584 3605 3604
		f 4 5616 5997 -5637 -5997
		mu 0 4 3584 3585 3606 3605
		f 4 5617 5998 -5638 -5998
		mu 0 4 3585 3586 3607 3606
		f 4 5618 5999 -5639 -5999
		mu 0 4 3586 3587 3608 3607
		f 4 5619 6000 -5640 -6000
		mu 0 4 3587 3588 3609 3608
		f 4 5620 6001 -5641 -6001
		mu 0 4 3588 3589 3610 3609
		f 4 5621 6002 -5642 -6002
		mu 0 4 3589 3590 3611 3610
		f 4 5622 6003 -5643 -6003
		mu 0 4 3590 3591 3612 3611
		f 4 5623 6004 -5644 -6004
		mu 0 4 3591 3592 3613 3612
		f 4 5624 6005 -5645 -6005
		mu 0 4 3592 3593 3614 3613
		f 4 5625 6006 -5646 -6006
		mu 0 4 3593 3594 3615 3614
		f 4 5626 6007 -5647 -6007
		mu 0 4 3594 3595 3616 3615
		f 4 5627 6008 -5648 -6008
		mu 0 4 3595 3596 3617 3616
		f 4 5628 6009 -5649 -6009
		mu 0 4 3596 3597 3618 3617
		f 4 5629 5990 -5650 -6010
		mu 0 4 3597 3598 3619 3618
		f 4 5630 6011 -5651 -6011
		mu 0 4 3600 3599 3620 3621
		f 4 5631 6012 -5652 -6012
		mu 0 4 3599 3601 3622 3620
		f 4 5632 6013 -5653 -6013
		mu 0 4 3601 3602 3623 3622
		f 4 5633 6014 -5654 -6014
		mu 0 4 3602 3603 3624 3623
		f 4 5634 6015 -5655 -6015
		mu 0 4 3603 3604 3625 3624
		f 4 5635 6016 -5656 -6016
		mu 0 4 3604 3605 3626 3625
		f 4 5636 6017 -5657 -6017
		mu 0 4 3605 3606 3627 3626
		f 4 5637 6018 -5658 -6018
		mu 0 4 3606 3607 3628 3627
		f 4 5638 6019 -5659 -6019
		mu 0 4 3607 3608 3629 3628
		f 4 5639 6020 -5660 -6020
		mu 0 4 3608 3609 3630 3629
		f 4 5640 6021 -5661 -6021
		mu 0 4 3609 3610 3631 3630
		f 4 5641 6022 -5662 -6022
		mu 0 4 3610 3611 3632 3631
		f 4 5642 6023 -5663 -6023
		mu 0 4 3611 3612 3633 3632
		f 4 5643 6024 -5664 -6024
		mu 0 4 3612 3613 3634 3633
		f 4 5644 6025 -5665 -6025
		mu 0 4 3613 3614 3635 3634
		f 4 5645 6026 -5666 -6026
		mu 0 4 3614 3615 3636 3635
		f 4 5646 6027 -5667 -6027
		mu 0 4 3615 3616 3637 3636
		f 4 5647 6028 -5668 -6028
		mu 0 4 3616 3617 3638 3637
		f 4 5648 6029 -5669 -6029
		mu 0 4 3617 3618 3639 3638
		f 4 5649 6010 -5670 -6030
		mu 0 4 3618 3619 3640 3639
		f 4 5650 6031 -5671 -6031
		mu 0 4 3621 3620 3641 3642
		f 4 5651 6032 -5672 -6032
		mu 0 4 3620 3622 3643 3641
		f 4 5652 6033 -5673 -6033
		mu 0 4 3622 3623 3644 3643
		f 4 5653 6034 -5674 -6034
		mu 0 4 3623 3624 3645 3644
		f 4 5654 6035 -5675 -6035
		mu 0 4 3624 3625 3646 3645
		f 4 5655 6036 -5676 -6036
		mu 0 4 3625 3626 3647 3646
		f 4 5656 6037 -5677 -6037
		mu 0 4 3626 3627 3648 3647
		f 4 5657 6038 -5678 -6038
		mu 0 4 3627 3628 3649 3648
		f 4 5658 6039 -5679 -6039
		mu 0 4 3628 3629 3650 3649
		f 4 5659 6040 -5680 -6040
		mu 0 4 3629 3630 3651 3650
		f 4 5660 6041 -5681 -6041
		mu 0 4 3630 3631 3652 3651
		f 4 5661 6042 -5682 -6042
		mu 0 4 3631 3632 3653 3652
		f 4 5662 6043 -5683 -6043
		mu 0 4 3632 3633 3654 3653
		f 4 5663 6044 -5684 -6044
		mu 0 4 3633 3634 3655 3654
		f 4 5664 6045 -5685 -6045
		mu 0 4 3634 3635 3656 3655
		f 4 5665 6046 -5686 -6046
		mu 0 4 3635 3636 3657 3656
		f 4 5666 6047 -5687 -6047
		mu 0 4 3636 3637 3658 3657
		f 4 5667 6048 -5688 -6048
		mu 0 4 3637 3638 3659 3658
		f 4 5668 6049 -5689 -6049
		mu 0 4 3638 3639 3660 3659
		f 4 5669 6030 -5690 -6050
		mu 0 4 3639 3640 3661 3660
		f 4 5670 6051 -5691 -6051
		mu 0 4 3642 3641 3662 3663
		f 4 5671 6052 -5692 -6052
		mu 0 4 3641 3643 3664 3662
		f 4 5672 6053 -5693 -6053
		mu 0 4 3643 3644 3665 3664
		f 4 5673 6054 -5694 -6054
		mu 0 4 3644 3645 3666 3665
		f 4 5674 6055 -5695 -6055
		mu 0 4 3645 3646 3667 3666
		f 4 5675 6056 -5696 -6056
		mu 0 4 3646 3647 3668 3667
		f 4 5676 6057 -5697 -6057
		mu 0 4 3647 3648 3669 3668
		f 4 5677 6058 -5698 -6058
		mu 0 4 3648 3649 3670 3669
		f 4 5678 6059 -5699 -6059
		mu 0 4 3649 3650 3671 3670
		f 4 5679 6060 -5700 -6060
		mu 0 4 3650 3651 3672 3671
		f 4 5680 6061 -5701 -6061
		mu 0 4 3651 3652 3673 3672
		f 4 5681 6062 -5702 -6062
		mu 0 4 3652 3653 3674 3673
		f 4 5682 6063 -5703 -6063
		mu 0 4 3653 3654 3675 3674
		f 4 5683 6064 -5704 -6064
		mu 0 4 3654 3655 3676 3675
		f 4 5684 6065 -5705 -6065
		mu 0 4 3655 3656 3677 3676
		f 4 5685 6066 -5706 -6066
		mu 0 4 3656 3657 3678 3677
		f 4 5686 6067 -5707 -6067
		mu 0 4 3657 3658 3679 3678
		f 4 5687 6068 -5708 -6068
		mu 0 4 3658 3659 3680 3679
		f 4 5688 6069 -5709 -6069
		mu 0 4 3659 3660 3681 3680
		f 4 5689 6050 -5710 -6070
		mu 0 4 3660 3661 3682 3681
		f 4 5690 6071 -5711 -6071
		mu 0 4 3663 3662 3683 3684
		f 4 5691 6072 -5712 -6072
		mu 0 4 3662 3664 3685 3683
		f 4 5692 6073 -5713 -6073
		mu 0 4 3664 3665 3686 3685
		f 4 5693 6074 -5714 -6074
		mu 0 4 3665 3666 3687 3686
		f 4 5694 6075 -5715 -6075
		mu 0 4 3666 3667 3688 3687
		f 4 5695 6076 -5716 -6076
		mu 0 4 3667 3668 3689 3688
		f 4 5696 6077 -5717 -6077
		mu 0 4 3668 3669 3690 3689
		f 4 5697 6078 -5718 -6078
		mu 0 4 3669 3670 3691 3690;
	setAttr ".fc[3000:3499]"
		f 4 5698 6079 -5719 -6079
		mu 0 4 3670 3671 3692 3691
		f 4 5699 6080 -5720 -6080
		mu 0 4 3671 3672 3693 3692
		f 4 5700 6081 -5721 -6081
		mu 0 4 3672 3673 3694 3693
		f 4 5701 6082 -5722 -6082
		mu 0 4 3673 3674 3695 3694
		f 4 5702 6083 -5723 -6083
		mu 0 4 3674 3675 3696 3695
		f 4 5703 6084 -5724 -6084
		mu 0 4 3675 3676 3697 3696
		f 4 5704 6085 -5725 -6085
		mu 0 4 3676 3677 3698 3697
		f 4 5705 6086 -5726 -6086
		mu 0 4 3677 3678 3699 3698
		f 4 5706 6087 -5727 -6087
		mu 0 4 3678 3679 3700 3699
		f 4 5707 6088 -5728 -6088
		mu 0 4 3679 3680 3701 3700
		f 4 5708 6089 -5729 -6089
		mu 0 4 3680 3681 3702 3701
		f 4 5709 6070 -5730 -6090
		mu 0 4 3681 3682 3703 3702
		f 4 5710 6091 -5731 -6091
		mu 0 4 3684 3683 3704 3705
		f 4 5711 6092 -5732 -6092
		mu 0 4 3683 3685 3706 3704
		f 4 5712 6093 -5733 -6093
		mu 0 4 3685 3686 3707 3706
		f 4 5713 6094 -5734 -6094
		mu 0 4 3686 3687 3708 3707
		f 4 5714 6095 -5735 -6095
		mu 0 4 3687 3688 3709 3708
		f 4 5715 6096 -5736 -6096
		mu 0 4 3688 3689 3710 3709
		f 4 5716 6097 -5737 -6097
		mu 0 4 3689 3690 3711 3710
		f 4 5717 6098 -5738 -6098
		mu 0 4 3690 3691 3712 3711
		f 4 5718 6099 -5739 -6099
		mu 0 4 3691 3692 3713 3712
		f 4 5719 6100 -5740 -6100
		mu 0 4 3692 3693 3714 3713
		f 4 5720 6101 -5741 -6101
		mu 0 4 3693 3694 3715 3714
		f 4 5721 6102 -5742 -6102
		mu 0 4 3694 3695 3716 3715
		f 4 5722 6103 -5743 -6103
		mu 0 4 3695 3696 3717 3716
		f 4 5723 6104 -5744 -6104
		mu 0 4 3696 3697 3718 3717
		f 4 5724 6105 -5745 -6105
		mu 0 4 3697 3698 3719 3718
		f 4 5725 6106 -5746 -6106
		mu 0 4 3698 3699 3720 3719
		f 4 5726 6107 -5747 -6107
		mu 0 4 3699 3700 3721 3720
		f 4 5727 6108 -5748 -6108
		mu 0 4 3700 3701 3722 3721
		f 4 5728 6109 -5749 -6109
		mu 0 4 3701 3702 3723 3722
		f 4 5729 6090 -5750 -6110
		mu 0 4 3702 3703 3724 3723
		f 4 5730 6111 -5751 -6111
		mu 0 4 3705 3704 3725 3726
		f 4 5731 6112 -5752 -6112
		mu 0 4 3704 3706 3727 3725
		f 4 5732 6113 -5753 -6113
		mu 0 4 3706 3707 3728 3727
		f 4 5733 6114 -5754 -6114
		mu 0 4 3707 3708 3729 3728
		f 4 5734 6115 -5755 -6115
		mu 0 4 3708 3709 3730 3729
		f 4 5735 6116 -5756 -6116
		mu 0 4 3709 3710 3731 3730
		f 4 5736 6117 -5757 -6117
		mu 0 4 3710 3711 3732 3731
		f 4 5737 6118 -5758 -6118
		mu 0 4 3711 3712 3733 3732
		f 4 5738 6119 -5759 -6119
		mu 0 4 3712 3713 3734 3733
		f 4 5739 6120 -5760 -6120
		mu 0 4 3713 3714 3735 3734
		f 4 5740 6121 -5761 -6121
		mu 0 4 3714 3715 3736 3735
		f 4 5741 6122 -5762 -6122
		mu 0 4 3715 3716 3737 3736
		f 4 5742 6123 -5763 -6123
		mu 0 4 3716 3717 3738 3737
		f 4 5743 6124 -5764 -6124
		mu 0 4 3717 3718 3739 3738
		f 4 5744 6125 -5765 -6125
		mu 0 4 3718 3719 3740 3739
		f 4 5745 6126 -5766 -6126
		mu 0 4 3719 3720 3741 3740
		f 4 5746 6127 -5767 -6127
		mu 0 4 3720 3721 3742 3741
		f 4 5747 6128 -5768 -6128
		mu 0 4 3721 3722 3743 3742
		f 4 5748 6129 -5769 -6129
		mu 0 4 3722 3723 3744 3743
		f 4 5749 6110 -5770 -6130
		mu 0 4 3723 3724 3745 3744
		f 4 5750 6131 -5771 -6131
		mu 0 4 3726 3725 3746 3747
		f 4 5751 6132 -5772 -6132
		mu 0 4 3725 3727 3748 3746
		f 4 5752 6133 -5773 -6133
		mu 0 4 3727 3728 3749 3748
		f 4 5753 6134 -5774 -6134
		mu 0 4 3728 3729 3750 3749
		f 4 5754 6135 -5775 -6135
		mu 0 4 3729 3730 3751 3750
		f 4 5755 6136 -5776 -6136
		mu 0 4 3730 3731 3752 3751
		f 4 5756 6137 -5777 -6137
		mu 0 4 3731 3732 3753 3752
		f 4 5757 6138 -5778 -6138
		mu 0 4 3732 3733 3754 3753
		f 4 5758 6139 -5779 -6139
		mu 0 4 3733 3734 3755 3754
		f 4 5759 6140 -5780 -6140
		mu 0 4 3734 3735 3756 3755
		f 4 5760 6141 -5781 -6141
		mu 0 4 3735 3736 3757 3756
		f 4 5761 6142 -5782 -6142
		mu 0 4 3736 3737 3758 3757
		f 4 5762 6143 -5783 -6143
		mu 0 4 3737 3738 3759 3758
		f 4 5763 6144 -5784 -6144
		mu 0 4 3738 3739 3760 3759
		f 4 5764 6145 -5785 -6145
		mu 0 4 3739 3740 3761 3760
		f 4 5765 6146 -5786 -6146
		mu 0 4 3740 3741 3762 3761
		f 4 5766 6147 -5787 -6147
		mu 0 4 3741 3742 3763 3762
		f 4 5767 6148 -5788 -6148
		mu 0 4 3742 3743 3764 3763
		f 4 5768 6149 -5789 -6149
		mu 0 4 3743 3744 3765 3764
		f 4 5769 6130 -5790 -6150
		mu 0 4 3744 3745 3766 3765
		f 4 5770 6151 -5791 -6151
		mu 0 4 3747 3746 3767 3768
		f 4 5771 6152 -5792 -6152
		mu 0 4 3746 3748 3769 3767
		f 4 5772 6153 -5793 -6153
		mu 0 4 3748 3749 3770 3769
		f 4 5773 6154 -5794 -6154
		mu 0 4 3749 3750 3771 3770
		f 4 5774 6155 -5795 -6155
		mu 0 4 3750 3751 3772 3771
		f 4 5775 6156 -5796 -6156
		mu 0 4 3751 3752 3773 3772
		f 4 5776 6157 -5797 -6157
		mu 0 4 3752 3753 3774 3773
		f 4 5777 6158 -5798 -6158
		mu 0 4 3753 3754 3775 3774
		f 4 5778 6159 -5799 -6159
		mu 0 4 3754 3755 3776 3775
		f 4 5779 6160 -5800 -6160
		mu 0 4 3755 3756 3777 3776
		f 4 5780 6161 -5801 -6161
		mu 0 4 3756 3757 3778 3777
		f 4 5781 6162 -5802 -6162
		mu 0 4 3757 3758 3779 3778
		f 4 5782 6163 -5803 -6163
		mu 0 4 3758 3759 3780 3779
		f 4 5783 6164 -5804 -6164
		mu 0 4 3759 3760 3781 3780
		f 4 5784 6165 -5805 -6165
		mu 0 4 3760 3761 3782 3781
		f 4 5785 6166 -5806 -6166
		mu 0 4 3761 3762 3783 3782
		f 4 5786 6167 -5807 -6167
		mu 0 4 3762 3763 3784 3783
		f 4 5787 6168 -5808 -6168
		mu 0 4 3763 3764 3785 3784
		f 4 5788 6169 -5809 -6169
		mu 0 4 3764 3765 3786 3785
		f 4 5789 6150 -5810 -6170
		mu 0 4 3765 3766 3787 3786
		f 3 -5431 -6171 6171
		mu 0 3 3390 3389 3788
		f 3 -5432 -6172 6172
		mu 0 3 3393 3390 3789
		f 3 -5433 -6173 6173
		mu 0 3 3395 3393 3790
		f 3 -5434 -6174 6174
		mu 0 3 3397 3395 3791
		f 3 -5435 -6175 6175
		mu 0 3 3399 3397 3792
		f 3 -5436 -6176 6176
		mu 0 3 3401 3399 3793
		f 3 -5437 -6177 6177
		mu 0 3 3403 3401 3794
		f 3 -5438 -6178 6178
		mu 0 3 3405 3403 3795
		f 3 -5439 -6179 6179
		mu 0 3 3407 3405 3796
		f 3 -5440 -6180 6180
		mu 0 3 3409 3407 3797
		f 3 -5441 -6181 6181
		mu 0 3 3411 3409 3798
		f 3 -5442 -6182 6182
		mu 0 3 3413 3411 3799
		f 3 -5443 -6183 6183
		mu 0 3 3415 3413 3800
		f 3 -5444 -6184 6184
		mu 0 3 3417 3415 3801
		f 3 -5445 -6185 6185
		mu 0 3 3419 3417 3802
		f 3 -5446 -6186 6186
		mu 0 3 3421 3419 3803
		f 3 -5447 -6187 6187
		mu 0 3 3423 3421 3804
		f 3 -5448 -6188 6188
		mu 0 3 3425 3423 3805
		f 3 -5449 -6189 6189
		mu 0 3 3427 3425 3806
		f 3 -5450 -6190 6170
		mu 0 3 3429 3427 3807
		f 3 5790 6191 -6191
		mu 0 3 3768 3767 3808
		f 3 5791 6192 -6192
		mu 0 3 3767 3769 3809
		f 3 5792 6193 -6193
		mu 0 3 3769 3770 3810
		f 3 5793 6194 -6194
		mu 0 3 3770 3771 3811
		f 3 5794 6195 -6195
		mu 0 3 3771 3772 3812
		f 3 5795 6196 -6196
		mu 0 3 3772 3773 3813
		f 3 5796 6197 -6197
		mu 0 3 3773 3774 3814
		f 3 5797 6198 -6198
		mu 0 3 3774 3775 3815
		f 3 5798 6199 -6199
		mu 0 3 3775 3776 3816
		f 3 5799 6200 -6200
		mu 0 3 3776 3777 3817
		f 3 5800 6201 -6201
		mu 0 3 3777 3778 3818
		f 3 5801 6202 -6202
		mu 0 3 3778 3779 3819
		f 3 5802 6203 -6203
		mu 0 3 3779 3780 3820
		f 3 5803 6204 -6204
		mu 0 3 3780 3781 3821
		f 3 5804 6205 -6205
		mu 0 3 3781 3782 3822
		f 3 5805 6206 -6206
		mu 0 3 3782 3783 3823
		f 3 5806 6207 -6207
		mu 0 3 3783 3784 3824
		f 3 5807 6208 -6208
		mu 0 3 3784 3785 3825
		f 3 5808 6209 -6209
		mu 0 3 3785 3786 3826
		f 3 5809 6190 -6210
		mu 0 3 3786 3787 3827
		f 4 6430 6230 -6432 -6211
		mu 0 4 3828 3829 3830 3831
		f 4 6431 6231 -6433 -6212
		mu 0 4 3831 3830 3832 3833
		f 4 6432 6232 -6434 -6213
		mu 0 4 3833 3832 3834 3835
		f 4 6433 6233 -6435 -6214
		mu 0 4 3835 3834 3836 3837
		f 4 6434 6234 -6436 -6215
		mu 0 4 3837 3836 3838 3839
		f 4 6435 6235 -6437 -6216
		mu 0 4 3839 3838 3840 3841
		f 4 6436 6236 -6438 -6217
		mu 0 4 3841 3840 3842 3843
		f 4 6437 6237 -6439 -6218
		mu 0 4 3843 3842 3844 3845
		f 4 6438 6238 -6440 -6219
		mu 0 4 3845 3844 3846 3847
		f 4 6439 6239 -6441 -6220
		mu 0 4 3847 3846 3848 3849
		f 4 6440 6240 -6442 -6221
		mu 0 4 3849 3848 3850 3851
		f 4 6441 6241 -6443 -6222
		mu 0 4 3851 3850 3852 3853
		f 4 6442 6242 -6444 -6223
		mu 0 4 3853 3852 3854 3855
		f 4 6443 6243 -6445 -6224
		mu 0 4 3855 3854 3856 3857
		f 4 6444 6244 -6446 -6225
		mu 0 4 3857 3856 3858 3859
		f 4 6445 6245 -6447 -6226
		mu 0 4 3859 3858 3860 3861
		f 4 6446 6246 -6448 -6227
		mu 0 4 3861 3860 3862 3863
		f 4 6447 6247 -6449 -6228
		mu 0 4 3863 3862 3864 3865
		f 4 6448 6248 -6450 -6229
		mu 0 4 3865 3864 3866 3867
		f 4 6449 6249 -6431 -6230
		mu 0 4 3867 3866 3868 3869
		f 4 6450 6250 -6452 -6231
		mu 0 4 3829 3870 3871 3830
		f 4 6451 6251 -6453 -6232
		mu 0 4 3830 3871 3872 3832
		f 4 6452 6252 -6454 -6233
		mu 0 4 3832 3872 3873 3834
		f 4 6453 6253 -6455 -6234
		mu 0 4 3834 3873 3874 3836
		f 4 6454 6254 -6456 -6235
		mu 0 4 3836 3874 3875 3838
		f 4 6455 6255 -6457 -6236
		mu 0 4 3838 3875 3876 3840
		f 4 6456 6256 -6458 -6237
		mu 0 4 3840 3876 3877 3842
		f 4 6457 6257 -6459 -6238
		mu 0 4 3842 3877 3878 3844
		f 4 6458 6258 -6460 -6239
		mu 0 4 3844 3878 3879 3846
		f 4 6459 6259 -6461 -6240
		mu 0 4 3846 3879 3880 3848
		f 4 6460 6260 -6462 -6241
		mu 0 4 3848 3880 3881 3850
		f 4 6461 6261 -6463 -6242
		mu 0 4 3850 3881 3882 3852
		f 4 6462 6262 -6464 -6243
		mu 0 4 3852 3882 3883 3854
		f 4 6463 6263 -6465 -6244
		mu 0 4 3854 3883 3884 3856
		f 4 6464 6264 -6466 -6245
		mu 0 4 3856 3884 3885 3858
		f 4 6465 6265 -6467 -6246
		mu 0 4 3858 3885 3886 3860
		f 4 6466 6266 -6468 -6247
		mu 0 4 3860 3886 3887 3862
		f 4 6467 6267 -6469 -6248
		mu 0 4 3862 3887 3888 3864
		f 4 6468 6268 -6470 -6249
		mu 0 4 3864 3888 3889 3866
		f 4 6469 6269 -6451 -6250
		mu 0 4 3866 3889 3890 3868
		f 4 6470 6270 -6472 -6251
		mu 0 4 3870 3891 3892 3871
		f 4 6471 6271 -6473 -6252
		mu 0 4 3871 3892 3893 3872
		f 4 6472 6272 -6474 -6253
		mu 0 4 3872 3893 3894 3873
		f 4 6473 6273 -6475 -6254
		mu 0 4 3873 3894 3895 3874
		f 4 6474 6274 -6476 -6255
		mu 0 4 3874 3895 3896 3875
		f 4 6475 6275 -6477 -6256
		mu 0 4 3875 3896 3897 3876
		f 4 6476 6276 -6478 -6257
		mu 0 4 3876 3897 3898 3877
		f 4 6477 6277 -6479 -6258
		mu 0 4 3877 3898 3899 3878
		f 4 6478 6278 -6480 -6259
		mu 0 4 3878 3899 3900 3879
		f 4 6479 6279 -6481 -6260
		mu 0 4 3879 3900 3901 3880
		f 4 6480 6280 -6482 -6261
		mu 0 4 3880 3901 3902 3881
		f 4 6481 6281 -6483 -6262
		mu 0 4 3881 3902 3903 3882
		f 4 6482 6282 -6484 -6263
		mu 0 4 3882 3903 3904 3883
		f 4 6483 6283 -6485 -6264
		mu 0 4 3883 3904 3905 3884
		f 4 6484 6284 -6486 -6265
		mu 0 4 3884 3905 3906 3885
		f 4 6485 6285 -6487 -6266
		mu 0 4 3885 3906 3907 3886
		f 4 6486 6286 -6488 -6267
		mu 0 4 3886 3907 3908 3887
		f 4 6487 6287 -6489 -6268
		mu 0 4 3887 3908 3909 3888
		f 4 6488 6288 -6490 -6269
		mu 0 4 3888 3909 3910 3889
		f 4 6489 6289 -6471 -6270
		mu 0 4 3889 3910 3911 3890
		f 4 6490 6290 -6492 -6271
		mu 0 4 3891 3912 3913 3892
		f 4 6491 6291 -6493 -6272
		mu 0 4 3892 3913 3914 3893
		f 4 6492 6292 -6494 -6273
		mu 0 4 3893 3914 3915 3894
		f 4 6493 6293 -6495 -6274
		mu 0 4 3894 3915 3916 3895
		f 4 6494 6294 -6496 -6275
		mu 0 4 3895 3916 3917 3896
		f 4 6495 6295 -6497 -6276
		mu 0 4 3896 3917 3918 3897
		f 4 6496 6296 -6498 -6277
		mu 0 4 3897 3918 3919 3898
		f 4 6497 6297 -6499 -6278
		mu 0 4 3898 3919 3920 3899
		f 4 6498 6298 -6500 -6279
		mu 0 4 3899 3920 3921 3900
		f 4 6499 6299 -6501 -6280
		mu 0 4 3900 3921 3922 3901
		f 4 6500 6300 -6502 -6281
		mu 0 4 3901 3922 3923 3902
		f 4 6501 6301 -6503 -6282
		mu 0 4 3902 3923 3924 3903
		f 4 6502 6302 -6504 -6283
		mu 0 4 3903 3924 3925 3904
		f 4 6503 6303 -6505 -6284
		mu 0 4 3904 3925 3926 3905
		f 4 6504 6304 -6506 -6285
		mu 0 4 3905 3926 3927 3906
		f 4 6505 6305 -6507 -6286
		mu 0 4 3906 3927 3928 3907
		f 4 6506 6306 -6508 -6287
		mu 0 4 3907 3928 3929 3908
		f 4 6507 6307 -6509 -6288
		mu 0 4 3908 3929 3930 3909
		f 4 6508 6308 -6510 -6289
		mu 0 4 3909 3930 3931 3910
		f 4 6509 6309 -6491 -6290
		mu 0 4 3910 3931 3932 3911
		f 4 6510 6310 -6512 -6291
		mu 0 4 3912 3933 3934 3913
		f 4 6511 6311 -6513 -6292
		mu 0 4 3913 3934 3935 3914
		f 4 6512 6312 -6514 -6293
		mu 0 4 3914 3935 3936 3915
		f 4 6513 6313 -6515 -6294
		mu 0 4 3915 3936 3937 3916
		f 4 6514 6314 -6516 -6295
		mu 0 4 3916 3937 3938 3917
		f 4 6515 6315 -6517 -6296
		mu 0 4 3917 3938 3939 3918
		f 4 6516 6316 -6518 -6297
		mu 0 4 3918 3939 3940 3919
		f 4 6517 6317 -6519 -6298
		mu 0 4 3919 3940 3941 3920
		f 4 6518 6318 -6520 -6299
		mu 0 4 3920 3941 3942 3921
		f 4 6519 6319 -6521 -6300
		mu 0 4 3921 3942 3943 3922
		f 4 6520 6320 -6522 -6301
		mu 0 4 3922 3943 3944 3923
		f 4 6521 6321 -6523 -6302
		mu 0 4 3923 3944 3945 3924
		f 4 6522 6322 -6524 -6303
		mu 0 4 3924 3945 3946 3925
		f 4 6523 6323 -6525 -6304
		mu 0 4 3925 3946 3947 3926
		f 4 6524 6324 -6526 -6305
		mu 0 4 3926 3947 3948 3927
		f 4 6525 6325 -6527 -6306
		mu 0 4 3927 3948 3949 3928
		f 4 6526 6326 -6528 -6307
		mu 0 4 3928 3949 3950 3929
		f 4 6527 6327 -6529 -6308
		mu 0 4 3929 3950 3951 3930
		f 4 6528 6328 -6530 -6309
		mu 0 4 3930 3951 3952 3931
		f 4 6529 6329 -6511 -6310
		mu 0 4 3931 3952 3953 3932
		f 4 6530 6330 -6532 -6311
		mu 0 4 3933 3954 3955 3934
		f 4 6531 6331 -6533 -6312
		mu 0 4 3934 3955 3956 3935
		f 4 6532 6332 -6534 -6313
		mu 0 4 3935 3956 3957 3936
		f 4 6533 6333 -6535 -6314
		mu 0 4 3936 3957 3958 3937
		f 4 6534 6334 -6536 -6315
		mu 0 4 3937 3958 3959 3938
		f 4 6535 6335 -6537 -6316
		mu 0 4 3938 3959 3960 3939
		f 4 6536 6336 -6538 -6317
		mu 0 4 3939 3960 3961 3940
		f 4 6537 6337 -6539 -6318
		mu 0 4 3940 3961 3962 3941
		f 4 6538 6338 -6540 -6319
		mu 0 4 3941 3962 3963 3942
		f 4 6539 6339 -6541 -6320
		mu 0 4 3942 3963 3964 3943
		f 4 6540 6340 -6542 -6321
		mu 0 4 3943 3964 3965 3944
		f 4 6541 6341 -6543 -6322
		mu 0 4 3944 3965 3966 3945
		f 4 6542 6342 -6544 -6323
		mu 0 4 3945 3966 3967 3946
		f 4 6543 6343 -6545 -6324
		mu 0 4 3946 3967 3968 3947
		f 4 6544 6344 -6546 -6325
		mu 0 4 3947 3968 3969 3948
		f 4 6545 6345 -6547 -6326
		mu 0 4 3948 3969 3970 3949
		f 4 6546 6346 -6548 -6327
		mu 0 4 3949 3970 3971 3950
		f 4 6547 6347 -6549 -6328
		mu 0 4 3950 3971 3972 3951
		f 4 6548 6348 -6550 -6329
		mu 0 4 3951 3972 3973 3952
		f 4 6549 6349 -6531 -6330
		mu 0 4 3952 3973 3974 3953
		f 4 6550 6350 -6552 -6331
		mu 0 4 3954 3975 3976 3955
		f 4 6551 6351 -6553 -6332
		mu 0 4 3955 3976 3977 3956
		f 4 6552 6352 -6554 -6333
		mu 0 4 3956 3977 3978 3957
		f 4 6553 6353 -6555 -6334
		mu 0 4 3957 3978 3979 3958
		f 4 6554 6354 -6556 -6335
		mu 0 4 3958 3979 3980 3959
		f 4 6555 6355 -6557 -6336
		mu 0 4 3959 3980 3981 3960
		f 4 6556 6356 -6558 -6337
		mu 0 4 3960 3981 3982 3961
		f 4 6557 6357 -6559 -6338
		mu 0 4 3961 3982 3983 3962
		f 4 6558 6358 -6560 -6339
		mu 0 4 3962 3983 3984 3963
		f 4 6559 6359 -6561 -6340
		mu 0 4 3963 3984 3985 3964
		f 4 6560 6360 -6562 -6341
		mu 0 4 3964 3985 3986 3965
		f 4 6561 6361 -6563 -6342
		mu 0 4 3965 3986 3987 3966
		f 4 6562 6362 -6564 -6343
		mu 0 4 3966 3987 3988 3967
		f 4 6563 6363 -6565 -6344
		mu 0 4 3967 3988 3989 3968
		f 4 6564 6364 -6566 -6345
		mu 0 4 3968 3989 3990 3969
		f 4 6565 6365 -6567 -6346
		mu 0 4 3969 3990 3991 3970
		f 4 6566 6366 -6568 -6347
		mu 0 4 3970 3991 3992 3971
		f 4 6567 6367 -6569 -6348
		mu 0 4 3971 3992 3993 3972
		f 4 6568 6368 -6570 -6349
		mu 0 4 3972 3993 3994 3973
		f 4 6569 6369 -6551 -6350
		mu 0 4 3973 3994 3995 3974
		f 4 6570 6370 -6572 -6351
		mu 0 4 3975 3996 3997 3976
		f 4 6571 6371 -6573 -6352
		mu 0 4 3976 3997 3998 3977
		f 4 6572 6372 -6574 -6353
		mu 0 4 3977 3998 3999 3978
		f 4 6573 6373 -6575 -6354
		mu 0 4 3978 3999 4000 3979
		f 4 6574 6374 -6576 -6355
		mu 0 4 3979 4000 4001 3980
		f 4 6575 6375 -6577 -6356
		mu 0 4 3980 4001 4002 3981
		f 4 6576 6376 -6578 -6357
		mu 0 4 3981 4002 4003 3982
		f 4 6577 6377 -6579 -6358
		mu 0 4 3982 4003 4004 3983
		f 4 6578 6378 -6580 -6359
		mu 0 4 3983 4004 4005 3984
		f 4 6579 6379 -6581 -6360
		mu 0 4 3984 4005 4006 3985
		f 4 6580 6380 -6582 -6361
		mu 0 4 3985 4006 4007 3986
		f 4 6581 6381 -6583 -6362
		mu 0 4 3986 4007 4008 3987
		f 4 6582 6382 -6584 -6363
		mu 0 4 3987 4008 4009 3988
		f 4 6583 6383 -6585 -6364
		mu 0 4 3988 4009 4010 3989
		f 4 6584 6384 -6586 -6365
		mu 0 4 3989 4010 4011 3990
		f 4 6585 6385 -6587 -6366
		mu 0 4 3990 4011 4012 3991
		f 4 6586 6386 -6588 -6367
		mu 0 4 3991 4012 4013 3992
		f 4 6587 6387 -6589 -6368
		mu 0 4 3992 4013 4014 3993
		f 4 6588 6388 -6590 -6369
		mu 0 4 3993 4014 4015 3994
		f 4 6589 6389 -6571 -6370
		mu 0 4 3994 4015 4016 3995
		f 4 6590 6390 -6592 -6371
		mu 0 4 3996 4017 4018 3997
		f 4 6591 6391 -6593 -6372
		mu 0 4 3997 4018 4019 3998
		f 4 6592 6392 -6594 -6373
		mu 0 4 3998 4019 4020 3999
		f 4 6593 6393 -6595 -6374
		mu 0 4 3999 4020 4021 4000
		f 4 6594 6394 -6596 -6375
		mu 0 4 4000 4021 4022 4001
		f 4 6595 6395 -6597 -6376
		mu 0 4 4001 4022 4023 4002
		f 4 6596 6396 -6598 -6377
		mu 0 4 4002 4023 4024 4003
		f 4 6597 6397 -6599 -6378
		mu 0 4 4003 4024 4025 4004
		f 4 6598 6398 -6600 -6379
		mu 0 4 4004 4025 4026 4005
		f 4 6599 6399 -6601 -6380
		mu 0 4 4005 4026 4027 4006
		f 4 6600 6400 -6602 -6381
		mu 0 4 4006 4027 4028 4007
		f 4 6601 6401 -6603 -6382
		mu 0 4 4007 4028 4029 4008
		f 4 6602 6402 -6604 -6383
		mu 0 4 4008 4029 4030 4009
		f 4 6603 6403 -6605 -6384
		mu 0 4 4009 4030 4031 4010
		f 4 6604 6404 -6606 -6385
		mu 0 4 4010 4031 4032 4011
		f 4 6605 6405 -6607 -6386
		mu 0 4 4011 4032 4033 4012
		f 4 6606 6406 -6608 -6387
		mu 0 4 4012 4033 4034 4013
		f 4 6607 6407 -6609 -6388
		mu 0 4 4013 4034 4035 4014
		f 4 6608 6408 -6610 -6389
		mu 0 4 4014 4035 4036 4015
		f 4 6609 6409 -6591 -6390
		mu 0 4 4015 4036 4037 4016
		f 4 6610 6410 -6612 -6391
		mu 0 4 4017 4038 4039 4018
		f 4 6611 6411 -6613 -6392
		mu 0 4 4018 4039 4040 4019
		f 4 6612 6412 -6614 -6393
		mu 0 4 4019 4040 4041 4020
		f 4 6613 6413 -6615 -6394
		mu 0 4 4020 4041 4042 4021
		f 4 6614 6414 -6616 -6395
		mu 0 4 4021 4042 4043 4022
		f 4 6615 6415 -6617 -6396
		mu 0 4 4022 4043 4044 4023
		f 4 6616 6416 -6618 -6397
		mu 0 4 4023 4044 4045 4024
		f 4 6617 6417 -6619 -6398
		mu 0 4 4024 4045 4046 4025
		f 4 6618 6418 -6620 -6399
		mu 0 4 4025 4046 4047 4026
		f 4 6619 6419 -6621 -6400
		mu 0 4 4026 4047 4048 4027
		f 4 6620 6420 -6622 -6401
		mu 0 4 4027 4048 4049 4028
		f 4 6621 6421 -6623 -6402
		mu 0 4 4028 4049 4050 4029
		f 4 6622 6422 -6624 -6403
		mu 0 4 4029 4050 4051 4030
		f 4 6623 6423 -6625 -6404
		mu 0 4 4030 4051 4052 4031
		f 4 6624 6424 -6626 -6405
		mu 0 4 4031 4052 4053 4032
		f 4 6625 6425 -6627 -6406
		mu 0 4 4032 4053 4054 4033
		f 4 6626 6426 -6628 -6407
		mu 0 4 4033 4054 4055 4034
		f 4 6627 6427 -6629 -6408
		mu 0 4 4034 4055 4056 4035
		f 4 6628 6428 -6630 -6409
		mu 0 4 4035 4056 4057 4036
		f 4 6629 6429 -6611 -6410
		mu 0 4 4036 4057 4058 4037
		f 3 6630 -6632 -6411
		mu 0 3 4038 4059 4039
		f 3 6631 -6633 -6412
		mu 0 3 4039 4060 4040
		f 3 6632 -6634 -6413
		mu 0 3 4040 4061 4041
		f 3 6633 -6635 -6414
		mu 0 3 4041 4062 4042
		f 3 6634 -6636 -6415
		mu 0 3 4042 4063 4043
		f 3 6635 -6637 -6416
		mu 0 3 4043 4064 4044
		f 3 6636 -6638 -6417
		mu 0 3 4044 4065 4045
		f 3 6637 -6639 -6418
		mu 0 3 4045 4066 4046
		f 3 6638 -6640 -6419
		mu 0 3 4046 4067 4047
		f 3 6639 -6641 -6420
		mu 0 3 4047 4068 4048
		f 3 6640 -6642 -6421
		mu 0 3 4048 4069 4049
		f 3 6641 -6643 -6422
		mu 0 3 4049 4070 4050
		f 3 6642 -6644 -6423
		mu 0 3 4050 4071 4051
		f 3 6643 -6645 -6424
		mu 0 3 4051 4072 4052
		f 3 6644 -6646 -6425
		mu 0 3 4052 4073 4053
		f 3 6645 -6647 -6426
		mu 0 3 4053 4074 4054
		f 3 6646 -6648 -6427
		mu 0 3 4054 4075 4055
		f 3 6647 -6649 -6428
		mu 0 3 4055 4076 4056
		f 3 6648 -6650 -6429
		mu 0 3 4056 4077 4057
		f 3 6649 -6631 -6430
		mu 0 3 4057 4078 4058
		f 4 6650 6871 -6671 -6871
		mu 0 4 4079 4080 4081 4082
		f 4 6651 6872 -6672 -6872
		mu 0 4 4080 4083 4084 4081
		f 4 6652 6873 -6673 -6873
		mu 0 4 4083 4085 4086 4084
		f 4 6653 6874 -6674 -6874
		mu 0 4 4085 4087 4088 4086
		f 4 6654 6875 -6675 -6875
		mu 0 4 4087 4089 4090 4088
		f 4 6655 6876 -6676 -6876
		mu 0 4 4089 4091 4092 4090
		f 4 6656 6877 -6677 -6877
		mu 0 4 4091 4093 4094 4092
		f 4 6657 6878 -6678 -6878
		mu 0 4 4093 4095 4096 4094
		f 4 6658 6879 -6679 -6879
		mu 0 4 4095 4097 4098 4096
		f 4 6659 6880 -6680 -6880
		mu 0 4 4097 4099 4100 4098
		f 4 6660 6881 -6681 -6881
		mu 0 4 4099 4101 4102 4100
		f 4 6661 6882 -6682 -6882
		mu 0 4 4101 4103 4104 4102
		f 4 6662 6883 -6683 -6883
		mu 0 4 4103 4105 4106 4104
		f 4 6663 6884 -6684 -6884
		mu 0 4 4105 4107 4108 4106
		f 4 6664 6885 -6685 -6885
		mu 0 4 4107 4109 4110 4108
		f 4 6665 6886 -6686 -6886
		mu 0 4 4109 4111 4112 4110
		f 4 6666 6887 -6687 -6887
		mu 0 4 4111 4113 4114 4112
		f 4 6667 6888 -6688 -6888
		mu 0 4 4113 4115 4116 4114
		f 4 6668 6889 -6689 -6889
		mu 0 4 4115 4117 4118 4116
		f 4 6669 6870 -6690 -6890
		mu 0 4 4117 4119 4120 4118
		f 4 6670 6891 -6691 -6891
		mu 0 4 4082 4081 4121 4122
		f 4 6671 6892 -6692 -6892
		mu 0 4 4081 4084 4123 4121
		f 4 6672 6893 -6693 -6893
		mu 0 4 4084 4086 4124 4123
		f 4 6673 6894 -6694 -6894
		mu 0 4 4086 4088 4125 4124
		f 4 6674 6895 -6695 -6895
		mu 0 4 4088 4090 4126 4125
		f 4 6675 6896 -6696 -6896
		mu 0 4 4090 4092 4127 4126
		f 4 6676 6897 -6697 -6897
		mu 0 4 4092 4094 4128 4127
		f 4 6677 6898 -6698 -6898
		mu 0 4 4094 4096 4129 4128
		f 4 6678 6899 -6699 -6899
		mu 0 4 4096 4098 4130 4129
		f 4 6679 6900 -6700 -6900
		mu 0 4 4098 4100 4131 4130
		f 4 6680 6901 -6701 -6901
		mu 0 4 4100 4102 4132 4131
		f 4 6681 6902 -6702 -6902
		mu 0 4 4102 4104 4133 4132
		f 4 6682 6903 -6703 -6903
		mu 0 4 4104 4106 4134 4133
		f 4 6683 6904 -6704 -6904
		mu 0 4 4106 4108 4135 4134
		f 4 6684 6905 -6705 -6905
		mu 0 4 4108 4110 4136 4135
		f 4 6685 6906 -6706 -6906
		mu 0 4 4110 4112 4137 4136
		f 4 6686 6907 -6707 -6907
		mu 0 4 4112 4114 4138 4137
		f 4 6687 6908 -6708 -6908
		mu 0 4 4114 4116 4139 4138
		f 4 6688 6909 -6709 -6909
		mu 0 4 4116 4118 4140 4139
		f 4 6689 6890 -6710 -6910
		mu 0 4 4118 4120 4141 4140
		f 4 6690 6911 -6711 -6911
		mu 0 4 4122 4121 4142 4143
		f 4 6691 6912 -6712 -6912
		mu 0 4 4121 4123 4144 4142
		f 4 6692 6913 -6713 -6913
		mu 0 4 4123 4124 4145 4144
		f 4 6693 6914 -6714 -6914
		mu 0 4 4124 4125 4146 4145
		f 4 6694 6915 -6715 -6915
		mu 0 4 4125 4126 4147 4146
		f 4 6695 6916 -6716 -6916
		mu 0 4 4126 4127 4148 4147
		f 4 6696 6917 -6717 -6917
		mu 0 4 4127 4128 4149 4148
		f 4 6697 6918 -6718 -6918
		mu 0 4 4128 4129 4150 4149
		f 4 6698 6919 -6719 -6919
		mu 0 4 4129 4130 4151 4150
		f 4 6699 6920 -6720 -6920
		mu 0 4 4130 4131 4152 4151
		f 4 6700 6921 -6721 -6921
		mu 0 4 4131 4132 4153 4152
		f 4 6701 6922 -6722 -6922
		mu 0 4 4132 4133 4154 4153
		f 4 6702 6923 -6723 -6923
		mu 0 4 4133 4134 4155 4154
		f 4 6703 6924 -6724 -6924
		mu 0 4 4134 4135 4156 4155
		f 4 6704 6925 -6725 -6925
		mu 0 4 4135 4136 4157 4156
		f 4 6705 6926 -6726 -6926
		mu 0 4 4136 4137 4158 4157
		f 4 6706 6927 -6727 -6927
		mu 0 4 4137 4138 4159 4158
		f 4 6707 6928 -6728 -6928
		mu 0 4 4138 4139 4160 4159
		f 4 6708 6929 -6729 -6929
		mu 0 4 4139 4140 4161 4160
		f 4 6709 6910 -6730 -6930
		mu 0 4 4140 4141 4162 4161
		f 4 6710 6931 -6731 -6931
		mu 0 4 4143 4142 4163 4164
		f 4 6711 6932 -6732 -6932
		mu 0 4 4142 4144 4165 4163
		f 4 6712 6933 -6733 -6933
		mu 0 4 4144 4145 4166 4165
		f 4 6713 6934 -6734 -6934
		mu 0 4 4145 4146 4167 4166
		f 4 6714 6935 -6735 -6935
		mu 0 4 4146 4147 4168 4167
		f 4 6715 6936 -6736 -6936
		mu 0 4 4147 4148 4169 4168
		f 4 6716 6937 -6737 -6937
		mu 0 4 4148 4149 4170 4169
		f 4 6717 6938 -6738 -6938
		mu 0 4 4149 4150 4171 4170
		f 4 6718 6939 -6739 -6939
		mu 0 4 4150 4151 4172 4171
		f 4 6719 6940 -6740 -6940
		mu 0 4 4151 4152 4173 4172
		f 4 6720 6941 -6741 -6941
		mu 0 4 4152 4153 4174 4173
		f 4 6721 6942 -6742 -6942
		mu 0 4 4153 4154 4175 4174
		f 4 6722 6943 -6743 -6943
		mu 0 4 4154 4155 4176 4175
		f 4 6723 6944 -6744 -6944
		mu 0 4 4155 4156 4177 4176
		f 4 6724 6945 -6745 -6945
		mu 0 4 4156 4157 4178 4177
		f 4 6725 6946 -6746 -6946
		mu 0 4 4157 4158 4179 4178
		f 4 6726 6947 -6747 -6947
		mu 0 4 4158 4159 4180 4179
		f 4 6727 6948 -6748 -6948
		mu 0 4 4159 4160 4181 4180
		f 4 6728 6949 -6749 -6949
		mu 0 4 4160 4161 4182 4181
		f 4 6729 6930 -6750 -6950
		mu 0 4 4161 4162 4183 4182
		f 4 6730 6951 -6751 -6951
		mu 0 4 4164 4163 4184 4185
		f 4 6731 6952 -6752 -6952
		mu 0 4 4163 4165 4186 4184
		f 4 6732 6953 -6753 -6953
		mu 0 4 4165 4166 4187 4186
		f 4 6733 6954 -6754 -6954
		mu 0 4 4166 4167 4188 4187
		f 4 6734 6955 -6755 -6955
		mu 0 4 4167 4168 4189 4188
		f 4 6735 6956 -6756 -6956
		mu 0 4 4168 4169 4190 4189
		f 4 6736 6957 -6757 -6957
		mu 0 4 4169 4170 4191 4190
		f 4 6737 6958 -6758 -6958
		mu 0 4 4170 4171 4192 4191
		f 4 6738 6959 -6759 -6959
		mu 0 4 4171 4172 4193 4192
		f 4 6739 6960 -6760 -6960
		mu 0 4 4172 4173 4194 4193
		f 4 6740 6961 -6761 -6961
		mu 0 4 4173 4174 4195 4194
		f 4 6741 6962 -6762 -6962
		mu 0 4 4174 4175 4196 4195
		f 4 6742 6963 -6763 -6963
		mu 0 4 4175 4176 4197 4196
		f 4 6743 6964 -6764 -6964
		mu 0 4 4176 4177 4198 4197
		f 4 6744 6965 -6765 -6965
		mu 0 4 4177 4178 4199 4198
		f 4 6745 6966 -6766 -6966
		mu 0 4 4178 4179 4200 4199
		f 4 6746 6967 -6767 -6967
		mu 0 4 4179 4180 4201 4200
		f 4 6747 6968 -6768 -6968
		mu 0 4 4180 4181 4202 4201
		f 4 6748 6969 -6769 -6969
		mu 0 4 4181 4182 4203 4202
		f 4 6749 6950 -6770 -6970
		mu 0 4 4182 4183 4204 4203
		f 4 6750 6971 -6771 -6971
		mu 0 4 4185 4184 4205 4206
		f 4 6751 6972 -6772 -6972
		mu 0 4 4184 4186 4207 4205
		f 4 6752 6973 -6773 -6973
		mu 0 4 4186 4187 4208 4207
		f 4 6753 6974 -6774 -6974
		mu 0 4 4187 4188 4209 4208
		f 4 6754 6975 -6775 -6975
		mu 0 4 4188 4189 4210 4209
		f 4 6755 6976 -6776 -6976
		mu 0 4 4189 4190 4211 4210
		f 4 6756 6977 -6777 -6977
		mu 0 4 4190 4191 4212 4211
		f 4 6757 6978 -6778 -6978
		mu 0 4 4191 4192 4213 4212
		f 4 6758 6979 -6779 -6979
		mu 0 4 4192 4193 4214 4213
		f 4 6759 6980 -6780 -6980
		mu 0 4 4193 4194 4215 4214
		f 4 6760 6981 -6781 -6981
		mu 0 4 4194 4195 4216 4215
		f 4 6761 6982 -6782 -6982
		mu 0 4 4195 4196 4217 4216
		f 4 6762 6983 -6783 -6983
		mu 0 4 4196 4197 4218 4217
		f 4 6763 6984 -6784 -6984
		mu 0 4 4197 4198 4219 4218
		f 4 6764 6985 -6785 -6985
		mu 0 4 4198 4199 4220 4219
		f 4 6765 6986 -6786 -6986
		mu 0 4 4199 4200 4221 4220
		f 4 6766 6987 -6787 -6987
		mu 0 4 4200 4201 4222 4221
		f 4 6767 6988 -6788 -6988
		mu 0 4 4201 4202 4223 4222
		f 4 6768 6989 -6789 -6989
		mu 0 4 4202 4203 4224 4223
		f 4 6769 6970 -6790 -6990
		mu 0 4 4203 4204 4225 4224
		f 4 6770 6991 -6791 -6991
		mu 0 4 4206 4205 4226 4227
		f 4 6771 6992 -6792 -6992
		mu 0 4 4205 4207 4228 4226
		f 4 6772 6993 -6793 -6993
		mu 0 4 4207 4208 4229 4228
		f 4 6773 6994 -6794 -6994
		mu 0 4 4208 4209 4230 4229
		f 4 6774 6995 -6795 -6995
		mu 0 4 4209 4210 4231 4230
		f 4 6775 6996 -6796 -6996
		mu 0 4 4210 4211 4232 4231
		f 4 6776 6997 -6797 -6997
		mu 0 4 4211 4212 4233 4232
		f 4 6777 6998 -6798 -6998
		mu 0 4 4212 4213 4234 4233
		f 4 6778 6999 -6799 -6999
		mu 0 4 4213 4214 4235 4234
		f 4 6779 7000 -6800 -7000
		mu 0 4 4214 4215 4236 4235
		f 4 6780 7001 -6801 -7001
		mu 0 4 4215 4216 4237 4236
		f 4 6781 7002 -6802 -7002
		mu 0 4 4216 4217 4238 4237
		f 4 6782 7003 -6803 -7003
		mu 0 4 4217 4218 4239 4238
		f 4 6783 7004 -6804 -7004
		mu 0 4 4218 4219 4240 4239
		f 4 6784 7005 -6805 -7005
		mu 0 4 4219 4220 4241 4240
		f 4 6785 7006 -6806 -7006
		mu 0 4 4220 4221 4242 4241
		f 4 6786 7007 -6807 -7007
		mu 0 4 4221 4222 4243 4242
		f 4 6787 7008 -6808 -7008
		mu 0 4 4222 4223 4244 4243
		f 4 6788 7009 -6809 -7009
		mu 0 4 4223 4224 4245 4244
		f 4 6789 6990 -6810 -7010
		mu 0 4 4224 4225 4246 4245
		f 4 6790 7011 -6811 -7011
		mu 0 4 4227 4226 4247 4248
		f 4 6791 7012 -6812 -7012
		mu 0 4 4226 4228 4249 4247
		f 4 6792 7013 -6813 -7013
		mu 0 4 4228 4229 4250 4249
		f 4 6793 7014 -6814 -7014
		mu 0 4 4229 4230 4251 4250
		f 4 6794 7015 -6815 -7015
		mu 0 4 4230 4231 4252 4251
		f 4 6795 7016 -6816 -7016
		mu 0 4 4231 4232 4253 4252
		f 4 6796 7017 -6817 -7017
		mu 0 4 4232 4233 4254 4253
		f 4 6797 7018 -6818 -7018
		mu 0 4 4233 4234 4255 4254;
	setAttr ".fc[3500:3571]"
		f 4 6798 7019 -6819 -7019
		mu 0 4 4234 4235 4256 4255
		f 4 6799 7020 -6820 -7020
		mu 0 4 4235 4236 4257 4256
		f 4 6800 7021 -6821 -7021
		mu 0 4 4236 4237 4258 4257
		f 4 6801 7022 -6822 -7022
		mu 0 4 4237 4238 4259 4258
		f 4 6802 7023 -6823 -7023
		mu 0 4 4238 4239 4260 4259
		f 4 6803 7024 -6824 -7024
		mu 0 4 4239 4240 4261 4260
		f 4 6804 7025 -6825 -7025
		mu 0 4 4240 4241 4262 4261
		f 4 6805 7026 -6826 -7026
		mu 0 4 4241 4242 4263 4262
		f 4 6806 7027 -6827 -7027
		mu 0 4 4242 4243 4264 4263
		f 4 6807 7028 -6828 -7028
		mu 0 4 4243 4244 4265 4264
		f 4 6808 7029 -6829 -7029
		mu 0 4 4244 4245 4266 4265
		f 4 6809 7010 -6830 -7030
		mu 0 4 4245 4246 4267 4266
		f 4 6810 7031 -6831 -7031
		mu 0 4 4248 4247 4268 4269
		f 4 6811 7032 -6832 -7032
		mu 0 4 4247 4249 4270 4268
		f 4 6812 7033 -6833 -7033
		mu 0 4 4249 4250 4271 4270
		f 4 6813 7034 -6834 -7034
		mu 0 4 4250 4251 4272 4271
		f 4 6814 7035 -6835 -7035
		mu 0 4 4251 4252 4273 4272
		f 4 6815 7036 -6836 -7036
		mu 0 4 4252 4253 4274 4273
		f 4 6816 7037 -6837 -7037
		mu 0 4 4253 4254 4275 4274
		f 4 6817 7038 -6838 -7038
		mu 0 4 4254 4255 4276 4275
		f 4 6818 7039 -6839 -7039
		mu 0 4 4255 4256 4277 4276
		f 4 6819 7040 -6840 -7040
		mu 0 4 4256 4257 4278 4277
		f 4 6820 7041 -6841 -7041
		mu 0 4 4257 4258 4279 4278
		f 4 6821 7042 -6842 -7042
		mu 0 4 4258 4259 4280 4279
		f 4 6822 7043 -6843 -7043
		mu 0 4 4259 4260 4281 4280
		f 4 6823 7044 -6844 -7044
		mu 0 4 4260 4261 4282 4281
		f 4 6824 7045 -6845 -7045
		mu 0 4 4261 4262 4283 4282
		f 4 6825 7046 -6846 -7046
		mu 0 4 4262 4263 4284 4283
		f 4 6826 7047 -6847 -7047
		mu 0 4 4263 4264 4285 4284
		f 4 6827 7048 -6848 -7048
		mu 0 4 4264 4265 4286 4285
		f 4 6828 7049 -6849 -7049
		mu 0 4 4265 4266 4287 4286
		f 4 6829 7030 -6850 -7050
		mu 0 4 4266 4267 4288 4287
		f 4 6830 7051 -6851 -7051
		mu 0 4 4269 4268 4289 4290
		f 4 6831 7052 -6852 -7052
		mu 0 4 4268 4270 4291 4289
		f 4 6832 7053 -6853 -7053
		mu 0 4 4270 4271 4292 4291
		f 4 6833 7054 -6854 -7054
		mu 0 4 4271 4272 4293 4292
		f 4 6834 7055 -6855 -7055
		mu 0 4 4272 4273 4294 4293
		f 4 6835 7056 -6856 -7056
		mu 0 4 4273 4274 4295 4294
		f 4 6836 7057 -6857 -7057
		mu 0 4 4274 4275 4296 4295
		f 4 6837 7058 -6858 -7058
		mu 0 4 4275 4276 4297 4296
		f 4 6838 7059 -6859 -7059
		mu 0 4 4276 4277 4298 4297
		f 4 6839 7060 -6860 -7060
		mu 0 4 4277 4278 4299 4298
		f 4 6840 7061 -6861 -7061
		mu 0 4 4278 4279 4300 4299
		f 4 6841 7062 -6862 -7062
		mu 0 4 4279 4280 4301 4300
		f 4 6842 7063 -6863 -7063
		mu 0 4 4280 4281 4302 4301
		f 4 6843 7064 -6864 -7064
		mu 0 4 4281 4282 4303 4302
		f 4 6844 7065 -6865 -7065
		mu 0 4 4282 4283 4304 4303
		f 4 6845 7066 -6866 -7066
		mu 0 4 4283 4284 4305 4304
		f 4 6846 7067 -6867 -7067
		mu 0 4 4284 4285 4306 4305
		f 4 6847 7068 -6868 -7068
		mu 0 4 4285 4286 4307 4306
		f 4 6848 7069 -6869 -7069
		mu 0 4 4286 4287 4308 4307
		f 4 6849 7050 -6870 -7070
		mu 0 4 4287 4288 4309 4308
		f 3 6850 7071 -7071
		mu 0 3 4290 4289 4310
		f 3 6851 7072 -7072
		mu 0 3 4289 4291 4311
		f 3 6852 7073 -7073
		mu 0 3 4291 4292 4312
		f 3 6853 7074 -7074
		mu 0 3 4292 4293 4313
		f 3 6854 7075 -7075
		mu 0 3 4293 4294 4314
		f 3 6855 7076 -7076
		mu 0 3 4294 4295 4315
		f 3 6856 7077 -7077
		mu 0 3 4295 4296 4316
		f 3 6857 7078 -7078
		mu 0 3 4296 4297 4317
		f 3 6858 7079 -7079
		mu 0 3 4297 4298 4318
		f 3 6859 7080 -7080
		mu 0 3 4298 4299 4319
		f 3 6860 7081 -7081
		mu 0 3 4299 4300 4320
		f 3 6861 7082 -7082
		mu 0 3 4300 4301 4321
		f 3 6862 7083 -7083
		mu 0 3 4301 4302 4322
		f 3 6863 7084 -7084
		mu 0 3 4302 4303 4323
		f 3 6864 7085 -7085
		mu 0 3 4303 4304 4324
		f 3 6865 7086 -7086
		mu 0 3 4304 4305 4325
		f 3 6866 7087 -7087
		mu 0 3 4305 4306 4326
		f 3 6867 7088 -7088
		mu 0 3 4306 4307 4327
		f 3 6868 7089 -7089
		mu 0 3 4307 4308 4328
		f 3 6869 7070 -7090
		mu 0 3 4308 4309 4329;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vcs" 2;
createNode transform -n "controls_grp" -p "clippy_grp";
	rename -uid "169FCC5D-44DC-1E36-2981-D7A8A453094D";
createNode transform -n "root_grp" -p "controls_grp";
	rename -uid "F881895F-4341-18D8-2B72-A79DABF1AAAB";
createNode transform -n "root_ctrl" -p "root_grp";
	rename -uid "C594E253-41C5-8C7C-E225-82BC88E1D72A";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "root_ctrlShape" -p "root_ctrl";
	rename -uid "026A3336-4906-F00E-82A9-7FB65CDC493D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.272086950023695 9.3548571457745191e-16 -15.277641116259382
		-4.2281503223340444e-15 1.4750153071650237e-15 -24.088828030938981
		-21.272086950023677 9.3548571457745309e-16 -15.277641116259394
		-30.083273864703148 -3.670539451490915e-16 5.9944458337644297
		-2.6335288661291347 -1.6695936048756332e-15 27.266532783788247
		-9.8606860054330488e-15 -2.2091231974632029e-15 36.077719698467874
		2.6335288661291276 -1.6695936048756338e-15 27.266532783788254
		30.083273864703148 -3.6705394514909091e-16 5.9944458337644635
		21.272086950023695 9.3548571457745191e-16 -15.277641116259382
		-4.2281503223340444e-15 1.4750153071650237e-15 -24.088828030938981
		-21.272086950023677 9.3548571457745309e-16 -15.277641116259394
		;
createNode transform -n "base_grp" -p "root_ctrl";
	rename -uid "082703A7-4904-559C-A42F-D5984776DBDF";
	setAttr ".t" -type "double3" -0.20127136803517293 7.6878202333654393 0 ;
createNode transform -n "base_ctrl" -p "base_grp";
	rename -uid "F5E0A378-4CB6-9609-3A2E-F48E7BA72572";
createNode nurbsCurve -n "base_ctrlShape" -p "base_ctrl";
	rename -uid "9C1699C8-425E-7590-61C1-01A3F982F9D6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-22.599133540309925 29.86014691045628 -5.8778265613917418
		-22.599133540309925 29.86014691045628 5.8778265613917418
		22.599133540309925 29.86014691045628 5.8778265613917418
		22.599133540309925 29.86014691045628 -5.8778265613917418
		-22.599133540309925 29.86014691045628 -5.8778265613917418
		-16.980025205205745 -2.7117402342431873 -5.8778265613917418
		-16.980025205205745 -2.7117402342431873 5.8778265613917418
		16.980025205205745 -2.7117402342431873 5.8778265613917418
		22.599133540309925 29.86014691045628 5.8778265613917418
		-22.599133540309925 29.86014691045628 5.8778265613917418
		-16.980025205205745 -2.7117402342431873 5.8778265613917418
		-16.980025205205745 -2.7117402342431873 -5.8778265613917418
		16.980025205205745 -2.7117402342431873 -5.8778265613917418
		22.599133540309925 29.86014691045628 -5.8778265613917418
		22.599133540309925 29.86014691045628 5.8778265613917418
		16.980025205205745 -2.7117402342431873 5.8778265613917418
		16.980025205205745 -2.7117402342431873 -5.8778265613917418
		;
createNode transform -n "mid_grp" -p "base_ctrl";
	rename -uid "EFF15246-494A-CA22-1574-35A7B081FB08";
	setAttr ".t" -type "double3" 0.055438725122308241 30.351700050834747 0 ;
createNode transform -n "mid_ctrl" -p "mid_grp";
	rename -uid "6BD2FFFC-4609-3ACB-F746-8BB6319C7469";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "mid_ctrlShape" -p "mid_ctrl";
	rename -uid "107AB9E2-445E-EC16-BB3D-DCB4C99795AE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-22.440536973141715 48.357244763945154 -5.9329265808175142
		-22.440536973141715 48.357244763945154 5.9329265808175142
		22.440536973141715 48.357244763945154 5.9329265808175142
		22.440536973141715 48.357244763945154 -5.9329265808175142
		-22.440536973141715 48.357244763945154 -5.9329265808175142
		-22.440536973141715 -1.0539207761385274 -5.9329265808175142
		-22.440536973141715 -1.0539207761385274 5.9329265808175142
		22.440536973141715 -1.0539207761385274 5.9329265808175142
		22.440536973141715 48.357244763945154 5.9329265808175142
		-22.440536973141715 48.357244763945154 5.9329265808175142
		-22.440536973141715 -1.0539207761385274 5.9329265808175142
		-22.440536973141715 -1.0539207761385274 -5.9329265808175142
		22.440536973141715 -1.0539207761385274 -5.9329265808175142
		22.440536973141715 48.357244763945154 -5.9329265808175142
		22.440536973141715 48.357244763945154 5.9329265808175142
		22.440536973141715 -1.0539207761385274 5.9329265808175142
		22.440536973141715 -1.0539207761385274 -5.9329265808175142
		;
createNode transform -n "top_grp" -p "mid_ctrl";
	rename -uid "8942F778-4A6A-561A-12EA-4E90E28EF15F";
	setAttr ".t" -type "double3" -1.8999976068735123 48.237523295076649 0 ;
createNode transform -n "top_ctrl" -p "top_grp";
	rename -uid "FCBAA438-4B9B-B617-F8DA-B78DE44C9F0A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode nurbsCurve -n "top_ctrlShape" -p "top_ctrl";
	rename -uid "67036D88-440B-1414-36B0-FFB1D6DECD75";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-12.217554363320675 35.870662561989874 -3.8017705490115676
		-12.217554363320675 35.870662561989874 3.8017705490115676
		12.217554363320675 35.870662561989874 3.8017705490115676
		12.217554363320675 35.870662561989874 -3.8017705490115676
		-12.217554363320675 35.870662561989874 -3.8017705490115676
		-20.370805047448695 0.755078174506151 -6.1099884860872793
		-20.370805047448695 0.755078174506151 6.1099884860872793
		24.43510777034658 0.755078174506151 6.1099884860872793
		12.217554363320675 35.870662561989874 3.8017705490115676
		-12.217554363320675 35.870662561989874 3.8017705490115676
		-20.370805047448695 0.755078174506151 6.1099884860872793
		-20.370805047448695 0.755078174506151 -6.1099884860872793
		24.43510777034658 0.755078174506151 -6.1099884860872793
		12.217554363320675 35.870662561989874 -3.8017705490115676
		12.217554363320675 35.870662561989874 3.8017705490115676
		24.43510777034658 0.755078174506151 6.1099884860872793
		24.43510777034658 0.755078174506151 -6.1099884860872793
		;
createNode transform -n "L_brow_grp" -p "top_ctrl";
	rename -uid "8FD7CDE4-48B1-7846-7447-319AF5784A41";
	setAttr ".t" -type "double3" 13.289844036102295 22.043810607734883 7.7682349095608583 ;
createNode transform -n "L_brow_ctrl" -p "L_brow_grp";
	rename -uid "9E0200BE-420B-7F87-BE7A-3B94EE0E8B8E";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode nurbsCurve -n "L_brow_ctrlShape" -p "L_brow_ctrl";
	rename -uid "11801888-4C58-B82D-97FD-D88271122818";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-5.0274824555224216 1.6682416373488496 -1.6682416373488496
		-5.0274824555224216 1.6682416373488496 1.6682416373488496
		5.0274824555224216 1.6682416373488496 1.6682416373488496
		5.0274824555224216 1.6682416373488496 -1.6682416373488496
		-5.0274824555224216 1.6682416373488496 -1.6682416373488496
		-5.0274824555224216 -1.6682416373488496 -1.6682416373488496
		-5.0274824555224216 -1.6682416373488496 1.6682416373488496
		5.0274824555224216 -1.6682416373488496 1.6682416373488496
		5.0274824555224216 1.6682416373488496 1.6682416373488496
		-5.0274824555224216 1.6682416373488496 1.6682416373488496
		-5.0274824555224216 -1.6682416373488496 1.6682416373488496
		-5.0274824555224216 -1.6682416373488496 -1.6682416373488496
		5.0274824555224216 -1.6682416373488496 -1.6682416373488496
		5.0274824555224216 1.6682416373488496 -1.6682416373488496
		5.0274824555224216 1.6682416373488496 1.6682416373488496
		5.0274824555224216 -1.6682416373488496 1.6682416373488496
		5.0274824555224216 -1.6682416373488496 -1.6682416373488496
		;
createNode transform -n "L_inner_brow_grp" -p "L_brow_ctrl";
	rename -uid "A8E855A4-48E8-213E-6BFA-749464709FFB";
	setAttr ".t" -type "double3" -8.5650698655634603 -1.2818972249645526 0 ;
createNode transform -n "L_inner_brow_ctrl" -p "L_inner_brow_grp";
	rename -uid "1D1B0CA3-4715-B1B5-296D-19ADAA15AB9B";
createNode nurbsCurve -n "L_inner_brow_ctrlShape" -p "L_inner_brow_ctrl";
	rename -uid "C69D674F-4FF1-46CB-3EA6-828C3FD1D600";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		;
createNode transform -n "L_mid_brow_grp" -p "L_brow_ctrl";
	rename -uid "E09CFFC5-4207-3285-5710-0BB896BA4DA6";
	setAttr ".t" -type "double3" 0.44039130919066594 -0.23126008790993069 0 ;
createNode transform -n "L_mid_brow_ctrl" -p "L_mid_brow_grp";
	rename -uid "3D6F127D-487E-8810-4F04-7782B685146C";
createNode nurbsCurve -n "L_mid_brow_ctrlShape" -p "L_mid_brow_ctrl";
	rename -uid "DECD092F-44F0-0153-9361-55B55ED02290";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		;
createNode transform -n "L_outer_brow_grp" -p "L_brow_ctrl";
	rename -uid "789E46F7-41E9-A7DB-F67A-4B89E0CCA6DD";
	setAttr ".t" -type "double3" 7.5446995692744707 -4.1836569368298058 0 ;
createNode transform -n "L_outer_brow_ctrl" -p "L_outer_brow_grp";
	rename -uid "09FEF2B8-4FB0-C3AE-49CE-338C67F5E0DC";
createNode nurbsCurve -n "L_outer_brow_ctrlShape" -p "L_outer_brow_ctrl";
	rename -uid "8A188FB2-410B-5DE3-FFA3-B39F233AE320";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		;
createNode transform -n "R_brow_grp" -p "top_ctrl";
	rename -uid "1C173953-4295-446A-CA13-4EB488EA5A00";
	setAttr ".t" -type "double3" -13.289839267730713 22.043956420723163 7.76823 ;
createNode transform -n "R_brow_ctrl" -p "R_brow_grp";
	rename -uid "5ECA806A-467A-39EB-143E-629AA68C0022";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 -0.25345319952116085 0 ;
createNode nurbsCurve -n "R_brow_ctrlShape" -p "R_brow_ctrl";
	rename -uid "99793989-4AAA-7AA3-219E-09A3A91CF865";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-5.0274824555224216 1.6682416373488496 -1.6682416373488496
		-5.0274824555224216 1.6682416373488496 1.6682416373488496
		5.0274824555224216 1.6682416373488496 1.6682416373488496
		5.0274824555224216 1.6682416373488496 -1.6682416373488496
		-5.0274824555224216 1.6682416373488496 -1.6682416373488496
		-5.0274824555224216 -1.6682416373488496 -1.6682416373488496
		-5.0274824555224216 -1.6682416373488496 1.6682416373488496
		5.0274824555224216 -1.6682416373488496 1.6682416373488496
		5.0274824555224216 1.6682416373488496 1.6682416373488496
		-5.0274824555224216 1.6682416373488496 1.6682416373488496
		-5.0274824555224216 -1.6682416373488496 1.6682416373488496
		-5.0274824555224216 -1.6682416373488496 -1.6682416373488496
		5.0274824555224216 -1.6682416373488496 -1.6682416373488496
		5.0274824555224216 1.6682416373488496 -1.6682416373488496
		5.0274824555224216 1.6682416373488496 1.6682416373488496
		5.0274824555224216 -1.6682416373488496 1.6682416373488496
		5.0274824555224216 -1.6682416373488496 -1.6682416373488496
		;
createNode transform -n "R_mid_brow_grp" -p "R_brow_ctrl";
	rename -uid "EC118A18-4750-356F-98BB-1CAE229494B0";
	setAttr ".t" -type "double3" -0.44040000000000035 -0.23099999999999454 0 ;
createNode transform -n "R_mid_brow_ctrl" -p "R_mid_brow_grp";
	rename -uid "BA72A70B-4B98-A9BA-CB1A-87A167EB51B0";
createNode nurbsCurve -n "R_mid_brow_ctrlShape" -p "R_mid_brow_ctrl";
	rename -uid "59801959-4F2E-2A40-EE00-E1A2E302C359";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		;
createNode transform -n "R_inner_brow_grp" -p "R_brow_ctrl";
	rename -uid "F401A33A-4B3A-444C-F0CD-CCB93D9722C2";
	setAttr ".t" -type "double3" 8.565059999999999 -1.2819999999999965 0 ;
createNode transform -n "R_inner_brow_ctrl" -p "R_inner_brow_grp";
	rename -uid "9C635229-4443-ACDC-1565-C1BD1BE08965";
createNode nurbsCurve -n "R_inner_brow_ctrlShape" -p "R_inner_brow_ctrl";
	rename -uid "BAF6AF47-4E53-B1E8-4011-A18239A29C02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		;
createNode transform -n "R_outer_brow_grp" -p "R_brow_ctrl";
	rename -uid "1B970F04-4D65-E46C-AD7B-EBB237FC8DE2";
	setAttr ".t" -type "double3" -7.5446999999999989 -4.1839999999999975 0 ;
createNode transform -n "R_outer_brow_ctrl" -p "R_outer_brow_grp";
	rename -uid "B05B9BC1-4DDA-7B2D-85EA-DBA489C1AF4D";
createNode nurbsCurve -n "R_outer_brow_ctrlShape" -p "R_outer_brow_ctrl";
	rename -uid "2CB142A1-4E71-47E9-5A4B-A19C3DB74994";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 2.0405775912895505
		-0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 -2.0405775912895505
		0.88460702565199056 2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 2.0405775912895505
		0.88460702565199056 -2.6631624880411384 -2.0405775912895505
		;
createNode transform -n "R_shoulder_grp" -p "mid_ctrl";
	rename -uid "A035E9F1-4EEB-1870-036F-1BAABA049E7F";
	setAttr ".t" -type "double3" -11.241748228669167 10.811553934549814 0 ;
createNode transform -n "R_shoulder_ctrl" -p "R_shoulder_grp";
	rename -uid "EC47F20C-427A-A0F3-3F81-F8B2B136682F";
createNode nurbsCurve -n "R_shoulder_ctrlShape" -p "R_shoulder_ctrl";
	rename -uid "95378FD6-4E8C-591D-D1F0-30BF66571CC2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		-4.8496605944024713 8.6050438728914624e-32 -1.4053103113293773e-15
		-3.4292278927551694 -2.0997964812047206e-16 3.4292278927551663
		-1.4612973836435637e-15 -2.96956066194302e-16 4.8496605944024722
		3.4292278927551645 -2.0997964812047216e-16 3.4292278927551676
		4.8496605944024713 -1.5949568243539278e-31 2.6047621656536381e-15
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		;
createNode transform -n "R_elbow_grp" -p "R_shoulder_ctrl";
	rename -uid "FB62A15B-46E0-FA9B-CACF-F59939A30033";
	setAttr ".t" -type "double3" 0 12.664718627929688 0 ;
createNode transform -n "R_elbow_ctrl" -p "R_elbow_grp";
	rename -uid "5FF3E13D-4D05-AF90-6CC4-BB82DF250771";
createNode nurbsCurve -n "R_elbow_ctrlShape" -p "R_elbow_ctrl";
	rename -uid "C1B8ECF9-43B5-1176-A451-CB88061C3F7A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		-4.8496605944024713 8.6050438728914624e-32 -1.4053103113293773e-15
		-3.4292278927551694 -2.0997964812047206e-16 3.4292278927551663
		-1.4612973836435637e-15 -2.96956066194302e-16 4.8496605944024722
		3.4292278927551645 -2.0997964812047216e-16 3.4292278927551676
		4.8496605944024713 -1.5949568243539278e-31 2.6047621656536381e-15
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		;
createNode transform -n "R_wrist_grp" -p "R_elbow_ctrl";
	rename -uid "04A0CC6F-471B-85A1-1A10-EB948A47EA99";
	setAttr ".t" -type "double3" 0 9.543731689453125 0 ;
createNode transform -n "R_wrist_ctrl" -p "R_wrist_grp";
	rename -uid "190866AF-4E00-B832-1238-81A5968B7943";
createNode nurbsCurve -n "R_wrist_ctrlShape" -p "R_wrist_ctrl";
	rename -uid "17DCC32C-438B-DCD4-B3F2-A58DFB43EA18";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		-4.8496605944024713 8.6050438728914624e-32 -1.4053103113293773e-15
		-3.4292278927551694 -2.0997964812047206e-16 3.4292278927551663
		-1.4612973836435637e-15 -2.96956066194302e-16 4.8496605944024722
		3.4292278927551645 -2.0997964812047216e-16 3.4292278927551676
		4.8496605944024713 -1.5949568243539278e-31 2.6047621656536381e-15
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		;
createNode transform -n "L_shoulder_grp" -p "base_ctrl";
	rename -uid "B3B71B80-44CC-68AE-1695-3F9080899116";
	setAttr ".t" -type "double3" 15.097193075188493 16.050653658846475 0 ;
createNode transform -n "L_shoulder_ctrl" -p "L_shoulder_grp";
	rename -uid "979B801E-4BBE-B6E6-F5AA-A8802D52F82F";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode nurbsCurve -n "L_shoulder_ctrlShape" -p "L_shoulder_ctrl";
	rename -uid "F702C867-47D2-C202-B3AC-DCB81C967E05";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		-4.8496605944024713 8.6050438728914624e-32 -1.4053103113293773e-15
		-3.4292278927551694 -2.0997964812047206e-16 3.4292278927551663
		-1.4612973836435637e-15 -2.96956066194302e-16 4.8496605944024722
		3.4292278927551645 -2.0997964812047216e-16 3.4292278927551676
		4.8496605944024713 -1.5949568243539278e-31 2.6047621656536381e-15
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		;
createNode transform -n "L_elbow_grp" -p "L_shoulder_ctrl";
	rename -uid "B6FDC7FB-4299-D44E-E1C6-2EBF07133FA4";
	setAttr ".t" -type "double3" 0 19.907278060913086 0 ;
createNode transform -n "L_elbow_ctrl" -p "L_elbow_grp";
	rename -uid "B8F21821-4868-A9F5-4D3B-BBBE8D2E974B";
createNode nurbsCurve -n "L_elbow_ctrlShape" -p "L_elbow_ctrl";
	rename -uid "1BD3AC17-4A3A-2A4F-8BB5-B290D862ED39";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		-4.8496605944024713 8.6050438728914624e-32 -1.4053103113293773e-15
		-3.4292278927551694 -2.0997964812047206e-16 3.4292278927551663
		-1.4612973836435637e-15 -2.96956066194302e-16 4.8496605944024722
		3.4292278927551645 -2.0997964812047216e-16 3.4292278927551676
		4.8496605944024713 -1.5949568243539278e-31 2.6047621656536381e-15
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		;
createNode transform -n "L_wrist_grp" -p "L_elbow_ctrl";
	rename -uid "B958B90C-4AD5-9BB3-DF68-23939D99D2C1";
	setAttr ".t" -type "double3" 0 21.111167907714844 0 ;
createNode transform -n "L_wrist_ctrl" -p "L_wrist_grp";
	rename -uid "24AB8CC9-46CD-E8BF-BB8C-DAB0D69B2F48";
createNode nurbsCurve -n "L_wrist_ctrlShape" -p "L_wrist_ctrl";
	rename -uid "82ECA1E4-4EF3-43D9-F9ED-2C9965511562";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		-4.8496605944024713 8.6050438728914624e-32 -1.4053103113293773e-15
		-3.4292278927551694 -2.0997964812047206e-16 3.4292278927551663
		-1.4612973836435637e-15 -2.96956066194302e-16 4.8496605944024722
		3.4292278927551645 -2.0997964812047216e-16 3.4292278927551676
		4.8496605944024713 -1.5949568243539278e-31 2.6047621656536381e-15
		3.429227892755172 2.0997964812047201e-16 -3.4292278927551645
		-5.5328828623808522e-16 2.9695606619430195e-16 -4.8496605944024713
		-3.4292278927551667 2.0997964812047214e-16 -3.4292278927551667
		;
createNode transform -n "eyes_grp" -p "root_ctrl";
	rename -uid "8EC2E0FE-48BD-44FA-CADB-A0A6D65B40ED";
createNode transform -n "eyes_ctrl" -p "eyes_grp";
	rename -uid "98B86366-4504-E654-C033-DD9F15C44610";
	addAttr -ci true -sn "Follow_Head" -ln "Follow_Head" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Eye_spacing" -ln "Eye_spacing" -min -1 -max 1 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".rp" -type "double3" -1.0658141036401503e-14 -2.042810365310288e-14 105.94301259877702 ;
	setAttr ".sp" -type "double3" -1.0658141036401503e-14 -2.042810365310288e-14 105.94301259877702 ;
	setAttr -k on ".Follow_Head";
	setAttr -k on ".Eye_spacing";
createNode nurbsCurve -n "eyes_ctrlShape" -p "eyes_ctrl";
	rename -uid "FED81453-48E1-A58A-91DF-F5A540DAF3AF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 16 0 no 3
		21 -0.125 -0.0625 0 0.0625 0.125 0.1875 0.25 0.3125 0.375 0.4375 0.5 0.5625
		 0.625 0.68749999999999989 0.75 0.8125 0.875 0.9375 1 1.0625 1.125
		19
		23.026360258648683 -9.7490436291008624 112.11290723471005
		24.996593970927929 -5.6345714782876047e-15 112.64082976681581
		23.026360258648698 9.7490436291008873 112.11290723471005
		17.672955081410546 14.627589832793804 110.67846664071251
		9.5370088306450942 11.750030090739637 108.49844641315688
		-0.0015870012403562115 8.7891698634073094 105.94258736307629
		-9.541086707270992 11.750639118510986 103.38648612064847
		-17.675746575324109 14.62738602198249 101.20681057830173
		-23.031458450461695 9.7491921132441366 99.771751906464843
		-24.99659397092795 2.0026592896502197e-15 99.245195430738235
		-23.031458450461695 -9.7491921132441526 99.771751906464843
		-17.67574657532408 -14.627386021982492 101.2068105783018
		-9.541086707270992 -11.750639118510994 103.38648612064847
		-0.0015870012403562115 -8.7891698634073485 105.94258736307629
		9.537008830645064 -11.750030090739649 108.49844641315688
		17.67295508141056 -14.627589832793845 110.67846664071251
		23.026360258648683 -9.7490436291008624 112.11290723471005
		24.996593970927929 -5.6345714782876047e-15 112.64082976681581
		23.026360258648698 9.7490436291008873 112.11290723471005
		;
createNode transform -n "L_eye_ctrl" -p "eyes_ctrl";
	rename -uid "40373A97-4D03-51EF-C4BE-F1B3C06692E5";
	addAttr -ci true -sn "Squash_Stretch" -ln "Squash_Stretch" -min -1 -max 1 -at "double";
	addAttr -ci true -sn "Upper_lid_Rot_X" -ln "Upper_lid_Rot_X" -at "double";
	addAttr -ci true -sn "Upper_Lid_Rot_Z" -ln "Upper_Lid_Rot_Z" -at "double";
	addAttr -ci true -sn "Lower_Lid_Rot_X" -ln "Lower_Lid_Rot_X" -at "double";
	addAttr -ci true -sn "Lower_Lid_Rot_Z" -ln "Lower_Lid_Rot_Z" -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" 12.806593436185137 0 109.37452896779655 ;
	setAttr ".sp" -type "double3" 12.806593436185137 0 109.37452896779655 ;
	setAttr -k on ".Squash_Stretch";
	setAttr -k on ".Upper_lid_Rot_X";
	setAttr -k on ".Upper_Lid_Rot_Z";
	setAttr -k on ".Lower_Lid_Rot_X";
	setAttr -k on ".Lower_Lid_Rot_Z";
createNode nurbsCurve -n "L_eye_ctrlShape" -p "L_eye_ctrl";
	rename -uid "D31D4F8D-435B-2B7E-F6F8-61A97415AFBB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		19.832353118337991 -7.2736016482184134 111.25707560084454
		22.742518064659837 1.173558222602675e-15 112.03685194805283
		19.832353118337988 7.2736016482184054 111.25707560084454
		12.806593436185125 10.28642609820977 109.37452896779654
		5.7808337540322396 7.273601648218408 107.49198233474864
		2.8706688077104379 3.0995009344996955e-15 106.71220598754027
		5.7808337540322396 -7.2736016482184027 107.49198233474864
		12.806593436185109 -10.28642609820977 109.37452896779654
		19.832353118337991 -7.2736016482184134 111.25707560084454
		22.742518064659837 1.173558222602675e-15 112.03685194805283
		19.832353118337988 7.2736016482184054 111.25707560084454
		;
createNode transform -n "R_eye_ctrl" -p "eyes_ctrl";
	rename -uid "F0B17020-4255-5780-E0DF-BFB592BEF1E5";
	addAttr -ci true -sn "Squash_Stretch" -ln "Squash_Stretch" -min -1 -max 1 -at "double";
	addAttr -ci true -sn "Upper_lid_Rot_X" -ln "Upper_lid_Rot_X" -at "double";
	addAttr -ci true -sn "Upper_Lid_Rot_Z" -ln "Upper_Lid_Rot_Z" -at "double";
	addAttr -ci true -sn "Lower_Lid_Rot_X" -ln "Lower_Lid_Rot_X" -at "double";
	addAttr -ci true -sn "Lower_Lid_Rot_Z" -ln "Lower_Lid_Rot_Z" -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -12.810176982007555 0 102.5105360215484 ;
	setAttr ".sp" -type "double3" -12.810176982007555 0 102.5105360215484 ;
	setAttr -k on ".Squash_Stretch";
	setAttr -k on ".Upper_lid_Rot_X";
	setAttr -k on ".Upper_Lid_Rot_Z";
	setAttr -k on ".Lower_Lid_Rot_X";
	setAttr -k on ".Lower_Lid_Rot_Z";
createNode nurbsCurve -n "R_eye_ctrlShape" -p "R_eye_ctrl";
	rename -uid "84A38276-48D7-D78E-89D9-B8A4FFDCA43B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.784417299854649 -7.2736016482184134 104.3930826545964
		-2.8742523535328619 1.173558222602675e-15 105.17285900180471
		-5.784417299854649 7.2736016482184054 104.3930826545964
		-12.810176982007546 10.28642609820977 102.51053602154836
		-19.835936664160506 7.273601648218408 100.62798938850045
		-22.746101610482249 3.0995009344996955e-15 99.848213041292084
		-19.835936664160506 -7.2736016482184027 100.62798938850045
		-12.810176982007546 -10.28642609820977 102.51053602154836
		-5.784417299854649 -7.2736016482184134 104.3930826545964
		-2.8742523535328619 1.173558222602675e-15 105.17285900180471
		-5.784417299854649 7.2736016482184054 104.3930826545964
		;
createNode parentConstraint -n "eyes_grp_parentConstraint1" -p "eyes_grp";
	rename -uid "DD58BD70-4611-C2A6-6888-46A489833F19";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "top_ctrlW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "root_ctrlW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0.22130274727232546 3.6750133054887897 0 ;
	setAttr ".tg[1].tot" -type "double3" -1.8245275025140515 89.952056884765625 0 ;
	setAttr ".rst" -type "double3" -1.8245275025140515 89.952056884765625 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "67D8D82E-4F54-0114-1026-38A1A5F47B13";
	setAttr -s 11 ".lnk";
	setAttr -s 11 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9A52F2EA-456B-2C8E-EA90-6DB39B59A1E6";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "991B1D2B-4004-EAE5-ABF4-4AA5171BA7AF";
createNode displayLayerManager -n "layerManager";
	rename -uid "B2F982E9-4975-81AB-CAC2-51B71C4FC4C1";
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "94F708AF-4D37-AE98-F0D6-018BE48DB352";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "371B5E9A-4A50-45B0-7F3F-15A65D57970A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3224753F-4B0F-AB3E-9B2C-DEB564275EC4";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "DE240920-4526-890A-AF5A-6EB63B53CA4C";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "4.0.4.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "50E4B931-4A2A-AECB-0C9C-C18EAED712FA";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "88D7DD52-4F2C-75F7-454D-BD8504852765";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "BD5DC5B6-46C0-24A7-9418-96A36A73CD66";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode displayLayer -n "clippy_proxy_layer";
	rename -uid "32811088-4DD1-B75F-B21F-B781B4356468";
	setAttr ".dt" 1;
	setAttr ".do" 1;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A71C2B8F-48C4-EC57-34A2-A8AFE61DB3E7";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 150 -ast 0 -aet 150 ";
	setAttr ".st" 6;
createNode shadingEngine -n "phongE1SG";
	rename -uid "A6901173-4E13-FBE2-5C95-23B7D15BEB08";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "37251CCD-4209-7D8F-C448-86A52FE48C6C";
createNode shadingEngine -n "phongE2SG";
	rename -uid "FC90D325-41CD-6868-6A38-51A77254E010";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "C0888BAA-49F1-9871-CA15-28BFCA6F25EB";
createNode shadingEngine -n "anisotropic1SG";
	rename -uid "F722CBC2-475E-1B62-2531-9DBE9279E2E7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "D4E3D6EF-4C76-A476-656D-D5B3545E64DB";
createNode shadingEngine -n "lambert2SG";
	rename -uid "A0028026-4CEB-4866-446B-50A94B3CDBF9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "DEDD2CCC-4F53-7FC7-7275-EC9634637740";
createNode shadingEngine -n "eye_black_matSG";
	rename -uid "22E01B6A-4ADA-E874-621F-E99FB0F595C7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "01672D1E-4C3A-907D-5219-72BC340348DA";
createNode phongE -n "Eyes";
	rename -uid "C7BF606F-4EC0-8816-C27F-2FABA6FA4C35";
createNode shadingEngine -n "phongE3SG";
	rename -uid "9D6CE050-4FD7-8B2B-EC9B-D3AB358D408A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "1F7A0CEB-47B4-429F-18E7-0A94D792F4BD";
createNode file -n "file1";
	rename -uid "2E4C8F0A-48A0-830A-184B-579E5A763E9B";
	setAttr ".ftn" -type "string" "C:/misc/misc/Floyd/ClippyGPT/clippy_color_map.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "7223EFEB-4137-8EE1-1CDE-4DA348D7F0D9";
createNode file -n "file2";
	rename -uid "483098EB-4AFE-75AF-84CE-539F4C8FF838";
	setAttr ".ftn" -type "string" "C:/misc/misc/Floyd/ClippyGPT/clippy_roughness_map.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "DA5EDEBD-4F64-C56A-CE9E-4F9B118B4E78";
createNode displayLayer -n "joints_layer";
	rename -uid "6EFFEED4-41C2-39D3-6ED8-FABECE42355F";
	setAttr ".do" 2;
createNode displayLayer -n "mesh_layer";
	rename -uid "DAC0C495-4AB5-8AE2-6FA7-46B68C4E188B";
	setAttr ".do" 3;
createNode skinCluster -n "skinCluster1";
	rename -uid "DF2C4BB1-498E-8702-573E-9ABF2630321E";
	setAttr -s 525 ".bw";
	setAttr ".bw[27]" 1;
	setAttr ".bw[29]" 1;
	setAttr ".bw[31]" 1;
	setAttr ".bw[51]" 1;
	setAttr ".bw[52]" 1;
	setAttr ".bw[53]" 1;
	setAttr ".bw[54]" 1;
	setAttr ".bw[55]" 1;
	setAttr ".bw[56]" 1;
	setAttr ".bw[57]" 1;
	setAttr ".bw[58]" 1;
	setAttr ".bw[59]" 1;
	setAttr ".bw[60]" 1;
	setAttr ".bw[61]" 1;
	setAttr ".bw[146]" 1;
	setAttr ".bw[148]" 1;
	setAttr ".bw[149]" 1;
	setAttr ".bw[150]" 1;
	setAttr ".bw[151]" 1;
	setAttr ".bw[152]" 1;
	setAttr ".bw[154]" 1;
	setAttr ".bw[155]" 1;
	setAttr ".bw[156]" 1;
	setAttr ".bw[157]" 1;
	setAttr ".bw[158]" 1;
	setAttr ".bw[159]" 1;
	setAttr ".bw[161]" 1;
	setAttr ".bw[162]" 1;
	setAttr ".bw[163]" 1;
	setAttr ".bw[164]" 1;
	setAttr ".bw[165]" 1;
	setAttr ".bw[166]" 1;
	setAttr ".bw[168]" 1;
	setAttr ".bw[169]" 1;
	setAttr ".bw[170]" 1;
	setAttr ".bw[171]" 1;
	setAttr ".bw[172]" 1;
	setAttr ".bw[174]" 1;
	setAttr ".bw[175]" 1;
	setAttr ".bw[177]" 1;
	setAttr ".bw[178]" 1;
	setAttr ".bw[179]" 1;
	setAttr ".bw[180]" 1;
	setAttr ".bw[221]" 1;
	setAttr ".bw[227]" 1;
	setAttr ".bw[229]" 1;
	setAttr ".bw[231]" 1;
	setAttr ".bw[233]" 1;
	setAttr ".bw[235]" 1;
	setAttr ".bw[237]" 1;
	setAttr ".bw[239]" 1;
	setAttr ".bw[241]" 1;
	setAttr ".bw[245]" 1;
	setAttr ".bw[247]" 1;
	setAttr ".bw[251]" 1;
	setAttr ".bw[255]" 1;
	setAttr ".bw[257]" 1;
	setAttr ".bw[258]" 1;
	setAttr ".bw[259]" 1;
	setAttr ".bw[260]" 1;
	setAttr ".bw[261]" 1;
	setAttr ".bw[262]" 1;
	setAttr ".bw[264]" 1;
	setAttr ".bw[265]" 1;
	setAttr ".bw[266]" 1;
	setAttr ".bw[267]" 1;
	setAttr ".bw[268]" 1;
	setAttr ".bw[269]" 1;
	setAttr ".bw[270]" 1;
	setAttr ".bw[271]" 1;
	setAttr ".bw[273]" 1;
	setAttr ".bw[275]" 1;
	setAttr ".bw[279]" 1;
	setAttr ".bw[281]" 1;
	setAttr ".bw[282]" 1;
	setAttr ".bw[283]" 1;
	setAttr ".bw[285]" 1;
	setAttr ".bw[286]" 1;
	setAttr ".bw[287]" 1;
	setAttr ".bw[288]" 1;
	setAttr ".bw[289]" 1;
	setAttr ".bw[291]" 1;
	setAttr ".bw[292]" 1;
	setAttr ".bw[293]" 1;
	setAttr ".bw[294]" 1;
	setAttr ".bw[295]" 1;
	setAttr ".bw[296]" 1;
	setAttr ".bw[297]" 1;
	setAttr ".bw[298]" 1;
	setAttr ".bw[299]" 1;
	setAttr ".bw[300]" 1;
	setAttr ".bw[301]" 1;
	setAttr ".bw[304]" 1;
	setAttr ".bw[305]" 1;
	setAttr ".bw[306]" 1;
	setAttr ".bw[307]" 1;
	setAttr ".bw[308]" 1;
	setAttr ".bw[309]" 1;
	setAttr ".bw[310]" 1;
	setAttr ".bw[311]" 1;
	setAttr ".bw[312]" 1;
	setAttr ".bw[313]" 1;
	setAttr ".bw[314]" 1;
	setAttr ".bw[315]" 1;
	setAttr ".bw[316]" 1;
	setAttr ".bw[317]" 1;
	setAttr ".bw[318]" 1;
	setAttr ".bw[319]" 1;
	setAttr ".bw[320]" 1;
	setAttr ".bw[321]" 1;
	setAttr ".bw[323]" 1;
	setAttr ".bw[324]" 1;
	setAttr ".bw[325]" 1;
	setAttr ".bw[401]" 1;
	setAttr ".bw[402]" 1;
	setAttr ".bw[403]" 1;
	setAttr ".bw[404]" 1;
	setAttr ".bw[405]" 1;
	setAttr ".bw[406]" 1;
	setAttr ".bw[407]" 1;
	setAttr ".bw[408]" 1;
	setAttr ".bw[409]" 1;
	setAttr ".bw[411]" 1;
	setAttr ".bw[413]" 1;
	setAttr ".bw[414]" 1;
	setAttr ".bw[416]" 1;
	setAttr ".bw[418]" 1;
	setAttr ".bw[420]" 1;
	setAttr ".bw[421]" 1;
	setAttr ".bw[422]" 1;
	setAttr ".bw[423]" 1;
	setAttr ".bw[424]" 1;
	setAttr ".bw[426]" 1;
	setAttr ".bw[428]" 1;
	setAttr ".bw[429]" 1;
	setAttr ".bw[430]" 1;
	setAttr ".bw[431]" 1;
	setAttr ".bw[433]" 1;
	setAttr ".bw[434]" 1;
	setAttr ".bw[435]" 1;
	setAttr ".bw[436]" 1;
	setAttr ".bw[438]" 1;
	setAttr ".bw[439]" 1;
	setAttr ".bw[440]" 1;
	setAttr ".bw[441]" 1;
	setAttr ".bw[442]" 1;
	setAttr ".bw[443]" 1;
	setAttr ".bw[444]" 1;
	setAttr ".bw[445]" 1;
	setAttr ".bw[446]" 1;
	setAttr ".bw[448]" 1;
	setAttr ".bw[450]" 1;
	setAttr ".bw[452]" 1;
	setAttr ".bw[453]" 1;
	setAttr ".bw[454]" 1;
	setAttr ".bw[455]" 1;
	setAttr ".bw[457]" 1;
	setAttr ".bw[459]" 1;
	setAttr ".bw[462]" 1;
	setAttr ".bw[463]" 1;
	setAttr ".bw[464]" 1;
	setAttr ".bw[466]" 1;
	setAttr ".bw[468]" 1;
	setAttr ".bw[469]" 1;
	setAttr ".bw[470]" 1;
	setAttr ".bw[472]" 1;
	setAttr ".bw[473]" 1;
	setAttr ".bw[475]" 1;
	setAttr ".bw[476]" 1;
	setAttr ".bw[477]" 1;
	setAttr ".bw[478]" 1;
	setAttr ".bw[480]" 1;
	setAttr ".bw[482]" 1;
	setAttr ".bw[483]" 1;
	setAttr ".bw[484]" 1;
	setAttr ".bw[486]" 1;
	setAttr ".bw[488]" 1;
	setAttr ".bw[489]" 1;
	setAttr ".bw[490]" 1;
	setAttr ".bw[491]" 1;
	setAttr ".bw[492]" 1;
	setAttr ".bw[944]" -nan;
	setAttr ".bw[974]" -nan;
	setAttr ".bw[981]" -nan;
	setAttr ".bw[1011]" -nan;
	setAttr ".bw[1019]" -nan;
	setAttr ".bw[1054]" -nan;
	setAttr ".bw[1091]" -nan;
	setAttr ".bw[1094]" -nan;
	setAttr ".bw[1129]" -nan;
	setAttr ".bw[1131]" -nan;
	setAttr ".bw[1159]" -nan;
	setAttr ".bw[1172]" 0.0071283169090747833;
	setAttr ".bw[1173]" 0.70175585274734065;
	setAttr ".bw[1174]" 0.05637793242931366;
	setAttr ".bw[1175]" 0.0034108646077661985;
	setAttr ".bw[1176]" 0.041979760294444932;
	setAttr ".bw[1177]" 0.19647558992113451;
	setAttr ".bw[1178]" 0.47750064453930341;
	setAttr ".bw[1179]" 0.051161140203475952;
	setAttr ".bw[1180]" 0.0068212226895291881;
	setAttr ".bw[1181]" 0.083960027114893074;
	setAttr ".bw[1182]" 0.38055696545279838;
	setAttr ".bw[1183]" 0.67449742555618286;
	setAttr ".bw[1184]" 0.32550257444381714;
	setAttr ".bw[1185]" 0.8177679181098938;
	setAttr ".bw[1186]" 0.1822320818901062;
	setAttr ".bw[1187]" 0.92055106163024902;
	setAttr ".bw[1188]" 0.079448938369750977;
	setAttr ".bw[1189]" 1;
	setAttr ".bw[1190]" 1;
	setAttr ".bw[1191]" 1;
	setAttr ".bw[1192]" 1;
	setAttr ".bw[1193]" 1;
	setAttr ".bw[1194]" 1;
	setAttr ".bw[1195]" 1;
	setAttr ".bw[1196]" 0.91533615067601204;
	setAttr ".bw[1197]" 0.061594724655151367;
	setAttr ".bw[1198]" 0.023069124668836594;
	setAttr ".bw[1199]" 0.6952960625431337;
	setAttr ".bw[1200]" 0.05637793242931366;
	setAttr ".bw[1201]" 0.003411844030270378;
	setAttr ".bw[1202]" 0.041978780871940749;
	setAttr ".bw[1203]" 0.20293538012534146;
	setAttr ".bw[1204]" 0.47609552055614673;
	setAttr ".bw[1205]" 0.051161140203475952;
	setAttr ".bw[1206]" 0.0068233962071201542;
	setAttr ".bw[1207]" 0.08395785359730211;
	setAttr ".bw[1208]" 0.381962089435955;
	setAttr ".bw[1209]" 0.67449742555618286;
	setAttr ".bw[1210]" 0.32550257444381714;
	setAttr ".bw[1211]" 0.8177679181098938;
	setAttr ".bw[1212]" 0.1822320818901062;
	setAttr ".bw[1213]" 0.92055106163024902;
	setAttr ".bw[1214]" 0.079448938369750977;
	setAttr ".bw[1215]" 1;
	setAttr ".bw[1216]" 1;
	setAttr ".bw[1217]" 1;
	setAttr ".bw[1218]" 1;
	setAttr ".bw[1219]" 1;
	setAttr ".bw[1220]" 1;
	setAttr ".bw[1221]" 1;
	setAttr ".bw[1222]" 0.90605691075325012;
	setAttr ".bw[1223]" 0.061594724655151367;
	setAttr ".bw[1224]" 0.032348364591598511;
	setAttr ".bw[1225]" 0.68800818834873045;
	setAttr ".bw[1226]" 0.05637793242931366;
	setAttr ".bw[1227]" 0.0034131126552575473;
	setAttr ".bw[1228]" 0.041977512246953577;
	setAttr ".bw[1229]" 0.21022325431974476;
	setAttr ".bw[1230]" 0.47292229304072719;
	setAttr ".bw[1231]" 0.051161140203475959;
	setAttr ".bw[1232]" 0.0068261951688857771;
	setAttr ".bw[1233]" 0.0839550546355365;
	setAttr ".bw[1234]" 0.38513531695137465;
	setAttr ".bw[1235]" 0.67449742555618286;
	setAttr ".bw[1236]" 0.32550257444381714;
	setAttr ".bw[1237]" 0.8177679181098938;
	setAttr ".bw[1238]" 0.1822320818901062;
	setAttr ".bw[1239]" 0.92055106163024902;
	setAttr ".bw[1240]" 0.079448938369750977;
	setAttr ".bw[1241]" 1;
	setAttr ".bw[1242]" 1;
	setAttr ".bw[1243]" 1;
	setAttr ".bw[1244]" 1;
	setAttr ".bw[1245]" 1;
	setAttr ".bw[1246]" 1;
	setAttr ".bw[1247]" 1;
	setAttr ".bw[1248]" 0.88850727304816246;
	setAttr ".bw[1249]" 0.061594724655151367;
	setAttr ".bw[1250]" 0.049898002296686172;
	setAttr ".bw[1251]" 0.67779241935723666;
	setAttr ".bw[1252]" 0.05637793242931366;
	setAttr ".bw[1253]" 0.003414408238670476;
	setAttr ".bw[1254]" 0.041976216663540664;
	setAttr ".bw[1255]" 0.22043902331123857;
	setAttr ".bw[1256]" 0.46768844244381602;
	setAttr ".bw[1257]" 0.051161140203475952;
	setAttr ".bw[1258]" 0.006828987418167053;
	setAttr ".bw[1259]" 0.083952262386255222;
	setAttr ".bw[1260]" 0.39036916754828588;
	setAttr ".bw[1261]" 0.67449742555618286;
	setAttr ".bw[1262]" 0.32550257444381714;
	setAttr ".bw[1263]" 0.8177679181098938;
	setAttr ".bw[1264]" 0.1822320818901062;
	setAttr ".bw[1265]" 0.92055106163024902;
	setAttr ".bw[1266]" 0.079448938369750977;
	setAttr ".bw[1267]" 1;
	setAttr ".bw[1268]" 1;
	setAttr ".bw[1269]" 1;
	setAttr ".bw[1270]" 1;
	setAttr ".bw[1271]" 1;
	setAttr ".bw[1272]" 1;
	setAttr ".bw[1273]" 1;
	setAttr ".bw[1274]" 0.87177892774343491;
	setAttr ".bw[1275]" 0.061594724655151367;
	setAttr ".bw[1276]" 0.066626347601413727;
	setAttr ".bw[1277]" 0.66700626989747924;
	setAttr ".bw[1278]" 0.05637793242931366;
	setAttr ".bw[1279]" 0.003415529568468802;
	setAttr ".bw[1280]" 0.041975095333742343;
	setAttr ".bw[1281]" 0.23122517277099602;
	setAttr ".bw[1282]" 0.46092838553725529;
	setAttr ".bw[1283]" 0.051161140203475952;
	setAttr ".bw[1284]" 0.0068313311526009253;
	setAttr ".bw[1285]" 0.083949918651821359;
	setAttr ".bw[1286]" 0.39712922445484655;
	setAttr ".bw[1287]" 0.67449742555618286;
	setAttr ".bw[1288]" 0.32550257444381714;
	setAttr ".bw[1289]" 0.8177679181098938;
	setAttr ".bw[1290]" 0.1822320818901062;
	setAttr ".bw[1291]" 0.92055106163024902;
	setAttr ".bw[1292]" 0.079448938369750977;
	setAttr ".bw[1293]" 1;
	setAttr ".bw[1294]" 1;
	setAttr ".bw[1295]" 1;
	setAttr ".bw[1296]" 1;
	setAttr ".bw[1297]" 1;
	setAttr ".bw[1298]" 1;
	setAttr ".bw[1299]" 1;
	setAttr ".bw[1300]" 0.85794240981340408;
	setAttr ".bw[1301]" 0.061594724655151367;
	setAttr ".bw[1302]" 0.08046286553144455;
	setAttr ".bw[1303]" 0.65755420646915963;
	setAttr ".bw[1304]" 0.05637793242931366;
	setAttr ".bw[1305]" 0.0034163763242621662;
	setAttr ".bw[1306]" 0.041974248577948972;
	setAttr ".bw[1307]" 0.24067723619931564;
	setAttr ".bw[1308]" 0.45400056508436959;
	setAttr ".bw[1309]" 0.051161140203475952;
	setAttr ".bw[1310]" 0.006833041855605267;
	setAttr ".bw[1311]" 0.083948207948817008;
	setAttr ".bw[1312]" 0.40405704490773225;
	setAttr ".bw[1313]" 0.67449742555618286;
	setAttr ".bw[1314]" 0.32550257444381714;
	setAttr ".bw[1315]" 0.8177679181098938;
	setAttr ".bw[1316]" 0.1822320818901062;
	setAttr ".bw[1317]" 0.92055106163024902;
	setAttr ".bw[1318]" 0.079448938369750977;
	setAttr ".bw[1319]" 1;
	setAttr ".bw[1320]" 1;
	setAttr ".bw[1321]" 1;
	setAttr ".bw[1322]" 1;
	setAttr ".bw[1323]" 1;
	setAttr ".bw[1324]" 1;
	setAttr ".bw[1325]" 1;
	setAttr ".bw[1326]" 0.84900958091020584;
	setAttr ".bw[1327]" 0.061594724655151367;
	setAttr ".bw[1328]" 0.089395694434642792;
	setAttr ".bw[1329]" 0.65128483260672276;
	setAttr ".bw[1330]" 0.05637793242931366;
	setAttr ".bw[1331]" 0.0034169320636262294;
	setAttr ".bw[1332]" 0.041973692838584903;
	setAttr ".bw[1333]" 0.24694661006175245;
	setAttr ".bw[1334]" 0.44946046609067275;
	setAttr ".bw[1335]" 0.051161140203475952;
	setAttr ".bw[1336]" 0.0068341269211734832;
	setAttr ".bw[1337]" 0.083947122883248793;
	setAttr ".bw[1338]" 0.40859714390142904;
	setAttr ".bw[1339]" 0.67449742555618286;
	setAttr ".bw[1340]" 0.32550257444381714;
	setAttr ".bw[1341]" 0.8177679181098938;
	setAttr ".bw[1342]" 0.1822320818901062;
	setAttr ".bw[1343]" 0.92055106163024902;
	setAttr ".bw[1344]" 0.079448938369750977;
	setAttr ".bw[1345]" 1;
	setAttr ".bw[1346]" 1;
	setAttr ".bw[1347]" 1;
	setAttr ".bw[1348]" 1;
	setAttr ".bw[1349]" 1;
	setAttr ".bw[1350]" 1;
	setAttr ".bw[1351]" 1;
	setAttr ".bw[1352]" 0.84691458940505981;
	setAttr ".bw[1353]" 0.061594724655151367;
	setAttr ".bw[1354]" 0.091490685939788818;
	setAttr ".bw[1355]" 0.64912548282673477;
	setAttr ".bw[1356]" 0.056377932429313667;
	setAttr ".bw[1357]" 0.0034172236658663049;
	setAttr ".bw[1358]" 0.041973401236344833;
	setAttr ".bw[1359]" 0.2491059598417405;
	setAttr ".bw[1360]" 0.44876190074116507;
	setAttr ".bw[1361]" 0.051161140203475952;
	setAttr ".bw[1362]" 0.0068346741850444526;
	setAttr ".bw[1363]" 0.083946575619377808;
	setAttr ".bw[1364]" 0.40929570925093672;
	setAttr ".bw[1365]" 0.022541344165802002;
	setAttr ".bw[1366]" 0.977458655834198;
	setAttr ".bw[1367]" 0.022541344165802002;
	setAttr ".bw[1368]" 0.977458655834198;
	setAttr ".bw[1369]" 0.022541344165802002;
	setAttr ".bw[1370]" 0.977458655834198;
	setAttr ".bw[1371]" 0.022541344165802002;
	setAttr ".bw[1372]" 0.977458655834198;
	setAttr ".bw[1373]" 0.022541344165802002;
	setAttr ".bw[1374]" 0.977458655834198;
	setAttr ".bw[1375]" 0.022541344165802002;
	setAttr ".bw[1376]" 0.977458655834198;
	setAttr ".bw[1377]" 0.022541344165802002;
	setAttr ".bw[1378]" 0.977458655834198;
	setAttr ".bw[1379]" 0.022541344165802002;
	setAttr ".bw[1380]" 0.977458655834198;
	setAttr ".bw[1381]" 0.022541344165802002;
	setAttr ".bw[1382]" 0.977458655834198;
	setAttr ".bw[1383]" 0.022541344165802002;
	setAttr ".bw[1384]" 0.977458655834198;
	setAttr ".bw[1385]" 0.022541344165802002;
	setAttr ".bw[1386]" 0.977458655834198;
	setAttr ".bw[1387]" 0.022541344165802002;
	setAttr ".bw[1388]" 0.977458655834198;
	setAttr ".bw[1389]" 0.022541344165802002;
	setAttr ".bw[1390]" 0.977458655834198;
	setAttr ".bw[1391]" 0.022541344165802002;
	setAttr ".bw[1392]" 0.977458655834198;
	setAttr ".bw[1393]" 0.022541344165802002;
	setAttr ".bw[1394]" 0.977458655834198;
	setAttr ".bw[1395]" 0.022541344165802002;
	setAttr ".bw[1396]" 0.977458655834198;
	setAttr ".bw[1397]" 0.022541344165802002;
	setAttr ".bw[1398]" 0.977458655834198;
	setAttr ".bw[1399]" 0.022541344165802002;
	setAttr ".bw[1400]" 0.977458655834198;
	setAttr ".bw[1401]" 0.022541344165802002;
	setAttr ".bw[1402]" 0.977458655834198;
	setAttr ".bw[1403]" 0.022541344165802002;
	setAttr ".bw[1404]" 0.977458655834198;
	setAttr ".bw[1405]" 0.064291000366210938;
	setAttr ".bw[1406]" 0.93570899963378906;
	setAttr ".bw[1407]" 0.064291000366210938;
	setAttr ".bw[1408]" 0.93570899963378906;
	setAttr ".bw[1409]" 0.064291000366210938;
	setAttr ".bw[1410]" 0.93570899963378906;
	setAttr ".bw[1411]" 0.064291000366210938;
	setAttr ".bw[1412]" 0.93570899963378906;
	setAttr ".bw[1413]" 0.064291000366210938;
	setAttr ".bw[1414]" 0.93570899963378906;
	setAttr ".bw[1415]" 0.064291000366210938;
	setAttr ".bw[1416]" 0.93570899963378906;
	setAttr ".bw[1417]" 0.064291000366210938;
	setAttr ".bw[1418]" 0.93570899963378906;
	setAttr ".bw[1419]" 0.064291000366210938;
	setAttr ".bw[1420]" 0.93570899963378906;
	setAttr ".bw[1421]" 0.064291000366210938;
	setAttr ".bw[1422]" 0.93570899963378906;
	setAttr ".bw[1423]" 0.064291000366210938;
	setAttr ".bw[1424]" 0.93570899963378906;
	setAttr ".bw[1425]" 0.064291000366210938;
	setAttr ".bw[1426]" 0.93570899963378906;
	setAttr ".bw[1427]" 0.064291000366210938;
	setAttr ".bw[1428]" 0.93570899963378906;
	setAttr ".bw[1429]" 0.064291000366210938;
	setAttr ".bw[1430]" 0.93570899963378906;
	setAttr ".bw[1431]" 0.064291000366210938;
	setAttr ".bw[1432]" 0.93570899963378906;
	setAttr ".bw[1433]" 0.064291000366210938;
	setAttr ".bw[1434]" 0.93570899963378906;
	setAttr ".bw[1435]" 0.064291000366210938;
	setAttr ".bw[1436]" 0.93570899963378906;
	setAttr ".bw[1437]" 0.064291000366210938;
	setAttr ".bw[1438]" 0.93570899963378906;
	setAttr ".bw[1439]" 0.064291000366210938;
	setAttr ".bw[1440]" 0.93570899963378906;
	setAttr ".bw[1441]" 0.064291000366210938;
	setAttr ".bw[1442]" 0.93570899963378906;
	setAttr ".bw[1443]" 0.064291000366210938;
	setAttr ".bw[1444]" 0.93570899963378906;
	setAttr ".bw[1445]" 0.14984226226806641;
	setAttr ".bw[1446]" 0.85015773773193359;
	setAttr ".bw[1447]" 0.14984226226806641;
	setAttr ".bw[1448]" 0.85015773773193359;
	setAttr ".bw[1449]" 0.14984226226806641;
	setAttr ".bw[1450]" 0.85015773773193359;
	setAttr ".bw[1451]" 0.14984226226806641;
	setAttr ".bw[1452]" 0.85015773773193359;
	setAttr ".bw[1453]" 0.14984226226806641;
	setAttr ".bw[1454]" 0.85015773773193359;
	setAttr ".bw[1455]" 0.14984226226806641;
	setAttr ".bw[1456]" 0.85015773773193359;
	setAttr ".bw[1457]" 0.14984226226806641;
	setAttr ".bw[1458]" 0.85015773773193359;
	setAttr ".bw[1459]" 0.14984226226806641;
	setAttr ".bw[1460]" 0.85015773773193359;
	setAttr ".bw[2774]" 1;
	setAttr ".bw[2778]" 1;
	setAttr ".bw[2782]" 1;
	setAttr ".bw[2783]" 1;
	setAttr ".bw[2784]" 1;
	setAttr ".bw[2786]" 1;
	setAttr ".bw[2789]" 1;
	setAttr ".bw[2791]" 1;
	setAttr ".bw[2792]" 1;
	setAttr ".bw[2794]" 1;
	setAttr ".bw[2797]" 1;
	setAttr ".bw[2798]" 1;
	setAttr ".bw[2801]" 1;
	setAttr ".bw[2802]" 1;
	setAttr ".bw[2803]" 1;
	setAttr ".bw[2804]" 1;
	setAttr ".bw[2805]" 1;
	setAttr ".bw[2807]" 1;
	setAttr ".bw[2809]" 1;
	setAttr ".bw[2810]" 1;
	setAttr ".bw[2811]" 1;
	setAttr ".bw[2812]" 1;
	setAttr ".bw[2814]" 1;
	setAttr ".bw[2815]" 1;
	setAttr ".bw[2817]" 1;
	setAttr ".bw[2818]" 1;
	setAttr ".bw[2820]" 1;
	setAttr ".bw[2822]" 1;
	setAttr ".bw[2823]" 1;
	setAttr ".bw[2824]" 1;
	setAttr ".bw[2825]" 1;
	setAttr ".bw[2826]" 1;
	setAttr ".bw[2827]" 1;
	setAttr ".bw[2829]" 1;
	setAttr ".bw[2831]" 1;
	setAttr ".bw[2832]" 1;
	setAttr ".bw[2833]" 1;
	setAttr ".bw[2834]" 1;
	setAttr ".bw[2835]" 1;
	setAttr ".bw[2836]" 1;
	setAttr ".bw[2837]" 1;
	setAttr ".bw[2838]" 1;
	setAttr ".bw[2839]" 1;
	setAttr ".bw[2841]" 1;
	setAttr -s 3532 ".wl";
	setAttr ".wl[0:249].w"
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 3.1173229217529297e-05 3 0.99996882677078247;
	setAttr ".wl[250:597].w"
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 2.9802322387695312e-07 3 0.99999970197677612
		2 2 2.8014183044433594e-06 3 0.99999719858169556
		2 2 3.1173229217529297e-05 3 0.99996882677078247
		2 2 0.00024384260177612305 3 0.99975615739822388
		2 2 0.0014182925224304199 3 0.99858170747756958
		2 2 0.006360471248626709 3 0.99363952875137329
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.006360471248626709 3 0.99363952875137329
		3 2 0.28966200351715088 19 0.00093976105563342571 20 0.7093982354272157
		2 2 0.56557592749595642 20 0.43442407250404358
		2 2 0.81856042146682739 20 0.18143957853317261
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		3 2 0.29006493091583252 19 0.0018783705309033394 20 0.70805669855326414
		2 2 0.566801518201828 20 0.433198481798172
		2 2 0.82089050114154816 20 0.17910949885845184
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		3 2 0.29232692718505859 19 0.0028148379642516375 20 0.70485823485068977
		2 2 0.572071373462677 20 0.427928626537323
		2 2 0.82968132197856903 20 0.17031867802143097
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		3 2 0.29584026336669922 19 0.00093516049673780799 20 0.70322457613656297
		2 2 0.58057209849357605 20 0.41942790150642395
		2 2 0.84534436464309692 20 0.15465563535690308
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.29986894130706787 20 0.70013105869293213
		2 2 0.59075501561164856 20 0.40924498438835144
		2 2 0.8658464103937149 20 0.1341535896062851
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.30501341819763184 20 0.69498658180236816
		2 2 0.60248184204101562 20 0.39751815795898438
		2 2 0.88779149204492569 20 0.11220850795507431
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.30750840902328491 20 0.69249159097671509
		2 2 0.61065754294395447 20 0.38934245705604553
		2 2 0.90658880770206451 20 0.093411192297935486
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.30889725685119629 20 0.69110274314880371
		2 2 0.61679986119270325 20 0.38320013880729675
		2 2 0.92071453481912613 20 0.079285465180873871
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.3100007176399231 20 0.6899992823600769
		2 2 0.62212875485420227 20 0.37787124514579773
		2 2 0.9337947741150856 20 0.066205225884914398
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.31110650300979614 20 0.68889349699020386
		2 2 0.62871530652046204 20 0.37128469347953796
		2 2 0.94815439730882645 20 0.051845602691173553
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.31274551153182983 20 0.68725448846817017
		2 2 0.63654768466949463 20 0.36345231533050537
		2 2 0.96655157208442688 20 0.03344842791557312
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.31632810831069946 20 0.68367189168930054
		2 2 0.64459824562072754 20 0.35540175437927246
		2 2 0.9802163727581501 20 0.019783627241849899
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.31983643770217896 20 0.68016356229782104
		2 2 0.6489005982875824 20 0.3510994017124176
		2 2 0.97800648026168346 20 0.021993519738316536
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.32310253381729126 20 0.67689746618270874
		2 2 0.65108981728553772 20 0.34891018271446228
		2 2 0.98054273426532745 20 0.019457265734672546
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.32337647676467896 20 0.67662352323532104
		2 2 0.64319628477096558 20 0.35680371522903442
		2 2 0.94149063900113106 20 0.058509360998868942
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.32183808088302612 20 0.67816191911697388
		2 2 0.63362708687782288 20 0.36637291312217712
		2 2 0.91942466795444489 20 0.080575332045555115
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.3119238018989563 20 0.6880761981010437
		2 2 0.61102423071861267 20 0.38897576928138733
		2 2 0.88369322568178177 20 0.11630677431821823
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.30274438858032227 20 0.69725561141967773
		2 2 0.59118193387985229 20 0.40881806612014771
		2 2 0.85475614666938782 20 0.14524385333061218
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		3 2 0.29595166444778442 19 0.00062595121562480927 20 0.70342238433659077
		2 2 0.57751056551933289 20 0.42248943448066711
		2 2 0.83513474464416504 20 0.16486525535583496
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.29150807857513428 20 0.70849192142486572
		2 2 0.56897911429405212 20 0.43102088570594788
		2 2 0.82328587770462036 20 0.17671412229537964
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.84681783616542816 2 0.061594724655151367 23 0.091587439179420471
		5 1 0.64954060855399121 2 0.05637793242931366 21 0.0034172884147945339 
		22 0.041973336487416593 23 0.24869083411448395
		5 1 0.45126226779101691 2 0.051161140203475952 21 0.006834807854969956 
		22 0.083946441949452305 23 0.40679534220108476
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.84562059491872787 2 0.061594724655151367 23 0.092784680426120758
		5 1 0.65098046016500999 2 0.05637793242931366 21 0.0034171179883059214 
		22 0.041973506913905209 23 0.24725098250346528
		5 1 0.45550014966090691 2 0.051161140203475952 21 0.0068344624362894971 
		22 0.083946787368132769 23 0.40255746033119494
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.84588488191366196 2 0.061594724655151367 23 0.092520393431186676
		5 1 0.65326630607651404 2 0.05637793242931366 21 0.0034167192744021004 
		22 0.041973905627809033 23 0.24496513659196129
		5 1 0.4595546511567673 2 0.051161140203475952 21 0.0068336665493722512 
		22 0.083947583255050015 23 0.39850295883533454
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.84930931031703949 2 0.061594724655151367 23 0.089095965027809143
		5 1 0.6566484284272297 2 0.05637793242931366 21 0.0034160919942049475 
		22 0.041974532908006186 23 0.24158301424124556
		5 1 0.46303802124531374 2 0.051161140203475952 21 0.0068323891817626938 
		22 0.083948860622659577 23 0.39501958874678811
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.85598043352365494 2 0.061594724655151367 23 0.082424841821193695
		5 1 0.66098864113210054 2 0.05637793242931366 21 0.0034152600541575099 
		22 0.041975364848053615 23 0.23724280153637467
		5 1 0.46577774387051568 2 0.051161140203475952 21 0.006830656255053108 
		22 0.083950593549369151 23 0.39227986612158616
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.8635869026184082 2 0.061594724655151367 23 0.07481837272644043
		5 1 0.6655642670258366 2 0.05637793242931366 21 0.0034142929851191561 
		22 0.04197633191709197 23 0.23266717564263864
		4 1 0.46742970731763867 2 0.051161140203475952 21 0.0068286136678074056 
		22 0.083952636136614842;
	setAttr ".wl[597:847].w"
		1 23 0.39062790267446312
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.87217502295970917 2 0.061594724655151367 23 0.066230252385139465
		5 1 0.67026406683550843 2 0.05637793242931366 21 0.0034132995106149356 
		22 0.041977325391596189 23 0.22796737583296683
		5 1 0.46786181167945096 2 0.051161140203475952 21 0.006826524080936933 
		22 0.083954725723485321 23 0.39019579831265083
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.88202217593789101 2 0.061594724655151367 23 0.056383099406957626
		5 1 0.67545939409697509 2 0.05637793242931366 21 0.0034123835413988881 
		22 0.041978241360812234 23 0.22277204857150018
		5 1 0.46752894054307731 2 0.051161140203475959 21 0.0068246464051436202 
		22 0.083956603399278643 23 0.39052866944902459
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.89477389678359032 2 0.061594724655151367 23 0.043631378561258316
		5 1 0.68198508784511991 2 0.05637793242931366 21 0.0034115929175159926 
		22 0.041979031984695131 23 0.21624635482335536
		5 1 0.46778305265509612 2 0.051161140203475952 21 0.0068230633001001087 
		22 0.083958186504322144 23 0.39027455733700567
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.91027271002531052 2 0.061594724655151367 23 0.028132565319538116
		5 1 0.68985928598094048 2 0.05637793242931366 21 0.0034109309256097117 
		22 0.041979693976601416 23 0.20837215668753484
		5 1 0.46970873243643363 2 0.051161140203475952 21 0.0068216723830027996 
		22 0.083959577421419448 23 0.38834887755566816
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.92372409254312515 2 0.061594724655151367 23 0.01468118280172348
		5 1 0.69742965518581768 2 0.05637793242931366 21 0.0034104641254207478 
		22 0.041980160776790378 23 0.20080178748265753
		5 1 0.47315769505889166 2 0.051161140203475952 21 0.0068205388164223795 
		22 0.08396071098799987 23 0.38489991493321013
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.93608312378637493 2 0.061594724655151367 23 0.0023221515584737062
		5 1 0.70293833355915369 2 0.05637793242931366 21 0.00341039046535992 
		22 0.041980234436851206 23 0.19529310910932146
		5 1 0.47645557214964568 2 0.051161140203475952 21 0.0068202341744756072 
		22 0.08396101562994665 23 0.38160203784245605
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.93127695843577385 2 0.061594724655151367 23 0.0071283169090747833
		5 1 0.70175585274734065 2 0.05637793242931366 21 0.0034108646077661985 
		22 0.041979760294444932 23 0.19647558992113451
		5 1 0.47750064453930341 2 0.051161140203475952 21 0.0068212226895291881 
		22 0.083960027114893074 23 0.38055696545279838
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.91533615067601204 2 0.061594724655151367 23 0.023069124668836594
		5 1 0.6952960625431337 2 0.05637793242931366 21 0.003411844030270378 
		22 0.041978780871940749 23 0.20293538012534146
		5 1 0.47609552055614673 2 0.051161140203475952 21 0.0068233962071201542 
		22 0.08395785359730211 23 0.381962089435955
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.90605691075325012 2 0.061594724655151367 23 0.032348364591598511
		5 1 0.68800818834873045 2 0.05637793242931366 21 0.0034131126552575473 
		22 0.041977512246953577 23 0.21022325431974476
		5 1 0.47292229304072719 2 0.051161140203475959 21 0.0068261951688857771 
		22 0.0839550546355365 23 0.38513531695137465
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.88850727304816246 2 0.061594724655151367 23 0.049898002296686172
		5 1 0.67779241935723666 2 0.05637793242931366 21 0.003414408238670476 
		22 0.041976216663540664 23 0.22043902331123857
		5 1 0.46768844244381602 2 0.051161140203475952 21 0.006828987418167053 
		22 0.083952262386255222 23 0.39036916754828588
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.87177892774343491 2 0.061594724655151367 23 0.066626347601413727
		5 1 0.66700626989747924 2 0.05637793242931366 21 0.003415529568468802 
		22 0.041975095333742343 23 0.23122517277099602
		5 1 0.46092838553725529 2 0.051161140203475952 21 0.0068313311526009253 
		22 0.083949918651821359 23 0.39712922445484655
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.85794240981340408 2 0.061594724655151367 23 0.08046286553144455
		5 1 0.65755420646915963 2 0.05637793242931366 21 0.0034163763242621662 
		22 0.041974248577948972 23 0.24067723619931564
		5 1 0.45400056508436959 2 0.051161140203475952 21 0.006833041855605267 
		22 0.083948207948817008 23 0.40405704490773225
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.84900958091020584 2 0.061594724655151367 23 0.089395694434642792
		5 1 0.65128483260672276 2 0.05637793242931366 21 0.0034169320636262294 
		22 0.041973692838584903 23 0.24694661006175245
		5 1 0.44946046609067275 2 0.051161140203475952 21 0.0068341269211734832 
		22 0.083947122883248793 23 0.40859714390142904
		2 1 0.67449742555618286 2 0.32550257444381714
		2 1 0.8177679181098938 2 0.1822320818901062
		2 1 0.92055106163024902 2 0.079448938369750977
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		3 1 0.84691458940505981 2 0.061594724655151367 23 0.091490685939788818
		5 1 0.64912548282673477 2 0.056377932429313667 21 0.0034172236658663049 
		22 0.041973401236344833 23 0.2491059598417405
		5 1 0.44876190074116507 2 0.051161140203475952 21 0.0068346741850444526 
		22 0.083946575619377808 23 0.40929570925093672
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.022541344165802002 3 0.977458655834198
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.064291000366210938 3 0.93570899963378906
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		1 2 0.2897258996963501;
	setAttr ".wl[847:1097].w"
		1 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.633018270486715 3 0.366981729513285
		2 2 0.63200971178056919 3 0.36799028821943081
		2 2 0.63152944572985614 3 0.36847055427014391
		2 2 0.63133133598390412 3 0.36866866401609583
		2 2 0.63125865286281824 3 0.36874134713718171
		2 2 0.63123477356308011 3 0.36876522643691989
		2 2 0.63122784561809442 3 0.36877215438190564
		2 2 0.63122616890800476 3 0.36877383109199519
		2 2 0.63122590215867247 3 0.36877409784132753
		2 2 0.63122593073895816 3 0.36877406926104184
		2 2 0.63122598350256243 3 0.36877401649743757
		2 2 0.63122601598253913 3 0.36877398401746098
		2 2 0.63122603166636337 3 0.36877396833363663
		2 2 0.63122603840289959 3 0.36877396159710041
		2 2 0.6312260410951831 3 0.3687739589048169
		2 2 0.63122604211838684 3 0.36877395788161316
		2 2 0.63166514288229236 3 0.36833485711770764
		2 2 0.63155536791788702 3 0.36844463208211303
		2 2 0.63073205473367544 3 0.36926794526632456
		2 2 0.62972349604221445 3 0.37027650395778555
		2 2 0.78084784085885528 3 0.21915215914114466
		2 2 0.78014116367087494 3 0.21985883632912512
		2 2 0.77978439460483873 3 0.22021560539516127
		2 2 0.77962616409352326 3 0.22037383590647669
		2 2 0.77956296837100414 3 0.22043703162899592
		2 2 0.77953997348977966 3 0.22046002651022031
		2 2 0.77953234538014238 3 0.22046765461985762
		2 2 0.77953006984502116 3 0.2204699301549789
		2 2 0.779529485990615 3 0.22047051400938497
		2 2 0.77952937575237058 3 0.22047062424762942
		2 2 0.77952937439140468 3 0.22047062560859537
		2 2 0.77952938751687462 3 0.22047061248312536
		2 2 0.77952939677700495 3 0.22047060322299505
		2 2 0.77952940153220696 3 0.22047059846779299
		2 2 0.77952940366214118 3 0.22047059633785876
		2 2 0.77952940454281516 3 0.22047059545718484
		2 2 0.7796391799850686 3 0.22036082001493146
		2 2 0.77936474237137299 3 0.22063525762862701
		2 2 0.77871981372160226 3 0.22128018627839771
		2 2 0.77801313654907212 3 0.22198686345092797
		2 2 0.87075310611240653 3 0.12924689388759342
		2 2 0.87071900456066365 3 0.12928099543933641
		2 2 0.87060166741759004 3 0.12939833258240996
		2 2 0.87052285431247711 3 0.12947714568752286
		2 2 0.87048301462423772 3 0.12951698537576228
		2 2 0.87046559326074402 3 0.12953440673925593
		2 2 0.87045871027728172 3 0.12954128972271822
		2 2 0.87045621394911388 3 0.12954378605088615
		2 2 0.87045538142911882 3 0.12954461857088118
		2 2 0.87045512927772117 3 0.12954487072227885
		2 2 0.87045506258593552 3 0.12954493741406448
		2 2 0.87045504903095705 3 0.12954495096904289
		2 2 0.87045526268119544 3 0.12954473731880459
		2 2 0.87045537112986993 3 0.12954462887013007
		2 2 0.87045478249341834 3 0.12954521750658171
		2 2 0.87045241116885008 3 0.12954758883114995
		2 2 0.87044916936887973 3 0.12955083063112033
		2 2 0.87032892228422853 3 0.12967107771577147
		2 2 0.87012391871760608 3 0.12987608128239392
		2 2 0.87006771479147316 3 0.12993228520852682
		2 2 0.92564489440599418 3 0.074355105594005794
		2 2 0.92567471059523665 3 0.074325289404763378
		2 2 0.92564475557931969 3 0.074355244420680297
		2 2 0.92561238980542326 3 0.074387610194576778
		2 2 0.92559165302843582 3 0.074408346971564177
		2 2 0.92558088608763267 3 0.074419113912367274
		2 2 0.92557596237566209 3 0.074424037624337872
		2 2 0.92557391023773861 3 0.074426089762261394
		2 2 0.92557311871767234 3 0.074426881282327648
		2 2 0.92557283556117931 3 0.074427164438820637
		2 2 0.92557274444883564 3 0.074427255551164417
		2 2 0.92557272606003904 3 0.074427273939960972
		2 2 0.92557275587869658 3 0.074427244121303471
		2 2 0.92557245306490377 3 0.074427546935096248
		2 2 0.92557093995811479 3 0.074429060041885264
		2 2 0.92556615655528995 3 0.074433843444710074
		2 2 0.92555213861094821 3 0.074447861389051823
		2 2 0.92550394675928316 3 0.074496053240716925
		2 2 0.92544497679244286 3 0.074555023207557178
		2 2 0.92546198372082855 3 0.074538016279171448
		2 2 0.96280516422066997 3 0.037194835779330068
		2 2 0.96282475812699131 3 0.037175241873008691
		2 2 0.96281919924118264 3 0.037180800758817321
		2 2 0.96280731643295581 3 0.037192683567044173
		2 2 0.96279769945703975 3 0.037202300542960254
		2 2 0.96279184209730939 3 0.037208157902690608
		2 2 0.96278879032186726 3 0.037211209678132767
		2 2 0.96278736057853531 3 0.037212639421464661
		2 2 0.9627867435779468 3 0.037213256422053233
		2 2 0.96278649519150006 3 0.037213504808499887
		2 2 0.96278639896120655 3 0.037213601038793502
		2 2 0.96278634718481515 3 0.037213652815184836
		2 2 0.96278623766562388 3 0.037213762334376142
		2 2 0.96278575801576649 3 0.037214241984233454
		2 2 0.9627842399146449 3 0.037215760085355098
		2 2 0.9627803406598433 3 0.037219659340156731
		2 2 0.96277132695671253 3 0.037228673043287482
		2 2 0.96275310586551788 3 0.037246894134482102
		2 2 0.96273728394692681 3 0.037262716053073228
		2 2 0.96275110797210628 3 0.037248892027893686
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.14984226226806641 3 0.85015773773193359
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.2897258996963501 3 0.7102741003036499
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.47312259674072266 3 0.52687740325927734
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.65368567407131195 3 0.34631432592868805
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.78540502488613129 3 0.21459497511386871
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		1 2 0.8719836063683033;
	setAttr ".wl[1097:1264].w"
		1 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		2 2 0.8719836063683033 3 0.1280163936316967
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.058023858815431595 2 0.86760849133133888 3 0.074367649853229523
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.17407157644629478 2 0.78356487210839987 3 0.042363551445305347
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.31913122348487377 2 0.65968700079247355 3 0.021181775722652674
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		3 1 0.49681432452052832 2 0.49259478761814535 3 0.010590887861326337
		5 1 0.45256645543453966 2 0.051161140203475952 21 0.0068344575126423482 
		22 0.083946792291779926 23 0.40549115455756213
		5 1 0.45581526062094274 2 0.051161140203475952 21 0.0068341010447845281 
		22 0.083947148759637755 23 0.4022423493711591
		5 1 0.45934366355729739 2 0.051161140203475952 21 0.0068332912561056419 
		22 0.083947958548316617 23 0.3987139464348044
		5 1 0.46251683130074223 2 0.051161140203475952 21 0.0068320402693406784 
		22 0.083949209535081573 23 0.39554077869135956
		5 1 0.46499236323792487 2 0.051161140203475952 21 0.0068304116442661151 
		22 0.083950838160156138 23 0.39306524675417692
		5 1 0.46658132056486906 2 0.051161140203475952 21 0.0068285409604658676 
		22 0.083952708843956392 23 0.39147628942723273
		5 1 0.46737070487153393 2 0.051161140203475952 21 0.0068266130805212004 
		22 0.083954636723901063 23 0.39068690512056786
		5 1 0.46783479334716249 2 0.051161140203475952 21 0.0068248044589818953 
		22 0.083956445345440348 23 0.3902228166449393
		5 1 0.4687389594839288 2 0.051161140203475952 21 0.0068232271971230283 
		22 0.083958022607299218 23 0.38931865050817299
		5 1 0.47057518863441566 2 0.051161140203475952 21 0.0068219504540924271 
		22 0.083959299350329822 23 0.38748242135768612
		5 1 0.47309818363443973 2 0.051161140203475952 21 0.0068211350262281957 
		22 0.083960114778194053 23 0.38495942635766206
		5 1 0.47527229269067167 2 0.051161140203475952 21 0.0068210990357075252 
		22 0.083960150768714728 23 0.38278531730143012
		5 1 0.47590197061479111 2 0.051161140203475952 21 0.006822063280137923 
		22 0.083959186524284343 23 0.38215563937731067
		5 1 0.47454785401040295 2 0.051161140203475952 21 0.0068239300444478852 
		22 0.083957319759974378 23 0.38350975598169884
		5 1 0.47135358402591093 2 0.051161140203475938 21 0.0068263210162700103 
		22 0.083954928788152236 23 0.38670402596619075
		5 1 0.46653653522372984 2 0.051161140203475945 21 0.0068287766539381648 
		22 0.083952473150484097 23 0.39152107476837189
		5 1 0.46081636764480699 2 0.051161140203475938 21 0.0068309309146803816 
		22 0.083950318889741887 23 0.39724124234729469
		5 1 0.45541803008285203 2 0.051161140203475952 21 0.0068325857978256506 
		22 0.083948664006596618 23 0.40263957990924976
		5 1 0.45187302077697672 2 0.051161140203475952 21 0.0068336906720596925 
		22 0.08394755913236257 23 0.40618458921512507
		5 1 0.4510671256508938 2 0.051161140203475952 21 0.0068342741232488317 
		22 0.08394697568117343 23 0.40699048434120799
		4 1 0.0040146253365437963 21 0.51031017477649132 22 0.45998279322961472 
		23 0.025692406657350099
		4 1 0.0040640675350443432 21 0.5102773206097414 22 0.46001564739636469 
		23 0.025642964458849553
		4 1 0.0041106394926254406 21 0.51020010783325931 22 0.46009286017284684 
		23 0.025596392501268463
		4 1 0.0041423868833662739 21 0.51006328359658581 22 0.46022968440952022 
		23 0.025564645110527626
		4 1 0.0041516755108298824 21 0.50985244374683458 22 0.46044052425927157 
		23 0.025555356483064024
		4 1 0.0041371622087160893 21 0.50956512589455072 22 0.46072784211155532 
		23 0.02556986978517781
		4 1 0.0041039589401777911 21 0.50922237285325145 22 0.4610705951528547 
		23 0.025603073053716112
		4 1 0.0040636026199802064 21 0.5088745139475519 22 0.46141845405855419 
		23 0.025643429373913701
		4 1 0.004027466743703685 21 0.50858197070348266 22 0.46171099730262349 
		23 0.025679565250190228
		4 1 0.0040049874680634923 21 0.50840535302389156 22 0.46188761498221437 
		23 0.025702044525830418
		4 1 0.0039994718995277866 21 0.50838504192185718 22 0.46190792608424891 
		23 0.025707560094366127
		4 1 0.0040070428438771606 21 0.50853152399454216 22 0.46176144401156405 
		23 0.025699989150016755
		4 1 0.0040190320392725033 21 0.50881329734839076 22 0.46147967065771534 
		23 0.025687999954621409
		4 1 0.004026226712188794 21 0.50916473850710586 22 0.46112822949900023 
		23 0.025680805281705119
		4 1 0.0040225160134631701 21 0.50951367178821561 22 0.4607792962178906 
		23 0.025684515980430742
		4 1 0.0040070923006265899 21 0.50980855352604404 22 0.46048441448006217 
		23 0.02569993969326732
		4 1 0.0039852577285852016 21 0.5100273398775661 22 0.46026562812854016 
		23 0.025721774265308708
		4 1 0.0039669787871023645 21 0.51017241156870663 22 0.46012055643739952 
		23 0.025740053206791541
		4 1 0.0039631051761963854 21 0.51025763401715085 22 0.46003533398895535 
		23 0.025743926817697521
		4 1 0.0039802290435792757 21 0.51029710044560972 22 0.45999586756049632 
		23 0.025726802950314626
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		2 19 0.39687114953994751 20 0.60312885046005249
		2 19 0.39576706290245056 20 0.60423293709754944
		2 19 0.3949604332447052 20 0.6050395667552948
		2 19 0.39457818865776062 20 0.60542181134223938
		2 19 0.39465034008026123 20 0.60534965991973877
		2 19 0.39521858096122742 20 0.60478141903877258
		2 19 0.39603668451309204 20 0.60396331548690796
		2 19 0.39679983258247375 20 0.60320016741752625
		2 19 0.39599266648292542 20 0.60400733351707458
		2 19 0.39709675312042236 20 0.60290324687957764
		2 19 0.39768007397651672 20 0.60231992602348328
		2 19 0.39823281764984131 20 0.60176718235015869
		2 19 0.39848032593727112 20 0.60151967406272888
		2 19 0.39950159192085266 20 0.60049840807914734
		2 19 0.39960700273513794 20 0.60039299726486206
		2 19 0.39983439445495605 20 0.60016560554504395
		2 19 0.39996364712715149 20 0.60003635287284851
		2 19 0.3999079167842865 20 0.6000920832157135
		2 19 0.3989986777305603 20 0.6010013222694397
		2 19 0.39797407388687134 20 0.60202592611312866
		3 18 0.3996163010597229 19 0.40038371086120605 20 0.19999998807907104
		3 18 0.3991578221321106 19 0.40084218978881836 20 0.19999998807907104
		3 18 0.3984396755695343 19 0.40156033635139465 20 0.19999998807907104
		3 18 0.39784494042396545 19 0.4021550714969635 20 0.19999998807907104
		3 18 0.39679968357086182 19 0.40320032835006714 20 0.19999998807907104;
	setAttr ".wl[1265:1382].w"
		3 18 0.39581134915351868 19 0.40418866276741028 20 0.19999998807907104
		3 18 0.39502692222595215 19 0.40497308969497681 20 0.19999998807907104
		3 18 0.39467304944992065 19 0.4053269624710083 20 0.19999998807907104
		3 18 0.39516812562942505 19 0.40483188629150391 20 0.19999998807907104
		3 18 0.39483785629272461 19 0.40516215562820435 20 0.19999998807907104
		3 18 0.39590933918952942 19 0.40409067273139954 20 0.19999998807907104
		3 18 0.39863872528076172 19 0.40136128664016724 20 0.19999998807907104
		3 18 0.39935305714607239 19 0.40064695477485657 20 0.19999998807907104
		3 18 0.39977025985717773 19 0.40022975206375122 20 0.19999998807907104
		3 18 0.39990693330764771 19 0.40009307861328125 20 0.19999998807907104
		3 18 0.39993801712989807 19 0.40006199479103088 20 0.19999998807907104
		3 18 0.39993846416473389 19 0.40006154775619507 20 0.19999998807907104
		3 18 0.39991948008537292 19 0.40008053183555603 20 0.19999998807907104
		3 18 0.39987805485725403 19 0.40012195706367493 20 0.19999998807907104
		3 18 0.39979603886604309 19 0.40020397305488586 20 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.79952496290206909 19 0.20047503709793091
		2 18 0.79872089624404907 19 0.20127910375595093
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		2 18 0.80000001192092896 19 0.19999998807907104
		5 1 0.0080240256274351565 2 0.00019984820391982794 21 0.47747642027934434 
		22 0.47538795866148637 23 0.038911747227814361
		5 1 0.0080362801959077863 2 0.00019984820391982794 21 0.47773285801069765 
		22 0.47513152093013306 23 0.038899492659341742
		5 1 0.0080127058637657414 2 0.00019984820391982794 21 0.47792485537810692 
		22 0.47493952356272373 23 0.038923066991483776
		5 1 0.0079565789204919853 2 0.00019984820391982797 21 0.47805285936353675 
		22 0.47481151957729389 23 0.038979193934757538
		5 1 0.0078807875307424936 2 0.00019984820391982794 21 0.47812722494309884 
		22 0.47473715399773186 23 0.039054985324507033
		5 1 0.0078052189887898296 2 0.00019984820391982794 21 0.47815891918472164 
		22 0.47470545975610901 23 0.039130553866459687
		5 1 0.0077515287957276961 2 0.00019984820391982794 21 0.47815289390602295 
		22 0.4747114850348077 23 0.039184244059521825
		5 1 0.0077320266818343758 2 0.00019984820391982794 21 0.47811289762715276 
		22 0.47475148131367789 23 0.039203746173415148
		5 1 0.0077478114213249787 2 0.00019984820391982794 21 0.47802962178381431 
		22 0.47483475715701634 23 0.039187961433924542
		5 1 0.0077869281168626604 2 0.00019984820391982794 21 0.47789075050432761 
		22 0.47497362843650309 23 0.039148844738386861
		5 1 0.00783088577639297 2 0.00019984820391982794 21 0.47768586780557415 
		22 0.47517851113525655 23 0.039104887078856551
		5 1 0.0078632725514580816 2 0.00019984820391982794 21 0.47741579335725276 
		22 0.47544858558357789 23 0.039072500303791446
		5 1 0.0078755609870335315 2 0.00019984820391982794 21 0.4771027970477057 
		22 0.47576158189312501 23 0.039060211868216003
		5 1 0.0078687957485912147 2 0.00019984820391982794 21 0.47679381894427153 
		22 0.47607055999655912 23 0.039066977106658317
		5 1 0.0078523279443176008 2 0.00019984820391982794 21 0.47655121132116118 
		22 0.47631316761966946 23 0.039083444910931929
		5 1 0.0078404637467309104 2 0.00019984820391982794 21 0.47642943944069871 
		22 0.47643493950013194 23 0.039095309108518619
		5 1 0.0078467841422931867 2 0.00019984820391982797 21 0.47645292946827428 
		22 0.47641144947255643 23 0.039088988712956345
		5 1 0.0078775575040831748 2 0.00019984820391982794 21 0.47661108363334281 
		22 0.47625329530748783 23 0.039058215351166353
		5 1 0.007927725131783964 2 0.00019984820391982794 21 0.47686857801856752 
		22 0.47599580092226312 23 0.039008047723465562
		5 1 0.0079825732577204871 2 0.00019984820391982794 21 0.47717436626994836 
		22 0.47569001267088229 23 0.038953199597529034
		5 1 0.011939696633084158 2 0.00039969640783965588 21 0.44543252235148095 
		22 0.4900032675240743 23 0.052224817083520989
		5 1 0.011956680359607341 2 0.00039969640783965588 21 0.44567715309635092 
		22 0.48975863677920439 23 0.052207833356997808
		5 1 0.011915773983733377 2 0.00039969640783965588 21 0.4458499511175138 
		22 0.4895858387580414 23 0.052248739732871773
		5 1 0.01182254060807531 2 0.00039969640783965588 21 0.44595879020241991 
		22 0.48947699967313529 23 0.052341973108529838
		5 1 0.01169767182140044 2 0.00039969640783965588 21 0.44601926470555964 
		22 0.48941652516999556 23 0.052466841895204702
		5 1 0.011574214709176696 2 0.00039969640783965588 21 0.44604471273487162 
		22 0.48939107714068364 23 0.052590299007428447
		5 1 0.011488736830749769 2 0.00039969640783965577 21 0.44604186539708301 
		22 0.48939392447847208 23 0.052675776885855355
		5 1 0.011465578133086648 2 0.00039969640783965593 21 0.44601065111300259 
		22 0.48942513876255272 23 0.052698935583518507
		5 1 0.011505117979726271 2 0.00039969640783965588 21 0.44594188022534786 
		22 0.48949390965020734 23 0.052659395736878875
		5 1 0.011583551742126982 2 0.00039969640783965588 21 0.44582014858177571 
		22 0.48961564129377949 23 0.05258096197447816
		5 1 0.01166613069096294 2 0.00039969640783965588 21 0.44562903899318407 
		22 0.48980675088237113 23 0.052498383025642206
		5 1 0.011724158787121205 2 0.00039969640783965593 21 0.44536211590371833 
		22 0.49007367397183693 23 0.05244035492948395
		5 1 0.011744130747018763 2 0.00039969640783965588 21 0.4450384424156123 
		22 0.49039734745994296 23 0.052420382969586392
		5 1 0.011728520119730992 2 0.00039969640783965588 21 0.44470955614321961 
		22 0.49072623373233559 23 0.052435993596874154
		5 1 0.011693226897190516 2 0.00039969640783965588 21 0.44445131558380724 
		22 0.49098447429174807 23 0.052471286819414632
		5 1 0.011663312502850284 2 0.00039969640783965588 21 0.44432923664437562 
		22 0.49110655323117963 23 0.052501201213754858
		5 1 0.01166405518062047 2 0.00039969640783965588 21 0.44436604023436616 
		22 0.49106974964118905 23 0.052500458535984673
		5 1 0.011708129820781897 2 0.00039969640783965588 21 0.44454078987138534 
		22 0.49089500000416986 23 0.052456383895823244
		5 1 0.011787037145646276 2 0.00039969640783965588 21 0.44481416883058778 
		22 0.49062162104496748 23 0.052377476570958877
		5 1 0.011874583331485042 2 0.00039969640783965588 21 0.44513009392863023 
		22 0.49030569594692497 23 0.052289930385120101
		5 1 0.019776742701006989 2 0.00079939281567931175 21 0.38131187460799509 
		22 0.51926673713700933 23 0.07884525273830939
		5 1 0.019805754853200477 2 0.00079939281567931175 21 0.38152690545515289 
		22 0.51905170628985142 23 0.078816240586115915
		5 1 0.019730683603885156 2 0.00079939281567931175 21 0.38166449222360543 
		22 0.51891411952139888 23 0.078891311835431244
		5 1 0.019560995214958913 2 0.00079939281567931175 21 0.38174230475036353 
		22 0.51883630699464078 23 0.079061000224357469
		5 1 0.019332002935243949 2 0.00079939281567931175 21 0.38178151279005024 
		22 0.51879709895495418 23 0.07928999250407244
		5 1 0.019104037977710524 2 0.00079939281567931186 21 0.38179707040720817 
		22 0.51878154133779619 23 0.079517957461605879
		5 1 0.018949032601703886 2 0.00079939281567931175 21 0.38179586872959331 
		22 0.51878274301541105 23 0.079672962837612493
		5 1 0.018917581117775285 2 0.00079939281567931175 21 0.38177702508738764 
		22 0.51880158665761666 23 0.079704414321541101
		5 1 0.01900992434313592 2 0.00079939281567931175 21 0.38173151088053847 
		22 0.51884710086446573 23 0.079612071096180459
		5 1 0.01917537963711833 2 0.00079939281567931175 21 0.38164196634942682 
		22 0.51893664539557749 23 0.079446615802198056
		5 1 0.019342257256882871 2 0.00079939281567931175 21 0.3814852597594583 
		22 0.51909335198554596 23 0.079279738182433515
		5 1 0.019455573612930016 2 0.00079939281567931175 21 0.38124355924755915 
		22 0.51933505249744516 23 0.079166421826386377
		5 1 0.01949212337035558 2 0.00079939281567931175 21 0.38092820506294067 
		22 0.51965040668206375 23 0.079129872068960813
		5 1 0.019457205704917432 2 0.00079939281567931175 21 0.38059154388711303 
		22 0.51998706785789128 23 0.079164789734398958
		5 1 0.019379288326307725 2 0.00079939281567931175 21 0.38032637287034465 
		22 0.52025223887465977 23 0.079242707113008667
		5 1 0.019306148554024204 2 0.00079939281567931175 21 0.38021241501591196 
		22 0.52036619672909235 23 0.079315846885292168
		5 1 0.019290328357459009 2 0.00079939281567931175 21 0.38026580976967495 
		22 0.52031280197532936 23 0.079331667081857363
		5 1 0.019360606253088719 2 0.00079939281567931175 21 0.38044573058072478 
		22 0.52013288116427958 23 0.07926138918622766
		5 1 0.01950126295900436 2 0.00079939281567931175 21 0.38071844115285858 
		22 0.51986017059214573 23 0.079120732480312025
		5 1 0.019660141757095431 2 0.00079939281567931175 21 0.38102699165835385 
		22 0.51955162008665046 23 0.078961853682220945
		5 1 0.035458970247867039 2 0.0015987856313586235 21 0.25297661336647864 
		22 0.57788764211742394 23 0.13207798863687181
		5 1 0.035512717659320625 2 0.0015987856313586235 21 0.25311053881164869 
		22 0.57775371667225395 23 0.13202424122541823
		5 1 0.035368616731452918 2 0.0015987856313586235 21 0.25318890999397625 
		22 0.57767534548992627 23 0.13216834215328596
		5 1 0.035043483888443472 2 0.0015987856313586235 21 0.25322939922766086 
		22 0.57763485625624167 23 0.13249347499629541
		5 1 0.03459862786695822 2 0.0015987856313586231 21 0.25324834419154568 
		22 0.57761591129235679 23 0.13293833101778063
		5 1 0.034148665854106433 2 0.0015987856313586235 21 0.25325556221304441 
		22 0.57760869327085806 23 0.13338829303063243
		5 1 0.03384432783336238 2 0.0015987856313586235 21 0.25325509857174822 
		22 0.57760915691215431 23 0.13369263105137649
		5 1 0.033796540875915042 2 0.0015987856313586235 21 0.2532461845555054 
		22 0.57761807092839712 23 0.1337404180088238
		5 1 0.03400627115227 2 0.0015987856313586235 21 0.25322313886275322 
		22 0.57764111662114925 23 0.13353068773246884
		5 1 0.034361548265000097 2 0.0015987856313586235 21 0.25317393636922114 
		22 0.57769031911468138 23 0.13317541061973875
		5 1 0.034707258816559089 2 0.0015987856313586235 21 0.25307976206333344 
		22 0.57778449342056915 23 0.13282970006817976
		5 1 0.034934954468738233 2 0.0015987856313586235 21 0.25292120456636336 
		22 0.57794305091753917 23 0.13260200441600065
		5 1 0.03500547431083699 2 0.0015987856313586235 21 0.25270336723673503 
		22 0.57816088824716749 23 0.1325314845739019
		5 1 0.03493039652992929 2 0.0015987856313586235 21 0.25246408090433348 
		22 0.57840017457956905 23 0.13260656235480958
		5 1 0.034760398008469709 2 0.0015987856313586231 21 0.25228592628305574 
		22 0.57857832920084673 23 0.13277656087626913
		5 1 0.034588956180958724 2 0.0015987856313586235 21 0.25223517285070995 
		22 0.57862908263319257 23 0.13294800270378013
		5 1 0.034530756831805502 2 0.0015987856313586235 21 0.25230294417795057 
		22 0.57856131130595201 23 0.13300620205293334
		5 1 0.034653483030607696 2 0.0015987856313586235 21 0.25241913012271744 
		22 0.57844512536118509 23 0.13288347585413116
		5 1 0.034925110451844883 2 0.0015987856313586235 21 0.25259100733070655 
		22 0.57827324815319603 23 0.13261184843289398
		5 1 0.035234801604812037 2 0.0015987856313586235 21 0.25279056365802616 
		22 0.57807369182587642 23 0.13230215727992681
		5 1 0.062693289820917264 2 0.003197571262717247 21 0.1106635276830491 
		22 0.61047904727254387 23 0.21296656396077263
		5 1 0.062781028312521858 2 0.003197571262717247 21 0.1107097152753314 
		22 0.61043285968026151 23 0.21287882546916809
		5 1 0.062509063545809818 2 0.003197571262717247 21 0.11074130555191156 
		22 0.61040126940368133 23 0.2131507902358801;
	setAttr ".wl[1383:1532].w"
		5 1 0.061906327922693336 2 0.003197571262717247 21 0.1107596572227989 
		22 0.61038291773279396 23 0.21375352585899657
		5 1 0.061068347267465094 2 0.003197571262717247 21 0.1107690057579841 
		22 0.61037356919760888 23 0.21459150651422482
		5 1 0.060199923817998886 2 0.003197571262717247 21 0.11077271150974952 
		22 0.61036986344584343 23 0.21545992996369101
		5 1 0.059612619073044118 2 0.003197571262717247 21 0.11077229144489095 
		22 0.61037028351070188 23 0.21604723470864579
		5 1 0.059547246597706979 2 0.003197571262717247 21 0.11076729294728535 
		22 0.61037528200830748 23 0.2161126071839829
		5 1 0.060008254996193791 2 0.003197571262717247 21 0.11075519964984654 
		22 0.61038737530574638 23 0.21565159878549608
		5 1 0.060753278755148757 2 0.003197571262717247 21 0.11073130189109362 
		22 0.61041127306449927 23 0.21490657502654115
		5 1 0.061450297487920698 2 0.003197571262717247 21 0.11068963986283936 
		22 0.61045293509275345 23 0.21420955629376923
		5 1 0.061896203443031803 2 0.003197571262717247 21 0.11062694631196909 
		22 0.61051562864362374 23 0.21376365033865813
		5 1 0.062035030520075939 2 0.003197571262717247 21 0.11055081189376564 
		22 0.61059176306182716 23 0.213624823261614
		5 1 0.061890544282700397 2 0.003197571262717247 21 0.11048248159446566 
		22 0.61066009336112725 23 0.21376930949898951
		5 1 0.061540951308836286 2 0.003197571262717247 21 0.11045802268580904 
		22 0.6106845522697838 23 0.21411890247285359
		5 1 0.061157955798608457 2 0.003197571262717247 21 0.11049867671061435 
		22 0.61064389824497844 23 0.21450189798308145
		5 1 0.06098905160104845 2 0.003197571262717247 21 0.1105672157440143 
		22 0.61057535921157857 23 0.21467080218064144
		5 1 0.061191950681578358 2 0.003197571262717247 21 0.11056901202893438 
		22 0.61057356292665854 23 0.21446790310011155
		5 1 0.061701062806141585 2 0.003197571262717247 21 0.11057557946739531 
		22 0.61056699548819759 23 0.21395879097554829
		5 1 0.062283830959537899 2 0.003197571262717247 21 0.11061181730007223 
		22 0.61053075765552067 23 0.21337602282215198
		5 1 0.18439049353349865 2 0.012790285050868988 21 0.027070949006804079 
		22 0.33281186271786989 23 0.44293640969095838
		5 1 0.18442207103609842 2 0.012790285050868988 21 0.027080441518652274 
		22 0.33280237020602166 23 0.44290483218835863
		5 1 0.18351292723929125 2 0.012790285050868988 21 0.027087890832265045 
		22 0.33279492089240892 23 0.44381397598516581
		5 1 0.18175041906337289 2 0.012790285050868988 21 0.027092869643702607 
		22 0.33278994208097135 23 0.4455764841610842
		5 1 0.179238424065813 2 0.012790285050868988 21 0.027095716754865797 
		22 0.33278709496980818 23 0.44808847915864414
		5 1 0.17641113878944353 2 0.012790285050868988 21 0.027096908429229564 
		22 0.33278590329544444 23 0.45091576443501358
		5 1 0.17448256364280026 2 0.012790285050868988 21 0.027096689097819406 
		22 0.33278612262685459 23 0.45284433958165682
		5 1 0.17445325474010537 2 0.012790285050868988 21 0.027094927466128179 
		22 0.33278788425854583 23 0.45287364848435174
		5 1 0.1763806648378265 2 0.012790285050868988 21 0.027091093685505122 
		22 0.33279171803916885 23 0.45094623838663056
		5 1 0.17930152662301591 2 0.012790285050868988 21 0.027084402103460713 
		22 0.33279840962121326 23 0.44802537660144121
		5 1 0.18180216571725294 2 0.012790285050868988 21 0.027074228152001362 
		22 0.33280858357267262 23 0.44552473750720417
		5 1 0.18335171749733115 2 0.012790285050868988 21 0.027060884169512595 
		22 0.33282192755516132 23 0.44397518572712602
		5 1 0.18395381628425378 2 0.012790285050868988 21 0.027046476865149108 
		22 0.3328363348595248 23 0.44337308694020328
		5 1 0.18368625268074568 2 0.012790285050868988 21 0.027034952077903806 
		22 0.33284785964677011 23 0.44364065054371132
		5 1 0.18255538419636388 2 0.012790285050868988 21 0.02703073192958861 
		22 0.33285207979508535 23 0.4447715190280932
		5 1 0.18095243492727381 2 0.012790285050868988 21 0.027034986880652166 
		22 0.33284782484402181 23 0.4463744682971833
		5 1 0.17993656783483064 2 0.012790285050868988 21 0.027042936203686925 
		22 0.33283987552098704 23 0.44739033538962641
		5 1 0.18028714948338714 2 0.012790285050868988 21 0.027048160879195055 
		22 0.33283465084547892 23 0.44703975374106991
		5 1 0.18173434766422514 2 0.012790285050868988 21 0.027053306627947214 
		22 0.33282950509672676 23 0.44559255556023192
		5 1 0.18339141578701798 2 0.012790285050868988 21 0.027061119855431387 
		22 0.3328216918692426 23 0.44393548743743905
		5 1 0.10712270390494369 2 0.006395142525434494 21 0.05495705282561214 
		22 0.50615622506114921 23 0.32536887568286044
		5 1 0.10815888182616143 2 0.006395142525434494 21 0.054973564017985886 
		22 0.50613971386877554 23 0.3243326977616427
		5 1 0.10884720655589368 2 0.006395142525434494 21 0.054995805709073517 
		22 0.50611747217768788 23 0.32364437303191051
		5 1 0.10895671722431627 2 0.006395142525434494 21 0.055016748193779969 
		22 0.50609652969298136 23 0.32353486236348794
		5 1 0.10845372168883703 2 0.006395142525434494 21 0.055032282736679733 
		22 0.50608099515008154 23 0.32403785789896716
		5 1 0.10738759473855712 2 0.0063951425254344949 21 0.055042051712663437 
		22 0.50607122617409794 23 0.32510398484924713
		5 1 0.10588108845062721 2 0.006395142525434494 21 0.05504735808697131 
		22 0.5060659197997901 23 0.32661049113717699
		5 1 0.10426392767044264 2 0.006395142525434494 21 0.055049528892474803 
		22 0.50606374899428652 23 0.32822765191736158
		5 1 0.10316552288453276 2 0.006395142525434494 21 0.055049209189192316 
		22 0.50606406869756904 23 0.32932605670327142
		5 1 0.1030939450007973 2 0.006395142525434494 21 0.055046143802725871 
		22 0.50606713408403547 23 0.32939763458700688
		5 1 0.10406643096042947 2 0.006395142525434494 21 0.055039136246817139 
		22 0.50607414163994424 23 0.32842514862737471
		5 1 0.10557916451371155 2 0.0063951425254344949 21 0.055026195022454573 
		22 0.50608708286430681 23 0.32691241507409269
		5 1 0.10693379254074196 2 0.0063951425254344923 21 0.055005280149781136 
		22 0.50610799773698012 23 0.32555778704706217
		5 1 0.10777955639958513 2 0.006395142525434494 21 0.054976145740000593 
		22 0.5061371321467607 23 0.32471202318821901
		5 1 0.10806209263905479 2 0.006395142525434494 21 0.054943001700027624 
		22 0.50617027618673371 23 0.3244294869487494
		5 1 0.1078264638109305 2 0.006395142525434494 21 0.054915264252977741 
		22 0.50619801363378358 23 0.32466511577687363
		5 1 0.10716032445744922 2 0.006395142525434494 21 0.054905568794696553 
		22 0.50620770909206481 23 0.32533125513035493
		5 1 0.10634807579323836 2 0.0063951425254344949 21 0.054918914268836404 
		22 0.50619436361792502 23 0.32614350379456586
		5 1 0.1059136105961213 2 0.006395142525434494 21 0.054941356468148711 
		22 0.50617192141861267 23 0.3265779689916829
		5 1 0.10621650147841075 2 0.006395142525434494 21 0.054949317466679581 
		22 0.50616396042008183 23 0.32627507810939338
		5 1 0.30062281742468266 2 0.025580570101737976 21 0.013165192533410208 
		22 0.16191293208940413 23 0.498718487850765
		5 1 0.30160224081301645 2 0.025580570101737976 21 0.013169586689114693 
		22 0.16190853793369964 23 0.49773906446243121
		5 1 0.30121371344459791 2 0.025580570101737976 21 0.013173872265032098 
		22 0.16190425235778225 23 0.49812759183084981
		5 1 0.29961217590948935 2 0.025580570101737976 21 0.013177372155619349 
		22 0.16190075246719499 23 0.49972912936595831
		5 1 0.29696876584441539 2 0.025580570101737976 21 0.013179826737168178 
		22 0.16189829788564619 23 0.50237253943103233
		5 1 0.29330406321453178 2 0.025580570101737976 21 0.013181290583182664 
		22 0.1618968340396317 23 0.50603724206091594
		5 1 0.28898223815191448 2 0.025580570101737976 21 0.013181912096998996 
		22 0.16189621252581538 23 0.51035906712353318
		5 1 0.28607012140912907 2 0.025580570101737976 21 0.013181764814641497 
		22 0.16189635980817288 23 0.51327118386631865
		5 1 0.28622684097691792 2 0.025580570101737976 21 0.013180802396817818 
		22 0.16189732222599656 23 0.5131144642985298
		5 1 0.28963155207775565 2 0.025580570101737976 21 0.013178801811861032 
		22 0.16189932281095334 23 0.50970975319769207
		5 1 0.29475593866756672 2 0.025580570101737976 21 0.013175476940414389 
		22 0.16190264768239998 23 0.504585366607881
		5 1 0.29904944424952473 2 0.025580570101737976 21 0.013170673479191888 
		22 0.16190745114362248 23 0.50029186102592305
		5 1 0.30183183660926799 2 0.025580570101737976 21 0.013164671810519172 
		22 0.16191345281229519 23 0.49750946866617968
		5 1 0.30318355642304023 2 0.025580570101737976 21 0.013158448610995964 
		22 0.16191967601181839 23 0.49615774885240743
		5 1 0.30323385993620577 2 0.025580570101737976 21 0.0131535933425618 
		22 0.16192453128025255 23 0.49610744533924189
		5 1 0.30169485651998429 2 0.025580570101737976 21 0.013151662601556282 
		22 0.16192646202125807 23 0.49764644875546338
		5 1 0.29891660479203586 2 0.025580570101737976 21 0.013152953462971927 
		22 0.16192517115984242 23 0.50042470048341181
		5 1 0.29680373804784671 2 0.025580570101737976 21 0.013155899965569474 
		22 0.16192222465724487 23 0.50253756722760101
		5 1 0.29683298689702625 2 0.025580570101737976 21 0.013158619290590503 
		22 0.16191950533222388 23 0.50250831837842136
		5 1 0.29856730257524611 2 0.025580570101737976 21 0.013161475952128968 
		22 0.16191664867068539 23 0.50077400270020156
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.73999999463558197 10 0.26000000536441803
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.47999998927116394 10 0.52000001072883606
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		1 9 0.23999999463558197;
	setAttr ".wl[1532:1805].w"
		1 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		2 9 0.23999999463558197 10 0.76000000536441803
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		3 9 0.11999999731779099 10 0.83750000223517418 11 0.042500000447034836
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.91499999910593033 11 0.085000000894069672
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.82999999821186066 11 0.17000000178813934
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.65999999642372131 11 0.34000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.40999999642372131 11 0.59000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		2 10 0.15999999642372131 11 0.84000000357627869
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 9 1
		1 11 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.82499999552965164 6 0.17500000447034836
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.64999999105930328 6 0.35000000894069672
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.34000000357627869 6 0.65999999642372131
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		2 5 0.17000000178813934 6 0.82999999821186066
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		3 5 0.085000000894069672 6 0.8660791702568531 7 0.048920828849077225
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.90215834230184555 7 0.097841657698154449
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.72841025143861771 7 0.27158974856138229;
	setAttr ".wl[1806:2228].w"
		2 6 0.72841025143861771 7 0.27158974856138229
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.51670894399285316 7 0.48329105600714684
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.30500763654708862 7 0.69499236345291138
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.12279385328292847 7 0.87720614671707153
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.038802623748779297 7 0.9611973762512207
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		2 6 0.0098896026611328125 7 0.99011039733886719
		1 5 1
		2 6 0.0057874321937561035 7 0.9942125678062439
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1;
	setAttr ".wl[2229:2728].w"
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1;
	setAttr ".wl[2729:3228].w"
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1;
	setAttr ".wl[3229:3531].w"
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.20127136803517293 -7.6878202333654393 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.14583264291286469 -38.039520284200186 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.045830249786377 -86.277043579276835 0 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.244013786315918 -108.32085418701172 -7.7682349095608583 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -18.788713355590385 -104.13719725018191 -7.7682349095608583 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.684405095506582 -108.08959409910179 -7.7682349095608583 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.6789439207524559 -107.03895696204717 -7.7682349095608583 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 15.33566951751709 -108.321 -7.76823 1;
	setAttr ".pm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 22.880369517517089 -104.137 -7.76823 1;
	setAttr ".pm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 15.77606951751709 -108.09 -7.76823 1;
	setAttr ".pm[11]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.7706095175170908 -107.039 -7.76823 1;
	setAttr ".pm[12]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 15.187579154968262 -89.952100000000002 -4.2270799999999999 1;
	setAttr ".pm[13]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 15.187579154968262 -89.952100000000002 -4.2270799999999999 1;
	setAttr ".pm[14]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.095921516418457 -89.952064514160156 -4.2270803451538086 1;
	setAttr ".pm[15]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.095921516418457 -89.952064514160156 -4.2270803451538086 1;
	setAttr ".pm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 15.187579154968262 -89.952100000000002 -4.2270799999999999 1;
	setAttr ".pm[17]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.095921516418457 -89.952064514160156 -4.2270803451538086 1;
	setAttr ".pm[18]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.387580871582031 -71.059524536132812 0 1;
	setAttr ".pm[19]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.387580871582031 -61.515792846679688 0 1;
	setAttr ".pm[20]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.387580871582031 -48.85107421875 0 1;
	setAttr ".pm[21]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -14.89592170715332 -64.756919860839844 0 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -14.89592170715332 -43.645751953125 0 1;
	setAttr ".pm[23]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -14.89592170715332 -23.738473892211914 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 24 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 24 ".lw";
	setAttr -s 24 ".lw";
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
	setAttr -s 24 ".ifcl";
	setAttr -s 24 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "418BDF9A-44B0-BD87-68BE-A4BB05E2C5F3";
	setAttr -s 26 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 26 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.20127136803517293 7.6878202333654393
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.055438725122308241 30.351700050834747
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.8999976068735123 48.237523295076649
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.289844036102295 22.043810607734883
		 7.7682349095608583 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.5446995692744672 -4.1836569368298058
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.44039130919066416 -0.23126008790993069
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.5650698655634621 -1.2818972249645526
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.289839267730713 22.043956420723163
		 7.76823 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.5446999999999989 -4.1839999999999975
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.44040000000000035
		 -0.23099999999999454 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.565059999999999 -1.2819999999999965
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.141748905181885 3.6750564207231662
		 4.2270799999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.141748905181885 3.6750564207231662
		 4.2270799999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.141751766204834 3.6750209348833209
		 4.2270803451538086 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.141751766204834 3.6750209348833209
		 4.2270803451538086 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.141748905181885 3.6750564207231662
		 4.2270799999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.141751766204834 3.6750209348833209
		 4.2270803451538086 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.241748228669167 10.811553934549814
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7763568394002505e-15
		 12.664718627929688 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 9.5437316894531321
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.097193075188493 16.050653658846475
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7763568394002505e-15
		 19.907278060913089 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7763568394002505e-15
		 21.111167907714844 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 26 ".m";
	setAttr -s 26 ".p";
	setAttr -s 26 ".g[0:25]" yes yes no no no no no no no no no no no no 
		no no no no no no yes yes no yes yes no;
	setAttr ".bp" yes;
createNode animCurveUU -n "eyes_grp_parentConstraint1_top_ctrlW0";
	rename -uid "4AF2E1DB-4306-79D2-8DF5-5DB5BEBE4845";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "eyes_grp_parentConstraint1_root_ctrlW1";
	rename -uid "4B45F230-40BD-B25A-0815-379BB616AFDE";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "L_eyeball_bnd_jnt_scaleX";
	rename -uid "F0295D8A-496A-5392-95DC-04AD2E490B6C";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1.5 0 1 1 0.5;
createNode animCurveUU -n "L_eyeball_bnd_jnt_scaleY";
	rename -uid "C4DDEBDA-445B-49BB-B37C-1F880FC273D0";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 0.5 0 1 1 1.5;
createNode animCurveUU -n "L_eyeball_bnd_jnt_scaleZ";
	rename -uid "B45BAEA3-4638-8ABC-1E33-D38DB5A1E653";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1.5 0 1 1 0.5;
createNode animCurveUU -n "R_eyeball_bnd_jnt_scaleX";
	rename -uid "5A260900-4D28-7D53-1BE7-F2AA04701C37";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1.5 0 1 1 0.5;
createNode animCurveUU -n "R_eyeball_bnd_jnt_scaleY";
	rename -uid "F4E790DD-47EE-990A-52DB-3CB249B5212A";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 0.5 0 1 1 1.5;
createNode animCurveUU -n "R_eyeball_bnd_jnt_scaleZ";
	rename -uid "21EDDB4C-4931-8CB6-BBF7-53A7D39EAFDB";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 1.5 0 1 1 0.5;
createNode animCurveUL -n "L_eyeball_bnd_jnt_translateX";
	rename -uid "4BEE0D74-4435-88D1-AA54-56BD2128C482";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 4.5609788875353843 0 13.141751766204834 
		1 24.545830249786377;
createNode animCurveUL -n "R_eyeball_bnd_jnt_translateX";
	rename -uid "3E0CCFC2-402F-EA37-B3D0-02AC7BCE69C6";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  -1 -4.556112780096246 0 -13.141748905181885 
		1 -24.631054412172759;
createNode unitConversion -n "unitConversion1";
	rename -uid "D957D971-4C8B-4277-1B40-37ACB7533EEB";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion2";
	rename -uid "D5DA2CE1-4C17-4C5B-DFD0-898C79BD30CD";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion3";
	rename -uid "B5AA7CBE-45AD-B1B2-D9AF-DA84778B2D4F";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion4";
	rename -uid "68068D80-4D80-88C3-85AE-8F902659D6F5";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "3AAC3258-4D8B-2314-3C42-25B6F556009A";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion6";
	rename -uid "AAE84806-4FC0-62DA-C074-89BC0D0D7E53";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion7";
	rename -uid "5C7E5647-4961-A8E7-0647-058685B6C899";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion8";
	rename -uid "C132BE49-4468-0ECF-211E-A1B71961818A";
	setAttr ".cf" 0.017453292519943295;
createNode blinn -n "PaperclipMetal";
	rename -uid "274B983F-4FDB-EE93-AA30-12BD939D43F4";
createNode shadingEngine -n "blinn1SG";
	rename -uid "70E814C5-481F-F58A-5B10-959FB7D56433";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "6CE038CE-40E1-32B7-852A-DF8A08EE74DB";
createNode groupParts -n "groupParts1";
	rename -uid "EA5421D0-4F12-CA77-66B6-B3AB5769D64D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[1892:2291]" "f[2732:3131]";
	setAttr ".irc" -type "componentList" 3 "f[0:1891]" "f[2292:2731]" "f[3132:3571]";
	setAttr ".gi" 101;
createNode groupParts -n "groupParts2";
	rename -uid "336BE665-4A09-7166-0D5A-CDB13A6C8A8A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1441]";
	setAttr ".gi" 103;
createNode blinn -n "EyeLids";
	rename -uid "5CC448A1-46D7-FE2F-C723-BC8788522592";
createNode shadingEngine -n "blinn2SG";
	rename -uid "62A7E8F7-4E9E-5EA5-E2CB-A991C3E595BC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "AC0B50FD-4DE9-C0DB-3B35-57BB84776D61";
createNode groupParts -n "groupParts3";
	rename -uid "77C83C99-4C64-2864-9C5C-70AFFD875194";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[2292:2731]" "f[3132:3571]";
	setAttr ".gi" 104;
createNode blinn -n "EyeBrows";
	rename -uid "F81CA0D5-4AEA-10F1-695F-AE811FFC6A53";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "blinn3SG";
	rename -uid "5DBEF664-4158-87B4-FEF5-8DB04770AFF6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "8DA23075-4A46-9D56-85B8-FABF6E58C19A";
createNode groupParts -n "groupParts4";
	rename -uid "FF2FE8A1-43F8-00AA-D297-0AB63E3B4299";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1442:1891]";
	setAttr ".gi" 105;
createNode groupParts -n "groupParts5";
	rename -uid "6A3D9397-4246-932E-82B8-668FB8588CD5";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 2 "f[1892:2291]" "f[2732:3131]";
	setAttr ".gi" 101;
createNode groupParts -n "groupParts6";
	rename -uid "8D7EE328-4CDB-EC44-5DCB-0781C206518D";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "f[0:1441]";
	setAttr ".gi" 103;
createNode groupParts -n "groupParts7";
	rename -uid "25B06F4E-4F89-7165-3B5F-BE85A18BB07F";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 2 "f[2292:2731]" "f[3132:3571]";
	setAttr ".gi" 104;
createNode groupParts -n "groupParts8";
	rename -uid "AAE7887A-4C33-1100-AD84-088D89D8FB0F";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "f[1442:1891]";
	setAttr ".gi" 105;
createNode groupParts -n "groupParts9";
	rename -uid "02D594CA-4A06-8F30-FAD9-E6BEE86DCF9C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[1892:2291]" "f[2732:3131]";
	setAttr ".gi" 106;
createNode groupParts -n "groupParts10";
	rename -uid "F4C51B05-4667-BF01-0C76-51ADBDFF9556";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1441]";
	setAttr ".gi" 107;
createNode groupParts -n "groupParts11";
	rename -uid "2C4460DB-4A28-EFFD-637A-86B7423E580D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[2292:2731]" "f[3132:3571]";
	setAttr ".gi" 108;
createNode groupParts -n "groupParts12";
	rename -uid "C6BACF24-4B55-22AF-79BA-789DDF646123";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1442:1891]";
	setAttr ".gi" 109;
createNode groupParts -n "groupParts13";
	rename -uid "F268FBCF-4D97-57F5-A0C9-9AAEE6F62438";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 2 "f[1892:2291]" "f[2732:3131]";
	setAttr ".gi" 106;
createNode groupParts -n "groupParts14";
	rename -uid "BB73ABFA-4840-5579-2281-73AEB84E1094";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "f[0:1441]";
	setAttr ".gi" 107;
createNode groupParts -n "groupParts15";
	rename -uid "0DC857F5-4F2E-2FCC-8C23-FF9C71F44F60";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 2 "f[2292:2731]" "f[3132:3571]";
	setAttr ".gi" 108;
createNode groupParts -n "groupParts16";
	rename -uid "443E424A-4AA5-FCFD-5950-BC9C77C09056";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "f[1442:1891]";
	setAttr ".gi" 109;
createNode groupParts -n "groupParts17";
	rename -uid "BF0CEC9F-44DD-6642-9F17-FD94CCB0B746";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[1892:2291]" "f[2732:3131]";
createNode groupParts -n "groupParts18";
	rename -uid "067FDAFB-4E9C-B0D2-871A-36857A0CDBC5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1441]";
createNode groupParts -n "groupParts19";
	rename -uid "F7EF172E-4902-59F0-1A41-919A85D4E4EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[2292:2731]" "f[3132:3571]";
createNode groupParts -n "groupParts20";
	rename -uid "CE7C3D65-40F3-95D3-BFB2-4A8787015B11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1442:1891]";
createNode groupId -n "groupId4";
	rename -uid "46255A5F-475B-552D-365D-B1883F2B227F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "EBA27D8A-43B9-68B8-7489-0F9EA1A76E37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "CDCB3556-437B-C484-A991-90B7DEE4748D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	rename -uid "C51B225F-41AF-254F-BE2C-1FA3C20C6BDA";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "AA2391C4-42AD-3950-B24B-02A2C441EF97";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 764\n            -height 604\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 737\n            -height 603\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 872\n            -height 603\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1535\n            -height 1251\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1535\\n    -height 1251\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1535\\n    -height 1251\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "67EB2189-4B96-2DF4-6DE8-709B7F683B45";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -19680.50517034794 -2069.692378075275 ;
	setAttr ".tgi[0].vh" -type "double2" -12792.261396443106 14674.90021052265 ;
	setAttr -s 17 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -14105.7138671875;
	setAttr ".tgi[0].ni[0].y" 6375.71435546875;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -13798.5712890625;
	setAttr ".tgi[0].ni[1].y" 6375.71435546875;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -254.28572082519531;
	setAttr ".tgi[0].ni[2].y" 22.857143402099609;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -561.4285888671875;
	setAttr ".tgi[0].ni[3].y" 1.4285714626312256;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -561.4285888671875;
	setAttr ".tgi[0].ni[4].y" 177.14285278320312;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 54.285713195800781;
	setAttr ".tgi[0].ni[5].y" 182.85714721679688;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 52.857143402099609;
	setAttr ".tgi[0].ni[6].y" 171.42857360839844;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -13798.5712890625;
	setAttr ".tgi[0].ni[7].y" 2040;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -14105.7138671875;
	setAttr ".tgi[0].ni[8].y" 10710;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" -13798.5712890625;
	setAttr ".tgi[0].ni[9].y" 10710;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 54.285713195800781;
	setAttr ".tgi[0].ni[10].y" 187.14285278320312;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 54.285713195800781;
	setAttr ".tgi[0].ni[11].y" 217.14285278320312;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 54.285713195800781;
	setAttr ".tgi[0].ni[12].y" 142.85714721679688;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 360;
	setAttr ".tgi[0].ni[13].y" 112.85713958740234;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" -254.28572082519531;
	setAttr ".tgi[0].ni[14].y" 198.57142639160156;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 52.857143402099609;
	setAttr ".tgi[0].ni[15].y" 182.85714721679688;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" -14105.7138671875;
	setAttr ".tgi[0].ni[16].y" 2040;
	setAttr ".tgi[0].ni[16].nvs" 1923;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hwi";
	setAttr -av ".ta";
	setAttr -av -k on ".tq";
	setAttr -av ".etmr";
	setAttr -av ".tmr";
	setAttr -av ".aoon";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".aosm";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".blen";
	setAttr -k on ".blat";
	setAttr -av ".msaa";
	setAttr -av ".aasc";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 11 ".st";
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
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -cb on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -cb on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
lockNode -l 0 -lu 1;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
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
	setAttr -cb on ".ai_override";
	setAttr -cb on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -cb on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
lockNode -l 0 -lu 1;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -cb on ".macc";
	setAttr -av -cb on ".macd";
	setAttr -av -cb on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -cb on ".ren";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs" 1;
	setAttr -av -k on ".ef" 10;
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -cb on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -cb on ".prm";
	setAttr -av -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -cb on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -cb on ".ope";
	setAttr -av -cb on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -av -k on ".hwcc";
	setAttr -av -k on ".hwdp";
	setAttr -av -k on ".hwql";
	setAttr -av -k on ".hwfr";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".bswa";
	setAttr -av -k on ".shml";
	setAttr -av -k on ".hwel";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :modelEditor1ViewSelectedSet;
	setAttr ".ihi" 0;
connectAttr "joints_layer.di" "joints_grp.do";
connectAttr "root_jnt_scaleConstraint1.csx" "root_jnt.sx";
connectAttr "root_jnt_scaleConstraint1.csy" "root_jnt.sy";
connectAttr "root_jnt_scaleConstraint1.csz" "root_jnt.sz";
connectAttr "root_jnt_parentConstraint1.ctx" "root_jnt.tx";
connectAttr "root_jnt_parentConstraint1.cty" "root_jnt.ty";
connectAttr "root_jnt_parentConstraint1.ctz" "root_jnt.tz";
connectAttr "root_jnt_parentConstraint1.crx" "root_jnt.rx";
connectAttr "root_jnt_parentConstraint1.cry" "root_jnt.ry";
connectAttr "root_jnt_parentConstraint1.crz" "root_jnt.rz";
connectAttr "root_jnt.s" "base_bnd_jnt.is";
connectAttr "base_bnd_jnt_scaleConstraint1.csx" "base_bnd_jnt.sx";
connectAttr "base_bnd_jnt_scaleConstraint1.csy" "base_bnd_jnt.sy";
connectAttr "base_bnd_jnt_scaleConstraint1.csz" "base_bnd_jnt.sz";
connectAttr "base_bnd_jnt_parentConstraint1.ctx" "base_bnd_jnt.tx";
connectAttr "base_bnd_jnt_parentConstraint1.cty" "base_bnd_jnt.ty";
connectAttr "base_bnd_jnt_parentConstraint1.ctz" "base_bnd_jnt.tz";
connectAttr "base_bnd_jnt_parentConstraint1.crx" "base_bnd_jnt.rx";
connectAttr "base_bnd_jnt_parentConstraint1.cry" "base_bnd_jnt.ry";
connectAttr "base_bnd_jnt_parentConstraint1.crz" "base_bnd_jnt.rz";
connectAttr "base_bnd_jnt.s" "mid_bnd_jnt.is";
connectAttr "mid_bnd_jnt_parentConstraint1.ctx" "mid_bnd_jnt.tx";
connectAttr "mid_bnd_jnt_parentConstraint1.cty" "mid_bnd_jnt.ty";
connectAttr "mid_bnd_jnt_parentConstraint1.ctz" "mid_bnd_jnt.tz";
connectAttr "mid_bnd_jnt_parentConstraint1.crx" "mid_bnd_jnt.rx";
connectAttr "mid_bnd_jnt_parentConstraint1.cry" "mid_bnd_jnt.ry";
connectAttr "mid_bnd_jnt_parentConstraint1.crz" "mid_bnd_jnt.rz";
connectAttr "mid_bnd_jnt.s" "top_bnd_jnt.is";
connectAttr "top_bnd_jnt_parentConstraint1.ctx" "top_bnd_jnt.tx";
connectAttr "top_bnd_jnt_parentConstraint1.cty" "top_bnd_jnt.ty";
connectAttr "top_bnd_jnt_parentConstraint1.ctz" "top_bnd_jnt.tz";
connectAttr "top_bnd_jnt_parentConstraint1.crx" "top_bnd_jnt.rx";
connectAttr "top_bnd_jnt_parentConstraint1.cry" "top_bnd_jnt.ry";
connectAttr "top_bnd_jnt_parentConstraint1.crz" "top_bnd_jnt.rz";
connectAttr "top_bnd_jnt.s" "L_brow_main_bnd_jnt.is";
connectAttr "L_brow_main_bnd_jnt_parentConstraint1.ctx" "L_brow_main_bnd_jnt.tx"
		;
connectAttr "L_brow_main_bnd_jnt_parentConstraint1.cty" "L_brow_main_bnd_jnt.ty"
		;
connectAttr "L_brow_main_bnd_jnt_parentConstraint1.ctz" "L_brow_main_bnd_jnt.tz"
		;
connectAttr "L_brow_main_bnd_jnt_parentConstraint1.crx" "L_brow_main_bnd_jnt.rx"
		;
connectAttr "L_brow_main_bnd_jnt_parentConstraint1.cry" "L_brow_main_bnd_jnt.ry"
		;
connectAttr "L_brow_main_bnd_jnt_parentConstraint1.crz" "L_brow_main_bnd_jnt.rz"
		;
connectAttr "L_brow_main_bnd_jnt.s" "L_outer_brow_bnd_jnt.is";
connectAttr "L_outer_brow_bnd_jnt_parentConstraint1.ctx" "L_outer_brow_bnd_jnt.tx"
		;
connectAttr "L_outer_brow_bnd_jnt_parentConstraint1.cty" "L_outer_brow_bnd_jnt.ty"
		;
connectAttr "L_outer_brow_bnd_jnt_parentConstraint1.ctz" "L_outer_brow_bnd_jnt.tz"
		;
connectAttr "L_outer_brow_bnd_jnt_parentConstraint1.crx" "L_outer_brow_bnd_jnt.rx"
		;
connectAttr "L_outer_brow_bnd_jnt_parentConstraint1.cry" "L_outer_brow_bnd_jnt.ry"
		;
connectAttr "L_outer_brow_bnd_jnt_parentConstraint1.crz" "L_outer_brow_bnd_jnt.rz"
		;
connectAttr "L_outer_brow_bnd_jnt.ro" "L_outer_brow_bnd_jnt_parentConstraint1.cro"
		;
connectAttr "L_outer_brow_bnd_jnt.pim" "L_outer_brow_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "L_outer_brow_bnd_jnt.rp" "L_outer_brow_bnd_jnt_parentConstraint1.crp"
		;
connectAttr "L_outer_brow_bnd_jnt.rpt" "L_outer_brow_bnd_jnt_parentConstraint1.crt"
		;
connectAttr "L_outer_brow_bnd_jnt.jo" "L_outer_brow_bnd_jnt_parentConstraint1.cjo"
		;
connectAttr "L_outer_brow_ctrl.t" "L_outer_brow_bnd_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_outer_brow_ctrl.rp" "L_outer_brow_bnd_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_outer_brow_ctrl.rpt" "L_outer_brow_bnd_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_outer_brow_ctrl.r" "L_outer_brow_bnd_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_outer_brow_ctrl.ro" "L_outer_brow_bnd_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_outer_brow_ctrl.s" "L_outer_brow_bnd_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_outer_brow_ctrl.pm" "L_outer_brow_bnd_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_outer_brow_bnd_jnt_parentConstraint1.w0" "L_outer_brow_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_brow_main_bnd_jnt.s" "L_mid_brow_bnd_jnt.is";
connectAttr "L_mid_brow_bnd_jnt_parentConstraint1.ctx" "L_mid_brow_bnd_jnt.tx";
connectAttr "L_mid_brow_bnd_jnt_parentConstraint1.cty" "L_mid_brow_bnd_jnt.ty";
connectAttr "L_mid_brow_bnd_jnt_parentConstraint1.ctz" "L_mid_brow_bnd_jnt.tz";
connectAttr "L_mid_brow_bnd_jnt_parentConstraint1.crx" "L_mid_brow_bnd_jnt.rx";
connectAttr "L_mid_brow_bnd_jnt_parentConstraint1.cry" "L_mid_brow_bnd_jnt.ry";
connectAttr "L_mid_brow_bnd_jnt_parentConstraint1.crz" "L_mid_brow_bnd_jnt.rz";
connectAttr "L_mid_brow_bnd_jnt.ro" "L_mid_brow_bnd_jnt_parentConstraint1.cro";
connectAttr "L_mid_brow_bnd_jnt.pim" "L_mid_brow_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "L_mid_brow_bnd_jnt.rp" "L_mid_brow_bnd_jnt_parentConstraint1.crp";
connectAttr "L_mid_brow_bnd_jnt.rpt" "L_mid_brow_bnd_jnt_parentConstraint1.crt";
connectAttr "L_mid_brow_bnd_jnt.jo" "L_mid_brow_bnd_jnt_parentConstraint1.cjo";
connectAttr "L_mid_brow_ctrl.t" "L_mid_brow_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "L_mid_brow_ctrl.rp" "L_mid_brow_bnd_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_mid_brow_ctrl.rpt" "L_mid_brow_bnd_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_mid_brow_ctrl.r" "L_mid_brow_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "L_mid_brow_ctrl.ro" "L_mid_brow_bnd_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_mid_brow_ctrl.s" "L_mid_brow_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "L_mid_brow_ctrl.pm" "L_mid_brow_bnd_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_mid_brow_bnd_jnt_parentConstraint1.w0" "L_mid_brow_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_brow_main_bnd_jnt.s" "L_inner_brow_bnd_jnt.is";
connectAttr "L_inner_brow_bnd_jnt_parentConstraint1.ctx" "L_inner_brow_bnd_jnt.tx"
		;
connectAttr "L_inner_brow_bnd_jnt_parentConstraint1.cty" "L_inner_brow_bnd_jnt.ty"
		;
connectAttr "L_inner_brow_bnd_jnt_parentConstraint1.ctz" "L_inner_brow_bnd_jnt.tz"
		;
connectAttr "L_inner_brow_bnd_jnt_parentConstraint1.crx" "L_inner_brow_bnd_jnt.rx"
		;
connectAttr "L_inner_brow_bnd_jnt_parentConstraint1.cry" "L_inner_brow_bnd_jnt.ry"
		;
connectAttr "L_inner_brow_bnd_jnt_parentConstraint1.crz" "L_inner_brow_bnd_jnt.rz"
		;
connectAttr "L_inner_brow_bnd_jnt.ro" "L_inner_brow_bnd_jnt_parentConstraint1.cro"
		;
connectAttr "L_inner_brow_bnd_jnt.pim" "L_inner_brow_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "L_inner_brow_bnd_jnt.rp" "L_inner_brow_bnd_jnt_parentConstraint1.crp"
		;
connectAttr "L_inner_brow_bnd_jnt.rpt" "L_inner_brow_bnd_jnt_parentConstraint1.crt"
		;
connectAttr "L_inner_brow_bnd_jnt.jo" "L_inner_brow_bnd_jnt_parentConstraint1.cjo"
		;
connectAttr "L_inner_brow_ctrl.t" "L_inner_brow_bnd_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_inner_brow_ctrl.rp" "L_inner_brow_bnd_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_inner_brow_ctrl.rpt" "L_inner_brow_bnd_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_inner_brow_ctrl.r" "L_inner_brow_bnd_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_inner_brow_ctrl.ro" "L_inner_brow_bnd_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_inner_brow_ctrl.s" "L_inner_brow_bnd_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_inner_brow_ctrl.pm" "L_inner_brow_bnd_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_inner_brow_bnd_jnt_parentConstraint1.w0" "L_inner_brow_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_brow_main_bnd_jnt.ro" "L_brow_main_bnd_jnt_parentConstraint1.cro"
		;
connectAttr "L_brow_main_bnd_jnt.pim" "L_brow_main_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "L_brow_main_bnd_jnt.rp" "L_brow_main_bnd_jnt_parentConstraint1.crp"
		;
connectAttr "L_brow_main_bnd_jnt.rpt" "L_brow_main_bnd_jnt_parentConstraint1.crt"
		;
connectAttr "L_brow_main_bnd_jnt.jo" "L_brow_main_bnd_jnt_parentConstraint1.cjo"
		;
connectAttr "L_brow_ctrl.t" "L_brow_main_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "L_brow_ctrl.rp" "L_brow_main_bnd_jnt_parentConstraint1.tg[0].trp";
connectAttr "L_brow_ctrl.rpt" "L_brow_main_bnd_jnt_parentConstraint1.tg[0].trt";
connectAttr "L_brow_ctrl.r" "L_brow_main_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "L_brow_ctrl.ro" "L_brow_main_bnd_jnt_parentConstraint1.tg[0].tro";
connectAttr "L_brow_ctrl.s" "L_brow_main_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "L_brow_ctrl.pm" "L_brow_main_bnd_jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_brow_main_bnd_jnt_parentConstraint1.w0" "L_brow_main_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "top_bnd_jnt.s" "R_brow_main_bnd_jnt.is";
connectAttr "R_brow_main_bnd_jnt_parentConstraint1.ctx" "R_brow_main_bnd_jnt.tx"
		;
connectAttr "R_brow_main_bnd_jnt_parentConstraint1.cty" "R_brow_main_bnd_jnt.ty"
		;
connectAttr "R_brow_main_bnd_jnt_parentConstraint1.ctz" "R_brow_main_bnd_jnt.tz"
		;
connectAttr "R_brow_main_bnd_jnt_parentConstraint1.crx" "R_brow_main_bnd_jnt.rx"
		;
connectAttr "R_brow_main_bnd_jnt_parentConstraint1.cry" "R_brow_main_bnd_jnt.ry"
		;
connectAttr "R_brow_main_bnd_jnt_parentConstraint1.crz" "R_brow_main_bnd_jnt.rz"
		;
connectAttr "R_brow_main_bnd_jnt.s" "R_outer_brow_bnd_jnt.is";
connectAttr "R_outer_brow_bnd_jnt_parentConstraint1.ctx" "R_outer_brow_bnd_jnt.tx"
		;
connectAttr "R_outer_brow_bnd_jnt_parentConstraint1.cty" "R_outer_brow_bnd_jnt.ty"
		;
connectAttr "R_outer_brow_bnd_jnt_parentConstraint1.ctz" "R_outer_brow_bnd_jnt.tz"
		;
connectAttr "R_outer_brow_bnd_jnt_parentConstraint1.crx" "R_outer_brow_bnd_jnt.rx"
		;
connectAttr "R_outer_brow_bnd_jnt_parentConstraint1.cry" "R_outer_brow_bnd_jnt.ry"
		;
connectAttr "R_outer_brow_bnd_jnt_parentConstraint1.crz" "R_outer_brow_bnd_jnt.rz"
		;
connectAttr "R_outer_brow_bnd_jnt.ro" "R_outer_brow_bnd_jnt_parentConstraint1.cro"
		;
connectAttr "R_outer_brow_bnd_jnt.pim" "R_outer_brow_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "R_outer_brow_bnd_jnt.rp" "R_outer_brow_bnd_jnt_parentConstraint1.crp"
		;
connectAttr "R_outer_brow_bnd_jnt.rpt" "R_outer_brow_bnd_jnt_parentConstraint1.crt"
		;
connectAttr "R_outer_brow_bnd_jnt.jo" "R_outer_brow_bnd_jnt_parentConstraint1.cjo"
		;
connectAttr "R_outer_brow_ctrl.t" "R_outer_brow_bnd_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_outer_brow_ctrl.rp" "R_outer_brow_bnd_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_outer_brow_ctrl.rpt" "R_outer_brow_bnd_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_outer_brow_ctrl.r" "R_outer_brow_bnd_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_outer_brow_ctrl.ro" "R_outer_brow_bnd_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_outer_brow_ctrl.s" "R_outer_brow_bnd_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_outer_brow_ctrl.pm" "R_outer_brow_bnd_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_outer_brow_bnd_jnt_parentConstraint1.w0" "R_outer_brow_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_brow_main_bnd_jnt.s" "R_mid_brow_bnd_jnt.is";
connectAttr "R_mid_brow_bnd_jnt_parentConstraint1.ctx" "R_mid_brow_bnd_jnt.tx";
connectAttr "R_mid_brow_bnd_jnt_parentConstraint1.cty" "R_mid_brow_bnd_jnt.ty";
connectAttr "R_mid_brow_bnd_jnt_parentConstraint1.ctz" "R_mid_brow_bnd_jnt.tz";
connectAttr "R_mid_brow_bnd_jnt_parentConstraint1.crx" "R_mid_brow_bnd_jnt.rx";
connectAttr "R_mid_brow_bnd_jnt_parentConstraint1.cry" "R_mid_brow_bnd_jnt.ry";
connectAttr "R_mid_brow_bnd_jnt_parentConstraint1.crz" "R_mid_brow_bnd_jnt.rz";
connectAttr "R_mid_brow_bnd_jnt.ro" "R_mid_brow_bnd_jnt_parentConstraint1.cro";
connectAttr "R_mid_brow_bnd_jnt.pim" "R_mid_brow_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "R_mid_brow_bnd_jnt.rp" "R_mid_brow_bnd_jnt_parentConstraint1.crp";
connectAttr "R_mid_brow_bnd_jnt.rpt" "R_mid_brow_bnd_jnt_parentConstraint1.crt";
connectAttr "R_mid_brow_bnd_jnt.jo" "R_mid_brow_bnd_jnt_parentConstraint1.cjo";
connectAttr "R_mid_brow_ctrl.t" "R_mid_brow_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "R_mid_brow_ctrl.rp" "R_mid_brow_bnd_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_mid_brow_ctrl.rpt" "R_mid_brow_bnd_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_mid_brow_ctrl.r" "R_mid_brow_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "R_mid_brow_ctrl.ro" "R_mid_brow_bnd_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_mid_brow_ctrl.s" "R_mid_brow_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "R_mid_brow_ctrl.pm" "R_mid_brow_bnd_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_mid_brow_bnd_jnt_parentConstraint1.w0" "R_mid_brow_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_brow_main_bnd_jnt.s" "R_inner_brow_bnd_jnt.is";
connectAttr "R_inner_brow_bnd_jnt_parentConstraint1.ctx" "R_inner_brow_bnd_jnt.tx"
		;
connectAttr "R_inner_brow_bnd_jnt_parentConstraint1.cty" "R_inner_brow_bnd_jnt.ty"
		;
connectAttr "R_inner_brow_bnd_jnt_parentConstraint1.ctz" "R_inner_brow_bnd_jnt.tz"
		;
connectAttr "R_inner_brow_bnd_jnt_parentConstraint1.crx" "R_inner_brow_bnd_jnt.rx"
		;
connectAttr "R_inner_brow_bnd_jnt_parentConstraint1.cry" "R_inner_brow_bnd_jnt.ry"
		;
connectAttr "R_inner_brow_bnd_jnt_parentConstraint1.crz" "R_inner_brow_bnd_jnt.rz"
		;
connectAttr "R_inner_brow_bnd_jnt.ro" "R_inner_brow_bnd_jnt_parentConstraint1.cro"
		;
connectAttr "R_inner_brow_bnd_jnt.pim" "R_inner_brow_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "R_inner_brow_bnd_jnt.rp" "R_inner_brow_bnd_jnt_parentConstraint1.crp"
		;
connectAttr "R_inner_brow_bnd_jnt.rpt" "R_inner_brow_bnd_jnt_parentConstraint1.crt"
		;
connectAttr "R_inner_brow_bnd_jnt.jo" "R_inner_brow_bnd_jnt_parentConstraint1.cjo"
		;
connectAttr "R_inner_brow_ctrl.t" "R_inner_brow_bnd_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_inner_brow_ctrl.rp" "R_inner_brow_bnd_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_inner_brow_ctrl.rpt" "R_inner_brow_bnd_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_inner_brow_ctrl.r" "R_inner_brow_bnd_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_inner_brow_ctrl.ro" "R_inner_brow_bnd_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_inner_brow_ctrl.s" "R_inner_brow_bnd_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_inner_brow_ctrl.pm" "R_inner_brow_bnd_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_inner_brow_bnd_jnt_parentConstraint1.w0" "R_inner_brow_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_brow_main_bnd_jnt.ro" "R_brow_main_bnd_jnt_parentConstraint1.cro"
		;
connectAttr "R_brow_main_bnd_jnt.pim" "R_brow_main_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "R_brow_main_bnd_jnt.rp" "R_brow_main_bnd_jnt_parentConstraint1.crp"
		;
connectAttr "R_brow_main_bnd_jnt.rpt" "R_brow_main_bnd_jnt_parentConstraint1.crt"
		;
connectAttr "R_brow_main_bnd_jnt.jo" "R_brow_main_bnd_jnt_parentConstraint1.cjo"
		;
connectAttr "R_brow_ctrl.t" "R_brow_main_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "R_brow_ctrl.rp" "R_brow_main_bnd_jnt_parentConstraint1.tg[0].trp";
connectAttr "R_brow_ctrl.rpt" "R_brow_main_bnd_jnt_parentConstraint1.tg[0].trt";
connectAttr "R_brow_ctrl.r" "R_brow_main_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "R_brow_ctrl.ro" "R_brow_main_bnd_jnt_parentConstraint1.tg[0].tro";
connectAttr "R_brow_ctrl.s" "R_brow_main_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "R_brow_ctrl.pm" "R_brow_main_bnd_jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_brow_main_bnd_jnt_parentConstraint1.w0" "R_brow_main_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "top_bnd_jnt.s" "R_eyeball_bnd_jnt.is";
connectAttr "R_eyeball_bnd_jnt_aimConstraint1.crx" "R_eyeball_bnd_jnt.rx";
connectAttr "R_eyeball_bnd_jnt_aimConstraint1.cry" "R_eyeball_bnd_jnt.ry";
connectAttr "R_eyeball_bnd_jnt_aimConstraint1.crz" "R_eyeball_bnd_jnt.rz";
connectAttr "R_eyeball_bnd_jnt_translateX.o" "R_eyeball_bnd_jnt.tx";
connectAttr "R_eyeball_bnd_jnt_scaleX.o" "R_eyeball_bnd_jnt.sx";
connectAttr "R_eyeball_bnd_jnt_scaleY.o" "R_eyeball_bnd_jnt.sy";
connectAttr "R_eyeball_bnd_jnt_scaleZ.o" "R_eyeball_bnd_jnt.sz";
connectAttr "R_eyeball_bnd_jnt.pim" "R_eyeball_bnd_jnt_aimConstraint1.cpim";
connectAttr "R_eyeball_bnd_jnt.t" "R_eyeball_bnd_jnt_aimConstraint1.ct";
connectAttr "R_eyeball_bnd_jnt.rp" "R_eyeball_bnd_jnt_aimConstraint1.crp";
connectAttr "R_eyeball_bnd_jnt.rpt" "R_eyeball_bnd_jnt_aimConstraint1.crt";
connectAttr "R_eyeball_bnd_jnt.ro" "R_eyeball_bnd_jnt_aimConstraint1.cro";
connectAttr "R_eyeball_bnd_jnt.jo" "R_eyeball_bnd_jnt_aimConstraint1.cjo";
connectAttr "R_eyeball_bnd_jnt.is" "R_eyeball_bnd_jnt_aimConstraint1.is";
connectAttr "R_eye_ctrl.t" "R_eyeball_bnd_jnt_aimConstraint1.tg[0].tt";
connectAttr "R_eye_ctrl.rp" "R_eyeball_bnd_jnt_aimConstraint1.tg[0].trp";
connectAttr "R_eye_ctrl.rpt" "R_eyeball_bnd_jnt_aimConstraint1.tg[0].trt";
connectAttr "R_eye_ctrl.pm" "R_eyeball_bnd_jnt_aimConstraint1.tg[0].tpm";
connectAttr "R_eyeball_bnd_jnt_aimConstraint1.w0" "R_eyeball_bnd_jnt_aimConstraint1.tg[0].tw"
		;
connectAttr "R_eyeball_bnd_jnt.s" "R_lowerlid_bnd_jnt.is";
connectAttr "unitConversion7.o" "R_lowerlid_bnd_jnt.rx";
connectAttr "unitConversion8.o" "R_lowerlid_bnd_jnt.rz";
connectAttr "R_eyeball_bnd_jnt.s" "R_upperlid_bnd_jnt.is";
connectAttr "unitConversion5.o" "R_upperlid_bnd_jnt.rx";
connectAttr "unitConversion6.o" "R_upperlid_bnd_jnt.rz";
connectAttr "top_bnd_jnt.s" "L_eyeball_bnd_jnt.is";
connectAttr "L_eyeball_bnd_jnt_aimConstraint1.crx" "L_eyeball_bnd_jnt.rx";
connectAttr "L_eyeball_bnd_jnt_aimConstraint1.cry" "L_eyeball_bnd_jnt.ry";
connectAttr "L_eyeball_bnd_jnt_aimConstraint1.crz" "L_eyeball_bnd_jnt.rz";
connectAttr "L_eyeball_bnd_jnt_translateX.o" "L_eyeball_bnd_jnt.tx";
connectAttr "L_eyeball_bnd_jnt_scaleX.o" "L_eyeball_bnd_jnt.sx";
connectAttr "L_eyeball_bnd_jnt_scaleY.o" "L_eyeball_bnd_jnt.sy";
connectAttr "L_eyeball_bnd_jnt_scaleZ.o" "L_eyeball_bnd_jnt.sz";
connectAttr "L_eyeball_bnd_jnt.pim" "L_eyeball_bnd_jnt_aimConstraint1.cpim";
connectAttr "L_eyeball_bnd_jnt.t" "L_eyeball_bnd_jnt_aimConstraint1.ct";
connectAttr "L_eyeball_bnd_jnt.rp" "L_eyeball_bnd_jnt_aimConstraint1.crp";
connectAttr "L_eyeball_bnd_jnt.rpt" "L_eyeball_bnd_jnt_aimConstraint1.crt";
connectAttr "L_eyeball_bnd_jnt.ro" "L_eyeball_bnd_jnt_aimConstraint1.cro";
connectAttr "L_eyeball_bnd_jnt.jo" "L_eyeball_bnd_jnt_aimConstraint1.cjo";
connectAttr "L_eyeball_bnd_jnt.is" "L_eyeball_bnd_jnt_aimConstraint1.is";
connectAttr "L_eye_ctrl.t" "L_eyeball_bnd_jnt_aimConstraint1.tg[0].tt";
connectAttr "L_eye_ctrl.rp" "L_eyeball_bnd_jnt_aimConstraint1.tg[0].trp";
connectAttr "L_eye_ctrl.rpt" "L_eyeball_bnd_jnt_aimConstraint1.tg[0].trt";
connectAttr "L_eye_ctrl.pm" "L_eyeball_bnd_jnt_aimConstraint1.tg[0].tpm";
connectAttr "L_eyeball_bnd_jnt_aimConstraint1.w0" "L_eyeball_bnd_jnt_aimConstraint1.tg[0].tw"
		;
connectAttr "L_eyeball_bnd_jnt.s" "L_upperlid_bnd_jnt.is";
connectAttr "unitConversion1.o" "L_upperlid_bnd_jnt.rx";
connectAttr "unitConversion2.o" "L_upperlid_bnd_jnt.rz";
connectAttr "L_eyeball_bnd_jnt.s" "L_lowerlid_bnd_jnt.is";
connectAttr "unitConversion3.o" "L_lowerlid_bnd_jnt.rx";
connectAttr "unitConversion4.o" "L_lowerlid_bnd_jnt.rz";
connectAttr "top_bnd_jnt.ro" "top_bnd_jnt_parentConstraint1.cro";
connectAttr "top_bnd_jnt.pim" "top_bnd_jnt_parentConstraint1.cpim";
connectAttr "top_bnd_jnt.rp" "top_bnd_jnt_parentConstraint1.crp";
connectAttr "top_bnd_jnt.rpt" "top_bnd_jnt_parentConstraint1.crt";
connectAttr "top_bnd_jnt.jo" "top_bnd_jnt_parentConstraint1.cjo";
connectAttr "top_ctrl.t" "top_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "top_ctrl.rp" "top_bnd_jnt_parentConstraint1.tg[0].trp";
connectAttr "top_ctrl.rpt" "top_bnd_jnt_parentConstraint1.tg[0].trt";
connectAttr "top_ctrl.r" "top_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "top_ctrl.ro" "top_bnd_jnt_parentConstraint1.tg[0].tro";
connectAttr "top_ctrl.s" "top_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "top_ctrl.pm" "top_bnd_jnt_parentConstraint1.tg[0].tpm";
connectAttr "top_bnd_jnt_parentConstraint1.w0" "top_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "mid_bnd_jnt.s" "R_shoulder_bnd_jnt.is";
connectAttr "R_shoulder_bnd_jnt_parentConstraint1.ctx" "R_shoulder_bnd_jnt.tx";
connectAttr "R_shoulder_bnd_jnt_parentConstraint1.cty" "R_shoulder_bnd_jnt.ty";
connectAttr "R_shoulder_bnd_jnt_parentConstraint1.ctz" "R_shoulder_bnd_jnt.tz";
connectAttr "R_shoulder_bnd_jnt_parentConstraint1.crx" "R_shoulder_bnd_jnt.rx";
connectAttr "R_shoulder_bnd_jnt_parentConstraint1.cry" "R_shoulder_bnd_jnt.ry";
connectAttr "R_shoulder_bnd_jnt_parentConstraint1.crz" "R_shoulder_bnd_jnt.rz";
connectAttr "R_shoulder_bnd_jnt.s" "R_elbow_bnd_jnt.is";
connectAttr "R_elbow_bnd_jnt_parentConstraint1.ctx" "R_elbow_bnd_jnt.tx";
connectAttr "R_elbow_bnd_jnt_parentConstraint1.cty" "R_elbow_bnd_jnt.ty";
connectAttr "R_elbow_bnd_jnt_parentConstraint1.ctz" "R_elbow_bnd_jnt.tz";
connectAttr "R_elbow_bnd_jnt_parentConstraint1.crx" "R_elbow_bnd_jnt.rx";
connectAttr "R_elbow_bnd_jnt_parentConstraint1.cry" "R_elbow_bnd_jnt.ry";
connectAttr "R_elbow_bnd_jnt_parentConstraint1.crz" "R_elbow_bnd_jnt.rz";
connectAttr "R_elbow_bnd_jnt.s" "R_wrist_bnd_jnt.is";
connectAttr "R_wrist_bnd_jnt_parentConstraint1.ctx" "R_wrist_bnd_jnt.tx";
connectAttr "R_wrist_bnd_jnt_parentConstraint1.cty" "R_wrist_bnd_jnt.ty";
connectAttr "R_wrist_bnd_jnt_parentConstraint1.ctz" "R_wrist_bnd_jnt.tz";
connectAttr "R_wrist_bnd_jnt_parentConstraint1.crx" "R_wrist_bnd_jnt.rx";
connectAttr "R_wrist_bnd_jnt_parentConstraint1.cry" "R_wrist_bnd_jnt.ry";
connectAttr "R_wrist_bnd_jnt_parentConstraint1.crz" "R_wrist_bnd_jnt.rz";
connectAttr "R_wrist_bnd_jnt.ro" "R_wrist_bnd_jnt_parentConstraint1.cro";
connectAttr "R_wrist_bnd_jnt.pim" "R_wrist_bnd_jnt_parentConstraint1.cpim";
connectAttr "R_wrist_bnd_jnt.rp" "R_wrist_bnd_jnt_parentConstraint1.crp";
connectAttr "R_wrist_bnd_jnt.rpt" "R_wrist_bnd_jnt_parentConstraint1.crt";
connectAttr "R_wrist_bnd_jnt.jo" "R_wrist_bnd_jnt_parentConstraint1.cjo";
connectAttr "R_wrist_ctrl.t" "R_wrist_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "R_wrist_ctrl.rp" "R_wrist_bnd_jnt_parentConstraint1.tg[0].trp";
connectAttr "R_wrist_ctrl.rpt" "R_wrist_bnd_jnt_parentConstraint1.tg[0].trt";
connectAttr "R_wrist_ctrl.r" "R_wrist_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "R_wrist_ctrl.ro" "R_wrist_bnd_jnt_parentConstraint1.tg[0].tro";
connectAttr "R_wrist_ctrl.s" "R_wrist_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "R_wrist_ctrl.pm" "R_wrist_bnd_jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_wrist_bnd_jnt_parentConstraint1.w0" "R_wrist_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_elbow_bnd_jnt.ro" "R_elbow_bnd_jnt_parentConstraint1.cro";
connectAttr "R_elbow_bnd_jnt.pim" "R_elbow_bnd_jnt_parentConstraint1.cpim";
connectAttr "R_elbow_bnd_jnt.rp" "R_elbow_bnd_jnt_parentConstraint1.crp";
connectAttr "R_elbow_bnd_jnt.rpt" "R_elbow_bnd_jnt_parentConstraint1.crt";
connectAttr "R_elbow_bnd_jnt.jo" "R_elbow_bnd_jnt_parentConstraint1.cjo";
connectAttr "R_elbow_ctrl.t" "R_elbow_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "R_elbow_ctrl.rp" "R_elbow_bnd_jnt_parentConstraint1.tg[0].trp";
connectAttr "R_elbow_ctrl.rpt" "R_elbow_bnd_jnt_parentConstraint1.tg[0].trt";
connectAttr "R_elbow_ctrl.r" "R_elbow_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "R_elbow_ctrl.ro" "R_elbow_bnd_jnt_parentConstraint1.tg[0].tro";
connectAttr "R_elbow_ctrl.s" "R_elbow_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "R_elbow_ctrl.pm" "R_elbow_bnd_jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_elbow_bnd_jnt_parentConstraint1.w0" "R_elbow_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_shoulder_bnd_jnt.ro" "R_shoulder_bnd_jnt_parentConstraint1.cro";
connectAttr "R_shoulder_bnd_jnt.pim" "R_shoulder_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "R_shoulder_bnd_jnt.rp" "R_shoulder_bnd_jnt_parentConstraint1.crp";
connectAttr "R_shoulder_bnd_jnt.rpt" "R_shoulder_bnd_jnt_parentConstraint1.crt";
connectAttr "R_shoulder_bnd_jnt.jo" "R_shoulder_bnd_jnt_parentConstraint1.cjo";
connectAttr "R_shoulder_ctrl.t" "R_shoulder_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "R_shoulder_ctrl.rp" "R_shoulder_bnd_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_shoulder_ctrl.rpt" "R_shoulder_bnd_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_shoulder_ctrl.r" "R_shoulder_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "R_shoulder_ctrl.ro" "R_shoulder_bnd_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_shoulder_ctrl.s" "R_shoulder_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "R_shoulder_ctrl.pm" "R_shoulder_bnd_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_shoulder_bnd_jnt_parentConstraint1.w0" "R_shoulder_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "mid_bnd_jnt.ro" "mid_bnd_jnt_parentConstraint1.cro";
connectAttr "mid_bnd_jnt.pim" "mid_bnd_jnt_parentConstraint1.cpim";
connectAttr "mid_bnd_jnt.rp" "mid_bnd_jnt_parentConstraint1.crp";
connectAttr "mid_bnd_jnt.rpt" "mid_bnd_jnt_parentConstraint1.crt";
connectAttr "mid_bnd_jnt.jo" "mid_bnd_jnt_parentConstraint1.cjo";
connectAttr "mid_ctrl.t" "mid_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "mid_ctrl.rp" "mid_bnd_jnt_parentConstraint1.tg[0].trp";
connectAttr "mid_ctrl.rpt" "mid_bnd_jnt_parentConstraint1.tg[0].trt";
connectAttr "mid_ctrl.r" "mid_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "mid_ctrl.ro" "mid_bnd_jnt_parentConstraint1.tg[0].tro";
connectAttr "mid_ctrl.s" "mid_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "mid_ctrl.pm" "mid_bnd_jnt_parentConstraint1.tg[0].tpm";
connectAttr "mid_bnd_jnt_parentConstraint1.w0" "mid_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "base_bnd_jnt.s" "L_shoulder_bnd_jnt.is";
connectAttr "L_shoulder_bnd_jnt_parentConstraint1.ctx" "L_shoulder_bnd_jnt.tx";
connectAttr "L_shoulder_bnd_jnt_parentConstraint1.cty" "L_shoulder_bnd_jnt.ty";
connectAttr "L_shoulder_bnd_jnt_parentConstraint1.ctz" "L_shoulder_bnd_jnt.tz";
connectAttr "L_shoulder_bnd_jnt_parentConstraint1.crx" "L_shoulder_bnd_jnt.rx";
connectAttr "L_shoulder_bnd_jnt_parentConstraint1.cry" "L_shoulder_bnd_jnt.ry";
connectAttr "L_shoulder_bnd_jnt_parentConstraint1.crz" "L_shoulder_bnd_jnt.rz";
connectAttr "L_shoulder_bnd_jnt.s" "L_elbow_bnd_jnt.is";
connectAttr "L_elbow_bnd_jnt_parentConstraint1.ctx" "L_elbow_bnd_jnt.tx";
connectAttr "L_elbow_bnd_jnt_parentConstraint1.cty" "L_elbow_bnd_jnt.ty";
connectAttr "L_elbow_bnd_jnt_parentConstraint1.ctz" "L_elbow_bnd_jnt.tz";
connectAttr "L_elbow_bnd_jnt_parentConstraint1.crx" "L_elbow_bnd_jnt.rx";
connectAttr "L_elbow_bnd_jnt_parentConstraint1.cry" "L_elbow_bnd_jnt.ry";
connectAttr "L_elbow_bnd_jnt_parentConstraint1.crz" "L_elbow_bnd_jnt.rz";
connectAttr "L_elbow_bnd_jnt.s" "L_wrist_bnd_jnt.is";
connectAttr "L_wrist_bnd_jnt_parentConstraint1.ctx" "L_wrist_bnd_jnt.tx";
connectAttr "L_wrist_bnd_jnt_parentConstraint1.cty" "L_wrist_bnd_jnt.ty";
connectAttr "L_wrist_bnd_jnt_parentConstraint1.ctz" "L_wrist_bnd_jnt.tz";
connectAttr "L_wrist_bnd_jnt_parentConstraint1.crx" "L_wrist_bnd_jnt.rx";
connectAttr "L_wrist_bnd_jnt_parentConstraint1.cry" "L_wrist_bnd_jnt.ry";
connectAttr "L_wrist_bnd_jnt_parentConstraint1.crz" "L_wrist_bnd_jnt.rz";
connectAttr "L_wrist_bnd_jnt.ro" "L_wrist_bnd_jnt_parentConstraint1.cro";
connectAttr "L_wrist_bnd_jnt.pim" "L_wrist_bnd_jnt_parentConstraint1.cpim";
connectAttr "L_wrist_bnd_jnt.rp" "L_wrist_bnd_jnt_parentConstraint1.crp";
connectAttr "L_wrist_bnd_jnt.rpt" "L_wrist_bnd_jnt_parentConstraint1.crt";
connectAttr "L_wrist_bnd_jnt.jo" "L_wrist_bnd_jnt_parentConstraint1.cjo";
connectAttr "L_wrist_ctrl.t" "L_wrist_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "L_wrist_ctrl.rp" "L_wrist_bnd_jnt_parentConstraint1.tg[0].trp";
connectAttr "L_wrist_ctrl.rpt" "L_wrist_bnd_jnt_parentConstraint1.tg[0].trt";
connectAttr "L_wrist_ctrl.r" "L_wrist_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "L_wrist_ctrl.ro" "L_wrist_bnd_jnt_parentConstraint1.tg[0].tro";
connectAttr "L_wrist_ctrl.s" "L_wrist_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "L_wrist_ctrl.pm" "L_wrist_bnd_jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_wrist_bnd_jnt_parentConstraint1.w0" "L_wrist_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_elbow_bnd_jnt.ro" "L_elbow_bnd_jnt_parentConstraint1.cro";
connectAttr "L_elbow_bnd_jnt.pim" "L_elbow_bnd_jnt_parentConstraint1.cpim";
connectAttr "L_elbow_bnd_jnt.rp" "L_elbow_bnd_jnt_parentConstraint1.crp";
connectAttr "L_elbow_bnd_jnt.rpt" "L_elbow_bnd_jnt_parentConstraint1.crt";
connectAttr "L_elbow_bnd_jnt.jo" "L_elbow_bnd_jnt_parentConstraint1.cjo";
connectAttr "L_elbow_ctrl.t" "L_elbow_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "L_elbow_ctrl.rp" "L_elbow_bnd_jnt_parentConstraint1.tg[0].trp";
connectAttr "L_elbow_ctrl.rpt" "L_elbow_bnd_jnt_parentConstraint1.tg[0].trt";
connectAttr "L_elbow_ctrl.r" "L_elbow_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "L_elbow_ctrl.ro" "L_elbow_bnd_jnt_parentConstraint1.tg[0].tro";
connectAttr "L_elbow_ctrl.s" "L_elbow_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "L_elbow_ctrl.pm" "L_elbow_bnd_jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_elbow_bnd_jnt_parentConstraint1.w0" "L_elbow_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_shoulder_bnd_jnt.ro" "L_shoulder_bnd_jnt_parentConstraint1.cro";
connectAttr "L_shoulder_bnd_jnt.pim" "L_shoulder_bnd_jnt_parentConstraint1.cpim"
		;
connectAttr "L_shoulder_bnd_jnt.rp" "L_shoulder_bnd_jnt_parentConstraint1.crp";
connectAttr "L_shoulder_bnd_jnt.rpt" "L_shoulder_bnd_jnt_parentConstraint1.crt";
connectAttr "L_shoulder_bnd_jnt.jo" "L_shoulder_bnd_jnt_parentConstraint1.cjo";
connectAttr "L_shoulder_ctrl.t" "L_shoulder_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "L_shoulder_ctrl.rp" "L_shoulder_bnd_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_shoulder_ctrl.rpt" "L_shoulder_bnd_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_shoulder_ctrl.r" "L_shoulder_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "L_shoulder_ctrl.ro" "L_shoulder_bnd_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_shoulder_ctrl.s" "L_shoulder_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "L_shoulder_ctrl.pm" "L_shoulder_bnd_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_shoulder_bnd_jnt_parentConstraint1.w0" "L_shoulder_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "base_bnd_jnt.ro" "base_bnd_jnt_parentConstraint1.cro";
connectAttr "base_bnd_jnt.pim" "base_bnd_jnt_parentConstraint1.cpim";
connectAttr "base_bnd_jnt.rp" "base_bnd_jnt_parentConstraint1.crp";
connectAttr "base_bnd_jnt.rpt" "base_bnd_jnt_parentConstraint1.crt";
connectAttr "base_bnd_jnt.jo" "base_bnd_jnt_parentConstraint1.cjo";
connectAttr "base_ctrl.t" "base_bnd_jnt_parentConstraint1.tg[0].tt";
connectAttr "base_ctrl.rp" "base_bnd_jnt_parentConstraint1.tg[0].trp";
connectAttr "base_ctrl.rpt" "base_bnd_jnt_parentConstraint1.tg[0].trt";
connectAttr "base_ctrl.r" "base_bnd_jnt_parentConstraint1.tg[0].tr";
connectAttr "base_ctrl.ro" "base_bnd_jnt_parentConstraint1.tg[0].tro";
connectAttr "base_ctrl.s" "base_bnd_jnt_parentConstraint1.tg[0].ts";
connectAttr "base_ctrl.pm" "base_bnd_jnt_parentConstraint1.tg[0].tpm";
connectAttr "base_bnd_jnt_parentConstraint1.w0" "base_bnd_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "base_bnd_jnt.ssc" "base_bnd_jnt_scaleConstraint1.tsc";
connectAttr "base_bnd_jnt.pim" "base_bnd_jnt_scaleConstraint1.cpim";
connectAttr "base_ctrl.s" "base_bnd_jnt_scaleConstraint1.tg[0].ts";
connectAttr "base_ctrl.pm" "base_bnd_jnt_scaleConstraint1.tg[0].tpm";
connectAttr "base_bnd_jnt_scaleConstraint1.w0" "base_bnd_jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "root_jnt.ro" "root_jnt_parentConstraint1.cro";
connectAttr "root_jnt.pim" "root_jnt_parentConstraint1.cpim";
connectAttr "root_jnt.rp" "root_jnt_parentConstraint1.crp";
connectAttr "root_jnt.rpt" "root_jnt_parentConstraint1.crt";
connectAttr "root_jnt.jo" "root_jnt_parentConstraint1.cjo";
connectAttr "root_ctrl.t" "root_jnt_parentConstraint1.tg[0].tt";
connectAttr "root_ctrl.rp" "root_jnt_parentConstraint1.tg[0].trp";
connectAttr "root_ctrl.rpt" "root_jnt_parentConstraint1.tg[0].trt";
connectAttr "root_ctrl.r" "root_jnt_parentConstraint1.tg[0].tr";
connectAttr "root_ctrl.ro" "root_jnt_parentConstraint1.tg[0].tro";
connectAttr "root_ctrl.s" "root_jnt_parentConstraint1.tg[0].ts";
connectAttr "root_ctrl.pm" "root_jnt_parentConstraint1.tg[0].tpm";
connectAttr "root_jnt_parentConstraint1.w0" "root_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "root_jnt.pim" "root_jnt_scaleConstraint1.cpim";
connectAttr "root_ctrl.s" "root_jnt_scaleConstraint1.tg[0].ts";
connectAttr "root_ctrl.pm" "root_jnt_scaleConstraint1.tg[0].tpm";
connectAttr "root_jnt_scaleConstraint1.w0" "root_jnt_scaleConstraint1.tg[0].tw";
connectAttr "mesh_layer.di" "mesh_grp.do";
connectAttr "groupParts20.og" "Clippy_meshShape.i";
connectAttr "groupId1.id" "Clippy_meshShape.iog.og[0].gid";
connectAttr "phongE3SG.mwc" "Clippy_meshShape.iog.og[0].gco";
connectAttr "groupId2.id" "Clippy_meshShape.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "Clippy_meshShape.iog.og[1].gco";
connectAttr "groupId3.id" "Clippy_meshShape.iog.og[2].gid";
connectAttr "blinn2SG.mwc" "Clippy_meshShape.iog.og[2].gco";
connectAttr "groupId4.id" "Clippy_meshShape.iog.og[3].gid";
connectAttr "blinn3SG.mwc" "Clippy_meshShape.iog.og[3].gco";
connectAttr "eyes_grp_parentConstraint1.ctx" "eyes_grp.tx";
connectAttr "eyes_grp_parentConstraint1.cty" "eyes_grp.ty";
connectAttr "eyes_grp_parentConstraint1.ctz" "eyes_grp.tz";
connectAttr "eyes_grp_parentConstraint1.crx" "eyes_grp.rx";
connectAttr "eyes_grp_parentConstraint1.cry" "eyes_grp.ry";
connectAttr "eyes_grp_parentConstraint1.crz" "eyes_grp.rz";
connectAttr "eyes_grp.ro" "eyes_grp_parentConstraint1.cro";
connectAttr "eyes_grp.pim" "eyes_grp_parentConstraint1.cpim";
connectAttr "eyes_grp.rp" "eyes_grp_parentConstraint1.crp";
connectAttr "eyes_grp.rpt" "eyes_grp_parentConstraint1.crt";
connectAttr "top_ctrl.t" "eyes_grp_parentConstraint1.tg[0].tt";
connectAttr "top_ctrl.rp" "eyes_grp_parentConstraint1.tg[0].trp";
connectAttr "top_ctrl.rpt" "eyes_grp_parentConstraint1.tg[0].trt";
connectAttr "top_ctrl.r" "eyes_grp_parentConstraint1.tg[0].tr";
connectAttr "top_ctrl.ro" "eyes_grp_parentConstraint1.tg[0].tro";
connectAttr "top_ctrl.s" "eyes_grp_parentConstraint1.tg[0].ts";
connectAttr "top_ctrl.pm" "eyes_grp_parentConstraint1.tg[0].tpm";
connectAttr "eyes_grp_parentConstraint1.w0" "eyes_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "root_ctrl.t" "eyes_grp_parentConstraint1.tg[1].tt";
connectAttr "root_ctrl.rp" "eyes_grp_parentConstraint1.tg[1].trp";
connectAttr "root_ctrl.rpt" "eyes_grp_parentConstraint1.tg[1].trt";
connectAttr "root_ctrl.r" "eyes_grp_parentConstraint1.tg[1].tr";
connectAttr "root_ctrl.ro" "eyes_grp_parentConstraint1.tg[1].tro";
connectAttr "root_ctrl.s" "eyes_grp_parentConstraint1.tg[1].ts";
connectAttr "root_ctrl.pm" "eyes_grp_parentConstraint1.tg[1].tpm";
connectAttr "eyes_grp_parentConstraint1.w1" "eyes_grp_parentConstraint1.tg[1].tw"
		;
connectAttr "eyes_grp_parentConstraint1_top_ctrlW0.o" "eyes_grp_parentConstraint1.w0"
		;
connectAttr "eyes_grp_parentConstraint1_root_ctrlW1.o" "eyes_grp_parentConstraint1.w1"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "anisotropic1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "eye_black_matSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phongE3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "anisotropic1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "eye_black_matSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phongE3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "clippy_proxy_layer.id";
connectAttr "phongE1SG.msg" "materialInfo1.sg";
connectAttr "phongE2SG.msg" "materialInfo2.sg";
connectAttr "anisotropic1SG.msg" "materialInfo3.sg";
connectAttr "lambert2SG.msg" "materialInfo4.sg";
connectAttr "eye_black_matSG.msg" "materialInfo5.sg";
connectAttr "file1.oc" "Eyes.c";
connectAttr "file2.oa" "Eyes.rn";
connectAttr "Eyes.oc" "phongE3SG.ss";
connectAttr "Clippy_meshShape.iog.og[0]" "phongE3SG.dsm" -na;
connectAttr "groupId1.msg" "phongE3SG.gn" -na;
connectAttr "phongE3SG.msg" "materialInfo6.sg";
connectAttr "Eyes.msg" "materialInfo6.m";
connectAttr "file1.msg" "materialInfo6.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
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
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
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
connectAttr "layerManager.dli[2]" "joints_layer.id";
connectAttr "layerManager.dli[3]" "mesh_layer.id";
connectAttr "Clippy_meshShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "Clippy_meshShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "root_jnt.wm" "skinCluster1.ma[0]";
connectAttr "base_bnd_jnt.wm" "skinCluster1.ma[1]";
connectAttr "mid_bnd_jnt.wm" "skinCluster1.ma[2]";
connectAttr "top_bnd_jnt.wm" "skinCluster1.ma[3]";
connectAttr "L_brow_main_bnd_jnt.wm" "skinCluster1.ma[4]";
connectAttr "L_outer_brow_bnd_jnt.wm" "skinCluster1.ma[5]";
connectAttr "L_mid_brow_bnd_jnt.wm" "skinCluster1.ma[6]";
connectAttr "L_inner_brow_bnd_jnt.wm" "skinCluster1.ma[7]";
connectAttr "R_brow_main_bnd_jnt.wm" "skinCluster1.ma[8]";
connectAttr "R_outer_brow_bnd_jnt.wm" "skinCluster1.ma[9]";
connectAttr "R_mid_brow_bnd_jnt.wm" "skinCluster1.ma[10]";
connectAttr "R_inner_brow_bnd_jnt.wm" "skinCluster1.ma[11]";
connectAttr "R_lowerlid_bnd_jnt.wm" "skinCluster1.ma[12]";
connectAttr "R_upperlid_bnd_jnt.wm" "skinCluster1.ma[13]";
connectAttr "L_lowerlid_bnd_jnt.wm" "skinCluster1.ma[14]";
connectAttr "L_upperlid_bnd_jnt.wm" "skinCluster1.ma[15]";
connectAttr "R_eyeball_bnd_jnt.wm" "skinCluster1.ma[16]";
connectAttr "L_eyeball_bnd_jnt.wm" "skinCluster1.ma[17]";
connectAttr "R_wrist_bnd_jnt.wm" "skinCluster1.ma[18]";
connectAttr "R_elbow_bnd_jnt.wm" "skinCluster1.ma[19]";
connectAttr "R_shoulder_bnd_jnt.wm" "skinCluster1.ma[20]";
connectAttr "L_wrist_bnd_jnt.wm" "skinCluster1.ma[21]";
connectAttr "L_elbow_bnd_jnt.wm" "skinCluster1.ma[22]";
connectAttr "L_shoulder_bnd_jnt.wm" "skinCluster1.ma[23]";
connectAttr "root_jnt.liw" "skinCluster1.lw[0]";
connectAttr "base_bnd_jnt.liw" "skinCluster1.lw[1]";
connectAttr "mid_bnd_jnt.liw" "skinCluster1.lw[2]";
connectAttr "top_bnd_jnt.liw" "skinCluster1.lw[3]";
connectAttr "L_brow_main_bnd_jnt.liw" "skinCluster1.lw[4]";
connectAttr "L_outer_brow_bnd_jnt.liw" "skinCluster1.lw[5]";
connectAttr "L_mid_brow_bnd_jnt.liw" "skinCluster1.lw[6]";
connectAttr "L_inner_brow_bnd_jnt.liw" "skinCluster1.lw[7]";
connectAttr "R_brow_main_bnd_jnt.liw" "skinCluster1.lw[8]";
connectAttr "R_outer_brow_bnd_jnt.liw" "skinCluster1.lw[9]";
connectAttr "R_mid_brow_bnd_jnt.liw" "skinCluster1.lw[10]";
connectAttr "R_inner_brow_bnd_jnt.liw" "skinCluster1.lw[11]";
connectAttr "R_lowerlid_bnd_jnt.liw" "skinCluster1.lw[12]";
connectAttr "R_upperlid_bnd_jnt.liw" "skinCluster1.lw[13]";
connectAttr "L_lowerlid_bnd_jnt.liw" "skinCluster1.lw[14]";
connectAttr "L_upperlid_bnd_jnt.liw" "skinCluster1.lw[15]";
connectAttr "R_eyeball_bnd_jnt.liw" "skinCluster1.lw[16]";
connectAttr "L_eyeball_bnd_jnt.liw" "skinCluster1.lw[17]";
connectAttr "R_wrist_bnd_jnt.liw" "skinCluster1.lw[18]";
connectAttr "R_elbow_bnd_jnt.liw" "skinCluster1.lw[19]";
connectAttr "R_shoulder_bnd_jnt.liw" "skinCluster1.lw[20]";
connectAttr "L_wrist_bnd_jnt.liw" "skinCluster1.lw[21]";
connectAttr "L_elbow_bnd_jnt.liw" "skinCluster1.lw[22]";
connectAttr "L_shoulder_bnd_jnt.liw" "skinCluster1.lw[23]";
connectAttr "root_jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "base_bnd_jnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "mid_bnd_jnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "top_bnd_jnt.obcc" "skinCluster1.ifcl[3]";
connectAttr "L_brow_main_bnd_jnt.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_outer_brow_bnd_jnt.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_mid_brow_bnd_jnt.obcc" "skinCluster1.ifcl[6]";
connectAttr "L_inner_brow_bnd_jnt.obcc" "skinCluster1.ifcl[7]";
connectAttr "R_brow_main_bnd_jnt.obcc" "skinCluster1.ifcl[8]";
connectAttr "R_outer_brow_bnd_jnt.obcc" "skinCluster1.ifcl[9]";
connectAttr "R_mid_brow_bnd_jnt.obcc" "skinCluster1.ifcl[10]";
connectAttr "R_inner_brow_bnd_jnt.obcc" "skinCluster1.ifcl[11]";
connectAttr "R_lowerlid_bnd_jnt.obcc" "skinCluster1.ifcl[12]";
connectAttr "R_upperlid_bnd_jnt.obcc" "skinCluster1.ifcl[13]";
connectAttr "L_lowerlid_bnd_jnt.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_upperlid_bnd_jnt.obcc" "skinCluster1.ifcl[15]";
connectAttr "R_eyeball_bnd_jnt.obcc" "skinCluster1.ifcl[16]";
connectAttr "L_eyeball_bnd_jnt.obcc" "skinCluster1.ifcl[17]";
connectAttr "R_wrist_bnd_jnt.obcc" "skinCluster1.ifcl[18]";
connectAttr "R_elbow_bnd_jnt.obcc" "skinCluster1.ifcl[19]";
connectAttr "R_shoulder_bnd_jnt.obcc" "skinCluster1.ifcl[20]";
connectAttr "L_wrist_bnd_jnt.obcc" "skinCluster1.ifcl[21]";
connectAttr "L_elbow_bnd_jnt.obcc" "skinCluster1.ifcl[22]";
connectAttr "L_shoulder_bnd_jnt.obcc" "skinCluster1.ifcl[23]";
connectAttr "R_wrist_bnd_jnt.msg" "skinCluster1.ptt";
connectAttr "clippy_grp.msg" "bindPose1.m[0]";
connectAttr "joints_grp.msg" "bindPose1.m[1]";
connectAttr "root_jnt.msg" "bindPose1.m[2]";
connectAttr "base_bnd_jnt.msg" "bindPose1.m[3]";
connectAttr "mid_bnd_jnt.msg" "bindPose1.m[4]";
connectAttr "top_bnd_jnt.msg" "bindPose1.m[5]";
connectAttr "L_brow_main_bnd_jnt.msg" "bindPose1.m[6]";
connectAttr "L_outer_brow_bnd_jnt.msg" "bindPose1.m[7]";
connectAttr "L_mid_brow_bnd_jnt.msg" "bindPose1.m[8]";
connectAttr "L_inner_brow_bnd_jnt.msg" "bindPose1.m[9]";
connectAttr "R_brow_main_bnd_jnt.msg" "bindPose1.m[10]";
connectAttr "R_outer_brow_bnd_jnt.msg" "bindPose1.m[11]";
connectAttr "R_mid_brow_bnd_jnt.msg" "bindPose1.m[12]";
connectAttr "R_inner_brow_bnd_jnt.msg" "bindPose1.m[13]";
connectAttr "R_lowerlid_bnd_jnt.msg" "bindPose1.m[14]";
connectAttr "R_upperlid_bnd_jnt.msg" "bindPose1.m[15]";
connectAttr "L_lowerlid_bnd_jnt.msg" "bindPose1.m[16]";
connectAttr "L_upperlid_bnd_jnt.msg" "bindPose1.m[17]";
connectAttr "R_eyeball_bnd_jnt.msg" "bindPose1.m[18]";
connectAttr "L_eyeball_bnd_jnt.msg" "bindPose1.m[19]";
connectAttr "R_shoulder_bnd_jnt.msg" "bindPose1.m[20]";
connectAttr "R_elbow_bnd_jnt.msg" "bindPose1.m[21]";
connectAttr "R_wrist_bnd_jnt.msg" "bindPose1.m[22]";
connectAttr "L_shoulder_bnd_jnt.msg" "bindPose1.m[23]";
connectAttr "L_elbow_bnd_jnt.msg" "bindPose1.m[24]";
connectAttr "L_wrist_bnd_jnt.msg" "bindPose1.m[25]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[6]" "bindPose1.p[8]";
connectAttr "bindPose1.m[6]" "bindPose1.p[9]";
connectAttr "bindPose1.m[5]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[10]" "bindPose1.p[12]";
connectAttr "bindPose1.m[10]" "bindPose1.p[13]";
connectAttr "bindPose1.m[5]" "bindPose1.p[14]";
connectAttr "bindPose1.m[5]" "bindPose1.p[15]";
connectAttr "bindPose1.m[5]" "bindPose1.p[16]";
connectAttr "bindPose1.m[5]" "bindPose1.p[17]";
connectAttr "bindPose1.m[5]" "bindPose1.p[18]";
connectAttr "bindPose1.m[5]" "bindPose1.p[19]";
connectAttr "bindPose1.m[4]" "bindPose1.p[20]";
connectAttr "R_shoulder_bnd_jnt.msg" "bindPose1.p[21]";
connectAttr "R_elbow_bnd_jnt.msg" "bindPose1.p[22]";
connectAttr "bindPose1.m[3]" "bindPose1.p[23]";
connectAttr "L_shoulder_bnd_jnt.msg" "bindPose1.p[24]";
connectAttr "L_elbow_bnd_jnt.msg" "bindPose1.p[25]";
connectAttr "root_jnt.bps" "bindPose1.wm[2]";
connectAttr "base_bnd_jnt.bps" "bindPose1.wm[3]";
connectAttr "mid_bnd_jnt.bps" "bindPose1.wm[4]";
connectAttr "top_bnd_jnt.bps" "bindPose1.wm[5]";
connectAttr "L_brow_main_bnd_jnt.bps" "bindPose1.wm[6]";
connectAttr "L_outer_brow_bnd_jnt.bps" "bindPose1.wm[7]";
connectAttr "L_mid_brow_bnd_jnt.bps" "bindPose1.wm[8]";
connectAttr "L_inner_brow_bnd_jnt.bps" "bindPose1.wm[9]";
connectAttr "R_brow_main_bnd_jnt.bps" "bindPose1.wm[10]";
connectAttr "R_outer_brow_bnd_jnt.bps" "bindPose1.wm[11]";
connectAttr "R_mid_brow_bnd_jnt.bps" "bindPose1.wm[12]";
connectAttr "R_inner_brow_bnd_jnt.bps" "bindPose1.wm[13]";
connectAttr "R_lowerlid_bnd_jnt.bps" "bindPose1.wm[14]";
connectAttr "R_upperlid_bnd_jnt.bps" "bindPose1.wm[15]";
connectAttr "L_lowerlid_bnd_jnt.bps" "bindPose1.wm[16]";
connectAttr "L_upperlid_bnd_jnt.bps" "bindPose1.wm[17]";
connectAttr "R_eyeball_bnd_jnt.bps" "bindPose1.wm[18]";
connectAttr "L_eyeball_bnd_jnt.bps" "bindPose1.wm[19]";
connectAttr "R_shoulder_bnd_jnt.bps" "bindPose1.wm[20]";
connectAttr "R_elbow_bnd_jnt.bps" "bindPose1.wm[21]";
connectAttr "R_wrist_bnd_jnt.bps" "bindPose1.wm[22]";
connectAttr "L_shoulder_bnd_jnt.bps" "bindPose1.wm[23]";
connectAttr "L_elbow_bnd_jnt.bps" "bindPose1.wm[24]";
connectAttr "L_wrist_bnd_jnt.bps" "bindPose1.wm[25]";
connectAttr "eyes_ctrl.Follow_Head" "eyes_grp_parentConstraint1_top_ctrlW0.i";
connectAttr "eyes_ctrl.Follow_Head" "eyes_grp_parentConstraint1_root_ctrlW1.i";
connectAttr "L_eye_ctrl.Squash_Stretch" "L_eyeball_bnd_jnt_scaleX.i";
connectAttr "L_eye_ctrl.Squash_Stretch" "L_eyeball_bnd_jnt_scaleY.i";
connectAttr "L_eye_ctrl.Squash_Stretch" "L_eyeball_bnd_jnt_scaleZ.i";
connectAttr "R_eye_ctrl.Squash_Stretch" "R_eyeball_bnd_jnt_scaleX.i";
connectAttr "R_eye_ctrl.Squash_Stretch" "R_eyeball_bnd_jnt_scaleY.i";
connectAttr "R_eye_ctrl.Squash_Stretch" "R_eyeball_bnd_jnt_scaleZ.i";
connectAttr "eyes_ctrl.Eye_spacing" "L_eyeball_bnd_jnt_translateX.i";
connectAttr "eyes_ctrl.Eye_spacing" "R_eyeball_bnd_jnt_translateX.i";
connectAttr "L_eye_ctrl.Upper_lid_Rot_X" "unitConversion1.i";
connectAttr "L_eye_ctrl.Upper_Lid_Rot_Z" "unitConversion2.i";
connectAttr "L_eye_ctrl.Lower_Lid_Rot_X" "unitConversion3.i";
connectAttr "L_eye_ctrl.Lower_Lid_Rot_Z" "unitConversion4.i";
connectAttr "R_eye_ctrl.Upper_lid_Rot_X" "unitConversion5.i";
connectAttr "R_eye_ctrl.Upper_Lid_Rot_Z" "unitConversion6.i";
connectAttr "R_eye_ctrl.Lower_Lid_Rot_X" "unitConversion7.i";
connectAttr "R_eye_ctrl.Lower_Lid_Rot_Z" "unitConversion8.i";
connectAttr "PaperclipMetal.oc" "blinn1SG.ss";
connectAttr "Clippy_meshShape.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "groupId2.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo7.sg";
connectAttr "PaperclipMetal.msg" "materialInfo7.m";
connectAttr "skinCluster1.og[0]" "groupParts1.ig";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "EyeLids.oc" "blinn2SG.ss";
connectAttr "Clippy_meshShape.iog.og[2]" "blinn2SG.dsm" -na;
connectAttr "groupId3.msg" "blinn2SG.gn" -na;
connectAttr "blinn2SG.msg" "materialInfo8.sg";
connectAttr "EyeLids.msg" "materialInfo8.m";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "EyeBrows.oc" "blinn3SG.ss";
connectAttr "Clippy_meshShape.iog.og[3]" "blinn3SG.dsm" -na;
connectAttr "groupId4.msg" "blinn3SG.gn" -na;
connectAttr "blinn3SG.msg" "materialInfo9.sg";
connectAttr "EyeBrows.msg" "materialInfo9.m";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupParts11.og" "groupParts12.ig";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupParts13.og" "groupParts14.ig";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupParts15.og" "groupParts16.ig";
connectAttr "groupParts16.og" "groupParts17.ig";
connectAttr "groupId1.id" "groupParts17.gi";
connectAttr "groupParts17.og" "groupParts18.ig";
connectAttr "groupId2.id" "groupParts18.gi";
connectAttr "groupParts18.og" "groupParts19.ig";
connectAttr "groupId3.id" "groupParts19.gi";
connectAttr "groupParts19.og" "groupParts20.ig";
connectAttr "groupId4.id" "groupParts20.gi";
connectAttr "PaperclipMetal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "phongE1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Eyes.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "blinn3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "EyeLids.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "blinn2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "phongE2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "anisotropic1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "phongE3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "eye_black_matSG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "EyeBrows.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "phongE1SG.pa" ":renderPartition.st" -na;
connectAttr "phongE2SG.pa" ":renderPartition.st" -na;
connectAttr "anisotropic1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "eye_black_matSG.pa" ":renderPartition.st" -na;
connectAttr "phongE3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "Eyes.msg" ":defaultShaderList1.s" -na;
connectAttr "PaperclipMetal.msg" ":defaultShaderList1.s" -na;
connectAttr "EyeLids.msg" ":defaultShaderList1.s" -na;
connectAttr "EyeBrows.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
// End of ClippyGPT_master.ma
