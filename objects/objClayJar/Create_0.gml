/// @description Insert description here
// You can write your code in this editor
depth = room_height - y
HP = 10;
Hitable = true;

wobbling = false;
wobble = 0;

wobble_length = 1; // number of cycles to wobble the instance with
                   // only whole numbers are valid - ie: 1, 2, etc
wobble_speed = 2; // valid value range: 0 - 13 (decimals are ok)
wobble_intensity = 1; // the distance multiplier (decimals are ok)

storage = ds_list_create();


modetype = true;

rowlength = 3;


draw_x = 208;
draw_y = 0;

if(modetype){storage_selector = objInventory.inventory[| 0];}
if(!modetype){storage_selector = storage[| 0];}