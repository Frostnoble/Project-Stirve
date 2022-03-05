/// @description Insert description here
// You can write your code in this editor
timer++;

if(timer >= 190){image_index = 1;}

if(timer == 200)
{
	pitchRandomizer(sfxLightning,10,false);
	instance_create_layer(x,y, "Instances", objFire);
	
}
if(timer >= 200)
{
	
	
	if(place_meeting(x,y,objPlayer)){
		if(!global.inv)
		{
			pitchRandomizer(sfxHurt,10,false);
			if(global.HEALTH - 90 < 0){global.HEALTH = 0}else{global.HEALTH -= 90}
			objPlayer.hurtFrames = 30;
		}
	}
	instance_destroy();
	

}