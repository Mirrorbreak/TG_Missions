//======================================================MCC_fnc_customTasks=========================================================================================================
// Manage custom tasks
// Example:[_logic] spawn MCC_fnc_customTasks; 
// Return - nothing
//========================================================================================================================================================================================
private ["_logic","_attachedUnit","_owners","_taskState","_taskStateDestination","_taskDescription","_taskType","_trg","_name","_desc","_missionDone"];
_logic			= _this select 0;

waituntil {!alive _logic || _logic getvariable ["updated",false]};

if (!alive _logic) exitWith {}; 

_attachedUnit 			= _logic getvariable ["bis_fnc_curatorAttachObject_object",objnull];
_owners 				= _logic getvariable ["RscAttributeOwners",[]];
_taskState 				= _logic getvariable ["RscAttributeTaskState","created"];
_taskStateDestination 	= _logic getvariable ["RscAttributeTaskDestination",0];
_taskDescription 		= _logic getvariable ["RscAttributeTaskDescription",["","", ""]];
_taskType				= _logic getvariable ["customTask",""];

//Not a custom task? exit
if (_taskType == "") exitWith {}; 

switch (true) do
{
	case (_taskType in ["Secure_HVT"]): 
	{
		waituntil {!alive _attachedUnit || isPlayer leader _attachedUnit}; 
		
		if (alive _attachedUnit) then 
		{
			_desc 	= format ["Get %1 back to base alive",name _attachedUnit];
			_logic setvariable ["RscAttributeTaskState","Succeeded", true];
			_logic setvariable ["updated",true];
			sleep 1;
			[_logic,"RscAttributeTaskDescription",[_desc, _desc, _desc]] call bis_fnc_setServerVariable;
			sleep 1;
			_logic setvariable ["RscAttributeTaskState","assigned", true];
			_logic setvariable ["updated",true];
			
			_missionDone = false; 
			while {! _missionDone} do
			{
				if (!isnil "MCC_START_WEST") then 
				{
					if (MCC_START_WEST distance _attachedUnit < 100) then 
					{
						_logic setvariable ["RscAttributeTaskState","Succeeded", true];
						_missionDone = true;
					};
				};
				
				if (!isnil "MCC_START_EAST") then 
				{
					if (MCC_START_EAST distance _attachedUnit < 100) then 
					{
						_logic setvariable ["RscAttributeTaskState","Succeeded", true];
						_missionDone = true;
					};
				};
				
				if (!isnil "MCC_START_GUER") then 
				{
					if (MCC_START_GUER distance _attachedUnit < 100) then 
					{
						_logic setvariable ["RscAttributeTaskState","Succeeded", true];
						_missionDone = true;
					};
				};
				
				if (!alive _attachedUnit) then 
				{
					_logic setvariable ["RscAttributeTaskState","Failed", true];
					_missionDone = true;
				};
				
				sleep 5;
			};
		}
		else
		{
			_logic setvariable ["RscAttributeTaskState","Failed", true];
		};
	};
	
	case (_taskType in ["Kill_HVT"]): 
	{
		waituntil {!alive _attachedUnit || isPlayer leader _attachedUnit}; 
		_logic setvariable ["RscAttributeTaskState","Succeeded", true];
	};
	
	case (_taskType in ["disableIED","pick_intel"]): 
	{
		waituntil {isnull _attachedUnit}; 
		_logic setvariable ["RscAttributeTaskState","Succeeded", true];
	};
	
	case (_taskType in ["clear_area"]): 
	{
		//Create Trigger
		_pos = getpos _logic;
		_trg = createTrigger["EmptyDetector", _pos];
		_trg setTriggerArea[100,100,0,false];
		
		_side = side (nearestObject [_pos, "Man"]);
		_trg setTriggerActivation [str _side, "NOT PRESENT",false];
		
		_name = format ["%1", ["MCCMWClearObjective_",1] call bis_fnc_counter]; 
		
		//Create Marker
		[1, "ColorRed",[150,150], "ELLIPSE", "DiagGrid", "Empty", ("clearArea" + _name), _pos] call MCC_fnc_makeMarker;

		//Waituntil there are no more enemy units in the area
		waituntil {triggeractivated _trg}; 
		deleteVehicle _trg;
		[2, "",[], "", "", "Empty", _name, []] call MCC_fnc_makeMarker;
		_logic setvariable ["RscAttributeTaskState","Succeeded", true];
	};
};

_logic setvariable ["updated",true];
sleep 10;
deletevehicle _logic;





				
		

		