if boss.hp<=0
{
with oControl eventTimerMode=2
//if instance_exists(oEnemy1) with oEnemy1 if dead=0 {dead=1 DeathCryOnce=1 HitType=1 event_user(0)}
}
else
{
timeline_position-=1
}

