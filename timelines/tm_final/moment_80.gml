if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90 time=99
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,6340,1)

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,208-24,oNurse)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("DR.GLUCO",0)}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,208+24,oNurse)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("DR.GLUCO",0)}	

en3=instance_create(__view_get( e__VW.XView, 0)-64,208,oNurse)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("DR.GLUCO",0)}	

}
else
timeline_position-=1;