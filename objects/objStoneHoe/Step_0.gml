/// @description Insert description here
// You can write your code in this editor



if(checktile == 1 && place_empty(x,y,all) && !action)
{
	
	instance_create_layer(x-8, y-8, "Instances", objBetterSoil)
	action = true;

}
if(checktile == 2 && place_empty(x,y,all) && !action)
{
	
	instance_create_layer(x-8,y-8, "Instances", objBetterSoil)
	action = true;

}

if(checktile == 1 && place_meeting(x,y,objBetterSoil) && !action)
{
	init = instance_place(x,y,objBetterSoil)
	instance_destroy(init);
	action = true;


}
if(checktile == 2 && place_meeting(x,y,objBetterSoil) && !action)
{
	init = instance_place(x,y,objBetterSoil)
	instance_destroy(init);
	action = true;


}


