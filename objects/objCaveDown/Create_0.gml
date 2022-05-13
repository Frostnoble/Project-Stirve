/// @description Insert description here
// You can write your code in this editor
depth = room_height - y + 1
image_index = 0;
image_speed = 0;


progress = 0;
moving = false;
fading = false;
fadeDir = 1;
alpha = 0;

var lay_id = layer_get_id("Tileset");
var map_id = layer_tilemap_get_id(lay_id);


for(i = -16; i <= 16; i += 16)
{
	for(j = -16; j <= 16; j += 16)
	{
		var checktile = tilemap_get_at_pixel(map_id, x-i, y-j);

		if(checktile == 2)
		{
			tilemap_set_at_pixel(map_id, 5, x-i, y-j);		

		}
	}
}





