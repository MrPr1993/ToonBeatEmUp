/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=5200-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oHarpyE)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)+320+64,272,oHarpyE)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("ICARA",0)}
en3=instance_create(__view_get( e__VW.XView, 0)-64,272,oHarpyE)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60 }	
en4=instance_create(__view_get( e__VW.XView, 0)-64,196,oHarpyE)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("ICARA",0)}

//234
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,234,oHarpyE)
with P2en1 {enemy_switch("ICARA",0) canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)-64,234-16,oHarpyE)
with P2en2 {enemy_switch("ICARA",0) canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,234+16,oHarpyE)
with P2en3 {enemy_switch("ICARA",0) canAttack=5 alarm[1]=60 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

