if (global.gamePaused){
	
	
	keyUp = keyboard_check_pressed(vk_up)|| keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down)|| keyboard_check_pressed(ord("S"));
	pauseOptionSelected += (keyDown - keyUp);
	if (pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected=0;
	if (pauseOptionSelected<0) pauseOptionSelected = array_length(pauseOption) -1;
	
	keyActivate = keyboard_check_pressed(vk_enter);
	if(keyActivate){
		with(Player){
			if(state==PlayerStateDead || global.gameEnd){
				switch(oUI.pauseOptionSelected){
					case 0: //Restart
					{
						with(GameLogic) instance_destroy();
						with(oSound) instance_destroy();
						game_restart();
					} break;
					
					case 1:
					{
						game_end();
					}break;
				}
			} else if(global.control = true){
				pauseOptionSelected=0;
				global.control = false;
				global.gamePaused = false;
				show_debug_message("aqui tou eu333333333");
					show_debug_message(oUI.pauseOption);
				if (oUI.pauseOptionSelected==0){
					show_debug_message("aqui tou eu222222");
						global.gamePaused = true;
				}						
					
				
				
			}else {
					show_debug_message(oUI.pauseOption);
				switch(oUI.pauseOptionSelected){
					
					case 0: //Resume
					{
						
						global.gamePaused = false;
						with(all){
							image_speed = oUI.gamePausedImageSpeed;
						}
					} break;
					
					case 1: //restart
					{
						with(GameLogic) instance_destroy();
						with(oSound) instance_destroy();
						game_restart();
					} break;
					case 2:{
						show_debug_message("aqui tou eu444444444");
						global.control = true;			
					} break;
					case 3:
					{
						game_end();
					}break;
				}
			}
		}
	}
}