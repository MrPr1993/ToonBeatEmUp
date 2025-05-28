/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-640
{
en3=instance_create(__view_get( e__VW.XView, 0)-64,190,oEnemy1B)
with en3 {canAttack=5 alarm[1]=60
	enemy_switch("MR.LAD",0)
	}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,214,oSneak)
with en4 {canAttack=5 alarm[1]=60 image_xscale=-1
	enemy_switch("MR.SIDLE",0)
	}	

en5=instance_create(__view_get( e__VW.XView, 0)-64,238,oEnemy1)
with en5 { canAttack=5 alarm[1]=60
	enemy_switch("MR.LAR",0)
	}

en6=instance_create(__view_get( e__VW.XView, 0)+320+64,272,oSneak)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60
		enemy_switch("MR.SIDLE",0)
	}	


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200,oSneak)
with P2en1 {enemy_switch("MR.SIDLE",0) canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 232,oSneak)
with P2en2 {enemy_switch("MR.SIDLE",0) canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 264,oSneak)
with P2en3 {enemy_switch("MR.SIDLE",0) canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

