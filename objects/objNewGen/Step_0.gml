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
				if(index == 15){instance_create_layer(x_spawn,y_spawn, "Instances", objRabbit);}
				if(index >= 10 && index <= 11){instance_create_layer(x_spawn,y_spawn, "Instances", objwolf);}
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
		
		
		global.unlocked = ds_map_create();
		ds_map_add(global.unlocked,5,0) //Cooked Meat
		ds_map_add(global.unlocked,7,0) //Rope
		ds_map_add(global.unlocked,8,5) //FireStarter
		ds_map_add(global.unlocked,9,10) //WorkStation
		ds_map_add(global.unlocked,10,0) //StoneAxe
		ds_map_add(global.unlocked,12,10) //GrassSeed
		ds_map_add(global.unlocked,14,0) //FriedMush
		ds_map_add(global.unlocked,18,0) //StoneSpade
		ds_map_add(global.unlocked,21,0) //RawClay
		ds_map_add(global.unlocked,22,0) //StonePick
		ds_map_add(global.unlocked,23,15) //UnFiredBowl
		ds_map_add(global.unlocked,24,12) //RedBowl
		ds_map_add(global.unlocked,25,0) //SaltWater
		ds_map_add(global.unlocked,26,0) //PureWater
		ds_map_add(global.unlocked,27,5) //UnfiredPot
		ds_map_add(global.unlocked,28,10) //ClayPot
		ds_map_add(global.unlocked,29,15) //WoodenChest
		ds_map_add(global.unlocked,30,20) //GrassBed
		ds_map_add(global.unlocked,31,0) //FishingRod
		ds_map_add(global.unlocked,32,0) //SmallFish
		ds_map_add(global.unlocked,33,0) //AverageFish
		ds_map_add(global.unlocked,34,0) //LargeFish
		ds_map_add(global.unlocked,35,0) //FriedFish
		ds_map_add(global.unlocked,36,5) //WoodenFence
		ds_map_add(global.unlocked,37,5) //FenceDoor
		ds_map_add(global.unlocked,38,100) //Kiln
		ds_map_add(global.unlocked,42,25) //DryingRack
		ds_map_add(global.unlocked,44,0) //FishSoup
		ds_map_add(global.unlocked,45,0) //SchroomSoup
		ds_map_add(global.unlocked,46,0) //StoneHoe
		ds_map_add(global.unlocked,48,20) //Spear
		ds_map_add(global.unlocked,49,15) //UnFiredBrick
		ds_map_add(global.unlocked,50,10) //Brick
		ds_map_add(global.unlocked,51,5) //WoodenBowl
		ds_map_add(global.unlocked,52,0) //WoodenBowlWater
		ds_map_add(global.unlocked,54,30) //FieldStove
		ds_map_add(global.unlocked,55,5) //Bowl of Fat
		ds_map_add(global.unlocked,56,5) //Bowl of Oil
		ds_map_add(global.unlocked,57,0) //Grilled Meat
		ds_map_add(global.unlocked,58,0) //Grilled Fish
		audio_master_gain(1);
		
		global.weather = 0;
	}

}
else if(global.startType == 1){
	if(!done){
		
		LoadGame();
		global.equip = objInventory.inventory[|0];
		switch(global.weather)
		{
			case 0: //Clear
				if(instance_exists(objRainGen)){instance_destroy(objRainGen)}
				if(instance_exists(objStormGen)){instance_destroy(objStormGen)}
			break;
			case 1: //Rain
				if(instance_exists(objStormGen)){instance_destroy(objStormGen)}
				else{instance_create_layer(0,0, "Instances", objRainGen);}
			break;
			case 2: //Storm
				if(instance_exists(objRainGen)){instance_destroy(objRainGen)}
				else{instance_create_layer(0,0, "Instances", objStormGen);}
			break;	
		}
	}
	done = true;
	audio_play_sound(musTest, 1, true);
}

global.startType = -1;