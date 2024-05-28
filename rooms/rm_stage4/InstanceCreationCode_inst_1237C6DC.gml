sprite_index=spr_bcameo45
image_xscale=1

anim=666
newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd)
 if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(4,3,framespd)
frame_set(5,4,0.1)
frame_set(6,5,0.1)
frame_set(7,4,0.1) 
frame_set(6,5,0.1)
frame_set(8,4,0.1) 
frame_set(9,5,0.1)
frame_set(10,4,0.1) 
frame_set(11,5,0.1)
frame_set(12,4,0.1) 
frame_set(13,5,0.1)
frame_set(14,4,0.1) 
frame_set(15,5,0.1)
frame_set(16,4,0.1) 
frame_set(17,3,framespd)
if AnimFrame=18-framespd
{specialcheck[0]=20 AnimFrame=0}
}
