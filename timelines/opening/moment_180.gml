musicplaystart(msc_countdown)

bad1=instance_create_depth(420+24, 128+16,-1,oFlashFX);
with bad1 {name="BAD" alarm[0]=-1 hspeed=-4 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0.5 sprite_index=spr_sneak_move }

bad2=instance_create_depth(420+24, 128+16,-1,oFlashFX);
with bad2 {name="BAD" alarm[0]=-1 hspeed=-4 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0.5 sprite_index=spr_burglar_move current_pal=2}

bad3=instance_create_depth(420+24, 128+16,-1,oFlashFX);
with bad3 {name="BAD" alarm[0]=-1 hspeed=-4 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0.5 sprite_index=spr_burglarB_move current_pal=2}

bad4=instance_create_depth(420+24, 128+16,-1,oFlashFX);
with bad4 {name="BAD" alarm[0]=-1 hspeed=-4 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0.5 sprite_index=spr_burglar_move current_pal=2}

with oFlashFX if name="BAD" image_blend=c_black


