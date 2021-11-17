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
			//z = y;
			if(tilemap_get_at_pixel(collisionMap,x,y) > 0)
			{
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
									//@Copyright Adriano Vaz
				for(i=0; i<3;i++)	//isto funciona n sei pq, mas agr n tenho cabeça
					EntityPlayAnimation();
				//Fim de @Copyright lolitos
				
				if(entityAnimationEnd) {
					entityAnimationEnd = false;
					instance_destroy();
				}
					//aqui deviam estar cenas mas n tao lol
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

