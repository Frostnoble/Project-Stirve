/// @description Insert description here
// You can write your code in this editor
KeyGet();
if(place_meeting(x,y+16,objPlayer) && keyboard_check_pressed(vk_up))
{

	global.GoThrough = true;
	global.thisRoom = myroom;
	room_goto(global.thisRoom);
	global.GoThrough = false;
}