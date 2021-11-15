// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateBoink(){
	hSpeed=lengthdir_x(speedBoink, direction-180);
	vSpeed=lengthdir_y(speedBoink, direction-180);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedBoink);
	var _collided = PlayerCollision();
	
	sprite_index=sPlayer;
	image_index=CARDINAL_DIR -2;
	
	z=sin(((moveDistanceRemaining / distanceBoink)*pi) * distanceBoinkHeight);
	
	if(moveDistanceRemaining <=0){
		state =PlayerStateFree;
	}
}