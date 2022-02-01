/// @description Insert description here
// You can write your code in this editor

switch(global.weather)
{
	case 0: //Clear
		var soundname = musOverworld_Clear;
	break;
	case 1: //Rain
		var soundname = musOverworld_Rain;
	break;
	case 2: //Storm
		var soundname = musOverworld_Storm;
	break;	
}


if(audio_sound_get_gain(soundname) - 0.05 >= 0){
    audio_sound_gain(soundname, audio_sound_get_gain(soundname) - 0.001, 0);
    alarm[1] = 2;
} else {
    audio_stop_sound(soundname);
}