/// @description Insert description here
// You can write your code in this editor
KeyGet();


UP = false;
DOWN = false;
LEFT = false;
RIGHT = false;

if(!stunned && place_meeting(x,y,ToolChecker(global.equip.tool_id)) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
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




if(place_meeting(x, y - 16, objFenceWood) || place_meeting(x, y - 16, objFenceWoodDoor))
{
	UP = true;
}
if(place_meeting(x, y + 16, objFenceWood) || place_meeting(x, y + 16, objFenceWoodDoor))
{
	DOWN = true;
}

if(place_meeting(x - 16, y, objFenceWood) || place_meeting(x  - 16, y, objFenceWoodDoor))
{
	LEFT = true;
}

if(place_meeting(x + 16, y, objFenceWood) || place_meeting(x  + 16, y, objFenceWoodDoor))
{
	RIGHT = true;
}




//AutoTile

if(UP && DOWN && LEFT && RIGHT)
{
	image_index = 8;
}
if(UP && !DOWN && LEFT && RIGHT)
{
	image_index = 11;
}
if(UP && DOWN && !LEFT && RIGHT)
{
	image_index = 10;
}
if(UP && DOWN && LEFT && !RIGHT)
{
	image_index = 9;
}
if(!UP && !DOWN && LEFT && RIGHT)
{
	image_index = 2;
}
if(UP && DOWN && !LEFT && !RIGHT)
{
	image_index = 1;
}
if(!UP && DOWN && LEFT && !RIGHT)
{
	image_index = 4;
}
if(UP && !DOWN && !LEFT && RIGHT)
{
	image_index = 5;
}
if(!UP && DOWN && !LEFT && RIGHT)
{
	image_index = 3;
}
if(UP && !DOWN && LEFT && !RIGHT)
{
	image_index = 6;
}
if(!UP && DOWN && LEFT && RIGHT)
{
	image_index = 7;
}
if(!UP && !DOWN && LEFT && !RIGHT)
{
	image_index = 13;
}
if(!UP && DOWN && !LEFT && !RIGHT)
{
	image_index = 12;
}
if(!UP && !DOWN && !LEFT && RIGHT)
{
	image_index = 14;
}
if(UP && !DOWN && !LEFT && !RIGHT)
{
	image_index = 15;
}
if(!UP && !DOWN && !LEFT && !RIGHT)
{
	image_index = 0;
}



