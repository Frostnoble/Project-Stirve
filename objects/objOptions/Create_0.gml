/// @description Insert description here
// You can write your code in this editor
draw_x = 0;
draw_y = 0;
rowlength = 3;
draw_x2 = 208;
draw_y2 = 0;

opmode = 1; //1 = FullScreen Toggle, 2 = Music Volume, 3 = SFX Volume

options = ds_list_create();
ds_list_add(options, "FullScreen","MusicCon","SoundCon","Quit");
selected = options[| 0];
timer = 0;

depth = -max;