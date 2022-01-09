/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.smashingPow;
	wobbling = true;
}

if((global.inFront_x == x && global.inFront_y == y) && keyboard_check_pressed(B_Key))
{
	if(global.gamemode != 4 )
	{
		global.gamemode = 4;
	}
	else
	{
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

if(global.light_times == "Day")
{
	sprite_index = sprWoodenChest_Day;
}
else if(global.light_times == "Eve")
{
	sprite_index = sprWoodenChest_Eve;
}
else if(global.light_times == "Night")
{
	sprite_index = sprWoodenChest_Night;
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

		if(keyboard_check_pressed(vk_right) && ds_list_find_value(objInventory.inventory, i+1)){

		storage_selector = objInventory.inventory[| i+1];


		}
		if(keyboard_check_pressed(vk_left) && ds_list_find_value(objInventory.inventory, i-1)){

		storage_selector = objInventory.inventory[| i-1];


		}
		if(keyboard_check_pressed(vk_down) && ds_list_find_value(objInventory.inventory, i+3)){

		storage_selector = objInventory.inventory[| i+3];


		}
		if(keyboard_check_pressed(vk_up) && ds_list_find_value(objInventory.inventory, i-3)){

		storage_selector = objInventory.inventory[| i-3];


		}
		//show_debug_message(storage_selector)
		if(keyboard_check_pressed(A_Key) && (ds_list_size(storage) < 9 || checkInventory(storage_selector,storage)) && ds_list_size(storage) >= 0)
		{
			
			NUM = storage_selector.amount;

			removeInventory(storage_selector.image_id,storage_selector.amount,objInventory.inventory);


			addInventory(storage_selector.image_id,storage_selector.amount * NUM,storage_selector,storage);
			storage_selector = objInventory.inventory[| 0];
			

		}
	}
	else if(!modetype)
	{
		var i = ds_list_find_index(storage, storage_selector);
		var size = ds_list_size(storage);

		if(keyboard_check_pressed(vk_right) && ds_list_find_value(storage, i+1)){

		storage_selector = storage[| i+1];


		}
		if(keyboard_check_pressed(vk_left) && ds_list_find_value(storage, i-1)){

		storage_selector = storage[| i-1];


		}
		if(keyboard_check_pressed(vk_down) && ds_list_find_value(storage, i+3)){

		storage_selector = storage[| i+3];


		}
		if(keyboard_check_pressed(vk_up) && ds_list_find_value(storage, i-3)){

		storage_selector = storage[| i-3];


		}
		
		
		
		if(keyboard_check_pressed(A_Key) && (ds_list_size(objInventory.inventory) < 9 || checkInventory(storage_selector,objInventory.inventory)) && ds_list_size(objInventory.inventory) >= 0)
		{
			NUM = storage_selector.amount;
			removeInventory(storage_selector.image_id,storage_selector.amount,storage);

			
			addInventory(storage_selector.image_id,storage_selector.amount * NUM,storage_selector,objInventory.inventory);
			storage_selector = storage[| 0];
			

			
		}
	}

	if(keyboard_check_pressed(Start_Key))
	{
		modetype = !modetype;
		if(modetype){storage_selector = objInventory.inventory[| 0];}
		if(!modetype){storage_selector = storage[| 0];}
	}

}
