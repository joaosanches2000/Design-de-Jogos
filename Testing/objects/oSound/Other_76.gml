/// @description Insert description here
// You can write your code in this editor
Sprite_broadcast("footstep", function(){
	show_debug_message("Footstep");
	audio_play_sound(Running_Road,1,false)
});

Sprite_broadcast("slash", function(){
	show_debug_message("Slash");
	audio_play_sound(Dagger_slash,1,false)
});
