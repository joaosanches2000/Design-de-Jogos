function MinotaurWander(){
	sprite_index = sprWalk;
	
	//At destination or give up?
	if(x == xTo && y == yTo || (timePassed > enemyWanderDistance / enemySpeed))
	{
		hSpeed = 0;
		vSpeed = 0;
		//make it complete animation when reaching the destination
		if(image_index < 1)
		{
			image_speed = 0.0;
			image_index = 0;
		
		}
		//set new destination
		if(++wait >= waitDuration)
		{
			wait = 0;
			timePassed = 0;
			dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
			xTo = x +lengthdir_x(enemyWanderDistance,dir);
			yTo = y +lengthdir_y(enemyWanderDistance,dir);
		}
	}
	else
	{
		timePassed++;
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		var _speedThisFrame = enemySpeed;
		if(_distanceToGo < enemySpeed) 
			_speedThisFrame = _distanceToGo;
		
		image_speed = 1.0;
		dir =  point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(_speedThisFrame,dir);
		vSpeed = lengthdir_y(_speedThisFrame,dir);
		if(hSpeed != 0)
			image_xscale = sign(hSpeed);
				
		EnemyTileCollision();
	}	
	
	
	

	//Check for Agroo
	if(++aggroCheck >= aggroCheckDuration)
	{
		aggroCheck = 0;
		if(instance_exists(Player) && point_distance(x,y,Player.x,Player.y) <= enemyAggroRadius)
		{
			state = ENEMYSTATE.CHASE;
			target = Player;
		}
	}
}
