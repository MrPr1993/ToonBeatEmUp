/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=3280-2-320
{
en5=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oWrestler)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}


en6=instance_create(__view_get( e__VW.XView, 0)+320+64,236,oWrestler)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MS.CRUSH",0)	
	}
	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200,oMonk)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 232,oMonk)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 264,oMonk)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

