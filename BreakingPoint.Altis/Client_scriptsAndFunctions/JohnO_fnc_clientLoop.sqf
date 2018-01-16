/*

	Main client thread for additions to BP

*/

private ["_end"];

_end = false;

waitUntil 
{
  
	[] call JohnO_fnc_serverMessages;
	//[] call JohnO_fnc_persistentGroup;	

	uiSleep 5;
	_end
};