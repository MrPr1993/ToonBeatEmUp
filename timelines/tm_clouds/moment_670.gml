if oPlayer.canmove=1
{PlaySound(snd_harpy3)
fakeboss=instance_create_depth(__view_get( e__VW.XView, 0 )+70,208,-1,oFlashFX) with fakeboss
{z=-256 FlashShadow=1 shadow=spr_carshadow zSpeed=1 sprite_index=spr_harpy_wind image_speed=0.25 alarm[0]=0 animEnd=0}
}
else
timeline_position-=1
