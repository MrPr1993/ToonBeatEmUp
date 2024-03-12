if boss.specialanim=0
{
with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_boss4)
}

oControl.bossID=boss

}
else
{
timeline_position-=1
}
