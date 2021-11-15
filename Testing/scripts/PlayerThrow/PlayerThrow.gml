// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerThrow(){
	
	with(global.iLifted)
	{
		lifted = false;
		persistent = false; 
		entityCollision = true;
		thrown = 0;
		throwPeakHeight = 10;
		throwDistance = entityThrowDistance;
		throwDistanceTravelled = 0;
		throwStartPercent = (13/throwPeakHeight) * 0.5;
		throwPercent = throwStartPercent;
		direction = other.direction;
		xstart = x;
		ystart = y;
	
	}
	
	PlayerActOutAnimation(sPlayerLift);
	global.iLifted = noone;

}