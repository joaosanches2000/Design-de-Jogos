/// @description Insert description here
// You can write your code in this editor
Sprite_broadcast("footstep", function(){
	show_debug_message("Footstep");
	audio_play_sound(Running_Road,1,false)
});


Sprite_broadcast("thunder", function(){
	show_debug_message("Thunder");
	audio_play_sound(Thunder,1,false)
});

