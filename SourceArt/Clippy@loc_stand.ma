//Maya ASCII 2022 scene
//Name: Clippy@loc_stand.ma
//Last modified: Mon, Feb 13, 2023 11:17:05 PM
//Codeset: 1252
file -rdi 1 -ns ":" -rfn "ClippyGPT_masterRN" -op "v=0;" -shd "shadingNetworks"
		 -typ "mayaAscii" "C:/misc/misc/Floyd/ClippyGPT//ClippyGPT_master.ma";
file -r -ns ":" -dr 1 -rfn "ClippyGPT_masterRN" -op "v=0;" -shd "shadingNetworks"
		 -typ "mayaAscii" "C:/misc/misc/Floyd/ClippyGPT//ClippyGPT_master.ma";
requires maya "2022";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.0.0.1";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 22000)";
fileInfo "UUID" "6DC7F1EA-48A1-C34D-37E1-9A80EB785557";
createNode transform -s -n "persp";
	rename -uid "F4778095-42A3-C1A0-C82A-7C99C444E6D0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 95.807869276118879 52.321319448667779 419.69759205312477 ;
	setAttr ".r" -type "double3" 2.0616472704068176 12.599999999996175 5.0922546713042167e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3CD95A66-4DCE-3E4A-8142-DFB861379D73";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 463.13246443831184;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "82594754-4D1F-D4BD-A373-EA8CC59A40C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "99397C73-4BCA-9311-7890-E1B78FAAC245";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "06479C32-427A-25E6-DB0D-51A310C1412B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.069454146200815 64.745858938576035 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "401D7D8D-44B0-BFC3-F69A-B2B0583D04B7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 287.22199109859889;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4EB27995-4D90-3D54-28E1-EAB6D4AF38E7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0DA84AF9-48CB-934C-190D-438FAF73605A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4F63EC95-418C-05E5-201B-9A8EFF7052C0";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C00163BF-464B-800D-7844-A29BBB6F93BA";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5F7E7FFA-4DC7-DCF4-2582-33BAD3B871E5";
createNode displayLayerManager -n "layerManager";
	rename -uid "AAA48E83-4221-1BED-D82B-698F3CC5563E";
createNode displayLayer -n "defaultLayer";
	rename -uid "43A8597C-421A-8529-2A07-E5B080859DD9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "00449444-4A57-AAD4-A150-3DBE048727DB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C0F13346-4C0F-DF1C-4B50-7F90EFCF216F";
	setAttr ".g" yes;
createNode reference -n "ClippyGPT_masterRN";
	rename -uid "55CCC6C1-467C-019D-AA05-8CB3C65D601D";
	setAttr -s 222 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"ClippyGPT_masterRN"
		"ClippyGPT_masterRN" 0
		"ClippyGPT_masterRN" 237
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl" "Follow_Head" 
		" -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl" "Eye_spacing" 
		" -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl" 
		"Squash_Stretch" " -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl" 
		"Upper_lid_Rot_X" " -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl" 
		"Upper_Lid_Rot_Z" " -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl" 
		"Lower_Lid_Rot_X" " -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl" 
		"Lower_Lid_Rot_Z" " -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl" 
		"Squash_Stretch" " -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl" 
		"Upper_lid_Rot_X" " -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl" 
		"Upper_Lid_Rot_Z" " -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl" 
		"Lower_Lid_Rot_X" " -k 1"
		2 "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl" 
		"Lower_Lid_Rot_Z" " -k 1"
		2 "joints_layer" "displayType" " 2"
		2 "joints_layer" "visibility" " 0"
		2 "mesh_layer" "displayType" " 2"
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[1]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[2]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[3]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[4]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[5]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[6]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[7]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[8]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[9]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[10]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[11]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[12]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[13]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[14]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[15]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[16]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[17]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[18]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[19]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[20]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[21]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[22]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[23]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[24]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[25]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[26]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[27]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[28]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[29]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[30]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[31]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[32]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[33]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[34]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[35]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[36]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[37]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[38]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[39]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[40]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[41]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[42]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[43]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[44]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[45]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[46]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[47]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[48]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[49]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[50]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[51]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[52]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[53]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[54]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[55]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[56]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[57]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[58]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[59]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_inner_brow_grp|L_inner_brow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[60]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[61]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[62]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[63]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[64]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[65]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[66]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[67]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[68]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[69]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_mid_brow_grp|L_mid_brow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[70]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[71]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[72]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[73]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[74]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[75]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[76]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[77]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[78]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[79]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|L_brow_grp|L_brow_ctrl|L_outer_brow_grp|L_outer_brow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[80]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[81]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[82]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[83]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[84]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[85]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[86]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[87]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[88]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[89]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[90]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[91]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[92]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[93]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[94]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[95]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[96]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[97]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[98]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[99]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_mid_brow_grp|R_mid_brow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[100]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[101]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[102]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[103]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[104]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[105]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[106]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[107]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[108]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[109]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_inner_brow_grp|R_inner_brow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[110]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[111]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[112]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[113]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[114]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[115]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[116]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[117]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[118]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[119]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|top_grp|top_ctrl|R_brow_grp|R_brow_ctrl|R_outer_brow_grp|R_outer_brow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[120]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[121]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[122]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[123]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[124]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[125]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[126]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[127]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[128]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[129]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[130]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[131]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[132]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[133]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[134]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[135]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[136]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[137]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[138]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[139]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[140]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[141]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[142]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[143]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[144]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[145]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[146]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[147]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[148]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[149]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|mid_grp|mid_ctrl|R_shoulder_grp|R_shoulder_ctrl|R_elbow_grp|R_elbow_ctrl|R_wrist_grp|R_wrist_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[150]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[151]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[152]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[153]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[154]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[155]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[156]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[157]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[158]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[159]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[160]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[161]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[162]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[163]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[164]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[165]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[166]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[167]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[168]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[169]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[170]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[171]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[172]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[173]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[174]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[175]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[176]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[177]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[178]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[179]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|base_grp|base_ctrl|L_shoulder_grp|L_shoulder_ctrl|L_elbow_grp|L_elbow_ctrl|L_wrist_grp|L_wrist_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[180]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.Follow_Head" 
		"ClippyGPT_masterRN.placeHolderList[181]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.Eye_spacing" 
		"ClippyGPT_masterRN.placeHolderList[182]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[183]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[184]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[185]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[186]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[187]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[188]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[189]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[190]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[191]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[192]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.Squash_Stretch" 
		"ClippyGPT_masterRN.placeHolderList[193]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.Upper_lid_Rot_X" 
		"ClippyGPT_masterRN.placeHolderList[194]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.Upper_Lid_Rot_Z" 
		"ClippyGPT_masterRN.placeHolderList[195]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.Lower_Lid_Rot_X" 
		"ClippyGPT_masterRN.placeHolderList[196]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.Lower_Lid_Rot_Z" 
		"ClippyGPT_masterRN.placeHolderList[197]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[198]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[199]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[200]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[201]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[202]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[203]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[204]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[205]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[206]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|L_eye_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[207]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.Squash_Stretch" 
		"ClippyGPT_masterRN.placeHolderList[208]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.Upper_lid_Rot_X" 
		"ClippyGPT_masterRN.placeHolderList[209]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.Upper_Lid_Rot_Z" 
		"ClippyGPT_masterRN.placeHolderList[210]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.Lower_Lid_Rot_X" 
		"ClippyGPT_masterRN.placeHolderList[211]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.Lower_Lid_Rot_Z" 
		"ClippyGPT_masterRN.placeHolderList[212]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.translateX" 
		"ClippyGPT_masterRN.placeHolderList[213]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.translateY" 
		"ClippyGPT_masterRN.placeHolderList[214]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.translateZ" 
		"ClippyGPT_masterRN.placeHolderList[215]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.rotateX" 
		"ClippyGPT_masterRN.placeHolderList[216]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.rotateY" 
		"ClippyGPT_masterRN.placeHolderList[217]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.rotateZ" 
		"ClippyGPT_masterRN.placeHolderList[218]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.scaleZ" 
		"ClippyGPT_masterRN.placeHolderList[219]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.scaleY" 
		"ClippyGPT_masterRN.placeHolderList[220]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.scaleX" 
		"ClippyGPT_masterRN.placeHolderList[221]" ""
		5 4 "ClippyGPT_masterRN" "|clippy_grp|controls_grp|root_grp|root_ctrl|eyes_grp|eyes_ctrl|R_eye_ctrl.visibility" 
		"ClippyGPT_masterRN.placeHolderList[222]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "9E0A874B-4E9B-C8F6-2FEA-EDBD033E9313";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
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
createNode script -n "sceneConfigurationScriptNode1";
	rename -uid "6E732D2D-4250-A3AD-3505-CEB4D7C48F1C";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 150 -ast 0 -aet 150 ";
	setAttr ".st" 6;
createNode animCurveTU -n "top_ctrl_visibility";
	rename -uid "2E470AE0-4158-AFE2-7792-D297AE0E12AF";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 52 1 60 1 66 1 74 1 117 1 122 1 127 1
		 131 1 150 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTL -n "top_ctrl_translateX";
	rename -uid "73423880-4CEC-10AA-FA81-268E6806EC46";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 52 0 60 0 66 0 74 0 117 0 122 0 127 0
		 131 0 150 0;
createNode animCurveTL -n "top_ctrl_translateY";
	rename -uid "B1C620F6-473D-CE9E-0C6C-6CA50C248DAF";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 52 0 60 0 66 0 74 0 117 0 122 0 127 0
		 131 0 150 0;
createNode animCurveTL -n "top_ctrl_translateZ";
	rename -uid "6BE176A4-4782-A357-6A99-8CB4002E7ACC";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 52 0 60 0 66 0 74 0 117 0 122 0 127 0
		 131 0 150 0;
createNode animCurveTA -n "top_ctrl_rotateX";
	rename -uid "B94F5800-474E-EE3E-668B-0487ECE3B530";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 -9.0437965739999999 52 -9.0305996345137487
		 60 -9.0318708682411977 66 -1.377771289914578 74 -9.0381668389711809 117 -9.0555067352799128
		 122 4.6295970059753415 127 -9.0535021506140332 131 -9.0519053601021753 150 -9.0437965739999999;
createNode animCurveTA -n "top_ctrl_rotateY";
	rename -uid "84616AB1-4510-2D94-5F53-4FBCE0C62A19";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 -0.3596454697 52 -0.39183042807763846
		 60 -0.39101479721847548 66 0.99011134119461652 74 -0.38190570995172052 117 -0.35505032976063428
		 122 0.034756908817258188 127 -0.35492938538449215 131 -0.35569411870920337 150 -0.3596454697;
createNode animCurveTA -n "top_ctrl_rotateZ";
	rename -uid "CF1C03D5-4815-F67E-D04B-B9B70C41E508";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 -8.2609886279999998 52 -7.2005703470707134
		 60 -7.2480465503005567 66 -6.9770807398879526 74 -7.6044923326597234 117 -8.6284919875321098
		 122 -6.8531655899109865 127 -8.5872990674227836 131 -8.5338808155419148 150 -8.2609886279999998;
createNode animCurveTU -n "top_ctrl_scaleX";
	rename -uid "EF1CBF38-4B08-DD7E-7EA6-98A7FC093B45";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 52 1 60 1 66 1 74 1 117 1 122 1 127 1
		 131 1 150 1;
createNode animCurveTU -n "top_ctrl_scaleY";
	rename -uid "86C1BE13-4AFA-DE72-C48B-FCA0E2DD7640";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 52 1 60 1 66 1 74 1 117 1 122 1 127 1
		 131 1 150 1;
createNode animCurveTU -n "top_ctrl_scaleZ";
	rename -uid "C45B343F-4D7C-47CB-A8F7-D29FBC97CF80";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 52 1 60 1 66 1 74 1 117 1 122 1 127 1
		 131 1 150 1;
createNode animCurveTU -n "root_ctrl_visibility";
	rename -uid "ED0E3AAA-46C8-883F-0649-28ADA3C0308D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "root_ctrl_translateX";
	rename -uid "4DB38421-4141-C453-47AA-A798A96C2E10";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "root_ctrl_translateY";
	rename -uid "B1D9F899-40B3-1610-A52B-E39A79C3575A";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "root_ctrl_translateZ";
	rename -uid "82E5824A-4022-AF83-C28F-11AAAFA190CC";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "root_ctrl_rotateX";
	rename -uid "1DCD70DB-472A-5555-ADE0-82BCBBC795C8";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "root_ctrl_rotateY";
	rename -uid "2F73CFB6-4FCC-A537-F144-39B3A1D45CAE";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "root_ctrl_rotateZ";
	rename -uid "53406E01-417F-38E5-15F6-64ACEB13A04B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTU -n "root_ctrl_scaleX";
	rename -uid "AF90A614-488A-8B9E-0F85-169C15814B0D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "root_ctrl_scaleY";
	rename -uid "A0E6AFE1-480A-7C97-C598-97BC8FC5A632";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "root_ctrl_scaleZ";
	rename -uid "FA4ED9E5-4AC2-ABD1-1753-D8AC17328F5D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "mid_ctrl_visibility";
	rename -uid "DB4BAF53-4062-D8CB-1213-39BDF14E7158";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 48 1 111 1 150 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "mid_ctrl_translateX";
	rename -uid "77A20E16-4561-0115-C353-C4800CFD69E5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 0 48 0 111 0 150 0;
createNode animCurveTL -n "mid_ctrl_translateY";
	rename -uid "46FE322E-49EF-3EA4-C6EF-869C906827DA";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 0 48 0 111 0 150 0;
createNode animCurveTL -n "mid_ctrl_translateZ";
	rename -uid "D4C600BD-4A9F-6482-5AE0-B2B67893E4B2";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 0 48 0 111 0 150 0;
createNode animCurveTA -n "mid_ctrl_rotateX";
	rename -uid "E0DC516F-489A-39B6-99B5-718565A4AA21";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 -9.0372058249999991 48 -9.033841275230369
		 111 -9.0452729085216532 150 -9.0372058249999991;
createNode animCurveTA -n "mid_ctrl_rotateY";
	rename -uid "CB89AC55-40CE-C89F-246E-A59EF6FBC9BC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 -0.3596454697 48 -0.22634315635521124
		 111 -0.4103599420994069 150 -0.3596454697;
createNode animCurveTA -n "mid_ctrl_rotateZ";
	rename -uid "45E59C46-474E-FC8D-FDA4-FB85B794B25F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 -8.2609886279999998 48 -7.2083424758573553
		 111 -8.6174633913677869 150 -8.2609886279999998;
createNode animCurveTU -n "mid_ctrl_scaleX";
	rename -uid "A18FCB65-4CAF-89C3-CE05-2F88439792EC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 48 1 111 1 150 1;
createNode animCurveTU -n "mid_ctrl_scaleY";
	rename -uid "BFD6580E-4925-B1BE-D156-79AE56454E18";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 48 1 111 1 150 1;
createNode animCurveTU -n "mid_ctrl_scaleZ";
	rename -uid "6B6BB371-4007-F841-0412-3EB5686B8C4C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 48 1 111 1 150 1;
createNode animCurveTU -n "eyes_ctrl_visibility";
	rename -uid "F9E12BEE-4915-C65D-3074-298C01FC8FD1";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 1 16 1 18 1 46 1 49 1 63 1 65 1 86 1 88 1
		 112 1 114 1 122 1 124 1 139 1 141 1 150 1;
createNode animCurveTL -n "eyes_ctrl_translateX";
	rename -uid "36218FFB-4F01-A11C-7278-C88E8AAD7144";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 4.4412114771265196 16 4.4412114771265196
		 18 9.9345937099571646 46 9.9345937099571646 49 6.127465777800662 63 6.127465777800662
		 65 15.902810109773469 86 15.902810109773469 88 14.340294248994264 112 14.340294248994264
		 114 19.90648228318522 122 19.90648228318522 124 17.233669772089222 139 17.233669772089222
		 141 4.4412114771265196 150 4.4412114771265196;
createNode animCurveTL -n "eyes_ctrl_translateY";
	rename -uid "5B938A4C-4F4D-4434-193A-1FADA4EC7F0D";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 1.4584321291544355 16 1.4584321291544355
		 18 8.5177202651796513 46 8.5177202651796513 49 11.556565957827319 63 11.556565957827319
		 65 12.44996370805845 86 12.44996370805845 88 10.565598788926868 112 10.565598788926868
		 114 12.399558206406502 122 12.399558206406502 124 13.079410181062775 139 13.079410181062775
		 141 1.4584321291544355 150 1.4584321291544355;
createNode animCurveTL -n "eyes_ctrl_translateZ";
	rename -uid "32B3DDF2-429F-7E65-1B83-41A4BCACEDAC";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 -0.1908498129 16 -0.1908498129 18 -2.0866979910049839
		 46 -2.0866979910049839 49 -2.4268307724750673 63 -2.4268307724750673 65 -3.1740864227036063
		 86 -3.1740864227036063 88 -2.7300865133831875 112 -2.7300865133831875 114 -3.4025548326289679
		 122 -3.4025548326289679 124 -3.0617660906005169 139 -3.0617660906005169 141 -0.1908498129
		 150 -0.1908498129;
createNode animCurveTA -n "eyes_ctrl_rotateX";
	rename -uid "7DC9636E-4E03-0047-A351-A883C6533920";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 0 16 0 18 0 46 0 49 0 63 0 65 0 86 0 88 0
		 112 0 114 0 122 0 124 0 139 0 141 0 150 0;
createNode animCurveTA -n "eyes_ctrl_rotateY";
	rename -uid "6FADF5D5-46FC-4CD9-543C-20BE49E2422E";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 0 16 0 18 0 46 0 49 0 63 0 65 0 86 0 88 0
		 112 0 114 0 122 0 124 0 139 0 141 0 150 0;
createNode animCurveTA -n "eyes_ctrl_rotateZ";
	rename -uid "682F2A28-4193-D814-F1EB-73A447DF0154";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 0 16 0 18 0 46 0 49 0 63 0 65 0 86 0 88 0
		 112 0 114 0 122 0 124 0 139 0 141 0 150 0;
createNode animCurveTU -n "eyes_ctrl_scaleX";
	rename -uid "545ED0A4-4CA5-9941-AFE0-689D7D0CE2E2";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 1 16 1 18 1 46 1 49 1 63 1 65 1 86 1 88 1
		 112 1 114 1 122 1 124 1 139 1 141 1 150 1;
createNode animCurveTU -n "eyes_ctrl_scaleY";
	rename -uid "072EBA3D-4B67-DF7D-30C4-AF8E2E82D87D";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 1 16 1 18 1 46 1 49 1 63 1 65 1 86 1 88 1
		 112 1 114 1 122 1 124 1 139 1 141 1 150 1;
createNode animCurveTU -n "eyes_ctrl_scaleZ";
	rename -uid "FA66D85A-4516-8182-78AA-10AE68CB870A";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 1 16 1 18 1 46 1 49 1 63 1 65 1 86 1 88 1
		 112 1 114 1 122 1 124 1 139 1 141 1 150 1;
createNode animCurveTU -n "eyes_ctrl_Follow_Head";
	rename -uid "3952948C-4752-1E29-5D42-7F8F76DF72D8";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 0 16 0 18 0 46 0 49 0 63 0 65 0 86 0 88 0
		 112 0 114 0 122 0 124 0 139 0 141 0 150 0;
createNode animCurveTU -n "eyes_ctrl_Eye_spacing";
	rename -uid "BC997790-47AA-9DC5-9B43-B8B69B6A865C";
	setAttr ".tan" 2;
	setAttr -s 16 ".ktv[0:15]"  0 0 16 0 18 0 46 0 49 0 63 0 65 0 86 0 88 0
		 112 0 114 0 122 0 124 0 139 0 141 0 150 0;
createNode animCurveTU -n "base_ctrl_visibility";
	rename -uid "5649D51E-4F7A-46FF-6A02-DFA69BD0BD4F";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 1 39 1 73 1 102 1 150 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "base_ctrl_translateX";
	rename -uid "B82BD68C-4585-D05F-125F-7AB0122E0FB5";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 0 39 0 73 0 102 0 150 0;
createNode animCurveTL -n "base_ctrl_translateY";
	rename -uid "6876D8D6-40BB-44E6-17F7-9E9062B3A280";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 0 39 0 73 0 102 0 150 0;
createNode animCurveTL -n "base_ctrl_translateZ";
	rename -uid "B76A0574-4FDD-9921-7E57-BA9649975CF5";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 0 39 0 73 0 102 0 150 0;
createNode animCurveTA -n "base_ctrl_rotateX";
	rename -uid "38E023C5-4287-94F0-0E9E-019DA9154EF9";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 5.7841097540000002 39 7.2139311605386354
		 73 5.7841097540000002 102 7.4408736436668601 150 5.7841097540000002;
createNode animCurveTA -n "base_ctrl_rotateY";
	rename -uid "16751BBD-4EFB-B05F-FE81-F4B79E96F5EF";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 -0.3596454697 39 -1.2033919565618616 73 -0.3596454697
		 102 -1.7204938595621138 150 -0.3596454697;
createNode animCurveTA -n "base_ctrl_rotateZ";
	rename -uid "017D5711-41EB-4055-30A9-D88D620BE16A";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 2.7859643790000002 39 3.6271054145505248
		 73 2.7859643790000002 102 2.0864734623026204 150 2.7859643790000002;
createNode animCurveTU -n "base_ctrl_scaleX";
	rename -uid "3EB6268D-408C-5B71-4565-FB8D605AAE52";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 1 39 1 73 1 102 1 150 1;
createNode animCurveTU -n "base_ctrl_scaleY";
	rename -uid "AEFFB342-4534-0B11-F7DC-5E8A4900882B";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 1 39 1 73 1 102 1 150 1;
createNode animCurveTU -n "base_ctrl_scaleZ";
	rename -uid "A7078BEC-4685-2FA4-15D2-CEBEEC04E560";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  0 1 39 1 73 1 102 1 150 1;
createNode animCurveTU -n "R_wrist_ctrl_visibility";
	rename -uid "D4C65BE0-44AD-CF25-7CD9-32B35C0B53BB";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_wrist_ctrl_translateX";
	rename -uid "68AB2861-443E-5C02-A497-57A002C1752A";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "R_wrist_ctrl_translateY";
	rename -uid "AFE9A099-4294-2963-38B0-559A56A5E60D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "R_wrist_ctrl_translateZ";
	rename -uid "B42D5B14-4339-3585-73AB-4CBF0EE322F2";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_wrist_ctrl_rotateX";
	rename -uid "08A1B195-4F49-CF9C-4459-35A28FC73DAD";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_wrist_ctrl_rotateY";
	rename -uid "EBD18516-47A5-7A74-CAF6-6DA140EE7141";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_wrist_ctrl_rotateZ";
	rename -uid "67799D55-4FAE-FBBC-4933-5BBD35E20D4E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTU -n "R_wrist_ctrl_scaleX";
	rename -uid "3A47DC30-4C88-5629-8CEB-4AAA9AE744ED";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_wrist_ctrl_scaleY";
	rename -uid "161B95B2-4060-1BDC-94D5-C0A7088689BF";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_wrist_ctrl_scaleZ";
	rename -uid "D339B9FB-4D57-AD9C-8342-E8A09AFDED78";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_shoulder_ctrl_visibility";
	rename -uid "7BB167C8-44D5-ED7B-CB0E-23B518AB1655";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_shoulder_ctrl_translateX";
	rename -uid "1D2658DC-480B-7F61-E43F-138D0E1A326B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "R_shoulder_ctrl_translateY";
	rename -uid "555B647B-4554-7440-03BF-16AB5398989A";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "R_shoulder_ctrl_translateZ";
	rename -uid "A30565F4-4D4C-FBB2-76B3-BF997363F054";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_shoulder_ctrl_rotateX";
	rename -uid "180839B4-4E17-6154-FEF6-27BA76C137D7";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_shoulder_ctrl_rotateY";
	rename -uid "B3737744-4322-301B-CD43-D3AFA86826AA";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_shoulder_ctrl_rotateZ";
	rename -uid "B14EE8C2-4087-B19F-0D0D-64886ED5B6F3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTU -n "R_shoulder_ctrl_scaleX";
	rename -uid "377AE1FE-4EB6-DF47-7248-AF90BD7F733C";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_shoulder_ctrl_scaleY";
	rename -uid "B283DC4A-4A97-5F5F-FE7A-2BB114458441";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_shoulder_ctrl_scaleZ";
	rename -uid "D6C1FF1F-4000-4D61-6CC6-F8891E78C711";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_outer_brow_ctrl_visibility";
	rename -uid "41B72E25-4BA8-F839-B941-D086C7071873";
	setAttr ".tan" 5;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 9 9 9 9 9 
		1 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
createNode animCurveTL -n "R_outer_brow_ctrl_translateX";
	rename -uid "19897EC6-458D-29CB-2F4F-38B0378369CA";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTL -n "R_outer_brow_ctrl_translateY";
	rename -uid "FE9002FA-43AC-A568-0664-CDAD3548B39A";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 -1.9000000000000001 69 0 72 0
		 117 0 120 -1.9000000000000001 124 0 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  -0.087692307692307389 0 0.81428571428571117 
		0 0;
createNode animCurveTL -n "R_outer_brow_ctrl_translateZ";
	rename -uid "4F96650E-4100-ED3C-41EB-7BBD6990A66F";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "R_outer_brow_ctrl_rotateX";
	rename -uid "B3F11504-4C04-8E7F-9477-C7B5287B6E78";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "R_outer_brow_ctrl_rotateY";
	rename -uid "4719F26C-464F-66D2-B2AB-03A1C32C0E6D";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "R_outer_brow_ctrl_rotateZ";
	rename -uid "666A0BE4-4DC2-2F2F-9B7B-3EB1B88107E4";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_outer_brow_ctrl_scaleX";
	rename -uid "EAB03ABE-4A8E-DF12-49CD-7EA49A88BA1E";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_outer_brow_ctrl_scaleY";
	rename -uid "37C5BEAD-4283-EE51-3DA1-AE83EA14A2E8";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_outer_brow_ctrl_scaleZ";
	rename -uid "9A6747A3-4F16-E4AC-4E07-ECB246B98A1A";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_mid_brow_ctrl_visibility";
	rename -uid "B230B639-4353-B5A4-A083-78AD3F692179";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_mid_brow_ctrl_translateX";
	rename -uid "6BC5CFD7-405C-1F90-9519-F79A7094E2C2";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "R_mid_brow_ctrl_translateY";
	rename -uid "F3C5DBD9-43E7-E7ED-F9B1-E8BBCED9E08C";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "R_mid_brow_ctrl_translateZ";
	rename -uid "36B088A0-489C-90C7-F714-C2B74E931BB3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_mid_brow_ctrl_rotateX";
	rename -uid "D68E0FAD-4A18-AC8D-5DB8-DD9FAD6E86FA";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_mid_brow_ctrl_rotateY";
	rename -uid "7B97754E-476A-67CB-2A6F-CF8F60D5896A";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_mid_brow_ctrl_rotateZ";
	rename -uid "9568A2A1-4C8C-2B69-8714-C2AF4AF76640";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTU -n "R_mid_brow_ctrl_scaleX";
	rename -uid "A8BC9A26-457B-856D-F42B-0F8C08FDC321";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_mid_brow_ctrl_scaleY";
	rename -uid "93379F99-4FAD-2276-9F83-29AADB425A8D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_mid_brow_ctrl_scaleZ";
	rename -uid "E0EADD60-437D-C187-B8CF-7B82948E00FB";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_inner_brow_ctrl_visibility";
	rename -uid "8ABDC55E-4D4F-58B0-063B-DDA374C4FB36";
	setAttr ".tan" 5;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 9 9 9 9 9 
		1 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
createNode animCurveTL -n "R_inner_brow_ctrl_translateX";
	rename -uid "6C61CDF8-4D77-7865-D5C7-3BAE9D65A017";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTL -n "R_inner_brow_ctrl_translateY";
	rename -uid "115284C4-4456-F7D4-E632-858C59F1D7FA";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 -1.4000000000000001 67 0 70 0
		 115 0 118 -1.4000000000000001 122 0 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  -0.066666666666666735 0 0.60000000000000198 
		0 0;
createNode animCurveTL -n "R_inner_brow_ctrl_translateZ";
	rename -uid "101A7836-497B-5FE1-CBEF-C7B64D8FF4F2";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "R_inner_brow_ctrl_rotateX";
	rename -uid "7B3BD3DF-4849-F6D9-5B4D-BE93ACED3B1A";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "R_inner_brow_ctrl_rotateY";
	rename -uid "52A79C4E-4EAE-A2B8-6C9C-E483B3956F6C";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "R_inner_brow_ctrl_rotateZ";
	rename -uid "340B2E83-46E8-8A66-74B4-09A07B463627";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_inner_brow_ctrl_scaleX";
	rename -uid "3F540845-4218-6A7A-FB30-E78F820ADB9E";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_inner_brow_ctrl_scaleY";
	rename -uid "3C20A831-4935-0983-5DF4-A8A8FEBF5C67";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_inner_brow_ctrl_scaleZ";
	rename -uid "4B638BC1-4D84-F608-6322-C286B04FE761";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_eye_ctrl_visibility";
	rename -uid "91CC3597-4523-31E2-7982-188D1AED8816";
	setAttr ".tan" 5;
	setAttr -s 12 ".ktv[0:11]"  0 1 59 1 61 1 64 1 68 1 70 1 115 1 117 1
		 120 1 124 1 126 1 150 1;
	setAttr -s 12 ".kit[0:11]"  9 9 9 9 9 9 9 9 
		9 9 1 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
createNode animCurveTL -n "R_eye_ctrl_translateX";
	rename -uid "0D24E668-45E1-48B6-9EAB-499915D7BABB";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 12.438928199999999 59 12.438928199999999
		 61 12.438928199999999 64 12.438928199999999 68 12.438928199999999 70 12.438928199999999
		 115 12.438928199999999 117 12.438928199999999 120 12.438928199999999 124 12.438928199999999
		 126 12.438928199999999 150 12.438928199999999;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTL -n "R_eye_ctrl_translateY";
	rename -uid "B6DD3ADE-40E7-506C-2CF8-5AA6ED836D8E";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTL -n "R_eye_ctrl_translateZ";
	rename -uid "C20A6459-48A6-6962-14B9-F7BD400596B1";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTA -n "R_eye_ctrl_rotateX";
	rename -uid "E5F6D807-41E9-2822-BEC3-B5995C1A64FE";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTA -n "R_eye_ctrl_rotateY";
	rename -uid "B2B82EE6-4616-9AEB-3439-B5BE6DD7672D";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTA -n "R_eye_ctrl_rotateZ";
	rename -uid "E7A29CC5-4328-2B42-C4BE-62AE4DDBB129";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "R_eye_ctrl_scaleX";
	rename -uid "48D6F2E1-4FF2-7B92-5A4C-1FB041E83DAA";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 1 59 1 61 1 64 1 68 1 70 1 115 1 117 1
		 120 1 124 1 126 1 150 1;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "R_eye_ctrl_scaleY";
	rename -uid "85ABC8A3-4E3C-4713-F424-578810F282BC";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 1 59 1 61 1 64 1 68 1 70 1 115 1 117 1
		 120 1 124 1 126 1 150 1;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "R_eye_ctrl_scaleZ";
	rename -uid "18AEA72E-42A5-418D-BC5E-9C837B0E6EA6";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 1 59 1 61 1 64 1 68 1 70 1 115 1 117 1
		 120 1 124 1 126 1 150 1;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "R_elbow_ctrl_visibility";
	rename -uid "3E7D48BE-4999-054B-1F0F-28B0FFA3D8C3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_elbow_ctrl_translateX";
	rename -uid "E649A0B6-4364-1794-845C-7F92502721E0";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "R_elbow_ctrl_translateY";
	rename -uid "8C08C2A6-4BFA-0CA8-123F-828175E06040";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "R_elbow_ctrl_translateZ";
	rename -uid "D260472F-41B0-E17E-4E25-A9A180D5CD8B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_elbow_ctrl_rotateX";
	rename -uid "0B9A1398-4B26-EFB1-ACD6-F19D3D86593B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_elbow_ctrl_rotateY";
	rename -uid "12E9B53E-4398-EECB-F5D5-E8A50AEFC297";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "R_elbow_ctrl_rotateZ";
	rename -uid "A5111829-4C20-599F-32C7-09A678B03E10";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTU -n "R_elbow_ctrl_scaleX";
	rename -uid "F93862D1-4F10-5B20-7AEB-1E97FFBA6214";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_elbow_ctrl_scaleY";
	rename -uid "031FC25E-4B9B-3C45-2230-55A5A7AC2FCF";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_elbow_ctrl_scaleZ";
	rename -uid "A4FA4042-414E-DAE5-779C-E7AEEB15B9E2";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "R_brow_ctrl_visibility";
	rename -uid "4AB466C6-442C-7BC1-99D3-818101E38330";
	setAttr ".tan" 5;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 9 9 9 9 9 
		1 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
createNode animCurveTL -n "R_brow_ctrl_translateX";
	rename -uid "39679BE1-4EA4-35C3-719F-6A8F5CF48740";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 -0.36581163500000002 60 -0.36581163500000002
		 63 -0.36581163500000002 67 -0.36581163500000002 70 -0.36581163500000002 115 -0.36581163500000002
		 118 -0.36581163500000002 122 -0.36581163500000002 125 -0.36581163500000002 150 -0.36581163500000002;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTL -n "R_brow_ctrl_translateY";
	rename -uid "ACB92D8F-48CA-C00F-A098-3E932271DB5A";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0.91533850230000002 60 0.91533850230000002
		 63 -1.6846614977000001 67 0.91533850230000002 70 0.91533850230000002 115 0.91533850230000002
		 118 -1.6846614977000001 122 0.91533850230000002 125 0.91533850230000002 150 0.91533850230000002;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  -0.12380952380952392 0 1.1142857142857179 
		0 0;
createNode animCurveTL -n "R_brow_ctrl_translateZ";
	rename -uid "C7CC8C59-4AB5-F8C6-F9F8-18B3DEE1A952";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "R_brow_ctrl_rotateX";
	rename -uid "D2904197-4D22-755C-4AA3-B59517B33FCD";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "R_brow_ctrl_rotateY";
	rename -uid "FF11FA85-46E9-34A8-FB5F-888575236F06";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "R_brow_ctrl_rotateZ";
	rename -uid "971AC357-441D-96FC-435B-25803C1D586B";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 8.9868207079999998 60 8.9868207079999998
		 63 -0.23356487582791102 67 8.9868207079999998 70 8.9868207079999998 115 8.9868207079999998
		 118 -0.23356487582791102 122 8.9868207079999998 125 8.9868207079999998 150 8.9868207079999998;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  -0.0076631469876769914 0 0.068968322889093076 
		0 0;
createNode animCurveTU -n "R_brow_ctrl_scaleX";
	rename -uid "0A565E4F-42BB-4267-4F72-8683A4942004";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_brow_ctrl_scaleY";
	rename -uid "C91B2A73-4F92-8508-811B-81A7F9355ECC";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "R_brow_ctrl_scaleZ";
	rename -uid "6FF2EB57-43C4-AF13-B840-0E91B13B7AFC";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_wrist_ctrl_visibility";
	rename -uid "4C4589AA-4CF2-B9BA-7B38-EFA628D9BEF6";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_wrist_ctrl_translateX";
	rename -uid "9C37EC7F-49B6-22C4-F0CC-FFB39783340E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "L_wrist_ctrl_translateY";
	rename -uid "43137618-45DF-81B9-E312-26B57C562028";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "L_wrist_ctrl_translateZ";
	rename -uid "469479A3-4759-3F0E-E7B3-39B8F0B58C17";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "L_wrist_ctrl_rotateX";
	rename -uid "8299B122-42A5-5380-3382-A684251BECBB";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 -18.112477309999999 150 -18.112477309999999;
createNode animCurveTA -n "L_wrist_ctrl_rotateY";
	rename -uid "0696FEE6-49A6-5EF3-CD3F-85AD0388A3CC";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 -3.9756933519999995e-16 150 -3.9756933519999995e-16;
createNode animCurveTA -n "L_wrist_ctrl_rotateZ";
	rename -uid "02F928A5-4F66-72C4-DA89-B5AF82722941";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 -18.590511119999999 150 -18.590511119999999;
createNode animCurveTU -n "L_wrist_ctrl_scaleX";
	rename -uid "33D2F403-4DED-24DF-4431-13AFE5D220D1";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_wrist_ctrl_scaleY";
	rename -uid "11928DB6-4C7F-FE25-E9A7-C0A83E74A954";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_wrist_ctrl_scaleZ";
	rename -uid "42ACBE88-4E78-79D6-8AD4-1D9DD5BA8955";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_shoulder_ctrl_visibility";
	rename -uid "D97F8F1C-4DEE-50B5-05F7-C88D01964A9F";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_shoulder_ctrl_translateX";
	rename -uid "7D3737E1-40F6-3AAE-5945-A7AF5FA02541";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "L_shoulder_ctrl_translateY";
	rename -uid "C01EF190-4651-6E6C-DD86-A0B8B47E2D99";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "L_shoulder_ctrl_translateZ";
	rename -uid "7BA86D76-4746-7A23-8720-2EBE805D628A";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "L_shoulder_ctrl_rotateX";
	rename -uid "310FBF06-4F80-52C4-5EF4-41AAE4450403";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 -3.977440117 150 -3.977440117;
createNode animCurveTA -n "L_shoulder_ctrl_rotateY";
	rename -uid "B3CE02C0-4CCA-4004-62D8-15A1ABE813B1";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 -1.166299043 150 -1.166299043;
createNode animCurveTA -n "L_shoulder_ctrl_rotateZ";
	rename -uid "CB7A7398-445F-C3EC-564C-21B2C518DE4A";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 -6.6924809850000004 150 -6.6924809850000004;
createNode animCurveTU -n "L_shoulder_ctrl_scaleX";
	rename -uid "8E5526B0-4196-5DBF-AAD0-C0AD5B69C0D6";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_shoulder_ctrl_scaleY";
	rename -uid "E090CB14-4DE9-5121-6C24-7587FC21556E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_shoulder_ctrl_scaleZ";
	rename -uid "6CAAFB78-4C24-689E-493A-35AFF35B577E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_outer_brow_ctrl_visibility";
	rename -uid "43C352A7-4AB1-9B6E-B1F7-CFAA3ECB4BA2";
	setAttr ".tan" 5;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 9 9 9 9 9 
		1 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
createNode animCurveTL -n "L_outer_brow_ctrl_translateX";
	rename -uid "875AB567-4410-F976-9578-4CAE81441211";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTL -n "L_outer_brow_ctrl_translateY";
	rename -uid "ED231342-443C-576E-EE80-889C7FC61443";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 -1.9000000000000001 69 0 72 0
		 117 0 120 -1.9000000000000001 124 0 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  -0.087692307692307389 0 0.81428571428571117 
		0 0;
createNode animCurveTL -n "L_outer_brow_ctrl_translateZ";
	rename -uid "09269A9B-4A15-A410-E6C6-E39A1C963C44";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "L_outer_brow_ctrl_rotateX";
	rename -uid "063DB0C4-4056-531B-25C7-C490DB4C73E4";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "L_outer_brow_ctrl_rotateY";
	rename -uid "0AE0065A-4AE1-AA9A-0B40-E5B7D53DFA44";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "L_outer_brow_ctrl_rotateZ";
	rename -uid "04EEED0F-48E9-75C0-24F6-70B613C28525";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_outer_brow_ctrl_scaleX";
	rename -uid "FA562D46-4FE7-14F0-A2B4-519902152F4A";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_outer_brow_ctrl_scaleY";
	rename -uid "E3DF1FDE-4EF3-5072-EE62-5C95ABD21D23";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_outer_brow_ctrl_scaleZ";
	rename -uid "EB0EED24-494C-2ACB-1EAC-4A99159248EB";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_mid_brow_ctrl_visibility";
	rename -uid "FBDB797D-4A41-BDC0-EDF3-69BD6B92B641";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_mid_brow_ctrl_translateX";
	rename -uid "BEBB07FF-4A74-CEB0-E7D7-A2BE7B90648B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "L_mid_brow_ctrl_translateY";
	rename -uid "62CF8F61-439F-D24D-67A5-9EAE85E22CB3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "L_mid_brow_ctrl_translateZ";
	rename -uid "48FE8390-4287-D59A-DCFB-C7921931903A";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "L_mid_brow_ctrl_rotateX";
	rename -uid "8EDBF026-4D41-A26C-5B07-73A8E9F08AE0";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "L_mid_brow_ctrl_rotateY";
	rename -uid "A9E736B8-4E20-EFBD-B0D0-119C92945D05";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "L_mid_brow_ctrl_rotateZ";
	rename -uid "34AE7028-4036-FD09-88CF-EF855983D9F2";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTU -n "L_mid_brow_ctrl_scaleX";
	rename -uid "D0F3B8F2-4F79-C97C-4A07-18961BCB2495";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_mid_brow_ctrl_scaleY";
	rename -uid "40E7E446-4032-2A93-5D6D-EF851B102197";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_mid_brow_ctrl_scaleZ";
	rename -uid "12A89C6F-4C52-C7CF-E3DA-12B40156892C";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_inner_brow_ctrl_visibility";
	rename -uid "77A1A050-4018-5D80-79C5-E492F29770C9";
	setAttr ".tan" 5;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 9 9 9 9 9 
		1 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
createNode animCurveTL -n "L_inner_brow_ctrl_translateX";
	rename -uid "52292854-4BF3-7FBA-BDA2-9ABDE1F521DC";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTL -n "L_inner_brow_ctrl_translateY";
	rename -uid "DE97DF33-4B82-9360-4DE2-7A80F2926C6A";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 -1.4000000000000001 69 0 72 0
		 117 0 120 -1.4000000000000001 124 0 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  -0.064615384615384394 0 0.59999999999999776 
		0 0;
createNode animCurveTL -n "L_inner_brow_ctrl_translateZ";
	rename -uid "DECBE3CC-439E-1E7F-BC78-ED89A09FBC74";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "L_inner_brow_ctrl_rotateX";
	rename -uid "D52A04CD-4CA9-69B3-840D-8181BE9FC484";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "L_inner_brow_ctrl_rotateY";
	rename -uid "4DBBAE8C-4607-67D0-8C0B-C6B2032EC43E";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "L_inner_brow_ctrl_rotateZ";
	rename -uid "C188A512-49BC-78CE-CB08-32BAC4BA34DD";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 62 0 65 0 69 0 72 0 117 0 120 0 124 0
		 127 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_inner_brow_ctrl_scaleX";
	rename -uid "A5078647-4571-9E6A-B696-A889BEF9FA7C";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_inner_brow_ctrl_scaleY";
	rename -uid "D5CAF17E-47D5-879B-58A1-CA8B3B61DA9A";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_inner_brow_ctrl_scaleZ";
	rename -uid "0D3167B3-4F75-E37B-33D5-D8BE09AB3EAF";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 62 1 65 1 69 1 72 1 117 1 120 1 124 1
		 127 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.76666666666666661;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.099999999999999645 0.13333333333333375 
		0.099999999999999645 0.76666666666666661 0.76666666666666661;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_eye_ctrl_visibility";
	rename -uid "9D140FE1-421F-8F1C-BEDD-36AEE23027C5";
	setAttr ".tan" 5;
	setAttr -s 12 ".ktv[0:11]"  0 1 59 1 61 1 64 1 68 1 70 1 115 1 117 1
		 120 1 124 1 126 1 150 1;
	setAttr -s 12 ".kit[0:11]"  9 9 9 9 9 9 9 9 
		9 9 1 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
createNode animCurveTL -n "L_eye_ctrl_translateX";
	rename -uid "CCDABB10-464E-0420-0FB7-24A83D489043";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 -11.741565339999999 59 -11.741565339999999
		 61 -11.741565339999999 64 -11.741565339999999 68 -11.741565339999999 70 -11.741565339999999
		 115 -11.741565339999999 117 -11.741565339999999 120 -11.741565339999999 124 -11.741565339999999
		 126 -11.741565339999999 150 -11.741565339999999;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTL -n "L_eye_ctrl_translateY";
	rename -uid "EBEF20EB-4A8D-1E10-A98E-6EA740D7DF9D";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTL -n "L_eye_ctrl_translateZ";
	rename -uid "C661B217-4DF5-93C0-E1B2-2592199C8CDD";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTA -n "L_eye_ctrl_rotateX";
	rename -uid "A4F38AE3-476E-C57F-845A-678910DE4170";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTA -n "L_eye_ctrl_rotateY";
	rename -uid "B232AA3A-436B-0B3A-8CD3-0AA06936F914";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTA -n "L_eye_ctrl_rotateZ";
	rename -uid "7D4F070B-40D4-765E-202E-258767F715E8";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_eye_ctrl_scaleX";
	rename -uid "4AC16EF5-4CEB-0181-387A-FAA1FC9CAE0E";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 1 59 1 61 1 64 1 68 1 70 1 115 1 117 1
		 120 1 124 1 126 1 150 1;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_eye_ctrl_scaleY";
	rename -uid "728CA818-40D0-1D20-15EA-4C95CC417BEF";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 1 59 1 61 1 64 1 68 1 70 1 115 1 117 1
		 120 1 124 1 126 1 150 1;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_eye_ctrl_scaleZ";
	rename -uid "D33E52E2-4176-CF67-C1B1-54B68DDE0610";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 1 59 1 61 1 64 1 68 1 70 1 115 1 117 1
		 120 1 124 1 126 1 150 1;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_elbow_ctrl_visibility";
	rename -uid "F43A2AE1-4748-C9BE-61FE-F398E02DDC41";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_elbow_ctrl_translateX";
	rename -uid "9F4B8A2B-40D7-F0A9-27F4-F6AF3AB47ABC";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "L_elbow_ctrl_translateY";
	rename -uid "88C6582A-48B1-BAE8-18DF-F6AF7FA0CB3B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "L_elbow_ctrl_translateZ";
	rename -uid "3EE1CD0C-4210-8BFB-78DA-F38A6D72689B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "L_elbow_ctrl_rotateX";
	rename -uid "006BA745-4961-C5EE-18B9-97A20F4EBD03";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "L_elbow_ctrl_rotateY";
	rename -uid "F6A224D5-4D01-03F4-2505-3FA6267E9BEE";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTA -n "L_elbow_ctrl_rotateZ";
	rename -uid "AE60D88B-4DB0-DF6F-608B-C58D97B5F886";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 -8.0605184219999995 150 -8.0605184219999995;
createNode animCurveTU -n "L_elbow_ctrl_scaleX";
	rename -uid "82D94B5D-4CD3-9B59-12CB-76A6B4D92DAE";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_elbow_ctrl_scaleY";
	rename -uid "CAA39FD9-4E26-5D43-5133-5BA2E1095B4F";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_elbow_ctrl_scaleZ";
	rename -uid "2D48EAF0-46B0-ED98-8C49-FF9F42529134";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 150 1;
createNode animCurveTU -n "L_brow_ctrl_visibility";
	rename -uid "47428FAB-4873-5C0B-C803-A88BCED88D0F";
	setAttr ".tan" 5;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 9 9 9 9 9 
		1 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
createNode animCurveTL -n "L_brow_ctrl_translateX";
	rename -uid "B1DAA36E-4036-58A3-AFDD-D589A62E7765";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1.115027848 60 1.115027848 63 1.115027848
		 67 1.115027848 70 1.115027848 115 1.115027848 118 1.115027848 122 1.115027848 125 1.115027848
		 150 1.115027848;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTL -n "L_brow_ctrl_translateY";
	rename -uid "ABBE12FE-4E81-4B7C-C471-95B528079157";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 -1.27477592 60 -1.27477592 63 -3.8747759200000003
		 67 -1.27477592 70 -1.27477592 115 -1.27477592 118 -3.8747759200000003 122 -1.27477592
		 125 -1.27477592 150 -1.27477592;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  -0.12380952380952395 0 1.1142857142857181 
		0 0;
createNode animCurveTL -n "L_brow_ctrl_translateZ";
	rename -uid "4EB9C691-41D7-7B35-6003-139F0477BE31";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "L_brow_ctrl_rotateX";
	rename -uid "12BEE06E-40AE-E435-690E-0CA73ACDB659";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "L_brow_ctrl_rotateY";
	rename -uid "B7400F5E-4B02-909D-A843-C8B338A76638";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 0 60 0 63 0 67 0 70 0 115 0 118 0 122 0
		 125 0 150 0;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTA -n "L_brow_ctrl_rotateZ";
	rename -uid "D4E13B7C-4057-4E51-D7FE-AD958480CC4A";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 -8.2121666579999992 60 -8.2121666579999992
		 63 -0.23525626821641971 67 -8.2121666579999992 70 -8.2121666579999992 115 -8.2121666579999992
		 118 -0.23525626821641971 122 -8.2121666579999992 125 -8.2121666579999992 150 -8.2121666579999992;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0.00662968335420323 0 -0.059667150187829206 
		0 0;
createNode animCurveTU -n "L_brow_ctrl_scaleX";
	rename -uid "A2B119C2-4B41-724E-2FF0-7BBE7CC29ABF";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_brow_ctrl_scaleY";
	rename -uid "B4552F22-4A8F-FDC2-D21A-AEAD28190D97";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_brow_ctrl_scaleZ";
	rename -uid "6A80841B-47C6-7F9C-6079-048F2CF11E84";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  0 1 60 1 63 1 67 1 70 1 115 1 118 1 122 1
		 125 1 150 1;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[5:9]"  1 9 9 9 9;
	setAttr -s 10 ".kix[8:9]"  0.10000000000000009 0.83333333333333304;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[5:9]"  0.10000000000000009 0.1333333333333333 
		0.10000000000000053 0.83333333333333304 0.83333333333333304;
	setAttr -s 10 ".koy[5:9]"  0 0 0 0 0;
createNode animCurveTU -n "L_eye_ctrl_Squash_Stretch";
	rename -uid "2C87F829-48FE-5B70-141D-B4BDBB5FCF0D";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 -0.2 68 0 70 0.0044270437032220703
		 115 0 117 0 120 -0.2 124 0 126 0.0044270437032220703 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 -0.0044270437032220703;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 -0.12000000000000022 0 0.068142347901073735 
		0 -0.0044270437032220703;
createNode animCurveTU -n "R_eye_ctrl_Squash_Stretch";
	rename -uid "B61E0F26-4FFD-B8C8-BE0C-D5B626841A5C";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 -0.2 68 0 70 0.0044270437032220703
		 115 0 117 0 120 -0.2 124 0 126 0.0044270437032220703 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 -0.0044270437032220703;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 -0.12000000000000022 0 0.068142347901073735 
		0 -0.0044270437032220703;
createNode animCurveTU -n "L_eye_ctrl_Upper_lid_Rot_X";
	rename -uid "28A221E0-43AC-1D09-D1E7-B19AE86FB01D";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 -32.1 59 -32.1 61 -32.1 64 43.1 68 -32.1
		 70 -33.764568432411501 115 -32.1 117 -32.1 120 43.1 124 -32.1 126 -33.764568432411501
		 150 -32.1;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 1.6645684324114995;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 45.120000000000083 0 -25.621522810803718 
		0 1.6645684324114995;
createNode animCurveTU -n "R_eye_ctrl_Upper_lid_Rot_X";
	rename -uid "E14A833D-472A-47D2-A0D2-E7A03E2C5FFA";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 -32.1 59 -32.1 61 -32.1 64 43.1 68 -32.1
		 70 -33.764568432411501 115 -32.1 117 -32.1 120 43.1 124 -32.1 126 -33.764568432411501
		 150 -32.1;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 1.6645684324114995;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 45.120000000000083 0 -25.621522810803718 
		0 1.6645684324114995;
createNode animCurveTU -n "L_eye_ctrl_Upper_Lid_Rot_Z";
	rename -uid "8EDE9B3F-4252-E02B-6CA0-3DB9077A4302";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 -21.5 59 -21.5 61 -21.5 64 0 68 -21.5
		 70 -21.975907198096372 115 -21.5 117 -21.5 120 0 124 -21.5 126 -21.975907198096372
		 150 -21.5;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0.4759071980963725;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 12.900000000000023 0 -7.3253023993654249 
		0 0.4759071980963725;
createNode animCurveTU -n "R_eye_ctrl_Upper_Lid_Rot_Z";
	rename -uid "3D783564-4F21-7EFD-2D81-43AE9C29005F";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0.6 59 0.6 61 0.6 64 0 68 0.6 70 0.6132811311096662
		 115 0.6 117 0.6 120 0 124 0.6 126 0.6132811311096662 150 0.6;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 -0.013281131109666222;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 -0.36000000000000065 0 0.20442704370322115 
		0 -0.013281131109666222;
createNode animCurveTU -n "L_eye_ctrl_Lower_Lid_Rot_X";
	rename -uid "0FF27851-44FE-F66B-BC5F-EF84CA38CC2F";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 67.4 59 67.4 61 67.4 64 32.1 68 67.4 70 68.181373213618699
		 115 67.4 117 67.4 120 32.1 124 67.4 126 68.181373213618699 150 67.4;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 -0.78137321361869283;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 -21.180000000000039 0 12.027124404539514 
		0 -0.78137321361869283;
createNode animCurveTU -n "R_eye_ctrl_Lower_Lid_Rot_X";
	rename -uid "75844709-4C50-2B3F-C7E6-75AA2A5C1F0E";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 67.4 59 67.4 61 67.4 64 32.1 68 67.4 70 68.181373213618699
		 115 67.4 117 67.4 120 32.1 124 67.4 126 68.181373213618699 150 67.4;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 -0.78137321361869283;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 -21.180000000000039 0 12.027124404539514 
		0 -0.78137321361869283;
createNode animCurveTU -n "L_eye_ctrl_Lower_Lid_Rot_Z";
	rename -uid "C16551F2-4B36-D30F-470C-A79CFC173C95";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "R_eye_ctrl_Lower_Lid_Rot_Z";
	rename -uid "6E96A3CC-4F78-BB16-7014-7480601CC565";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  0 0 59 0 61 0 64 0 68 0 70 0 115 0 117 0
		 120 0 124 0 126 0 150 0;
	setAttr -s 12 ".kit[10:11]"  1 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".kix[10:11]"  0.066666666666666874 0.79999999999999982;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.066666666666666652 0.10000000000000009 
		0.13333333333333375 0.06666666666666643 0.79999999999999982 0.79999999999999982;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
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
	setAttr -s 8 ".st";
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
	setAttr -s 6 ".s";
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
	setAttr -s 2 ".r";
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
	setAttr -av -cb on ".ren" -type "string" "arnold";
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
connectAttr "root_ctrl_translateX.o" "ClippyGPT_masterRN.phl[1]";
connectAttr "root_ctrl_translateY.o" "ClippyGPT_masterRN.phl[2]";
connectAttr "root_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[3]";
connectAttr "root_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[4]";
connectAttr "root_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[5]";
connectAttr "root_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[6]";
connectAttr "root_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[7]";
connectAttr "root_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[8]";
connectAttr "root_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[9]";
connectAttr "root_ctrl_visibility.o" "ClippyGPT_masterRN.phl[10]";
connectAttr "base_ctrl_translateX.o" "ClippyGPT_masterRN.phl[11]";
connectAttr "base_ctrl_translateY.o" "ClippyGPT_masterRN.phl[12]";
connectAttr "base_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[13]";
connectAttr "base_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[14]";
connectAttr "base_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[15]";
connectAttr "base_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[16]";
connectAttr "base_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[17]";
connectAttr "base_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[18]";
connectAttr "base_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[19]";
connectAttr "base_ctrl_visibility.o" "ClippyGPT_masterRN.phl[20]";
connectAttr "mid_ctrl_translateX.o" "ClippyGPT_masterRN.phl[21]";
connectAttr "mid_ctrl_translateY.o" "ClippyGPT_masterRN.phl[22]";
connectAttr "mid_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[23]";
connectAttr "mid_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[24]";
connectAttr "mid_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[25]";
connectAttr "mid_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[26]";
connectAttr "mid_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[27]";
connectAttr "mid_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[28]";
connectAttr "mid_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[29]";
connectAttr "mid_ctrl_visibility.o" "ClippyGPT_masterRN.phl[30]";
connectAttr "top_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[31]";
connectAttr "top_ctrl_translateX.o" "ClippyGPT_masterRN.phl[32]";
connectAttr "top_ctrl_translateY.o" "ClippyGPT_masterRN.phl[33]";
connectAttr "top_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[34]";
connectAttr "top_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[35]";
connectAttr "top_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[36]";
connectAttr "top_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[37]";
connectAttr "top_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[38]";
connectAttr "top_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[39]";
connectAttr "top_ctrl_visibility.o" "ClippyGPT_masterRN.phl[40]";
connectAttr "L_brow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[41]";
connectAttr "L_brow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[42]";
connectAttr "L_brow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[43]";
connectAttr "L_brow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[44]";
connectAttr "L_brow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[45]";
connectAttr "L_brow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[46]";
connectAttr "L_brow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[47]";
connectAttr "L_brow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[48]";
connectAttr "L_brow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[49]";
connectAttr "L_brow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[50]";
connectAttr "L_inner_brow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[51]";
connectAttr "L_inner_brow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[52]";
connectAttr "L_inner_brow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[53]";
connectAttr "L_inner_brow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[54]";
connectAttr "L_inner_brow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[55]";
connectAttr "L_inner_brow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[56]";
connectAttr "L_inner_brow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[57]";
connectAttr "L_inner_brow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[58]";
connectAttr "L_inner_brow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[59]";
connectAttr "L_inner_brow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[60]";
connectAttr "L_mid_brow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[61]";
connectAttr "L_mid_brow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[62]";
connectAttr "L_mid_brow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[63]";
connectAttr "L_mid_brow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[64]";
connectAttr "L_mid_brow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[65]";
connectAttr "L_mid_brow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[66]";
connectAttr "L_mid_brow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[67]";
connectAttr "L_mid_brow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[68]";
connectAttr "L_mid_brow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[69]";
connectAttr "L_mid_brow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[70]";
connectAttr "L_outer_brow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[71]";
connectAttr "L_outer_brow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[72]";
connectAttr "L_outer_brow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[73]";
connectAttr "L_outer_brow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[74]";
connectAttr "L_outer_brow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[75]";
connectAttr "L_outer_brow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[76]";
connectAttr "L_outer_brow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[77]";
connectAttr "L_outer_brow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[78]";
connectAttr "L_outer_brow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[79]";
connectAttr "L_outer_brow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[80]";
connectAttr "R_brow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[81]";
connectAttr "R_brow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[82]";
connectAttr "R_brow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[83]";
connectAttr "R_brow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[84]";
connectAttr "R_brow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[85]";
connectAttr "R_brow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[86]";
connectAttr "R_brow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[87]";
connectAttr "R_brow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[88]";
connectAttr "R_brow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[89]";
connectAttr "R_brow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[90]";
connectAttr "R_mid_brow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[91]";
connectAttr "R_mid_brow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[92]";
connectAttr "R_mid_brow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[93]";
connectAttr "R_mid_brow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[94]";
connectAttr "R_mid_brow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[95]";
connectAttr "R_mid_brow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[96]";
connectAttr "R_mid_brow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[97]";
connectAttr "R_mid_brow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[98]";
connectAttr "R_mid_brow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[99]";
connectAttr "R_mid_brow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[100]";
connectAttr "R_inner_brow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[101]";
connectAttr "R_inner_brow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[102]";
connectAttr "R_inner_brow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[103]";
connectAttr "R_inner_brow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[104]";
connectAttr "R_inner_brow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[105]";
connectAttr "R_inner_brow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[106]";
connectAttr "R_inner_brow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[107]";
connectAttr "R_inner_brow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[108]";
connectAttr "R_inner_brow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[109]";
connectAttr "R_inner_brow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[110]";
connectAttr "R_outer_brow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[111]";
connectAttr "R_outer_brow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[112]";
connectAttr "R_outer_brow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[113]";
connectAttr "R_outer_brow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[114]";
connectAttr "R_outer_brow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[115]";
connectAttr "R_outer_brow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[116]";
connectAttr "R_outer_brow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[117]";
connectAttr "R_outer_brow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[118]";
connectAttr "R_outer_brow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[119]";
connectAttr "R_outer_brow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[120]";
connectAttr "R_shoulder_ctrl_translateX.o" "ClippyGPT_masterRN.phl[121]";
connectAttr "R_shoulder_ctrl_translateY.o" "ClippyGPT_masterRN.phl[122]";
connectAttr "R_shoulder_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[123]";
connectAttr "R_shoulder_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[124]";
connectAttr "R_shoulder_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[125]";
connectAttr "R_shoulder_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[126]";
connectAttr "R_shoulder_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[127]";
connectAttr "R_shoulder_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[128]";
connectAttr "R_shoulder_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[129]";
connectAttr "R_shoulder_ctrl_visibility.o" "ClippyGPT_masterRN.phl[130]";
connectAttr "R_elbow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[131]";
connectAttr "R_elbow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[132]";
connectAttr "R_elbow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[133]";
connectAttr "R_elbow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[134]";
connectAttr "R_elbow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[135]";
connectAttr "R_elbow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[136]";
connectAttr "R_elbow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[137]";
connectAttr "R_elbow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[138]";
connectAttr "R_elbow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[139]";
connectAttr "R_elbow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[140]";
connectAttr "R_wrist_ctrl_translateX.o" "ClippyGPT_masterRN.phl[141]";
connectAttr "R_wrist_ctrl_translateY.o" "ClippyGPT_masterRN.phl[142]";
connectAttr "R_wrist_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[143]";
connectAttr "R_wrist_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[144]";
connectAttr "R_wrist_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[145]";
connectAttr "R_wrist_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[146]";
connectAttr "R_wrist_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[147]";
connectAttr "R_wrist_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[148]";
connectAttr "R_wrist_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[149]";
connectAttr "R_wrist_ctrl_visibility.o" "ClippyGPT_masterRN.phl[150]";
connectAttr "L_shoulder_ctrl_translateX.o" "ClippyGPT_masterRN.phl[151]";
connectAttr "L_shoulder_ctrl_translateY.o" "ClippyGPT_masterRN.phl[152]";
connectAttr "L_shoulder_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[153]";
connectAttr "L_shoulder_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[154]";
connectAttr "L_shoulder_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[155]";
connectAttr "L_shoulder_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[156]";
connectAttr "L_shoulder_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[157]";
connectAttr "L_shoulder_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[158]";
connectAttr "L_shoulder_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[159]";
connectAttr "L_shoulder_ctrl_visibility.o" "ClippyGPT_masterRN.phl[160]";
connectAttr "L_elbow_ctrl_translateX.o" "ClippyGPT_masterRN.phl[161]";
connectAttr "L_elbow_ctrl_translateY.o" "ClippyGPT_masterRN.phl[162]";
connectAttr "L_elbow_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[163]";
connectAttr "L_elbow_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[164]";
connectAttr "L_elbow_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[165]";
connectAttr "L_elbow_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[166]";
connectAttr "L_elbow_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[167]";
connectAttr "L_elbow_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[168]";
connectAttr "L_elbow_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[169]";
connectAttr "L_elbow_ctrl_visibility.o" "ClippyGPT_masterRN.phl[170]";
connectAttr "L_wrist_ctrl_translateX.o" "ClippyGPT_masterRN.phl[171]";
connectAttr "L_wrist_ctrl_translateY.o" "ClippyGPT_masterRN.phl[172]";
connectAttr "L_wrist_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[173]";
connectAttr "L_wrist_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[174]";
connectAttr "L_wrist_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[175]";
connectAttr "L_wrist_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[176]";
connectAttr "L_wrist_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[177]";
connectAttr "L_wrist_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[178]";
connectAttr "L_wrist_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[179]";
connectAttr "L_wrist_ctrl_visibility.o" "ClippyGPT_masterRN.phl[180]";
connectAttr "eyes_ctrl_Follow_Head.o" "ClippyGPT_masterRN.phl[181]";
connectAttr "eyes_ctrl_Eye_spacing.o" "ClippyGPT_masterRN.phl[182]";
connectAttr "eyes_ctrl_translateX.o" "ClippyGPT_masterRN.phl[183]";
connectAttr "eyes_ctrl_translateY.o" "ClippyGPT_masterRN.phl[184]";
connectAttr "eyes_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[185]";
connectAttr "eyes_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[186]";
connectAttr "eyes_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[187]";
connectAttr "eyes_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[188]";
connectAttr "eyes_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[189]";
connectAttr "eyes_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[190]";
connectAttr "eyes_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[191]";
connectAttr "eyes_ctrl_visibility.o" "ClippyGPT_masterRN.phl[192]";
connectAttr "L_eye_ctrl_Squash_Stretch.o" "ClippyGPT_masterRN.phl[193]";
connectAttr "L_eye_ctrl_Upper_lid_Rot_X.o" "ClippyGPT_masterRN.phl[194]";
connectAttr "L_eye_ctrl_Upper_Lid_Rot_Z.o" "ClippyGPT_masterRN.phl[195]";
connectAttr "L_eye_ctrl_Lower_Lid_Rot_X.o" "ClippyGPT_masterRN.phl[196]";
connectAttr "L_eye_ctrl_Lower_Lid_Rot_Z.o" "ClippyGPT_masterRN.phl[197]";
connectAttr "L_eye_ctrl_translateX.o" "ClippyGPT_masterRN.phl[198]";
connectAttr "L_eye_ctrl_translateY.o" "ClippyGPT_masterRN.phl[199]";
connectAttr "L_eye_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[200]";
connectAttr "L_eye_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[201]";
connectAttr "L_eye_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[202]";
connectAttr "L_eye_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[203]";
connectAttr "L_eye_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[204]";
connectAttr "L_eye_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[205]";
connectAttr "L_eye_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[206]";
connectAttr "L_eye_ctrl_visibility.o" "ClippyGPT_masterRN.phl[207]";
connectAttr "R_eye_ctrl_Squash_Stretch.o" "ClippyGPT_masterRN.phl[208]";
connectAttr "R_eye_ctrl_Upper_lid_Rot_X.o" "ClippyGPT_masterRN.phl[209]";
connectAttr "R_eye_ctrl_Upper_Lid_Rot_Z.o" "ClippyGPT_masterRN.phl[210]";
connectAttr "R_eye_ctrl_Lower_Lid_Rot_X.o" "ClippyGPT_masterRN.phl[211]";
connectAttr "R_eye_ctrl_Lower_Lid_Rot_Z.o" "ClippyGPT_masterRN.phl[212]";
connectAttr "R_eye_ctrl_translateX.o" "ClippyGPT_masterRN.phl[213]";
connectAttr "R_eye_ctrl_translateY.o" "ClippyGPT_masterRN.phl[214]";
connectAttr "R_eye_ctrl_translateZ.o" "ClippyGPT_masterRN.phl[215]";
connectAttr "R_eye_ctrl_rotateX.o" "ClippyGPT_masterRN.phl[216]";
connectAttr "R_eye_ctrl_rotateY.o" "ClippyGPT_masterRN.phl[217]";
connectAttr "R_eye_ctrl_rotateZ.o" "ClippyGPT_masterRN.phl[218]";
connectAttr "R_eye_ctrl_scaleZ.o" "ClippyGPT_masterRN.phl[219]";
connectAttr "R_eye_ctrl_scaleY.o" "ClippyGPT_masterRN.phl[220]";
connectAttr "R_eye_ctrl_scaleX.o" "ClippyGPT_masterRN.phl[221]";
connectAttr "R_eye_ctrl_visibility.o" "ClippyGPT_masterRN.phl[222]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "ClippyGPT_masterRN.sr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Clippy@loc_stand.ma
