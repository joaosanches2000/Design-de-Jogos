function PlayerStateFree(){
	
	hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);

	
	PlayerCollision(); //script that handles player collision and movement
	
	
	//Update Sprite Index
	var _oldSprite = sprite_index;
	if (inputMagnitude != 0) {
		direction = inputDirection;
		sprite_index = spriteRun;
	} 
	else 
		sprite_index = spriteIdle;

	if(_oldSprite != sprite_index) 
		localFrame = 0;

	//Update Image Index
	PlayerAnimateSprite();

	if(keyAttack)
	{
		state = PlayerStateAttack;	
		stateAttack = AttackSlash;
	}	
	
	if(keySpecialAttack)
	{
		state = PlayerStateAttack;	
		stateAttack = Attack360Slash;
	}	
	
	


	if(keyDodge)
	{
		state = PlayerStateDodge;
		moveDistanceRemaining = distanceDodge;
		
	}

/*	if(hSpeed > 0) //move right
		sprite_index = sRightWalk;

	if(hSpeed < 0) //move left
		sprite_index = sLeftWalk;
	
	if(vSpeed > 0) //move down
		sprite_index = sDownWalk;
		
	if(vSpeed < 0) //move up
		sprite_index = sUpWalk;*/
		
	/*

	if(vSpeed=0 and hSpeed=0){
			switch (keyboard_lastkey){
				case vk_down:
					sprite_index = sPlayer;
					show_debug_message("vk_down");
					break;
				case vk_up:
					sprite_index = sUpStand;
					show_debug_message("vk_up");
					break;
				case vk_left:
					sprite_index = sLeftStand;
					show_debug_message("vk_left");
					break;
				case vk_right:
					sprite_index = sRightStand;
					show_debug_message("vk_right");
					break;
				case vk_shift:
					if (image_speed > 0) {
						if (image_index > image_number - 1){
							sprite_index = sPlayer;
							show_debug_message("vk_shift");
						}
					}
					break;
			}
	}

*/
	//keyboard_check - With this function you can check to see
	//if a key is held down or no


}