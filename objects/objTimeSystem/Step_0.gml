/// @description Insert description here
// You can write your code in this editor



seconds2 = floor(((global.worldTime) mod 30));
minutes2 = floor(((global.worldTime / 30) mod 60));
MILhours2 = floor(((global.worldTime / (1800)) mod 24)+1);
hours2 = floor(((global.worldTime / (1800)) mod 12)+1);
days2 = floor(((global.worldTime / (43200)) mod 43200));



if(global.gamemode == 1 || global.gamemode == 2 || global.gamemode == 5){global.pause = true;}else{global.pause = false;}

objCrafting.recipes = RemoveDuplicate(objCrafting.recipes);

if(!global.pause)
{
	if(fastfoward_I)
	{
		global.worldTime+=30;
	}
	else
	{
		global.worldTime ++;
	}
}


if(objPlayer.steps >= 40)
{
	objPlayer.steps = 0 
	if(global.status.name != "Cozy")
	{
		global.FATIGUE +=1;
	}
	
	
}
//Body Consumes food and water
if(minutes2 == 20 && seconds2 == 25)
{
	
	global.HUNGER -= 5;
	global.WATER -= 3;
	if(global.HUNGER < 0){global.HUNGER = 0;}
	if(global.WATER < 0){global.WATER = 0;}
}

if(global.FATIGUE > 100){global.FATIGUE = 100;}


//Health
if((minutes2 == 20 || minutes2 == 40 || minutes2 == 0) && seconds2 == 25 && (global.HUNGER == 0 || global.WATER == 0 || global.FATIGUE == 100))
{
	pitchRandomizer(sfxHurt,10,false);
	if(global.HEALTH - 5 < 0){global.HEALTH = 0}else{global.HEALTH -= 5}
}
else if((minutes2 == 20 || minutes2 == 40 || minutes2 == 0) && seconds2 == 25)
{
	if(global.HEALTH + 5 > 100){global.HEALTH = 100}else{global.HEALTH += 5}
}

//Death
if(global.HEALTH <= 0)
{
//game_end()

}





if(MILhours2 >= 12 && MILhours2 <= 24 && version == "AM")
{
	
	version = "PM";
}
if(MILhours2 >= 1 && MILhours2 <= 11 && version == "PM")
{

	version = "AM";
	
}

if(minutes2 < 10)
{
	differ = ":0";
}
else
{
	differ = ":";
}


if((objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0)){
	
	
}
else
{
	draw_y = -17;
	alarm[0] = 100;

}




//KnockOut
if(MILhours2 == 2 && minutes2 == 0 && seconds2 == 0)
{
	
	with(objPlayer)
	{
		sprite_index = sprBoiExtra;
		image_index = 1
		frame = 1;
		
		

	}	
	
	with(instance_create_layer(0, room_height, "Instances", objDayCounter))
	{
		sleeptype = 2;

	}
}


//Status effects

//SICK
if(global.status.name == "Sick" && seconds2 == 0)
{
	if(global.HEALTH > 5){global.HEALTH--;}
    sick_timer++;
}
if(sick_timer == global.status.time){
	global.status = new Normal();
	sick_timer = 0;
}

//PAR
if(global.status.name == "Par" && seconds2 == 0)
{
	sick_timer++;
}
if(sick_timer == global.status.time){
	global.status = new Normal();
	sick_timer = 0;
}

//Woozy
if(global.status.name == "Woozy" && seconds2 == 0)
{
	sick_timer++;
}
if(sick_timer == global.status.time){
	global.status = new Normal();
	sick_timer = 0;
}

//Calculate time of day
if(objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && seconds2 == 0 && (minutes2 == 0 || minutes2 == 20 || minutes2 == 40))
{
	//sick_timer++;
	if(global.FATIGUE - 2 < 0){global.FATIGUE = 0;}else{global.FATIGUE -= 2;}
}



if(MILhours2 >= 6 && MILhours2 < 12)
{
	
	global.light_times = "Day";
	DAY();
}
else if(MILhours2 >= 12 && MILhours2 < 18)
{

	
	global.light_times = "Day";
	DAY();
}
else if(MILhours2 >= 18 && MILhours2 < 22)
{

	global.light_times = "Eve";
	EVE();
}
else if(MILhours2 >= 22 && MILhours2 >= 6)
{

	global.light_times = "Night";
	NIGHT();
}




//New Time system 
/*
30 = MINUTE
1800 = HOUR

43200 = DAY
*/
//Convert

//global.worldTime++;

