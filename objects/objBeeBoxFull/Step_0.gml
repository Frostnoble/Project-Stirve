/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(!stunned && place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
	if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
	{
		
		addInventory(66,irandom_range(1,3),new Honey(),objInventory.inventory);

		with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
			IDG = 66;
		}
		instance_create_layer(x, y, "Instances", objBeeBoxEmpty)
		instance_destroy();

	}
}

if(HP <= 0)
{
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



