// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MinotaurAttack(){
	

	//var _distanceToGo = point_distance(x,y,xTo,yTo);
	
		
		if(floor(image_index) == 9) // when in last animation frame resume chase
		{
			if(point_distance(x,y,Player.x,Player.y) <= enemyAttackRadius)
			{			
				image_index = 0;
			}
			else
			{
				stateTarget = ENEMYSTATE.CHASE;
				stateWaitDuration = 15;
				state = ENEMYSTATE.WAIT;
			}
		}
	

}