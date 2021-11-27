/// @description Insert description here
// You can write your code in this editor
//draw_text(0, 0, string(global.equip.name));
draw_self();
image_alpha = 1;
if(global.status.name == "Sick")
{
	draw_sprite(sprStatus,3,x,y-16);
}
if(global.status.name == "Par")
{
	draw_sprite(sprStatus,2,x,y-16);
}
if(global.status.name == "Woozy")
{
	draw_sprite(sprStatus,4,x,y-16);
}
if(objTimeSystem.MILhours2 == 22 && (objTimeSystem.minutes2 >= 0 && objTimeSystem.minutes2 <= 30))
{
	draw_sprite(sprStatus,0,x,y-16);
}
if(objTimeSystem.MILhours2 == 1 && (objTimeSystem.minutes2 >= 0 && objTimeSystem.minutes2 <= 30))
{
	draw_sprite(sprStatus,1,x,y-16);
}



if(global.inv && floor(current_time/100)%2 == 0)
{ 
	image_alpha = 0.5;
}
