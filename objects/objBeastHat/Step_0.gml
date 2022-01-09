/// @description Insert description here
// You can write your code in this editor
check = 0;
for(var j = 0; j < ds_list_size(objInventory.inventory); j += 1)
{
	if(objInventory.inventory[| j].image_id == val.image_id)
	{
		check++;	
	}
	//show_debug_message(check)
}
	

if(check == 0)
{
	
	val.equiped = false;
	instance_destroy();
}
