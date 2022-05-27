with thunder
{sprite_index=spr_whitecol oControl.quakeFXTime=10 image_alpha=1 image_xscale=999999 image_yscale=99999999 isfading=1 PlaySound(snd_thunder)}


boss=instance_create_depth(ghost2.x, ghost2.y, -1, oGhostBoss) boss.z=ghost2.z
boss.animFrame=8.1 boss.anim=14 boss.canmove=0

with ghost instance_destroy()
with ghost2 instance_destroy()

timeline_position=2710
