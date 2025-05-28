/// @description

if __view_get( e__VW.XView, 0 )>=3280-2-320-640
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,190+32,oSnowGirl)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("UNDA",0)

	}	

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,190+64,oSnowGirl)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("UNDA",0)
	
	}	
	
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200,oGoblin)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 232,oGoblin)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 264,oGoblin)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

