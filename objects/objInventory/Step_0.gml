/// @description Insert description here
KeyGet();
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

	if((keyboard_check_pressed(RIGHT_Key) || keyboard_check_pressed(RIGHT_Key2)) && ds_list_find_value(inventory, i+1)){

	global.equip = inventory[| i+1];
	audio_play_sound(sfxMoveSelect,10,false);

	}
	if((keyboard_check_pressed(LEFT_Key) || keyboard_check_pressed(LEFT_Key2)) && ds_list_find_value(inventory, i-1)){

	global.equip = inventory[| i-1];
	audio_play_sound(sfxMoveSelect,10,false);

	}
	if((keyboard_check_pressed(DOWN_Key) || keyboard_check_pressed(DOWN_Key2)) && ds_list_find_value(inventory, i+3)){

	global.equip = inventory[| i+3];
	audio_play_sound(sfxMoveSelect,10,false);

	}
	if((keyboard_check_pressed(UP_Key) || keyboard_check_pressed(UP_Key2)) && ds_list_find_value(inventory, i-3)){

	global.equip = inventory[| i-3];
	audio_play_sound(sfxMoveSelect,10,false);

	}

}else{

	
	if(draw_x < (208-5))
	{
		draw_x += 2.5
	}else{
		draw_x = 208
	}

}

