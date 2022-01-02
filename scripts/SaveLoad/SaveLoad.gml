// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGameWorld()
{
	
	var _saveData = array_create(0);
	
	
	var _saveEntity =
	{
		sfx_Volume: global.sfx_Volume,
		music_Volume: global.music_Volume,
		fullscreen: global.fullscreen
	}
	array_push(_saveData, _saveEntity);
	

	
	
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed,1)
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,"savedworld.save");
	buffer_delete(_buffer);


	
}

function LoadGameWorld()
{
	

	if(file_exists("savedworld.save"))
	{
		
	
		var _buffer = buffer_load("savedworld.save");
		var _string = buffer_read(_buffer,buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		
		while(array_length(_loadData) > 0)
		{
			var _loadEntity = array_pop(_loadData);
				
			global.sfx_Volume = _loadEntity.sfx_Volume;
			global.music_Volume = _loadEntity.music_Volume;
			global.fullscreen = _loadEntity.fullscreen;

		}
	}
	
}
