/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=8380-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,190,oShroom)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("PHOLIOTA",0)}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oShroom)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("PHOLIOTA",0)}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,256,oShroom)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("PHOLIOTA",0)}	

en4=instance_create(8106,200+24,oSlime) with en4 {image_xscale=1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-64, 224,oShroom)
with P2en1 {enemy_switch("PHOLIOTA",0) canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-64, 190,oShroom)
with P2en2 {enemy_switch("PHOLIOTA",0) canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-64, 256,oShroom)
with P2en3 {enemy_switch("PHOLIOTA",0) canAttack=5 alarm[1]=60 image_xscale=1}}
////


}
else
{
timeline_position-=1
}

