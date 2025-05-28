/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=5200-2-320
{
en1=instance_create(5140,200+24,oSlime) with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0
	 enemy_switch("CHERRY",0)	
	}


////
if playernumber>=2 {P2en1=instance_create(5140,200+48,oSlime)
with P2en1 {image_xscale=-1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+64, 240,oGoblin)
with P2en2 {canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+64, 260,oGoblin)
with P2en3 {canAttack=5 alarm[1]=60 image_xscale=-1}}
////


}
else
{
timeline_position-=1
}

