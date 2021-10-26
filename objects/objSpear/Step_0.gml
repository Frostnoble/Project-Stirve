/// @description Insert description here
// You can write your code in this editor

//check direction
spearinFront_x = round((x+lengthdir_x(spd,dir)));
spearinFront_y = round((y+lengthdir_y(spd,dir)));

if(!hit)
{
	if(place_meeting(spearinFront_x,spearinFront_y,objColl))
	{
		switch(dir)
		{
			case 0:
				x += spd;
			break;
			case 90:
				y-= spd;
			break;
			case 180:
				x-= spd;
			break;
			case 270:
				y+= spd;
			break;
		}
		show_debug_message("Ouch")
		image_speed = 1;
		alarm[1] = 30;
		alarm[2] = 2;
		hit = true;

		
	
	
	}else
	{
		switch(dir)
		{
			case 0:
				x+= spd;
			break;
			case 45:
				y-= spd;
				x+= spd;
			break;
			case 90:
				y-= spd;
			break;
			case 135:
				x-= spd;
				y-= spd;
			break;
			case 180:
				x-= spd;
			break;
			case 225:
				x-= spd;
				y+= spd;
			break;
			case 270:
				y+= spd;
			break;
			case 315:
				x+= spd;
				y+= spd;
			break;
		}

		if(point_distance(objPlayer.x, objPlayer.y, x, y) > 100){alarm[1] = 1;}
	}
}else
{
	dietimer--;
	if(dietimer == 20){image_speed = 0.7;}
	if(dietimer == 5){image_speed = 0.25;}
}