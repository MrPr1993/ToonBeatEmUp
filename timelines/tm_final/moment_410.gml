if boss.canmove
{
///To prevent boss getting stuck when off-screen
if instance_exists(oCrate) with oCrate instance_destroy()	

with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_finalboss1)
timer_set(1)

}
with oPlayer {canControl=1 areaEntry=0}

oControl.bossID=boss

}
else
{
timeline_position-=1

if boss.specialanim!=0 with oEnemySpawner cammoveUP=0
}
