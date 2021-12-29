/// @description Insert description here
// You can write your code in this editor
timer++;
var xview = camera_get_view_x(view_camera[0]);
var yview = camera_get_view_y(view_camera[0]);
var wview = camera_get_view_width(view_camera[0]);
var hview = camera_get_view_height(view_camera[0]);
var x_spawn = round(irandom_range(xview,xview+wview)/16) * 16;
var y_spawn = round(irandom_range(yview,yview+hview)/16) * 16;

part_emitter_burst(rain_system,emitterRain,partRain,50);
alarm[0] = 1;

if(position_empty(x_spawn,y_spawn))
{
	instance_create_layer(x_spawn,y_spawn, "Instances", objSplash);
}

if(timer == irandom_range(100,16000))
{
	pitchRandomizer(sfxThunder,10,false);
	instance_create_layer(x_spawn,y_spawn, "Instances", objStorm);
	timer = 0;
}