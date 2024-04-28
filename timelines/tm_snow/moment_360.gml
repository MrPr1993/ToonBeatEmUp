if !instance_exists(boss)
{
//if instance_exists(oEnemy1) with oEnemy1 if dead=0 {dead=1 DeathCryOnce=1 HitType=1 event_user(0)}
}
else
{
if boss.dead=1 timer_set(0)
timeline_position-=1
}

