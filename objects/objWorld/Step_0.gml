/// @description Insert description here
// You can write your code in this editor

Render();

if(keyboard_check_pressed(vk_enter))
{
	audio_stop_sound(musTest);
	room_restart();
}

if(keyboard_check_pressed(ord("S")))
{
	
	SaveGame();
}

if(keyboard_check_pressed(ord("L")))
{

	LoadGame();
}

if(keyboard_check(vk_right) || keyboard_check(vk_left) || keyboard_check(vk_up) || keyboard_check(vk_down))
{
	global.stepsSincePressed++;
	//show_debug_message(global.stepsSincePressed);
}
else
{
	global.stepsSincePressed = 0;
}

if(global.TempoWater > 15){global.TempoWater = 0;}else{global.TempoWater++}

