/// @description Insert description here
// You can write your code in this editor
rowlength = 3;
//inventory = array_create(INVENT_SLOT, -1);
inventory = ds_list_create();

draw_x = 208;
draw_y = 0;


addInventory(2,1,new Knife(),inventory);
//addInventory(31,1,new FishingRod(), inventory);
//addInventory(29,1,new WoodenChest(), inventory);
//addInventory(38,1,new StoneStove(), inventory);
//addInventory(48,1,new Spear(), inventory);
//addInventory(48,1,new StoneHoe(), inventory);
//addInventory(26,1,new ClayBowlWaterPure(), inventory);
//addInventory(38,1,new StoneStove(), inventory);
//addInventory(42,2,new DryingRack(), inventory);
global.equip = inventory[| 0];