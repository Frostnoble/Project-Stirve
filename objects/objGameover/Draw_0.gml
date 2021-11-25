/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_self();


if(!fadedone){
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,0);
	a = clamp(a + (fade*0.05),0,1);

	if(a == 1){fade = -1;}

	if(a == 0 && fade == -1)
	{
	 fadedone = true;
	}

	draw_set_alpha(floor( a / 0.25 ) * 0.25);

	draw_set_color(c_white);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
}

if(timer > 100)
{
	if(y != 0){y = y + 0.5;}
	a = clamp(a + (0.02),0,1);
	image_alpha = (floor( a / 0.25 ) * 0.25);
	if(image_alpha == 1)
	{
	
	
	}
}

