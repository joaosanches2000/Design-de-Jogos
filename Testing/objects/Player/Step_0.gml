/// @description Update
// You can write your code in this editor


keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyAttack = keyboard_check_pressed(ord("F"));
keySpecialAttack = keyboard_check_pressed(vk_shift);
keyActivate = keyboard_check_pressed(vk_space);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)


if(!global.gamePaused)
	script_execute(state);
	
depth -= bbox_bottom;
	
