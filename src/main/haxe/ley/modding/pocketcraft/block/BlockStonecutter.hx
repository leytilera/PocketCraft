package ley.modding.pocketcraft.block;

import net.minecraft.client.renderer.texture.IIconRegister;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.block.material.Material;
import net.minecraft.block.Block;
import net.minecraft.util.IIcon;

class BlockStonecutter extends Block {
	private var top:IIcon;
	private var side:IIcon;
	private var side2:IIcon;
	private var bottom:IIcon;

    public function new() {
        super(Material.rock);
        this.setBlockName(PocketCraft.id("stonecutter"));
        this.setCreativeTab(CreativeTabs.tabDecorations);
        this.setHardness(3.5);
    }

    @:overload
    override function getIcon(dir:Int, meta:Int):IIcon {
        return switch (dir) {
            case 0: this.bottom;
            case 1: this.top;
            case 2 | 3: this.side;
            case _: this.side2;
        };
    }

    @:overload
    override function registerBlockIcons(reg:IIconRegister) {
        this.top = reg.registerIcon(PocketCraft.id("stonecutter_top"));
        this.side = reg.registerIcon(PocketCraft.id("stonecutter_side"));
        this.side2 = reg.registerIcon("furnace_side");
        this.bottom = reg.registerIcon("furnace_top");
    }
}
