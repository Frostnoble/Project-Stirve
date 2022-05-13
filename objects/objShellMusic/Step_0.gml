/// @description Insert description here
// You can write your code in this editor
//catchstart++;
KeyGet();



if(keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2))
{
	objPlayer.sprite_index = playerMove()
	objPlayer.attackFrame = false;
	startPlaying = false;
	global.gamemode = 0;
	
	instance_destroy();
	
	
}


//Music Controls

if((keyboard_check(B_Key) || keyboard_check(B_Key2)) && (keyboard_check_pressed(LEFT_Key) || keyboard_check_pressed(LEFT_Key2)))
{

	note = audio_play_sound(sfxPitch,10,false);
	audio_sound_pitch(note, 1.0);
	ds_list_add(notes,"B+left");
	alarm[0] = 50;
}

else if((keyboard_check(B_Key) || keyboard_check(B_Key2)) && (keyboard_check_pressed(RIGHT_Key) || keyboard_check_pressed(RIGHT_Key2)))
{

	note = audio_play_sound(sfxPitch,10,false);
	audio_sound_pitch(note, 1.2);
	ds_list_add(notes,"B+right");
	alarm[0] = 50;
}

else if((keyboard_check(B_Key) || keyboard_check(B_Key2)) && (keyboard_check_pressed(DOWN_Key) || keyboard_check_pressed(DOWN_Key2)))
{

	note = audio_play_sound(sfxPitch,10,false);
	audio_sound_pitch(note, 1.4);
	ds_list_add(notes,"B+down");
	alarm[0] = 50;
}

else if((keyboard_check(B_Key) || keyboard_check(B_Key2)) && (keyboard_check_pressed(UP_Key) || keyboard_check_pressed(UP_Key2)))
{

	note = audio_play_sound(sfxPitch,10,false);
	audio_sound_pitch(note, 1.6);
	ds_list_add(notes,"B+up");
	alarm[0] = 50;
}


else if(keyboard_check_pressed(LEFT_Key) || keyboard_check_pressed(LEFT_Key2))
{

	note = audio_play_sound(sfxPitch,10,false);
	audio_sound_pitch(note, 0.2);
	ds_list_add(notes,"left");
	alarm[0] = 50;
}

else if(keyboard_check_pressed(RIGHT_Key) || keyboard_check_pressed(RIGHT_Key2))
{

	note = audio_play_sound(sfxPitch,10,false);
	audio_sound_pitch(note, 0.4);
	ds_list_add(notes,"right");
	alarm[0] = 50;
}

else if(keyboard_check_pressed(DOWN_Key) || keyboard_check_pressed(DOWN_Key2))
{

	note = audio_play_sound(sfxPitch,10,false);
	audio_sound_pitch(note, 0.6);
	ds_list_add(notes,"down");
	alarm[0] = 50;
}

else if(keyboard_check_pressed(UP_Key) || keyboard_check_pressed(UP_Key2))
{

	note = audio_play_sound(sfxPitch,10,false);
	audio_sound_pitch(note, 0.8);
	ds_list_add(notes,"up");
	alarm[0] = 50;
}




equal = true;
if(ds_list_size(notes) == ds_list_size(notesBad)) {
    for(var i = 0; i < ds_list_size(notes); i++) {
        if(ds_list_find_value(notes, i) != ds_list_find_value(notesBad, i)) {
            equal = false;
            break;
        }
    }
} else {
    equal = false;
}



if(equal)
{
	instance_create_layer(objPlayer.x,objPlayer.y, "Instances", objStorm2);
	equal = false;
	ds_list_clear(notes);
	objPlayer.sprite_index = playerMove()
	objPlayer.attackFrame = false;
	startPlaying = false;
	global.gamemode = 0;
	
	instance_destroy();
	
}