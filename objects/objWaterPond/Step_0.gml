/// @description Insert description here
// You can write your code in this editor
drop = instance_place(x, y,objItem)
if(drop != noone){instance_destroy(drop)}
if(instance_exists(objWaterPond)){image_index = objWaterPond.image_index;}
