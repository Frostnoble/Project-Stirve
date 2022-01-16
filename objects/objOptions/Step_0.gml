KeyGet();
timer++;
if(global.gamemode == 7){
	
	
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
		
		if(keyboard_check_pressed(A_Key) && timer > 60)
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
		if((keyboard_check_pressed(LEFT_Key) || keyboard_check_pressed(LEFT_Key2)) && global.music_Volume >= 0)
		{
			global.music_Volume -= 0.01;
			global.music_Volume = clamp(global.music_Volume,0,1)
			audio_group_set_gain(ag_Music,global.music_Volume,0);
		
		}
		if((keyboard_check_pressed(RIGHT_Key) || keyboard_check_pressed(RIGHT_Key2)) && global.music_Volume <= 1)
		{
			global.music_Volume += 0.01;
			global.music_Volume = clamp(global.music_Volume,0,1)
			audio_group_set_gain(ag_Music,global.music_Volume,0);
		
		}

	}
	else if(selected == options[| 2])//Sound
	{
		if((keyboard_check_pressed(LEFT_Key) || keyboard_check_pressed(LEFT_Key2)) && global.sfx_Volume >= 0)
		{
			global.sfx_Volume -= 0.01;
			global.sfx_Volume = clamp(global.sfx_Volume,0,1)
			audio_group_set_gain(ag_SFX,global.sfx_Volume,0);
			audio_play_sound(sfxMenu,10,false);
		}
		if((keyboard_check_pressed(RIGHT_Key) || keyboard_check_pressed(RIGHT_Key2)) && global.sfx_Volume <= 1)
		{
			global.sfx_Volume += 0.01;
			global.sfx_Volume = clamp(global.sfx_Volume,0,1)
			audio_group_set_gain(ag_SFX,global.sfx_Volume,0);
			audio_play_sound(sfxMenu,10,false);
		}

	}	
	
	
	
	if (room == Menu && keyboard_check_pressed(B_Key))
	{
		SaveGameWorld();
		timer = 0;
		global.gamemode = 0;
	}










}
