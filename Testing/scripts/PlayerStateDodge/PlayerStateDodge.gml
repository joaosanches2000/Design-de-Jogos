// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDodge(){
hSpeed = lengthdir_x(dodgeSpeed, direction);
vSpeed = lengthdir_y(dodgeSpeed,direction);

moveDistanceRemaining = max(0, moveDistanceRemaining - dodgeSpeed);

var _collided = PlayerCollision();

//TODO: Update Sprite here

if(moveDistanceRemaining <= 0)
{
	state = PlayerStateFree;
}


}