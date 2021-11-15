/// @description shaders and stuff

if(flash != 0)
{
	shader_set(sWhiteFlash);
	shader_set_uniform_f(uFlash,flash);

}
//draw sprite here

draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha,
);
	
	

if(shader_current() != -1)
	shader_reset();	