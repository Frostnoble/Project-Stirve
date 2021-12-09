/// @description Insert description here
// You can write your code in this editor

var y_offset;
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
y_offset = sin(wobble) * wobble_intensity;
x_offset = 0;

if(attacking)
{
	strike += 0.5
	if(strike <= 1.5)
	{
	
		if(bearinFront_x > x) //Right
		{
			x_offset = abs(cos(strike))*8;
		}else if(bearinFront_x < x) //Left
		{
			x_offset = -abs(cos(strike))*8;
		}else if(bearinFront_y > y) //Up
		{
			y_offset = abs(cos(strike))*8;
		}else if(bearinFront_y < y) //Down
		{
			y_offset = -abs(cos(strike))*8;
		}
	}
	
	
	
}



// draw sprite with the x_offset value added relatively
draw_sprite(sprite_index, image_index, x + x_offset, y + y_offset);



