/// @description Insert description here
// You can write your code in this editor



if(global.gamemode == 1)
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


	//Draw Recipes in a list
	for(var i = 0; i < ds_list_size(recipes); i += 1)
	{
		var xx = 8;
		var yy = draw_y + 6 + (i * 9);
		if(yy <= 140 && yy >= 4)
		{
			if(recipes[|i].KP_lock > 0)
			{
				if(canCraft(recipes[| i],objInventory.inventory))
				{
					draw_text_color(xx, yy - 2,string(recipes[|i].name),c_black,c_black,c_black,c_black,1)
					draw_text_color(xx, yy - 2,"??????????",c_black,c_black,c_black,c_black,0.5)
				}
				else
				{
					draw_text_color(xx, yy - 2,string(recipes[|i].name),c_gray,c_gray,c_gray,c_gray,1)
					draw_text_color(xx, yy - 2,"??????????",c_gray,c_gray,c_gray,c_gray,0.5)
				}
				
			}
			else if(canCraft(recipes[| i],objInventory.inventory))
			{
				draw_text(xx, yy - 2,string(recipes[|i].name));
			}
			else
			{
				draw_text_color(xx, yy - 2,string(recipes[|i].name),c_gray,c_gray,c_gray,c_gray,1)
			}
			
		}

	}

	//Draw Selected one
	for(var i = 0; i < ds_list_size(recipes); i += 1)
	{
	var xx = 8;
	var yy = draw_y + 6 + (i * 9);
		if(selected == recipes[| i])
		{
			draw_sprite(sprSelectorMenu,0,3,yy);
			
		}

	}
	
	
	if(!flipmode)
	{
		//Draw image and text
		for(var i = 0; i < ds_list_size(recipes); i += 1)
		{
			var xx = 8;
			var yy = draw_y + 6 + (i * 9);
			if(selected == recipes[| i])
			{
			
				if(recipes[|i].KP_lock > 0)
				{
					
					draw_sprite_stretched(sprUnknown,0,114,10, 32, 32);
					draw_text_transformed(106,50,"Spend " + string(recipes[|i].KP_lock) + "KP to\nlearn this\ncrafting\nrecipe?",0.5,0.5,0)
					draw_text_transformed(106,70,"Current KP: "+ string(global.KP),0.25,0.25,0)
				}
				else
				{
					//draw_sprite(sprItems,recipes[|i].image_id,120,10);
					draw_text_transformed(106, 72,"Press " +chr(34) + "Select" + chr(34) + "\nfor ingredients.",0.4,0.4,0)
					draw_sprite_stretched(sprItems,recipes[|i].image_id,114,10, 32, 32);
					draw_text_transformed(106,50,string(recipes[|i].desc),0.5,0.5,0) 
					//draw_text(106,35,string(recipes[|i].desc));
				}
			}
		

		}
	}
	else
	{
		for(var i = 0; i < ds_list_size(recipes); i += 1)
		{
			if(selected == recipes[| i])
			{
				if(recipes[|i].KP_lock > 0)
				{
					flipmode = false;
				}
				else
				{
				
					draw_text_transformed(108, 3,"ingredients",0.5,0.5,0)
					cost = ds_map_values_to_array(selected.crafting);
					ingredients = ds_map_keys_to_array(selected.crafting);
					//draw outline
					for(var i = 0; i < 12; i += 1)
					{
					var xx = 144 + (i mod rowlength) * 18 - 41;
					var yy = -78 + (i div rowlength) * 18 + 3 +84;
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
	
	
	
	}
	
}
else
{

flipmode = false;
}


