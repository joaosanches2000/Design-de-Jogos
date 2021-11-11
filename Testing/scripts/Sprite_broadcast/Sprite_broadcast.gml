function Sprite_broadcast(message_type, callback){
	if (event_data[?"event_type"]=="sprite event"){
		if(event_data[? "message"] == message_type){
			callback();
		}
	}
}