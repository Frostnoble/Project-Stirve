KeyGet();

if(global.gamemode == 7){
	timer++;	
	
	var i = ds_list_find_index(options, selected);
	var size = ds_list_size(options);

	if((keyboard_check_pressed(DOWN_Key) || keyboard_check_pressed(DOWN_Key2)) &&  i < ds_list_size(options)-1)
	{
		selected = options[| i+1];
		audio_play_sound(sfxMenu,10,false);
	}
	if((keyboard_check_pressed(UP_Key) || keyboard_check_pressed(UP_Key2)) &&  i > 0)
	{
		selected = options[| i-1];
		audio_play_sound(sfxMenu,10,false);
	}
	
	
	if(selected == options[| 0])//Full
	{
		
		if((keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && timer > 10)
		{
			
			if(window_get_fullscreen())
			{
				window_set_fullscreen(false);
				global.fullscreen = false;
				
			}
			else
			{
				window_set_fullscreen(true);
				global.fullscreen = true;
			}
		}
		
		

	}	
	else if(selected == options[| 1])//Music
	{
		var change = (keyboard_check(RIGHT_Key) || keyboard_check(RIGHT_Key2)) - (keyboard_check(LEFT_Key) || keyboard_check(LEFT_Key2))
		//if left is held change will be -1, if right is held change will be 1
		if(change != 0 && global.music_Volume >= 0 && wait == 0)
		{
		    global.music_Volume += (0.01*change);
		    global.music_Volume = clamp(global.music_Volume,0,1)
		    audio_group_set_gain(ag_Music,global.music_Volume,0);
		    wait = 5
		}	
		
		if(change != 0 && global.music_Volume <= 0 && wait == 0)
		{
		    global.music_Volume -= (0.01*change);
		    global.music_Volume = clamp(global.music_Volume,0,1)
		    audio_group_set_gain(ag_Music,global.music_Volume,0);
		    wait = 5
		}	

		
		if(wait > 0){
			wait--
		}

	}
	else if(selected == options[| 2])//Sound
	{
		
		var change = (keyboard_check(RIGHT_Key) || keyboard_check(RIGHT_Key2)) - (keyboard_check(LEFT_Key) || keyboard_check(LEFT_Key2))
		//if left is held change will be -1, if right is held change will be 1
		if(change != 0 && global.sfx_Volume >= 0 && wait == 0)
		{
		    global.sfx_Volume += (0.01*change);
		    global.sfx_Volume = clamp(global.sfx_Volume,0,1)
		    audio_group_set_gain(ag_SFX,global.sfx_Volume,0);
		    wait = 5
		}	
		
		if(change != 0 && global.sfx_Volume <= 0 && wait == 0)
		{
		    global.sfx_Volume -= (0.01*change);
		    global.sfx_Volume = clamp(global.sfx_Volume,0,1)
		    audio_group_set_gain(ag_SFX,global.sfx_Volume,0);
		    wait = 5
		}			
		
		if(wait > 0){
			wait--
		}
	}	
	
	
	
	if ((keyboard_check_pressed(B_Key) || keyboard_check_pressed(B_Key2)))
	{
		SaveGameWorld();
		timer = 0;
		global.gamemode = 0;
	}










}
