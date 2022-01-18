/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(!stunned && place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    
	HP = HP - global.equip.smashingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
}








if(HP <= 0)
{
	
	
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 0;
	NUM = 3;
	DROP = new Stone();
	}

	instance_destroy();
}


