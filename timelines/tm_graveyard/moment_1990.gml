with ghost {image_speed=0.5 sprite_index=spr_ghost_head image_index=3 hspeed=0.5 zSpeed=-0.3 loopimg=3}

ghost2=instance_create_depth(__view_get( e__VW.XView, 0 )+320-96-2,oPlayer.y,-1,oFlashFX) with ghost2
{sprite_index=spr_ghost_spin image_index=2 image_speed=0.5 image_blend=c_white image_alpha=0.9 haspal=0 animEnd=0 alarm[0]=0 image_xscale=-1
	loopimg=1 z=-256-128+42 zSpeed=4 lerpslowSpd=0.01 lerpslow=1 PlaySound(snd_ant11)
	}

