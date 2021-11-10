// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MinotaurChase(){

	sprite_index = sMinotaurWalk;
	if(instance_exists(target))
	{
		xTo = target.x;
		yTo = target.y;
		
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		if(_distanceToGo > enemySpeed)
		{
			hSpeed = lengthdir_x(enemySpeed, dir);
			vSpeed = lengthdir_y(enemySpeed, dir);
		}
		else
		{
			hSpeed = lengthdir_x(_distanceToGo, dir);
			vSpeed = lengthdir_y(_distanceToGo, dir);	
		}
		if(hSpeed != 0) 
			image_xscale = sign(hSpeed);
	}
	
	EnemyTileCollision();
	
	//Check for attack range

	if(instance_exists(target) && point_distance(x,y,target.x,target.y) <= enemyAttackRadius)
	{
		state = ENEMYSTATE.ATTACK;
		sprite_index = sMinotaurAttack;
		image_index = 0;
		image_speed = 1.0;
		//Target 8px past the player
		xTo +=  lengthdir_x(0,dir);
		yTo +=  lengthdir_y(0,dir);

	}
	
}

