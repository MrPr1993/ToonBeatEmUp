sprite_index=spr_bcameo36
image_xscale=1

anim=666

framespd=0.1
if specialcheck[1] framespd=0.2
newscript=function()
{

frame_set(0,0+(5)*specialcheck[1],framespd)
frame_set(1,1+(5)*specialcheck[1],framespd)
frame_set(2,2+(5)*specialcheck[1],framespd)
frame_set(3,3+(5)*specialcheck[1],framespd) if animFrame=4-framespd
if specialcheck[2]!=0 {specialcheck[2]-=1; animFrame=0}
else specialcheck[1]^=1;
frame_set(4,5-specialcheck[1],framespd)
frame_set(5,4+specialcheck[1],framespd)
if animFrame>6-framespd {animFrame=0 specialcheck[2]=20}
}

