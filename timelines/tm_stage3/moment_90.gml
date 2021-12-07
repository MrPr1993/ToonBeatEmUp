anchor=instance_create_depth(156,214,0,oFlashFX) with anchor
{name="Anchor" image_speed=0 sprite_index=spr_anchor alarm[0]=-1}
anchor=instance_create_depth(156,214,0,oFlashFX) with anchor
{name="AnchorB" image_speed=0 sprite_index=spr_anchor image_index=2 alarm[0]=-1 z-=96}
anchor=instance_create_depth(156,214,0,oFlashFX) with anchor
{name="AnchorB" image_speed=0 sprite_index=spr_anchor image_index=2 alarm[0]=-1 z-=96*2}

with oFlashFX if name="Anchor" or name="AnchorB"
{zSpeed=8*2 z-=236*2}