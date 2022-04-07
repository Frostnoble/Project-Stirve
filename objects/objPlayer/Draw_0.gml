/// @description Insert description here
// You can write your code in this editor
//draw_text(0, 0, string(global.equip.name));
draw_self();
image_alpha = 1;
if(global.gamemode == 0){
	if(global.status.name == "Sick")
	{
		draw_sprite(sprStatus,3,x,y-16);
	}
	if(global.status.name == "Par")
	{
		draw_sprite(sprStatus,2,x,y-16);
	}
	if(global.status.name == "Woozy")
	{
		draw_sprite(sprStatus,4,x,y-16);
	}
	if(objTimeSystem.MILhours2 == 22 && (objTimeSystem.minutes2 >= 0 && objTimeSystem.minutes2 <= 30))
	{
		draw_sprite(sprStatus,0,x,y-16);
	}
	if(objTimeSystem.MILhours2 == 1 && (objTimeSystem.minutes2 >= 0 && objTimeSystem.minutes2 <= 30))
	{
		draw_sprite(sprStatus,1,x,y-16);
	}

}

if(global.inv && floor(current_time/100)%2 == 0)
{ 
	image_alpha = 0.5;
}


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
