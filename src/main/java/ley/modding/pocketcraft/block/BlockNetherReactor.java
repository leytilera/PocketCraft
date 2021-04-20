package ley.modding.pocketcraft.block;

import net.minecraft.block.Block;
import net.minecraft.block.material.Material;
import net.minecraft.client.renderer.texture.IIconRegister;
import net.minecraft.creativetab.CreativeTabs;

public class BlockNetherReactor extends Block {

    public BlockNetherReactor() {
        super(Material.iron);
        setBlockName("reactor");
        setCreativeTab(CreativeTabs.tabDecorations);
        setHardness(3.5F);
    }

    @Override
    public void registerBlockIcons(IIconRegister reg) {
        blockIcon = reg.registerIcon("reactor");
    }

}
