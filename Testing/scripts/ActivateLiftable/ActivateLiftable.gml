// @arg id
function ActivateLiftable(arg1) {
	
	if (global.iLifted == noone) {
		PlayerActOutAnimation(sPlayerLift);
	
		global.iLifted = arg1;
		with (global.iLifted){
				lifted = true;
				persistent = true;
		}
	}
}