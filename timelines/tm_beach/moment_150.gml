/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=6480-2-320+320
{

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oEnemy1)
with P2en1 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,150+16,oMerman)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 current_pal=5
	enemy_switch("ADAM",0)
	}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+32,oEnemy1B)
with P2en2 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,150+48,oMerman)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 current_pal=5
		enemy_switch("ADAM",0)
	} 	

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oEnemy1)
with P2en3 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////


}
else
{
timeline_position-=1
}

