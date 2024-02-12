if fakeboss.z<-10
timeline_position-=1
else
{
boss=instance_create_depth(fakeboss.x,fakeboss.y,-1,oHarpy) boss.z=fakeboss.z

en1=instance_create_depth(fakeen1.x,fakeen1.y,-1,oHarpyE) en1.z=fakeen1.z
en2=instance_create_depth(fakeen2.x,fakeen2.y,-1,oHarpyE) en2.z=fakeen2.z

with fakeboss instance_destroy()
with fakeen1 instance_destroy()
with fakeen2 instance_destroy()

oControl.bossID=boss

timeline_position=1760
}
