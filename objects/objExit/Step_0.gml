/// @description Insert description here
// You can write your code in this editor
KeyGet();
if(place_meeting(x,y,objPlayer) && keyboard_check(vk_down))
{
	
	global.thisRoom = OverWorld;
	room_goto(global.thisRoom);
	
}