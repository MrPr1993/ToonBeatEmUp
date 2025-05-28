if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{

en1=instance_create(__view_get( e__VW.XView, 0)+160-64,200-32,oDiver)
with en1 {image_xscale=1 ground=0 enemy_switch("MR.DROP",0) weapon_add("HARPOONGUN")//enemy_switch("MR.DROP")
	canmove=0 anim=13 z=-200 //weapon_add("HARPOONGUN")
	}
en2=instance_create(__view_get( e__VW.XView, 0)+160+64,200+32,oDiver)
with en2 {image_xscale=-1 ground=0 enemy_switch("MR.DROP",0) weapon_add("HARPOONGUN")
	canmove=0 anim=13 z=-200
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-160-64, 200+32,oDiver)
with P2en1 {enemy_switch("MR.DROP",0) anim=13 z=-200 weapon_add("HARPOONGUN") canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-160+32, 200-32,oDiver)
with P2en2 {enemy_switch("MR.DROP",0) anim=13 z=-200 weapon_add("HARPOONGUN") canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-160, 200+64,oDiver)
with P2en3 {enemy_switch("MR.DROP",0) anim=13 z=-200 weapon_add("HARPOONGUN") canAttack=5 alarm[1]=30 image_xscale=1}}
////



}
else
timeline_position-=1;