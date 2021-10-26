/// @description Insert description here
// You can write your code in this editor



if(global.gamemode == 1 && global.gamemode != 3){
	KeyGet();
	//RemoveZero(objInventory.inventory)
	
	
	
	
	var i = ds_list_find_index(recipes, selected);
	var size = ds_list_size(recipes);

	if(keyboard_check_pressed(vk_down) && ds_list_find_value(recipes, i+1))
	{
		selected = recipes[| i+1];
	}
	if(keyboard_check_pressed(vk_up) && ds_list_find_value(recipes, i-1))
	{
		selected = recipes[| i-1];
	}


	if(keyboard_check_pressed(A_Key))
	{
		if(recipes[|i].KP_lock == 0)
		{
			Crafting(recipes[| i],objInventory.inventory);
		}
		else
		{
			if(global.KP >= recipes[| i].KP_lock)
			{
				global.KP = global.KP - recipes[| i].KP_lock;
				recipes[| i].KP_lock = 0;
				
			}
		
		}
	}
	
	if(keyboard_check_pressed(Select_Key))
	{
		flipmode = !flipmode;
	}

}




