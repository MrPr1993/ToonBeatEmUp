sprite_index=spr_bcameo25
image_xscale=-1
y+=4
image_alpha=1


framespd=0.025

anim=666

framespd=0.1

newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd)
frame_set(4,3,framespd) if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(5,4,0.1)
frame_set(6,5,0.01)
frame_set(7,6,0.1) 
frame_set(8,7,0.01) 
frame_set(9,8,0.1) 
frame_set(10,3,0.1) 
if AnimFrame=11-0.1
{specialcheck[0]=20 specialcheck[1]=9 AnimFrame=0}

}
