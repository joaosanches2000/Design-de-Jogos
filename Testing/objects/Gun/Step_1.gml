/// @description Insert description here
// You can write your code in this editor
x = Player.x + 3;
y = Player.y - 4;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firing_delay = firing_delay-1;
if (mouse_check_button_released(mb_left) && (firing_delay <0) && global.playerEquipped== ITEM.ZEUS){
	firing_delay = 10;
	with instance_create_layer(x,y,"Bullets", Bullet){
		speed = 5;
		direction = other.image_angle;
		image_angle = direction;
	}
	
	
}
