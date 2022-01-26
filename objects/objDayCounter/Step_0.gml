/// @description Insert description here
// You can write your code in this editor
if(step != 3 )
{
	progress++;
}
else
{
	progress -=5;
}





if (progress == room_speed && step != 3) {
	step = 1;
	
	switch(global.weather)
	{
		case 0: //Clear
			if(instance_exists(objRainGen)){instance_destroy(objRainGen)}
			if(instance_exists(objStormGen)){instance_destroy(objStormGen)}
		break;
		case 1: //Rain
			if(instance_exists(objStormGen)){instance_destroy(objStormGen)}
			else{instance_create_layer(0,0, "Instances", objRainGen);}
		break;
		case 2: //Storm
			if(instance_exists(objRainGen)){instance_destroy(objRainGen)}
			else{instance_create_layer(0,0, "Instances", objStormGen);}
		break;	
	}
}

if (progress == room_speed*3 && step != 3) {
	step = 2;
		
	
}

if (progress == room_speed*5 && step != 3) {
	if(sleeptype == 0)//10-12pm good sleep
	{
		
		global.worldTime += 12600;
		//DAY();	
		global.FATIGUE = 0;
		if(global.HUNGER - 20 < 0){global.HUNGER = 0;}else{global.HUNGER -= 20;}
		if(global.WATER - 20 < 0){global.WATER = 0;}else{global.WATER -= 20;}
		objTimeSystem.days += 1;
		
		
	}
	
	if(sleeptype == 1)//12-2pm meh sleep
	{
		global.worldTime += 12600;
		
		if(global.FATIGUE - 45 < 0){global.FATIGUE = 0;}else{global.FATIGUE -= 45;}
		if(global.HUNGER - 15 < 0){global.HUNGER = 0;}else{global.HUNGER -= 15;}
		if(global.WATER - 15 < 0){global.WATER = 0;}else{global.WATER -= 15;}
		objTimeSystem.days += 1;
	}
	
		if(sleeptype == 2)//>2pm bad sleep
	{
		global.worldTime += 12600;
		if(global.FATIGUE - 15 < 0){global.FATIGUE = 0;}else{global.FATIGUE -= 15;}
		if(global.HUNGER - 10 < 0){global.HUNGER = 0;}else{global.HUNGER -= 10;}
		if(global.WATER - 10 < 0){global.WATER = 0;}else{global.WATER -= 10;}
		objTimeSystem.days += 1;
	}
	step = 3;
  
}

if (progress == 0){
   step = 4;
}



if(step == 4)
{

	with(objPlayer)
	{
		sprite_index = sprBoi;
		image_index = 0;

	
	}


	

	
	
	
	
	
	global.gamemode = 0;
	instance_destroy();	
}

/*


objTimeSystem.days += 1;
draw_rectangle(0,0,160,144,false)
draw_text(80,72,"DAY" + string(objTimeSystem.days))


*/
//show_debug_message(progress)