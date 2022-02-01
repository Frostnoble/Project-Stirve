/// @description Insert description here
// You can write your code in this editor
instance_destroy(objwolf);
instance_destroy(objRabbit);
instance_destroy(objBear);
instance_destroy(objStorm);
instance_destroy(objRainGen);
instance_destroy(objStormGen);
global.gamemode = 3;
global.death = true;
global.pause = true;
global.status = new Normal();
audio_stop_sound(musOverworld_Clear);
audio_stop_sound(musOverworld_Rain);
audio_stop_sound(musOverworld_Storm);
audio_stop_sound(musOverworld_Night);
step = 0;
death_timer = 0;
objPlayer.sprite_index = sprBoiDeath;
objPlayer.dir = 5;
spin = objPlayer.move_dir;


fadedone = false;
objPlayer.depth = -1000;
depth = objPlayer.depth+1;
a = 0;
fade = 1;