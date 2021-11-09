/// @description Insert description here
// You can write your code in this editor

with(objTree)
{
	if(x >= objChunk.x * (objChunk.tile_size * objChunk.width) && x <= objChunk.x * (objChunk.tile_size * objChunk.width) + (objChunk.tile_size * objChunk.width))
	{
		//show_debug_message("Del")
		instance_destroy();
	}

}



