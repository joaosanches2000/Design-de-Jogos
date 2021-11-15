/// @description Insert description here
// You can write your code in this editor
x = Player.x + 3;
y = Player.y - 4;

firing_delay = firing_delay-1;
if (mouse_check_button_released(mb_left) && (firing_delay <0)){
	firing_delay = 1;
	with instance_create_layer(mouse_x,mouse_y,"Bullets", Bullet){
		speed = 0;
		direction = other.image_angle;
		image_angle = direction;
	}
	counter++;
	if (counter==2){
		instance_deactivate_layer("Bullets");
		instance_create_layer(mouse_x,mouse_y,"Bullets", Bullet);
		counter = 0;
	}
	
}
