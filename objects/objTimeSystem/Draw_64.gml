/// @description Insert description here
// You can write your code in this editor

if((global.gamemode != 1 && global.gamemode != 3))
{
	//draw_text(0,0,"("+(string((+","+(string(((objPlayer.y/16)* 16)+")");
	
	
	draw_set_color(c_white);

	draw_rectangle(draw_x-56,draw_y + 0,draw_x,draw_y+8,false);


	draw_set_color(c_black);
	//Time
	
	if(hours2 < 10)
	{
		draw_text(draw_x-55, draw_y,"0"+string(hours2) +differ+string(minutes2) + version);
	}
	else
	{
		draw_text(draw_x-55, draw_y,string(hours2) +differ+string(minutes2) + version);
	}

	//draw_text(draw_x-55, draw_y+8,"KP:"+string(global.KP));

}



//shader_reset();