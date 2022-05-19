if __view_get( e__VW.XView, 0 )>=3600
{

en2=instance_create_depth(__view_get( e__VW.XView, 0 )+320-32,250-48,0,oEntryJump) with en2
{spawnFall=spr_skeleton_kick spawnEnemy=oSkeleton}
en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320-32,250,0,oEntryJump) with en3
{spawnFall=spr_skeleton_kick spawnEnemy=oSkeleton}
}
else
{
timeline_position-=1
}
