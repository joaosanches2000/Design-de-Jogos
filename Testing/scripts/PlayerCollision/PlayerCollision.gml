function PlayerCollision() {

	var _collision = false; //in case a collision is a trigger
	var _entityList = ds_list_create();


	//TILES H collision
	//tilemap_get_at_pixel function returns number of tile in tile map. 0 is no tile, 1 is collision tile, etc.
	if(tilemap_get_at_pixel(collisionMap, x + hSpeed, y))
	{
		x -= x mod TILE_SIZE; //snaps us to the -> left <- of the tile we're colliding with
		if(sign(hSpeed) == 1)
			x += TILE_SIZE - 1;  //snaps us to the -> right <- of the tile we're colliding 
		hSpeed = 0;
		_collision = true;
	}
	
	
	//ENTITY H collision
	var _entityCount = instance_position_list(x + hSpeed, y, Entity, _entityList, false);
	var _snapX;
	
	while(_entityCount > 0)
	{
		var _entityCheck  = _entityList[| 0];
		if(_entityCheck.entityCollision == true)
		{
			if(sign(hSpeed) == -1) _snapX = _entityCheck.bbox_right+1;
			else  _snapX = _entityCheck.bbox_left -1;
			x = _snapX;
			hSpeed = 0;
			_collision = true;
			_entityCount = 0;
		}
		ds_list_delete(_entityList,0);
		_entityCount--;
	}
	
	x += hSpeed;

	ds_list_clear(_entityList);
	
	
	
	
	//TILE H collision
	if(tilemap_get_at_pixel(collisionMap, x, y + vSpeed))// || (tilemap_get_at_pixel(collisionMap, x, y + vSpeed + TILE_SIZE) && sign(vSpeed) == 1 ))
	{
		y -= y mod TILE_SIZE; //snaps us to the -> up <- of the tile we're colliding with
		if(sign(vSpeed ) == 1)
			y += TILE_SIZE -1;  //snaps us to the -> down <- of the tile we're colliding with
		vSpeed = 0;
		_collision = true;
	}

	//ENTITY V collision	
	var _entityCount = instance_position_list(x, y + vSpeed, Entity, _entityList, false);
	var _snapY;
	
	while(_entityCount > 0)
	{
		var _entityCheck  = _entityList[| 0];
		if(_entityCheck.entityCollision == true)
		{
			if(sign(vSpeed) == -1) _snapY = _entityCheck.bbox_bottom+1;
			else  _snapY = _entityCheck.bbox_top -1;
			y = _snapY;
			vSpeed = 0;
			_collision = true;
			_entityCount = 0;
		}
		ds_list_delete(_entityList,0);
		_entityCount--;
	}	
	
	y += vSpeed;


	ds_list_destroy(_entityList);
	return _collision;
}