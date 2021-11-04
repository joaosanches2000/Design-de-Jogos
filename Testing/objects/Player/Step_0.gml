/// @description Update
// You can write your code in this editor


key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

var moveH = key_right - key_left;
var moveV = key_down - key_up;

horizontalSpeed = moveH * walkSpeed;
verticalSpeed = moveV * walkSpeed;

x = x + horizontalSpeed;
y = y + verticalSpeed;

if(horizontalSpeed > 0) //move right
	sprite_index = sRightWalk;

if(horizontalSpeed < 0) //move left
	sprite_index = sLeftWalk;
	
if(verticalSpeed > 0) //move up
	sprite_index = sDownWalk;
	
if(verticalSpeed < 0) //move down
	sprite_index = sUpWalk;
