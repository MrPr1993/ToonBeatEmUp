sprite_index=spr_bcameo3
image_xscale=-1
framespd=0.05
anim=1

anim=666

framespd=0.1

newscript=function()
{
	
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd) if animFrame>4-framespd
if specialcheck[0]!=20 {animFrame=0 specialcheck[0]+=1;}
frame_set(4,3,0.1)
frame_set(5,4,framespd)
frame_set(6,5,framespd)
frame_set(7,5,framespd)
frame_set(8,5,framespd)
frame_set(9,5,framespd) if animFrame>9.9 if specialcheck[1]!=10 {specialcheck[1]+=1; animFrame=8}
frame_set(10,5,framespd)
frame_set(11,5,framespd)
frame_set(12,5,framespd)
frame_set(13,4,framespd)
frame_set(14,3,0.1)
if animFrame>14.7 {specialcheck[1]=0 specialcheck[0]=0 animFrame=0}

}
