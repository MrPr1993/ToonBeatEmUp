sprite_index=spr_bcameo66
////Nfate

framespd=0.025

anim=666

image_xscale=-1

framespd=0.1

newscript=function()
{specialcheck[1]+=0.25 if specialcheck[1]>=2  specialcheck[1]=0
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd)
frame_set(4,3,framespd) if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(5,4+specialcheck[1],0.01)
frame_set(6,3,framespd) 
if AnimFrame=7-framespd
{specialcheck[0]=20 specialcheck[1]=6 AnimFrame=0}

}
