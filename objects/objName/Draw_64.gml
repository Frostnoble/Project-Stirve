/// @description Insert description here
// You can write your code in this editor

//Draw Menu main
draw_set_colour(c_black);
draw_sprite_stretched(sprBox,
	0,
	0,
	45,
	160,
	99
);



draw_set_color(c_black);
draw_set_font(Bell3);
font_size = font_get_size(Bell3);
buffer = ceil(font_size*2);

start_x = 8;
start_y = 75;


//Draw Menu name
draw_set_colour(c_black);
draw_sprite_stretched(sprBox,
	0,
	38,
	0,
	(font_size*2) * nameLimit,
	43
);



draw_sprite(sprbar,0,2,65);

draw_text_transformed(80 - (font_size/1.5 * string_length(currentName)),20, currentName, 1,1,0);

draw_text(40,55,"ENTER NAME");

for(var yy = 0; yy < yLetters; yy++;)
{
	for(var xx = 0; xx < xLetters; xx++;)
	{
		var letter = a_Letters[xx,yy];
		var draw_x = start_x + (xx *(font_size+2));
		var draw_y = start_y + (yy *(font_size + buffer));
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		if(letter == "END")
		{
			draw_sprite(sprOK,0,draw_x,draw_y);
		}
		else
		{
			draw_text_transformed(draw_x,draw_y, letter, 1,1,0);
		}

		
		if(xx == grid_x && yy == grid_y) draw_sprite(sprWordSelect,image_index/10,draw_x+1,draw_y-1);
		charcount++;
	}
	
	
}

if(global.Gender == 0)
{
	draw_sprite(sprBoiMenu,image_index/15,10,12);
	draw_sprite(sprGender,0,25,20);
}
