/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_colour(c_black);
draw_set_font(Gameboy);

if(global.DEMO)
{
	draw_text_transformed(120, 2,"demo V:0.1",0.5,0.5,0);
}