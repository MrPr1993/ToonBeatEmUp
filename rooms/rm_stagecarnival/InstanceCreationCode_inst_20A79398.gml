sprite_index=spr_bcameo1
image_xscale=1

framespd=0.05
anim=9999
newscript = function()
{
frame_set(0,0+specialcheck[1]*3,0.1)
frame_set(1,1+specialcheck[1]*3,0.1)
frame_set(2,2+specialcheck[1]*3,0.1) if animFrame>2.9 if specialcheck[0]!=8 {animFrame=0 specialcheck[0]+=1}
if specialcheck[1]=0
{frame_set(3,6,0.1) frame_set(4,7,0.1) if animFrame>4 x-=2}
else
{frame_set(3,7,0.1) frame_set(4,6,0.1) if animFrame>4 x+=2}

if animFrame>4.9 {specialcheck[1]^=1 specialcheck[0]=0 animFrame=0}

}