/*

	Process client notifications

*/

private ["_serverRestartInterval","_hint"];

_serverRestartInterval = getNumber (missionConfigFile >> "BreakingPoint" >> "CfgSettings" >> "Cleanup" >> "Restart" >> "interval");

//hint format ["Restart: %1 -- Time: %2 -- Next message: %3",_serverRestartInterval,time,60];

if !(JohnO_BP_restartInterval_messages isEqualTo []) then
{	

	{

		private ["_time","_message"];

		_time = (_x select 0) * 60;
		_message = _x select 1;

		if ((_serverRestartInterval - _time) < time) then
		{
			systemChat _message;

			JohnO_BP_restartInterval_messages = JohnO_BP_restartInterval_messages - [_x];
		};	
	} forEach JohnO_BP_restartInterval_messages;
};	

// Hints

//hint format ["Time: %1 -- Interval:%2 -- Stamp:%3",time,JohnO_BP_hintInterval * 60,JohnO_BP_HintTimeStamp];

if (time - (JohnO_BP_hintInterval * 60) >= JohnO_BP_HintTimeStamp) then
{
	_hint = JohnO_BP_hintArray select 0;

	//titleText [format ["%1", _hint], "PLAIN DOWN"];

	systemChat _hint;

	JohnO_BP_hintArray deleteAt 0;
	JohnO_BP_hintArray pushBack _hint;

	JohnO_BP_HintTimeStamp = time;
};
