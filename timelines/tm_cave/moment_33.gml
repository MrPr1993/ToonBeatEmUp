if !instance_exists(oMineCart)
{
en5=instance_create(1880,172,oAreaSpawner) with en5
{
spawnX=0
enemytype0=oGoblin
enemytype1=oGoblin
enemytype2=oShroom

MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=2 pal0=1 name0="GOHNNY"
}

}
else
timeline_position-=1;