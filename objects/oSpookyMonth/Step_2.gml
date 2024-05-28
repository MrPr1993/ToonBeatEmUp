enemy_endstep()
throw_step()

overwriteStand=1

shadowSpr=spr_spookys canmove=0 if anim!=590067  anim=590067

if keyboard_check(vk_enter)
{oPlayer.canmove=0
oPlayer.AnimFrame=AnimFrame
oPlayer.image_index=image_index
oPlayer.anim=590067
}