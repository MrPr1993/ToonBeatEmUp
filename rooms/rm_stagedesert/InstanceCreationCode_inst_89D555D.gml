sprite_index=spr_bcameo60
////RJ - 

framespd=0.025

anim=666

image_xscale=-1

framespd=0.1

newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd)
frame_set(4,3,framespd) if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(5,4,framespd)
frame_set(6,5,0.05)
frame_set(7,3,framespd) 
if AnimFrame=8-framespd
{specialcheck[0]=20 specialcheck[1]=6 AnimFrame=0}

}
