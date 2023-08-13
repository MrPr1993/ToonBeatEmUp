if __view_get( e__VW.XView, 0 )>=6684-320-2
{
en4=instance_create(6400, 192,oAreaSpawner) with en4
{
spawnX=6300+60 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 

enemytype0=oFairy
enemytype1=oFairy
//enemytype2=oClown turn2=-1
enemyMax=1


}

}
else
timeline_position-=1
