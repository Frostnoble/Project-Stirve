/// @description Insert description here
// You can write your code in this editor


objectList = ds_list_create();
ds_list_add(objectList,
objBetterSoil,
objBetterSand,
objDryingRack,
objGrass,
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
objPot,
objTreeHive,
objTreeHiveFull,
objSplash,
objPrePit,
objBeeBoxEmpty,
objBeeBoxFull,
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
new BoneNeedle()];



depth = -max;

/*
0 = Overworld walking
1 = crafting
2 = inventory
3 = sleeping
4 = Swapping
6 = Research
*/