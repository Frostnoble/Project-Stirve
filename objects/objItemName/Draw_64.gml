/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(floor( (alpha*5) / 0.25 ) * 0.25);
draw_set_colour(c_black);
draw_set_font(Gameboy);
draw_sprite_stretched(sprBox,
	0,
	draw_x,
	draw_y,
	100,
	14
);

draw_text_transformed(draw_x+4, draw_y+2,item,1,1,0);

draw_set_alpha(1);

if(fading)
{
	alpha -= 0.01;
	if(alpha < 0)
	{
		instance_destroy();
	}
}

