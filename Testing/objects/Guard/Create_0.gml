/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.IDLE;


//TODO: Enemy Sprites
sprDie = sMinotaurDeath;
sprAttack = sMinotaurAttack;
//sprHurt
//

//Enemy Scripts
enemyScript[ENEMYSTATE.ATTACK] = MinotaurAttack;
enemyScript[ENEMYSTATE.IDLE] = MinotaurAttack;
enemyScript[ENEMYSTATE.DIE] = MinotaurDie;
