/// @description Insert description here
// You can write your code in this editor
//catchstart++;
KeyGet();


if((keyboard_check_pressed(A_Key) || keyboard_check_pressed(A_Key2)))
{
	objPlayer.sprite_index = playerMove()
	objPlayer.attackFrame = false;
	startFishing = false;
	global.gamemode = 0;
	
	instance_destroy(objRipple);
	instance_destroy();
	
	
}
