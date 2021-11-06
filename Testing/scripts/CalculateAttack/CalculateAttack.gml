// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CalculateAttack(){
	mask_index = argument0;
	var hitByAttackNow = ds_list_create(); //list of enemies hit by attack this frame
	var hits = instance_place_list(x,y,Entity,hitByAttackNow,false); //if true list is ordered
	if(hits > 0)
	{
		for(var i = 0; i < hits; i++)
		{
			//hit instance
			var hitID = hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID) == -1) //if instance is not in attack list
			{
				ds_list_add(hitByAttack, hitID);
				with(hitID)
				{
					image_blend = c_red;
				}
			
			}
		}
	
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = Player;
}