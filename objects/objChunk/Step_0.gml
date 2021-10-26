/// @description Insert description here
// You can write your code in this editor
var x_off = x * (tile_size * width);
var y_off = y * (tile_size * height);

if(!done)
{


	randomize();
	buffer_seek(chunk_buffer, buffer_seek_start, 0);

	for(var i = 0; i < width; i++)
	for(var j = 0; j < height; j++)
	{
		var index = buffer_read(chunk_buffer, buffer_u16);
	
		var x_spawn = x_off + (i * tile_size);
		var y_spawn = y_off + (j * tile_size);
		//show_debug_message(string(x_spawn) +" "+ string(y_spawn));
		//INSIDE FOREST
		if((x_spawn > 150 && x_spawn < room_width -150) && (y_spawn > 150 && y_spawn < room_height -150)){

			if(index >= 750){instance_create_layer(x_spawn,y_spawn, "Instances", objTree);}
			if(index <= 740 && index >= 700){instance_create_layer(x_spawn,y_spawn, "Instances", objTreeSmol);}
			if(index <= 690 && index >= 600){instance_create_layer(x_spawn,y_spawn, "Instances", objGrass);}
			if(index == 4){spawnDrop(1,new Stone(),1,x_spawn,y_spawn);}
			if(index == 1){spawnDrop(15,new Mushroom(),1,x_spawn,y_spawn);}
			if(index == 2){spawnDrop(16,new PoiMushroom(),1,x_spawn,y_spawn);}
			if(index == 3){spawnDrop(17,new BlueMushroom(),1,x_spawn,y_spawn);}
			
			//show_debug_message(index);
		}
	}
	//show_debug_message("DONE")
	done = true;
	
}

