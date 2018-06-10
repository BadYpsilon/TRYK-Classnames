/* Filename: welcomebonus.sqf
// Author: Kuchenplatte
// Release : 10.Juni 2018
*/

private _loginCount0 = 5; 
private _loginCount1 = 10; 
private _loginCount2 = 15; 
private _loginCount3 = 20; 
private _loginCount4 = 25; 
private _loginCount5 = 30; 
private _loginCount6 = 35; 
private _loginCount7 = 40; 
private _loginCount8 = 45; 
private _loginCount9 = 50; 

private _foodArray = ["apple","boltcutter","redgull"];
private _drinkArray = ["apple","boltcutter","redgull"];
private _itemArray = ["apple","boltcutter","redgull"];

private _logins = profileNamespace getVariable ["altislife_Logins",0];
_logins = _logins + 1;
profileNamespace setVariable ["altislife_Logins",_logins];
saveProfileNamespace;
systemChat format ["Willkommen zurück %1!",(name player)];
systemChat format ["Danke das du dich zum %1x eingeloggt hast!",_logins];

if (_logins > _loginCount9) exitWith {systemChat "Have fun.";};

systemChat "Du wirst gleich deine Belohnung bekommen!";
sleep 10;
systemChat "Hier ist deine Belohnung!";
systemChat "Have fun.";

_Altis_AddFoodDrink = {
 private _food = _foodArray call BIS_fnc_selectRandom; 
 private _drink = _drinkArray call BIS_fnc_selectRandom;
 [true,_food,1] call life_fnc_handleInv;
 [true,_drink,1] call life_fnc_handleInv;
};


if (_logins <= _loginCount0) then {
 [true,"waterBottle",1] call life_fnc_handleInv;
 [true,"apple",1] call life_fnc_handleInv;
};


if ((_loginCount1 <= _logins) && (_logins < _loginCount2)) then {
 [] call _Altis_AddFoodDrink;
};


if ((_loginCount2 <= _logins) && (_logins < _loginCount3)) then {
 [] call _Altis_AddFoodDrink;
};


if ((_loginCount3 <= _logins) && (_logins < _loginCount4)) then { 
 [] call _Altis_AddFoodDrink;
 private _item = _itemArray call BIS_fnc_selectRandom;
 [true,_item,1] call life_fnc_handleInv;
};

if ((_loginCount4 <= _logins) && (_logins < _loginCount5)) then {
 [] call _Altis_AddFoodDrink;
 private _item = _itemArray call BIS_fnc_selectRandom;
 [true,_item,1] call life_fnc_handleInv;
};


if ((_loginCount5 <= _logins) && (_logins < _loginCount6)) then {
 [] call _Altis_AddFoodDrink;
 private _item = ["redgull","tbacon"] call BIS_fnc_selectRandom;
 [true,_item,1] call life_fnc_handleInv;
};


if ((_loginCount6 <= _logins) && (_logins < _loginCount7)) then { 
 [] call _Altis_AddFoodDrink;
 private _item = ["spikestrip","salema"] call BIS_fnc_selectRandom;
 [true,_item,1] call life_fnc_handleInv;
};

if ((_loginCount7 <= _logins) && (_logins < _loginCount8)) then { 
 [] call _Altis_AddFoodDrink;
 [true,"defusekit",1] call life_fnc_handleInv;
 [true,"waterBottle",1] call life_fnc_handleInv;
};


if ((_loginCount8 <= _logins) && (_logins < _loginCount9)) then { 
 [] call _Altis_AddFoodDrink;
 [true,"defusekit",1] call life_fnc_handleInv;
 [true,"storagesmall",1] call life_fnc_handleInv;
};


if (_loginCount9 <= _logins) then {
 [] call _Altis_AddFoodDrink;
  [true,"waterbottle",1] call life_fnc_handleInv;
 [true,"redgull",1] call life_fnc_handleInv;
 [true,"tbacon",1] call life_fnc_handleInv;
};