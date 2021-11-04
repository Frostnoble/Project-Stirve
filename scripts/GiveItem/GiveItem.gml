

function GiveItem(item_drop)
{
	switch (item_drop.name)
	{
		case "RawMeat":
			pitchRandomizer(sfxSick,10,false);
			addInventory(6,1,new Bone(),objInventory.inventory);
		break;
			
		case "Cooked Meat":
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,1,new Bone(),objInventory.inventory);
		break;
			
		case "Fried Mush":
			pitchRandomizer(sfxHeal,10,false);
		break;
				
		case "Mushroom":
			pitchRandomizer(sfxHeal,10,false);
		break;
						
		case "PoisonMush":
			pitchRandomizer(sfxSick,10,false);
		break;
						
		case "BlueMush":
			pitchRandomizer(sfxSick,10,false);	
		break;
						
		case "SaltWater":
			pitchRandomizer(sfxDrink,10,false);
			addInventory(24,1,new ClayBowl(),objInventory.inventory)
		break;
						
		case "PureWater":
			pitchRandomizer(sfxDrink,10,false);
			addInventory(24,1,new ClayBowl(),objInventory.inventory)
		break;
						
		case "SmallFish":
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,1,new Bone(),objInventory.inventory);
		break;
						
		case "AverageFish":
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,2,new Bone(),objInventory.inventory);
		break;
						
		case "LargeFish":
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,3,new Bone(),objInventory.inventory);
		break;
						
		case "FriedFish":
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,2,new Bone(),objInventory.inventory);
		break;
			
		case "RottenFood":
			pitchRandomizer(sfxSick,10,false);	
		break;
						
		case "BeastJerky":
			pitchRandomizer(sfxHeal,10,false);	
		break;
						
		case "FishSoup":
			pitchRandomizer(sfxDrink,10,false);
			addInventory(24,1,new ClayBowl(),objInventory.inventory)	
		break;
						
		case "SchroomSoup":
			pitchRandomizer(sfxDrink,10,false);
			addInventory(24,1,new ClayBowl(),objInventory.inventory)
		break;
						
		case "Berries":
			pitchRandomizer(sfxHeal,10,false);
		break;
		
		case "BadWater":
			pitchRandomizer(sfxDrink,10,false);
			addInventory(51,1,new WoodenBowl(),objInventory.inventory)
		break;
	}


}