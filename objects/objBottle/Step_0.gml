/// @description Insert description here
// You can write your code in this editor


if(position_meeting(global.inFront_x, global.inFront_y,objWater))
{
	show_debug_message("hI")
	
	ID = 25;
	DROP = new ClayBowlWater();
	NUM = 1;
	
	if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
	{
		removeInventory(24,NUM,objInventory.inventory)
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
				removeInventory(24,NUM,objInventory.inventory)
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
	
	

}else if(position_meeting(global.inFront_x, global.inFront_y,objPot))
{
	this_pot = instance_position(global.inFront_x, global.inFront_y,objPot);
	if(this_pot.liquid == "SaltWater" && this_pot.currenthold >= 1)
	{
		this_pot.currenthold--;
		ID = 25;
		DROP = new ClayBowlWater();
		NUM = 1;
	
		if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
		{
			removeInventory(24,NUM,objInventory.inventory)
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
					removeInventory(24,NUM,objInventory.inventory)
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
	else if(this_pot.liquid == "PureWater" && this_pot.currenthold >= 1)
	{
		this_pot.currenthold--;
		ID = 26;
		DROP = new ClayBowlWaterPure();
		NUM = 1;
	
		if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
		{
			removeInventory(24,NUM,objInventory.inventory)
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
					removeInventory(24,NUM,objInventory.inventory)
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
	else if(this_pot.liquid == "AnimalFat" && this_pot.currenthold >= 1)
	{
		this_pot.currenthold--;
		ID = 55;
		DROP = new ClayBowlAnimalFat();
		NUM = 1;
	
		if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
		{
			removeInventory(24,NUM,objInventory.inventory)
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
					removeInventory(24,NUM,objInventory.inventory)
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
	else if(this_pot.liquid == "Oil" && this_pot.currenthold >= 1)
	{
		this_pot.currenthold--;
		ID = 56;
		DROP = new ClayBowlOil();
		NUM = 1;
	
		if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
		{
			removeInventory(24,NUM,objInventory.inventory)
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
					removeInventory(24,NUM,objInventory.inventory)
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
	else if(this_pot.liquid == "Juice" && this_pot.currenthold >= 1)
	{
		this_pot.currenthold--;
		ID = 67;
		DROP = new ClayBowlJuice();
		NUM = 1;
	
		if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
		{
			removeInventory(24,NUM,objInventory.inventory)
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
					removeInventory(24,NUM,objInventory.inventory)
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
}
else
{
	instance_destroy();
}

