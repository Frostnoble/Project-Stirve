/// @description Insert description here
// You can write your code in this editor
depth = room_height - y
HP = 15;
KP = 4;
MHP = 15;
image_speed = 0;

wobbling = false;
wobble = 0;

stunned = false;

wobble_length = 1; // number of cycles to wobble the instance with
                   // only whole numbers are valid - ie: 1, 2, etc
wobble_speed = 2; // valid value range: 0 - 13 (decimals are ok)
wobble_intensity = 1; // the distance multiplier (decimals are ok)