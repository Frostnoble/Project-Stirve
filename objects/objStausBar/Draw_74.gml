/// @description Insert description here
// draw_you can write draw_your code in this editor
if(global.gamemode != 1 && global.gamemode != 3)
{

	draw_set_color(c_white);

	draw_rectangle(0,draw_y,160,144,false);
	draw_rectangle(144,draw_y-8,160,144,false);

	draw_set_color(c_black);

	//HEALTH
	draw_text(x+1, draw_y-2,"<");
	draw_text(x+1, draw_y-1,"  "+string(global.HEALTH));

	if(global.defence > 0){
		draw_sprite(sprArmor,0,x+125, draw_y);
		draw_text(x+126, draw_y-1,"  "+string(global.defence));
	}
	//Health
	draw_text(x+1, draw_y+7,"H");
	draw_text(x+5, draw_y+7," "+string(global.HUNGER));

	//WATER
	draw_text(x+35, draw_y+7,"W");
	draw_text(x+39, draw_y+7," "+string(global.WATER));

	//FATIGUE
	draw_text(x+69, draw_y+7,"F");
	draw_text(x+73, draw_y+7," "+string(global.FATIGUE));

	//Status
	//draw_text(x+50, draw_y-1,global.status.name);
	draw_text_color(x+35,
	draw_y-1,global.status.name,
	global.status.sub_color_id,
	global.status.sub_color_id,
	global.status.color_id,
	global.status.color_id,
	1);

	//Status movement

	//alarm[0] = 60;

	

	if((global.equip.type == 4 || global.equip.type == 5) && global.equip.equiped)
	{
		draw_sprite(sprSlotDark,0,143,draw_y-9);
	}
	else
	{
		draw_sprite(sprSlot,0,143,draw_y-9);
	}

	draw_sprite(sprItems,global.equip.image_id,144,draw_y-8);



	if(global.equip.amount > 1)
	{
		draw_set_colour(c_white);
		draw_set_font(font_add_sprite_ext(sprNumbers, "0123456789", true, 0));
			

		draw_text(145,draw_y-9,string(global.equip.amount))
		draw_set_colour(c_black);
		draw_set_font(Gameboy);
	}

}