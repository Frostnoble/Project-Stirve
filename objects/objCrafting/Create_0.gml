/// @description Insert description here
// You can write your code in this editor
draw_x = 0;
draw_y = 0;
rowlength = 3;
draw_x2 = 208;
draw_y2 = 0;

recipes = ds_list_create();
ds_list_add(recipes, 
new Rope(),
new Torch(),
new FireStarter(), 
new WorkStation(), 
new GrassBed(),
new PrePit(),
new TreeBark(),
new BoneNeedle(),
new BoneHook(),
new Basket(),
new FenceWood(), 
new FenceWoodDoor(), 
new GrassSeed(), 
new HibiscusSeedP(),
new HibiscusSeedY(),
new HibiscusSeedPu(),
new HibiscusSeedO(),
new HibiscusSeedR(),
new WoodBowlJuice(),
new ClayBowlJuice());
selected = recipes[| 0];


Confirm = false;
flipmode = false;
candraw = false;
instance_create_layer(0,0, "Instances", objAdvanceCrafting);