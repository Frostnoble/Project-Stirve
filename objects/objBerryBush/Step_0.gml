/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(!stunned && place_meeting(x,y,ToolChecker(global.equip.tool_id)) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
	if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
	{
		
		addInventory(47,irandom_range(5,10),new Berries(),objInventory.inventory);

		with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
			IDG = 47;
		}

		instance_create_layer(x, y, "Instances", objBush)
		instance_destroy();

	}
	else
	{
		//show_debug_message(DROP.name)
		for(var i = 0; i < ds_list_size(objInventory.inventory); i++)
		{
			if(objInventory.inventory[|i].image_id == 47 && objInventory.inventory[|i].amount < 99)
			{
				
				PICKUP = false;
				addInventory(47,irandom_range(5,10),new Berries(),objInventory.inventory);
				with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
					IDG = 47;
				}

				//global.equip = objInventory.inventory[|0];
				instance_create_layer(x, y, "Instances", objBush)
			    instance_destroy();
			}
		}
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

killPlant(x,y);

