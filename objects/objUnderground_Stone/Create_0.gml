/// @description Insert description here
// You can write your code in this editor
//pitchRandomizer(sfxPlace,10,false);
depth = room_height - y
HP = 15;
MHP = 15;
Hitable = true;
Id = -1;
wobbling = false;
wobble = 0;
stunned = false;
wobble_length = 1; // number of cycles to wobble the instance with
                   // only whole numbers are valid - ie: 1, 2, etc
wobble_speed = 2; // valid value range: 0 - 13 (decimals are ok)
wobble_intensity = 1; // the distance multiplier (decimals are ok)

//ds_grid_add(global.WorkLoc,x,y,1);

rand = irandom(150);
if(rand > 76)
{
	image_index = 0; //Normal

}
else if(rand > 50 && rand < 75)
{
	image_index = 3;//Iron

}
else if(rand > 25 && rand < 49)
{
	image_index = 1;//Tin

}
else if(rand > 20 && rand < 24)
{
	image_index = 2; //Copper

}
else if(rand == 1)
{
	image_index = 4; //Gold

}
else
{
	image_index = 0;//Normal

}
image_speed = 0;

