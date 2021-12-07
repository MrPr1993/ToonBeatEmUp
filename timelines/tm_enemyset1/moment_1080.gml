/// @description /Boss Start
oControl.TextDialogue=""

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
alarm[0]=60
}

oControl.camMove=1

with oBoss1
{
offScreenMode=1
animLock=0
}

with oPlayer
{animFrame=0 canmove=0
anim=300
}