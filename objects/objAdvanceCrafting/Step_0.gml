/// @description Insert description here
// You can write your code in this editor





if(position_meeting(global.inFront_x, global.inFront_y,objCampFire))
{
	objCrafting.recipes = objCampFire.addedRecipes;
	 
	
}

else if(position_meeting(global.inFront_x, global.inFront_y,objFieldStove))
{
	objCrafting.recipes = objFieldStove.addedRecipes;
	
	
}
else if(position_meeting(global.inFront_x, global.inFront_y,objSmithingTable))
{
	objCrafting.recipes = objSmithingTable.addedRecipes;
	
	
}
else if(position_meeting(global.inFront_x, global.inFront_y,objKiln))
{
	objCrafting.recipes = objKiln.addedRecipes;
	
}
else if(position_meeting(global.inFront_x, global.inFront_y,objKiln2))
{
	objCrafting.recipes = objKiln2.addedRecipes;
	
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