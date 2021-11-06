/// @description Camera Set-Up
cam = view_camera[0];
follow = Player;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shakeLength = 0;	//the fraction of shakeMagnitude that is removed each framed
shakeMagnitude = 0;  //how long the shake is going to last
shakeRemain = 0;