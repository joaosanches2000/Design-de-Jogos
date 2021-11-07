function PlayerStateFree(){

	PlayerCollision(); //script that handles player collision and movement


	if(hSpeed > 0) //move right
		sprite_index = sRightWalk;

	if(hSpeed < 0) //move left
		sprite_index = sLeftWalk;
	
	if(vSpeed > 0) //move up
		sprite_index = sDownWalk;
	
	if(vSpeed < 0) //move down
		sprite_index = sUpWalk;
		
	if(vSpeed=0 and hSpeed=0)
		sprite_index = sPlayer;
		

	if(keyboard_check_pressed(vk_shift))
	{
		state = PlayerStateAttack;	
		stateAttack = AttackSlash;
	}



	//Change state
	if(keyboard_check_pressed(vk_space))
	{
		//state = PlayerStateDodge;
		//moveDistanceRemaining = distanceDodge;
		
		
	}

}