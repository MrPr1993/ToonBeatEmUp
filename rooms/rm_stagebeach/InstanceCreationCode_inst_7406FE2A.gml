sprite_index=spr_bcameo2
image_xscale=1

y-=4

framespd=0.05

z=8

anim=666

framespd=0.1

newscript=function()
{
frame_set(0,0+(8)*specialcheck[1],framespd)
frame_set(1,1+(8)*specialcheck[1],framespd)
frame_set(2,2+(8)*specialcheck[1],framespd)
frame_set(3,3+(8)*specialcheck[1],framespd)
frame_set(4,4+(8)*specialcheck[1],framespd) if AnimFrame=4-framespd
if specialcheck[2]!=0 {specialcheck[2]-=1; AnimFrame=1}
else specialcheck[1]^=1;
frame_set(5,5,framespd)
frame_set(6,6,framespd)
frame_set(7,7,0.01)
frame_set(8,6,framespd)
frame_set(9,5,framespd)
if AnimFrame>10-framespd {AnimFrame=0 specialcheck[2]=20}
}

