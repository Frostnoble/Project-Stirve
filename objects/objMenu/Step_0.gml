/// @description Insert description here
// You can write your code in this editor
KeyGet();

var i = ds_list_find_index(options, selected);
var size = ds_list_size(options);

if(keyboard_check_pressed(vk_down) &&  i < ds_list_size(options)-1 && global.gamemode == 0)
{
	selected = options[| i+1];
	audio_play_sound(sfxMenu,10,false);
}
if(keyboard_check_pressed(vk_up) &&  i > 0 && global.gamemode == 0)
{
	selected = options[| i-1];
	audio_play_sound(sfxMenu,10,false);
}


if(keyboard_check_pressed(A_Key) && global.gamemode == 0)
{
	audio_play_sound(sfxConfirm,10,false);
	switch(selected){
		
		case "New Game":
			room_goto(Loading);
			global.startType = 0;
			
		break;	
		case "Continue":
			if(file_exists("savedgame.save"))
			{
				room_goto(Loading);
				global.startType = 1;
			}
		break;	
		case "Options":
			global.gamemode = 7;
		
			//instance_destroy();
		break;	
		case "Quit":
			game_end();
		break;
	
	}


}