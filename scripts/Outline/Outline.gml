// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Outline(object){

	with(objPlayer)
	{
		if(position_meeting(global.inFront_x, global.inFront_y,other))
		{
			draw_sprite_ext(object, other.image_index,other.x,other.y,1.0,1.0,0,c_white,0.5)
		}
	}


}