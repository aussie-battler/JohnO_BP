private ['_code', '_function', '_file'];

{
    _code = '';
    _function = _x select 0;
    _file = _x select 1;

    _code = compileFinal (preprocessFileLineNumbers _file);

    missionNamespace setVariable [_function, _code];
}
forEach
[
	["JohnO_fnc_clientLoop","Client_scriptsAndFunctions\JohnO_fnc_clientLoop.sqf"],
	["JohnO_fnc_initClientSettings","Client_scriptsAndFunctions\JohnO_fnc_initClientSettings.sqf"],
	["JohnO_fnc_serverMessages","Client_scriptsAndFunctions\functions\JohnO_fnc_serverMessages.sqf"],
	["JohnO_fnc_persistentGroup","Client_scriptsAndFunctions\functions\JohnO_fnc_persistentGroup.sqf"]
];

true