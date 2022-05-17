/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,1586+320,1)

en1=instance_create(__view_get( e__VW.XView, 0 )-140,240,oEntryHorse) en1.rideX=1470 en1.rangeX=0 en1.horsepal=2

//with en2
//{ySpeed=3 rangeX=0 spawnSpeedZ=-3 ridetime=210+20 isDepth=0 horsepal=1 depth=16777210 horsedepth=16777210}
//rideX=1640 rangeX=0

}
else
timeline_position-=1

