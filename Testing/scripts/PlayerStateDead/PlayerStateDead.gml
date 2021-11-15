// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDead(){
	hSpeed=0;
	vSpeed=0;
	
	//if just arriving in this state
	if(sprite_index != sPlayerDeath){
		sprite_index=sPlayerDeath;
		image_index=0;
		image_speed=0.7;			
		
	}
	show_debug_message(floor(image_index));
	show_debug_message(image_number-1);
	if (floor(image_index) > image_number-2){
		keyboard_key_press(vk_escape);
		
	}
}