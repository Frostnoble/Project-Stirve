/// @description Insert description here
// You can write your code in this edit
//image_angle = objPlayer.move_dir;

//image_angle = objPlayer.move_dir;



if(objPlayer.move_dir>89 && objPlayer.move_dir<271)
then
{
image_xscale=-1;
}
else
{
image_xscale=1;
}

if(objPlayer.move_dir == 270)
{
	image_yscale=-1;
}

//show_debug_message(objPlayer.move_dir)


//image_xscale = sign(objPlayer.move_dir)
with (objPlayer)
{
	attackFrame = true;
	sprite_index = sprBoiAttack;
	//show_debug_message(dir)
	image_index = dir;
	
	
	
}

startFishing = false;

if(position_meeting(global.inFront_x, global.inFront_y,objWater) && !startFishing)
{
	randomize();
	alarm[0] = irandom_range(600,1000);
	global.gamemode = 4; //fishing
	
	startFishing = true;
	
	
}
else
{
	objPlayer.sprite_index = sprBoi;
	objPlayer.attackFrame = false;
	//startFishing = false;
	global.gamemode = 0;

	instance_destroy();
}


