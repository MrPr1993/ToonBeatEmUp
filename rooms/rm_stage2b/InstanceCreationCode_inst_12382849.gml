y+=4
image_alpha=1

sprite_index=spr_bcameo48

anim=666
newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd)
frame_set(4,3,framespd) if animFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 animFrame=0}
frame_set(5,4,framespd)
frame_set(6,5,0.05)
frame_set(7,3,framespd) 
if animFrame=8-framespd
{specialcheck[0]=10 specialcheck[1]=6 animFrame=0}

}
