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
				if(grid_x == 0 && grid_y == 0)
				{
					draw_sprite(sprAvatarBusts,0,room_width/2,room_height/3);
					draw_set_halign(fa_middle);
					draw_text(room_width/2,room_height/3 + 35,"TERRY\nA timid and\nanxious boy.")
					draw_set_halign(fa_left);
					
					draw_text(29,room_height/3 + 68+10,"Start with:")
					draw_sprite(sprSlot,0,115,room_height/3 + 60+10)
					draw_sprite(sprItems,101,116,room_height/3 + 61+10)
				}
				if(grid_x == 1 && grid_y == 0)
				{
					draw_sprite(sprAvatarBusts,1,room_width/2,room_height/3);
					draw_set_halign(fa_middle);
					draw_text(room_width/2,room_height/3 + 35,"AMBER\nA girl with\ngreat courage.")	
					draw_set_halign(fa_left);
					
					draw_text(29,room_height/3 + 68+10,"Start with:")
					draw_sprite(sprSlot,0,115,room_height/3 + 60+10)
					draw_sprite(sprItems,99,116,room_height/3 + 61+10)

				}
				if(grid_x == 0 && grid_y == 1)
				{
					draw_sprite(sprAvatarBusts,2,room_width/2,room_height/3);
					draw_set_halign(fa_middle);
					draw_text(room_width/2,room_height/3 + 35,"ZACKARY\nLikes sports\nmore than\neverything.")	
					draw_set_halign(fa_left);
					
					draw_text(29,room_height/3 + 68+10,"Start with:")
					draw_sprite(sprSlot,0,115,room_height/3 + 60+10)
					draw_sprite(sprItems,100,116,room_height/3 + 61+10)
	
				}
				if(grid_x == 1 && grid_y == 1)
				{
					draw_sprite(sprAvatarBusts,3,room_width/2,room_height/3);
					draw_set_halign(fa_middle);
					draw_text(room_width/2,room_height/3 + 35,"LUCIA\nStrict and to\n the point.\nA hard worker.")	
					draw_set_halign(fa_left);
			
					draw_text(29,room_height/3 + 68+10,"Start with:")
					draw_sprite(sprSlot,0,115,room_height/3 + 60+10)
					draw_sprite(sprItems,102,116,room_height/3 + 61+10)
	
				}
			
		}
		else
		{
			draw_sprite(avatar,0 ,draw_x,draw_y);
		}
		
		

		
		if(xx == grid_x && yy == grid_y) draw_sprite(sprAvatarSelect,image_index/15,draw_x,draw_y+2);
		
	}
	
	
}

