// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DropCheckerPot(){
	if(place_meeting(global.inFront_x,global.inFront_y,objPot) && (global.equip.image_id == 25 || global.equip.image_id == 26 || global.equip.image_id == 52 || global.equip.image_id == 53 || global.equip.image_id == 55 || global.equip.image_id == 56) )
	{
		return true
	}
	else
	{
		return false
	}
}