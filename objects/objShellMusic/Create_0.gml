/// @description Insert description here
// You can write your code in this edit
//image_angle = objPlayer.move_dir;

//image_angle = objPlayer.move_dir;


/*
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
*/
//show_debug_message(objPlayer.move_dir)


//image_xscale = sign(objPlayer.move_dir)
with (objPlayer)
{
	attackFrame = true;
	sprite_index = sprBoiAttack;
	image_index = dir;
	
	
	
}




randomize();

global.gamemode = 4; //Playing
	
startPlaying = true;
	
notes = ds_list_create();
notesBad = ds_list_create();
ds_list_add(notesBad, "right" ,"right", "up", "down")




