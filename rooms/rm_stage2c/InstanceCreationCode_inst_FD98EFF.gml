sprite_index=spr_bcameo26
image_xscale=-1

framespd=0.05

y-=4

framespd=0.025


anim=666

framespd=0.1

newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd)
 if animFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 animFrame=0}
frame_set(4,3,framespd)
frame_set(5,4,0.1)
frame_set(6,5,0.01)
frame_set(7,5,0.1) 
frame_set(8,6,framespd)
if animFrame=9-framespd
{specialcheck[0]=20 animFrame=0}
}

