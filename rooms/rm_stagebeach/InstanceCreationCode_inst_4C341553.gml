sprite_index=spr_bcameo72
////Wolfzeta

framespd=0.025

anim=666

image_xscale=1

shadow=spr_bcameo72s

framespd=0.1

newscript=function()
{
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,0,0.1)
frame_set(4,1,0.1)
frame_set(5,2,0.1)
if AnimFrame=5-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(6,0,0.1)
frame_set(7,1,0.1)
frame_set(8,3,0.1)
frame_set(9,4,0.1)
frame_set(10,5,0.01)
frame_set(11,3,0.1)
if AnimFrame>=12
{specialcheck[0]=20 AnimFrame=0}

}
