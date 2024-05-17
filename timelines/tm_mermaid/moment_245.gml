if boss.canmove
{timer_set(1)
	with oEnemySpawner cammoveUP=0
oControl.bossID=boss
oPlayer.canControl=1 oPlayer.anim=0 oPlayer.canmove=1
with sandstorm instance_destroy()
}
else timeline_position-=1