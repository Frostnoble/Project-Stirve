/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(!stunned && place_meeting(x,y,ToolChecker(global.equip.tool_id)) && (keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    pitchRandomizer(sfxHitTree,10,false);
	HP = HP - global.equip.smashingPow;
	wobbling = true;
	stunned = true;
	alarm[0] = global.equip.hitlag;
}



if(HP <= 0)
{
	
	pitchRandomizer(sfxBreak,10,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
		ID = 28;
		NUM = 1;
		DROP = new ClayPot();
	}


	with(instance_create_layer(x, y, "Instances", objDrop)){
		switch(other.image_index)
		{
		 case 0:
			ID = 75;
			NUM = 1;
			DROP = new Hibiscus_Pink()		 
		 break;
		 case 1:
			ID = 76;
			NUM = 1;
			DROP = new Hibiscus_Yellow();		 
		 break;
		 case 2:
			ID = 77;
			NUM = 1;
			DROP = new Hibiscus_Purple()		 
		 break;
		 case 3:
			ID = 78;
			NUM = 1;
			DROP = new Hibiscus_Orange()	 
		 break;
		 case 4:
			ID = 79;
			NUM = 1;
			DROP = new Hibiscus_Red()	 
		 break;
		
		}

	}
	objPlayer.alarm[0] = 1;




	instance_destroy();
}

item = instance_position(x,y,objPot);



if (item != noone)
{
	instance_destroy(item);
}





	

