/// @description Init and globals

randomize(); // changes the seed of the game

global.gamePaused = false;
global.textSpeed = 0.75;
global.iLifted = noone;
global.playerHealthMax=3;
global.playerHealth = global.playerHealthMax
global.Morreu=false;
global.iUI = instance_create_layer(0,0,layer,oUI);


//Items

global.playerEquipped=ITEM.ZEUS;
global.playerAmmo=array_create(ITEM.TYPE_COUNT, -1)
global.playerItemUnlocked = array_create(ITEM.TYPE_COUNT, false);
global.playerAmmo[ITEM.ZEUS]=1;
global.playerAmmo[ITEM.DYN]=0;

global.playerItemUnlocked[ITEM.ZEUS]=true;
global.playerHasAnyItems=true;


surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);


//DOESNT WORK
//instance_create_layer(0,0,"TileUpper",Camera);
