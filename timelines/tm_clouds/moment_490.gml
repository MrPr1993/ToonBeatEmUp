/// @description Baddies Appear 9

if __view_get( e__VW.XView, 0 )>=8080-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,210,oFairy)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,220,oFairy)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("WENDY",0)}		

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,230,oFairy)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,240,oFairy)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("WENDY",0)}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)-64,250-20,oFairy)
with P2en1 {image_xscale=1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)-64,250+20,oFairy)
with P2en2 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("WENDY",0)}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,250+30,oFairy)
with P2en3 {image_xscale=1 canAttack=5 alarm[1]=60}}
////

}
else
{
timeline_position-=1
}

