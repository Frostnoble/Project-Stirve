/// @description Insert description here
// You can write your code in this editor

depth = room_height - y
HP = 1;
MHP = 1;
Hitable = true;

image_speed = 0;
image_index = irandom(4);

wobbling = false;
wobble = 0;

stunned = false;
wobble_length = 1; // number of cycles to wobble the instance with
                   // only whole numbers are valid - ie: 1, 2, etc
wobble_speed = 2; // valid value range: 0 - 13 (decimals are ok)
wobble_intensity = 1; // the distance multiplier (decimals are ok)

