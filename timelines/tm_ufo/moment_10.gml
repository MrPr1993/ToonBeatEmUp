/// @description /UFO Appears

if __view_get( e__VW.XView, 0 )>=692+224-320-2
{PlaySound(snd_ufo1)

blackout=instance_create_depth(__view_get( e__VW.XView, 0),0,0,oAlphaFadeFX)
with blackout
{image_alpha=0 isfading=1 fadeSpd=0.005 sprite_index=spr_whitecol
image_xscale=400 image_yscale=400 depth=16777200 fadeMax=0.7
image_blend=c_black
}

}
else
{
timeline_position-=1
}

