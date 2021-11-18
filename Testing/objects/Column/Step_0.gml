/// @description Insert description here
// You can write your code in this editor
if(global.TriggerFall && !animationPlayed)
{
	image_speed = 1;
	EntityPlayAnimation();
	if(entityAnimationEnd) {
		ColumnRock.entityCollision = true;
		ColumnRock.visible = true;
		NewTextBox("hihihihi");
		image_speed = 0;
		animationPlayed = true;
	}

}