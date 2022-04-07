/// @description Insert description here
// You can write your code in this editor
if(global.underground)
{
	if(surface_exists(surface))
	{
		var xview = camera_get_view_x(view_camera[0]);
		var yview = camera_get_view_y(view_camera[0]);
		var wview = camera_get_view_width(view_camera[0]);
		var hview = camera_get_view_height(view_camera[0]);

		surface_set_target(surface);
		draw_set_color(c_black);
		draw_set_alpha( 0.95); // 0 = transparent, 1 = opaque
		draw_rectangle( 0, 0, wview, hview ,0);


		gpu_set_blendmode(bm_subtract);
		with(objPlayer)
		{
			draw_circle_color(x-xview+8,y-yview+8,50,c_white,c_white,false);
		
		
		}
		with(objTorch)
		{
			draw_circle_color(x-xview+8,y-yview+8,30,c_white,c_white,false);
		
		
		}
		with(objCampFire)
		{
			draw_circle_color(x-xview+8,y-yview+8,30,c_white,c_white,false);
		
		
		}
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		surface_reset_target();
		draw_surface(surface,xview,yview);
	}

	if(!surface_exists(surface))
	{
		var wview = camera_get_view_width(view_camera[0]);
		var hview = camera_get_view_height(view_camera[0]);
	
		surface = surface_create(wview,hview);
		surface_set_target(surface);
		draw_set_color(c_black);
		draw_set_alpha( 0.6 ); // 0 = transparent, 1 = opaque
		draw_rectangle( 0, 0, wview, hview ,0);
		surface_reset_target();
	}

}