// Update Sprite
function PlayerAnimateSprite(){
	
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = localFrame + (CARDINAL_DIR * _totalFrames);

	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
<<<<<<< Updated upstream
=======


>>>>>>> Stashed changes
	//If animation would loop on next game step
	if (localFrame >= _totalFrames){
		//audio_stop_sound(Running_Road);
		animationEnd = true;
		localFrame -= _totalFrames; 
	}
	else animationEnd= false;
	
}
