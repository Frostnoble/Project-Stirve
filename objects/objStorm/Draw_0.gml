/// @description Insert description here
// You can write your code in this editor
if(timer > 150 && timer < 190)
{
	draw_sprite(sprLightningWarning,objStormGen.image_index,x,y);
	
	
}



if(timer >= 190 && timer <= 192)
{
	global.lightning = true;
	draw_set_color(c_white);
	var _xx = camera_get_view_x(view_camera[0]);
	var _yy = camera_get_view_y(view_camera[0]);
	var _Width = camera_get_view_width(view_camera[0]);
	var _Height = camera_get_view_height(view_camera[0]);
	draw_rectangle(_xx, _yy, _xx + _Width, _yy + _Height, false);
	draw_set_alpha(1);	
}else{global.lightning = false;}

	draw_self();
