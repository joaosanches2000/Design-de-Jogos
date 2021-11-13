// @description Global Variables
collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

state = PlayerStateFree;
lastState = state;
stateAttack = AttackSlash;
hitByAttack = -1;


walkSpeed = 3.0;
image_speed=0;
hSpeed=0;
vSpeed=0;

localFrame=0;
spriteIdle=sPlayer;
spriteRun=sPlayerRun;
spriteAttack = sPlayerAttackSlash;
sprite360Attack = s360Slash;

dodgeSpeed = 6;
distanceDodge = 52;

slashCountdown = 12;

grv = 0.1;

animationEndScript = -1;

