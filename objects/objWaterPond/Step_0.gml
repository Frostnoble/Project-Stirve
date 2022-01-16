/// @description Insert description here
// You can write your code in this editor
drop = instance_place(x, y,objItem)
if(drop != noone){instance_destroy(drop)}
if(instance_exists(objWaterPond)){image_index = objWaterPond.image_index;}

var lay_id = layer_get_id("Tileset");
var map_id = layer_tilemap_get_id(lay_id);


for(i = -16; i <= 16; i += 16)
{
	for(j = -16; j <= 16; j += 16)
	{
		var checktile = tilemap_get_at_pixel(map_id, x-i, y-j);

		if(checktile == 2)
		{
			tilemap_set_at_pixel(map_id, 1, x-i, y-j);		

		}
	}
}
