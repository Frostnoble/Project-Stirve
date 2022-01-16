/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_black);
draw_set_font(Gameboy);
draw_sprite_stretched(sprBox,
	0,
	view_xport[0],
	view_yport[0] - 3 + 144/4,
	160,
	91,
);	




draw_self();