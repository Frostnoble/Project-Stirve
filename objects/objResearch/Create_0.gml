/// @description Insert description here
// You can write your code in this editor
draw_x = 0;
draw_y = 0;
rowlength = 3;
draw_x2 = 208;
draw_y2 = 0;

res_selector = objInventory.inventory[| 0];

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
new GrilledFishL()];

seemode = false;

Possible = ds_list_create();
candraw = false;
