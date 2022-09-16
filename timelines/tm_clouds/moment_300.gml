/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2238
{
en3=instance_create(2496,160,oAreaSpawner)
with en3
{
spawnX=0 ///768
enemytype0=oWrestler MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1
}
}
else
{
timeline_position-=1
}

