/// @description Insert description here
// You can write your code in this editor

KeyGet();
if(global.gamemode == 8)
{

}
else
{
	instance_destroy();
}

if (room == Menu && keyboard_check_pressed(B_Key))
{

	global.gamemode = 0;
}