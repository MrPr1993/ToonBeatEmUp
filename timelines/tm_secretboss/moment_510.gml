if boss.canmove
{
///To prevent boss getting stuck when off-screen
//PlaySound(snd_magic3)
//with oMonochromeBGFX
//{
//flashy=1
//crazymode=1
//}

with oControl 
{MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_secretboss)
timer_set(1)

}
with oPlayer {specialanimscript=-1 canmove=1 anim=0 canControl=1 areaEntry=0}

oControl.bossID=boss

}
else
{
timeline_position-=1

if boss.specialanim!=0 with oEnemySpawner cammoveUP=0
}
