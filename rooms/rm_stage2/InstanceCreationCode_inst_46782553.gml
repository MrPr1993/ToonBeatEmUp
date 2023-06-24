sprite_index=spr_bcameo33
image_xscale=1

anim=666

framespd=0.1

newscript=function()
{

frame_set(0,0+(5)*specialcheck[1],framespd)
frame_set(1,1+(5)*specialcheck[1],framespd)
frame_set(2,2+(5)*specialcheck[1],framespd)
frame_set(3,1+(5)*specialcheck[1],framespd) if animFrame=4-framespd
if specialcheck[2]!=0 {specialcheck[2]-=1; animFrame=0}
else specialcheck[1]^=1;
frame_set(4,4-specialcheck[1],framespd)
frame_set(5,3+specialcheck[1],framespd)
if animFrame>6-framespd {animFrame=0 specialcheck[2]=20}

}

