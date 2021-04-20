package ley.modding.pocketcraft.block;

import net.minecraft.block.Block;
import net.minecraft.block.material.Material;
import net.minecraft.client.renderer.texture.IIconRegister;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.util.IIcon;

public class BlockStonecutter extends Block {

    private IIcon top;
    private IIcon side;
    private IIcon side2;
    private IIcon bottom;

    public BlockStonecutter() {
        super(Material.rock);
        setBlockName("stonecutter");
        setCreativeTab(CreativeTabs.tabDecorations);
        setHardness(3.5F);
    }

    @Override
    public IIcon getIcon(int dir, int meta) {
        switch (dir) {
            case 0: return bottom;
            case 1: return top;
            case 2:
            case 3:
                return side;
        }
        return side2;
    }

    @Override
    public void registerBlockIcons(IIconRegister reg) {
        top = reg.registerIcon("stonecutter_top");
        side = reg.registerIcon("stonecutter_side");
        side2 = reg.registerIcon("furnace_side");
        bottom = reg.registerIcon("furnace_top");
    }
}
