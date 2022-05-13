

if(global.gamemode == 4 && global.inFront_x == x && global.inFront_y == y)
{
	
	//Draw Inventory
	draw_sprite_stretched(sprBox,
		0,
		100,
		84,
		rowlength*20,
		(((INVENT_SLOT-1) div rowlength) + 1)*20
	);
	
	//Draw Outlines
	for(var i = 0; i < INVENT_SLOT; i += 1)
	{
		var xx = 144 + (i mod rowlength) * 18 - 41;
		var yy = 0 + (i div rowlength) * 18 + 3 +84;
		draw_sprite(sprSlot,0,xx,yy);

	}
	
	//Draw Items
	for(var i = 0; i < ds_list_size(objInventory.inventory); i += 1)
	{
		var xx = 144 + (i mod rowlength) * 18 - 41;
		var yy = 0 + (i div rowlength) * 18 + 3 +84;
		if (objInventory.inventory[| i] != -1)
		{
	
			draw_sprite(sprItems,objInventory.inventory[| i].image_id,xx+1,yy+1);

			if(objInventory.inventory[| i].amount != 1)
			{
				draw_set_colour(c_white);
				draw_set_font(font_add_sprite_ext(sprNumbers, "0123456789", true, 0));
				draw_text(xx,yy,string(objInventory.inventory[| i].amount))
				draw_set_colour(c_black);
				draw_set_font(Gameboy);
			}
		}
	}


	
	//Draw SuitcaseStorage
	draw_sprite_stretched(sprBox,
		0,
		100,
		84-24,
		rowlength*20,
		(((3-1) div rowlength) + 1)*20 + 4
	);
	
	//Draw SuitcaseStorage Outlines
	for(var i = 0; i < 3; i += 1)
	{
		var xx = 144 + (i mod rowlength) * 18 - 41;
		var yy = -24 + (i div rowlength) * 18 + 3 +84;
		draw_sprite(sprSlot,0,xx,yy);

	}
	//Draw global.SuitcaseStorage Items
	for(var j = 0; j < ds_list_size(global.SuitcaseStorage); j += 1)
	{
		var xx = 144 + (j mod rowlength) * 18 - 41;
		var yy = -24 + (j div rowlength) * 18 + 3 +84;
		if (global.SuitcaseStorage[| j] != -1)
		{
	
			draw_sprite(sprItems,global.SuitcaseStorage[| j].image_id,xx+1,yy+1);
			if(global.SuitcaseStorage[| j].amount != 1)
			{
				draw_set_colour(c_white);
				draw_set_font(font_add_sprite_ext(sprNumbers, "0123456789", true, 0));
				draw_text(xx,yy,string(global.SuitcaseStorage[| j].amount))
				draw_set_colour(c_black);
				draw_set_font(Gameboy);
			}
		}
	}

		if(modetype)
	{
			//Draw selector
		for(var i = 0; i < ds_list_size(objInventory.inventory); i += 1)
		{
			var xx = 144 + (i mod rowlength) * 18 - 41;
			var yy = 0 + (i div rowlength) * 18 + 3 +84;
			if(storage_selector == objInventory.inventory[| i])
			{
				draw_sprite(sprEquip,0,xx+1,yy+1);
			}

		}
	}
	else
	{
		//Draw selector
		for(var i = 0; i < ds_list_size(global.SuitcaseStorage); i += 1)
		{
			var xx = 144 + (i mod rowlength) * 18 - 41;
			var yy = -24 + (i div rowlength) * 18 + 3 +84;
			if(storage_selector == global.SuitcaseStorage[| i])
			{
				draw_sprite(sprEquip,0,xx+1,yy+1);
			}

		}
	}
	

}

