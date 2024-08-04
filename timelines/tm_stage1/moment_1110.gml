/// @description /Boss Start
oControl.TextDialogue=""

oControl.time=99

oPlayer.canControl=1
oPlayer.areaEntry=0
oPlayer.Immune=0
oEnemySpawner.GoBack=1
oEnemySpawner.MinX=0

spawner_followset("WaveSet1",3488,3488,1)

with oEnemySpawner
{
oEnemySpawner.canFollow=1
oControl.camMove=0
}
with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_boss)
alarm[0]=180
}

oControl.camMove=1
with fk instance_destroy()
with oBoss1
{y-=9999
offScreenMode=1
animLock=0
}

oControl.bossID=oBoss1

with oPlayer
{AnimFrame=0 canmove=0
anim=300
}