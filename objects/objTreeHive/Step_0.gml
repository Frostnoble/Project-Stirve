/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(!stunned && place_meeting(x,y,ToolChecker(global.equip.tool_id)) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
}

if(HP <= 0)
{
	global.TreeCheck += 1;
	pitchRandomizer(sfxBreak,11,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
		ID = 0;
		NUM = 4;
		DROP = new Wood();
	}
	
	
	if(global.KP + KP >= global.MAX_KP){global.KP = global.MAX_KP;}else{global.KP += KP}
	objPlayer.alarm[0] = 1;
	instance_destroy();
}


growth++;

for(i = -16; i <= 16; i += 16)
{
	for(j = -16; j <= 16; j += 16)
	{
		item = instance_position(x,y,objFlowers);

		if (item != noone)
		{
			flowerCount++;
			//minusTime += 1800;
		}
	}
}
minusTime = 1800 * flowerCount;


if(growth >= timeToFrames(1,0,0) - minusTime)
{
	instance_create_layer(x, y, "Instances", objTreeHiveFull)
	instance_destroy();
}

killPlant(x,y);



