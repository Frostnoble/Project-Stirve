/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(global.gamemode == 10){
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
	
	
	if(selected == options[| 0])//Save1
	{
		
		if(timerload >= 10 && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)))
		{
			
			if(file_exists("StriveSaveSlot1"))
			{
				global.gamemode = 13;
				objYesNo.othermode = 10;
				if(objYesNo.ty == 0)
				{
					global.startType = 0;
					global.slot = 1;
					objYesNo.ty = 2;
					room_goto(Character);			
				}
				else if(objYesNo.ty == 1)
				{
				
					objYesNo.ty = 2;
					selected = options[| 0];
					global.gamemode = 0;
					timerload = 0;
				}
				

			}
			else
			{
				global.startType = 0;
				global.slot = 1;
				room_goto(Character);
			}
	
		}
	}
	else if(selected == options[| 1])//Save2
	{
		
		if(timerload >= 10 && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)))
		{
			
			if(file_exists("StriveSaveSlot2"))
			{
				global.gamemode = 13;
				objYesNo.othermode = 10;
				if(objYesNo.ty == 0)
				{
					global.startType = 0;
					global.slot = 2;
					objYesNo.ty = 2;
					room_goto(Character);			
				}
				else if(objYesNo.ty == 1)
				{
				
					objYesNo.ty = 2;
					selected = options[| 0];
					global.gamemode = 0;
					timerload = 0;
				}
				

			}
			else
			{
				global.startType = 0;
				global.slot = 2;
				room_goto(Character);
			}
	
		}
	}
	else if(selected == options[| 2])//Save3
	{
		
		if(timerload >= 30 && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)))
		{
			
			if(file_exists("StriveSaveSlot3"))
			{
				global.gamemode = 13;
				objYesNo.othermode = 10;
				if(objYesNo.ty == 0)
				{
					global.startType = 0;
					global.slot = 3;
					objYesNo.ty = 2;
					room_goto(Character);			
				}
				else if(objYesNo.ty == 1)
				{
				
					objYesNo.ty = 2;
					selected = options[| 0];
					global.gamemode = 0;
					timerload = 0;
				}
				

			}
			else
			{
				global.startType = 0;
				global.slot = 3;
				room_goto(Character);
			}
		}
	}
	
	
	if ((keyboard_check_pressed(B_Key) || keyboard_check_pressed(B_Key2)))
	{

		timerload = 0;
		global.gamemode = 0;
	}
}