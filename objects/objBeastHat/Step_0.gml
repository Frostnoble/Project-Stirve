/// @description Insert description here
// You can write your code in this editor
if(!ds_list_find_index(objInventory.inventory,val))
{

	val.equiped = false;
	instance_destroy();
}