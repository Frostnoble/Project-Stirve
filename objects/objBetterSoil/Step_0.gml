/// @description Insert description here
// You can write your code in this editor
KeyGet();


item = instance_position(x,y,objItem);

if (item != noone)
{
	
	if(item.DROP.image_id == 47)
	{
		instance_create_layer(x, y, "Instances", objSmallBush)
		instance_destroy(item);
	}
	
	
	if(!trans && item.DROP.canSpread)
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

		while(!place_meeting(x_spawn,y_spawn,objBetterSoil) || place_meeting(x_spawn,y_spawn,objItem) || (x_spawn != x && y_spawn != y))
		{
			x_spawn = choose(x - 16,x + 16, x)
			y_spawn = choose(y - 16,y + 16, y)
			show_debug_message("What?")
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







