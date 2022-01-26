/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(fadedone){timer++;}
//show_debug_message(timer)


if(timer > 150 && ((keyboard_check_pressed(B_Key) || keyboard_check_pressed(B_Key2)) || (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) || keyboard_check_pressed(Select_Key) || keyboard_check_pressed(Start_Key)))
{
	global.gamemode = 0;
	room_goto(Menu);
	instance_destroy();
	
}