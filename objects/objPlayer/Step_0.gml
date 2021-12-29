/// @description Insert description here
// You can write your code in this editor

KeyGet();

if(keyboard_check_pressed(ord("G")))
{

	addInventory(48,1,new Spear(),objInventory.inventory);

}


if(keyboard_check_pressed(ord("R")))
{

	if(instance_exists(objRainGen))
	{
		instance_destroy(objRainGen);
	}
	else{instance_create_layer(0,0, "Instances", objRainGen);}

	
}

if(keyboard_check_pressed(ord("S")))
{

	if(instance_exists(objStormGen))
	{
		instance_destroy(objStormGen);
	}
	else{instance_create_layer(0,0, "Instances", objStormGen);}

	
}

if(hurtFrames > 0)
{
	global.inv = true;
	hurtFrames--;
}else
{
	global.inv = false;
}


global.inFront_x = round((objPlayer.x+lengthdir_x(TILE_W*objPlayer.spd,objPlayer.move_dir)) / 16) * 16;
global.inFront_y = round((objPlayer.y+lengthdir_y(TILE_H*objPlayer.spd,objPlayer.move_dir)) / 16) * 16;


global.inFront_x_More = round((objPlayer.x+lengthdir_x(TILE_W*2*objPlayer.spd,objPlayer.move_dir)) / 16) * 16;
global.inFront_y_More = round((objPlayer.y+lengthdir_y(TILE_H*2*objPlayer.spd,objPlayer.move_dir)) / 16) * 16;

if(keyboard_check_pressed(Start_Key) && global.gamemode != 1  && global.gamemode != 4 && global.gamemode != 3  && global.gamemode != 5 && global.gamemode != 6 && global.gamemode != 7)
{
	
	if(global.gamemode != 2 ){global.gamemode = 2}else{global.gamemode = 0}
}

if(keyboard_check_pressed(B_Key) && global.gamemode != 2  && global.gamemode != 4 && global.gamemode != 3)
{
	//objCrafting.selected = objCrafting.recipes[| 0];
	if(global.gamemode != 5){global.gamemode = 5}else{global.gamemode = 0}
	instance_create_layer(0,0, "Instances",objOverOptions);
	
}





if(global.gamemode == 0 && global.status.name != "Par"){


	if(keyboard_check_pressed(Select_Key) && keyboard_check(ord("P")) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && canHit = true && ds_list_size(objInventory.inventory) > 0)
	{
		if(global.equip.amount > 0) //Drop
		{

			if(place_empty(global.inFront_x,global.inFront_y) || place_meeting(global.inFront_x,global.inFront_y,objDryingRack) || place_meeting(global.inFront_x,global.inFront_y,objBetterSoil))// so shit's no stuck in trees for something
			{
				canHit = false;
				alarm[0] = global.equip.hitlag;

				with(instance_create_layer(global.inFront_x,global.inFront_y, "Instances", objItem))
				{
					ID = global.equip.image_id;
					NUM = 1;
					DROP = global.equip;
				
				}
				removeInventory(global.equip.image_id,1,objInventory.inventory);
	
				if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount >= 1)
				{
				global.equip = new PlaceHolder();
				
			}
		
				
			}
			

		}
	}
	
	
	if(keyboard_check_pressed(Select_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && canHit = true && ds_list_size(objInventory.inventory) > 0)
	{
		if(global.equip.amount > 0) //Drop
		{

			if(place_empty(global.inFront_x,global.inFront_y) || DropCheckerPot() || place_meeting(global.inFront_x,global.inFront_y,objDryingRack) || place_meeting(global.inFront_x,global.inFront_y,objBetterSoil))// so shit's no stuck in trees for something
			{
				canHit = false;
				alarm[0] = global.equip.hitlag;

				with(instance_create_layer(global.inFront_x,global.inFront_y, "Instances", objItem))
				{
					ID = global.equip.image_id;
					NUM = global.equip.amount;
					DROP = global.equip;
				
				}
				removeInventory(global.equip.image_id,global.equip.amount,objInventory.inventory);
	
				if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount >= 1)
				{
					global.equip = new PlaceHolder();
				
				}
		
				
			}
			

		}
	}


	if(keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && canHit = true && ds_list_size(objInventory.inventory) > 0)
	{
		/*
		if(global.equip.type == 0 && global.equip.amount > 0) // Item
		{
			if(place_empty(inFront_x,inFront_y))// so shit's no stuck in trees for something
			{
				canHit = false;
				alarm[0] = global.equip.hitlag;

				with(instance_create_layer(inFront_x,inFront_y, "Instances", objItem))
				{
					ID = global.equip.image_id;
					NUM = global.equip.amount + 1;
					DROP = global.equip;
				
				}
				
				removeInventory(global.equip.image_id,global.equip.amount,objInventory.inventory);
				
			}
			
		}
		*/
		if(global.equip.type == 1 && global.equip.amount > 0 && canHit) //Tool
		{

			canHit = false;
			instance_create_layer(global.inFront_x + 8,global.inFront_y + 8,"Instances",global.equip.tool_id);
			if(global.weather == 1 || global.weather == 2)
			{
				if(global.FATIGUE + 2 > 100){global.FATIGUE = 100;}else{global.FATIGUE += 2;}
			}else
			{
				if(global.FATIGUE + 1 > 100){global.FATIGUE = 100;}else{global.FATIGUE += 1;}
			}
			
			alarm[0] = global.equip.hitlag;

		}
		
		if(global.equip.type == 2 && ds_list_find_index(objInventory.inventory,global.equip) && (place_empty(global.inFront_x,global.inFront_y)  || place_meeting(global.inFront_x,global.inFront_y,objBetterSoil)) ) //Placeable
		{
			
			instance_create_layer(global.inFront_x,global.inFront_y,"Instances",global.equip.Spawn);
			
			removeInventory(global.equip.image_id,1,objInventory.inventory);
			
			alarm[0] = global.equip.hitlag;
			if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount >= 1)
			{
				global.equip = new PlaceHolder();
				
			}
			
			
		}		
		
		if(global.equip.type == 3 && global.equip.amount > 0) //FATIGUE
		{

			if(global.FATIGUE - global.equip.fatigueFill < 0){global.FATIGUE = 0;}else{global.FATIGUE -= global.equip.fatigueFill;}
			if(global.HUNGER + global.equip.hungerFill > 100){global.HUNGER = 100;}else{global.HUNGER += global.equip.hungerFill;}
			if(global.WATER + global.equip.waterFill > 100){global.WATER = 100;}else{global.WATER += global.equip.waterFill;}
			
			
			global.status = global.equip.effect;
			GiveItem(global.equip);
			removeInventory(global.equip.image_id,1,objInventory.inventory);
			alarm[0] = global.equip.hitlag;
			if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount <= 1)
			{
				global.equip = new PlaceHolder();
				
			}
		}
	}

	

	if(xTarg == x and yTarg == y){
		move_xinput = 0;
		move_yinput = 0;
 
		for ( var i = 0; i < array_length(movekeys); i++){
			
			var this_key = movekeys[i];
			if keyboard_check(this_key) {
			    var this_angle = i*90;
				steps++;
				totalsteps++;
			    move_xinput += lengthdir_x(1, this_angle);
			    move_yinput += lengthdir_y(1, this_angle);
				if(global.status.name == "Woozy")
				{
					move_xinput = -move_xinput;
					move_yinput = -move_yinput;
				}
			}
		}
	
		if(point_distance(0,0,move_xinput,move_yinput) > 0){
		
			move_dir = point_direction(0,0,move_xinput,move_yinput);
			if(global.stepsSincePressed > 4)
			{
				xTarg = round((x+lengthdir_x(TILE_W,move_dir)) / 16) * 16
				yTarg = round((y+lengthdir_y(TILE_H,move_dir)) / 16) * 16
			}
		

		
			
			if(place_meeting(xTarg,yTarg,objColl) && !global.GoThrough){
				if(!place_meeting(xTarg,y,objColl)){yTarg = y}
				else if(!place_meeting(x,yTarg,objColl)){xTarg = x}
				else{xTarg = x; yTarg = y}
			}

		}
	}else{
		x += spd * sign(xTarg-x)
		y += spd * sign(yTarg-y)
		frame += 0.1
		
	}
	
}

if(!global.death){depth = room_height - y}

if(!attackFrame)
{
	frame = frame mod 2
	dir = move_dir / 45
	
	image_index = (dir*2) + floor(frame)
}


