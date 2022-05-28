if __view_get( e__VW.XView, 0 )>=4512-32-320
{
en5=instance_create_depth(__view_get( e__VW.XView, 0 )-16,210,0,oZombieMan) with en5
{image_xscale=-1 canAttack=5 alarm[3]=30}
en6=instance_create_depth(__view_get( e__VW.XView, 0 )-16,190,0,oZombieWoman) with en6
{image_xscale=-1 canAttack=5 alarm[3]=30}

}
else
{
timeline_position-=1
}
