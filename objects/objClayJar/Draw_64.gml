/// @description Insert description here
// You can write your code in this editor
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

if(global.gamemode == 4 && global.inFront_x == x && global.inFront_y == y)
{
	
	//Draw Inventory
	draw_sprite_stretched(sprBox,
		0,
		100,
		84,
		rowlength*20,
		(((INVENT_SLOT-1) div rowlength) + 1)*20
	);
	
	//Draw Outlines
	for(var i = 0; i < INVENT_SLOT; i += 1)
	{
		var xx = 144 + (i mod rowlength) * 18 - 41;
		var yy = 0 + (i div rowlength) * 18 + 3 +84;
		draw_sprite(sprSlot,0,xx,yy);

	}
	
	//Draw Items
	for(var i = 0; i < ds_list_size(objInventory.inventory); i += 1)
	{
		var xx = 144 + (i mod rowlength) * 18 - 41;
		var yy = 0 + (i div rowlength) * 18 + 3 +84;
		if (objInventory.inventory[| i] != -1)
		{
	
			draw_sprite(sprItems,objInventory.inventory[| i].image_id,xx+1,yy+1);
			if(objInventory.inventory[| i].amount != 1)
			{
				
				draw_text(xx+2,yy,string(objInventory.inventory[| i].amount))
				
			}
		}
	}


	
	//Draw Storage
	draw_sprite_stretched(sprBox,
		0,
		100,
		84-64,
		rowlength*20,
		(((9-1) div rowlength) + 1)*20
	);
	
	//Draw Storage Outlines
	for(var i = 0; i < 9; i += 1)
	{
		var xx = 144 + (i mod rowlength) * 18 - 41;
		var yy = -64 + (i div rowlength) * 18 + 3 +84;
		draw_sprite(sprSlot,0,xx,yy);

	}
	//Draw Storage Items
	for(var j = 0; j < ds_list_size(storage); j += 1)
	{
		var xx = 144 + (j mod rowlength) * 18 - 41;
		var yy = -64 + (j div rowlength) * 18 + 3 +84;
		if (storage[| j] != -1)
		{
	
			draw_sprite(sprItems,storage[| j].image_id,xx+1,yy+1);
			if(storage[| j].amount != 1)
			{
				
				draw_text(xx+2,yy,string(storage[| j].amount))
				
			}
		}
	}

		if(modetype)
	{
			//Draw selector
		for(var i = 0; i < ds_list_size(objInventory.inventory); i += 1)
		{
			var xx = 144 + (i mod rowlength) * 18 - 41;
			var yy = 0 + (i div rowlength) * 18 + 3 +84;
			if(storage_selector == objInventory.inventory[| i])
			{
				draw_sprite(sprEquip,0,xx+1,yy+1);
			}

		}
	}
	else
	{
		//Draw selector
		for(var i = 0; i < ds_list_size(storage); i += 1)
		{
			var xx = 144 + (i mod rowlength) * 18 - 41;
			var yy = -64 + (i div rowlength) * 18 + 3 +84;
			if(storage_selector == storage[| i])
			{
				draw_sprite(sprEquip,0,xx+1,yy+1);
			}

		}
	}
	

}

