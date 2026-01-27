if boss.specialanim=0
{
with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_boss3)
}

oControl.bossID=boss
oControl.BossHPD=0;

}
else
{
timeline_position-=1
}
