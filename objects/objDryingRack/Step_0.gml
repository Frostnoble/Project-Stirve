/// @description Insert description here
// You can write your code in this editor
KeyGet();







if(HP <= 0)
{
	
	pitchRandomizer(sfxBreak,10,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 42;
	NUM = 1;
	DROP = new DryingRack();
	}

	instance_destroy();
}


item = instance_position(x,y,objItem);

if (item != noone)
{
	inUse = true;
	//show_debug_message(string(timeTillDry) + " " + string(global.worldTime))
	if(!trans && item.DROP.canDry)
	{
		timeTillDry = global.worldTime + item.DROP.DryTime;
		trans = true;
	}
	
	if(global.worldTime >= timeTillDry && item.DROP.canDry)
	{
		item = instance_position(x,y,objItem);

		if (item != noone)
		{
			with(instance_create_layer(x, y, "Instances", objItem))
			{

				ID = other.item.DROP.DryImage_id;
				NUM = other.item.NUM * other.item.DROP.DryMult;
				DROP = other.item.DROP.DryName;
			}
			instance_destroy(item);
		
		}
		else
		{
			timeTillDry = 0;
			trans = false;

		}
		timeTillDry = 0;
		trans = false;


	}	
	
	
	
	
}
else
{
	timeTillDry = 0;
	trans = false;
	inUse = false;
}




if(!stunned && place_meeting(x,y,ToolChecker(global.equip.tool_id)) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){

	item = instance_position(x,y,objItem);
	drop = instance_position(x,y,objDrop);
	if(item != noone)
	{
		if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
		{
		
			addInventory(item.DROP.image_id,1,item.DROP,objInventory.inventory);

			with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
				IDG = other.item.DROP.image_id;
			}
			
			

		}
		else
		{
			//show_debug_message(DROP.name)
			for(var i = 0; i < ds_list_size(objInventory.inventory); i++)
			{
				if(objInventory.inventory[|i].image_id == item.DROP.image_id && objInventory.inventory[|i].amount < 99)
				{
				
					PICKUP = false;
					addInventory(item.DROP.image_id,1,item.DROP,objInventory.inventory);
					with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
						IDG = other.item.DROP.image_id;
					}

					//global.equip = objInventory.inventory[|0];
					
				   
				}
			}
		}	
		instance_destroy(item);
		timeTillDry = 0;
		trans = false;
		inUse = false;
	}
	else
	{
	
		pitchRandomizer(sfxHitTree,10,false);
		HP = HP - global.equip.cuttingPow;
		wobbling = true;
		stunned = true;
		alarm[0] = global.equip.hitlag;
	
	}
	
	
	
	
}




