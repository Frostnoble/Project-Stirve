/// @description Insert description here
// You can write your code in this editor
grid_x = 0;
grid_y = 0;
wait = 0;
xLetters = 18;
nameLimit = 7;
yLetters = 4;

letterString = "ABCDEFGHIJKLM 0123NOPQRSTUVWXYZ 4567abcdefghijklm 89!?nopqrstuvwxyz ,': ";

charcount = 1;
currentName = "";
switch(global.Avatar)
{
	case 0:
		currentName = "Terry";
	break;
	
	case 1:
		currentName = "Amber";
	break;
	
	case 2:
		currentName = "Zackary";
	break;
	
	case 3:
		currentName = "Lucia";
	break;
}


for(var yy = 0; yy < yLetters; yy++;)
{
	for(var xx = 0; xx < xLetters; xx++;)
	{
		if(charcount <= 71)
		{
			a_Letters[xx,yy] = string_char_at(letterString,charcount)
		}
		else if (charcount == 72)
		{
			a_Letters[xx,yy] = "END"
			
		}

		charcount++;
	}

}
