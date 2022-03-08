// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame2()
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
		name: global.name,
		avatar: global.Avatar,
		slot: global.slot,
		HEALTH: global.HEALTH,
		FATIGUE: global.FATIGUE,
		WATER: global.WATER,
		HUNGER: global.HUNGER,
		maxi: global.max,
		status: global.status,
		KP: global.KP,
		worldTime: global.worldTime,
		days: objTimeSystem.days,
		unlocked: ds_map_write(global.unlocked),
		weather: global.weather,
		defence: global.defence,
		tree: global.TreeCheck,
		grass: global.GrassCheck,
		rock: global.RockCheck
	





	}
	array_push(_saveData, _saveEntity);
	//show_debug_message(objInventory.inventory[|0])
	var _saveEntity =
	{
		type: 2,//Inventory
		inventory0: objInventory.inventory[|0],
		inventory1: objInventory.inventory[|1],
		inventory2: objInventory.inventory[|2],
		inventory3: objInventory.inventory[|3],
		inventory4: objInventory.inventory[|4],
		inventory5: objInventory.inventory[|5],
		inventory6: objInventory.inventory[|6],
		inventory7: objInventory.inventory[|7],
		inventory8: objInventory.inventory[|8]
		

	}
	array_push(_saveData, _saveEntity);
	
	

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
	
	with(objBasket)
	{
		var _saveEntity = 
		{
			type: 4,
			obj: object_get_name(object_index),
			x: x,
			y: y,
			depth: depth,
			image_index: image_index,
			storage0: storage[|0],
			storage1: storage[|1],
			storage2: storage[|2],
			storage3: storage[|3],
			storage4: storage[|4],
			storage5: storage[|5],
			storage6: storage[|6],
			storage7: storage[|7],
			storage8: storage[|8]
			
		}
		array_push(_saveData, _saveEntity);
	
	}
	
	with(objPot)
	{
		var _saveEntity = 
		{
			type: 5,
			obj: object_get_name(object_index),
			x: x,
			y: y,
			depth: depth,
			image_index: image_index,
			liquid: liquid,
			maxhold: maxhold,
			currenthold: currenthold
			
		}
		array_push(_saveData, _saveEntity);
	
	}
	
	for(var i = 0; i < ds_list_size(objWorld.OutfitList); i += 1)
	{
		with(objWorld.OutfitList[|i])
		{
			var _saveEntity = 
			{
				type: 6,
				obj: object_get_name(object_index),
				x: x,
				y: y,
				depth: depth,
				image_index: image_index,
				val: val
			}
			array_push(_saveData, _saveEntity);
	
		}
	}

	
	
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed,1)
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,"StriveSaveSlot2");
	buffer_delete(_buffer);
	
	
	instance_create_layer(0, 0, "Instances", objSaved);
	
}

function LoadGame2()
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

	
	if(file_exists("StriveSaveSlot2"))
	{
		
		
		
		
		var _buffer = buffer_load("StriveSaveSlot2");
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
				global.name = _loadEntity.name;
				global.Avatar = _loadEntity.avatar;
				global.slot = _loadEntity.slot;				
				global.HEALTH = _loadEntity.HEALTH;
				global.FATIGUE = _loadEntity.FATIGUE;
				global.WATER = _loadEntity.WATER;
				global.HUNGER = _loadEntity.HUNGER;
				global.max = _loadEntity.maxi;
				global.status = _loadEntity.status;
				global.KP = _loadEntity.KP;
				
				global.worldTime = _loadEntity.worldTime;

				objTimeSystem.days = _loadEntity.days;
				global.unlocked = ds_map_create;
				ds_map_read(global.unlocked,_loadEntity.unlocked);
				global.weather = _loadEntity.weather; 
				global.defence = _loadEntity.defence;
				global.TreeCheck = _loadEntity.tree;
				global.GrassCheck = _loadEntity.grass;
				global.RockCheck = _loadEntity.rock;
				
			}
			
			if(_loadEntity.type == 2)
			{
				
				with(objInventory){
					if(_loadEntity.inventory0 != pointer_null){inventory[|0] = _loadEntity.inventory0;}
					if(_loadEntity.inventory1 != pointer_null){inventory[|1] = _loadEntity.inventory1;}
					if(_loadEntity.inventory2 != pointer_null){inventory[|2] = _loadEntity.inventory2;}
					if(_loadEntity.inventory3 != pointer_null){inventory[|3] = _loadEntity.inventory3;}
					if(_loadEntity.inventory4 != pointer_null){inventory[|4] = _loadEntity.inventory4;}
					if(_loadEntity.inventory5 != pointer_null){inventory[|5] = _loadEntity.inventory5;}
					if(_loadEntity.inventory6 != pointer_null){inventory[|6] = _loadEntity.inventory6;}
					if(_loadEntity.inventory7 != pointer_null){inventory[|7] = _loadEntity.inventory7;}
					if(_loadEntity.inventory8 != pointer_null){inventory[|8] = _loadEntity.inventory8;}

				}
			}	
			
			
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
					if(_loadEntity.storage0 != pointer_null){storage[|0] = _loadEntity.storage0;}
					if(_loadEntity.storage1 != pointer_null){storage[|1] = _loadEntity.storage1;}
					if(_loadEntity.storage2 != pointer_null){storage[|2] = _loadEntity.storage2;}
					if(_loadEntity.storage3 != pointer_null){storage[|3] = _loadEntity.storage3;}
					if(_loadEntity.storage4 != pointer_null){storage[|4] = _loadEntity.storage4;}
					if(_loadEntity.storage5 != pointer_null){storage[|5] = _loadEntity.storage5;}
					if(_loadEntity.storage6 != pointer_null){storage[|6] = _loadEntity.storage6;}
					if(_loadEntity.storage7 != pointer_null){storage[|7] = _loadEntity.storage7;}
					if(_loadEntity.storage8 != pointer_null){storage[|8] = _loadEntity.storage8;}
					
				}
			
			}
			
			if(_loadEntity.type == 5)
			{
				with(instance_create_layer(_loadEntity.x, _loadEntity.y, "Instances", asset_get_index(_loadEntity.obj)))
				{
					image_index = _loadEntity.image_index;
					liquid = _loadEntity.liquid;
					maxhold = _loadEntity.maxhold;
					currenthold = _loadEntity.currenthold;
					
				}
			
			}
			
			if(_loadEntity.type == 6)
			{
				with(instance_create_layer(_loadEntity.x, _loadEntity.y, "Instances", asset_get_index(_loadEntity.obj)))
				{
					image_index = _loadEntity.image_index;
					val = _loadEntity.val;
				}
			
			}

		}
	}
	
}
