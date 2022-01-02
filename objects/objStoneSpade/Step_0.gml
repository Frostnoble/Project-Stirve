/// @description Insert description here
// You can write your code in this editor



if(checktile == 1 && !gotitem)
{
	


	ID = 19;
	DROP = new Sand();
	NUM = 1;
	
	with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
		IDG = objStoneSpade.ID;

	}
	
	if(ds_list_size(objInventory.inventory) < INVENT_SLOT || checkInventory(DROP,objInventory.inventory))
	{
		
		addInventory(ID,NUM,DROP,objInventory.inventory);
		//global.equip = objInventory.inventory[|0];
		gotitem = true;
	}
	else
	{
		//show_debug_message(DROP.name)
		for(var i = 0; i < ds_list_size(objInventory.inventory); i++)
		{
			if(DROP.name == objInventory.inventory[|i].name)
			{
				
				addInventory(ID,NUM,DROP,objInventory.inventory);
				//global.equip = objInventory.inventory[|0];
				gotitem = true;
			}
		}
	}

}
if(checktile == 2 && !gotitem)
{
	
	
	ID = 20;
	DROP = new Soil();
	NUM = 1;
	
	with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
		IDG = objStoneSpade.ID;

	}	
	
	if(ds_list_size(objInventory.inventory) < INVENT_SLOT || checkInventory(DROP,objInventory.inventory))
	{
		
		addInventory(ID,NUM,DROP,objInventory.inventory);
		//global.equip = objInventory.inventory[|0];
	   gotitem = true;
	}
	else
	{
		//show_debug_message(DROP.name)
		for(var i = 0; i < ds_list_size(objInventory.inventory); i++)
		{
			if(DROP.name == objInventory.inventory[|i].name)
			{
				
				addInventory(ID,NUM,DROP,objInventory.inventory);
				//global.equip = objInventory.inventory[|0];
			    gotitem = true;
			}
		}
	}

}