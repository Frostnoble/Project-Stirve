/// @description Insert description here
// You can write your code in this editor

//addedRecipes = ds_list_create();
//ds_list_add(addedRecipes, new RawClay());

//ds_grid_add(global.WaterLoc,x,y,1);

UP = false;
DOWN = false;
LEFT = false;
RIGHT = false;

LeftUp = false;
LeftDown = false;
RightUp = false;
RightDown = false;

spawned = false;


randomize();
depth = room_height - y + 1
mini = 600;
maxi = 1000;
amount = irandom_range(mini, maxi);
x_pos = x;
y_pos = y;
set_x = x
set_y = y;

for(i = 0; i <= amount; i++)
{
	var lay_id = layer_get_id("Tileset");
	var map_id = layer_tilemap_get_id(lay_id);
	var checktile = tilemap_get_at_pixel(map_id, x_pos, y_pos);
	if(place_empty(x_pos, y_pos,objWaterPond) && checktile == 2)
	{

		
		init = instance_place(x_pos, y_pos,all)
		if(init != noone){instance_destroy(init)}
		drop = instance_place(x_pos, y_pos,objItem)
		if(drop != noone){instance_destroy(drop)}

		
		instance_create_layer(x_pos, y_pos, "Instances", objWaterPond);
		x_pos = set_x;
		y_pos = set_y;
		image_index = 0;
	}
	else
	{
	
	
		chance = irandom(5);
		
		switch(chance)
		{
			case 0:
				x_pos += 16;
			case 1:
				x_pos -= 16;
			case 2:
				x_pos += 0;
			case 3:
				y_pos += 16;
			case 4:
				y_pos -= 16;
			case 5:
				y_pos += 0;

			default:

		}


	}


}
init = instance_place(set_x, set_y,objWaterPond)
if(init != noone){instance_destroy(init)}
//instance_change(objWaterPond, true);

instance_destroy();


