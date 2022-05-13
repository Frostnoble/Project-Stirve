/// @description Insert description here
for(i = -16; i <= 16; i += 16)
{
	for(j = -16; j <= 16; j += 16)
	{
		item = instance_position(x,y,objUnderground_Stone);

		if (item != noone)
		{
			instance_destroy(item);
		}

	}
}

if((objPlayer.x == x && objPlayer.y == y) && !global.trasfer && global.gamemode == 0)
{
	
	global.gamemode = 3;
	audio_play_sound(sfxMove,10,false);
	fading = true;

}


if(global.trasfer)
{
	if(position_meeting(x+16,y+16,objPlayer) || position_meeting(x-16,y-16,objPlayer) || position_meeting(x+16,y-16,objPlayer) || position_meeting(x-16,y+16,objPlayer)|| position_meeting(x,y-16,objPlayer)|| position_meeting(x-16,y,objPlayer)|| position_meeting(x,y+16,objPlayer)|| position_meeting(x+16,y,objPlayer))
	{
		global.trasfer = false;
	}
}


if(alpha == 1 && !moving){
    moving = true
    alarm[0] = 20;    
}

if(alpha == 0 && fadeDir = -1){

    moving = false
    fadeDir = 1
    fading = false;
    progress = 0;
	global.gamemode = 0;
}

show_debug_message(alpha);