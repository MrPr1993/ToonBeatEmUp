en1=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oEnemy1)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MR.ROB",0)
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oEnemy1B)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MR.RON",0)
	}	