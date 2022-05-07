
with oFlashFX if name="BAD2a" or name="BAD2b" or name="BAD2c"
{
if sprite_index!=spr_burglar_point
{hspeed=-1
if name="BAD2a" sprite_index=spr_burglar_move
if name="BAD2b" sprite_index=spr_burglarB_move
}
}

with blackout
{image_alpha=0 isfading=1 fadeSpd=0.01 sprite_index=spr_whitecol image_blend=c_black
image_xscale=400 image_yscale=400 depth=-6000
}


