/// @description Insert description here
// You can write your code in this editor
instance_destroy(objwolf);
instance_destroy(objRabbit);
global.gamemode = 3;
global.death = true;
global.pause = true;
global.status = new Normal();
audio_stop_sound(musTest);
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