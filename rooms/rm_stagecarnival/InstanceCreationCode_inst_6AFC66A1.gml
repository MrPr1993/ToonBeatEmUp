sprite_index=spr_bcameo56
///Gatordragon

framespd=0.1

anim=666

newscript=function()
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,2,framespd)
frame_set(3,3,framespd)
frame_set(4,4,framespd)
frame_set(5,5,framespd)
frame_set(6,6,framespd)
frame_set(7,7,framespd)
//
if specialcheck[0]>0
{
frame_set(8,8,framespd)
frame_set(9,9,framespd)
}
else
{
frame_set(8,10,0.1)
frame_set(9,11,0.05)
}
if AnimFrame>=10
{specialcheck[0]-=1 if specialcheck[0]<=0 specialcheck[0]=10 AnimFrame=0}

}
