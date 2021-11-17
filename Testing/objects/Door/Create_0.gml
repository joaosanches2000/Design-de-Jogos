/// @description Insert description here
// You can write your code in this editor
/// @description 
z = 0;
flash = 0;
uFlash = shader_get_uniform(sWhiteFlash,"flash");
thrown = 0;
lifted = 0;
localFrame = 0;
entityAnimationEnd = false;

collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

//for coll with vase
wineCollision = false;

image_speed = 0;
image_index = 0;
door = Door;