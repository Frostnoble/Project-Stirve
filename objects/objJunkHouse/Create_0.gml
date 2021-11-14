/// @description Insert description here
// You can write your code in this editor
depth = room_height - y

myroom = room_add();
//room_set_width(myroom, 160);
//room_set_height(myroom, 144);
//room_set_persistent(myroom, false);
room_assign(myroom, TreeFort);
room_instance_add(myroom, 80, 80, objPlayer);
room_instance_add(myroom, 80, 80, objExit);