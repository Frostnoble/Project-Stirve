/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(160,144);
window_set_cursor(cr_none);
//show_debug_message("ppppppppppppp")
surface_resize(application_surface, 160, 144);

audio_group_load(ag_Music);
audio_group_load(ag_SFX);
global.music_Volume = 0.2;
global.sfx_Volume = 0.2;
global.fullscreen = false;
if(file_exists("savedworld.save")){LoadGameWorld();}
audio_group_set_gain(ag_Music,global.music_Volume,0);
audio_group_set_gain(ag_SFX,global.sfx_Volume,0);

if(global.fullscreen == false)
{
	window_set_fullscreen(false);
	
				
}
else
{
	window_set_fullscreen(true);
	
}

if(file_exists("StriveSaveSlot1"))
{
	var _buffer = buffer_load("StriveSaveSlot1");
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
		
	var _loadData = json_parse(_string);

	while(array_length(_loadData) > 0)
	{
		var _loadEntity = array_pop(_loadData);
		if(_loadEntity.type == 1)
		{
			name_1 = _loadEntity.name;
			Avatar_1 = _loadEntity.avatar;
			days_1 = _loadEntity.days;
			slot = _loadEntity.slot;
		}
				

	}
}

if(file_exists("StriveSaveSlot2"))
{
	var _buffer = buffer_load("StriveSaveSlot2");
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
		
	var _loadData = json_parse(_string);

	while(array_length(_loadData) > 0)
	{
		var _loadEntity = array_pop(_loadData);
		if(_loadEntity.type == 1)
		{
			name_2 = _loadEntity.name;
			Avatar_2 = _loadEntity.avatar;
			days_2 = _loadEntity.days;
			slot = _loadEntity.slot;
		}
				

	}
}

if(file_exists("StriveSaveSlot3"))
{
	var _buffer = buffer_load("StriveSaveSlot3");
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
		
	var _loadData = json_parse(_string);

	while(array_length(_loadData) > 0)
	{
		var _loadEntity = array_pop(_loadData);
		if(_loadEntity.type == 1)
		{
			name_3 = _loadEntity.name;
			Avatar_3 = _loadEntity.avatar;
			days_3 = _loadEntity.days;
			slot = _loadEntity.slot;
		}
				

	}
}










global.gamemode = 0;
global.death = false;
global.TempoWater = 0;
global.GoThrough = false;
global.saving = false;
global.pause = false;
global.DEMO = true;







