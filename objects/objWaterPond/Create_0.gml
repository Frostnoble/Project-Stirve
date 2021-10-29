/// @description Insert description here
// You can write your code in this editor
depth = room_height - y + 100

addedRecipes = ds_list_create();
ds_list_add(addedRecipes, new RawClay());





drop = instance_place(x, y,objItem)
if(drop != noone){instance_destroy(drop)}



UP = false;
DOWN = false;
LEFT = false;
RIGHT = false;

LeftUp = false;
LeftDown = false;
RightUp = false;
RightDown = false;

spawned = false;
