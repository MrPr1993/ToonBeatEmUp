/// @description Prepare

timer_set(0)

if oPlayer.x>=__view_get( e__VW.XView, 0 )+320+160
and oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0 
{
oPlayer.canControl=0
oPlayer.areaEntry=1
oPlayer.x=3008
with oPlayer
{key_right=0 doubledash=0 dashing=0
}

with oControl MusicFade=1
relic=instance_create_depth(3136, 118-16+16,-1,oFlashFX) with relic
{sprite_index=spr_egyptface image_speed=0 animEnd=0 alarm[0]=0 FlashShadow=1 }
bad1=instance_create_depth(3136-48, 164,-1,oFlashFX) with bad1
{sprite_index=spr_burglar_idle image_speed=0 animEnd=0 alarm[0]=0 FlashShadow=1 current_pal=2}
bad2=instance_create_depth(3136+48, 164,-1,oFlashFX) with bad2
{sprite_index=spr_burglarB_stand image_speed=0 animEnd=0 alarm[0]=0 FlashShadow=1 image_xscale=-1 current_pal=2}
bad3=instance_create_depth(3136-48-8, 164+32,-1,oFlashFX) with bad3
{sprite_index=spr_sneak_idle3 image_speed=0 animEnd=0 alarm[0]=0 FlashShadow=1 image_xscale=1 current_pal=2}
bad4=instance_create_depth(3136+48-8, 164+32,-1,oFlashFX) with bad4
{sprite_index=spr_swing_idle3 image_speed=0 animEnd=0 alarm[0]=0 FlashShadow=1 image_xscale=-1 current_pal=2}


}
else
{
timeline_position-=1
}
