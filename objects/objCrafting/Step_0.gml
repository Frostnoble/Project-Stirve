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

	if(keyboard_check_pressed(vk_down) && ds_list_find_value(listCanCraft, i+1))
	{
		selected = listCanCraft[| i+1];
	}
	if(keyboard_check_pressed(vk_up) && ds_list_find_value(listCanCraft, i-1))
	{
		selected = listCanCraft[| i-1];
	}


	if(keyboard_check_pressed(A_Key))
	{
		if(listCanCraft[|i].KP_lock == 0)
		{
			Crafting(listCanCraft[| i],objInventory.inventory);
		}
		else
		{
			if(global.KP >= listCanCraft[| i].KP_lock)
			{
				global.KP = global.KP - listCanCraft[| i].KP_lock;
				listCanCraft[| i].KP_lock = 0;
				
			}
		
		}
	}
	
	if(keyboard_check_pressed(Select_Key))
	{
		flipmode = !flipmode;
	}

}




