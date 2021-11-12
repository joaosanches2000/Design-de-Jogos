lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

if (keyboard_check_pressed(vk_enter)){
	var _messageLenght = string_length(message);
	if (textProgress >= _messageLenght){
		instance_destroy();
		if (instance_exists(oTextQueued)){
			with (oTextQueued) ticket --;
		} else {
			with(Player) state = lastState;
		}
	} else {
		if (textProgress > 2){
			textProgress = _messageLenght;
		}
	}
}