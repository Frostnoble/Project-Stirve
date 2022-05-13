/// @description Insert description here
// You can write your code in this editor
death_timer = death_timer+1;


if(step == 0){spin += 2;}
if(step == 1){spin += 5;}
if(step == 2){spin += 15;}


if(death_timer > 60 && death_timer < 260)
{
	with(objPlayer)
	{
		//move_dir = other.spin;
		
		//frame = 1;
		move_dir = other.spin;
	
	}

}else if(death_timer > 260 && death_timer < 340)
{
	with(objPlayer)
	{
		sprite_index = playerExtra();
		image_index = 0
		frame = 1;	
	}
}
if(death_timer >= 340 && death_timer < 460)
{
	with(objPlayer)
	{
		sprite_index = playerExtra();
		image_index = 0
		frame = 1;	
	}
	if(!instance_exists(objPlayerSoul))
	{
		instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objPlayerSoul)
	}
	

}else if(death_timer >= 460)
{
depth = objPlayer.depth-10;
//Show Gameover
//game_end();
}



if(death_timer == 0 ){spin = objPlayer.move_dir;}
if(death_timer > 120){step = 1;}
if(death_timer > 180){step = 2;}

