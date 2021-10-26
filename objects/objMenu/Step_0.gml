/// @description Insert description here
// You can write your code in this editor
KeyGet();

var i = ds_list_find_index(options, selected);
var size = ds_list_size(options);

if(keyboard_check_pressed(vk_down) &&  i < ds_list_size(options)-1)
{
	selected = options[| i+1];
}
if(keyboard_check_pressed(vk_up) &&  i > 0)
{
	selected = options[| i-1];
}


if(keyboard_check_pressed(A_Key))
{
	switch(selected){
		
		case "New Game":
			room_goto(Loading);
			global.startType = 0;
			
		break;	
		case "Continue":
			room_goto(Loading);
			global.startType = 1;
		break;	
		case "Quit":
			game_end();
		break;
	
	}


}