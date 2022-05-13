/// @description Insert description here
// You can write your code in this editor
image_index = image_number - 1;
image_speed = 0;
if(!instance_exists(objRipple))
{
	instance_create_layer(global.inFront_x_More,global.inFront_y_More, "Instances", objRipple)
}
