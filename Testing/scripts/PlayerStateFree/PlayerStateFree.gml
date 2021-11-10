function PlayerStateFree(){


	PlayerCollision(); //script that handles player collision and movement


	if(hSpeed > 0) //move right
		sprite_index = sRightWalk;

	if(hSpeed < 0) //move left
		sprite_index = sLeftWalk;
	
	if(vSpeed > 0) //move down
		sprite_index = sDownWalk;
		
	if(vSpeed < 0) //move up
		sprite_index = sUpWalk;
		
	

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
	
	if(keyboard_check_pressed(vk_shift)){
		state = PlayerStateAttack;	
		stateAttack = AttackSlash;
	}
		



	
	

	
	//keyboard_check - With this function you can check to see if a key is held down or no



	//Change state
	if(keyboard_check_pressed(vk_space))
	{
		state = PlayerStateDodge;
		moveDistanceRemaining = distanceDodge;
		
	}

}