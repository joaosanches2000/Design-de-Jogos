/// @description Pausing

if(keyboard_check_pressed(vk_escape) || global.Morreu)
{
	global.Morreu = false;
	global.gamePaused = !global.gamePaused; //toggles pause on/off
	
	if(global.gamePaused)
	{
		with(all) //selects every instance active in game 
		{
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	
	}
	else
	{
		with(all)
		{
			image_speed = gamePausedImageSpeed;
		}	
	}
}