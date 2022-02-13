/// @description Insert description here
// You can write your code in this editor
//Draw Menu
if(!played){audio_play_sound(sfxSave,10,false); played = true;}
draw_set_colour(c_black);
draw_set_font(Gameboy);
draw_sprite_stretched(sprBox,
	0,
	draw_x,
	draw_y,
	82,
	16
);
	
	
draw_text(draw_x+4, draw_y+2,"Game Saved");