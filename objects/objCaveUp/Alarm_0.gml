/// @description Insert description here
// You can write your code in this editor
fadeDir = -1;

with(objPlayer)
{
	
	
	
	global.trasfer = true;
	global.underground = false;
	y = y - 4320;

	
	xTarg = x; 
	yTarg = y;
	global.inFront_x = round((objPlayer.x+lengthdir_x(TILE_W*objPlayer.spd,objPlayer.move_dir)) / 16) * 16;
	global.inFront_y = round((objPlayer.y+lengthdir_y(TILE_H*objPlayer.spd,objPlayer.move_dir)) / 16) * 16;
	
	
}

///////////////////////////

