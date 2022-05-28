if __view_get( e__VW.XView, 0 )>=4000-160
{


en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,210,0,oZombieMan) with en3
{image_xscale=-1 canAttack=5 alarm[3]=30}
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320+64,190,0,oZombieWoman) with en4
{image_xscale=-1 canAttack=5 alarm[3]=30}


}
else
{
timeline_position-=1
}
