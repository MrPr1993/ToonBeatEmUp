sprite_index=spr_bcameo77
image_xscale=1

anim=666
newscript=function()
{specialcheck[1]+=0.1 if specialcheck[1]>=2 specialcheck[1]=0;
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd)
 if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(4,3,framespd)
frame_set(5,4,0.1)
frame_set(6,5,0.1)
frame_set(7,6,0.1) 
frame_set(6,7,0.1)
frame_set(8,8,0.1) 
frame_set(9,9,0.1)
frame_set(10,10,0.1) 
frame_set(11,11+specialcheck[1],0.01)
frame_set(12,10,0.1) 
frame_set(13,9,0.1)
frame_set(14,8,0.1) 
frame_set(15,7,0.1)
frame_set(16,6,0.1) 
frame_set(17,5,framespd)
frame_set(18,4,framespd)
if AnimFrame=19-framespd
{specialcheck[0]=20 AnimFrame=0}
}
