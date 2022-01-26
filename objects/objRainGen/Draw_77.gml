/// @description Insert description here
// You can write your code in this editor
var old_color = draw_get_color();
surface_set_target( application_surface );
draw_set_alpha( 0.3 ); // 0 = transparent, 1 = opaque
draw_set_color(c_black);
draw_rectangle( 0, 0, window_get_width(), window_get_height() ,0);
draw_set_alpha(1);
draw_set_color( old_color );

surface_reset_target();
