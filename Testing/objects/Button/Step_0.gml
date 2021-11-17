/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Player) == false) 
	is_pressing = false;
if (place_meeting(x,y,Player) == true){
	
	if (is_pressing == false){
		pressed = !pressed;
		is_pressing = true;
	}
}

//image_index = pressed;

if (door != undefined && instance_exists(Door)){
	door.open = pressed;
	
}
