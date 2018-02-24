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
player addWeapon "rhs_weap_m4a1_blockII";
player addPrimaryWeaponItem "rhsusf_acc_M952V";
player addPrimaryWeaponItem "rhsusf_acc_eotech_552";

comment "Add containers";
player forceAddUniform "Scorpion_Camo_SS";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "Chemlight_green";
player addItemToUniform "ACE_Chemlight_IR";
player addItemToUniform "Chemlight_red";
player addItemToUniform "B_IR_Grenade";
player addVest "Scorpion_Vest_3";
player addItemToVest "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellRed";
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
player addBackpack "B_ViperLightHarness_blk_F";
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_bloodIV_500";};
player addItemToBackpack "ACE_bodyBag";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV";};
player addHeadgear "Scorpion_Helmet1";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_48";
player linkItem "ItemGPS";
player linkItem "rhsusf_ANPVS_14";


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
