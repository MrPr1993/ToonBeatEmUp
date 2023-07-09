if __view_get( e__VW.XView, 0 )>=6884-320-2
{
en4=instance_create(6400, 192,oAreaSpawner) with en4
{
spawnX=6400-240 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 

enemytype0=oBear  turn0=-1 name0="YOGI" hp0=0.15 pal0=2 palS0=spr_playerpal;
enemytype1=oBear turn1=-1 name1="FOZZI" hp1=0.15 pal1=3 palS1=spr_playerpal;
enemytype2=oClown turn2=-1
enemyMax=2
}

}
else
timeline_position-=1
