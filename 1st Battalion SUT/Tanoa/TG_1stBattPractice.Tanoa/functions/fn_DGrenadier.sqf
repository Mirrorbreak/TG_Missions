removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "everestdesClothing";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_elasticBandage";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "rhsusf_acc_eotech_552";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";};
player addVest "desVest";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellRed";
for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
player addBackpack "everest_packDesert";
for "_i" from 1 to 10 do {player addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_m714_White";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m713_Red";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m715_Green";};
for "_i" from 1 to 2 do {player addItemToBackpack "UGL_FlareWhite_F";};
player addHeadgear "Desert_ECH";

player addWeapon "rhs_weap_m4a1_blockII_M203_bk";
player addPrimaryWeaponItem "rhsusf_acc_nt4_black";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
player addWeapon "rhsusf_weap_glock17g4";
player addWeapon "Binocular";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "NVGoggles_OPFOR";

player setFace "WhiteHead_11";
player setSpeaker "ace_novoice";

switch (true) do
{
	case (typeOf player == "B_CTRG_soldier_GL_LAT_F"):
	{
		[player, "TacticalGaming"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_CTRG_Sharphooter_F"):
	{
		[player, "TacticalGaming"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_CTRG_soldier_M_medic_F"):
	{
		[player, "Everest"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_CTRG_soldier_engineer_exp_F"):
	{
		[player, "Everest"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_Survivor_F"):
	{
		[player, "Everest"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_Story_Protagonist_F"):
	{
		[player, "Zulu"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_CTRG_soldier_M_medic_F"):
	{
		[player, "X-Ray"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
};

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;
