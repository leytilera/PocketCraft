package ley.modding.pocketcraft;

import cpw.mods.fml.common.Mod;
import cpw.mods.fml.common.event.FMLInitializationEvent;
import cpw.mods.fml.common.registry.GameRegistry;
import ley.modding.pocketcraft.block.BlockNetherReactor;
import ley.modding.pocketcraft.block.BlockStonecutter;
import net.minecraft.block.Block;
import net.minecraft.init.Blocks;
import net.minecraft.init.Items;
import net.minecraft.item.ItemStack;

@Mod(modid = PocketCraft.MODID, name = PocketCraft.NAME, version = PocketCraft.VERSION)
public class PocketCraft {
    public static final String MODID = "pocketcraft";
    public static final String NAME = "PocketCraft";
    public static final String VERSION = "1.0";

    public static Block stonecutter;
    public static Block reactor;

    @Mod.EventHandler
    public void init(FMLInitializationEvent e) {
        stonecutter = new BlockStonecutter();
        reactor = new BlockNetherReactor();
        GameRegistry.registerBlock(stonecutter, "stonecutter");
        GameRegistry.registerBlock(reactor, "reactor");
        GameRegistry.addShapedRecipe(new ItemStack(stonecutter), "cc", "cc", 'c', Blocks.cobblestone);
        GameRegistry.addShapedRecipe(new ItemStack(reactor), "idi", "idi", "idi", 'i', Items.iron_ingot, 'd', Items.diamond);
    }

}
