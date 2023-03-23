sprite_index=spr_bcameo5
image_xscale=-1

shadow=mask_none

anim=666
newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,2,framespd)
frame_set(3,1,framespd) if animFrame>4-framespd animFrame=0;
}

framespd=0.05