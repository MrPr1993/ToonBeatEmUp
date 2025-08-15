sprite_index=spr_bcameo75
////shademanv4

framespd=0.025

anim=666

//image_xscale=-1

framespd=0.1

newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd)
if AnimFrame>=4
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0 image_index=2}
frame_set(4,3,0.1)
frame_set(5,4,0.1)
frame_set(6,5,0.1)
frame_set(7,6,0.1) 
if AnimFrame>=8
if specialcheck[1]!=0 {AnimFrame=0 specialcheck[0]=3 specialcheck[1]-=1}
frame_set(8,7,0.2) 
frame_set(9,8,0.01) 
frame_set(10,7,0.2)
if AnimFrame>=11
{AnimFrame=0 specialcheck[0]=3 specialcheck[1]=4}
}
