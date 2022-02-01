/// @description Insert description here
// You can write your code in this editor
sleeptype = 0;
step = 0;
progress = 1;
noise = false;
SpawnNewRabbit();
SpawnNewWolf();
global.weather = irandom(2); //0 = Clear, 1 = Rain, 2 = Storm
if(instance_exists(objRainGen)){instance_destroy(objRainGen)}
if(instance_exists(objStormGen)){instance_destroy(objStormGen)}
audio_stop_sound(musOverworld_Clear);
audio_stop_sound(musOverworld_Rain);
audio_stop_sound(musOverworld_Storm);
audio_stop_sound(musOverworld_Night);
global.gamemode = 3;