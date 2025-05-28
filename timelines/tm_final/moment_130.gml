/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=9000-2-320
{
en9=instance_create(__view_get( e__VW.XView, 0)+320+64,208-32,oLadybot)
with en9 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("METR-A",0)}
en10=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oLadybot)
with en10 {image_xscale=-1 canAttack=5 alarm[1]=60 }	
en11=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oLadybot)
with en11 {image_xscale=-1 canAttack=5 alarm[1]=60}
en12=instance_create(__view_get( e__VW.XView, 0)+320+64,208+32,oLadybot)
with en12 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("METR-A",0)}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)-64,200,oSneak)
with P2en1 {enemy_switch("MR.PROWL",0) image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)-64,220,oSneak)
with P2en2 {enemy_switch("MR.PROWL",0) image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,240,oSneak)
with P2en3 {enemy_switch("MR.PROWL",0) image_xscale=-1 canAttack=5 alarm[1]=60}}
////

}
else
{
timeline_position-=1
}

