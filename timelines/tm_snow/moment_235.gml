if specialSet8!=30
{
oPlayer.key_right=0;
//oPlayer.canControl=1;
oPlayer.areaEntry=0	

boss=instance_create_depth(bos.x,bos.y,-1,oMirrorLady)
with boss
{canmove=0 anim=100 depth=16777213}
with bos instance_destroy()
}
else
{specialSet8+=1
timeline_position-=1;	
}