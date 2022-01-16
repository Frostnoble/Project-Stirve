/// @description Insert description here
// You can write your code in this editor

Render();

KeyGet();



if(keyboard_check(DOWN_Key) || keyboard_check(DOWN_Key2) || keyboard_check(UP_Key) || keyboard_check(UP_Key2) || keyboard_check(RIGHT_Key) || keyboard_check(RIGHT_Key2) || keyboard_check(LEFT_Key) || keyboard_check(LEFT_Key2))
{
	global.stepsSincePressed++;
	//show_debug_message(global.stepsSincePressed);
}
else
{
	global.stepsSincePressed = 0;
}



if(global.TempoWater > 15){global.TempoWater = 0;}else{global.TempoWater++}

