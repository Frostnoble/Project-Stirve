/// @description Insert description here
// You can write your code in this editor
KeyGet();
wait++;
var i = ds_list_find_index(options, selected);
var size = ds_list_size(options);

if(wait > 25 && (keyboard_check_pressed(DOWN_Key) || keyboard_check_pressed(DOWN_Key2)) &&  i < ds_list_size(options)-1 && global.gamemode == 0)
{
	selected = options[| i+1];
	audio_play_sound(sfxMenu,10,false);
}
if(wait > 25 && (keyboard_check_pressed(UP_Key) || keyboard_check_pressed(UP_Key2)) &&  i > 0 && global.gamemode == 0)
{
	selected = options[| i-1];
	audio_play_sound(sfxMenu,10,false);
}


if(wait > 25 && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && global.gamemode == 0)
{
	audio_play_sound(sfxConfirm,10,false);
	switch(selected){
		
		case "New Game":
			//room_goto(Character);
			//global.startType = 0;
			global.gamemode = 10;
		break;	
		case "Continue":
			global.gamemode = 9;
		break;	
		case "Options":
			global.gamemode = 7;
		
			//instance_destroy();
		break;	
		
		case "Controls":
			global.gamemode = 8;
			instance_create_layer(view_xport[0],view_yport[0] + 144/4, "Instances", objControls);
			
		break;	
		case "Quit":
			game_end();
		break;
	
	}


}