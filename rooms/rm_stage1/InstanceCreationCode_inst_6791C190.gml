y+=4
sprite_index=spr_cameo4
image_xscale=-1
framespd=0.05

anim=666
newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,2,framespd)
frame_set(3,1,framespd)
 if AnimFrame=4-framespd 
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(4,3,framespd)
frame_set(5,4,0.1)
frame_set(6,5,0.01)
frame_set(7,4,0.1) 
frame_set(8,3,framespd)
if AnimFrame=9-framespd
{specialcheck[0]=20 AnimFrame=0}
}
