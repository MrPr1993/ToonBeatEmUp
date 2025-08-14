sprite_index=spr_bcameo76
////guiterman

framespd=0.025

anim=666

x+=12;

//image_xscale=-1

framespd=0.1

newscript=function()
{
specialcheck[0]+=0.1 if specialcheck[0]>=2 specialcheck[0]=0;
specialcheck[1]+=0.25 if specialcheck[1]>=2 specialcheck[1]=0;
frame_set(0,0+specialcheck[0],0.01)
frame_set(1,2+specialcheck[1],0.02)
if AnimFrame=2 if oControl.camX<=x+320
{
dust_make(x,y+1,z-50,0,0,0)
dustmk.sprite_index=spr_explosion2
}
frame_set(2,3,0.25)
frame_set(3,4,0.25)
frame_set(4,5,0.25) 
frame_set(5,6,0.01)
frame_set(6,7+specialcheck[1],0.01)
frame_set(7,9,0.01) 
frame_set(8,10,0.25) 
if AnimFrame>=9
{AnimFrame=0}
}

