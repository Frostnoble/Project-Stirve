// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Crafting(product,inventory){
//Check if we got all the materials we need

check = 0;
cost = ds_map_values_to_array(product.crafting);
ingredients = ds_map_keys_to_array(product.crafting);

for(var i = 0; i < ds_map_size(product.crafting); i += 1)
{
	//show_debug_message("LETS GO");
	
	if(ds_list_size(objInventory.inventory) < INVENT_SLOT){
		for(var j = 0; j < ds_list_size(inventory); j += 1)
		{
			//show_debug_message(inventory[| j].name+" "+ingredients[i].name);
			if((inventory[| j].name == ingredients[i].name) && (inventory[| j].amount >= cost[i]))
			{

				check++;
			
			}
			else{}
		}
	}else
	{
		for(var k = 0; k < ds_list_size(objInventory.inventory); k++)
		{
			if(product.name == objInventory.inventory[|k].name)
			{
				for(var j = 0; j < ds_list_size(objInventory.inventory); j += 1)
				{
					//show_debug_message(inventory[| j].name+" "+ingredients[i].name);
					if((inventory[| j].name == ingredients[i].name) && (inventory[| j].amount >= cost[i]))
					{

						check++;
			
					}
					else{}
				}
			}
		}
	
	}
	
}
i = 8
j = 0

if(check == ds_map_size(product.crafting))
{
	
	
	//show_debug_message(product.amount);
	//show_debug_message("GOOD");
	
	//remove items
	for(var i = 0; i < ds_map_size(product.crafting); i += 1)
	{
		for(var j = 0; j < ds_list_size(inventory); j += 1)
		{
			if((inventory[| j].name == ingredients[i].name) && (inventory[| j].amount >= cost[i]))
			{
				var num = cost[i];
				
				removeInventory(inventory[| j].image_id,num,inventory);
				check++;
			}
			else{}
		}

	}
	
	addInventory(product.image_id,product.yeald,product,inventory);
	ReturnItem(product.image_id);
	
	
}
else
{
	//show_debug_message("BAD");
}

}

function canCraft(product,inventory){
	check = 0;
	cost = ds_map_values_to_array(product.crafting);
	ingredients = ds_map_keys_to_array(product.crafting);

	for(var i = 0; i < ds_map_size(product.crafting); i += 1)
	{
	

		for(var j = 0; j < ds_list_size(inventory); j += 1)
		{
			if((inventory[| j].name == ingredients[i].name) && (inventory[| j].amount >= cost[i]))
			{
				check++;	
			}
			else{}
		}
	
	}
	
	
	
	if(check == ds_map_size(product.crafting))
	{
		return true;
	}else
	{
		return false;
	}
}


