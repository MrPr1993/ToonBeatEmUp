if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,2640-640-320,1)

en1=instance_create_depth(__view_get( e__VW.XView, 0)+320+96,200+64+240,-1,oSneak)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("TOMMYGUN")}

en2=instance_create_depth(__view_get( e__VW.XView, 0)+320+96,200+128+240,-1,oSwing)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("HAMMER")}


}
else
timeline_position-=1;