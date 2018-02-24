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
player addWeapon "rhs_weap_m4a1_m203s_wd";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_SpecterDR_OD";
player addWeapon "ACE_Vector";

comment "Add containers";
player forceAddUniform "Scorpion_Camo_BDU";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "B_IR_Grenade";
player addItemToUniform "Chemlight_green";
player addItemToUniform "ACE_Chemlight_IR";
player addItemToUniform "Chemlight_red";
player addVest "V_TacChestrig_grn_F";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShell";
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_M441_HE";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_M397_HET";};
player addItemToVest "rhs_mag_M585_white";
player addItemToVest "rhs_mag_m662_red";
player addItemToVest "rhs_mag_m713_Red";
player addItemToVest "rhs_mag_m714_White";
for "_i" from 1 to 2 do {player addItemToVest "ACE_HuntIR_M203";};
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellBlue";
player addItemToVest "UGL_FlareCIR_F";
player addBackpack "tf_rt1523g_green";
player addItemToBackpack "ACE_HuntIR_monitor";
player addItemToBackpack "A3_NVGHeadGearBlk_F";
player addItemToBackpack "rhsusf_ANPVS_14";
player addItemToBackpack "APERSTripMine_Wire_Mag";
player addItemToBackpack "rhs_mag_m661_green";
player addItemToBackpack "rhs_mag_m715_Green";
player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";
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

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;
