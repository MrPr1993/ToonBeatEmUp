if boss.canmove
{
with oPlayer canControl=1	
oEnemySpawner.cammoveUP=0 oControl.time=99
timer_set(1)
}
else
{
timeline_position-=1
}

