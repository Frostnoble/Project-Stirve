/// @description Insert description here
// You can write your code in this editor
KeyGet();

if(place_meeting(x,y,global.equip.tool_id) && keyboard_check_pressed(A_Key) && objPlayer.move_xinput == 0 && objPlayer.move_yinput == 0 && global.equip.type == 1){
    
	HP = HP - global.equip.cuttingPow;
	wobbling = true;
}








if(HP <= 0)
{
	
	
	with(instance_create_layer(x, y, "Instances", objDrop)){
	ID = 0;
	NUM = 2;
	DROP = new Ash();
	}

	instance_destroy();
}

//Give Cozy Effect
if(distance_to_object(objPlayer) <= 16)
{
	if(global.status.name == ""){
		global.status = new Cozy();
	
	}
	

}
