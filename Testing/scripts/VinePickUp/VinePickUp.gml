// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function VinePickUp(arg1){
	
	if (global.iLifted == noone && global.playerEquipped == ITEM.DYN) {
		
		if(global.firstVinePickUp){
			global.firstVinePickUp = false;	
			NewTextBox("Wow, how did you do that 1", 0);
			NewTextBox("Dont drink too much or you'll fall asleep...", 0);
		}
		entityCollision = false;
		PlayerActOutAnimation(sPlayerLift);
		var _instanceId = instance_create_depth(x,y-10,depth,WinePot);
		global.iLifted = _instanceId;
		with (global.iLifted){
			lifted = true;
			persistent = true;
		}
		
	}
}