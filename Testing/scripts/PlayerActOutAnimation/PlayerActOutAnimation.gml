/// @desc PlayerActOutAnimation(Sprite, EndScript)
/// @arg Sprite
/// @arg EndScript

// Carry out an animation and optionally carry out a script when the animation ends

function PlayerActOutAnimation(argument0){
	
	state = PlayerStateAct;
	sprite_index = argument0;

	/*if (argument_count > 1) 
		animationEndScript = argument1;*/
	localFrame = 0;
	image_index = 0;
	
	PlayerAnimateSprite();
}
