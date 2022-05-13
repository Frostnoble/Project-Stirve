

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
		
		case 107://crudecompas
			addInventory(106,1,new Hammer(),objInventory.inventory)
		break;
		
		case 109://AxeMold
			addInventory(10,1,new StoneAxe(),objInventory.inventory)
		break;
		
		case 110://HookMold
			addInventory(72,1,new BoneHook(),objInventory.inventory)
		break;
		
		case 111://HoeMold
			addInventory(46,1,new StoneHoe(),objInventory.inventory)
		break;
		
		case 112://SpadeMold
			addInventory(18,1,new StoneSpade(),objInventory.inventory)
		break;
		
		case 113://PickAxeMold
			addInventory(22,1,new StonePickaxe(),objInventory.inventory)
		break;
		
		case 114://RodMold
			addInventory(6,1,new Bone(),objInventory.inventory)
		break;
	}


}