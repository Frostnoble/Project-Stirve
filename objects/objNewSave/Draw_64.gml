/// @description Insert description here
// You can write your code in this editor
if(global.gamemode == 10)
{


	//Draw Menu FullScreen
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y+40,
		100,
		30
	);
		draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y+70,
		100,
		30
	);
		draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y+100,
		100,
		30
	);
	
	if(file_exists("StriveSaveSlot1"))
	{
		draw_text(draw_x+5,draw_y+45,"SLOT 1 D:"+ string(days_1) +"\n"+name_1);
		draw_sprite(Avatar(Avatar_1),image_index/25,draw_x+75,draw_y+47)
	}
	else
	{
		draw_text(draw_x+5,draw_y+45,"SLOT 1\nEmpty");
	}
	
	if(file_exists("StriveSaveSlot2"))
	{
		draw_text(draw_x+5,draw_y+75,"SLOT 2 D:"+ string(days_2) +"\n"+name_2);
		draw_sprite(Avatar(Avatar_2),image_index/25,draw_x+75,draw_y+77)
	}
	else
	{
		draw_text(draw_x+5,draw_y+75,"SLOT 2\nEmpty");
	}
	
	if(file_exists("StriveSaveSlot3"))
	{
		draw_text(draw_x+5,draw_y+105,"SLOT 3 D:"+ string(days_3) +"\n"+name_3);
		draw_sprite(Avatar(Avatar_3),image_index/25,draw_x+75,draw_y+107)
	}
	else
	{
		draw_text(draw_x+5,draw_y+105,"SLOT 3\nEmpty");
	}
	
	//Draw Selected one

	for(var i = 0; i < ds_list_size(options); i += 1)
	{



		
	}

}
