function MinotaurHurt(){
	
	//Set sprite here if needed
	sprite_index = sprHurt;
	var _distanceToGo = point_distance(x,y,xTo,yTo);
	if(_distanceToGo > enemySpeed)
	{
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(enemySpeed,dir);
		vSpeed = lengthdir_y(enemySpeed,dir);
		if(hSpeed != 0)
			image_xscale = -sign(hSpeed);

		if(EnemyTileCollision())
		{
			xTo = x;
			yTo = y;
		}
	
	}
	else
	{
		x = xTo;
		y = yTo;
		if(statePrevious != ENEMYSTATE.ATTACK)
			state = statePrevious;
		else 
			state = ENEMYSTATE.CHASE;
	}
	
}