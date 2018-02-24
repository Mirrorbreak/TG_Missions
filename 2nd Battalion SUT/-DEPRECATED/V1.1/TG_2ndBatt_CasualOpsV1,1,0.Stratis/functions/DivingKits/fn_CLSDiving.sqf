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
player addWeapon "rhsusf_weap_MP7A2_grip3";
player addPrimaryWeaponItem "rhsusf_acc_rotex_mp7";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_T1_high";
player addPrimaryWeaponItem "rhs_acc_grip_ffg2";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";

comment "Add containers";
player forceAddUniform "U_B_Wetsuit";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "HandGrenade";
player addItemToUniform "SmokeShell";
player addItemToUniform "rhsusf_mag_40Rnd_46x30_FMJ";
player addItemToUniform "rhsusf_mag_40Rnd_46x30_JHP";
player addItemToUniform "rhsusf_mag_40Rnd_46x30_AP";
for "_i" from 1 to 2 do {player addItemToUniform "rhsusf_mag_17Rnd_9x19_JHP";};
player addVest "V_RebreatherB";
player addBackpack "B_ViperHarness_blk_F";
player addItemToBackpack "ACE_microDAGR";
player addItemToBackpack "ACE_Clacker";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
player addItemToBackpack "arifle_SDAR_F";
for "_i" from 1 to 2 do {player addItemToBackpack "20Rnd_556x45_UW_mag";};
player addItemToBackpack "DemoCharge_Remote_Mag";
player addItemToBackpack "ACE_M84";
player addItemToBackpack "rhs_mag_an_m8hc";
player addItemToBackpack "ACE_Chemlight_IR";
player addItemToBackpack "Chemlight_red";
player addItemToBackpack "Chemlight_green";
player addItemToBackpack "ACE_HandFlare_Green";
player addGoggles "G_B_Diving";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_83";
player linkItem "ItemGPS";
player linkItem "NVGogglesB_blk_F";


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

[[player],"ace_medical_medicClass", 1, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;
