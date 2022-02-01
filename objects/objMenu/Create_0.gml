/// @description Insert description here
// You can write your code in this editor
draw_x = 0;
draw_y = 0;
has_save = false;
rowlength = 3;
global.startType = -1;
fadedone = false;
a = 1;
fade = 1;
wait = 0;
alarm[0] = 10

options = ds_list_create();
ds_list_add(options, "New Game","Continue","Options","Controls", "Quit");
if(file_exists("savedgame.save"))
{
	selected = options[| 1];
}
else
{
	selected = options[| 0];		
}


charSize = 0
for(var i = 0; i < ds_list_size(options); i++){

	if(charSize < string_length(options[| i])){
		charSize = string_length(options[| i]);
	}
}