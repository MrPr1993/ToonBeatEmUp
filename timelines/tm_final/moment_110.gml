/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=7480-2-320
{
en6=instance_create(__view_get( e__VW.XView, 0)+320+64,174,oMonk)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60}	
en7=instance_create(__view_get( e__VW.XView, 0)+320+64,204,oMonk)
with en7 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MS.MANA",0)}
en8=instance_create(__view_get( e__VW.XView, 0)+320+64,234,oMonk)
with en8 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MS.MANA",0)}
en9=instance_create(__view_get( e__VW.XView, 0)+320+64,274,oMonk)
with en9 {image_xscale=-1 canAttack=5 alarm[1]=60}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,184,oMonk)
with P2en1 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oMonk)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,264,oMonk)
with P2en3 {image_xscale=-1 canAttack=5 alarm[1]=60}}
////



}
else
{
timeline_position-=1
}

