/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(place_meeting(x,y,ToolChecker(global.equip.tool_id)) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){

	HP = HP - global.equip.cuttingPow;
	wobbling = true;
}

if(HP <= 0)
{
	pitchRandomizer(sfxGrass, 10, false);
	objPlayer.alarm[0] = 1;
	instance_destroy();
}


if(place_meeting(x,y,objBetterSoil)){growth+=2;;}else{growth++;}

if(growth >= timeToFrames(1,0,0))
{
	with(instance_create_layer(x, y, "Instances", objFlowers)){ image_index = 4}
	instance_destroy();
}

killPlant(x,y);
