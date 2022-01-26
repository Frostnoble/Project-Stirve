/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(!stunned && place_meeting(x,y,global.equip.tool_id) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.smashingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
}

if((global.inFront_x == x && global.inFront_y == y) && (keyboard_check_pressed(B_Key) || keyboard_check_pressed(B_Key2)))
{
	if(global.gamemode != 4 )
	{
		audio_play_sound(sfxChest,10,false);
		global.gamemode = 4;
	}
	else
	{
		audio_play_sound(sfxChest,10,false);
		global.gamemode = 0;
		if(!ds_list_find_index(objInventory.inventory,global.equip) && global.equip.amount >= 1)
		{
			global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
			
		}	
	}
	if(modetype){storage_selector = objInventory.inventory[| 0];}
	if(!modetype){storage_selector = storage[| 0];}
	
	if(image_index != 1 ){image_index = 1}else{image_index = 0}

}

if(HP <= 0)
{
	
	pitchRandomizer(sfxBreak,10,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 29;
	NUM = 1;
	DROP = new WoodenChest();
	}

	instance_destroy();
}


if(global.gamemode == 4 && global.inFront_x == x && global.inFront_y == y){

	if(draw_x > (144+5))
	{
		draw_x -= 2.5
	}else{
		draw_x = 144
	}
	
	if(modetype)
	{

		var i = ds_list_find_index(objInventory.inventory, storage_selector);
		var size = ds_list_size(objInventory.inventory);

		if((keyboard_check_pressed(RIGHT_Key) || keyboard_check_pressed(RIGHT_Key2)) && ds_list_find_value(objInventory.inventory, i+1)){

		storage_selector = objInventory.inventory[| i+1];
		audio_play_sound(sfxMoveSelect,10,false);

		}
		if((keyboard_check_pressed(LEFT_Key) || keyboard_check_pressed(LEFT_Key2)) && ds_list_find_value(objInventory.inventory, i-1)){

		storage_selector = objInventory.inventory[| i-1];
		audio_play_sound(sfxMoveSelect,10,false);

		}
		if((keyboard_check_pressed(DOWN_Key) || keyboard_check_pressed(DOWN_Key2)) && ds_list_find_value(objInventory.inventory, i+3)){

		storage_selector = objInventory.inventory[| i+3];
		audio_play_sound(sfxMoveSelect,10,false);

		}
		if((keyboard_check_pressed(UP_Key) || keyboard_check_pressed(UP_Key2)) && ds_list_find_value(objInventory.inventory, i-3)){

		storage_selector = objInventory.inventory[| i-3];
		audio_play_sound(sfxMoveSelect,10,false);

		}
		//show_debug_message(storage_selector)
		if((keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && (ds_list_size(storage) < 9 || checkInventory(storage_selector,storage)) && ds_list_size(storage) >= 0)
		{

			NUM = storage_selector.amount;
			if (storage_selector.type == 1)
			{
				predura = storage_selector.dura;
				
			//show_debug_message(string(predura) + " IN INVENTORY")
			removeInventory(storage_selector.image_id,storage_selector.amount,objInventory.inventory);
			
			addInventory(storage_selector.image_id,storage_selector.amount * NUM,NewItem(storage_selector.image_id),storage,predura);
			//show_debug_message(string(storage_selector.dura) + " IN TO STORAGE")			
			
			}else
			{
			
			//show_debug_message(string(predura) + " IN INVENTORY")
			removeInventory(storage_selector.image_id,storage_selector.amount,objInventory.inventory);
			
			addInventory(storage_selector.image_id,storage_selector.amount * NUM,NewItem(storage_selector.image_id),storage);
			//show_debug_message(string(storage_selector.dura) + " IN TO STORAGE")			
			
			}

			storage_selector = objInventory.inventory[| 0];
			
			
			

		}
	}
	else if(!modetype)
	{
		var i = ds_list_find_index(storage, storage_selector);
		var size = ds_list_size(storage);

		if((keyboard_check_pressed(RIGHT_Key) || keyboard_check_pressed(RIGHT_Key2)) && ds_list_find_value(storage, i+1)){

		storage_selector = storage[| i+1];
		audio_play_sound(sfxMoveSelect,10,false);

		}
		if((keyboard_check_pressed(LEFT_Key) || keyboard_check_pressed(LEFT_Key2)) && ds_list_find_value(storage, i-1)){

		storage_selector = storage[| i-1];
		audio_play_sound(sfxMoveSelect,10,false);

		}
		if((keyboard_check_pressed(DOWN_Key) || keyboard_check_pressed(DOWN_Key2)) && ds_list_find_value(storage, i+3)){

		storage_selector = storage[| i+3];
		audio_play_sound(sfxMoveSelect,10,false);

		}
		if((keyboard_check_pressed(UP_Key) || keyboard_check_pressed(UP_Key2)) && ds_list_find_value(storage, i-3)){

		storage_selector = storage[| i-3];
		audio_play_sound(sfxMoveSelect,10,false);

		}
		
		
		
		if((keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && (ds_list_size(objInventory.inventory) < 9 || checkInventory(storage_selector,objInventory.inventory)) && ds_list_size(objInventory.inventory) >= 0)
		{
			
			NUM = storage_selector.amount;
			
			if (storage_selector.type == 1)
			{
				predura = storage_selector.dura;
				removeInventory(storage_selector.image_id,storage_selector.amount,storage);

				addInventory(storage_selector.image_id,storage_selector.amount * NUM,NewItem(storage_selector.image_id),objInventory.inventory, predura);
				
				
			}else
			{
				//show_debug_message(dura)
				removeInventory(storage_selector.image_id,storage_selector.amount,storage);

				//if(storage_selector.type == 1){storage_selector.dura = dura;}
				addInventory(storage_selector.image_id,storage_selector.amount * NUM,NewItem(storage_selector.image_id),objInventory.inventory);
				//show_debug_message(string(storage_selector.dura) + " OUT OF STORAGE")
			}
			//show_debug_message(string(predura) + " IN STORAGE")

			
			storage_selector = storage[| 0];
			

			
		}
	}

	//Switch to Inventroy
	if(!modetype && keyboard_check_pressed(Start_Key) && ds_list_size(objInventory.inventory) > 0)
	{
		modetype = !modetype;
		storage_selector = objInventory.inventory[| 0];
		
	}
	//Switch to Storage
	else if(modetype && keyboard_check_pressed(Start_Key) && ds_list_size(storage) > 0)
	{
		modetype = !modetype;
		storage_selector = storage[| 0];
	}
	
	if(modetype && ds_list_size(objInventory.inventory) == 0)
	{
		modetype = !modetype;
		storage_selector = storage[| 0];
	}
	if(!modetype && ds_list_size(storage) == 0)
	{
		modetype = !modetype;
		storage_selector = objInventory.inventory[| 0];
	}
	
	
	

}
else
{
image_index = 0;
}
