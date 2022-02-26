/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(!stunned && place_meeting(x,y,ToolChecker(global.equip.tool_id)) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.smashingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
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

if((global.weather == 1 || global.weather == 2) && currenthold == 0)
{
	image_index = 2;
	liquid = "PureWater";
	currenthold = maxhold;
}


item = instance_position(x,y,objItem);

if(currenthold == 0){image_index = 0;}

if (item != noone)
{
	if(currenthold == 0)
	{
		switch(item.DROP.image_id)
		{
			case 26: //PureWater Clay
			
				if(currenthold < maxhold){currenthold++;}
				image_index = 2;
				liquid = "PureWater";
				addInventory(24,1,new ClayBowl(),objInventory.inventory)

				global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
			break;
			
			case 25: // SaltWater Clay
			
				if(currenthold < maxhold){currenthold++;}
				image_index = 1;
				liquid = "SaltWater";
				addInventory(24,1,new ClayBowl(),objInventory.inventory)

				global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
			break;
			
			case 53: //PureWater Wood
			
				if(currenthold < maxhold){currenthold++;}
				image_index = 2;
				liquid = "PureWater";
				addInventory(51,1,new WoodenBowl(),objInventory.inventory)
				
				global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
			break;
			
			case 52: // SaltWater Wood
			
				if(currenthold < maxhold){currenthold++;}
				image_index = 1;
				liquid = "SaltWater";
				addInventory(51,1,new WoodenBowl(),objInventory.inventory)

				global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
			break;
			
			case 55: //Fat Clay
			
				if(currenthold < maxhold){currenthold++;}
				image_index = 3;
				liquid = "AnimalFat";
				addInventory(24,1,new ClayBowl(),objInventory.inventory)

				global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
			break;
			
			case 56: //Oil Clay
			
				if(currenthold < maxhold){currenthold++;}
				image_index = 4;
				liquid = "Oil";
				addInventory(24,1,new ClayBowl(),objInventory.inventory)

				global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
			break;
			
			case 67: //Juice Wood
			
				if(currenthold < maxhold){currenthold++;}
				image_index = 5;
				liquid = "Juice";
				addInventory(51,1,new WoodenBowl(),objInventory.inventory)
				
				global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
			break;
			
			case 68: // Juice Clay
			
				if(currenthold < maxhold){currenthold++;}
				image_index = 5;
				liquid = "Juice";
				addInventory(24,1,new ClayBowl(),objInventory.inventory)

				global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
			break;
			
			case 75: //Pink
				with(instance_create_layer(x,y, "Instances", objFlowerPot))
				{
					image_index = 0;
				}
				

			break;

			case 76: //Yellow
				with(instance_create_layer(x,y, "Instances", objFlowerPot))
				{
					image_index = 1;
					
				}
				

			break;

			case 77: //Purple
				with(instance_create_layer(x,y, "Instances", objFlowerPot))
				{
					image_index = 2;
					
				}
				

			break;
		
			case 78: //Orange
				with(instance_create_layer(x,y, "Instances", objFlowerPot))
				{
					image_index = 3;
				}
				

			break;
		
			case 79: //Red
				with(instance_create_layer(x,y, "Instances", objFlowerPot))
				{
					image_index = 4;
				}
				

			break;
		}

	
		instance_destroy(item);
	}
	else if(currenthold != maxhold)
	{
		if(liquid == "SaltWater")
		{
			switch(item.DROP.image_id)
			{
	 			case 25: // SaltWater Clay
			
					currenthold++;
					addInventory(24,item.DROP.amount,new ClayBowl(),objInventory.inventory)
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
					instance_destroy(item);
				break;
				
				case 52: // SaltWater Wood
			
					currenthold++;
					addInventory(51,item.DROP.amount,new WoodenBowl(),objInventory.inventory)
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
					instance_destroy(item);
				break;
				
				default:
					item.x = objPlayer.x;
					item.y = objPlayer.y;
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
				break;

			}
		}
		if(liquid == "PureWater")
		{
			switch(item.DROP.image_id)
			{
				case 26: //PureWater Clay
			
					currenthold++;
					addInventory(24,1,new ClayBowl(),objInventory.inventory)
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
					instance_destroy(item);
				break;
				
				case 53: //PureWater Wood
			
					currenthold++;
					addInventory(51,1,new WoodenBowl(),objInventory.inventory)
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
					instance_destroy(item);
				break;
				
				default:
					item.x = objPlayer.x;
					item.y = objPlayer.y;
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
				break;

			}
		}
		if(liquid == "AnimalFat")
		{
			switch(item.DROP.image_id)
			{
				case 55: //Fat Clay
			
					currenthold++;
					addInventory(24,1,new ClayBowl(),objInventory.inventory)
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
					instance_destroy(item);
				break;
				
				default:
					item.x = objPlayer.x;
					item.y = objPlayer.y;
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
				break;				

			}
		}
		if(liquid == "Oil")
		{
			switch(item.DROP.image_id)
			{
				case 56: //Oil Clay
			
					currenthold++;
					addInventory(24,1,new ClayBowl(),objInventory.inventory)
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
					instance_destroy(item);
				break;
				
				default:
					item.x = objPlayer.x;
					item.y = objPlayer.y;
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
				break;

			}	
			
		}
		if(liquid == "Juice")
		{
			switch(item.DROP.image_id)
			{
				case 68: //Juice Clay
			
					currenthold++;
					addInventory(24,1,new ClayBowl(),objInventory.inventory)
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
					instance_destroy(item);
				break;
				
				case 67: //Juice Wood
			
					currenthold++;
					addInventory(51,1,new WoodenBowl(),objInventory.inventory)
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
					instance_destroy(item);
				break;
				
				default:
					item.x = objPlayer.x;
					item.y = objPlayer.y;
					global.equip = objInventory.inventory[|ds_list_size(objInventory.inventory)-1];
				break;

			}
		}
	
		
	}

	
}
