/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,objPlayer) && sprite_index != sprPoof && PICKUP = true)
{
	
	

	if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
	{
		PICKUP = false;
		addInventory(ID,NUM,DROP,objInventory.inventory);
		with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
			IDG = other.ID;
		}

		//global.equip = objInventory.inventory[|0];
	    instance_destroy();
	}
	else
	{
		//show_debug_message(DROP.name)
		for(var i = 0; i < ds_list_size(objInventory.inventory); i++)
		{
			if(DROP.name == objInventory.inventory[|i].name && objInventory.inventory[|i].amount < 99)
			{
				//show_debug_message("YOYO2")
				PICKUP = false;
				addInventory(ID,NUM,DROP,objInventory.inventory);
				with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
					IDG = other.ID;
				}

				//global.equip = objInventory.inventory[|0];
			    instance_destroy();
			}
		}
	}
}