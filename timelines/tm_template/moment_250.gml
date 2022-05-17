if __view_get( e__VW.XView, 0 )>=1764
{
en5=instance_create(1928,160,oAreaSpawner)
en5.spawnX=0 ///2848
with en5
{
enemytype1=oEnemy1
enemytype2=oEnemy1
enemyMax=2
}


}
else
{
timeline_position-=1
}
