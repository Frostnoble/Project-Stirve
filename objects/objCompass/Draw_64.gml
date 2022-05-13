/// @description Insert description here
// You can write your code in this editor

if(checkInventory(new Compass(),objInventory.inventory)){


	var coor = string(round(objPlayer.x/16))+","+string(round(objPlayer.y/16));
	draw_set_color(c_white);

	draw_rectangle(0,0,(string_length(coor) * 8) - 1,8,false);


	draw_set_color(c_black);

	draw_text(1,0,coor);
}

