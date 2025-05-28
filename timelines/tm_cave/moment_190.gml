/// @description Baddies Appear 9

///After thism set the throne room here

if __view_get( e__VW.XView, 0 )>=9734-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,216,oPlant)
with en1{image_xscale=-1 canAttack=5 alarm[1]=60  enemy_switch("PETI",0)}	

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,232,oPlant)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("PETI",0)}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oPlant)
with P2en1 {enemy_switch("PETI",0) canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,248,oPlant)
with P2en2 {enemy_switch("PETI",0) canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,264,oPlant)
with P2en3 {enemy_switch("PETI",0) canAttack=5 alarm[1]=60 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}

