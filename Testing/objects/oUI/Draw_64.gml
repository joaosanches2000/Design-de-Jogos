//
var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;
//var _playerHealthFrac = frac(_playerHealth);
//_playerHealth -= _playerHealthFrac;

for(var i=1; i<=_playerHealthMax; i++){
	var _imageIndex = (i >_playerHealth);
	draw_sprite(sHealth,_imageIndex,20+((i-1)*35), 20);	
}

//Draw Item box
_xx = 20;
_yy = 60;

draw_sprite(sItemBox,0,_xx+20,_yy-5);
if(global.playerHasAnyItems){
	draw_sprite(sItem,global.playerEquipped,_xx+20, _yy+55);
	if(global.playerAmmo[global.playerEquipped] != -1) {
		
	
		draw_set_font(fAmmo);
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);
		draw_set_color(c_white);
		if(global.playerEquipped == 2){
				draw_text(
			_xx + sprite_get_width(sItemBox)-20,
			_yy + sprite_get_height(sItemBox)-65
			,
			"Zeus"
			);
		} else if(global.playerEquipped == 1){
				draw_text(
			_xx + sprite_get_width(sItemBox)-10,
			_yy + sprite_get_height(sItemBox)-65,
			"Dyonisis"
			);
		} if(global.playerEquipped == 3){
				draw_text(
			_xx + sprite_get_width(sItemBox)-15,
			_yy + sprite_get_height(sItemBox)-65,
			"Hermes"
			);
		}
		
	}
}

if (global.gamePaused || global.control){
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(fMenu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	with(Player){
		if(state==PlayerStateDead){
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 - 30, "GAME OVER");
			oUI.pauseOption = ["Restart", "Quit"];
		} 
		else if(global.gameEnd)
		{
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 - 60, "YOUR FREE TRIAL HAS ENDED.\n BUY THE GAME FOR THE FULL EXPERIENCE.\n ONLY LXIX , XCIX");
			oUI.pauseOption = ["Restart", "Quit"];
		//	global.gameEnd = false;
		} else if(global.control){
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5-120, "CONTROLS");
			draw_set_font(fMenuSmool);
			draw_set_color(c_ltgrey);
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H* 0.5-80, "Next Masks Item 0 E Key");
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H* 0.5-60, "Zeus Lightnings 0 Left Mouse Click");
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H* 0.5-40, "Hermes Dodge 0 Space Key");
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H* 0.5-20, "Dionysio Wine Making 0 Space Key");
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H* 0.5, "Hit 0 F Key");
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5+20, "Special Hit 0 Shift Key");
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5+40, "Up Walk 0 W key or Up key");
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5+60, "Down Walk 0 S key or Down key");
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5+80, "Left Walk 0 A key or Left key");
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5+100, "Right Walk 0 D key or Right key");
			draw_set_font(fMenu);
			draw_set_color(c_white);
			oUI.pauseOption=["Back"];
		}
		else {
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 - 30, "GAME PAUSED");
			oUI.pauseOption=["Resume", "Restart", "Controls", "Quit"];
		}
		
	}
	
	for (var i=0; i < array_length(pauseOption);i++){
			var _print="";
			if(i==pauseOptionSelected){
				_print += "0 " + pauseOption[i] + " 0";
			} else {
				_print += pauseOption[i];
				draw_set_alpha(0.7);
			}
			if(global.control){
				draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 140, _print);
			} else {
				draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 18 +(i*40), _print);
			}
			
			draw_set_alpha(1.0);
		}
	
	
	
}