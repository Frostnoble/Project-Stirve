/// @description Insert description here
// You can write your code in this editor
draw_x = 0;
draw_y = 0;

rowlength = 3;


options = ds_list_create();
ds_list_add(options, "Crafting","Options","Save/Quit");
selected = options[| 0];

charSize = 0
for(var i = 0; i < ds_list_size(options); i++){

	if(charSize < string_length(options[| i])){
		charSize = string_length(options[| i]);
	}
}