/// @description Insert description here
// You can write your code in this editor


objectList = ds_list_create();
ds_list_add(objectList,
objBetterSoil,
objBetterSand,
objDryingRack,
objGrass,
objFlowers,
objSmallHibiscusPink,
objSmallHibiscusYellow,
objSmallHibiscusPurple,
objSmallHibiscusOrange,
objSmallHibiscusRed,
objSmallGrass,
objRock,
objTree,
objTreeSmol,
objSapling,
objCampFire,
objGrassBed,
objWorkStation,
objFieldStove,
objWaterPond,
objKiln,
objFenceWood,
objFenceWoodDoor,
objBerryBush,
objBush,
objSmallBush,
objRabbit,
objwolf,
objBee,
objTreeHive,
objTreeHiveFull,
objSplash,
objPrePit,
objBeeBoxEmpty,
objBeeBoxFull,
objFlowerPot,
objUnderground_Stone,
objBellows,
objPlayer);

OutfitList = ds_list_create();
ds_list_add(OutfitList,
objBeastTunic,
objBeastHat);



global.craftable_item = [
new CookedMeat(),
new Rope(),
new FireStarter(),
new WorkStation(),
new StoneAxe(),
new GrassSeed(),
new HibiscusSeedP(),
new HibiscusSeedY(),
new HibiscusSeedPu(),
new HibiscusSeedO(),
new HibiscusSeedR(),
new FriedMush(),
new StoneSpade(),
new RawClay(),
new StonePickaxe(),
new RawClayBowl(),
new ClayBowl(),
new ClayBowlWaterPure(),
new RawClayPot(),
new ClayPot(),
new WoodenChest(),
new GrassBed(),
new FishingRod(),
new FriedFishS(),
new FriedFishM(),
new FriedFishL(),
new DryingRack(),
new FenceWood(),
new FenceWoodDoor(),
new Kiln(),
new FishSoup(),
new SchroomSoup(),
new StoneHoe(),
new UnFiredBrick(),
new Brick(),
new WoodenBowl(),
new FieldStove(),
new ClayBowlAnimalFat(),
new ClayBowlOil(),
new GrilledMeat(),
new GrilledFishS(),
new GrilledFishM(),
new GrilledFishL(),
new TreeBark(),
new BeastTunic(),
new BeastHat(),
new WoodBowlJuice(),
new ClayBowlJuice(),
new PrePit(),
new BeeBox(),
new BoneNeedle(),
new BoneHook(),
new Basket(),
new Torch(),
new	Copper(),
new Tin(),
new Iron(),
new Gold(),
new Limedust(),
new Bellows(),
new Brass(),
new LightningRod(),
new SmithingTable(),
new Hammer()];



depth = -max;

/*
0 = Overworld walking
1 = crafting
2 = inventory
3 = sleeping
4 = Swapping
6 = Research
*/