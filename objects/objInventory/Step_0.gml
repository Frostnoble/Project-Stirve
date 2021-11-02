/// @description Insert description here

//Equip Selector
if(global.gamemode == 2){

	if(draw_x > (144+5))
	{
		draw_x -= 2.5
	}else{
		draw_x = 144
	}
	

	var i = ds_list_find_index(inventory, global.equip);
	var size = ds_list_size(inventory);

	if(keyboard_check_pressed(vk_right) && ds_list_find_value(inventory, i+1)){

	global.equip = inventory[| i+1];
	

	}
	if(keyboard_check_pressed(vk_left) && ds_list_find_value(inventory, i-1)){

	global.equip = inventory[| i-1];
	

	}
	if(keyboard_check_pressed(vk_down) && ds_list_find_value(inventory, i+3)){

	global.equip = inventory[| i+3];
	

	}
	if(keyboard_check_pressed(vk_up) && ds_list_find_value(inventory, i-3)){

	global.equip = inventory[| i-3];
	

	}

}else{


	if(draw_x < (208-5))
	{
		draw_x += 2.5
	}else{
		draw_x = 208
	}

}

