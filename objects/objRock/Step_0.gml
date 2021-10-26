/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxSplash,10,false);
	HP = HP - global.equip.smashingPow;
	wobbling = true;
}

if(HP <= 0)
{
	pitchRandomizer(sfxBreak,11,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
		ID = 1;
		NUM = 8;
		DROP = new Stone();
	}
	
	
	if(global.KP + KP >= global.MAX_KP){global.KP = global.MAX_KP;}else{global.KP += KP}
	objPlayer.alarm[0] = 1;
	instance_destroy();
}


if(global.light_times == "Day")
{
	sprite_index = sprRock_Day;
}
else if(global.light_times == "Eve")
{
	sprite_index = sprRock_Eve;
}
else if(global.light_times == "Night")
{
	sprite_index = sprRock_Night;
}



