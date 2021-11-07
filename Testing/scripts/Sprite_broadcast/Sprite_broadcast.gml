// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sprite_broadcast(message_type, callback){
	if (event_data[?"event_type"]=="sprite event"){
		if(event_data[? "message"] == message_type){
			callback();
		}
	}
}