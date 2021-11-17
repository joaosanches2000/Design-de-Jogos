/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.IDLE;


//TODO: Enemy Sprites
sprDie = sGuardDie;
sprAttack = sGuardAttack;
sprIdle = sGuardIdle;

//sprHurt
//

//Enemy Scripts
enemyScript[ENEMYSTATE.ATTACK] = GuardAttack;
enemyScript[ENEMYSTATE.IDLE] = GuardIdle;
enemyScript[ENEMYSTATE.DIE] = GuardDie;
