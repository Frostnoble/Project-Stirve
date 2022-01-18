/// @description Insert description here
// You can write your code in this editor
pitchRandomizer(sfxPlace,10,false);
depth = room_height - y + 10
readyToGo = 0;
trans = false;
timeTillDry = 0;
HP = 10;
Hitable = true;
inUse = false;
wobbling = false;
wobble = 0;
stunned = false;
wobble_length = 1; // number of cycles to wobble the instance with
                   // only whole numbers are valid - ie: 1, 2, etc
wobble_speed = 2; // valid value range: 0 - 13 (decimals are ok)
wobble_intensity = 1; // the distance multiplier (decimals are ok)

//ds_grid_add(global.DryingRackLoc,x,y,1);
