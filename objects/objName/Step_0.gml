/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(wait == 0 && (keyboard_check(RIGHT_Key) || keyboard_check(RIGHT_Key2))){
	if((grid_x + 1) >= xLetters)
	{
		grid_x = 0;
	}
	else
	{
		grid_x++;
	}
	audio_play_sound(sfxMoveSelect,10,false);
	wait = 5
}
if(wait == 0 && (keyboard_check(LEFT_Key) || keyboard_check(LEFT_Key2))){
	if((grid_x - 1) < 0)
	{
		grid_x = (xLetters - 1);
	}
	else
	{
		grid_x--;
	}
	audio_play_sound(sfxMoveSelect,10,false);
	wait = 5
}
if(wait == 0 && (keyboard_check(DOWN_Key) || keyboard_check(DOWN_Key2))){
	if((grid_y + 1) >= yLetters)
	{
		grid_y = 0;
	}
	else
	{
		grid_y++;
	}

	audio_play_sound(sfxMoveSelect,10,false);
	wait = 5
}
if(wait == 0 && (keyboard_check(UP_Key) || keyboard_check(UP_Key2))){
	if((grid_y - 1) < 0)
	{
		grid_y = (yLetters - 1);
	}
	else
	{
		grid_y--;
	}
	audio_play_sound(sfxMoveSelect,10,false);
	wait = 5
}

if(wait > 0){
	wait--
}


if((keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)))
{
	audio_play_sound(sfxDay,10,false);
	var newLetter = a_Letters[grid_x,grid_y];
	
	if(newLetter != "END" && string_length(currentName) <= nameLimit)
	{
		currentName += newLetter;
	}
	else
	{

		global.name = currentName;
		room_goto(Loading);
	}

}

if((keyboard_check_pressed(B_Key) || keyboard_check_pressed(B_Key2)))
{
	letterCount = string_length(currentName);
	
	if(letterCount >= 1)
	{
		currentName = string_delete(currentName,letterCount,1);
	}

}


