/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Player) == false || place_meeting(x,y,Pot) == false) 
	image_index=false;
	is_pressing = false;
if (place_meeting(x,y,Player) == true || place_meeting(x,y,Pot) == true){
		image_index=true;
		is_pressing = true;
	/*if (is_pressing == false){
		pressed = !pressed;
		is_pressing = true;
	}*/
}

//image_index = pressed;

if (door != undefined && instance_exists(Door)){
	door.visible = !is_pressing;
	door.entityCollision = !is_pressing;
	
}
