/// @description Insert description here
//KeyGet();
/*
if((objPlayer.x == x && objPlayer.y == y) && !global.trasfer)
{
	global.gamemode = 3;
	progress += 2;
	if(!moving)
	{
		moving = true;
		alarm[0] = 60
	}
}


if(global.trasfer)
{
	if(position_meeting(x+16,y+16,objPlayer) || position_meeting(x-16,y-16,objPlayer) || position_meeting(x+16,y-16,objPlayer) || position_meeting(x-16,y+16,objPlayer)|| position_meeting(x,y-16,objPlayer)|| position_meeting(x-16,y,objPlayer)|| position_meeting(x,y+16,objPlayer)|| position_meeting(x+16,y,objPlayer))
	{
		global.trasfer = false;
	}
}
show_debug_message(progress);
*/
/////////////////

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