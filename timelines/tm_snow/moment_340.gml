if boss.anim=10
with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_boss4)
}
else
{
timeline_position-=1;
specialSet8+=1;
}