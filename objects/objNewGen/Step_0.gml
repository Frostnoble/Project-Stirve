/// @description Insert description here
// You can write your code in this editor

if(global.startType == 0){
	

	if(!done)
	{


		randomize();


		for(var i = 0; i < room_width/16; i++)
		for(var j = 0; j < room_height/16; j++)
		{
		
			//var index = map_value(FastNoise(i, j, 1), -1, 1, 0, 255);
		
		
			//show_debug_message(map_value(perlin_noise(i, j), -1, 1, 0, 255))
			var x_spawn = (i * 16);
			var y_spawn = (j * 16);
			//show_debug_message(string(x_spawn) +" "+ string(y_spawn));
			//INSIDE FOREST
			
			var lay_id = layer_get_id("Tileset");
			var map_id = layer_tilemap_get_id(lay_id);
			var checktile = tilemap_get_at_pixel(map_id, x_spawn, y_spawn);
			var index = global.world[# i, j];
			
			//SpawnOne
			while(!ShellFlute)
			{
				xs = irandom(room_width/16)* 16;
				ys = irandom(room_width/16)* 16;
				var lay_id_s = layer_get_id("Tileset");
				var map_id_s = layer_tilemap_get_id(lay_id_s);
				var checktile_s = tilemap_get_at_pixel(map_id_s, xs, ys);
				if(checktile_s == 1)
				{
					spawnDrop(74,new ShellMusic(),1,xs,ys); 
					ShellFlute = true;
				}
			}
			
			
			
			
			
			//if(checktile == 1 && !ShellFlute){spawnDrop(74,new ShellMusic(),1,x_spawn,y_spawn); ShellFlute = true;}
			
			if((index >= 10 && index <= 20) && checktile == 1){spawnDrop(60,new Seaweed(),1,x_spawn,y_spawn);}
			if((index >= 30 && index <= 40) && checktile == 1){spawnDrop(61,new SeaShell(),1,x_spawn,y_spawn);}
			if(checktile == 2 && (x_spawn > 150 && x_spawn < room_width -150) && (y_spawn > 150 && y_spawn < room_height -150) && place_empty(x_spawn,y_spawn)){
			
				
			

				///show_debug_message(index);
				//if(index >= 100 && index <= 300){instance_create_layer(x_spawn,y_spawn, "Instances_Underground", objUnderground_Stone);}
				if(index >= 750){instance_create_layer(x_spawn,y_spawn, "Instances", objTree);}
				if(index <= 740 && index >= 700){instance_create_layer(x_spawn,y_spawn, "Instances", objTreeSmol);}
				if(index <= 690 && index >= 600){instance_create_layer(x_spawn,y_spawn, "Instances", objGrass);}

				if(index <= 590 && index >= 580){instance_create_layer(x_spawn,y_spawn, "Instances", objRock);}
				if(index <= 579 && index >= 560){instance_create_layer(x_spawn,y_spawn, "Instances", objFlowers);}
				if(index <= 14 && index >= 11){instance_create_layer(x_spawn,y_spawn, "Instances", objBush);}
				if(index <= 17 && index >= 15){instance_create_layer(x_spawn,y_spawn, "Instances", objBerryBush);}
				if(index <= 23 && index >= 22){instance_create_layer(x_spawn,y_spawn, "Instances", objTreeHive);}
				if(index <= 26 && index >= 25){instance_create_layer(x_spawn,y_spawn, "Instances", objTreeHiveFull);}
				if(index == 15){instance_create_layer(x_spawn,y_spawn, "Instances", objRabbit);}
				if(index == 11){instance_create_layer(x_spawn,y_spawn, "Instances", objwolf);}
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
		audio_play_sound(musOverworld_Clear, 1, true);
		ds_grid_destroy(global.world);
		
		//var lay_id = layer_get_id("Instances_Underground");
		//instance_deactivate_layer(lay_id);
		//layer_set_visible(lay_id, false)
		
		
		global.unlocked = ds_map_create();
		ds_map_add(global.unlocked,5,0) //Cooked Meat
		ds_map_add(global.unlocked,7,0) //Rope
		ds_map_add(global.unlocked,8,0) //FireStarter
		ds_map_add(global.unlocked,9,0) //WorkStation
		ds_map_add(global.unlocked,10,0) //StoneAxe
		ds_map_add(global.unlocked,12,0) //GrassSeed
		ds_map_add(global.unlocked,14,0) //FriedMush
		ds_map_add(global.unlocked,18,0) //StoneSpade
		ds_map_add(global.unlocked,21,0) //RawClay
		ds_map_add(global.unlocked,22,0) //StonePick
		ds_map_add(global.unlocked,23,0) //UnFiredBowl
		ds_map_add(global.unlocked,24,0) //RedBowl
		ds_map_add(global.unlocked,25,0) //SaltWater
		ds_map_add(global.unlocked,26,0) //PureWater
		ds_map_add(global.unlocked,27,0) //UnfiredPot
		ds_map_add(global.unlocked,28,0) //ClayPot
		ds_map_add(global.unlocked,29,0) //WoodenChest
		ds_map_add(global.unlocked,30,0) //GrassBed
		ds_map_add(global.unlocked,31,0) //FishingRod
		ds_map_add(global.unlocked,32,0) //SmallFish
		ds_map_add(global.unlocked,33,0) //AverageFish
		ds_map_add(global.unlocked,34,0) //LargeFish
		ds_map_add(global.unlocked,35,0) //FriedFish
		ds_map_add(global.unlocked,36,0) //WoodenFence
		ds_map_add(global.unlocked,37,0) //FenceDoor
		ds_map_add(global.unlocked,38,0) //Kiln
		ds_map_add(global.unlocked,42,0) //DryingRack
		ds_map_add(global.unlocked,44,0) //FishSoup
		ds_map_add(global.unlocked,45,0) //SchroomSoup
		ds_map_add(global.unlocked,46,0) //StoneHoe
		ds_map_add(global.unlocked,48,0) //Spear
		ds_map_add(global.unlocked,49,0) //UnFiredBrick
		ds_map_add(global.unlocked,50,0) //Brick
		ds_map_add(global.unlocked,51,0) //WoodenBowl
		ds_map_add(global.unlocked,52,0) //WoodenBowlWater
		ds_map_add(global.unlocked,54,0) //FieldStove
		ds_map_add(global.unlocked,55,0) //Bowl of Fat
		ds_map_add(global.unlocked,56,0) //Bowl of Oil
		ds_map_add(global.unlocked,57,0) //Grilled Meat
		ds_map_add(global.unlocked,58,0) //Grilled Fish
		ds_map_add(global.unlocked,59,0) //TreeBark
		ds_map_add(global.unlocked,63,0) //BeastTunic
		ds_map_add(global.unlocked,64,0) //BeastHat
		ds_map_add(global.unlocked,65,0) //Ash
		ds_map_add(global.unlocked,67,0) //JuiceClay
		ds_map_add(global.unlocked,68,0) //JuiceWood
		ds_map_add(global.unlocked,69,0) //PrePit
		ds_map_add(global.unlocked,70,0) //BoneNeedle
		ds_map_add(global.unlocked,71,0) //BeeBox
		ds_map_add(global.unlocked,72,0) //BoneNeedle
		ds_map_add(global.unlocked,73,0) //Torch
	
		ds_map_add(global.unlocked,80,0) //HibP
		ds_map_add(global.unlocked,81,0) //HibY
		ds_map_add(global.unlocked,82,0) //HibPu
		ds_map_add(global.unlocked,83,0) //HibO
		ds_map_add(global.unlocked,84,0) //HibR
		ds_map_add(global.unlocked,85,0) //Basket
		audio_master_gain(1);
		
		global.weather = 0;
		global.WearTunic = false;
		global.WearHat = false;
		global.defence = 0;
		global.TreeCheck = 0;
		global.GrassCheck = 0;
		global.RockCheck = 0;
	}

}
else if(global.startType == 1){
	if(!done){
		
		global.defence = 0;
		global.WearTunic = false;
		global.WearHat = false;
		
		
		LoadGame();
		
		if(global.TreeCheck > 0 && global.GrassCheck > 0)
		{
			instance_destroy(objHelp);
		}
		
		
		global.equip = objInventory.inventory[|0];
		switch(global.weather)
		{
			case 0: //Clear
				if(instance_exists(objRainGen)){instance_destroy(objRainGen)}
				if(instance_exists(objStormGen)){instance_destroy(objStormGen)}
				audio_play_sound(musOverworld_Clear, 1, true);
			break;
			case 1: //Rain
				if(instance_exists(objStormGen)){instance_destroy(objStormGen)}
				else{instance_create_layer(0,0, "Instances", objRainGen);}
				audio_play_sound(musOverworld_Rain, 1, true);
			break;
			case 2: //Storm
				if(instance_exists(objRainGen)){instance_destroy(objRainGen)}
				else{instance_create_layer(0,0, "Instances", objStormGen);}
				audio_play_sound(musOverworld_Storm, 1, true);
			break;	
		}
	}
	done = true;
	
}

global.startType = -1;