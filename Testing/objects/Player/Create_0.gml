// @description Global Variables
state = PlayerStateFree;
lastState = state;
stateAttack = AttackSlash;
hitByAttack = -1;
collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

walkSpeed = 2.0;
image_speed=0;
hSpeed=0;
vSpeed=0;

localFrame=0;
spriteIdle=sPlayer;
spriteRun=sPlayerRun;

dodgeSpeed = 6;
distanceDodge = 52;

slashCountdown = 12;

grv = 0.1;

animationEndScript = -1;

