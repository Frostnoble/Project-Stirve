/// @description Insert description here
// You can write your code in this editor
if(!has_save)
{
	//Draw Menu
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y,
		18+(charSize*8),
		16*ds_list_size(options)+8
	);	
	
	
	//Draw Recipes in a list
	for(var i = 0; i < ds_list_size(options); i += 1)
	{
		var xx = 12;
		var yy = draw_y + 10 + (i * 16);
		if(yy <= 140 && yy >= 4)
		{


			draw_text(xx, yy - 2,options[|i]);

			
		}

	}
	
	//Draw Selected one

	for(var i = 0; i < ds_list_size(options); i += 1)
	{
	var xx = 8;
	var yy = draw_y + 10 + (i * 16);
		if(selected == options[| i])
		{
			draw_sprite(sprSelect,0,3,yy);
			
			
		}

	}
	
	
}


if(!fadedone){
	a = clamp(a + (fade*0.05),0,1);

	if(a == 1){fade = -1;}

	if(a == 0 && fade == -1)
	{
	 fadedone = true;
	}

	draw_set_alpha(floor( a / 0.25 ) * 0.25);

	draw_set_color(c_white);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
}