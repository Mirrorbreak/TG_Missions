_icons = execVM "scripts\icons.sqf";

[missionNamespace, "arsenalOpened", {
		disableSerialization;
		params ["_display"];
		_display displayAddEventHandler ["keydown", "_this select 3"];
		{(_display displayCtrl _x) ctrlShow false} forEach [44151, 44150, 44146, 44147, 44148, 44149, 44346];
	}] call BIS_fnc_addScriptedEventHandler;

addMissionEventHandler ["HandleDisconnect",
    {
        _unit = _this select 0;
        deleteVehicle _unit;
    }];
