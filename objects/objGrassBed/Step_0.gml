/// @description Insert description here
// You can write your code in this editor

KeyGet();

if(place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
}

if((global.inFront_x == x && global.inFront_y == y) && keyboard_check_pressed(B_Key))
{

	
	if(objTimeSystem.MILhours2 >= 22 && objTimeSystem.MILhours2 <= 24)
	{
		global.gamemode = 3;
		depth = objPlayer.depth + 16
		alarm[0] = 60;

		with(objPlayer)
		{
		

		}	
		
		
		

		
	}
	else if(objTimeSystem.MILhours2 >= 1 && objTimeSystem.MILhours2 <= 2)
	{
		global.gamemode = 3;
		depth = objPlayer.depth + 16
		alarm[0] = 60;
	

		
	}
	
}

if(HP <= 0)
{
	
	
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 30;
	NUM = 1;
	DROP = new GrassBed();
	}

	instance_destroy();
}


