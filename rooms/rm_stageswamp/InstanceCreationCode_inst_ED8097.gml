sprite_index=spr_bcameo12
image_xscale=-1

anim=666

framespd=0.1

newscript=function()
{
	
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd) if AnimFrame>4-framespd
if specialcheck[0]!=20 {AnimFrame=0 specialcheck[0]+=1;}
frame_set(4,3,0.1)
frame_set(5,4,framespd)
frame_set(6,5,framespd)
frame_set(7,6,framespd)
frame_set(8,7,framespd)
frame_set(9,8,framespd) if AnimFrame>9.9 if specialcheck[1]!=10 {specialcheck[1]+=1; AnimFrame=8}
frame_set(10,7,framespd)
frame_set(11,6,framespd)
frame_set(12,5,framespd)
frame_set(13,4,framespd)
frame_set(14,3,0.1)
if AnimFrame>14.7 {specialcheck[1]=0 specialcheck[0]=0 AnimFrame=0}

}

