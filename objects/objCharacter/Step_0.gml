/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(wait == 0 && (keyboard_check(RIGHT_Key) || keyboard_check(RIGHT_Key2))){
	if((grid_x + 1) >= xSize)
	{
		grid_x = 0;
	}
	else
	{
		grid_x++;
	}
	audio_play_sound(sfxMoveSelect,10,false);
	wait = 10
}
if(wait == 0 && (keyboard_check(LEFT_Key) || keyboard_check(LEFT_Key2))){
	if((grid_x - 1) < 0)
	{
		grid_x = (xSize - 1);
	}
	else
	{
		grid_x--;
	}
	audio_play_sound(sfxMoveSelect,10,false);
	wait = 10
}
if(wait == 0 && (keyboard_check(DOWN_Key) || keyboard_check(DOWN_Key2))){
	if((grid_y + 1) >= ySize)
	{
		grid_y = 0;
	}
	else
	{
		grid_y++;
	}

	audio_play_sound(sfxMoveSelect,10,false);
	wait = 10
}
if(wait == 0 && (keyboard_check(UP_Key) || keyboard_check(UP_Key2))){
	if((grid_y - 1) < 0)
	{
		grid_y = (ySize - 1);
	}
	else
	{
		grid_y--;
	}
	audio_play_sound(sfxMoveSelect,10,false);
	wait = 10
}

if(wait > 0){
	wait--
}


if((keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)))
{
	if(grid_x == 0 && grid_y == 0)
	{
		global.Avatar = 0;

	}
	if(grid_x == 1 && grid_y == 0)
	{
		global.Avatar = 1;

	}
	if(grid_x == 0 && grid_y == 1)
	{
		global.Avatar = 2;
	
	}
	if(grid_x == 1 && grid_y == 1)
	{
		global.Avatar = 3;
	
	}
	audio_play_sound(sfxDay,10,false);
	room_goto(NameInput)

}



