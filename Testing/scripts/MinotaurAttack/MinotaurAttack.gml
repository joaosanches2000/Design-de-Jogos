// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MinotaurAttack(){
	

	//var _distanceToGo = point_distance(x,y,xTo,yTo);
	
		sprite_index = sprAttack;
		image_speed = 1.0;
		//Target 8px past the player
		xTo +=  lengthdir_x(0,dir);
		yTo +=  lengthdir_y(0,dir);
	
	//hSpeed = 0;
	//EnemyTileCollision();
	//image_index > image_number - 1
	if(point_distance(x,y,Player.x,Player.y) > enemyAttackRadius)
	{			
		
		stateTarget = ENEMYSTATE.CHASE;
		stateWaitDuration = 15;
		state = ENEMYSTATE.WAIT;
	}
	else
		if(image_index > image_number - 1)
			image_index = 0;
	
	
}