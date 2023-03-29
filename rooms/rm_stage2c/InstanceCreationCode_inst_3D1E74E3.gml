sprite_index=spr_bcameo13
image_xscale=1

framespd=0.05

y-=4

framespd=0.01

anim=666

framespd=0.1

newscript=function()
{

frame_set(0,0+(4)*specialcheck[1],framespd)
frame_set(1,1+(4)*specialcheck[1],framespd)
frame_set(2,2+(4)*specialcheck[1],framespd)
frame_set(3,1+(4)*specialcheck[1],framespd) if animFrame=4-framespd
if specialcheck[2]!=0 {specialcheck[2]-=1; animFrame=0}
else specialcheck[1]^=1;
frame_set(4,3,framespd)
frame_set(5,3,framespd)
if animFrame>6-framespd {animFrame=0 specialcheck[2]=20}

}


