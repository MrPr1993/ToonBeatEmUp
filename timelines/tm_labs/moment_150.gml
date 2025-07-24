/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=6480-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,180+24,oNurse)
with en1 {image_xscale=1 canAttack=5 alarm[1]=60
	enemy_switch("DR.GLUCO",0)
	}

en2=instance_create(__view_get( e__VW.XView, 0)-64,180+64,oNurse)
with en2 {enemy_switch("DR.SULF",0) image_xscale=1 canAttack=5 alarm[1]=60
	
	}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,180+24,oNurse)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("DR.GLUCO",0)
	}	

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,180+64,oNurse)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60
	
	}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)-64,224,oNurse)
with P2en1 {enemy_switch("DR.SULF",0) image_xscale=1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)-64,224-24,oNurse)
with P2en2 {enemy_switch("DR.SULF",0) image_xscale=1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,224+24,oNurse)
with P2en3 {enemy_switch("DR.SULF",0) image_xscale=1 canAttack=5 alarm[1]=60}}
////
}
else
{
timeline_position-=1
}

