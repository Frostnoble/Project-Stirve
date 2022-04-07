/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(global.gamemode == 13){
	timerload++;
	
	var i = ds_list_find_index(options, selected);


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
	
	
	if(selected == options[| 0])//Yes
	{
		
		if(timerload >= 30 && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)))
		{
			ty = 0;
			global.gamemode = othermode;
			selected = options[| 0];

	
		}
	}
	else if(selected == options[| 1])//No
	{
		
		if(timerload >= 30 && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)))
		{
			ty = 1;
			global.gamemode = othermode;
			selected = options[| 0];
		}
	}
	
	
	

}