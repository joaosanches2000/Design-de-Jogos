//
var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;
//var _playerHealthFrac = frac(_playerHealth);
//_playerHealth -= _playerHealthFrac;

for(var i=1; i<=_playerHealthMax; i++){
	var _imageIndex = (i >_playerHealth);
	draw_sprite(sHealth,_imageIndex,20+((i-1)*35), 20);	
}

if (global.gamePaused){
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(fMenu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 - 30, "GAME PAUSED");
	for (var i=0; i < array_length(pauseOption);i++){
		var _print="";
		if(i==pauseOptionSelected){
			_print += "0 " + pauseOption[i] + " 0";
		} else {
			_print += pauseOption[i];
			draw_set_alpha(0.7);
		}
		draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 18 +(i*40), _print);
		draw_set_alpha(1.0);
	
	}
	
}