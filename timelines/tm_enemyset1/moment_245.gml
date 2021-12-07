if __view_get( e__VW.XView, 0 )>=832
{
en3=instance_create_depth(1672,148,0,oSneak)
en3.canAttack=6 en3.isIdle=1 en3.alarm[1]=60 en3.idleRange=60
}
else
{
timeline_position-=1
}

