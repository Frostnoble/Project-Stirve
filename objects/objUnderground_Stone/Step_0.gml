/// @description Insert description here
// You can write your code in this editor
KeyGet();




if(!stunned && place_meeting(x,y,ToolChecker(global.equip.tool_id)) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxSplash,10,false);
	HP = HP - global.equip.smashingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
}


if(HP <= 0)
{
	
	pitchRandomizer(sfxBreak,10,false);
	with(instance_create_layer(x, y+16, "Instances", objDrop)){
		switch(other.image_index)
		{
			case 0:
				ID = 1;
				NUM = 8;
				DROP = new Stone();
			break;
			case 2:
				ID = 88;
				NUM = 1;
				DROP = new RawCopper();
			break;
			case 1:
				ID = 89;
				NUM = 1;
				DROP = new RawTin();
			break;
			case 3:
				ID = 90;
				NUM = 1;
				DROP = new RawIron();
			break;
			case 4:
				ID = 91;
				NUM = 1;
				DROP = new RawGold();
			break;
		}

	}

	instance_destroy();
}




