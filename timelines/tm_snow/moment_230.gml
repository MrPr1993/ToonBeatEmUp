if specialSet8=20
{
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
specialSet8+=1;
}