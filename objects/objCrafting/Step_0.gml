/// @description Insert description here
// You can write your code in this editor


listCanCraft = ds_list_create();

if(global.gamemode == 1 && global.gamemode != 3){
	KeyGet();
	//RemoveZero(objInventory.inventory)
	
	for(var i = 0; i < ds_list_size(recipes); i += 1)
	{
		if(canCraft(recipes[| i],objInventory.inventory))
		{
			ds_list_add(listCanCraft,recipes[| i]);
		}
	}
	if(ds_list_size(listCanCraft) == 0)
	{
		global.gamemode = 0;
		candraw = false;
	}
	else
	{
		candraw = true;
	}
	

	
	var i = ds_list_find_index(listCanCraft, selected);
	var size = ds_list_size(listCanCraft);

	if(i > ds_list_size(listCanCraft) || i < 0)
	{
		selected = listCanCraft[| 0];
	}

	if((keyboard_check_pressed(DOWN_Key) || keyboard_check_pressed(DOWN_Key2)) && ds_list_find_value(listCanCraft, i+1))
	{
		selected = listCanCraft[| i+1];
	}
	if((keyboard_check_pressed(UP_Key) || keyboard_check_pressed(UP_Key2)) && ds_list_find_value(listCanCraft, i-1))
	{
		selected = listCanCraft[| i-1];
	}


	if(keyboard_check_pressed(A_Key))
	{
		if(ds_map_find_value(global.unlocked, listCanCraft[| i].image_id) == 0)
		{
			Crafting(listCanCraft[| i],objInventory.inventory);
			if(!ds_list_find_index(objInventory.inventory,global.equip))
			{
				global.equip = objInventory.inventory[| ds_list_size(objInventory.inventory)-1];
				
			}
		}
		else
		{
			if(global.KP >= ds_map_find_value(global.unlocked, listCanCraft[| i].image_id))
			{
				global.KP = global.KP - ds_map_find_value(global.unlocked, listCanCraft[| i].image_id);
				ds_map_set(global.unlocked, listCanCraft[| i].image_id, 0)
				
			}
		
		}
	}
	
	if(keyboard_check_pressed(Select_Key))
	{
		flipmode = !flipmode;
	}

}




