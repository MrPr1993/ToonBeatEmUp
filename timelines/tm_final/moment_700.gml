if oDastardly2.canmove
{timer_set(1)
boss=oDastardly2
with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_finalboss2)


}
with oPlayer {canControl=1 canmove=1 areaEntry=0}

oControl.bossID=boss
}
else
timeline_position-=1;