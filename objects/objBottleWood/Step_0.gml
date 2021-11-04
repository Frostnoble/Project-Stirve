/// @description Insert description here
// You can write your code in this editor


if(position_meeting(global.inFront_x, global.inFront_y,objWater))
{

	
	ID = 52;
	DROP = new WoodBowlWater();
	NUM = 1;
	
	if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
	{
		removeInventory(51,NUM,objInventory.inventory)
		addInventory(ID,NUM,DROP,objInventory.inventory);
		//global.equip = objInventory.inventory[|0];
		if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount >= 1)
		{
			global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
				
		}
		pitchRandomizer(sfxSplash,10,false);
		instance_destroy();
		
	}
	else
	{
		//show_debug_message(DROP.name)
		for(var i = 0; i < ds_list_size(objInventory.inventory); i++)
		{
			if(DROP.name == objInventory.inventory[|i].name)
			{
				removeInventory(51,NUM,objInventory.inventory)
				addInventory(ID,NUM,DROP,objInventory.inventory);
				//global.equip = objInventory.inventory[|0];
				
				
				if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount >= 1)
				{
				global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
				
				}			
				
				
				pitchRandomizer(sfxSplash,10,false);
				instance_destroy();
			}
		}
	}
	
	

}
else
{
	instance_destroy();
}

