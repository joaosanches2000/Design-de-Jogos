// @description Global Variables
state = PlayerStateFree;
stateAttack = AttackSlash;
hitByAttack = -1;
collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

walkSpeed = 3;
hSpeed = 0;
vSpeed = 0;

dodgeSpeed = 6;
distanceDodge = 52;

slashCountdown = 12;

grv = 0.1;

