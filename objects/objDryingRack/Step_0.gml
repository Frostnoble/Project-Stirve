/// @description Insert description here
// You can write your code in this editor
KeyGet();



if(place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
}



if(HP <= 0)
{
	
	pitchRandomizer(sfxBreak,10,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 42;
	NUM = 1;
	DROP = new DryingRack();
	}

	instance_destroy();
}


item = instance_position(x,y,objItem);

if (item != noone)
{
	if(!trans && item.DROP.canDry)
	{
		timeTillDry = global.worldTime + item.DROP.DryTime;
		trans = true;
	}
	
}
else
{
	timeTillDry = 0;
}

if(global.worldTime >= timeTillDry)
{
	item = instance_position(x,y,objItem);

	if (item != noone)
	{
		with(instance_create_layer(x, y, "Instances", objDrop))
		{

			ID = other.item.DROP.DryImage_id;
			NUM = other.item.NUM * other.item.DROP.DryMult;
			DROP = other.item.DROP.DryName;
		}
		instance_destroy(item);
		
	}
	else
	{
		timeTillDry = 0;
		trans = false;

	}
	timeTillDry = 0;
	trans = false;


}







