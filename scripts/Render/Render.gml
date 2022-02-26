// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Render(){

	if(global.saving)
	{
		//show_debug_message("Waiting")
		instance_activate_all();
	}
	else
	{
		instance_deactivate_object(objTree);
		instance_deactivate_object(objTreeSmol);
		//instance_deactivate_object(objSapling);
		instance_deactivate_object(objGrass);
		instance_deactivate_object(objFlowers);
		//instance_deactivate_object(objSmallGrass);
		instance_deactivate_object(objDrop);
		instance_deactivate_object(objBasket);
		//instance_deactivate_object(objItem);
		
		instance_deactivate_object(objCampFire);
		instance_deactivate_object(objWorkStation);
		instance_deactivate_object(objRabbit);
		instance_deactivate_object(objwolf);
		instance_deactivate_object(objPot);
		instance_deactivate_object(objWater);
		//instance_deactivate_object(objPond);
		instance_deactivate_object(objWaterPond);
		//instance_deactivate_object(objSmallBush);
		//instance_deactivate_object(objBush);
		instance_deactivate_object(objBerryBush);
		instance_deactivate_object(objKiln);
		instance_deactivate_object(objFieldStove);
		instance_deactivate_object(objGrassBed);
		
		
		var xview = camera_get_view_x(view_camera[0]);
		var yview = camera_get_view_y(view_camera[0]);
		var wview = camera_get_view_width(view_camera[0]);
		var hview = camera_get_view_height(view_camera[0]);

		instance_activate_region(xview - 64, yview - 64, wview + 128, hview + 128, true);
	}


	
}
//objPlayer.x