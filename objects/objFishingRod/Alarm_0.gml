/// @description Insert description here
// You can write your code in this editor
objPlayer.sprite_index = sprBoi;
objPlayer.attackFrame = false;
startFishing = false;
instance_destroy(objRipple);
randomize();
fav = irandom(100);
if (fav <= 70) 
{
	ID = 32;
	DROP = new SmallFish();
	NUM = 1;
}
else
{
	ID = 33;
	DROP = new AverageFish();
	NUM = 1;
}
	
with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
	IDG = objFishingRod.ID;

}
	
if(ds_list_size(objInventory.inventory) < INVENT_SLOT)
{
		
	addInventory(ID,NUM,DROP,objInventory.inventory);
	//global.equip = objInventory.inventory[|0];
	global.gamemode = 0;
	
	instance_destroy();
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
			global.gamemode = 0;
			instance_destroy();
		}
	}
}