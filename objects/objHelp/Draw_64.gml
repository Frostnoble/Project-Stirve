/// @description Insert description here
// You can write your code in this editor
//Draw Menu
if(global.gamemode == 0){
	draw_set_colour(c_black);
	draw_set_font(Gameboy);
	draw_sprite_stretched(sprBox,
		0,
		draw_x,
		draw_y,
		82,
		18
	);
	

	if(global.TreeCheck > 0)
	{
		draw_text_transformed_color(draw_x+4, draw_y+4,"Chop Down A Tree",0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	}
	else
	{
		draw_text_transformed_color(draw_x+4, draw_y+4,"Chop Down A Tree",0.5,0.5,0,c_black,c_black,c_black,c_black,1);
	}

	if(global.GrassCheck > 0)
	{
		draw_text_transformed_color(draw_x+4, draw_y+4,"\nCut Some Grass",0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	}
	else
	{
		draw_text_transformed_color(draw_x+4, draw_y+4,"\nCut Some Grass",0.5,0.5,0,c_black,c_black,c_black,c_black,1);
	}
	/*
	if(global.RockCheck > 0 || checkInventory(new Stone(),objInventory.inventory))
	{
		draw_text_transformed_color(draw_x+4, draw_y+4,"\n\nFind Or Break Rocks",0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	}
	else
	{
		draw_text_transformed_color(draw_x+4, draw_y+4,"\n\nFind Or Break Rocks",0.5,0.5,0,c_black,c_black,c_black,c_black,1);
	}
	*/
	if(global.TreeCheck > 0 && global.GrassCheck > 0 && !fin)
	{
		audio_play_sound(sfxConfirm,10,false)
		fin = true;
		alarm[0] = 100;
	}

}