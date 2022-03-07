/// @description Insert description here
// You can write your code in this editor

//Draw Menu main
draw_set_colour(c_black);
draw_sprite_stretched(sprBox,
	0,
	0,
	0,
	160,
	144
);
start_x = 8;
start_y = 24;



draw_set_font(Bell3);





draw_set_halign(fa_middle);


draw_text(80,10,"SELECT AN AVATAR");

for(var yy = 0; yy < ySize; yy++;)
{
	for(var xx = 0; xx < xSize; xx++;)
	{
		var avatar = a_avatar[xx, yy];
		var draw_x = start_x + (xx *(130));
		var draw_y = start_y + (yy *(30));
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	

		if(xx == grid_x && yy == grid_y)
		{
			draw_sprite(avatar,image_index/25 ,draw_x,draw_y);
		}
		else
		{
			draw_sprite(avatar,0 ,draw_x,draw_y);
		}
		
		

		
		if(xx == grid_x && yy == grid_y) draw_sprite(sprWordSelect,image_index/10,draw_x+1,draw_y-1);
		
	}
	
	
}

