/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black);
draw_set_font(Gameboy);
draw_set_halign(fa_center);
x1 = room_width/2 - 40
y1 = room_height/4 + 10
x2 = room_width/2 + 40
y2 = room_height/4 + 10


draw_text(room_width/2, room_height/4,"LOADING " + string(ceil(percent/(iMax*jMax)*100))+ "%");
draw_set_colour(c_gray);
draw_rectangle(x1,y1,x1+(x2-x1)*(1),y2,0);
draw_set_colour(c_black);
draw_rectangle(x1,y1,x1+(x2-x1)*(percent/(iMax*jMax)),y2,0);

if(rungame){
	draw_set_halign(fa_left);
	audio_stop_sound(musTitle)
	
	global.gamemode = 0;
	room_goto(OverWorld);
	

}

