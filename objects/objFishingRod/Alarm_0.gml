/// @description Insert description here
// You can write your code in this editor
objPlayer.sprite_index = playerMove()
objPlayer.attackFrame = false;
startFishing = false;
instance_destroy(objRipple);
randomize();
fav = irandom(100);
if (fav >= 31 && fav <= 80) 
{
	ID = 32;
	DROP = new SmallFish();
	NUM = 1;
}
else if(fav >= 81 && fav <= 100)
{
	ID = 33;
	DROP = new AverageFish();
	NUM = 1;
}
else if(fav >= 16 && fav <= 30)
{
	ID = 61;
	DROP = new SeaShell();
	NUM = 1;
}
else if(fav >= 0 && fav <= 15)
{
	ID = 60;
	DROP = new Seaweed();
	NUM = 1;
}
	
	
	
with(instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objItemGot)){
	IDG = objFishingRod.ID;

}
	
if(ds_list_size(objInventory.inventory) < INVENT_SLOT || checkInventory(DROP,objInventory.inventory))
{
		
	addInventory(ID,NUM,DROP,objInventory.inventory);
	//global.equip = objInventory.inventory[|0];
	global.gamemode = 0;
	
	instance_destroy();
}
else
{
	/*
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
	*/
	spawnDrop(ID,DROP,NUM,objPlayer.x, objPlayer.y);

	global.gamemode = 0;
	
	instance_destroy();
}