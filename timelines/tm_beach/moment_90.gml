/// @description Octopus Fight

if __view_get( e__VW.XView, 0 )>=4560-2-320-320
{
if specialSet8=90
{specialSet8=0 oControl.MusicFade=0 oControl.MusicFadeAdd=1
musicplaystart(msc_boss)
en1=instance_create(4082,178,oOctopus)
with en1
{immune=1 anim=66 canmove=0}

with oPlayer {canControl=1}

oControl.bossID=oBoss1a
}
else
{
with oPlayer
{
canControl=0
automoveX=4082-64 automoveY=178+64 automove=1
}

oControl.MusicFade=1 oControl.MusicFadeAdd=1
specialSet8+=1
timeline_position-=1
}

}
else
{
timeline_position-=1
}

