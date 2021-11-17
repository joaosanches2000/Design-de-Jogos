/// @description Insert description here
// You can write your code in this editor
collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));


	//TILES 

	//tilemap_get_at_pixel function returns number of tile in tile map. 0 is no tile, 1 is collision tile, etc.
	if(tilemap_get_at_pixel(collisionMap, x, y) || 
	(tilemap_get_at_pixel(collisionMap, x + TILE_SIZE, y)))
	{
		instance_destroy();
	}


	if(tilemap_get_at_pixel(collisionMap, x, y) ||
	(tilemap_get_at_pixel(collisionMap, x, y + TILE_SIZE)))
	{
		instance_destroy();
	}
	
	
	

	
	