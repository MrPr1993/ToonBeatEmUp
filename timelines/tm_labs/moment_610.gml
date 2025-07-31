
if boss.canmove
{timer_set(1)
oControl.bossID=oScientist
oPlayer.canControl=1 oControl.time=99
if global.AllStageMode=0
oControl.eventTimerMode=1
}
else timeline_position-=1

