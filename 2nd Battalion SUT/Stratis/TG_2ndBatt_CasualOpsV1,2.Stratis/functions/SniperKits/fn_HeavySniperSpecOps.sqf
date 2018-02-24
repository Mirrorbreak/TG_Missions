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
player addWeapon "rhs_weap_M107_w";
player addPrimaryWeaponItem "rhsusf_acc_premier";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addWeapon "ACE_Vector";

comment "Add containers";
player forceAddUniform "U_B_FullGhillie_sard";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_ATragMX";
player addItemToUniform "ACE_Kestrel4500";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "rhsusf_mag_17Rnd_9x19_JHP";
for "_i" from 1 to 2 do {player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItemToUniform "B_IR_Grenade";
player addItemToUniform "ACE_Chemlight_IR";
player addVest "V_TacChestrig_grn_F";
player addItemToVest "ACE_DAGR";
player addItemToVest "SmokeShell";
player addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_10Rnd_STD_50BMG_M33";};
player addBackpack "B_Kitbag_rgr";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_morphine";};
player addItemToBackpack "rhsusf_acc_premier_anpvs27";
for "_i" from 1 to 2 do {player addItemToBackpack "APERSTripMine_Wire_Mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhsusf_mag_10Rnd_STD_50BMG_M33";};
player addGoggles "rhsusf_shemagh2_od";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_2";
player linkItem "ItemGPS";
player linkItem "rhsusf_ANPVS_14";

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

/*switch (true) do
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
};*/

[[player],"ace_medical_medicClass", 1, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;
