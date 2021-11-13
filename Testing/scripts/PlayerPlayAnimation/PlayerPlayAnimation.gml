function PlayerPlayAnimation(){
	var _totalFrames = sprite_get_number(sprite_index);
	image_index = localFrame +  _totalFrames;

	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

	//If animation would loop on next game step

	if (localFrame >= _totalFrames){
		animationEnd = true;
	}
	else animationEnd= false;

	/*var _totalFrames = sprite_get_number(sMinotaur)/4;
	image_index=localFrame+(CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sMinotaur)/FRAME_RATE;
	*/
}
