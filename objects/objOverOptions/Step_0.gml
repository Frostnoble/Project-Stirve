/// @description Insert description here
// You can write your code in this editor
KeyGet();
if(global.gamemode == 5)
{
	var i = ds_list_find_index(options, selected);
	var size = ds_list_size(options);

	if(keyboard_check_pressed(vk_down) &&  i < ds_list_size(options)-1)
	{
		selected = options[| i+1];
		audio_play_sound(sfxMenu,10,false);
	}
	if(keyboard_check_pressed(vk_up) &&  i > 0)
	{
		selected = options[| i-1];
		audio_play_sound(sfxMenu,10,false);
	}


	if(keyboard_check_pressed(A_Key))
	{
		switch(selected){
		
			case "Crafting":
				global.gamemode = 1;
		
				instance_destroy();
				
			break;	
			case "Research":
				
				global.gamemode = 6;
		
				instance_destroy();
			break;	
			case "Options":

			break;	
			case "Save/Quit":
				
				global.gamemode = 0;
				SaveGame();
				
				audio_stop_sound(musTest);
				room_goto(Menu);
			break;
	
		}


	}
}else{
instance_destroy();
}