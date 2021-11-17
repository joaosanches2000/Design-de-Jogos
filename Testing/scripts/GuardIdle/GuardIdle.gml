// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GuardIdle(){

	//Check for attack range
	if(instance_exists(target) && point_distance(x,y,target.x,target.y) <= enemyAttackRadius)
	{
		state = ENEMYSTATE.ATTACK;
		sprite_index = sprAttack;
		image_index = 0;
		image_speed = 1.0;

	}

}