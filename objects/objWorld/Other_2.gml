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
global.gamemode = 0;
global.death = false;
global.TempoWater = 0;
global.GoThrough = false;
global.saving = false;
global.pause = false;
global.DEMO = true;







