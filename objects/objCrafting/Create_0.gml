/// @description Insert description here
// You can write your code in this editor
draw_x = 0;
draw_y = 0;
rowlength = 3;
draw_x2 = 208;
draw_y2 = 0;

recipes = ds_list_create();
ds_list_add(recipes, new Rope(), new FireStarter(), new WorkStation(), new GrassBed(), new FenceWood(), new FenceWoodDoor(), new GrassSeed());
selected = recipes[| 0];


flipmode = false;