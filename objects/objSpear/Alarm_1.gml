/// @description Insert description here
// You can write your code in this editor
removeInventory(global.equip.image_id,1,objInventory.inventory);
if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount >= 1)
{
	global.equip = new PlaceHolder();
				
}
with(instance_create_layer(x-8, y-8, "Instances", objItem))
	{
	ID = 48;
	NUM = 1;
	DROP = new Spear();
	}
instance_destroy();