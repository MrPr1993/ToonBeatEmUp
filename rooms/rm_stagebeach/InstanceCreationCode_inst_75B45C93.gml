sprite_index=spr_bcameo61
////Wolfzeta

framespd=0.025

anim=666

image_xscale=-1

framespd=0.1

newscript=function()
{specialcheck[1]+=0.1 if specialcheck[1]>=2 specialcheck[1]=0
frame_set(0,0,0.025)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.025)
frame_set(4,2,0.1)
frame_set(5,1,0.1)
if AnimFrame=5-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(6,0,0.025)
frame_set(7,1,0.1)
frame_set(8,2,0.1)
frame_set(9,3,0.1)
frame_set(10,4+specialcheck[1],0.01)
frame_set(11,3,0.1)
frame_set(12,2,0.1)
frame_set(13,1,0.1)
if AnimFrame>=14
{specialcheck[0]=5 specialcheck[1]=6 AnimFrame=0}

}
