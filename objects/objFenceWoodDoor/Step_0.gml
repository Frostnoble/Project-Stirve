/// @description Insert description here
// You can write your code in this editor
KeyGet();


UP = false;
DOWN = false;
LEFT = false;
RIGHT = false;

if(place_meeting(x,y,objPlayer)){

image_index = 1;	
	
}else{

image_index = 0;
}


if(!stunned && place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
}



if(HP <= 0)
{
	
	pitchRandomizer(sfxBreak,10,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 0;
	NUM = 2;
	DROP = new Wood();
	}

	instance_destroy();
}




if(place_meeting(x, y - 16, objFenceWood))
{
	UP = true;
}
if(place_meeting(x, y + 16, objFenceWood))
{
	DOWN = true;
}

if(place_meeting(x - 16, y, objFenceWood))
{
	LEFT = true;
}

if(place_meeting(x + 16, y, objFenceWood))
{
	RIGHT = true;
}







