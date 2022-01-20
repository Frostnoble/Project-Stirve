// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function addInventory(ID,num,drop,inventory,dura = 0)
{
	// && ds_list_size(inventory) + 1 <= 9
var val = ID; // ID of item
var next = 0;
for(var i = 0; i < ds_list_size(inventory); i += 1)
{
	if(inventory[| i].image_id == val && inventory[| i].amount < 999)
	{
		if(inventory[| i].amount + num > 999){
			
			var remain = (num + inventory[| i].amount) - 100;
			inventory[| i].amount = 999;
			if(dura > 0){inventory[| i].dura = dura;}
			addInventory(ID,remain,drop,inventory);
			
		}
		else{
		
			//show_debug_message(inventory[| i].amount)
			
			inventory[| i].amount += num;
			if(dura > 0){inventory[| i].dura = dura;}
			
			//show_debug_message("Right");
			
		}
		exit;
	}
	else
	{
		next = next + 1;
	}
	
}
if(next == ds_list_size(inventory))//New Item
{

	ds_list_add(inventory, drop);
	if(num > 1){
		for(var i = 0; i < ds_list_size(inventory); i += 1)
		{
			
			if(inventory[| i].image_id == val)
			{
				if(dura > 0){inventory[| i].dura = dura;}
				show_debug_message(string(dura) + " durability")
				//show_debug_message(inventory[| i].amount)
				
				inventory[| i].amount = inventory[| i].amount + num - 1;
			}
		}
	}
}	
	

}

function removeInventory(ID,num,inventory)
{
	var val = ID; // ID of item
	
	for(var i = 0; i < ds_list_size(inventory); i += 1)
	{
		if(inventory[| i].image_id == val)
		{
			inventory[| i].amount = inventory[| i].amount - num
			if(inventory[| i].amount <= 0)
			{
				
				inventory[| i].amount = 1;
				ds_list_delete(inventory,i);
			}
			
		}
		
	}
}

function clearInventory()
{
	ds_list_destroy(objInventory.inventory);
	with(objInventory){
		inventory = ds_list_create();
	}
}

function checkInventory(drop,inventory)
{
	
	for(var i = 0; i < ds_list_size(inventory); i += 1)
	{
		if(inventory[| i].image_id == drop.image_id)
		{
			return true;
		}
	}
	return false;

}
