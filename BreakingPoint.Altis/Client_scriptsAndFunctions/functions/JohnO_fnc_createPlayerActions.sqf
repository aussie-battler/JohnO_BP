
Ghosts_has_reviveAction = false;
Ghosts_has_stashAction = false;
Ghosts_has_takeUniformAction = false;

Ghosts_reviveAction = ["Revive",
{

    private ["_target"];

    _target = cursorTarget;
    player playAction "Medic";

    sleep 4;

    [_target, false] remoteExec ["setUnconscious",0,false];
    [_target, true] remoteExec ["allowDamage",0,false];
    _target setVariable ["Ghosts_PlayerIsUnconcious",false,true];


},"",0,false,true,"","[cursorTarget] call Ghosts_fnc_targetLifeState",15,true];

Ghosts_userActions pushBack 
[
    [
        Ghosts_reviveAction,
        "Ghosts_has_reviveAction",
        "Ghosts_has_reviveAction_current",
        "[cursorTarget] call Ghosts_fnc_targetLifeState && !Ghosts_has_reviveAction && player distance cursorObject < 2",
        false
    ] 
];