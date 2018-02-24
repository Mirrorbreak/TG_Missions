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
player addWeapon "rhs_weap_m4a1_d_mstock_grip3";
player addPrimaryWeaponItem "rhsusf_acc_nt4_tan";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
player addPrimaryWeaponItem "rhsusf_acc_eotech_552_d";
player addPrimaryWeaponItem "rhsusf_acc_grip3";

comment "Add containers";
player forceAddUniform "Scorpion_Camo_Cyre";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Kestrel4500";
player addItemToUniform "ACE_ATragMX";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "B_IR_Grenade";
player addItemToUniform "Chemlight_green";
player addItemToUniform "ACE_Chemlight_IR";
player addItemToUniform "Chemlight_red";
player addVest "Scorpion_Vest_1";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShell";
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellBlue";
for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
player addBackpack "rhsgref_hidf_alicepack";
player addItemToBackpack "rhsusf_acc_M2010S_sa";
player addItemToBackpack "rhsusf_acc_harris_bipod";
player addItemToBackpack "rhsusf_acc_premier";
player addItemToBackpack "rhsusf_acc_premier_anpvs27";
player addItemToBackpack "ACE_bloodIV";
player addItemToBackpack "ACE_bloodIV_500";
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
player addItemToBackpack "rhs_weap_XM2010_sa";
for "_i" from 1 to 4 do {player addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";};
player addHeadgear "Scorpion_Helmet1";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_95";
player linkItem "ItemGPS";
player linkItem "rhsusf_ANPVS_14";




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
