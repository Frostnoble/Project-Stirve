/// @description Insert description here
// You can write your code in this editor
KeyGet();
timer++;
image_alpha = 1;

if(timer == 30){audio_play_sound(sfxWave,10,true);}

y = anchorY + sin((timer/2)*frequency)*amplitude;

if(!gamestart && ((keyboard_check_pressed(B_Key) || keyboard_check_pressed(B_Key2)) || (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) || keyboard_check_pressed(Select_Key) || keyboard_check_pressed(Start_Key)))
{

	audio_play_sound(sfxConfirm,10,false);
	alarm[0] = 60;
	gamestart = true;
}

if(floor(current_time/100)%2 == 0 && gamestart)
{ 
	image_alpha = 0.2;
}
