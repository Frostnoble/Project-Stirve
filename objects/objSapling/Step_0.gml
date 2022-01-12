/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
}

if(HP <= 0)
{
	pitchRandomizer(sfxBreak,11,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 0;
	NUM = 1;
	DROP = new Wood();
	}
	objPlayer.alarm[0] = 1;
	instance_destroy();
}

if(place_meeting(x,y,objBetterSoil)){growth+=2;;}else{growth++;}


if(growth >= timeToFrames(3,0,0))
{
	instance_create_layer(x, y, "Instances", objTreeSmol)
	instance_destroy();
}

