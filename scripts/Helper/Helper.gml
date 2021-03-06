// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RemoveDuplicate(ds_list){

	var list = ds_list; //the input list

	//sort the list in ascending order
	ds_list_sort(list, true);

	var result = ds_list_create(); //The new list with no duplicates
	var prev= undefined; //The compare value to check duplicates

	for(var i = 0; i < ds_list_size(list); i++) {
	   var value = list[| i];
	   if (value != prev) {  //value not repeated
	        ds_list_add(result, value);
	   }
	   prev = value;
	}

	return result;

}

function RemoveZero(ds_list)
{
	for(var i = 0; i < ds_list_size(ds_list); i++) 
	{
		if(ds_list[|i].amount <= 0)
		{
			ds_list_delete(ds_list,i);
		}
	
	}
	return ds_list;

}

function timeToFrames(day,hour,minute)
{
	tick = 0;
	tick += (minute*30);
	tick += (hour*1800);
	tick += (day*43200);
	return tick;
}



function DAY()
{
	
	global.light_times = "Day";
	
	var lay_id = layer_get_id("Tileset");
	layer_shader(lay_id, None)
	
	var lay_id = layer_get_id("Water");
	layer_shader(lay_id, None)
	/*
	var lay_id = layer_get_id("Tileset");
	var tile_id = layer_tilemap_get_id(lay_id);
	if tilemap_get_tileset(tile_id) != TileSet_Day
	{
		 tilemap_tileset(tile_id, TileSet_Day);
	}
	
	var lay_id2 = layer_get_id("Water");
	var tile_id2 = layer_tilemap_get_id(lay_id2);
	if tilemap_get_tileset(tile_id2) != TileSet_Day
	{
		 tilemap_tileset(tile_id2, TileSet_Day);
	}*/
}


function EVE()
{
	
	global.light_times = "Eve";
	var lay_id = layer_get_id("Tileset");
	layer_shader(lay_id, Evening)
	
	var lay_id = layer_get_id("Water");
	layer_shader(lay_id, Evening)
	/*
	var lay_id = layer_get_id("Tileset");
	var tile_id = layer_tilemap_get_id(lay_id);
	if tilemap_get_tileset(tile_id) != TileSet_Eve
	{
		 tilemap_tileset(tile_id, TileSet_Eve);
	}
	
	var lay_id2 = layer_get_id("Water");
	var tile_id2 = layer_tilemap_get_id(lay_id2);
	if tilemap_get_tileset(tile_id2) != TileSet_Eve
	{
		 tilemap_tileset(tile_id2, TileSet_Eve);
	}*/
}





function NIGHT()
{
	
	global.light_times = "Night";
	var lay_id = layer_get_id("Tileset");
	layer_shader(lay_id, Night)
	
	var lay_id = layer_get_id("Water");
	layer_shader(lay_id, Night)
	/*
	var lay_id = layer_get_id("Tileset");
	var tile_id = layer_tilemap_get_id(lay_id);
	if tilemap_get_tileset(tile_id) != TileSet_Night
	{
		 tilemap_tileset(tile_id, TileSet_Night);
	}
	
	var lay_id2 = layer_get_id("Water");
	var tile_id2 = layer_tilemap_get_id(lay_id2);
	if tilemap_get_tileset(tile_id2) != TileSet_Night
	{
		 tilemap_tileset(tile_id2, TileSet_Night);
	}
	*/
}


function spawnDrop(ty,thing,number,drop_x,drop_y)
{
	with(instance_create_layer(drop_x,drop_y, "Instances", objItem))
	{
		ID = ty;
		NUM = number;
		DROP = thing;
	
	}
}



function pitchRandomizer(sound,priority,loop)
{
	var snd = audio_play_sound(sound,priority,loop)
	var pitch = random_range( 0.8, 1.2)
	audio_sound_pitch( snd, pitch)
	
}


function killPlant(x,y)
{
	var lay_id = layer_get_id("Tileset");
	var map_id = layer_tilemap_get_id(lay_id);
	var checktile = tilemap_get_at_pixel(map_id, x, y);

	if(checktile == 1 || checktile == 5 ){instance_destroy();}
	
}

function HPBar(HP,MHP)
{
	if(stunned)
	{
		x1 = x;
		x2 = x+16;
		y1 = y+7;
		y2 = y+8;
		//draw_set_colour(c_black);
		//draw_rectangle(x1+1,y1+1,x1+1+(x2-1-x1+1)*(1),y2-1,0);
		draw_set_colour(c_gray);
		draw_rectangle(x1,y1,x1+(x2-x1)*(1),y2,0);
		draw_set_colour(c_yellow);
		draw_rectangle(x1,y1,x1+(x2-x1)*(HP/(MHP)),y2,0);
	}

}

function Avatar(num)
{
	switch(num)
	{
		case 0:
			return sprBoiMenu
		break;
		case 1:
			return sprGurlMenu
		break;
		case 2:
			return sprBoiMenu2
		break;
		case 3:
			return sprGurlMenu2
		break;
								
	}

}

function checkUnder()
{
	if(y <= 4320){ return true;}
	else{ return false;}

}




