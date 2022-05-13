/// @description Insert description here
// You can write your code in this editor



	

if(objTimeSystem.MILhours2 >= 22 && objTimeSystem.MILhours2 <= 24)
{
	
	with(objPlayer)
	{
		sprite_index = playerExtra();
		image_index = 1
		frame = 1;
		x = other.x;
		y = other.y-4;
		

	}	
		
		
	with(instance_create_layer(0, room_height, "Instances", objDayCounter))
	{
		sleeptype = 0;

	}
		
}
else if(objTimeSystem.MILhours2 >= 1 && objTimeSystem.MILhours2 <= 2)
{
	
	with(objPlayer)
	{
			
		sprite_index = playerExtra();
		image_index = 1;
		frame = 1;
		x = other.x;
		y = other.y-4;
		
	
	}		
		
	with(instance_create_layer(0, room_height, "Instances", objDayCounter))
	{
		sleeptype = 1;

	}
		
}