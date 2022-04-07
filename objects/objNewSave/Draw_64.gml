/// @description Insert description here
// You can write your code in this editor
if(global.gamemode == 10 || global.gamemode == 13)
{


	//Draw Menu FullScreen
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y+40,
		120,
		30
	);
		draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y+70,
		120,
		30
	);
		draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y+100,
		120,
		30
	);
	
	if(file_exists("StriveSaveSlot1"))
	{
		draw_text(draw_x+20,draw_y+45,"SLOT 1 D:"+ string(objWorld.days_1) +"\n"+objWorld.name_1);
		draw_sprite(Avatar(objWorld.Avatar_1),image_index/25,draw_x+100,draw_y+47)
	}
	else
	{
		draw_text(draw_x+20,draw_y+45,"SLOT 1\nEmpty");
	}
	
	if(file_exists("StriveSaveSlot2"))
	{
		draw_text(draw_x+20,draw_y+75,"SLOT 2 D:"+ string(objWorld.days_2) +"\n"+objWorld.name_2);
		draw_sprite(Avatar(objWorld.Avatar_2),image_index/25,draw_x+100,draw_y+77)
	}
	else
	{
		draw_text(draw_x+20,draw_y+75,"SLOT 2\nEmpty");
	}
	
	if(file_exists("StriveSaveSlot3"))
	{
		draw_text(draw_x+20,draw_y+105,"SLOT 3 D:"+ string(objWorld.days_3) +"\n"+objWorld.name_3);
		draw_sprite(Avatar(objWorld.Avatar_3),image_index/25,draw_x+100,draw_y+107)
	}
	else
	{
		draw_text(draw_x+20,draw_y+105,"SLOT 3\nEmpty");
	}
	
	//Draw Selected one

	for(var i = 0; i < ds_list_size(options); i += 1)
	{
		var xx = 44;
		var yy = draw_y + 46 + (i * 30);
		if(selected == options[| i])
		{
			draw_sprite(sprSlotSelect,image_index/15,xx,yy);
			
			
		}


		
	}

}
