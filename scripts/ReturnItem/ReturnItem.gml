

function ReturnItem(image_id)
{
	switch (image_id)
	{
		case 57://GrilledMeat
			addInventory(24,1,new ClayBowl(),objInventory.inventory)
		break;
		
		case 58://GrilledFish
			addInventory(24,1,new ClayBowl(),objInventory.inventory)
		break;
		
		case 63://BeastTunic
			addInventory(70,1,new BoneNeedle(),objInventory.inventory)
		break;
		
		case 64://BeastHat
			addInventory(70,1,new BoneNeedle(),objInventory.inventory)
		break;

	}


}