if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
and !instance_exists(en11)
and !instance_exists(en12)
and !instance_exists(en13)
and !instance_exists(en14)
and !instance_exists(en15)
and !instance_exists(en16)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,3680-160,1)

en4=instance_create(__view_get( e__VW.XView, 0)-64,208-16,oSneak)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("MR.PROWL",0)}

en5=instance_create(__view_get( e__VW.XView, 0)-64,2008+16,oEnemy1B)
with en5 {enemy_switch("MR.RON",0) image_xscale=1 canAttack=5 alarm[1]=60 weapon_add("PIPE")}	


}
else
timeline_position-=1;