/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2614
{
en1=instance_create(3328, 176,oAreaSpawner) with en1
{
spawnX=3328-330 ///768
enemytype0=oZombieMan MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0
}
en2=instance_create(3664,160,oAreaSpawner) with en2
{
spawnX=3664-330 ///768
enemytype0=oZombieWoman MaxSpawnFrame=0 visible=1
enemytype1=oZombieMan
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=1
}

en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,192,0,oSkeleton)
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,192+24,0,oSkeleton)
en5=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,192+48,0,oSkeleton)


}
else
{
timeline_position-=1
}



