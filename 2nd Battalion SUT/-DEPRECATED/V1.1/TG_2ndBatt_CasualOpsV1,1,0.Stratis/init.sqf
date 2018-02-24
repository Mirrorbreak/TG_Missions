enableSaving [false, false];
enableRadio false;														// That will clear the voices from my head...
enableSentences FALSE;													// Stop talking to myself

[] execVM "module_chatIntercept\init.sqf";

[missionNamespace,["SherwoodMemberRespawnInv"]] call BIS_fnc_addRespawnInventory;