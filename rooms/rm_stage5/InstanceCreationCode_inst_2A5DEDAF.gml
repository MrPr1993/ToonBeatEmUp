hostID=instance_create_depth(3280,y,-1,oCameoChar)
with hostID
{
//Toonyman
y-=2 x-=10
sprite_index=spr_bcameo11
newscript=function()
{
if anim=500
{
frame_set(0,3,0.1)
frame_set(1,4,0.1)
}
if anim=501
{
frame_set(0,5,0.25)
frame_set(1,6,0.25) if AnimFrame>1.8 AnimFrame=0
}
}

}

hostID2=instance_create_depth(3478,y,-1,oCameoChar)
with hostID2
{
//
y-=2 x+=10
sprite_index=spr_bcameo8
image_xscale=-1
newscript=function()
{
if anim=500
{
frame_set(0,3,0.1)
frame_set(1,4,0.1)
}
if anim=501
{
frame_set(0,5,0.25)
frame_set(1,6,0.25) if AnimFrame>1.8 AnimFrame=0
}
}

}

