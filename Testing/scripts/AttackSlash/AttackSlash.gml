// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackSlash(){
	if(sprite_index != sPlayerAttackSlash) 
	{
		//Animation set-up
		sprite_index = sPlayerAttackSlash;
		localFrame = 0;
		image_index = 0;
		
		//Clear hit list
		if(!ds_exists(hitByAttack,ds_type_list))
			hitByAttack = ds_list_create();
		ds_list_clear(hitByAttack);
		
	}
	
	CalculateAttack(sPlayerAttackSlashCol);
	//TODO: Animate Sprite Script
	slashCountdown--;
	
	if(slashCountdown == 0)
	{
		state = PlayerStateFree;
		slashCountdown = 12;
	}

}