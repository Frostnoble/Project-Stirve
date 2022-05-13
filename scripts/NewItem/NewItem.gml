// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewItem(id){

	switch (id)
	{
		case 0:
			return new Wood();
		break;
		case 1: 
			return new Stone();
		break;
		case 2: 
			return new Knife();
		break;

		case 3: 
			return new Grass();
		break;
		case 4: 
			return new RawMeat();
		break;
		case 5:
			return new CookedMeat();
		break;
		case 6:
			return new Bone();
		break;
		case 7: 
			return new Rope();
		break;
		case 8: 
			return new FireStarter();
		break;
		case 9: 
			return new WorkStation();
		break;		
		case 10: 
			return new StoneAxe();
		break;
		//IREM 11 IS PLACEHOLDER
		case 12: 
			return new GrassSeed();
		break;	
		case 13: 
			return new Pinecone();
		break;	
		case 14: 
			return new FriedMush();
		break;	
		case 15: 
			return new Mushroom()
		break;	
		case 16: 
			return new PoiMushroom();
		break;	
		case 17: 
			return new BlueMushroom();
		break;	
		case 18: 
			return new StoneSpade();
		break;	
		case 19: 
			return new Sand();
		break;
		case 20: 
			return new Soil();
		break;
		case 21: 
			return new RawClay();
		break;
		case 22: 
			return new StonePickaxe();
		break;
		case 23: 
			return new RawClayBowl();
		break;
		case 24: 
			return new ClayBowl();
		break;
		case 25: 
			return new ClayBowlWater();
		break;
		case 26: 
			return new ClayBowlWaterPure();
		break;
		case 27: 
			return new RawClayPot();
		break;		
		case 28: 
			return new ClayPot();
		break;
		case 29: 
			return new WoodenChest();
		break;
		case 30: 
			return new GrassBed();
		break;
		case 31: 
			return new FishingRod();
		break;
		case 32: 
			return new SmallFish();
		break;
		case 33: 
			return new AverageFish();
		break;
		case 34: 
			return new LargeFish();
		break;
		case 35: 
			return new FriedFishS();
		break;
		case 36: 
			return new FenceWood();
		break;
		case 37: 
			return new FenceWoodDoor();
		break;
		case 38: 
			return new Kiln();
		break;
		case 39: 
			return new BeastPelt();
		break;
		case 40: 
			return new RawPelt();
		break;
		case 41: 
			return new RottenFood();
		break;
		case 42: 
			return new DryingRack();
		break;
		case 43: 
			return new BeastJerky();
		break;
		case 44: 
			return new FishSoup();
		break;
		case 45: 
			return new SchroomSoup();
		break;
		case 46: 
			return new StoneHoe();
		break;
		case 47: 
			return new Berries();
		break;
		case 48: 
			return new Spear();
		break;
		case 49: 
			return new UnFiredBrick();
		break;
		case 50: 
			return new Brick();
		break;
		case 51: 
			return new WoodenBowl();
		break;
		case 52: 
			return new WoodBowlWater();
		break;
		case 53: 
			return new WoodBowlWaterPure();
		break;
		case 54: 
			return new FieldStove();
		break;
		case 55: 
			return new ClayBowlAnimalFat();
		break;
		case 56: 
			return new ClayBowlOil();
		break;
		case 57: 
			return new GrilledMeat();
		break;
		case 58: 
			return new GrilledFishS();
		break;
		case 59: 
			return new TreeBark();
		break;
		case 60: 
			return new Seaweed();
		break;
		case 61: 
			return new SeaShell();
		break;
		case 62: 
			return new DriedSeaWeed();
		break;
		case 63: 
			return new BeastTunic()
		break;
		case 64: 
			return new BeastHat();
		break;
		case 65: 
			return new Ash();
		break;
		case 66: 
			return new Honey();
		break;
		case 67: 
			return new WoodBowlJuice();
		break;
		case 68: 
			return new ClayBowlJuice();
		break;
		case 69: 
			return new PrePit();
		break;
		case 70: 
			return new BoneNeedle();
		break;
		case 71: 
			return new BeeBox();
		break;
		case 72: 
			return new BoneHook();
		break;
		case 73: 
			return new Torch();
		break;
		case 74: 
			return new ShellMusic();
		break;
		case 75: 
			return new Hibiscus_Pink()
		break;		
		case 76: 
			return new Hibiscus_Yellow()
		break;		
		case 77: 
			return new Hibiscus_Purple()
		break;		
		case 78: 
			return new Hibiscus_Orange()
		break;		
		case 79: 
			return new Hibiscus_Red()
		break;		
		case 80: 
			return new HibiscusSeedP()
		break;		
		case 81: 
			return new HibiscusSeedY()
		break;		
		case 82: 
			return new HibiscusSeedPu()
		break;
		case 83: 
			return new HibiscusSeedO()
		break;
		case 84: 
			return new HibiscusSeedR()
		break;
		case 85: 
			return new Basket();
		break;
		case 86: 
			return new BrokenRadio()
		break;
		case 87: 
			return new Radio();
		break;
		case 88: 
			return new RawCopper();
		break;
		case 89: 
			return new RawTin();
		break;
		case 90: 
			return new RawIron();
		break;
		case 91: 
			return new RawGold();
		break;
		case 92: 
			return new Lodestone();
		break;
		case 93: 
			return new Copper();
		break;
		case 94: 
			return new Tin();
		break;
		case 95: 
			return new Iron();
		break;
		case 96: 
			return new Gold();
		break;
		case 97: 
			return new Limedust();
		break;
		case 98: 
			return new Bellows();
		break;
		case 99: 
			return new Compass();
		break;
		case 100: 
			return new BaseballBat();
		break;
		case 101: 
			return new Medication();
		break;
		case 102: 
			return new Suitcase();
		break;
		case 103: 
			return new Bronze();
		break;
		case 104: 
			return new LightningRod();
		break;
		case 105: 
			return new SmithingTable();
		break;
		case 106: 
			return new Hammer();
		break;
		case 107: 
			return new CrudeCompass();
		break;
		
		case 108: 
			return new BlankMold();
		break;		
		case 109: 
			return new AxeMold();
		break;		
	
		case 110: 
			return new HookMold();
		break;		
		case 111: 
			return new HoeMold();
		break;
		case 112: 
			return new SpadeMold();
		break;
		case 113: 
			return new PickAxeMold();
		break;
		case 114: 
			return new RodMold();
		break;
		
		case 115: 
			return new BronzeAxe();
		break;
		case 116: 
			return new BronzeHook();
		break;
		case 117: 
			return new BronzeHoe();
		break;
		case 118: 
			return new BronzeSpade();
		break;
		case 119: 
			return new BronzePick();
		break;
		case 120: 
			return new BronzeRod();
		break;
		case 121: 
			return new BronzeFishingRod();
		break;
	}

}