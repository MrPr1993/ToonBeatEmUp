if __view_get( e__VW.XView, 0 )>=7664-320-2
{

en4=instance_create_depth(__view_get( e__VW.XView, 0 )-32,196,-1,oClown) with en4
{canAttack=5 alarm[1]=30}
en5=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,196+48,-1,oClown) with en5
{canAttack=5 alarm[1]=30 image_xscale=-1}
//spawner_followset("WaveSet1",0,3338-64+640,1)
}
else
timeline_position-=1
