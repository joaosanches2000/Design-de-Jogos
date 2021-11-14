// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MinotaurHurt(){
	
	//Set sprite here if needed
	sprite_index = sprHurt;
	
	var _distanceToGo = point_direction(x,y,xTo,yTo);
	if(_distanceToGo > enemySpeed -2)
	{
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(enemySpeed,dir);
		vSpeed = lengthdir_y(enemySpeed,dir);
		if(hSpeed != 0)
			image_xscale = -sign(hSpeed);
		
		
		show_debug_message("IM SPEED ______")
		show_debug_message(enemySpeed)
		show_debug_message("IM distance ______")
	
		show_debug_message(_distanceToGo)
		EnemyTileCollision()


	
	}
	else
	{
		show_debug_message("im here and im queer")
		x = xTo;
		y = yTo;
		if(statePrevious != ENEMYSTATE.ATTACK)
			state = statePrevious;
		else 
			state = ENEMYSTATE.CHASE;
	}
	
}