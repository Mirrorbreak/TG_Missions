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
player addWeapon "rhs_weap_M590_8RD";
player addWeapon "ACE_VMM3";

comment "Add containers";
player forceAddUniform "Scorpion_Camo_Cyre";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 1 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_microDAGR";
player addVest "Scorpion_Vest_7";
player addItemToVest "SmokeShell";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellRed";
for "_i" from 1 to 5 do {player addItemToVest "rhsusf_8Rnd_00Buck";};
for "_i" from 1 to 4 do {player addItemToVest "rhsusf_8Rnd_Slug";};
player addBackpack "Scorpion_Backpack_Kitbag";
player addItemToBackpack "ACE_Clacker";
player addItemToBackpack "ACE_DefusalKit";
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_Sandbag_empty";};
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_SpraypaintGreen";
player addItemToBackpack "ACE_SpraypaintRed";
for "_i" from 1 to 3 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
player addItemToBackpack "SatchelCharge_Remote_Mag";
player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
player addHeadgear "Scorpion_Helmet1";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_53";
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

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;
