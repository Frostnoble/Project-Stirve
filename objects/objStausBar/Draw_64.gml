/// @description Insert description here
// You can write your code in this editor
if(global.defence > 0){
	draw_sprite(sprArmor,0,x+125, draw_y);
	draw_text(x+126, draw_y-1,"  "+string(global.defence));
}