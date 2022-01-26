/// @description Insert description here
// You can write your code in this editor



if(global.gamemode == 6)
{

	//Draw Menu
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y,
		100,
		144
	);
	//Draw Inventory
	draw_sprite_stretched(sprBox,
		0,
		100,
		84,
		rowlength*20,
		(((INVENT_SLOT-1) div rowlength) + 1)*20
	);
	//Draw Image
	draw_sprite_stretched(sprBox,
		0,
		draw_x + 100,
		draw_y,
		60,
		84
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
			if((objInventory.inventory[| i].type == 4 || objInventory.inventory[| i].type == 5) && objInventory.inventory[| i].equiped)
			{
				draw_sprite(sprSlotDark,0,xx,yy);
			}
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
	
	for(var i = 0; i < ds_list_size(objInventory.inventory); i += 1)
	{
		var xx = 144 + (i mod rowlength) * 18 - 41;
		var yy = 0 + (i div rowlength) * 18 + 3 +84;
		if(res_selector == objInventory.inventory[| i])
		{
			draw_sprite(sprEquip,0,xx+1,yy+1);
		}

	}

	//Draw Possible in a list
	if(seemode)
	{
		if(ds_list_size(Possible))
		{
			
			for(var i = 0; i < ds_list_size(Possible); i += 1)
			{
				var xx = 8;
				var yy = draw_y + 6 + (i * 9);
				if(yy <= 140 && yy >= 4)
				{
					
					draw_text(xx, yy - 2,string(Possible[|i].name));
			

			
				}

			}
		
			for(var i = 0; i < ds_list_size(Possible); i += 1)
			{
				var xx = 8;
				var yy = draw_y + 6 + (i * 9);
				if(selected == Possible[| i])
				{
					draw_sprite(sprSelectorMenu,0,3,yy);
			
					draw_text_transformed(108, 3,"ingredients",0.5,0.5,0)
				
					cost = ds_map_values_to_array(selected.crafting);
					ingredients = ds_map_keys_to_array(selected.crafting);
					//draw outline
					for(var r = 0; r < 9; r += 1)
					{
						var xx = 144 + (r mod rowlength) * 18 - 41;
						var yy = -78 + (r div rowlength) * 18 + 3 +84;
						draw_sprite(sprSlot,0,xx,yy);

					}
					//show_debug_message(ingredients[0].name)
					//draw items
				
					for(var j = 0; j < array_length(ingredients); j++)
					{
						//show_debug_message(ingredients[j].name)
					
						var xx = 144 + (j mod rowlength) * 18 - 41;
						var yy = -78 + (j div rowlength) * 18 + 3 +84;
						if (ingredients[j] != -1)
						{
						
							draw_sprite(sprItems,ingredients[j].image_id,xx+1,yy+1);
							if(cost[j] != 1)
							{
								draw_set_colour(c_white);
								draw_set_font(font_add_sprite_ext(sprNumbers, "0123456789", true, 0));
								draw_text(xx,yy,string(cost[j]))
								draw_set_colour(c_black);
								draw_set_font(Gameboy);
								
				
							}
						}
					}
			
			
			
			
			
				}

			}
		
		}
		else
		{

			draw_text(8, 6 - 2,"Nothing");
		
		}
		
		
		
	}
	else
	{
		draw_text(8, 6 - 2,"Choose an\nitem to\nresearch it.\n\nPress\n"+chr(34)+"Select"+chr(34)+"\nto go back.");
	}
	
}



