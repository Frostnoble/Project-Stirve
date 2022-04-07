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
	hitlag = 75;
	crafting = ds_map_create();
	
}




function Wood () : Item () constructor {
	name = "Wood";
	image_id = 0;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Stone () : Item () constructor {
	name = "Flint";
	image_id = 1;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Knife () : Item () constructor {
	name = "Dull Knife";
	image_id = 2;
	amount = 1;
	type = 1;
	dura = max;
	dura_max = max;
	attackPow = 1;
	cuttingPow = 1;
	smashingPow = 1;
	hitlag = 75;
	tool_id = 1;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Grass () : Item () constructor {
	name = "Grass";
	image_id = 3;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
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
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
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
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	ds_map_add(crafting, new RawMeat(), 1)
	desc = "Finally, food that isn't raw!";
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 4)
	madeWith = 2 // CampFire

		//==========================
	canDry = true;
	DryName = new BeastJerky();
	DryImage_id = 43;
	DryTime = timeToFrames(1,0,0);
	DryMult = 3;
	canSpread = false;
	
}

function Bone () : Item () constructor {
	name = "Bone";
	image_id = 6;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Rope () : Item () constructor {
	name = "Rope";
	image_id = 7;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new Grass(), 10)
	desc = "A thick handy rope.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 3)
	madeWith = 0 // Hand
}


function FireStarter() : Item () constructor {
	name = "FireStarter";
	image_id = 8;
	amount = 1;
	type = 1;
	dura = 3;
	dura_max = 3;
	hitlag = 75;
	crafting = ds_map_create();
	KP_lock = 5;
	yeald = 1;
	attackPow = 1;
	cuttingPow = 1;
	smashingPow = 1;
	hitlag = 75;
	tool_id = 11;
	ds_map_add(crafting, new Wood(), 4)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new TreeBark(), 1)
	desc = "Place this on the ground to create a CampFire.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7,59)
	madeWith = 0 // Hand
}

function WorkStation () : Item () constructor {
	name = "WorkStation";
	image_id = 9;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objWorkStation;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 10)
	ds_map_add(crafting, new Rope(), 2)
	desc = "Place this to craft new things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7)
	madeWith = 0 // Hand
}

function StoneAxe () : Item () constructor {
	name = "FlintAxe";
	image_id = 10;
	amount = 1;
	type = 1;
	dura = 50;
	dura_max = 50;
	attackPow = 3;
	cuttingPow = 3;
	smashingPow = 1;
	hitlag = 75;
	tool_id = 2;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 3)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new Stone(), 2)
	desc = "An axe made of stone, don't expect much from it";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7,1)
	madeWith = 1 // Work
}

function PlaceHolder () : Item () constructor {
	name = "???";
	image_id = 11;
	amount = 0;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}




function GrassSeed() : Item () constructor {
	name = "GrassSeed";
	image_id = 12;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objSmallGrass;
	crafting = ds_map_create();
	ds_map_add(crafting, new Grass(), 1)
	KP_lock = 10;
	yeald = 3;
	desc = "Place this on the ground to plant new grass.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 3)
	madeWith = 0 // Hand
}

function Pinecone() : Item () constructor {
	name = "Pinecone";
	image_id = 13;
	amount = 1;
	type = 2;
	hitlag = 75;
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
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	ds_map_add(crafting, new Mushroom(), 1)
	desc = "Simple and easy to make Won't give you gut pain.";

	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 15)
	madeWith = 2 // CampFire
	
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
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	foodLevel = 1;

	canDry = false;
	canSpread = true;
	cantype = 0;
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
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	foodLevel = 1;

	canDry = false;
	canSpread = true;
	cantype = 0;
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
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	foodLevel = 1;

	canDry = false;
	canSpread = true;
	cantype = 0;
	//Spreadname = new Mushroom();
	SpreadTime = timeToFrames(0,3,0);
}

function StoneSpade () : Item () constructor {
	name = "FlintSpade";
	image_id = 18;
	amount = 1;
	type = 1;
	dura = 50;
	dura_max = 50;
	attackPow = 2;
	cuttingPow = 1;
	smashingPow = 2;
	hitlag = 20;
	tool_id = 3;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 4)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new Stone(), 1)
	desc = "A spade that's used for digging up stuff.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7,1)
	madeWith = 1 // Work
}

function Sand() : Item () constructor {
	name = "Sand";
	image_id = 19;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
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
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function RawClay () : Item () constructor {
	name = "RawClay";
	image_id = 21;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new Soil(), 3)
	desc = "A basic material for building things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 20)
	madeWith = 4 // Water
}

function StonePickaxe () : Item () constructor {
	name = "FlintPick";
	image_id = 22;
	amount = 1;
	type = 1;
	dura = 50;
	dura_max = 50;
	attackPow = 3;
	cuttingPow = 1;
	smashingPow = 3;
	hitlag = 75;
	tool_id = 4;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 10)
	ds_map_add(crafting, new Rope(), 2)
	ds_map_add(crafting, new Stone(), 5)
	desc = "A pickace that smashes stones to bits.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7,1)
	madeWith = 1 // Work
}

function RawClayBowl () : Item () constructor {
	name = "UnFiredBowl";
	image_id = 23;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new RawClay(), 3)
	desc = "Needs to be fired to be used.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 21)
	madeWith = 1 // Work
}

function ClayBowl () : Item () constructor {
	name = "RedBowl";
	image_id = 24;
	amount = 1;
	type = 1;
	dura = 5;
	dura_max = 5;
	hitlag = 1;
	tool_id = 5;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new RawClayBowl(), 1)
	desc = "Can scoop up things like water.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 23)
	madeWith = 5 // Kiln
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
	desc = "Gross dirty nwater, can this be cleaned?";

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
	desc = "Gross dirty water, can this be cleaned?";

	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 5)
	madeWith = 2 // CampFire
}

function RawClayPot () : Item () constructor {
	name = "UnFiredPot";
	image_id = 27;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new RawClay(), 10)
	desc = "Needs to be fired to be used.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 21)
	madeWith = 1 // Work
}

function ClayPot() : Item () constructor {
	name = "RedPot";
	image_id = 28;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objPot;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new RawClayPot(), 1)
	desc = "Can hold one type of fluid.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 27)
	madeWith = 5 // Kiln
}



function WoodenChest () : Item () constructor {
	name = "WoodenChest";
	image_id = 29;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objWoodenChest;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 10)
	ds_map_add(crafting, new Stone(), 1)
	desc = "Can hold up to 9 items for you.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,1)
	madeWith = 1 // Work
}

function GrassBed () : Item () constructor {
	name = "GrassBed";
	image_id = 30;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objGrassBed;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 15)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new Grass(), 20)
	desc = "Interact with this to sleep.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7,3)
	madeWith = 1 // Work
}

function FishingRod () : Item () constructor {
	name = "FishingRod";
	image_id = 31;
	amount = 1;
	type = 1;
	dura = 50;
	dura_max = 50;
	attackPow = 0;
	cuttingPow = 0;
	smashingPow = 0;
	hitlag = 0;
	tool_id = 6;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 2)
	ds_map_add(crafting, new Rope(), 5)
	ds_map_add(crafting, new BoneHook(), 1)
	desc = "A basic fishing rod.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7,72)
	madeWith = 1 // Work
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
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "A small ocean fish.";

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
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "An average ocean fish.";

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
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "A large ocean fish.";

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
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	ds_map_add(crafting, new SmallFish(), 1)
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "Cooked fish, watch out for bones.";

	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 32)
	madeWith = 2 // CampFire
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
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	ds_map_add(crafting, new AverageFish(), 1)
	KP_lock = 0;
	yeald = 3;
	foodLevel = 1;
	desc = "Cooked fish, watch out for bones.";

	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 33)
	madeWith = 2 // CampFire
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
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	ds_map_add(crafting, new LargeFish(), 1)
	KP_lock = 0;
	yeald = 8;
	foodLevel = 1;
	desc = "Cooked fish, watch out for bones.";

	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 34)
	madeWith = 2 // CampFire
}

function FenceWood () : Item () constructor {
	name = "WoodenFence";
	image_id = 36;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objFenceWood;
	crafting = ds_map_create();
	KP_lock = 5;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 2)
	desc = "Fencing that can protect you and your things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0)
	madeWith = 0 // Hand
}

function FenceWoodDoor () : Item () constructor {
	name = "FenceDoor";
	image_id = 37;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objFenceWoodDoor;
	crafting = ds_map_create();
	KP_lock = 5;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 3)
	desc = "Fencing that can protect you and your things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0)
	madeWith = 0 // Hand
}

function Kiln () : Item () constructor {
	name = "Kiln";
	image_id = 38;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objKiln;
	crafting = ds_map_create();
	KP_lock = 100;
	yeald = 1;
	ds_map_add(crafting, new Brick(), 30)
	ds_map_add(crafting, new FireStarter(), 1)
	desc = "Smelt and bake even better things with this.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 50,8)
	madeWith = 1 // Work
}

function BeastPelt() : Item () constructor {
	name = "BeastPelt";
	image_id = 39;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
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
	hitlag = 75;
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
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
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
	hitlag = 75;
	tool_id = 0;
	Spawn = objDryingRack;
	crafting = ds_map_create();
	KP_lock = 22;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 10)
	ds_map_add(crafting, new Rope(), 5)
	desc = "Place items on this to dry them.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7)
	madeWith = 1 // Work
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
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
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
	hitlag = 75;
	tool_id = 0;
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "Tasty fish, soup. It's good for you.";
	crafting = ds_map_create();
	ds_map_add(crafting, new Bone(), 1)
	ds_map_add(crafting, new ClayBowlWaterPure(), 1)
	ds_map_add(crafting, new FriedFishS(), 1)

	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 6,26,35)
	madeWith = 3 // FieldStove
	
}

function SchroomSoup () : Item () constructor {
	name = "ShroomSoup";
	image_id = 45;
	amount = 1;
	type = 3;
	hungerFill = 45;
	waterFill = 30;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "Tasty mushroom, soup. It's also good for you.";
	crafting = ds_map_create();
	ds_map_add(crafting, new Bone(), 1)
	ds_map_add(crafting, new ClayBowlWaterPure(), 1)
	ds_map_add(crafting, new FriedMush(), 3)
	madeWith = 3 // FieldStove
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 6,26,14)
}

function StoneHoe () : Item () constructor {
	name = "FlintHoe";
	image_id = 46;
	amount = 1;
	type = 1;
	dura = 50;
	dura_max = 50;
	attackPow = 1;
	cuttingPow = 1;
	smashingPow = 1;
	hitlag = 10;
	tool_id = 7;
	KP_lock = 0;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new Wood(), 4)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new Stone(), 1)
	desc = "Can make dirt patches for growing plants.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7,1)
	madeWith = 1 // Work
}

function Berries() : Item () constructor {
	name = "Berries";
	image_id = 47
	amount = 1;
	type = 3;
	hungerFill = 1;
	waterFill = 1;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
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
	dura = 50;
	dura_max = 50;
	attackPow = 4;
	cuttingPow = 0;
	smashingPow = 0;
	hitlag = 75;
	tool_id = 8;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
	madeWith = 1 // Work
}

function UnFiredBrick() : Item () constructor {
	name = "ClayBrick";
	image_id = 49;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new RawClay(), 2)
	desc = "Needs to be baked to be used.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 21)
	madeWith = 1 // Work
}

function Brick() : Item () constructor {
	name = "RedBrick";
	image_id = 50;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new UnFiredBrick(), 1)
	ds_map_add(crafting, new Sand(), 1)
	desc = "Needs to be baked to be used.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 49,19)
	madeWith = 2 // CampFire
}

function WoodenBowl() : Item () constructor {
	name = "WoodenBowl";
	image_id = 51;
	amount = 1;
	type = 1;
	dura = 1;
	dura_max = 1;
	hitlag = 1;
	tool_id = 9;
	crafting = ds_map_create();
	yeald = 1;
	ds_map_add(crafting, new Wood(), 4)
	desc = "Can scoop up water. Can't be used for cooking.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0)
	madeWith = 1 // Work
}

function WoodBowlWater () : Item () constructor {
	name = "SaltWater";
	image_id = 52;
	amount = 1;
	type = 3;
	hungerFill = 0;
	waterFill = 30;
	fatigueFill = -10;
	hitlag = 20;
	tool_id = 0;
	effect = new Sick();
	crafting = ds_map_create();
	yeald = 1;
	ds_map_add(crafting, new  WoodenBowl(), 1)
	desc = "Gross Salt water, can this be cleaned?";

	canDry = false;
	canSpread = false;

}

function WoodBowlWaterPure () : Item () constructor {
	name = "PureWater";
	image_id = 53;
	amount = 1;
	type = 3;
	hungerFill = 0;
	waterFill = 80;
	fatigueFill = 0;
	hitlag = 20;
	tool_id = 0;
	effect = new Normal();
	//crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	//ds_map_add(crafting, new ClayBowlWater(), 1)
	desc = "Fresh water that's safe to drink.";

	canDry = false;
	canSpread = false;

}

function FieldStove() : Item () constructor {
	name = "FieldStove";
	image_id = 54;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objFieldStove;
	crafting = ds_map_create();
	KP_lock = 30;
	yeald = 1;
	ds_map_add(crafting, new Stone(), 30)
	ds_map_add(crafting, new FireStarter(), 1)
	desc = "Place this on the ground to create a FieldStove.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 1,8)
	madeWith = 1 // Work
}

function ClayBowlAnimalFat() : Item () constructor {
	name = "AnimalFat";
	image_id = 55;
	amount = 1;
	type = 0;
	hitlag = 20;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new ClayBowl(), 1)
	ds_map_add(crafting, new RawMeat(), 1)
	desc = "Can be used for many things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 24, 4)
	madeWith = 3 // FieldStove

}

function ClayBowlOil() : Item () constructor {
	name = "Bowl of Oil";
	image_id = 56;
	amount = 1;
	type = 0;
	hitlag = 20;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 15;
	yeald = 1;
	ds_map_add(crafting, new ClayBowlAnimalFat(), 1)
	desc = "Oil used for cooking and other things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 55)
	madeWith = 3 // FieldStove
}

function GrilledMeat () : Item () constructor {
	name = "GrilledMeat";
	image_id = 57;
	amount = 1;
	type = 3;
	hungerFill = 55;
	waterFill = 0;
	fatigueFill = 10;
	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	madeWith = 3 // FieldStove
	ds_map_add(crafting, new RawMeat(), 1)
	ds_map_add(crafting, new ClayBowlOil(), 1)
	desc = "This is actually pretty good.";
	madeWith = 3 // FieldStove
		//==========================
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 56, 4)
	
}

function GrilledFishS () : Item () constructor {
	name = "GrilledFish";
	image_id = 58;
	amount = 1;
	type = 3;
	hungerFill = 25;
	waterFill = 0;
	fatigueFill = 5;
	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	ds_map_add(crafting, new SmallFish(), 1)
	ds_map_add(crafting, new ClayBowlOil(), 1)
	KP_lock = 0;
	yeald = 1;
	foodLevel = 1;
	desc = "Grilled fish, watch out for bones.";
	madeWith = 3 // FieldStove
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 56, 32)
}

function GrilledFishM() : Item () constructor {
	name = "GrilledFish";
	image_id = 58;
	amount = 1;
	type = 3;
	hungerFill = 25;
	waterFill = 0;
	fatigueFill = 5;
	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	ds_map_add(crafting, new AverageFish(), 1)
	ds_map_add(crafting, new ClayBowlOil(), 1)
	KP_lock = 0;
	yeald = 2;
	foodLevel = 1;
	desc = "Grilled fish, watch out for bones.";
	madeWith = 3 // FieldStove
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 56, 33)
}


function GrilledFishL () : Item () constructor {
	name = "GrilledFish";
	image_id = 58;
	amount = 1;
	type = 3;
	hungerFill = 25;
	waterFill = 0;
	fatigueFill = 5;
	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	ds_map_add(crafting, new LargeFish(), 1)
	ds_map_add(crafting, new ClayBowlOil(), 1)
	KP_lock = 0;
	yeald = 3;
	foodLevel = 1;
	desc = "Grilled fish, watch out for bones.";
	madeWith = 3 // FieldStove
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 56, 34)
	
}

function TreeBark() : Item () constructor {
	name = "TreeBark";
	image_id = 59;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 2;
	ds_map_add(crafting, new Wood(), 1)
	desc = "The bark of a tree.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0)
	madeWith = 0 // Hand
}

function Seaweed () : Item () constructor {
	name = "SeaWeed";
	image_id = 60;
	amount = 1;
	type = 3;
	hungerFill = 5;
	waterFill = 5;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	foodLevel = 1;

	//==========================
	canDry = true;
	DryName = new DriedSeaWeed();
	DryImage_id = 62;
	DryTime = timeToFrames(0,8,0);
	DryMult = 1;
	canSpread = true;
	cantype = 1;
	//Spreadname = new Mushroom();
	SpreadTime = timeToFrames(0,3,0);
	
}

function SeaShell () : Item () constructor {
	name = "SeaShell";
	image_id = 61;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function DriedSeaWeed () : Item () constructor {
	name = "DriedSeaWeed";
	image_id = 62;
	amount = 1;
	type = 3;
	hungerFill = 10;
	waterFill = 0;
	fatigueFill = 0;
	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	foodLevel = 1;
	crafting = ds_map_create();

	canDry = false;
	canSpread = false;
	
}

function BeastTunic() : Item () constructor {
	name = "BeastTunic";
	image_id = 63;
	amount = 1;
	type = 4;
	hitlag = 75;
	tool_id = 10;
	equiped = false;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new BeastPelt(), 5)
	ds_map_add(crafting, new Rope(), 2)
	ds_map_add(crafting, new BoneNeedle(), 1)
	KP_lock = 20;
	desc = "Basic clothing that raises defence.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 39, 7, 70)
	madeWith = 1 // Work
}

function BeastHat() : Item () constructor {
	name = "BeastHat";
	image_id = 64;
	amount = 1;
	type = 5;
	hitlag = 75;
	tool_id = 12;
	equiped = false;
	yeald = 1;
	crafting = ds_map_create();
	ds_map_add(crafting, new BeastPelt(), 3)
	ds_map_add(crafting, new Rope(), 1)
	ds_map_add(crafting, new BoneNeedle(), 1)
	KP_lock = 20;
	desc = "Basic hat that raises defence.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 39, 7, 70)
	madeWith = 1 // Work
}

function Ash() : Item () constructor {
	name = "Charcoal";
	image_id = 65;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	canDry = false;
	canSpread = false;

}

function Honey() : Item () constructor {
	name = "Honey";
	image_id = 66
	amount = 1;
	type = 3;
	hungerFill = 10;
	waterFill = 0;
	fatigueFill = 10;

	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	foodLevel = 1;

	canDry = false;
	canSpread = false;

	
}

function WoodBowlJuice() : Item () constructor {
	name = "Juice";
	image_id = 67;
	amount = 1;
	type = 3;
	hungerFill = 5;
	waterFill = 20;
	fatigueFill = 10;
	effect = new Normal();
	hitlag = 20;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new WoodBowlWaterPure(), 1)
	ds_map_add(crafting, new Berries(), 5)
	desc = "Can be used for many things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 53, 47)
	madeWith = 1 // Work
}


function ClayBowlJuice() : Item () constructor {
	name = "Juice";
	image_id = 68;
	amount = 1;
	type = 3;
	hungerFill = 5;
	waterFill = 20;
	fatigueFill = 10;
	effect = new Normal();
	hitlag = 20;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new ClayBowlWaterPure(), 1)
	ds_map_add(crafting, new Berries(), 5)
	desc = "Can be used for many things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 26, 47)
	madeWith = 1 // Work
}

function PrePit () : Item () constructor {
	name = "Fire Pit";
	image_id = 69;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objPrePit;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new Stone(), 3)
	ds_map_add(crafting, new TreeBark(), 1)
	desc = "Place this down and use a FireStarter";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 1,59)
	madeWith = 0 // Hand
}

function BoneNeedle() : Item () constructor {
	name = "BoneNeedle";
	image_id = 70;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new Bone(), 1)
	ds_map_add(crafting, new Knife(), 1)
	desc = "A needle used for making clothing.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 6,2)
	madeWith = 0 // Hand
}

function BeeBox() : Item () constructor {
	name = "BeeBox";
	image_id = 71;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objBeeBoxEmpty;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 30)
	ds_map_add(crafting, new Rope(), 2)
	ds_map_add(crafting, new Honey(), 10)
	desc = "Bees will be drawn to this box.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0,7,66)
	madeWith = 1 // Work
}

function BoneHook() : Item () constructor {
	name = "BoneHook";
	image_id = 72;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new Bone(), 1)
	ds_map_add(crafting, new Knife(), 1)
	desc = "A basic hook used to make a fishing rod.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 6,2)
	madeWith = 0 // Hand
}

function Torch() : Item () constructor {
	name = "Torch";
	image_id = 73;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objTorch;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new Wood(), 2)
	ds_map_add(crafting, new Ash(), 1)
	desc = "Place these to find your way around/";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 0, 65)
	madeWith = 0 // Hand
}

function ShellMusic () : Item () constructor {
	name = "ShellFlute";
	image_id = 74;
	amount = 1;
	type = 1;
	dura = max;
	dura_max = max;
	attackPow = 0;
	cuttingPow = 0;
	smashingPow = 0;
	hitlag = 75;
	tool_id = 13;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Hibiscus_Pink() : Item () constructor {
	name = "Pink Hibiscus";
	image_id = 75;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Hibiscus_Yellow() : Item () constructor {
	name = "Yellow Hibiscus";
	image_id = 76;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Hibiscus_Purple() : Item () constructor {
	name = "Purple Hibiscus";
	image_id = 77;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Hibiscus_Orange() : Item () constructor {
	name = "Orange Hibiscus";
	image_id = 78;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Hibiscus_Red() : Item () constructor {
	name = "Red Hibiscus";
	image_id = 79;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function HibiscusSeedP() : Item () constructor {
	name = "Hibis Seed";
	image_id = 80;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objSmallHibiscusPink;
	crafting = ds_map_create();
	ds_map_add(crafting, new Hibiscus_Pink(), 1)
	KP_lock = 0;
	yeald = 3;
	desc = "Place this on the ground to plant new flowers.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 75)
	madeWith = 0 // Hand
}

function HibiscusSeedY() : Item () constructor {
	name = "Hibis Seed";
	image_id = 81;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objSmallHibiscusYellow;
	crafting = ds_map_create();
	ds_map_add(crafting, new Hibiscus_Yellow(), 1)
	KP_lock = 0;
	yeald = 3;
	desc = "Place this on the ground to plant new flowers.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 76)
	madeWith = 0 // Hand
}

function HibiscusSeedPu() : Item () constructor {
	name = "Hibis Seed";
	image_id = 82;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objSmallHibiscusPurple;
	crafting = ds_map_create();
	ds_map_add(crafting, new Hibiscus_Purple(), 1)
	KP_lock = 0;
	yeald = 3;
	desc = "Place this on the ground to plant new flowers.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 77)
	madeWith = 0 // Hand
}

function HibiscusSeedO() : Item () constructor {
	name = "Hibis Seed";
	image_id = 83;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objSmallHibiscusOrange;
	crafting = ds_map_create();
	ds_map_add(crafting, new Hibiscus_Orange(), 1)
	KP_lock = 0;
	yeald = 3;
	desc = "Place this on the ground to plant new flowers.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 78)
	madeWith = 0 // Hand
}

function HibiscusSeedR() : Item () constructor {
	name = "Hibis Seed";
	image_id = 84;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objSmallHibiscusRed;
	crafting = ds_map_create();
	ds_map_add(crafting, new Hibiscus_Red(), 1)
	KP_lock = 0;
	yeald = 3;
	desc = "Place this on the ground to plant new flowers.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 79)
	madeWith = 0 // Hand
}

function Basket() : Item () constructor {
	name = "Basket";
	image_id = 85;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objBasket;
	crafting = ds_map_create();
	KP_lock = 20;
	yeald = 1;
	ds_map_add(crafting, new TreeBark(), 10)
	ds_map_add(crafting, new Knife(), 1)
	desc = "Can hold up to 9 items for you.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 59,2)
	madeWith = 0 // Hand
}

function BrokenRadio () : Item () constructor {
	name = "BrokenRadio";
	image_id = 86;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Radio() : Item () constructor {
	name = "Radio";
	image_id = 87;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function RawCopper() : Item () constructor {
	name = "Raw Copper";
	image_id = 88;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function RawTin() : Item () constructor {
	name = "Raw Tin";
	image_id = 89;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function RawIron() : Item () constructor {
	name = "Raw Iron";
	image_id = 90;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function RawGold() : Item () constructor {
	name = "Raw Gold";
	image_id = 91;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Lodestone() : Item () constructor {
	name = "LodeStone";
	image_id = 92;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Copper() : Item () constructor {
	name = "Copper";
	image_id = 93;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new RawCopper(), 1)
	ds_map_add(crafting, new Limedust(), 1)
	desc = "A smelted bar of copper.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 88,97)
	madeWith = 6 // Kiln 2
}

function Tin() : Item () constructor {
	name = "Tin";
	image_id = 94;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new RawTin(), 1)
	ds_map_add(crafting, new Limedust(), 1)
	desc = "A smelted bar of tin.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 89,97)
	madeWith = 6 // Kiln 2
}

function Iron() : Item () constructor {
	name = "Iron";
	image_id = 95;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new RawIron(), 1)
	ds_map_add(crafting, new Limedust(), 1)
	desc = "A smelted bar of tin.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 90,97)
	madeWith = 6 // Kiln 2
}

function Gold() : Item () constructor {
	name = "Gold";
	image_id = 96;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new RawGold(), 1)
	ds_map_add(crafting, new Limedust(), 1)
	desc = "A smelted bar of tin.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 91,97)
	madeWith = 6 // Kiln 2
}

function Limedust() : Item () constructor {
	name = "Limedust";
	image_id = 97;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 3;
	ds_map_add(crafting, new SeaShell(), 1)
	desc = "A powder used for smelting things in a Kiln.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 61)
	madeWith = 0 // Hand
}

function Bellows() : Item () constructor {
	name = "Bellows";
	image_id = 98;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objBellows;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new ClayPot(), 1)
	ds_map_add(crafting, new BeastPelt(), 10)
	desc = "Can be placed left of a Kiln to upgrade it.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 27,39)
	madeWith = 1 // Work
}

function Compass () : Item () constructor {
	name = "Compass";
	image_id = 99;
	amount = 1;
	type = 0;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function BaseballBat() : Item () constructor {
	name = "Baseball Bat";
	image_id = 100;
	amount = 1;
	type = 1;
	dura = 1000;
	dura_max = 1000;
	attackPow = 1;
	cuttingPow = 1;
	smashingPow = 1;
	hitlag = 75;
	tool_id = 14;
	crafting = ds_map_create();
	canDry = false;
	canSpread = false;
}

function Medication() : Item () constructor {
	name = "Medication";
	image_id = 101;
	amount = 1;
	type = 3;
	hungerFill = 0;
	waterFill = 0;
	fatigueFill = -50;
	effect = new Normal();
	hitlag = 75;
	tool_id = 0;
	hitlag = 75;
	crafting = ds_map_create();
	foodLevel = 1;

	canDry = false;
	canSpread = false;
	cantype = 0;
	
}

function Suitcase() : Item () constructor {
	name = "Suitcase";
	image_id = 102;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objGrassBed;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	desc = "Interact with this to sleep.";
	canDry = false;
	canSpread = false;
}

function Brass() : Item () constructor {
	name = "Brass";
	image_id = 103;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new RawCopper(), 2)
	ds_map_add(crafting, new RawTin(), 1)
	ds_map_add(crafting, new Limedust(), 4)
	desc = "A smelted bar of copper.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 88,89,97)
	madeWith = 6 // Kiln 2
}

function LightningRod() : Item () constructor {
	name = "LightningRod";
	image_id = 104;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objLightningRod;
	crafting = ds_map_create();
	KP_lock = 100;
	yeald = 1;
	ds_map_add(crafting, new Copper(), 5)
	ds_map_add(crafting, new Hammer(), 1)
	desc = "Attracts lighting. Can turn Flint into Loadestone.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 93)
	madeWith = 7 // SmithingTable
}

function SmithingTable () : Item () constructor {
	name = "SmithingTable";
	image_id = 105;
	amount = 1;
	type = 2;
	hitlag = 75;
	tool_id = 0;
	Spawn = objSmithingTable;
	crafting = ds_map_create();
	KP_lock = 10;
	yeald = 1;
	ds_map_add(crafting, new WorkStation(), 1)
	ds_map_add(crafting, new Brass(), 3)
	desc = "Place this to craft new things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper, 9,103)
	madeWith = 1 // Work
}

function Hammer() : Item () constructor {
	name = "SmithHammer";
	image_id = 106;
	amount = 1;
	type = 0;
	hitlag = 75;
	tool_id = 0;
	crafting = ds_map_create();
	KP_lock = 0;
	yeald = 1;
	ds_map_add(crafting, new Brass(), 1)
	ds_map_add(crafting, new Wood(), 3)
	ds_map_add(crafting, new Rope(), 1)
	desc = "A basic material for building things.";
	canDry = false;
	canSpread = false;
	craftHelper = ds_list_create();
	ds_list_add(craftHelper,103,0,7)
	madeWith = 7 // SmithingTable
}
