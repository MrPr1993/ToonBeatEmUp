hostID=instance_create_depth(3072,y,-1,oCameoChar)
with hostID
{
//W.Kohaku - Character: Baaani
y-=2 x-=10
sprite_index=spr_cameo11
newscript=function()
{
if anim=500
{
frame_set(0,3,0.1)
frame_set(1,4,0.1) if AnimFrame>1.8 AnimFrame=0
}
if anim=501
{
frame_set(0,5,0.25)
frame_set(1,6,0.25) if AnimFrame>1.8 AnimFrame=0
}
}

}