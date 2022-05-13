/// @description Insert description here
// You can write your code in this editor
rowlength = 3;
//inventory = array_create(INVENT_SLOT, -1);
inventory = ds_list_create();

draw_x = 208;
draw_y = 0;


addInventory(2,1,new Knife(),inventory);
switch(global.Avatar)
{
	case 0:
		//"Terry";
		addInventory(101,10,new Medication(),inventory);
	break;
	
	case 1:
		//"Amber";
		addInventory(99,1,new Compass(),inventory);
	break;
	
	case 2:
		//"Zackary";
		addInventory(100,1,new BaseballBat(),inventory);
	break;
	
	case 3:
		//"Lucia";
		addInventory(102,1,new Suitcase(),inventory);
	break;
}



global.equip = inventory[| 0];