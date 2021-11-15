// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HurtPlayer(_direction, _force, _damage){
	
	
	if (Player.invulnerable <=0){	
		global.playerHealth = max(0, global.playerHealth-_damage)
		if(global.playerHealth > 0){
			with(Player){
				
				//state=PlayerStateBoink();
				//direction = _direction-180;
				//moveDistanceRemaining=_force;
				flash=0.7;
				invulnerable=100;
				flashShader=sRedFlash;
			}
		} else {
			with(Player) state= PlayerStateDead;			
		}
		
	} 



}