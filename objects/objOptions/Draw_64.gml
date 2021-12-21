/// @description Insert description here
// You can write your code in this editor



if(global.gamemode == 7)
{


	//Draw Menu FullScreen
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y,
		160,
		30
	);
	
	//Draw Menu Music
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y+30,
		160,
		30
	);
	
	//Draw Menu Sounds
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y+60,
		160,
		30
	);

	draw_text_transformed(16, 6,"Full Screen\n/ Windowed",1,1,0);
	draw_text_transformed(16, 36,"Music Volume " + string(floor(global.music_Volume*100)) +"%",1,1,0);
	draw_text_transformed(16, 66,"Sound Volume " + string(floor(global.sfx_Volume*100)) +"%",1,1,0);
	
	if(window_get_fullscreen()){
		draw_sprite(sprOp, 1, 124, 8);
		
	
	}else
	{
		draw_sprite(sprOp, 0, 124, 8);
	}
	
	//Draw Selected one

	for(var i = 0; i < ds_list_size(options); i += 1)
	{
		yy = 0;
		if(selected == options[| 0]){yy = 9}
		if(selected == options[| 1]){yy = 39}
		if(selected == options[| 2]){yy = 69}
		if(selected == options[| i])
		{
			draw_sprite(sprSelect,0,3,yy);
			
			
		}

	}
	x1 = 16
	y1 = 45
	x2 = 140
	y2 = 55
	//draw MusicVolume
	draw_set_colour(c_gray);
	draw_rectangle(x1,y1,x1+(x2-x1)*(1),y2,0);
	draw_set_colour(c_black);
	if(global.music_Volume > 0){draw_rectangle(x1,y1,x1+(x2-x1)*(global.music_Volume/(1)),y2,0);}
	
	x1_2 = 16
	y1_2 = 75
	x2_2 = 140
	y2_2 = 85
	//draw MusicVolume
	draw_set_colour(c_gray);
	draw_rectangle(x1_2,y1_2,x1_2+(x2_2-x1_2)*(1),y2_2,0);
	draw_set_colour(c_black);
	if(global.sfx_Volume > 0){draw_rectangle(x1_2,y1_2,x1_2+(x2_2-x1_2)*(global.sfx_Volume/(1)),y2_2,0);}
}



