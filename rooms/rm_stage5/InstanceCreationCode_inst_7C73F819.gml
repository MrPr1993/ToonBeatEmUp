sprite_index=spr_bcameo74
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
frame_set(4,3,framespd) if AnimFrame>=4
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(6,4,0.25)
frame_set(6,5+specialcheck[1],0.01)
frame_set(7,3,framespd) 
if AnimFrame>=8
{specialcheck[0]=20 specialcheck[1]=6 AnimFrame=0}

}
