sprite_index=spr_bcameo28

x+=8
y-=16

framespd=0.025


anim=666

framespd=0.1

newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd)
 if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(4,3,framespd)
frame_set(5,4,0.01)
frame_set(6,5,0.1)
frame_set(7,4,0.01) 
frame_set(8,3,framespd)
if AnimFrame=9-framespd
{specialcheck[0]=20 AnimFrame=0}
}

