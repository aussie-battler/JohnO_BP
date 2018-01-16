/*

	Client settings

*/

//Restart warnings

JohnO_BP_restartWarningsStart = 15;																					// Time in minutes before the server restarts to display warning messages
JohnO_BP_restartInterval_messages =																					// First value: Time in minutes before restart Second value: Message to display
[

	//[20,"The server will enter SHUTDOWN MODE in approximatley 15 minutes -- Prepare to log out"],
	//[15,"The server will enter SHUTDOWN MODE in approximatley 10 minutes -- Prepare to log out"],
	//[10,"The server will enter SHUTDOWN MODE in approximatley 5 minutes -- Log out NOW to avoid gear loss"]
	//[5,"The server will restart in approximatley 5 minutes"],
	//[2,"The server will restart in approximatley 2 minutes..LOG OUT NOW TO AVOID GEAR LOSS"]

];

// Hint's are displayed periodically throughout the play session

JohnO_BP_hintInterval = 5;																							// Time in minutes a random hint will displayed
JohnO_BP_HintTimeStamp = time;																						// timestamp - Don't touch

JohnO_BP_hintArray =
[
	"Hosted by 3CR",
	"Assign USER ACTION 1 -- Sit and heal",
	"Discord - https://discord.gg/GSG8HGt",
	"Assign USER ACTION 2 -- Jump",
	"Assign USER ACTION 4 -- Eat",
	"Assign USER ACTION 5 -- Drink",
	"Assign USER ACTION 9 -- Auto run",
	"Assign USER ACTION 11 -- Ear plugs",
	"Persistent squads are handled via our discord -- https://discord.gg/GSG8HGt"
];

JohnO_BP_hintArray call BIS_fnc_arrayShuffle;