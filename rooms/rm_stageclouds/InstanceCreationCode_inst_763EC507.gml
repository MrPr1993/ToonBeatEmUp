sprite_index=spr_bcameo73


anim=666

framespd=0.1

shadow=-1;

newscript=function()
{specialcheck[1]+=0.1 if specialcheck[1]>=3  specialcheck[1]=0
frame_set(0,0,0.25)
frame_set(1,0,0.25)
frame_set(2,0,0.25)
frame_set(3,0,0.25)
frame_set(4,1,framespd) if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(5,2,0.1)
frame_set(6,3+specialcheck[1],0.01) 
frame_set(7,3,0.05)
frame_set(8,6,0.05)
frame_set(9,7,0.01)
frame_set(10,8,0.1)
frame_set(11,1,0.1)
frame_set(12,0,0.01)
if AnimFrame>=13
{specialcheck[0]=20 specialcheck[1]=0 AnimFrame=0}
}

