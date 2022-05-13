// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerMove()
{
	switch(global.Avatar)
	{
		case 0: 
			return sprBoy1;
		break;
		case 1: 
			return sprGirl1;
		break;
		default:
			return sprBoy1;
		break;
	}
}
function playerAttack()
{
	switch(global.Avatar)
	{
		case 0: 
			return sprBoy1Attack;
		break;
		case 1: 
			return sprGirl1Attack;
		break;
		default:
			return sprBoy1Attack;
		break;
	}
}
function playerExtra()
{
	switch(global.Avatar)
	{
		case 0: 
			return sprBoy1Extra;
		break;
		case 1: 
			return sprGirl1Extra;
		break;
		default:
			return sprBoy1Extra;
		break;
	}
}

function playerDeath()
{
	switch(global.Avatar)
	{
		case 0: 
			return sprBoy1Death;
		break;
		case 1: 
			return sprGirl1Death;
		break;
		default:
			return sprBoy1Death;
		break;
	}
}
function playerSoul()
{
	switch(global.Avatar)
	{
		case 0: 
			return sprBoy1Soul;
		break;
		case 1: 
			return sprGirl1Soul;
		break;
		default:
			return sprBoy1Soul;
		break;
	}
}
