/*

	Pulls squad XML data from the player to form a persistent group.

*/

private ["_squadData","_squadEmail","_squadData2","_groupID"];

uiSleep 0.01;

_groupID = player getVariable ["group","0"];

if (_groupID isEqualTo "0") then
{	
	_squadData = squadParams player;

	if (_squadData isEqualTo []) exitWith {};

	_squadEmail = (_squadData select 0 select 2);

	player setVariable ["group",_squadEmail,true];
};	

diag_log format ["SquadParams: %1 --- Var: %2",_squadData,player getVariable ["group",0]];