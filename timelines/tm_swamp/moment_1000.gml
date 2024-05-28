
if boss.canmove
{timer_set(1)
oControl.bossID=oWitch
with oPlayer
{
specialanimscript=-1 AnimFrame=0 anim=0
canControl=1 canmove=1
}
with oEnemySpawner cammoveUP=0
}
else timeline_position-=1