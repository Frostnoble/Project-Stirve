// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame()
{
	
	instance_activate_all();
	var _saveData = array_create(0);
	
	for(var i = 0; i < ds_list_size(objWorld.objectList); i += 1)
	{
		with(objWorld.objectList[|i])
		{
			var _saveEntity = 
			{
				type: 0,
				obj: object_get_name(object_index),
				x: x,
				y: y,
				depth: depth,
				image_index: image_index
			}
			array_push(_saveData, _saveEntity);
	
		}
	}
	
	
	
	var _saveEntity =
	{
		type: 1,//Status and time
		equip: global.equip,
		HEALTH: global.HEALTH,
		FATIGUE: global.FATIGUE,
		WATER: global.WATER,
		HUNGER: global.HUNGER,
		maxi: global.max,
		status: global.status,
		KP: global.KP,
		worldTime: global.worldTime,
		days: objTimeSystem.days,
		inventory: objInventory.inventory





	}
	array_push(_saveData, _saveEntity);
	/*
	for(var i = 0; i < ds_list_size(objInventory.inventory); i += 1)
	{
		var _saveEntity =
		{
			type: 2,//Inventory
			ID: i,
			NUM: objInventory.inventory[|i].amount,
			DROP: objInventory.inventory[|i]
		}
		array_push(_saveData, _saveEntity);
	}
	*/

	with(objItem)
	{
		var _saveEntity = 
		{
			type: 3,
			obj: object_get_name(object_index),
			x: x,
			y: y,
			depth: depth,
			image_index: image_index,
			ID: ID,
			NUM: NUM,
			DROP: DROP,
			PICKUP: PICKUP
			
		}
		array_push(_saveData, _saveEntity);
	
	}
	
	with(objWoodenChest)
	{
		var _saveEntity = 
		{
			type: 4,
			obj: object_get_name(object_index),
			x: x,
			y: y,
			depth: depth,
			image_index: image_index,
			storage: storage

			
		}
		array_push(_saveData, _saveEntity);
	
	}


	
	
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed,1)
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,"savedgame.save");
	buffer_delete(_buffer);


	
}

function LoadGame()
{
	
	clearInventory();

	instance_activate_all();
	for(var i = 0; i < ds_list_size(objWorld.objectList); i += 1)
	{
		with(objWorld.objectList[|i]) instance_destroy();
	}
	
	//instance_destroy(objPond);
	instance_destroy(objDrop);	
	instance_destroy(objItem);	
	//clear Inventory

	
	if(file_exists("savedgame.save"))
	{
		
		
		
		
		var _buffer = buffer_load("savedgame.save");
		var _string = buffer_read(_buffer,buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		
		while(array_length(_loadData) > 0)
		{
			var _loadEntity = array_pop(_loadData);
			
			
			if(_loadEntity.type == 0)
			{
				with(instance_create_layer(_loadEntity.x, _loadEntity.y, "Instances", asset_get_index(_loadEntity.obj)))
				{
					image_index = _loadEntity.image_index;
				}
			
			}
			
			if(_loadEntity.type == 1)
			{
				
				//.equip = _loadEntity.equip;
				global.HEALTH = _loadEntity.HEALTH;
				global.FATIGUE = _loadEntity.FATIGUE;
				global.WATER = _loadEntity.WATER;
				global.HUNGER = _loadEntity.HUNGER;
				global.max = _loadEntity.maxi;
				global.status = _loadEntity.status;
				global.KP = _loadEntity.KP;
				
				global.worldTime = _loadEntity.worldTime;
				global.equip = _loadEntity.equip;
				objTimeSystem.days = _loadEntity.days;
				objInventory.inventory = _loadEntity.inventory;
				
				
			}
			/*
			if(_loadEntity.type == 2)
			{
				
				//addInventory(_loadEntity.ID,_loadEntity.NUM,_loadEntity.DROP,objInventory.inventory);
				
			}	
			*/
			
			if(_loadEntity.type == 3)
			{
				with(instance_create_layer(_loadEntity.x, _loadEntity.y, "Instances", asset_get_index(_loadEntity.obj)))
				{
					image_index = _loadEntity.image_index;
					ID = _loadEntity.ID;
					NUM = _loadEntity.NUM;
					DROP = _loadEntity.DROP;
					PICKUP = _loadEntity.PICKUP;
					
				}
			
			}
			
			if(_loadEntity.type == 4)
			{
				with(instance_create_layer(_loadEntity.x, _loadEntity.y, "Instances", asset_get_index(_loadEntity.obj)))
				{
					image_index = _loadEntity.image_index;
					storage = _loadEntity.storage;
					
				}
			
			}
			

		}
	}
	
}
