comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "rhs_weap_sr25_ec_d";
player addPrimaryWeaponItem "rhsusf_acc_SR25S";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "Binocular";

comment "Add containers";
player forceAddUniform "Scorpion_Camo_BDU";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "B_IR_Grenade";
player addItemToUniform "Chemlight_green";
player addItemToUniform "ACE_Chemlight_IR";
player addItemToUniform "Chemlight_red";
player addVest "V_TacChestrig_grn_F";
player addItemToVest "ACE_microDAGR";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShell";
for "_i" from 1 to 4 do {player addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
for "_i" from 1 to 3 do {player addItemToVest "rhsusf_20Rnd_762x51_m993_Mag";};
player addBackpack "B_ViperLightHarness_blk_F";
player addItemToBackpack "rhsusf_ANPVS_14";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_bloodIV_500";};
player addItemToBackpack "A3_NVGHeadGearBlk_F";
player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
player addItemToBackpack "APERSTripMine_Wire_Mag";
player addHeadgear "Scorpion_Boonie";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_95";
player linkItem "ItemGPS";

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

closeDialog 0;

switch (true) do
{
	case (typeOf player == "B_Soldier_F"):
	{
		[player, "Alpha"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_Soldier_lite_F"):
	{
		[player, "Bravo"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_officer_F"):
	{
		[player, "Charlie"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_Soldier_unarmed_F"):
	{
		[player, "Sherwood"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_Survivor_F"):
	{
		[player, "Everest"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
};

[[player],"ace_medical_medicClass", 1, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;
