sprite_index=spr_bcameo71


anim=666

framespd=0.25

shadow=-1;

newscript=function()
{specialcheck[1]+=0.25 if specialcheck[1]>=3  specialcheck[1]=0
frame_set(0,0,framespd)
frame_set(1,0,framespd)
frame_set(2,0,framespd)
frame_set(3,0,framespd)
frame_set(4,1+6*specialcheck[2],framespd) if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(5,2+6*specialcheck[2],0.25)
frame_set(6,3+6*specialcheck[2]+specialcheck[1],0.01) 
frame_set(7,1+6*specialcheck[2],0.25) 
frame_set(8,2+6*specialcheck[2],0.25) 
if AnimFrame=9-framespd
{specialcheck[0]=20 specialcheck[1]=6 AnimFrame=0 specialcheck[2]^=1;}
}

