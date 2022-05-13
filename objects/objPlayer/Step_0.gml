/// @description Insert description here
// You can write your code in this editor

KeyGet();


if(keyboard_check_pressed(ord("I")))
{

	if(y >= 4320)
	{
		global.underground = false;
		y = y - 4320;
	}
	else
	{
		global.underground = true;
		y = y + 4320;

	}
	xTarg = x; 
	yTarg = y;
	global.inFront_x = round((objPlayer.x+lengthdir_x(TILE_W*objPlayer.spd,objPlayer.move_dir)) / 16) * 16;
	global.inFront_y = round((objPlayer.y+lengthdir_y(TILE_H*objPlayer.spd,objPlayer.move_dir)) / 16) * 16;
	
}



if(keyboard_check_pressed(ord("P")))
{

	instance_create_layer(0,0, "Instances", objDebug);
	global.gamemode = 99;
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

if(keyboard_check_pressed(Start_Key) && ds_list_size(objInventory.inventory) > 0 && global.gamemode != 1  && global.gamemode != 4 && global.gamemode != 3  && global.gamemode != 5 && global.gamemode != 6 && global.gamemode != 7)
{
	
	if(global.gamemode != 2)
	{
		global.gamemode = 2
		audio_play_sound(sfxMoveOpen,10,false);
		
	}else
	{
		audio_play_sound(sfxMoveClose,10,false);
		global.gamemode = 0
	}
}

if(!position_meeting(global.inFront_x, global.inFront_y,objBasket) && !position_meeting(global.inFront_x, global.inFront_y,objWoodenChest) && !position_meeting(global.inFront_x, global.inFront_y,objGrassBed) && (keyboard_check_pressed(B_Key) || keyboard_check_pressed(B_Key2)) && global.gamemode != 2  && global.gamemode != 4 && global.gamemode != 3)
{
	//objCrafting.selected = objCrafting.recipes[| 0];
	if(global.gamemode != 5){global.gamemode = 5}else{global.gamemode = 0}
	instance_create_layer(0,0, "Instances",objOverOptions);
	
}





if(global.gamemode == 0 && global.status.name != "Par"){


	if(keyboard_check_pressed(Select_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && ds_list_size(objInventory.inventory) > 0)
	{
		if(global.equip.amount > 0) //Drop
		{
			if(checkIfSame())
			{
				with(instance_position(global.inFront_x,global.inFront_y,objItem))
				{				
					NUM++;
				}
				removeInventory(global.equip.image_id,1,objInventory.inventory);
	
				if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount >= 1)
				{
					global.equip = new PlaceHolder();
				
				}
				
			}

			else if(place_empty(global.inFront_x,global.inFront_y) || DropCheckerPot() || DropCheckerDryingRack() || place_meeting(global.inFront_x,global.inFront_y,objBetterSoil) || place_meeting(global.inFront_x,global.inFront_y,objBetterSand))// so shit's no stuck in trees for something
			{

				
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
	
	


	if((keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && canHit = true && ds_list_size(objInventory.inventory) > 0)
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

			
			instance_create_layer(global.inFront_x + 8,global.inFront_y + 8,"Instances",ToolChecker(global.equip.tool_id));
			canHit = false;
			if(global.weather == 1 || global.weather == 2)
			{
				if(global.FATIGUE + 2 > 100){global.FATIGUE = 100;}else{global.FATIGUE += 2;}
			}else
			{
				if(global.FATIGUE + 1 > 100){global.FATIGUE = 100;}else{global.FATIGUE += 1;}
			}
			
			if(global.equip.image_id != 2 && global.equip.image_id != 24 && global.equip.image_id != 51 ){global.equip.dura--;}
			if(global.equip.dura <= 0)
			{
				wobbling = true;
				audio_play_sound(sfxToolBreak,10,false);
				global.equip.dura = global.equip.dura_max;
				removeInventory(global.equip.image_id,1,objInventory.inventory);
				if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount >= 1)
				{
					global.equip = new PlaceHolder();
				
				}
			}
			if(global.equip.hitlag == 0)
			{
				alarm[0] = 50;

			}
			else
			{
				alarm[0] = global.equip.hitlag;
			}
			
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
		
		if(global.equip.type == 4) //Clothing
		{
			pitchRandomizer(sfxEquip, 10, false);
			if(global.equip.image_id == 63) // BeastTunic
			{	
				if(!global.WearTunic)
				{
					global.equip.equiped = true;
					with(instance_create_layer(room_width,room_height,"Instances",objBeastTunic))
					{
						val = global.equip;
					}
					global.WearTunic = true;
				}
				else
				{
					global.equip.equiped = false;
					instance_destroy(objBeastTunic); global.WearTunic = false;
				}
			
			}
		}
		
		if(global.equip.type == 5) //Hats
		{
			pitchRandomizer(sfxEquip, 10, false);
			if(global.equip.image_id == 64) // BeastHat
			{	
				if(!global.WearHat)
				{
					global.equip.equiped = true;
					with(instance_create_layer(room_width,room_height,"Instances",objBeastHat))
					{
						val = global.equip;
					}
					global.WearHat = true;
				}
				else
				{
					global.equip.equiped = false;
					instance_destroy(objBeastHat); global.WearHat = false;
				}
			
			}
		}
	}

	

	if(xTarg == x and yTarg == y){
		move_xinput = 0;
		move_yinput = 0;
 
		for ( var i = 0; i < array_length(movekeys); i++){
			
			var this_key = movekeys[i];
			var this_key2 = movekeys2[i];
			if keyboard_check(this_key) || keyboard_check(this_key2) {
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
			if(global.stepsSincePressed > 2)
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


