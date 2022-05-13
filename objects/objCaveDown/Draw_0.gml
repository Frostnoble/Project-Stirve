/// @description Insert description here
// You can write your code in this editor
/*
if(moving)
{
	
	depth = -1000;
	draw_set_alpha(floor( (progress/room_speed) / 0.25 ) * 0.25);
	draw_set_color(c_black);
	//var _xx = camera_get_view_x(view_camera[0]);
	//var _yy = camera_get_view_y(view_camera[0]);
	//var _Width = camera_get_view_width(view_camera[0]);
	//var _Height = camera_get_view_height(view_camera[0]);
	draw_rectangle(0, 0,room_height , room_height , false);
	draw_set_alpha(1);
}
else
{
	depth = room_height - y + 1
}
*/

/////////////////////////////////

if(fading)
{
	
	depth = -1000;
    progress += 2*fadeDir;
    alpha = clamp((floor( (progress/room_speed) / 0.25) * 0.25),0,1);
    draw_set_alpha(alpha)
    draw_set_color(c_black)
    draw_rectangle(0,0,room_width,room_height,false)
	draw_set_alpha(1);
}
else
{
	depth = room_height - y + 1
}

draw_self();
