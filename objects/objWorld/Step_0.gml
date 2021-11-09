/// @description Insert description here
// You can write your code in this editor

Render();

if(keyboard_check_pressed(vk_enter))
{
	myroom = room_add();
	//room_set_width(myroom, 160);
	//room_set_height(myroom, 144);
	//room_set_persistent(myroom, false);
	room_assign(myroom, TreeFort);
	room_instance_add(myroom, 80, 80, objPlayer);

	room_goto(myroom)
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

