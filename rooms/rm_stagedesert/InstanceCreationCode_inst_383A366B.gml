sprite_index=spr_bcameo49

framespd=0.025

anim=666

framespd=0.1

image_xscale=1

newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,2,framespd)
frame_set(3,1,framespd)
frame_set(4,3,framespd) if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(5,4,0.1)
frame_set(6,5,0.1)
frame_set(7,4,0.1)
frame_set(8,5,0.1)
frame_set(9,4,0.1)
frame_set(10,5,0.1)
frame_set(11,4,0.1)
frame_set(12,5,0.1)
frame_set(13,4,0.1)
frame_set(14,3,0.1)
if AnimFrame=15-0.1
{specialcheck[0]=10 specialcheck[1]=6 AnimFrame=0}

}
