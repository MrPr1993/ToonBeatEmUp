if fakeboss.z<-10
timeline_position-=1
else
{
boss=instance_create_depth(fakeboss.x,fakeboss.y,-1,oHarpy) boss.z=fakeboss.z
with fakeboss instance_destroy()

oControl.bossID=boss

timeline_position=1760
}
