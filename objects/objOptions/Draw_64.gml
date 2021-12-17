/// @description Insert description here
// You can write your code in this editor



if(global.gamemode == 7)
{

	//Draw Menu
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y,
		160,
		144
	);

	draw_text_transformed(16, 16,"FullScreen",1,1,0);
	if(window_get_fullscreen()){
		draw_sprite(sprOp, 1, 100, 16);
		
	
	}else
	{
		draw_sprite(sprOp, 0, 100, 16);
	}
	
	
}



