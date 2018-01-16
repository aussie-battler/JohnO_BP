private ["_Central","_east","_west"];

_Central = getArray (missionconfigFile >> "cfgSettings" >> "spawnPos" >> "Central");
_east = getArray (missionconfigFile >> "cfgSettings" >> "spawnPos" >> "East");
_west = getArray (missionconfigFile >> "cfgSettings" >> "spawnPos" >> "West");

//[[56.7626,[21786.1,5681.16,0.00162196]],[56.7626,[21781.6,5845.7,0.00154495]]]

number = 0;

{

	_pos = (_x select 1);

	_mk = createMarker [format ["marker%1",number],_pos];
	_mk setMarkerType "mil_dot";
	number = number + 1;
} forEach _Central;

{

	_pos = (_x select 1);

	_mk = createMarker [format ["marker%1",number],_pos];
	_mk setMarkerType "mil_dot";
	number = number + 1;
} forEach _east;

{

	_pos = (_x select 1);

	_mk = createMarker [format ["marker%1",number],_pos];
	_mk setMarkerType "mil_dot";
	number = number + 1;
} forEach _west;