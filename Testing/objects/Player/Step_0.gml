/// @description Update
// You can write your code in this editor


keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);


inputDirection = point_direction(0,0,keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)


hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);

script_execute(state);