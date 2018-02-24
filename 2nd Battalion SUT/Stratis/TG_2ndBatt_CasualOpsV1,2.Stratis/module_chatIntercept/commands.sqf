pvpfw_chatIntercept_allCommands = [
	[
		"help",
		{
			_commands = "";
			{
				_commands = _commands + (pvpfw_chatIntercept_commandMarker + (_x select 0)) + ", ";
			} forEach pvpfw_chatIntercept_allCommands;
			systemChat format["Available Commands: %1",_commands];
		}
	],
	[
		"count",
		{
				_argument = _this select 0;
				_number = parseNumber _argument;
				if (vehicle player != player) then
					{
						{
							_number remoteExec ["TG_fnc_Countdown", _x, false];
						} forEach crew vehicle player;
				};
		}
	],
	[
		"staticjump",
		{
			if ((vehicle player != player) && (vehicle player isKindOf "Air")) then
			{
				_vehicle = vehicle player;
				_initPlayer = player;

				[_vehicle, _initPlayer] remoteExec ["TG_fnc_StartStaticParadrop", 2, false];
			};
		}
	]
];
