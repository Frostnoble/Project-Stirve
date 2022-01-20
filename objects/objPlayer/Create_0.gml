/// @description Insert description here
// You can write your code in this editor
KeyGet()
dir = 0
movekeys = [RIGHT_Key,UP_Key,LEFT_Key,DOWN_Key]
movekeys2 = [RIGHT_Key2,UP_Key2,LEFT_Key2,DOWN_Key2]
spd = 1
xTarg = xstart
yTarg = ystart

canHit = true;
steps = 0;
totalsteps = 0;
hurtFrames = 0;


move_xinput = 0;
move_yinput = 0;
move_dir = 0;
frame = 0
image_speed = 0
attackFrame = false;


wobbling = false;
wobble = 0;



wobble_length = 1; // number of cycles to wobble the instance with
                   // only whole numbers are valid - ie: 1, 2, etc
wobble_speed = 2; // valid value range: 0 - 13 (decimals are ok)
wobble_intensity = 1; // the distance multiplier (decimals are ok)


global.light_times = "Day";
global.stepsSincePressed = 0;
global.inv = false;
