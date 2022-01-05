KeyGet();

if(global.gamemode == 6){

	if(!seemode)
	{
		var i = ds_list_find_index(objInventory.inventory, res_selector);
		var size = ds_list_size(objInventory.inventory);

		if(keyboard_check_pressed(vk_right) && ds_list_find_value(objInventory.inventory, i+1)){

		res_selector = objInventory.inventory[| i+1];


		}
		if(keyboard_check_pressed(vk_left) && ds_list_find_value(objInventory.inventory, i-1)){

		res_selector = objInventory.inventory[| i-1];


		}
		if(keyboard_check_pressed(vk_down) && ds_list_find_value(objInventory.inventory, i+3)){

		res_selector = objInventory.inventory[| i+3];


		}
		if(keyboard_check_pressed(vk_up) && ds_list_find_value(objInventory.inventory, i-3)){

		res_selector = objInventory.inventory[| i-3];


		}
		
		if(keyboard_check_pressed(A_Key))
		{
			
			//Geneate list of Crafable things
			
			//show_debug_message(res_selector.image_id)
			for(var i = 0; i < array_length(global.craftable_item); i++)
			{
				//ds_map_find_value(objWorld.craftable_item[| i].crafting, res_selector)
				//show_debug_message(objWorld.craftable_item[| i].craftHelper[| 1]);
				
				//show_debug_message(global.craftable_item[i].craftHelper[|0])
				for(var j = 0; j < ds_list_size(global.craftable_item[i].craftHelper); j++)
				{
					if(global.craftable_item[i].craftHelper[|j] == res_selector.image_id)
					{
						ds_list_add(Possible,global.craftable_item[i]);
						//show_debug_message("ADDED")
						break;
					}

					

				}
			}
			seemode = true;
			selected = Possible[| 0];

		}
	}
	else if(seemode)
	{
		var i = ds_list_find_index(Possible, selected);
		var size = ds_list_size(Possible);

		if(i > ds_list_size(Possible) || i < 0)
		{
			selected = Possible[| 0];
		}

		if(keyboard_check_pressed(vk_down) && ds_list_find_value(Possible, i+1))
		{
			selected = Possible[| i+1];

		}
		if(keyboard_check_pressed(vk_up) && ds_list_find_value(Possible, i-1))
		{
			selected = Possible[| i-1];

		}

	
	
		if(keyboard_check_pressed(Select_Key))
		{
			seemode = false;
			ds_list_clear(Possible);
		}
	}
}
else{
	res_selector = objInventory.inventory[| 0];
	seemode = false;
	ds_list_clear(Possible);
}
