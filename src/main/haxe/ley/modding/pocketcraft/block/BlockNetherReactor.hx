package ley.modding.pocketcraft.block;

import net.minecraft.client.renderer.texture.IIconRegister;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.block.material.Material;
import net.minecraft.block.Block;

class BlockNetherReactor extends Block {
    public function new() {
        super(Material.iron);
        this.setBlockName(PocketCraft.id("reactor"));
        this.setCreativeTab(CreativeTabs.tabDecorations);
        this.setHardness(3.5);
    }

    @:overload
    override function registerBlockIcons(reg:IIconRegister) {
        this.blockIcon = reg.registerIcon(PocketCraft.id("reactor"));
    }
}
