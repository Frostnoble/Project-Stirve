/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objRipple))
{
	switch(objPlayer.dir)
	{
		case 0:
			draw_line(x-1, y-7, objRipple.x+8, objRipple.y+8);
		break;
		case 2:
			draw_line(x-3, y-5, objRipple.x+8, objRipple.y+8);
		break;
		case 4:
			draw_line(x-2, y-7, objRipple.x+8, objRipple.y+8);
		break;
		case 6:
			draw_line(x-3, y+4, objRipple.x+8, objRipple.y+8);
		break;
	}
	
	
	
}
draw_self();