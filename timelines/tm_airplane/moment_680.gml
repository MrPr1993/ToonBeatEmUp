if fakeboss.z<-10
timeline_position-=1
else
{
boss=instance_create_depth(fakeboss.x,fakeboss.y,-1,oHarpy) boss.z=fakeboss.z boss.alarm[0]=20

en1=instance_create_depth(fakeen1.x,fakeen1.y,-1,oHarpyE) en1.z=fakeen1.z en1.alarm[0]=20
en2=instance_create_depth(fakeen2.x,fakeen2.y,-1,oHarpyE) en2.z=fakeen2.z en2.alarm[0]=20

with fakeboss instance_destroy()
with fakeen1 instance_destroy()
with fakeen2 instance_destroy()

oControl.bossID=boss

oControl.time=99

timeline_position=1760
}
