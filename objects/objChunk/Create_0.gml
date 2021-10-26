/// @description Insert description here
// You can write your code in this editor
done = false;
image_index = 0;
width = objGenerate.chunk_size_x;
height = objGenerate.chunk_size_y;

buffer_size = (width*height)*2;
tile_size = 16;

chunk_buffer = buffer_create(buffer_size,buffer_fixed,1);




for(var i = 0; i < width; i++)
for(var j = 0; j < height; j++)
{
	rand = irandom(1100);
	//show_debug_message(rand);
	
	buffer_write(chunk_buffer, buffer_u16,rand);
	
}
