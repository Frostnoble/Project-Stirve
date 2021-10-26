/// @description Insert description here


move_towards_point(144,0,2);

draw_set_colour(c_black);
draw_set_font(Gameboy);
draw_sprite_stretched(sprBox,
	0,
	draw_x- 44,
	draw_y+ 84,
	rowlength*20,
	(((INVENT_SLOT-1) div rowlength) + 1)*20
);
//Draw Slots
for(var i = 0; i < INVENT_SLOT; i += 1)
{
	var xx = draw_x + (i mod rowlength) * 18 - 41;
	var yy = draw_y + (i div rowlength) * 18 + 3 +84;
	draw_sprite(sprSlot,0,xx,yy);

}
//Draw Items
for(var i = 0; i < ds_list_size(inventory); i += 1)
{
	var xx = draw_x + (i mod rowlength) * 18 - 41;
	var yy = draw_y + (i div rowlength) * 18 + 3 +84;
	if (inventory[| i] != -1)
	{
	
		draw_sprite(sprItems,inventory[| i].image_id,xx+1,yy+1);
		if(inventory[| i].amount != 1)
		{
			draw_set_colour(c_white);
			draw_set_font(font_add_sprite_ext(sprNumbers, "0123456789", true, 0));
			draw_text(xx,yy,string(inventory[| i].amount))
			draw_set_colour(c_black);
			draw_set_font(Gameboy);
		}
	}
}
//Draw Equip
for(var i = 0; i < INVENT_SLOT; i += 1)
{
	var xx = draw_x + (i mod rowlength) * 18 - 41;
	var yy = draw_y + (i div rowlength) * 18 + 3 +84;
	if(global.equip == inventory[| i])
	{
		draw_sprite(sprEquip,0,xx+1,yy+1);
	}

}

