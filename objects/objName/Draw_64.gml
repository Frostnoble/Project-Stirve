/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_set_font(Bell);
font_size = font_get_size(Bell);
buffer = ceil(font_size/4);

start_x = 10;
start_y = 30;



draw_text_transformed(80 - (3.8 * string_length(currentName)),20, currentName, 0.75,0.75,0);


for(var yy = 0; yy < yLetters; yy++;)
{
	for(var xx = 0; xx < xLetters; xx++;)
	{
		var letter = a_Letters[xx,yy];
		var draw_x = start_x + (xx *(font_size/1.5));
		var draw_y = start_y + (yy *(font_size + buffer));
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		if(letter == "END")
		{
			draw_sprite(sprOK,0,draw_x,draw_y);
		}
		else
		{
			draw_text_transformed(draw_x,draw_y, letter, 0.75,0.75,0);
		}

		
		if(xx == grid_x && yy == grid_y) draw_sprite(sprWordSelect,image_index/10,draw_x+1,draw_y-1);
		charcount++;
	}
	
	
}