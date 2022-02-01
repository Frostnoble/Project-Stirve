/// @description Insert description here
// You can write your code in this editor
KeyGet();
if(global.gamemode == 5)
{
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


	if((keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)))
	{
		switch(selected){
		
			case "Crafting":
				if(ds_list_size(objInventory.inventory)){global.gamemode = 1; instance_destroy();}
				
			break;	
			case "Research":
				if(ds_list_size(objInventory.inventory)){global.gamemode = 6; instance_destroy();}
				
		
				
			break;	
			case "Options":
				global.gamemode = 7;
		
				instance_destroy();
			break;	
			
			case "Controls":
				global.gamemode = 8;
				instance_create_layer(view_xport[0],view_yport[0] + 144/4, "Instances", objControls);
				instance_destroy();
			break;	
			
			case "Save":
				
				global.gamemode = 0;
				SaveGame();
				
			break;
			case "Quit Game":
					
				global.gamemode = 0;
				
				audio_stop_sound(musOverworld_Clear);
				audio_stop_sound(musOverworld_Rain);
				audio_stop_sound(musOverworld_Storm);
				audio_stop_sound(musOverworld_Night);
				room_goto(Menu);
			break;
	
		}


	}
}else{
instance_destroy();
}