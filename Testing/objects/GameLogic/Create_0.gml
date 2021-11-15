/// @description Init and globals

randomize(); // changes the seed of the game

global.gamePaused = false;
global.textSpeed = 0.75;
global.iLifted = noone;
global.playerHealthMax=3;
global.playerHealth = global.playerHealthMax

global.iUI = instance_create_layer(0,0,layer,oUI);

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);


//DOESNT WORK
//instance_create_layer(0,0,"TileUpper",Camera);
