with thunder
{sprite_index=spr_whitecol oControl.quakeFXTime=10 image_alpha=1 image_xscale=999999 image_yscale=99999999 isfading=1 PlaySound(snd_thunder)}

musicplaystart(msc_boss)
oControl.MusicFade=0

with ghost
{hspeed=0 alarm[0]=0 y=oPlayer.y 
z=-64 PlaySound(snd_ant14)
sprite_index=spr_ghost_head_scare image_speed=0.5 image_index=0 image_xscale=-1 loopimg=1 image_blend=c_white
image_alpha=0.8
	}
	
with oPlayer
{
anim=304 animFrame=0 PlaySound(DeathCry)
}


