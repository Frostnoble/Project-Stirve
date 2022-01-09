/// @description Insert description here
// You can write your code in this editor
timer++
if(timer >= 100){instance_destroy();}

PrePit = instance_position(x,y,objPrePit);

if (PrePit != noone)
{
	with(PrePit)
	{
		instance_create_layer(x,y, "Instances", objCampFire);
		instance_destroy();
	}
	instance_destroy();
}