package ley.modding.pocketcraft;

import java.types.Char16;
import net.minecraft.init.Items;
import net.minecraft.init.Blocks;
import net.minecraft.item.ItemStack;
import ley.modding.pocketcraft.block.BlockNetherReactor;
import cpw.mods.fml.common.registry.GameRegistry;
import ley.modding.pocketcraft.block.BlockStonecutter;
import cpw.mods.fml.common.event.FMLInitializationEvent;
import net.minecraft.block.Block;
import cpw.mods.fml.common.Mod;

final MODID = "pocketcraft";

@:strict(Mod({
    modid: "pocketcraft",
    name: "PocketCraft",
    version: "1.0",
}))
class PocketCraft {
    public var stonecutter:Block;
    public var reactor:Block;

    public function new() {}

    @:strict(Mod_EventHandler)
    public function init(e:FMLInitializationEvent) {
        GameRegistry.registerBlock(this.stonecutter = new BlockStonecutter(), "stonecutter");
        GameRegistry.registerBlock(this.reactor = new BlockNetherReactor(), "reactor");

        GameRegistry.addShapedRecipe(
            new ItemStack(stonecutter),
            "cc",
            "cc",
            cast('c'.code, Char16),
            Blocks.cobblestone
        );
        GameRegistry.addShapedRecipe(
            new ItemStack(reactor),
            "idi",
            "idi",
            "idi",
            cast('i'.code, Char16),
            Items.iron_ingot,
            cast('d'.code, Char16),
            Items.diamond
        );
    }

    public static inline function id(s:String)
        return '$MODID:$s';
}
