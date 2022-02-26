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
		
		addInventory(66,irandom_range(1,3),new Honey(),objInventory.inventory);

		with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
			IDG = 66;
		}
		instance_create_layer(x, y, "Instances", objBeeBoxEmpty)
		instance_destroy();

	}
	else
	{
		//show_debug_message(DROP.name)
		for(var i = 0; i < ds_list_size(objInventory.inventory); i++)
		{
			if(objInventory.inventory[|i].image_id == 66 && objInventory.inventory[|i].amount < 99)
			{
				
				PICKUP = false;
				addInventory(66,irandom_range(1,3),new Honey(),objInventory.inventory);
				with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
					IDG = 66;
				}

				//global.equip = objInventory.inventory[|0];
				instance_create_layer(x, y, "Instances", objBeeBoxEmpty)
			    instance_destroy();
			}
		}
	}
}

if(HP <= 0)
{
	pitchRandomizer(sfxBreak,11,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
		ID = 71;
		NUM = 1;
		DROP = new BeeBox();
	}
	

	if(global.KP + KP >= global.MAX_KP){global.KP = global.MAX_KP;}else{global.KP += KP}
	objPlayer.alarm[0] = 1;
	instance_destroy();
}



