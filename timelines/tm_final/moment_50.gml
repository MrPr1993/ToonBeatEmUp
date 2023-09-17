/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=3680-2-320
{

en1=instance_create_depth(3190,160,-1,oAreaSpawner)
en2=instance_create_depth(3320,160,-1,oAreaSpawner)
en3=instance_create_depth(3448,160,-1,oAreaSpawner)
with oAreaSpawner
{spawnX=0 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemyMax=0}
en1.enemytype0=oWrestler
en2.enemytype0=oBoxer
with en3 {enemytype0=oWrestler name0="MS.CRUSH" pal0=7}
name0=-1
}
else
{
timeline_position-=1
}

