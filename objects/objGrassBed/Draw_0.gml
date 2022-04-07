/// @description Insert description here
// You can write your code in this editor
if(checkUnder()){
	if(global.light_times == "Day")
	{
		shader_set(None);
	}
	else if(global.light_times == "Eve")
	{
		shader_set(Evening);
	}
	else if(global.light_times == "Night")
	{
		shader_set(Night);
	}
}
var x_offset;

// has wobbling been initiated?
if wobbling {
    // increase wobble each step
    wobble += wobble_speed;
    }

// has wobbling exceeded the max number of cycles?
if wobble > round(wobble_length) * (pi*2) {
    // stop instance from wobbling
    wobbling = false;
    // reset wobble to zero again
    wobble = 0;
    }

// calculate wobble with a sine wave (0 to 1)
// & then multiply it by its intensity - this
// "wobble_intensity" dictates how many extra
// pixels it will wobble on a horizontal axis
x_offset = sin(wobble) * wobble_intensity;

// draw sprite with the x_offset value added relatively
draw_sprite(sprite_index, image_index, x + x_offset, y);
HPBar(HP,MHP);
shader_reset();

Outline(sprGrassBedFlash);