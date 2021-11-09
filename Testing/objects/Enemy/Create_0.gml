/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


state = ENEMYSTATE.IDLE;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
dir= 0;
timePassed = 0;//in case there is wall in the way
waitDuration = 60; //frames
wait = 0;


//TODO: Enemy Sprites
//sprMove = sMinotaurMove;

//Enemy Scripts

enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = -1;
