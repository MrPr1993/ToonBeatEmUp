/// @description After Boxer
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(enA)
and !instance_exists(enB)
and !instance_exists(enC)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=2560}
spawner_followset("WaveSet1",0,1158+320+1240+1240,1)
oControl.time=99

en1=instance_create(3000-320,214-16,oEntryTeleport)
en2=instance_create(3000-320,214+16,oEntryTeleport)


}
else
timeline_position-=1

