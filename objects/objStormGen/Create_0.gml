/// @description Insert description here
// You can write your code in this editor
timer = 0;
global.lightning = false;
image_speed = 0.2;
rain_system = part_system_create();
part_system_depth(rain_system ,-1);

partRain = part_type_create();
part_type_shape(partRain,pt_shape_line);
part_type_alpha2(partRain,1,1);
part_type_size(partRain,0.1,0.1,0,0);
part_type_color2(partRain,c_aqua,c_blue);
part_type_direction(partRain,250,250,0,0);
part_type_orientation(partRain,250,250,0,0,0);
part_type_speed(partRain,7,9,0,0);
part_type_life(partRain,100,1200);

emitterRain = part_emitter_create(rain_system);
//part_emitter_region(rain_system,emitterRain,xview,xview+wview,yview,yview+hview,ps_shape_rectangle,ps_distr_linear);
part_emitter_region(rain_system,emitterRain,0,room_width,0,0,ps_shape_rectangle,ps_distr_linear);
alarm[0] = 1;

