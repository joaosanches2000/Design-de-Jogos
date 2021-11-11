/// @description Init and globals

randomize(); // changes the seed of the game

global.gamePaused = false;
global.iLifted = noone;

room_goto(ROOM_START);


//DOESNT WORK
//instance_create_layer(0,0,"TileUpper",Camera);
