/// @description Insert description here
// You can write your code in this editor
if(global.startType == 0){
	if(i < iMax){
		for(var j = 0; j < jMax; j++)
		{
			rand = irandom(1000);
			ds_grid_add(global.world, i, j, rand);
			percent++;
	
		}
	}
	i++;
	if(i >= iMax){rungame = true;}
}
else if(global.startType == 1){
	
	rungame = true;
}