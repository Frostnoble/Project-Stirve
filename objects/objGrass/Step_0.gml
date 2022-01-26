/// @description Insert description here
KeyGet();

if(place_meeting(x,y,objPlayer) || place_meeting(x,y,objColl)){
if(!onGrass) {
    pitchRandomizer(sfxGrass, 10, false);
	onGrass = true;
}

image_index = 1;	
	
}else{
onGrass = false;
image_index = 0;
}

if(!stunned && place_meeting(x,y,global.equip.tool_id) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    audio_play_sound(sfxGrass,10,false);
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;	
}

if(HP <= 0)
{
	with(instance_create_layer(x, y, "Instances", objDrop))
	{
	ID = 3;
	NUM = 4;
	DROP = new Grass();
	}
	if(global.KP + KP >= global.MAX_KP){global.KP = global.MAX_KP;}else{global.KP += KP}
	objPlayer.alarm[0] = 1;
	instance_destroy();
}
killPlant(x,y);