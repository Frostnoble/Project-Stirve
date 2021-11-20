/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.smashingPow;
	wobbling = true;
}



if(HP <= 0)
{
	
	pitchRandomizer(sfxBreak,10,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 28;
	NUM = 1;
	DROP = new ClayPot();
	}

	instance_destroy();
}


item = instance_position(x,y,objItem);

if(currenthold == 0){image_index = 0;}

if (item != noone)
{
	if(currenthold == 0)
	{
		if(item.DROP.image_id == 26) //PureWater Clay
		{
			if(currenthold < maxhold){currenthold++;}
			image_index = 2;
			liquid = "PureWater";
			addInventory(24,item.DROP.amount,new ClayBowl(),objInventory.inventory)
			show_debug_message("Splash Pure")
			global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
		
		}else if(item.DROP.image_id == 25)// SaltWater Clay
		{
			if(currenthold < maxhold){currenthold++;}
			image_index = 1;
			liquid = "SaltWater";
			addInventory(24,item.DROP.amount,new ClayBowl(),objInventory.inventory)
			show_debug_message("Splash Salt")
			global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
		}
	
		instance_destroy(item);
	}
	else
	{
		if(liquid == "PureWater")
		{
		
		
		}
		else if(liquid == "SaltWater")
		{
		
		
		}
	
	}
	
}
