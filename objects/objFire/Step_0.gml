/// @description Insert description here
// You can write your code in this editor
timer++
if(timer >= 100){audio_play_sound(sfxPtss,10,false); instance_destroy();}

var PrePit = instance_place(x, y, objPrePit);
if  PrePit != noone
{
	instance_create_layer(x-8,y-8, "Instances", objCampFire);
    instance_destroy(PrePit);
	
}

var tree = instance_place(x, y, objTree);
if  tree != noone
{
	spawnDrop(65,new Ash(),8,x-8,y-8);
    instance_destroy(tree);
	
}



var item = instance_place(x, y, objItem);
if item != noone && (item.ID == 0)
{
	num = item.NUM;
	instance_destroy(item);
	spawnDrop(65,new Ash(),num,x-8,y-8);

}


if(place_meeting(x,y,objPlayer)){
	if(!global.inv)
	{
		pitchRandomizer(sfxHurt,10,false);
		if(global.HEALTH - 5 < 0){global.HEALTH = 0}else{global.HEALTH -= 5}
		objPlayer.hurtFrames = 30;
	}
}

if((global.weather == 1 || global.weather == 2))
{
	audio_play_sound(sfxPtss,10,false);
	instance_destroy();

}