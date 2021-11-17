// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GuardDie() {
	
	
	//if animation is finished kill object
	if(image_index + (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) >= image_number )
		image_speed = 0;
	isDead = true;
	entityCollision = false;
	//enemyDamageTouch = 0;
	
	/*
	EntityPlayAnimation();
	if(entityAnimationEnd)
	{
		entityAnimationEnd = false;
		image_speed = 0;
	}*/

}