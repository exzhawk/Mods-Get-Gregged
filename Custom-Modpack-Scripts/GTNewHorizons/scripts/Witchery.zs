// --- Created by DreamMasterXXL ---




// --- Remove Recipes ---




// --- Oven
recipes.remove(<witchery:witchesovenidle>);

// --- Fume Funnel
recipes.remove(<witchery:fumefunnel>);

// --- Filtered Fume Funnel
recipes.remove(<witchery:filteredfumefunnel>);

// --- Fume Filter
recipes.remove(<witchery:ingredient:73>);

//recipes.remove(<witchery:distilleryidle>);
//recipes.remove(<witchery:ingredient:10>);
//recipes.remove(<witchery:altar>);
//recipes.remove(<witchery:poppet>);
//recipes.remove(<witchery:poppet:*>);
//recipes.remove(<witchery:kettle>);
//recipes.remove(<witchery:spinningwheel>);
//recipes.remove(<witchery:poppetshelf>);





// --- Adding Recipes ---


// --- Oven
mods.thaumcraft.Research.addResearch("OVEN", "ARTIFICE", "metallum 1, fabrico 1, instrumentum 1, machina 1", -12, -1, 4, <witchery:witchesovenidle>);
game.setLocalization("en_US", "tc.research_name.OVEN", "Witchery Oven");
game.setLocalization("en_US", "tc.research_text.OVEN", "[WI] The tales of Hansel and Gretel");
mods.thaumcraft.Research.addPrereq("OVEN", "INFERNALFURNACE", false);
mods.thaumcraft.Research.addPrereq("OVEN", "INFUSION", false);
mods.thaumcraft.Research.setConcealed("OVEN", true);
mods.thaumcraft.Research.addPage("OVEN", "Witchery.research_page.OVEN.1");
game.setLocalization("en_US", "Witchery.research_page.OVEN.1", "The witches oven, made infamous in the tale of Hansel and Gretel, is a very practical device for the would-be witch or warlock. While unable to smelt metals, the oven is particularly good at cooking food and making charcoal; cooking about 10% faster than a furnace. The second, and probably more important feature of a witches oven, is that it is able to capture the by-products produced in the cooking process. Activating the oven to show the interface screen, you will see an additional slot to the right of the fuel slot.");
mods.thaumcraft.Research.addPage("OVEN", "Witchery.research_page.OVEN.2");
game.setLocalization("en_US", "Witchery.research_page.OVEN.2", "Clay jars must be placed in this slot. If there are clay jars present when something is cooked, there is a chance a by-product will be captured in one of the jars. These by-products are important ingredients in other recipes. If there are no clay jars in the oven when something is cooked, no by-products will be produced.");
mods.thaumcraft.Arcane.addShaped("OVEN", <witchery:witchesovenidle>, "aer 30, ignis 30, terra 30", [
[<ore:plateSteel>, <ore:plateThaumium>, <ore:plateSteel>],
[<dreamcraft:item.SteelBars>, <IC2:blockMachine:1>, <dreamcraft:item.SteelBars>],
[<ExtraUtilities:microblocks:1>.withTag({mat: "Railcraft:cube_2"}), null, <ExtraUtilities:microblocks:1>.withTag({mat: "Railcraft:cube_2"})]]);
mods.thaumcraft.Research.addArcanePage("OVEN", <witchery:witchesovenidle>);

// --- Fume Funnel
mods.thaumcraft.Research.addResearch("FUMEFUNNEL", "ARTIFICE", "metallum 1, ignis 1, lux 1, sensus 1", -12, 1, 4, <witchery:fumefunnel>);
game.setLocalization("en_US", "tc.research_name.FUMEFUNNEL", "Fume Funnel");
game.setLocalization("en_US", "tc.research_text.FUMEFUNNEL", "[WI] Upgrades Yea");
mods.thaumcraft.Research.addPrereq("FUMEFUNNEL", "OVEN", false);
mods.thaumcraft.Research.setConcealed("FUMEFUNNEL", true);
mods.thaumcraft.Research.addPage("FUMEFUNNEL", "Witchery.research_page.FUMEFUNNEL");
game.setLocalization("en_US", "Witchery.research_page.FUMEFUNNEL", "A fume funnel is an upgrade for the Witches Oven that increases that increases the speed (over a normal furnace) by an additional 10%, and increases the chances of a by-product being produced by a further 25%.The Fume Funnel must be positioned next to the left or right of the witches oven with the same facing. Up to two funnels can be attached to one oven. It is possible to place a funnel between two ovens for it to benefit both. A third fume funnel can also be placed on top of an oven to make it look better and also to increase its speed by a further 10%.");
mods.thaumcraft.Arcane.addShaped("FUMEFUNNEL", <witchery:fumefunnel>, "aer 40, ignis 40, terra 40", [
[<ore:plateThaumium>, <dreamcraft:item.SteelBars>, <ore:plateThaumium>],
[<ore:plateGlowstone>, <ore:bucketLava>, <ore:plateGlowstone>],
[<ore:blockSteel>, <dreamcraft:item.SteelBars>, <ore:blockSteel>]]);
mods.thaumcraft.Research.addArcanePage("FUMEFUNNEL", <witchery:fumefunnel>);
mods.thaumcraft.Warp.addToResearch("FUMEFUNNEL", 1);

// --- Fitered Fume Funnel
mods.thaumcraft.Research.addResearch("FILTEREDFUMEFUNNEL", "ARTIFICE", "metallum 1, vitreus 1, lux 1, praecantatio 1", -12, 3, 4, <witchery:filteredfumefunnel>);
game.setLocalization("en_US", "tc.research_name.FILTEREDFUMEFUNNEL", "Filtered Fume Funnel");
game.setLocalization("en_US", "tc.research_text.FILTEREDFUMEFUNNEL", "[WI] Upgrades again? Yea!");
mods.thaumcraft.Research.addPrereq("FILTEREDFUMEFUNNEL", "FUMEFUNNEL", false);
mods.thaumcraft.Research.setConcealed("FILTEREDFUMEFUNNEL", true);
mods.thaumcraft.Research.addPage("FILTEREDFUMEFUNNEL", "Witchery.research_page.FILTEREDFUMEFUNNEL");
game.setLocalization("en_US", "Witchery.research_page.FILTEREDFUMEFUNNEL", "A Filtered Fume Funnel is an upgrade to the Fume Funnel that increases the chance of a by-product being produced by a connected witches Oven by a further 5% above the normal Fume Funnel (for a total of +10% cook speed and +30% by-product chance). As with a Fume Funnel, an oven can only accept two Fume Funnels (whether they are upgraded or not).");
mods.thaumcraft.Infusion.addRecipe("FILTEREDFUMEFUNNEL", <witchery:fumefunnel>, [<dreamcraft:item.SteelBars>, <Thaumcraft:ItemResource:8>, <dreamcraft:item.SteelBars>, <witchery:ingredient:73>, <dreamcraft:item.SteelBars>, <Thaumcraft:ItemResource:8>], "metallum 40, vitreus 10, praecantatio 15, lux 20", <witchery:filteredfumefunnel>, 3);
mods.thaumcraft.Research.addInfusionPage("FILTEREDFUMEFUNNEL", <witchery:filteredfumefunnel>);
mods.thaumcraft.Warp.addToResearch("FILTEREDFUMEFUNNEL", 2);

// --- Fume Filter
mods.thaumcraft.Research.addResearch("FUMEFILTER", "ALCHEMY", "metallum 1, vitreus 1, lucrum 1, praecantatio 1", 6, -2, 2, <witchery:ingredient:73>);
game.setLocalization("en_US", "tc.research_name.FUMEFILTER", "Fume Filter");
game.setLocalization("en_US", "tc.research_text.FUMEFILTER", "[WI] More By Products");
mods.thaumcraft.Research.addPrereq("FUMEFILTER", "DISTILESSENTIA", false);
mods.thaumcraft.Research.setConcealed("FUMEFILTER", true);
mods.thaumcraft.Research.addPage("FUMEFILTER", "Witchery.research_page.FUMEFILTER");
game.setLocalization("en_US", "Witchery.research_page.FUMEFILTER", "A Fume Filter is used to upgrade a Fume Funnel to a Filtered Fume Funnel in order to increase the by-product chance of a Witches Oven.");
mods.thaumcraft.Arcane.addShaped("FUMEFILTER", <witchery:ingredient:73>, "aer 20, ordo 15, terra 20", [
[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
[<ore:plateThaumium>, <witchery:ingredient:11>, <ore:plateThaumium>],
[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
mods.thaumcraft.Research.addArcanePage("FUMEFILTER", <witchery:ingredient:73>);