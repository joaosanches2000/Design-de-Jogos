/// @description Update Camera

if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}


//Update Object Position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Keep camera inside room
x = clamp(x,viewWidthHalf,room_width - viewWidthHalf);
y = clamp(y,viewHeightHalf,room_height - viewHeightHalf);

//ScreenShake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

//camera_set_view_pos(view_camera[0], Player.x - camera_get_view_width(view_camera[0])/ 2, 
								//	Player.y - camera_get_view_height(view_camera[0])/ 2);
camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);