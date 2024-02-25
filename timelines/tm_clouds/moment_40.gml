if !instance_exists(en1)
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,2320,1)

en4=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oBear)
with en4 {canAttack=5 alarm[1]=60}

en5=instance_create(__view_get( e__VW.XView, 0)-64,200+64,oBear)
with en5 {canAttack=5 alarm[1]=60}	


}
else
timeline_position-=1;