// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Status () constructor {
	name = "";
	color_id = c_white;
}

function Normal () : Status () constructor {
	name = "";
	color_id = c_green;
	sub_color_id = c_lime;
	time = 0;
}

function Sick () : Status () constructor {
	name = "Sick";
	color_id = c_green;
	sub_color_id = c_lime;
	time = 15;
	
}

function Paralyzed () : Status () constructor {
	name = "Par";
	color_id =  c_yellow;
	sub_color_id = c_aqua;
	time = 15;
}

function Cozy () : Status () constructor {
	name = "Cozy";
	color_id =  c_red;
	sub_color_id = c_yellow;
	time = 0;
}

function Woozy () : Status () constructor {
	name = "Woozy";
	color_id =  c_blue;
	sub_color_id = c_purple;
	time = 15;
}