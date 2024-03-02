if __view_get( e__VW.XView, 0 )>=832
{
en3=instance_create_depth(1872,148,0,oSneak)
with en3 {canmove=0 anim=61} en3.image_xscale=-1



en4=instance_create_depth(1680,160,-1,oEntryClimb) en4.z=-64 en4.rangeX=1680-300
with en4 enemy_switch("MR.LAR",0)
}
else
{
timeline_position-=1
}

