if !instance_exists(en1)
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,6480,1)

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,190,oSwing)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("WHIP")}

en6=instance_create(__view_get( e__VW.XView, 0)+320+64,230,oSwing)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60  weapon_add("KNIFE")}
}
else
timeline_position-=1;