/// @description Baddies Appear 9

if __view_get( e__VW.XView, 0 )>=10980-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,180,oAlienRobot)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	 enemy_switch("DESTRON",0)
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oAlienRobot)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,220,oAlienRobot)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60
	 enemy_switch("DESTRON",0)
	}	

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,240,oAlienRobot)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 176,oAlienRobot)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 176+32,oAlienRobot)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 176+64,oAlienRobot)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

