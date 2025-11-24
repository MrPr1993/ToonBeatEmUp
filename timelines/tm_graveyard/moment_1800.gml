with thunder
{sprite_index=spr_whitecol oControl.quakeFXTime=10 image_alpha=1 image_xscale=999999 image_yscale=99999999 isfading=1 PlaySound(snd_thunderclap2)}

with ghost
{hspeed=-8 alarm[0]=0 y=96
x=__view_get( e__VW.XView, 0 )+320+64
sprite_index=spr_ghost_charge image_speed=0 image_index=0 image_xscale=-1
	}

