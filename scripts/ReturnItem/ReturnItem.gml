

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
		
		case 70://BoneNeedle
			addInventory(2,1,new Knife(),objInventory.inventory)
		break;

		case 72://BoneHook
			addInventory(2,1,new Knife(),objInventory.inventory)
		break;
		
		case 85://Basket
			addInventory(2,1,new Knife(),objInventory.inventory)
		break;

		case 104://LightningRod
			addInventory(106,1,new Hammer(),objInventory.inventory)
		break;

	}


}