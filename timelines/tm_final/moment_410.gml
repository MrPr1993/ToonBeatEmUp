if boss.canmove
{
with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_finalboss1)


}
with oPlayer canControl=1

oControl.bossID=boss

}
else
{
timeline_position-=1
}
