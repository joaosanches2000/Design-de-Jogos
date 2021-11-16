// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function VinePickUp(arg1){
	
	if (global.iLifted == noone) {
		
		PlayerActOutAnimation(sPlayerLift);
		var _instanceId = instance_create_depth(x,y,depth,Pot);
		global.iLifted = _instanceId;
		lifted = true;
		persistent = true;
		
	}
}