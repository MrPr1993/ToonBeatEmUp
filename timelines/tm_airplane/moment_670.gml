if oPlayer.canmove=1
{PlaySound(snd_harpy3)
fakeboss=instance_create_depth(__view_get( e__VW.XView, 0 )+70,208,-1,oFlashFX) with fakeboss
{z=-256 FlashShadow=1 shadow=spr_bigshadow zSpeed=1 sprite_index=spr_harpy_wind image_speed=0.25 alarm[0]=0 animEnd=0}

fakeen1=instance_create_depth(__view_get( e__VW.XView, 0 )+70+64,208-16,-1,oFlashFX) with fakeen1
{z=-256 FlashShadow=1 shadow=spr_shadow zSpeed=1 sprite_index=spr_harpye_stand image_speed=0.25 alarm[0]=0 animEnd=0}

fakeen2=instance_create_depth(__view_get( e__VW.XView, 0 )+70-64,208+16,-1,oFlashFX) with fakeen2
{z=-256 FlashShadow=1 shadow=spr_shadow zSpeed=1 sprite_index=spr_harpye_stand image_speed=0.25 alarm[0]=0 animEnd=0}


}
else
timeline_position-=1
