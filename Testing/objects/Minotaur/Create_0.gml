/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;


//TODO: Enemy Sprites
sprDie = sMinotaurDeath;
sprWalk = sMinotaurWalk;
sprAttack = sMinotaurAttack;
//sprHurt
//

//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = MinotaurWander;
enemyScript[ENEMYSTATE.CHASE] = MinotaurChase;
enemyScript[ENEMYSTATE.ATTACK] = MinotaurAttack;
enemyScript[ENEMYSTATE.HURT] = MinotaurHurt;
enemyScript[ENEMYSTATE.DIE] = MinotaurDie;
