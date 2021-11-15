/// @description Global code for every entity

//death
if(!global.gamePaused)
{
	depth = -bbox_bottom;

	if(lifted && instance_exists(Player))
	{
		entityCollision = false;
		if(Player.sprite_index != sPlayerLift)
		{
			x = Player.x;
			y = Player.y -13;
			depth = Player.depth-1;
			
		}
	}
	if(!lifted)
	{
		//Be thrown
		if(thrown)
		{	
			
			entityCollision = true;
			throwDistanceTravelled = min(throwDistanceTravelled+3,throwDistance);
			x = xstart + lengthdir_x(throwDistanceTravelled,direction);
			y = ystart + lengthdir_y(throwDistanceTravelled,direction);
			if(tilemap_get_at_pixel(collisionMap,x,y) > 0)
			{
				thrown = false;
				grv = 0.1;
			
			}
			
			throwPercent = throwStartPercent + lerp(0,1 - throwStartPercent, throwDistanceTravelled / throwDistance);
			y = throwPeakHeight * sin(throwPercent * pi);
			
			if(throwDistance == throwDistanceTravelled)
			{
				thrown = false;
				if(entityThrowBreak)
					instance_destroy();
			
			}
		}
		else
		{
			if(z > 0)
			{
				z = max(z-grv, 0);
				grv += 0.1;
				if(z==0 && entityThrowBreak)
					instance_destroy();
			
			}
			else
			{
				grv = 0.1;
			}
		
		}
	}
}
flash = max(flash -0.04, 0);

