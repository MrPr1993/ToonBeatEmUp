en1=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oEnemy1)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MR.ROB",0)
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oEnemy1B)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MR.RON",0)
	}	
	
	
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,208+32,oRobot)
with P2en1 {enemy_switch("MR.ROB",0) image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,208+48,oEnemy1B)
with P2en2 {enemy_switch("MR.RON",0) image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,208+64,oEnemy1)
with P2en3 {enemy_switch("MR.ROB",0) image_xscale=-1 canAttack=5 alarm[1]=60}}
////

