function EntityPlayAnimation(){
	image_speed = 1.0;
	var _totalFrames = sprite_get_number(sprite_index);
	image_index = localFrame +  _totalFrames;


	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

	//If animation would loop on next game step

	if (localFrame >= _totalFrames){
		entityAnimationEnd = true;
	}
	else entityAnimationEnd= false;

	/*var _totalFrames = sprite_get_number(sMinotaur)/4;
	image_index=localFrame+(CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sMinotaur)/FRAME_RATE;
	*/
}
