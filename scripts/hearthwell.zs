import crafttweaker.item.IItemStack;

// heavy mix depends both on botania and astral sorcery
recipes.remove(<hwell:heavy_mesh>);
recipes.addShapeless("heavy_mesh", <hwell:heavy_mesh> * 2, [<minecraft:stone> | <minecraft:stone:1> | <minecraft:stone:3> | <minecraft:stone:5>, <ore:dustCoal>, <ore:livingwood>]);

// heavy ingot is twice as expensive
furnace.remove(<hwell:heavy_ingot>);
furnace.addRecipe(<hwell:heavy_ingot>, <hwell:heavy_mesh>);

// make crushing block depend on extendedcrafting's black iron
recipes.remove(<hwell:crushing_block>);
recipes.addShaped("crushing_block", <hwell:crushing_block>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:cobblestone>, <ore:blockBlackIron>, <minecraft:cobblestone>], [<hwell:heavy_ingot>, <hwell:heavy_ingot>, <hwell:heavy_ingot>]]);

// include new mysterious sawdust
recipes.addShapeless("mysterious_sawdust", <contenttweaker:mysterious_sawdust> * 8, [<hwell:myst_log>, <bibliocraft:framingsaw>]);
recipes.remove(<hwell:leaf_mesh>);
recipes.addShapeless("mysterious_mixture", <hwell:leaf_mesh> * 2, 
    [<harvestcraft:mixingbowlitem>, <hwell:dust>, <ore:dustCoal>, <hwell:myst_dust>, <contenttweaker:mysterious_sawdust>]);

// Change crystal creation
furnace.remove(<hwell:crystal_block>);
mods.botania.ManaInfusion.addInfusion(<hwell:crystal>, <hwell:leaf_mesh>, 2000);

// Change raw asul crafting
recipes.remove(<hwell:raw_asul_block>);
mods.astralsorcery.LightTransmutation.addTransmutation(<hwell:crystal_block>, <hwell:raw_asul_block>, 10);

// Disable core crafting
function disable(input as IItemStack) {
	recipes.remove(input);
	mods.jei.JEI.removeAndHide(input);
}

disable(<hwell:core_sentient>);
disable(<hwell:core_green>);
disable(<hwell:core_stone>);
disable(<hwell:core_anima>);
disable(<hwell:core_heat>);
disable(<hwell:inert_seed>);
disable(<hwell:heat_block>);
disable(<hwell:graft_anima>);
disable(<hwell:stabiliser_light>);
disable(<hwell:stabiliser>);
disable(<hwell:stabiliser_heavy>);

// Add new metaldiamond recipe
mods.tconstruct.Casting.addTableRecipe(<hwell:metaldiamond>, <ore:manaDiamond>, <liquid:astral_starmetal>, 144, true);

// Make mutator harder and add new mutation paste recipe
recipes.remove(<hwell:mutator>);
recipes.addShaped("mutator", <hwell:mutator>, [[<botania:fertilizer>, <hwell:crystal>, <hwell:myst_fertilizer>], [<ore:blockDawnstone>, <hwell:furnace_tube>, <ore:blockDawnstone>], [<ore:scaffoldingSteel>, <hwell:asul_machine_case>, <ore:scaffoldingSteel>]]);
recipes.addShapeless("mutationpaste", <hwell:mutation_paste> * 2, 
    [<harvestcraft:mixingbowlitem>, <ore:slimeball>, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>]);

// Remove light crushing to glowstone
mods.hwell.removeCrushingBlockRecipe(<hwell:locked_light>);

// Nether crystal? HA! TOASTED CRYSTAL!
mods.hwell.removeNetherPortalRecipe(<hwell:crystal>);
moretweaker.cfb.KitchenAppliances.addToasterRecipe(<hwell:crystal_nether>, <hwell:crystal>);
mods.jei.JEI.addDescription(<hwell:crystal_nether>, "Obtained by toasting a crystal using the Toaster. Anyone telling you otherwise is lying.");

// Make charger harder
recipes.remove(<hwell:charger>);
recipes.addShaped("hwellcharger", <hwell:charger>, [[<ore:manaDiamond>, <ore:dustAstralStarmetal>, <ore:manaDiamond>], [<hwell:furnace_tube>, <hwell:asul_machine_case>, <hwell:furnace_tube>], [<hwell:smooth_onyx>, <hwell:smooth_onyx>, <hwell:smooth_onyx>]]);

// Make slab lamp harder
recipes.remove(<hwell:slab_lamp>);
recipes.addShaped("hwellslab_lamp", <hwell:slab_lamp>, [[<hwell:heavy_ingot>, <hwell:locked_light>, <hwell:heavy_ingot>]]);

// Make block player easier
recipes.remove(<hwell:setter>);
recipes.addShaped("hwellsetter", <hwell:setter>, [[<ore:ingotManasteel>, <minecraft:redstone_lamp>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <ore:dustRedstone>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <hwell:asul_machine_case>, <ore:ingotManasteel>]]);

// Change light collector
recipes.remove(<hwell:light_collector>);
recipes.addShaped("hwelllight_collector", <hwell:light_collector>, [[<hwell:citrinic_sand>, <botania:managlasspane>, <hwell:citrinic_sand>], [<botania:managlasspane>, <astralsorcery:itemcraftingcomponent:3>, <botania:managlasspane>], [<hwell:citrinic_sand>, <botania:managlasspane>, <hwell:citrinic_sand>]]);
