sprite_index=spr_bcameo63
////Gaming Eelektross

framespd=0.025

anim=666

//image_xscale=-1
x-=8 y-=8
framespd=0.1
specialcheck[0]=4
newscript=function()
{
frame_set(0,0,0.005)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.005)
frame_set(4,2,0.1) 
frame_set(5,1,0.1)
if AnimFrame>=5
if specialcheck[0]!=0 {specialcheck[0]-=1 AnimFrame=0}
frame_set(6,0,0.1)
frame_set(7,4,0.1)
frame_set(8,5,0.05)
frame_set(9,4,0.1) 
if AnimFrame>=10
{specialcheck[0]=4 specialcheck[1]=6 AnimFrame=0}

}

barrel=instance_create_depth(x,y,-1,oCameoChar) with barrel
{
sprite_index=spr_bcameo65 anim=9999
}