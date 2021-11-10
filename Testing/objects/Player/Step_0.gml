/// @description Update
// You can write your code in this editor


keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));


inputDirection = point_direction(0,0,keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)


hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);

if(!global.gamePaused)
	script_execute(state);
	