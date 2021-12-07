/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>2459-32//8
{//oEnemySpawner.canFollow=1
oPlayer.canControl=0
oPlayer.areaEntry=0
oEnemySpawner.roomHSpd=0 __view_set( e__VW.XView, 0, 2460-32 )
oEnemySpawner.roomMove=0 //3488

//oControl.TextDialogue="STILL FOLLOWING US?"
}
else
{oEnemySpawner.canFollow=0
oControl.camMove=0
oEnemySpawner.roomHSpd=4
oEnemySpawner.roomMove=1

spawner_followset("WaveSet1",2460,2460,0)

//if specialSet4=0
//{
//specialSet4=1
//boss=instance_create(3488-64,208,oBoss1)
//boss.animLock=1 boss.canmove=0 boss.anim=100
//boss.image_xscale=-1
//boss.offScreenMode=0
//}

with oPlayer
{
doubledash=0
dashing=0
}

//oPlayer.x=2460+32
oPlayer.y=200

oEnemySpawner.roomHSpd=4
oEnemySpawner.roomMove=1

oPlayer.dashing=0
oPlayer.key_right=1

//boss.animFrame=0

timeline_position-=1
}



