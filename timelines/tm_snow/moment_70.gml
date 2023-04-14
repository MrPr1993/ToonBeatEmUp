/// @description Baddies Appear 3 - Snow Babe

if __view_get( e__VW.XView, 0 )>=3920-2-320
{
en1=instance_create(3784, 170,oAreaSpawner)
en1.spawnX=0 ///2848
en1.enemytype0=oSnowGirl en1.hasFake=0
en1.FXtype=1 turn0=-1

}
else
{
timeline_position-=1
}

