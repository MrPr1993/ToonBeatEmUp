en2=instance_create_depth(1316-64,180-32,0,oFatBurglar)
with en2{canAttack=3
	enemy_switch("MR.WIDE",0)
	///enemy_switch("MR.WIDE",0)
	}

en3=instance_create_depth(1316-64,180+32,0,oFatBurglar)
with en3{canAttack=3 
	enemy_switch("MR.WIDE",0)
	///enemy_switch("MR.WIDE",0)
	} //4
	
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 150+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
	