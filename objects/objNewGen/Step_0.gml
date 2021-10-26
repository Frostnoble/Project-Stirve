/// @description Insert description here
// You can write your code in this editor

if(global.startType == 0){
	

	if(!done)
	{


		randomize();


		for(var i = 0; i < room_width; i++)
		for(var j = 0; j < room_height; j++)
		{
		
			//var index = map_value(FastNoise(i, j, 1), -1, 1, 0, 255);
		
		
			//show_debug_message(map_value(perlin_noise(i, j), -1, 1, 0, 255))
			var x_spawn = (i * 16);
			var y_spawn = (j * 16);
			//show_debug_message(string(x_spawn) +" "+ string(y_spawn));
			//INSIDE FOREST
			if((x_spawn > 150 && x_spawn < room_width -150) && (y_spawn > 150 && y_spawn < room_height -150) && place_empty(x_spawn,y_spawn)){
			
				var index = global.world[# i, j]
			

				///show_debug_message(index);
				if(index >= 750){instance_create_layer(x_spawn,y_spawn, "Instances", objTree);}
				if(index <= 740 && index >= 700){instance_create_layer(x_spawn,y_spawn, "Instances", objTreeSmol);}
				if(index <= 690 && index >= 600){instance_create_layer(x_spawn,y_spawn, "Instances", objGrass);}
				if(index <= 590 && index >= 580){instance_create_layer(x_spawn,y_spawn, "Instances", objRock);}
				if(index <= 14 && index >= 11){instance_create_layer(x_spawn,y_spawn, "Instances", objBush);}
				if(index <= 17 && index >= 15){instance_create_layer(x_spawn,y_spawn, "Instances", objBerryBush);}
				if(index == 10){instance_create_layer(x_spawn,y_spawn, "Instances", objRabbit);}
				if(index == 9){instance_create_layer(x_spawn,y_spawn, "Instances", objPond);}
				if(index == 4){spawnDrop(1,new Stone(),1,x_spawn,y_spawn);}
				if(index == 1){spawnDrop(15,new Mushroom(),1,x_spawn,y_spawn);}
				if(index == 2){spawnDrop(16,new PoiMushroom(),1,x_spawn,y_spawn);}
				if(index == 3){spawnDrop(17,new BlueMushroom(),1,x_spawn,y_spawn);}
				//instance_deactivate_all(true);
				//show_debug_message(index);
			}
		}
		//show_debug_message("DONE")
		done = true;
		audio_play_sound(musTest, 1, true);
		ds_grid_destroy(global.world);
	}

}
else if(global.startType == 1){
	if(!done){
		LoadGame();
		//show_debug_message("Loaded")
	}
	done = true;
	audio_play_sound(musTest, 1, true);
}

global.startType = -1;