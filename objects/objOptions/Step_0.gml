KeyGet();

if(global.gamemode == 7){
	
	
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
	
	
	

	if(selected == options[| 0])
	{
		
		if(keyboard_check_pressed(A_Key))
		{
			if(window_get_fullscreen())
			{
				window_set_fullscreen(false);
				
			}
			else
			{
				window_set_fullscreen(true);
			}
		}
		
		

	}










}
