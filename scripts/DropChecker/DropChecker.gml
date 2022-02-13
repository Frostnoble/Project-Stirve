// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DropCheckerPot(){
	if(place_meeting(global.inFront_x,global.inFront_y,objPot) && (global.equip.image_id == 25 || global.equip.image_id == 26 || global.equip.image_id == 52 || global.equip.image_id == 53 || global.equip.image_id == 55 || global.equip.image_id == 56|| global.equip.image_id == 67)|| global.equip.image_id == 68 || global.equip.image_id == 75 || global.equip.image_id == 76 || global.equip.image_id == 77 || global.equip.image_id == 78 || global.equip.image_id == 79)
	{
		return true
	}
	else
	{
		return false
	}
}

function checkIfSame(){

	item = instance_position(global.inFront_x,global.inFront_y,objItem);
	dry = instance_position(global.inFront_x,global.inFront_y,objDryingRack);

	if(dry != noone)
	{
		if(dry.trans)
		{
			return false;
			
		}
	}
	
	if(item != noone){
		if (item.ID == global.equip.image_id)
		{
			return true;
		}
		else
		{
			return false;
		}	
	}
	else
	{
		return false;
	}
}

function DropCheckerDryingRack(){
	if(place_meeting(global.inFront_x,global.inFront_y,objDryingRack) && !place_meeting(global.inFront_x,global.inFront_y,objItem))
	{
		return true
	}
	else
	{
		return false
	}
}