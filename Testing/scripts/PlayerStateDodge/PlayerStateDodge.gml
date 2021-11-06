// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDodge(){
	
inputDirection = point_direction(0,0,keyRight - keyLeft, keyDown - keyUp);

hSpeed = lengthdir_x(dodgeSpeed, inputDirection);
vSpeed = lengthdir_y(dodgeSpeed, inputDirection);

moveDistanceRemaining = max(0, moveDistanceRemaining - dodgeSpeed);

var _collided = PlayerCollision();

//TODO: Update Sprite here

if(moveDistanceRemaining <= 0)
{
	state = PlayerStateFree;
}


}