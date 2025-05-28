/// @description Enemy Area
if __view_get( e__VW.XView, 0 )>=692-320-2
{
///Instantly remove NPCs to lcear some space
//with oCameoChar instance_destroy();


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 182,oSneak)
with P2en1 {enemy_switch("MR.SLIP",0) canAttack=5 alarm[1]=30 image_xscale=1}}

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,182+20,oSneak)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MR.SLIP",0)
	}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 182+40,oSneak)
with P2en2 {enemy_switch("MR.SLIP",0) canAttack=5 alarm[1]=30 image_xscale=1}}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,182+60,oSneak)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MR.SLIP",0)
	}	

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 182+80,oSneak)
with P2en3 {enemy_switch("MR.SLIP",0) canAttack=5 alarm[1]=30 image_xscale=1}}
////



}
else
timeline_position-=1


