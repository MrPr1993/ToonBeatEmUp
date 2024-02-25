if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,3680,1)

en4=instance_create(__view_get( e__VW.XView, 0)-64,208-16,oSneak)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60}

en5=instance_create(__view_get( e__VW.XView, 0)-64,2008+16,oEnemy1B)
with en5 {image_xscale=1 canAttack=5 alarm[1]=60 weapon_add("PIPE")}	


}
else
timeline_position-=1;