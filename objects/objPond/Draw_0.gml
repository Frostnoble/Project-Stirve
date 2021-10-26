/// @description Insert description here
// You can write your code in this editor

draw_self();

if(!spawned)
{

	if(place_meeting(x, y - 16, objWaterPond) || place_meeting(x, y - 16, objPond))
	{
		UP = true;
	}
	if(place_meeting(x, y + 16, objWaterPond) || place_meeting(x, y + 16, objPond))
	{
		DOWN = true;
	}

	if(place_meeting(x - 16, y, objWaterPond) || place_meeting(x  - 16, y, objPond))
	{
		LEFT = true;
	}

	if(place_meeting(x + 16, y, objWaterPond) || place_meeting(x  + 16, y, objPond))
	{
		RIGHT = true;
	}


	if(place_meeting(x - 16, y - 16, objWaterPond) || place_meeting(x - 16, y - 16, objPond))
	{
		LeftUp = true;
	}
	if(place_meeting(x - 16, y + 16, objWaterPond) || place_meeting(x - 16, y + 16, objPond))
	{
		LeftDown = true;
	}

	if(place_meeting(x + 16, y - 16, objWaterPond) || place_meeting(x + 16, y - 16, objPond))
	{
		RightUp = true;
	}

	if(place_meeting(x + 16, y + 16, objWaterPond) || place_meeting(x  + 16, y + 16, objPond))
	{
		RightDown = true;
	}


	spawned = true;

}



if(UP && DOWN && LEFT && RIGHT)
{
	//Keep
}
if(!UP && DOWN && LEFT && RIGHT)
{
	draw_sprite(sprPontEdge,6,x,y)
}
if(UP && !DOWN && LEFT && RIGHT)
{
	draw_sprite(sprPontEdge,4,x,y)
}
if(UP && DOWN && !LEFT && RIGHT)
{
	draw_sprite(sprPontEdge,7,x,y)
}
if(UP && DOWN && LEFT && !RIGHT)
{
	draw_sprite(sprPontEdge,5,x,y)
}



if(!UP && DOWN && !LEFT && RIGHT)
{
	draw_sprite(sprPontEdge,0,x,y)
}
if(!UP && DOWN && LEFT && !RIGHT)
{
	draw_sprite(sprPontEdge,1,x,y)
}
if(UP && !DOWN && !LEFT && RIGHT)
{
	draw_sprite(sprPontEdge,2,x,y)
}
if(UP && !DOWN && LEFT && !RIGHT)
{
	draw_sprite(sprPontEdge,3,x,y)
}


if(DOWN && RIGHT && !RightDown)
{
	draw_sprite(sprPontEdge,8,x,y)
}
if(DOWN && LEFT && !LeftDown)
{
	draw_sprite(sprPontEdge,9,x,y)
}
if(UP && RIGHT && !RightUp)
{
	draw_sprite(sprPontEdge,10,x,y)
}
if(UP && LEFT && !LeftUp)
{
	draw_sprite(sprPontEdge,11,x,y)
}



if(!UP && !DOWN && !LEFT && RIGHT)
{
	draw_sprite(sprPontEdge,12,x,y)
}
if(!UP && !DOWN && LEFT && !RIGHT)
{
	draw_sprite(sprPontEdge,13,x,y)
}
if(UP && !DOWN && !LEFT && !RIGHT)
{
	draw_sprite(sprPontEdge,14,x,y)
}
if(!UP && DOWN && !LEFT && !RIGHT)
{
	draw_sprite(sprPontEdge,15,x,y)
}


if(!UP && !DOWN && LEFT && RIGHT)
{
	draw_sprite(sprPontEdge,16,x,y)
}
if(UP && DOWN && !LEFT && !RIGHT)
{
	draw_sprite(sprPontEdge,17,x,y)
}
if(!UP && !DOWN && !LEFT && !RIGHT)
{
	draw_sprite(sprPontEdge,18,x,y)
	
}



