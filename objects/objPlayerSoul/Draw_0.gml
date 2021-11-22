/// @description Insert description here
// You can write your code in this editor
draw_self();

if(timer > 100 && !startfade)
{
    image_alpha -= 0.05;//change this to affect the fading speed
    if(image_alpha < 0)
	{
		room_goto(Gameover);
		show_debug_message("GameOver")
	}
}




	


