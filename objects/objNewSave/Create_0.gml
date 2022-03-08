/// @description Insert description here
// You can write your code in this editor
draw_x = 60;
draw_y = 0;
wait = 0;
timerload = 0;
options = ds_list_create();
ds_list_add(options, "Save1","Save2","Save3");
selected = options[| 0];	


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
		}
				

	}
}