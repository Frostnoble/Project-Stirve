

function GiveItem(item_drop)
{
	switch (item_drop.image_id)
	{
		case 4: //RawMeat
			pitchRandomizer(sfxSick,10,false);
			addInventory(6,1,new Bone(),objInventory.inventory);
		break;
			
		case 5: //CookedMeat
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,1,new Bone(),objInventory.inventory);
		break;
			
		case 14://Fried Mush
			pitchRandomizer(sfxHeal,10,false);
		break;
				
		case 15://Mushroom
			pitchRandomizer(sfxHeal,10,false);
		break;
						
		case 16://Poimush
			pitchRandomizer(sfxSick,10,false);
		break;
						
		case 17://bluemush
			pitchRandomizer(sfxSick,10,false);	
		break;
						
		case 25://saltwater Clay
			pitchRandomizer(sfxDrink,10,false);
			addInventory(24,1,new ClayBowl(),objInventory.inventory)
		break;
						
		case 26://purewater clay
			pitchRandomizer(sfxDrink,10,false);
			addInventory(24,1,new ClayBowl(),objInventory.inventory)
		break;
						
		case 32://small fish
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,1,new Bone(),objInventory.inventory);
		break;
						
		case 33://Average fish
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,2,new Bone(),objInventory.inventory);
		break;
						
		case 34://large fish
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,3,new Bone(),objInventory.inventory);
		break;
						
		case 35://FriedFish
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,2,new Bone(),objInventory.inventory);
		break;
			
		case 41://Rottenfood
			pitchRandomizer(sfxSick,10,false);	
		break;
						
		case 43://BeastJerky
			pitchRandomizer(sfxHeal,10,false);	
		break;
						
		case 44://FishSoup
			pitchRandomizer(sfxDrink,10,false);
			addInventory(24,1,new ClayBowl(),objInventory.inventory)	
		break;
						
		case 45://MushSoup
			pitchRandomizer(sfxDrink,10,false);
			addInventory(24,1,new ClayBowl(),objInventory.inventory)
		break;
						
		case 47://Berries
			pitchRandomizer(sfxHeal,10,false);
		break;
		
		case 52://Saltwater Wood
			pitchRandomizer(sfxDrink,10,false);
			addInventory(51,1,new WoodenBowl(),objInventory.inventory)
		break;
		
		case 53://PureWater Wood
			pitchRandomizer(sfxDrink,10,false);
			addInventory(51,1,new WoodenBowl(),objInventory.inventory)
		break;
		
		case 57://GrilledMeat
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,1,new Bone(),objInventory.inventory);
		break;
		
		case 58://GrilledFish
			pitchRandomizer(sfxHeal,10,false);
			addInventory(6,1,new Bone(),objInventory.inventory);
			
		case 60://SeaWeed
			pitchRandomizer(sfxHeal,10,false);
		break;
		
		case 62://Dried SeaWeed
			pitchRandomizer(sfxHeal,10,false);
		break;
	}


}