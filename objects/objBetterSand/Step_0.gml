/// @description Insert description here
// You can write your code in this editor
KeyGet();
UP = false;
DOWN = false;
LEFT = false;
RIGHT = false;

item = instance_position(x,y,objItem);

if (item != noone)
{
	

	
	
	if(!trans && item.DROP.canSpread && item.DROP.cantype == 1)
	{
		timeTillGrow = global.worldTime + item.DROP.SpreadTime;
		trans = true;

		
	}
	
}
else
{
	timeTillGrow = 0;
	haveGrow = 0;
	trans = false;
}

if(global.worldTime >= timeTillGrow && timeTillGrow != 0)
{
	item = instance_position(x,y,objItem)
	

	if (item != noone && haveGrow < 8)
	{
		//check for other better soil
		x_spawn = choose(x - 16,x + 16, x)
		y_spawn = choose(y - 16,y + 16, y)

		while(!place_meeting(x_spawn,y_spawn,objBetterSand) || place_meeting(x_spawn,y_spawn,objItem) || (x_spawn != x && y_spawn != y))
		{
			x_spawn = choose(x - 16,x + 16, x)
			y_spawn = choose(y - 16,y + 16, y)
			//show_debug_message("What?")
			haveGrow++;
			if(haveGrow >= 8){break;}
			
		
		}
		if(haveGrow < 8)
		{
			with(instance_create_layer(x_spawn, y_spawn, "Instances", objItem))
			{

				ID = other.item.DROP.image_id;
				NUM = 1;
				DROP = other.item.DROP;
			}
		}

	

		
		
	}
	else
	{
		timeTillGrow = 0;
		trans = false;
		haveGrow = 0;
	

	}
	timeTillGrow = 0;
	trans = false;
	haveGrow = 0;




}



if(place_meeting(x, y - 16, objBetterSand))
{
	UP = true;
}
if(place_meeting(x, y + 16, objBetterSand))
{
	DOWN = true;
}

if(place_meeting(x - 16, y, objBetterSand))
{
	LEFT = true;
}

if(place_meeting(x + 16, y, objBetterSand))
{
	RIGHT = true;
}




//AutoTile

if(UP && DOWN && LEFT && RIGHT)
{
	image_index = 8;
}
if(UP && !DOWN && LEFT && RIGHT)
{
	image_index = 11;
}
if(UP && DOWN && !LEFT && RIGHT)
{
	image_index = 10;
}
if(UP && DOWN && LEFT && !RIGHT)
{
	image_index = 9;
}
if(!UP && !DOWN && LEFT && RIGHT)
{
	image_index = 2;
}
if(UP && DOWN && !LEFT && !RIGHT)
{
	image_index = 1;
}
if(!UP && DOWN && LEFT && !RIGHT)
{
	image_index = 4;
}
if(UP && !DOWN && !LEFT && RIGHT)
{
	image_index = 5;
}
if(!UP && DOWN && !LEFT && RIGHT)
{
	image_index = 3;
}
if(UP && !DOWN && LEFT && !RIGHT)
{
	image_index = 6;
}
if(!UP && DOWN && LEFT && RIGHT)
{
	image_index = 7;
}
if(!UP && !DOWN && LEFT && !RIGHT)
{
	image_index = 13;
}
if(!UP && DOWN && !LEFT && !RIGHT)
{
	image_index = 12;
}
if(!UP && !DOWN && !LEFT && RIGHT)
{
	image_index = 14;
}
if(UP && !DOWN && !LEFT && !RIGHT)
{
	image_index = 15;
}
if(!UP && !DOWN && !LEFT && !RIGHT)
{
	image_index = 0;
}



