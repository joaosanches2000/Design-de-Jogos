// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GuardIdle(){
	
	sprite_index = sprIdle;
	image_index = 0;
	image_speed = 1.0;
	//Check for attack range
	if(instance_exists(Player) && point_distance(x,y,Player.x,Player.y) <= enemyAttackRadius)
	{
		state = ENEMYSTATE.ATTACK;
		sprite_index = sprAttack;
		image_index = 0;
		image_speed = 1.0;

	}
	
	
	
	if(EnemyTileCollision()) {
		if(wineCollision) {
			show_debug_message("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
	
	
			state = ENEMYSTATE.DIE;
			sprite_index = sprDie;
			image_index = 0;
			image_speed = 1.0;
		}
	}

}