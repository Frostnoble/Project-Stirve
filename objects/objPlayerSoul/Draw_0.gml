/// @description Insert description here
// You can write your code in this editor
draw_self();

if(timer > 100 && !startfade)
{
    image_alpha -= 0.05;//change this to affect the fading speed
    if(image_alpha < 0)
	{
		with(objPlayer)
		{
			depth = room_height - y
			sprite_index = sprBoi;
		
		}
		global.death = false;
		global.pause = false;
		
		room_goto(Gameover);
		instance_destroy(objDeath);
		instance_destroy();
		
	}
}




	


