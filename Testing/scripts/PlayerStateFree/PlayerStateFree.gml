function PlayerStateFree(){
	
	hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);

	
	PlayerCollision(); //script that handles player collision and movement
	
	
	//Update Sprite Index
	var _oldSprite = sprite_index;
	if (inputMagnitude != 0) {
		direction = inputDirection;
		sprite_index = spriteRun;
		if (image_index=1 || image_index=3 || image_index=6 || image_index=9){
			show_debug_message(image_index);
			audio_play_sound(Running_Road,1,false);
		}
	} 
	else 
		sprite_index = spriteIdle;

	if(_oldSprite != sprite_index) 
		localFrame = 0;

	//Update Image Index
	PlayerAnimateSprite();

	if(keyAttack)
	{
		audio_play_sound(Dagger_slash,1,false)
		state = PlayerStateAttack;	
		stateAttack = AttackSlash;
	}	
	
	if(keySpecialAttack)
	{
		audio_play_sound(Dagger_slash,1,false)
		state = PlayerStateAttack;	
		stateAttack = Attack360Slash;
	}	
	
	if(keyGun)
	{
		if (global.playerEquipped == ITEM.ZEUS){
			audio_play_sound(Thunder,1,false)
			state = PlayerStateAttack;	
			stateAttack = AttackGun;
		}
	}	
	

	if(keyActivate)
	{
		var _activateX = x + lengthdir_x(10,direction);
		var _activateY = y + lengthdir_y(10,direction);
		var _activateSize = 4;
		var _activateList = ds_list_create();
		activate =  noone;
		var _entitiesFound = collision_rectangle_list(
			_activateX - _activateSize,
			_activateY - _activateSize,	
			_activateX + _activateSize,
			_activateY + _activateSize,
			Entity,
			false,
			true,
			_activateList,
			true		
		);
		
		//if the first instance we find is either our lifted entity or it has no script: try the next one
		while(_entitiesFound > 0)
		{
			var _check = _activateList[| --_entitiesFound];
			if(_check != global.iLifted && _check.entityActivateScript != -1)
			{
				activate = _check;
				break;
			}
		}
		
		
		ds_list_destroy(_activateList);
		
		//activate = instance_position(x+_activateX,y+_activateY,Entity);
		
		if(activate == noone)
		{
			if(global.iLifted != noone)
			{
				
				PlayerThrow();
			}
			else {
				if (global.playerEquipped == ITEM.HERMES){
					state = PlayerStateDodge;
					moveDistanceRemaining = distanceDodge;
				}
			}
		
		
		}
		else
		{
			ScriptExecuteArray(activate.entityActivateScript,activate.entityActivateArgs);
			
			//TODO : MAKE ENTETY FACE PLAYER IF YOU WANT I DONT
		}
		
	}
	
	//Cycle items
	
	if (global.playerHasAnyItems){
		var _cycleDirection = keyItemSelectUp - keyItemSelectDown;
		if (_cycleDirection != 0){
			do{
				global.playerEquipped += _cycleDirection;
				if(global.playerEquipped <1) global.playerEquipped = ITEM.TYPE_COUNT-1;
				if(global.playerEquipped >= ITEM.TYPE_COUNT) global.playerEquipped = 1;
								
			} until (global.playerItemUnlocked[global.playerEquipped]);
		}
	}


}