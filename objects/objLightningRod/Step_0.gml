/// @description Insert description here
// You can write your code in this editor
KeyGet();




if(!stunned && place_meeting(x,y,ToolChecker(global.equip.tool_id)) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxSplash,10,false);
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
}


if(HP <= 0)
{
	
	
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 104;
	NUM = 1;
	DROP = new LightningRod();
	}

	instance_destroy();
}


if(struck)
{
	
	for(i = -16; i <= 16; i += 16)
	{
		for(j = -16; j <= 16; j += 16)
		{
			item = instance_place(x+i,y+j,objItem);

			if (item != noone)
			{
				with(item)
				{
					if(ID == 1) //Is Flint?
					{
						spawnDrop(92,new Lodestone(),NUM,x,y);
						instance_destroy();
					}

				}

			}
		}
	}
	struck = false;
}