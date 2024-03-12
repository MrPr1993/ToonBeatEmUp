oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oPlayer.areaEntry=0

with oControl {MusicFade=0 MusicFadeAdd=1}

boss=instance_create(__view_get( e__VW.XView, 0)+320-64,228,oMartianBoss)
musicplaystart(msc_boss4)
oControl.bossID=oMartianBoss


with boss
{canmove=0 animFrame=0 anim=100 image_xscale=-1

}
