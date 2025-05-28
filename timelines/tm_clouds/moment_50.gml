/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=2320-320-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+320-64,200+24,oFairy)
with en1 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,200+64,oFairy)
with en2 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200
	enemy_switch("WENDY",0)
	}	

en3=instance_create(__view_get( e__VW.XView, 0)+64,200+48,oFairy)
with en3 {image_xscale=1 ground=0 canmove=0 anim=13 z=-200}	


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+64,200+24,oFairy)
with P2en1 {enemy_switch("WENDY",0) ground=0 canmove=0 anim=13 z=-200 canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+64,200+24,oFairy)
with P2en2 {enemy_switch("WENDY",0) ground=0 canmove=0 anim=13 z=-200 canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320-64,200+48,oFairy)
with P2en3 {ground=0 canmove=0 anim=13 z=-200 canAttack=5 alarm[1]=60 image_xscale=-1}}
////


}
else
{
timeline_position-=1
}

