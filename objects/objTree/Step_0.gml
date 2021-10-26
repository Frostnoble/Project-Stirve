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
		NUM = 4;
		DROP = new Wood();
	}
	
	var chan = irandom(100);
	if (chan <= 50) 
	{
		with(instance_create_layer(x, y, "Instances", objDrop)){
			ID = 13;
			NUM = 3;
			DROP = new Pinecone();
		}
	}
	if(global.KP + KP >= global.MAX_KP){global.KP = global.MAX_KP;}else{global.KP += KP}
	objPlayer.alarm[0] = 1;
	instance_destroy();
}


if(global.light_times == "Day")
{
	sprite_index = sprTree_Day;
}
else if(global.light_times == "Eve")
{
	sprite_index = sprTree_Eve;
}
else if(global.light_times == "Night")
{
	sprite_index = sprTree_Night;
}



