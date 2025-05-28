/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=11320-2-320
{

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oEnemy1)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 if playernumber>=2 y-=16
	enemy_switch("MR.ROB")
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,224+16,oEnemy1B)
with P2en1 {enemy_switch("MR.RON") image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224+32,oEnemy1)
with P2en2 {enemy_switch("MR.ROB") image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,224-32,oEnemy1B)
with P2en3 {enemy_switch("MR.RON") image_xscale=-1 canAttack=5 alarm[1]=60}}
////


}
else
{
timeline_position-=1
}

