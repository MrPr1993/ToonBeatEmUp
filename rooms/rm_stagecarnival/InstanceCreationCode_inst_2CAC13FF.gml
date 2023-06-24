sprite_index=spr_bcameo39
image_xscale=1
image_alpha=1


framespd=0.025

anim=666

framespd=0.1

newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,2,framespd)
frame_set(3,0,framespd)
frame_set(4,3,framespd) if animFrame=3-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 animFrame=0}
frame_set(5,4,framespd)
frame_set(6,5,0.01)
frame_set(7,4,framespd) 
frame_set(8,3,framespd) if animFrame=8-framespd if specialcheck[1]!=0{specialcheck[1]-=1 animFrame=6}
if animFrame=9-framespd
{specialcheck[0]=20 specialcheck[1]=0 animFrame=0}

}
