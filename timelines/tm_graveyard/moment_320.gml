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

en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,192,0,oZombieWoman)
with en3 {canmove=0 anim=61 idleRange=15}
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16+64,192,0,oZombieMan)
with en4 {canmove=0 anim=61 image_xscale=-1 idleRange=15+64}
en5=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16+16,192+16,0,oSkeleton)
with en5 {canmove=0 anim=61 idleRange=15+16}

}
else
{
timeline_position-=1
}



