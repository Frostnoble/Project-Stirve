/// @description Insert description here
// You can write your code in this editor
//Render();
KeyGet();


if(!stunned && global.gamemode = 0)
{

if(xTarg == x and yTarg == y and !attacking){
	move_xinput = 0;
	move_yinput = 0;
 
	if(point_distance(x,y,objPlayer.x,objPlayer.y))
	{
		if(HP < MHP)
		{
			direction = point_direction(x,y,objPlayer.x,objPlayer.y); //Move Towards
			this_angle = round(direction/90)*90;
		}		
		else
		{
			direction = irandom(3);
			this_angle = direction*90;
		}
	}
	else
	{
		direction = irandom(3);
		this_angle = direction*90;
	}

	
	if(irandom(waittime) == 0){
	

	move_xinput += lengthdir_x(1, this_angle);
	move_yinput += lengthdir_y(1, this_angle);
	}
	
	
	
	if(point_distance(0,0,move_xinput,move_yinput) > 0){
		
		move_dir = point_direction(0,0,move_xinput,move_yinput);

		xTarg = round((x+lengthdir_x(TILE_W,move_dir)) / 16) * 16
		yTarg = round((y+lengthdir_y(TILE_H,move_dir)) / 16) * 16
			
		

		
		
		if(place_meeting(xTarg,yTarg,objColl)){
			if(!place_meeting(xTarg,y,objColl)){yTarg = y}
			else if(!place_meeting(x,yTarg,objColl)){xTarg = x}
			else{xTarg = x; yTarg = y}
		}

		

		
		


	}
}else{
	x += spd * sign(xTarg-x)
	y += spd * sign(yTarg-y)
	frame += 0.1
		
}

depth = room_height - y



frame = frame mod 2
dir = move_dir / 45
	
image_index = (dir) + floor(frame)
}


bearinFront_x = round((x+lengthdir_x(TILE_W*spd,move_dir)) / 16) * 16;
bearinFront_y = round((y+lengthdir_y(TILE_H*spd,move_dir)) / 16) * 16;

if(place_meeting(x,y,ToolChecker(global.equip.tool_id)) && global.equip.type == 1 && !stunned){
    pitchRandomizer(sfxHurtBeast,10,false);
	
	HP = HP - global.equip.attackPow;
	pitchRandomizer(sfxGrowlBear,10,false);
	wobbling = true;
	stunned = true;
	waittime -= 10;
	image_index = 8;
	alarm[0] = 30;
	alarm[1] = 300;
}

if(place_meeting(xTarg,yTarg,objPlayer) && !stunned){
	xTarg = x; 
	yTarg = y;
	
	if(!global.inv && global.defence < 65)
	{
		pitchRandomizer(sfxHurt,10,false);
		if(global.HEALTH - 65 + global.defence < 0){global.HEALTH = 0}else{global.HEALTH -= 65 + global.defence}
		objPlayer.hurtFrames = 30;
	}
	
	attacking = true;
	alarm[2] = 35;
}

if(place_meeting(xTarg,yTarg,objPlayer) && !attacking){
	if(!place_meeting(xTarg,y,objPlayer)){yTarg = y}
	else if(!place_meeting(x,yTarg,objPlayer)){xTarg = x}
	else{xTarg = x; yTarg = y}
}



var _inst = instance_place(bearinFront_x ,bearinFront_y, objRabbit);
if (_inst != noone && irandom(100) <= 30)
{
    if(HP < MHP){HP++;}else{HP = MHP;}
	attacking = true;
	alarm[2] = 30;
    with(_inst){HP -= 65;}
}

var _inst = instance_place(bearinFront_x ,bearinFront_y, objwolf);
if (_inst != noone && irandom(100) <= 30)
{
    if(HP < MHP){HP++;}else{HP = MHP;}
	attacking = true;
	alarm[2] = 30;
    with(_inst){HP -= 65;}
}

var _inst = instance_place(bearinFront_x ,bearinFront_y, objFenceWood);
if (_inst != noone)
{
    if(HP < MHP){HP++;}else{HP = MHP;}
	attacking = true;
	alarm[2] = 30;
    with(_inst){HP -= 65;}
}

var _inst = instance_place(bearinFront_x ,bearinFront_y, objFenceWoodDoor);
if (_inst != noone)
{
    if(HP < MHP){HP++;}else{HP = MHP;}
	attacking = true;
	alarm[2] = 30;
    with(_inst){HP -= 65;}
}

var _inst = instance_place(bearinFront_x ,bearinFront_y, objTree);
if (_inst != noone)
{
    if(HP < MHP){HP++;}else{HP = MHP;}
	attacking = true;
	alarm[2] = 30;
    with(_inst){HP -= 65;}
}

var _inst = instance_place(bearinFront_x ,bearinFront_y, objTreeSmol);
if (_inst != noone && attacking)
{
    if(HP < MHP){HP++;}else{HP = MHP;}
	attacking = true;
	alarm[2] = 30;
    with(_inst){HP -= 65;}
}



if(HP <= 0)
{
	pitchRandomizer(sfxBreak,11,false);
	with(instance_create_layer(x, y, "Instances", objDrop)){
		ID = 4;
		NUM = 1;
		DROP = new RawMeat();
	}
	
	with(instance_create_layer(x, y, "Instances", objDrop)){
		ID = 40;
		NUM = 2;
		DROP = new RawPelt();
	}
	if(global.KP + KP >= global.MAX_KP){global.KP = global.MAX_KP;}else{global.KP += KP}
	objPlayer.alarm[0] = 1;
	instance_destroy();
}

//direction = point_direction(x,y,objPlayer.x,objPlayer.y); // Chase
//direction = point_direction(x,y,objPlayer.x,objPlayer.y); // Run
//direction = irandom(3);
//this_angle = round(direction/90)*90;