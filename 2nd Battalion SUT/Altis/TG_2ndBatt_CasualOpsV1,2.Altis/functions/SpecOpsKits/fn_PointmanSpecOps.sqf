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
player addWeapon "rhsusf_weap_MP7A2_desert_grip3";
player addPrimaryWeaponItem "rhsusf_acc_rotex_mp7_desert";
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
player addPrimaryWeaponItem "rhsusf_acc_T1_high";
player addPrimaryWeaponItem "rhs_acc_grip_ffg2";
player addWeapon "rhs_weap_M320";

comment "Add containers";
player forceAddUniform "Tiger_Camo_Cyre_GS";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 1 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_Clacker";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
player addVest "Tiger_Vest_2";
player addItemToVest "SmokeShell";
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_M441_HE";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_M397_HET";};
player addItemToVest "SmokeShellRed";
player addItemToVest "rhs_mag_m714_White";
player addItemToVest "rhs_mag_m713_Red";
for "_i" from 1 to 2 do {player addItemToVest "ACE_HuntIR_M203";};
for "_i" from 1 to 4 do {player addItemToVest "rhsusf_mag_40Rnd_46x30_FMJ";};
player addItemToVest "rhsusf_mag_40Rnd_46x30_AP";
player addItemToVest "rhsusf_mag_40Rnd_46x30_JHP";
player addBackpack "Tiger_Backpack_Compact";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_HuntIR_monitor";
player addItemToBackpack "DemoCharge_Remote_Mag";
player addHeadgear "rhsusf_opscore_paint_pelt_nsw";
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
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;
