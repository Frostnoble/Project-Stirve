

function ToolChecker(tool_id)
{
	switch (tool_id)
	{
		case 0: //Nothing
			return false;
		break;
		case 1: //DullKnife
			return objDullKnife;
		break;
		case 2: //StoneAxe
			return objStoneAxe;
		break;
		case 3: //StoneSpade
			return objStoneSpade;
		break;
		case 4: //StonePickaxe
			return objStonePickaxe;
		break;
		case 5: //Bottle
			return objBottle;
		break;
		case 6: //FishingRod
			return objFishingRod;
		break;
		case 7: //StoneHoe
			return objStoneHoe;
		break;
		case 8: //Spear
			return objSpear;
		break;
		case 9: //BottleWood
			return objBottleWood;
		break;
		case 10: //BeastTunic
			return objBeastTunic;
		break;
		case 11: //FireStarter
			return objFire;
		break;		
		case 12: //BeastHat
			return objBeastHat;
		break;
		case 13: //ShellFlute
			return objShellMusic;
		break;
		case 14: //BaseBallBat
			return objBaseballBat;
		break;
		
		case 15: //BronzeAxe
			return objBronzeAxe
		break;		
		case 16: //BronzePickAxe
			return objBronzePickaxe
		break;		
		case 17: //BronzeSpade
			return objBronzeSpade
		break;		
		case 18: //BronzeHoe
			return objBronzeHoe
		break;		
		case 19: //BronzeFishing
			return objBronzeFishingRod;
		break;
		
		
	}


}