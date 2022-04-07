/// @description Insert description here
// You can write your code in this editor
if(global.gamemode == 13)
{


	//Draw Menu FullScreen
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y,
		40,
		30
	);

	
	draw_text(130,5,"Yes\nNo")
	
	//Draw Selected one

	for(var i = 0; i < ds_list_size(options); i += 1)
	{
		var xx = 123;
		var yy = draw_y + 7 + (i * 10);
		if(selected == options[| i])
		{
			draw_sprite(sprSelect,image_index/15,xx,yy);

		}


		
	}

}
