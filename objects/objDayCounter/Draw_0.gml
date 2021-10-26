/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(floor( (progress/room_speed) / 0.25 ) * 0.25);
draw_set_color(c_white);
var _xx = camera_get_view_x(view_camera[0]);
var _yy = camera_get_view_y(view_camera[0]);
var _Width = camera_get_view_width(view_camera[0]);
var _Height = camera_get_view_height(view_camera[0]);
draw_rectangle(_xx, _yy, _xx + _Width, _yy + _Height, false);
draw_set_alpha(1);	


if(step == 1)
{
	
	draw_set_color(c_black);
	draw_set_font(Bell)
	draw_text(_xx+80 -25,_yy+45,"DAY " + string(objTimeSystem.days))
}
if(step == 2)
{
	
	draw_set_color(c_black);
	draw_set_font(Bell)
	draw_text(_xx+80 -25,_yy+45,"DAY " + string(objTimeSystem.days + 1))
}

if(step == 3)
{

	
}


