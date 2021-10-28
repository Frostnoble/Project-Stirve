/*
Types:
0 - Drop
1 - Overworld Tool
2 - Placeable Object
3 - FATIGUE
4 -
*/



function Item () constructor {
	static constructorname = Item;
	name = "";
	image_id = 0;
	hitlag = 100;
	
}




function Wood () : Item () constructor {
	name = "Wood";
	image_id = 0;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Stone () : Item () constructor {
	name = "Stone";
	image_id = 1;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Knife () : Item () constructor {
	name = "Dull Knife";
	image_id = 2;
	amount = 1;
	type = 1;
	attackPow = 1;
	cuttingPow = 1;
	smashingPow = 1;
	hitlag = 100;
	tool_id = objDullKnife;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Grass () : Item () constructor {
	name = "Grass";
	image_id = 3;
	amount = 1;
	type = 0;
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function RawMeat () : Item () constructor {
	name = "RawMeat";
	image_id = 4;
	amount = 1;
	type = 3;
	hungerFill = 25;
	waterFill = 5;
	fatigueFill = 0;
	effect = new Sick();
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	foodLevel = 1;

	//==========================
	canDry = true;
	DryName = new RottenFood();
	DryImage_id = 41;
	DryTime = timeToFrames(0,2,0);
	DryMult = 1;
	canSpread = false;
	
}

function CookedMeat () : Item () constructor {
	name = "Cooked Meat";
	image_id = 5;
	amount = 1;
	type = 3;
	hungerFill = 40;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	ds_map_add(crafting, new RawMeat(), 1)
	desc = "Finally, food\nthat isn't\nraw!";

		//==========================
	canDry = true;
	DryName = new BeastJerky();
	DryImage_id = 43;
	DryTime = timeToFrames(0,1,0);
	DryMult = 3;
	canSpread = false;
	
}

function Bone () : Item () constructor {
	name = "Bone";
	image_id = 6;
	amount = 1;
	type = 0;
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Rope () : Item () constructor {
	name = "Rope";
	image_id = 7;
	amount = 1;
	type = 0;
	hitlag = 100;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new Grass(), 10)
	desc = "A thick handy\nrope.";
	canDry = false;
	canSpread = false;
}


function FireStarter () : Item () constructor {
	name = "FireStarter";
	image_id = 8;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objCampFire;
	crafting = ds_map_create();
	KP_lock = 5;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 5)
	ds_map_add(crafting, new Rope(), 1)
	desc = "Place this on\nthe ground to\ncreate a\nCampFire.";
	canDry = false;
	canSpread = false;
}

function WorkStation () : Item () constructor {
	name = "WorkStation";
	image_id = 9;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objWorkStation;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 10)
	ds_map_add(crafting, new Rope(), 2)
	desc = "This bench\nwill greatly\nincreasethe\nitems you\ncan craft.";
	canDry = false;
	canSpread = false;
}

function StoneAxe () : Item () constructor {
	name = "StoneAxe";
	image_id = 10;
	amount = 1;
	type = 1;
	attackPow = 3;
	cuttingPow = 3;
	smashingPow = 1;
	hitlag = 100;
	tool_id = objStoneAxe;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 3)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new Stone(), 2)
	desc = "An axe made\nof stone, don't\nexpect much\nfrom it";
	canDry = false;
	canSpread = false;
}

function PlaceHolder () : Item () constructor {
	name = "???";
	image_id = 11;
	amount = 0;
	type = 0;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}




function GrassSeed() : Item () constructor {
	name = "GrassSeed";
	image_id = 12;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objSmallGrass;
	crafting = ds_map_create();
	ds_map_add(crafting, new Grass(), 1)
	KP_lock = 10;
	yeald = 3;
	desc = "Place this on\nthe ground to\nplant new\ngrass.";
	canDry = false;
	canSpread = false;

}

function Pinecone() : Item () constructor {
	name = "Pinecone";
	image_id = 13;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objSapling;
	crafting = ds_map_create();
	KP_lock = 0;
	canDry = false;
	canSpread = false;

}

function FriedMush () : Item () constructor {
	name = "Fried Mush";
	image_id = 14;
	amount = 1;
	type = 3;
	hungerFill = 10;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	ds_map_add(crafting, new Mushroom(), 1)
	desc = "Simple and\neasy to make.\nWon't give you\ngut pain.";

	canDry = false;
	canSpread = false;
	
}



function Mushroom () : Item () constructor {
	name = "Mushroom";
	image_id = 15;
	amount = 1;
	type = 3;
	hungerFill = 10;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	foodLevel = 1;

	canDry = false;
	canSpread = true;
	//Spreadname = new Mushroom();
	SpreadTime = timeToFrames(0,3,0);

	
}

function PoiMushroom () : Item () constructor {
	name = "PoisonMush";
	image_id = 16;
	amount = 1;
	type = 3;
	hungerFill = 10;
	waterFill = 10;
	fatigueFill = 0;
	effect = new Paralyzed();
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	foodLevel = 1;

	canDry = false;
	canSpread = true;
	//Spreadname = new Mushroom();
	SpreadTime = timeToFrames(0,3,0);
}

function BlueMushroom () : Item () constructor {
	name = "BlueMush";
	image_id = 17;
	amount = 1;
	type = 3;
	hungerFill = 0;
	waterFill = 0;
	fatigueFill = 5;
	effect = new Woozy();
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	foodLevel = 1;

	canDry = false;
	canSpread = true;
	//Spreadname = new Mushroom();
	SpreadTime = timeToFrames(0,3,0);
}

function StoneSpade () : Item () constructor {
	name = "StoneSpade";
	image_id = 18;
	amount = 1;
	type = 1;
	attackPow = 2;
	cuttingPow = 1;
	smashingPow = 2;
	hitlag = 100;
	tool_id = objStoneSpade;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 4)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new Stone(), 1)
	desc = "A spade that's\nused for\ndigging up\nstuff.";
	canDry = false;
	canSpread = false;
}

function Sand () : Item () constructor {
	name = "Sand";
	image_id = 19;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Soil () : Item () constructor {
	name = "Soil";
	image_id = 20;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function RawClay () : Item () constructor {
	name = "RawClay";
	image_id = 21;
	amount = 1;
	type = 0;
	hitlag = 100;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new Soil(), 5)
	desc = "A basic material\nfor building\nthings.";
	canDry = false;
	canSpread = false;
}

function StonePickaxe () : Item () constructor {
	name = "StonePick";
	image_id = 22;
	amount = 1;
	type = 1;
	attackPow = 3;
	cuttingPow = 1;
	smashingPow = 3;
	hitlag = 100;
	tool_id = objStonePickaxe;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 10)
	ds_map_add(crafting, new Rope(), 2)
	ds_map_add(crafting, new Stone(), 5)
	desc = "A pickace that\nsmashes stones\nto bits.";
	canDry = false;
	canSpread = false;
}

function RawClayBowl () : Item () constructor {
	name = "UnFiredBowl";
	image_id = 23;
	amount = 1;
	type = 0;
	hitlag = 100;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new RawClay(), 3)
	desc = "Needs to be\nfired to be\nused.";
	canDry = false;
	canSpread = false;
}

function ClayBowl () : Item () constructor {
	name = "RedBowl";
	image_id = 24;
	amount = 1;
	type = 1;
	hitlag = 1;
	tool_id = objBottle;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new RawClayBowl(), 1)
	desc = "Can scoop up\nthings like water.";
	canDry = false;
	canSpread = false;
}

function ClayBowlWater () : Item () constructor {
	name = "SaltWater";
	image_id = 25;
	amount = 1;
	type = 3;
	hungerFill = 0;
	waterFill = 30;
	fatigueFill = -10;
	hitlag = 20;
	tool_id = 0;
	effect = new Sick();
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new  ClayBowl(), 1)
	desc = "Gross Salt\nwater, can this\n be cleaned?";

	canDry = false;
	canSpread = false;

}

function ClayBowlWaterPure () : Item () constructor {
	name = "PureWater";
	image_id = 26;
	amount = 1;
	type = 3;
	hungerFill = 0;
	waterFill = 80;
	fatigueFill = 0;
	hitlag = 20;
	tool_id = 0;
	effect = new Normal();
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new ClayBowlWater(), 1)
	desc = "Gross Salt\nwater, can this\n be cleaned?";

	canDry = false;
	canSpread = false;

}

function WoodenChest () : Item () constructor {
	name = "WoodenChest";
	image_id = 29;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objWoodenChest;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 10)
	ds_map_add(crafting, new Stone(), 1)
	desc = "Can hold up\nto 9 items\nfor you.";
	canDry = false;
	canSpread = false;
}

function GrassBed () : Item () constructor {
	name = "GrassBed";
	image_id = 30;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objGrassBed;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 15)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new Grass(), 20)
	desc = "Interact with\nthis to\nsleep.";
	canDry = false;
	canSpread = false;
}

function FishingRod () : Item () constructor {
	name = "FishingRod";
	image_id = 31;
	amount = 1;
	type = 1;
	attackPow = 0;
	cuttingPow = 0;
	smashingPow = 0;
	hitlag = 100;
	tool_id = objFishingRod;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 2)
	ds_map_add(crafting, new Rope(), 5)
	desc = "A pickace that\nsmashes stones\nto bits.";
	canDry = false;
	canSpread = false;
}

function SmallFish () : Item () constructor {
	name = "SmallFish";
	image_id = 32;
	amount = 1;
	type = 3;
	hungerFill = 5;
	waterFill = 5;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "A small\nocean fish.";

	canDry = false;
	canSpread = false;
	
}

function AverageFish () : Item () constructor {
	name = "AverageFish";
	image_id = 33;
	amount = 1;
	type = 3;
	hungerFill = 10;
	waterFill = 5;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "An average\nocean fish.";

	canDry = false;
	canSpread = false;
	
}

function LargeFish () : Item () constructor {
	name = "LargeFish";
	image_id = 34;
	amount = 1;
	type = 3;
	hungerFill = 15;
	waterFill = 10;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "A large\nocean fish.";

	canDry = false;
	canSpread = false;
	
}

function FriedFishS () : Item () constructor {
	name = "FriedFish";
	image_id = 35;
	amount = 1;
	type = 3;
	hungerFill = 20;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	crafting = ds_map_create();
	ds_map_add(crafting, new SmallFish(), 1)
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "Cooked fish\n,watch out\nfor bones.";

	canDry = false;
	canSpread = false;
	
}

function FriedFishM () : Item () constructor {
	name = "FriedFish";
	image_id = 35;
	amount = 1;
	type = 3;
	hungerFill = 20;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	crafting = ds_map_create();
	ds_map_add(crafting, new AverageFish(), 1)
	KP_lock = 0;
	yeald = 3;
	foodLevel = 1;
	desc = "Cooked fish\n,watch out\nfor bones.";

	canDry = false;
	canSpread = false;
	
}


function FriedFishL () : Item () constructor {
	name = "FriedFish";
	image_id = 35;
	amount = 1;
	type = 3;
	hungerFill = 20;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	crafting = ds_map_create();
	ds_map_add(crafting, new LargeFish(), 1)
	KP_lock = 0;
	yeald = 8;
	foodLevel = 1;
	desc = "Cooked fish\n,watch out\nfor bones.";

	canDry = false;
	canSpread = false;
	
}

function FenceWood () : Item () constructor {
	name = "WoodenFence";
	image_id = 36;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objFenceWood;
	crafting = ds_map_create();
	KP_lock = 5;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 2)
	desc = "Fencing that\ncan protect you\n and your\nthings.";
	canDry = false;
	canSpread = false;
}

function FenceWoodDoor () : Item () constructor {
	name = "FenceDoor";
	image_id = 37;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objFenceWoodDoor;
	crafting = ds_map_create();
	KP_lock = 5;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 3)
	desc = "Fencing that\ncan protect you\n and your\nthings.";
	canDry = false;
	canSpread = false;
}

function StoneStove () : Item () constructor {
	name = "StoneStove";
	image_id = 38;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objStoneStove;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new Stone(), 50)
	ds_map_add(crafting, new FireStarter(), 2)
	desc = "Cook even\nbetter things\nwith this.";
	canDry = false;
	canSpread = false;
}

function BeastPelt () : Item () constructor {
	name = "BeastPelt";
	image_id = 39;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
	
}


function RawPelt () : Item () constructor {
	name = "RawPelt";
	image_id = 40;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	canDry = true;
	//==========================
	DryName = new BeastPelt();
	DryImage_id = 39;
	DryTime = timeToFrames(0,7,0);
	DryMult = 1;
	canSpread = false;

}

function RottenFood() : Item () constructor {
	name = "RottenFood";
	image_id = 41;
	amount = 1;
	type = 3;
	hungerFill = 1;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Sick();
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	foodLevel = 1;
	crafting = ds_map_create();

	canDry = false;
	canSpread = false;
}

function DryingRack () : Item () constructor {
	name = "DryingRack";
	image_id = 42;
	amount = 1;
	type = 2;
	hitlag = 100;
	tool_id = 0;
	Spawn = objDryingRack;
	crafting = ds_map_create();
	KP_lock = 22;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 10)
	ds_map_add(crafting, new Rope(), 5)
	desc = "Place items\non this to\ndry them.";
	canDry = false;
	canSpread = false;
}

function BeastJerky () : Item () constructor {
	name = "BeastJerky";
	image_id = 43;
	amount = 1;
	type = 3;
	hungerFill = 20;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	foodLevel = 1;
	crafting = ds_map_create();

	canDry = false;
	canSpread = false;
	
}

function FishSoup () : Item () constructor {
	name = "FishSoup";
	image_id = 44;
	amount = 1;
	type = 3;
	hungerFill = 45;
	waterFill = 30;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "Tasty fish\n,soup. It's\ngood for you.";
	crafting = ds_map_create();
	ds_map_add(crafting, new Bone(), 1)
	ds_map_add(crafting, new ClayBowlWaterPure(), 1)
	ds_map_add(crafting, new FriedFishS(), 1)

	canDry = false;
	canSpread = false;
	
}

function SchroomSoup () : Item () constructor {
	name = "SchroomSoup";
	image_id = 45;
	amount = 1;
	type = 3;
	hungerFill = 45;
	waterFill = 30;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "Tasty fish\n,soup. It's\ngood for you.";
	crafting = ds_map_create();
	ds_map_add(crafting, new Bone(), 1)
	ds_map_add(crafting, new ClayBowlWaterPure(), 1)
	ds_map_add(crafting, new FriedMush(), 3)

	canDry = false;
	canSpread = false;
	
}

function StoneHoe () : Item () constructor {
	name = "StoneHoe";
	image_id = 46;
	amount = 1;
	type = 1;
	attackPow = 1;
	cuttingPow = 1;
	smashingPow = 1;
	hitlag = 10;
	tool_id = objStoneHoe;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 4)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new Stone(), 1)
	desc = "Can make\ndirt patches\nfor growing plants.";
	canDry = false;
	canSpread = false;
}

function Berries() : Item () constructor {
	name = "Berries";
	image_id = 47
	amount = 1;
	type = 3;
	hungerFill = 10;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 100;
	tool_id = 0;
	hitlag = 100;
	crafting = ds_map_create();
	foodLevel = 1;

	canDry = false;
	canSpread = false;

	
}

function Spear () : Item () constructor {
	name = "Spear";
	image_id = 48;
	amount = 1;
	type = 1;
	attackPow = 4;
	cuttingPow = 0;
	smashingPow = 0;
	hitlag = 100;
	tool_id = objSpear;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}