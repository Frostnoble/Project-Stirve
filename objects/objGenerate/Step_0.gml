/// @description Insert description here
// You can write your code in this editor
var chunk_x = objPlayer.x div (chunk_size_x * 16);
var chunk_y = objPlayer.y div (chunk_size_y * 16);

for(var i = chunk_x - load_rad; i <= chunk_x + load_rad; i++)
for(var j = chunk_y - load_rad; j <= chunk_y + load_rad; j++)
{
	if(ds_grid_get(chunks_grid, i, j) == noone)
	{
		//show_debug_message("NEW")
		var chunk = instance_create_layer(i,j, "Instances", objChunk);
		ds_grid_set(chunks_grid, i, j, chunk)
	}
}

with(objChunk)
{
	if(abs(chunk_x - x) > objGenerate.load_rad || abs(chunk_y - y) > objGenerate.load_rad)
	{
	
		ds_grid_set(objGenerate.chunks_grid,x,y,noone);
		
		instance_destroy();
	}

}

