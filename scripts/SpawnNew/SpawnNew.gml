// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnNewRabbit(){

	var i = irandom(room_width);
	var j = irandom(room_height);
	var x_spawn = (i * 16);
	var y_spawn = (j * 16);
	if(instance_number(objRabbit) <= 150)
	{
		if((x_spawn > 150 && x_spawn < room_width -150) && (y_spawn > 150 && y_spawn < room_height -150) && place_empty(x_spawn,y_spawn))
		{
			instance_create_layer(x_spawn,y_spawn, "Instances", objRabbit);
		}
		else
		{
			SpawnNewRabbit();
		}
		
	}
}

function SpawnNewWolf(){
	if(instance_number(objwolf) <= 150)
	{
		if((x_spawn > 150 && x_spawn < room_width -150) && (y_spawn > 150 && y_spawn < room_height -150) && place_empty(x_spawn,y_spawn))
		{
			instance_create_layer(x_spawn,y_spawn, "Instances", objwolf);
		}
		else
		{
			SpawnNewWolf();
		}
		
	}
	

}