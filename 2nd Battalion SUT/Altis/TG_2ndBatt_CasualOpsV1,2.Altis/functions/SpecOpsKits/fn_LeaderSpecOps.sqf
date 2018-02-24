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
player addWeapon "rhs_weap_hk416d10_LMT_d";
player addPrimaryWeaponItem "rhsusf_acc_rotex5_grey";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
player addPrimaryWeaponItem "rhsusf_acc_g33_xps3";
player addPrimaryWeaponItem "rhsusf_acc_grip2";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addWeapon "ACE_Vector";

comment "Add containers";
player forceAddUniform "Tiger_Camo_Cyre_GS";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_Clacker";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_DAGR";
player addItemToUniform "B_IR_Grenade";
player addItemToUniform "Chemlight_green";
player addItemToUniform "ACE_Chemlight_IR";
player addItemToUniform "Chemlight_red";
player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";
player addVest "Tiger_Vest_1";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShell";
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellBlue";
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
player addItemToVest "ACE_M84";
player addItemToVest "DemoCharge_Remote_Mag";
player addHeadgear "rhsusf_opscore_paint_pelt_nsw_cam";
player addGoggles "rhsusf_shemagh2_tan";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_95";
player linkItem "ItemGPS";
player linkItem "rhsusf_ANPVS_15";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

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
