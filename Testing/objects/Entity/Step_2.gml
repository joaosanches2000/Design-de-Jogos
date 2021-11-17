/// @description Global code for every entity

//death
if(!global.gamePaused)
{	
	
	if(killOnAnimationEnd)
	{
		EntityPlayAnimation();
		if(entityAnimationEnd) {
			if(entityIsMagicPot)
			{
				
				instance_create_depth(x,y,depth,oMaskUnlock);
				NewTextBox("Great, you found it!", 0);
				NewTextBox("I wonder how to use its powers...", 0);
			}
			entityAnimationEnd = false;
			instance_destroy();
			killOnAnimationEnd = true;
		}
	}
	depth = -bbox_bottom;

	if(lifted && instance_exists(Player))
	{
		entityCollision = false;
		if(Player.sprite_index != sPlayerLift)
		{
			x = Player.x;
			y = Player.y;
			depth = Player.depth-1;
			z = 13;
			
		}
	}
	if(!lifted)
	{
		//Be thrown
		if(thrown)
		{	
			
			
			depth = Player.depth-1;
			entityCollision = true;
			throwDistanceTravelled = min(throwDistanceTravelled+3,throwDistance);
			x = xstart + lengthdir_x(throwDistanceTravelled,direction);
			y = ystart + lengthdir_y(throwDistanceTravelled,direction);
			if(tilemap_get_at_pixel(collisionMap,x,y) > 0)
			{
				
				
				x -=  lengthdir_x(10,point_direction(Player.x,Player.y,x,y));
				y -=  lengthdir_y(10,point_direction(Player.x,Player.y,x,y));
				grv = 0.1;
				thrown = false;
			}

			
			
			
			throwPercent = throwStartPercent + lerp(0,1 - throwStartPercent, throwDistanceTravelled / throwDistance);
			z = throwPeakHeight * sin(throwPercent * pi);
			
			if(throwDistance == throwDistanceTravelled)
			{
				
				if(entityThrowBreak){
					EntityPlayAnimation();
					if(entityAnimationEnd){
						entityAnimationEnd = false;
						if(entityIsMagicPot)
						{
							instance_create_depth(x,y,depth,oMaskUnlock)
							NewTextBox("Great, you found it!", 0);
							NewTextBox("I wonder how to use its powers...", 0);
						}
						instance_destroy();
						
						
					}
						
				}
					
			
			}
		}
		else
		{
			
			if(z > 0)
			{	

				z = max(z-grv, 0);
				grv += 0.1;
				if(z==0 && entityThrowBreak)
				{
					if(entityIsMagicPot){
						killOnAnimationEnd = true;
					}	
				}
			}
			else
			{
				grv = 0.1;
			}
		
		}
	}
}

flash = max(flash -0.04, 0);

