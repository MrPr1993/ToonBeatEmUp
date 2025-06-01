///@description CATS
timer_set(1)

en1=instance_create_depth(cat1.x,cat1.y,-1,oCatman) en1.image_xscale=-1 en1.z=cat1.z
with en1 {canAttack=5 alarm[1]=10 image_xscale=-1}

en2=instance_create_depth(cat2.x,cat2.y,-1,oCatman) en2.image_xscale=-1 en2.z=cat2.z
with en2 {canAttack=5 alarm[1]=10 image_xscale=-1}

en3=instance_create_depth(cat3.x,cat3.y,-1,oCatman) en3.image_xscale=-1 en3.z=cat3.z
with en3 {canAttack=5 alarm[1]=10 image_xscale=-1}

with cat1 instance_destroy()
with cat2 instance_destroy()
with cat3 instance_destroy()

oPlayer.canControl=1

oControl.time=99

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 165+12,oCatman)
with P2en1 {//enemy_switch("NOUSAGI",0) 
	canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 165+24+12,oCatman)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 165+48+12,oCatman)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

