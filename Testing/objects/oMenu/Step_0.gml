//Control Menu


//item ease in
menu_x+=(menu_x_target-menu_x)/menu_speed;

//keyboard controls
if (menu_control){
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		show_debug_message("UP");
		menu_cursor++;
		if (menu_cursor>=menu_item) menu_cursor=0;
	}
	
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		show_debug_message("down");
		menu_cursor--;
		if (menu_cursor<0) menu_cursor=menu_item-1;
	}
	
	if(keyboard_check_pressed(vk_enter)){
		show_debug_message("enter");
		menu_x_target=gui_width+200;
		menu_committed = menu_cursor;
		show_debug_message(menu_committed);
		menu_control=false;
	}
	
	if ((menu_x < gui_width+150) and (menu_committed != -1)){

		switch (menu_committed){
			case 1: room_goto_next(); break;
			case 0: game_end(); break;
		}
	}
	
}