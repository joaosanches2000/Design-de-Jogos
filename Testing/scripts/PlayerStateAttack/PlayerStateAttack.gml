function PlayerStateAttack(){
	
	script_execute(stateAttack);

}


function Attack360Slash(){
	if(sprite_index != s360Slash || sprite_index != sPlayerAttackSlash) 
	{
		//Animation set-up
		sprite_index = s360Slash;
		
		image_index = 0;
		

		//Clear hit list
		if(!ds_exists(hitByAttack,ds_type_list))
			hitByAttack = ds_list_create();
		ds_list_clear(hitByAttack);
		
	}
	
	
	CalculateAttack(sPlayerAttack360SlashCol);
			
	PlayerPlayAnimation();
		
	if(animationEnd)
	{
		state = PlayerStateFree;			
		animationEnd = false;
		
	}
		
	
	
	//CalculateAttack(sPlayerAttackSlashCol);

}

function AttackSlash(){
	if(sprite_index != sPlayerAttackSlash || sprite_index != s360Slash) 
	{
		//Animation set-up
		sprite_index = sPlayerAttackSlash;
		
		//localFrame = 0;
		image_index = 0;
		
		
		//Clear hit list
		if(!ds_exists(hitByAttack,ds_type_list))
			hitByAttack = ds_list_create();
		ds_list_clear(hitByAttack);
			
	}
	
	
	CalculateAttack(sPlayerAttackSlashCol);
	
	//Animate Sprite
	PlayerAnimateSprite();
				
	if(animationEnd)
	{
		state = PlayerStateFree;			
		animationEnd = false;
	}
		
	
}



function CalculateAttack(argument0){
	mask_index = argument0;
	var hitByAttackNow = ds_list_create(); //list of enemies hit by attack this frame
	var hits = instance_place_list(x,y,Entity,hitByAttackNow,false); //if true list is ordered
	if(hits > 0)
	{		
		for(var i = 0; i < hits; i++)
		{
			//hit instance
			var hitID = hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID) == -1) //if instance is not in attack list
			{
				ds_list_add(hitByAttack, hitID);
				with(hitID)
				{
					if(object_is_ancestor(object_index,Enemy))
					{
						HurtEnemy(id,5,other.id,10);
					}
					else if(entityHitScript != -1) 
						script_execute(entityHitScript);
				}
			
			}
		}
	
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = Player;
}

function HurtEnemy(_enemy,_damage,_source, _knockback)
{

	with(_enemy)
	{
		if(state != ENEMYSTATE.DIE)
		{
			enemyHP -= _damage;
			flash = 1;
			
			if(enemyHP <= 0)
			{
				state = ENEMYSTATE.DIE;
			}
			else
			{
				if(state != ENEMYSTATE.HURT)
					statePrevious = state;
				state = ENEMYSTATE.HURT;
			}
			
			image_index = 0;
			if( _knockback != 0)
			{
				var _knockDirection = point_direction(x,y,(_source).x, (_source).y)
				xTo = x - lengthdir_x( _knockback,_knockDirection)
				yTo = y - lengthdir_y( _knockback,_knockDirection)
				
			}
			
			
		}
	
	}


<<<<<<< Updated upstream
}

function Attack360Slash(){
	if(sprite_index != s360Slash || sprite_index != sPlayerAttackSlash) 
	{
		//Animation set-up
		sprite_index = s360Slash;
		
		image_index = 0;
		
		
		PlayerPlayAnimation();
		
		if(animationEnd)
		{
			state = PlayerStateFree;			
			animationEnd = false;
		
		}
		
		//Clear hit list
		/*if(!ds_exists(hitByAttack,ds_type_list))
			hitByAttack = ds_list_create();
		ds_list_clear(hitByAttack);
		*/
	
	}
	

	//CalculateAttack(sPlayerAttackSlashCol);

}

function AttackSlash(){
	if(sprite_index != sPlayerAttackSlash || sprite_index != s360Slash) 
	{
		//Animation set-up
		sprite_index = sPlayerAttackSlash;
		
		//localFrame = 0;
		image_index = 0;
	
		PlayerAnimateSprite();
		
		
		//CalculateAttack(sPlayerAttackSlashCol);
		
		if(animationEnd)
		{
			state = PlayerStateFree;			
			animationEnd = false;
		}
		/*//Clear hit list
		if(!ds_exists(hitByAttack,ds_type_list))
			hitByAttack = ds_list_create();
		ds_list_clear(hitByAttack);
	`	*/
		
		
	}
	
	
	
	/*//TODO: Animate Sprite Script
	slashCountdown--;
	
	if(slashCountdown == 0)
	{
		state = PlayerStateFree;
		slashCountdown = 12;
	}*/

=======
>>>>>>> Stashed changes
}