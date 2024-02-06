if boss.canmove
{timer_set(1)
oControl.bossID=boss
oPlayer.canControl=1
}
else timeline_position-=1