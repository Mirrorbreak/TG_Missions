
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
 
player addWeapon "arifle_SPAR_01_blk_F";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "optic_Holosight_blk_F";
player addWeapon "hgun_ACPC2_F";
 
player forceAddUniform "U_B_CTRG_Soldier_F";
for "_i" from 1 to 5 do {player addItemToUniform "30Rnd_556x45_Stanag_red";};
player addVest "V_PlateCarrier2_blk";
for "_i" from 1 to 2 do {player addItemToVest "ACE_fieldDressing";};
player addItemToVest "ACE_CableTie";
player addItemToVest "ACE_EarPlugs";
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_XL50";
player addItemToVest "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToVest "ACE_morphine";};
player addItemToVest "30Rnd_556x45_Stanag_red";
for "_i" from 1 to 2 do {player addItemToVest "9Rnd_45ACP_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_red";};
player addItemToVest "B_IR_Grenade";
player addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
this addBackpack "B_TacticalPack_blk";
for "_i" from 1 to 10 do {this addItemToBackpack "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 4 do {this addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 4 do {this addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {this addItemToBackpack "ACE_HuntIR_M203";};
player addHeadgear "H_HelmetB_Enh_tna_F";
 

 

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "NVGoggles_OPFOR";
 
player setSpeaker "ACE_NoVoice";