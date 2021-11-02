/// @description Insert description here
// You can write your code in this edit
var lay_id = layer_get_id("Tileset");
var map_id = layer_tilemap_get_id(lay_id);
checktile = tilemap_get_at_pixel(map_id, global.inFront_x, global.inFront_y);
//var checktile = tilemap_get_at_pixel("Tileset", global.inFront_x, global.inFront_y);
KP = 1;
//image_angle = objPlayer.move_dir;
if(global.KP + KP >= global.MAX_KP){global.KP = global.MAX_KP;}else{global.KP += KP}
with (objPlayer)
{
	attackFrame = true;
	sprite_index = sprBoiAttack;
	
	image_index = dir;
	
	
	
}



gotitem = false
/*
if(checktile == 1)
{
	sprite_index = sprDigSand;
}
if(checktile == 2)
{
	sprite_index = sprDigSoil;
}

*/