oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oPlayer.areaEntry=0

boss=instance_create(__view_get( e__VW.XView, 0)+160-64,228,oGenie)

with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_boss4)
}


oControl.bossID=oGenie
