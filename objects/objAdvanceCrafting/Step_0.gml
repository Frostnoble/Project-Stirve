/// @description Insert description here
// You can write your code in this editor





if(position_meeting(global.inFront_x, global.inFront_y,objCampFire))
{
	objCrafting.recipes = objCampFire.addedRecipes;
	
}

else if(position_meeting(global.inFront_x, global.inFront_y,objStoneStove))
{
	objCrafting.recipes = objStoneStove.addedRecipes;
	
}
else if(position_meeting(global.inFront_x, global.inFront_y,objWorkStation))
{
	
	objCrafting.recipes = objWorkStation.addedRecipes;
		
}
else if(position_meeting(global.inFront_x, global.inFront_y,objWater))
{
	
	objCrafting.recipes = objWater.addedRecipes;
		
}
else
{

	objCrafting.recipes = basicrecipes;

}

//inst = instance_position(global.inFront_x, global.inFront_y,objCampFire)

//show_debug_message(inst);