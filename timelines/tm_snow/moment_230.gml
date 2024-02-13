if __view_get( e__VW.XView, 0 )>8416-1
{
oEnemySpawner.roomHSpd=0 __view_set( e__VW.XView, 0, 8416)
oEnemySpawner.roomMove=0 //3488

oPlayer.key_right=0;
//oPlayer.canControl=1;
oPlayer.areaEntry=0
specialSet8=0

boss=instance_create_depth(bos.x,bos.y,-1,oMirrorLady)
with boss
{canmove=0 anim=100 depth=16777213}
with bos instance_destroy()
}
else
{
timeline_position-=1;

}