if fakeenS.timer!=160
timeline_position-=1
else
{timer_set(1)
with oControl {TextDialogue=""}
with fakeenS {y=9999 timer=0}
en1=instance_create_depth(fakeen.x,fakeen.y,0,oBoss1a) with en1 {image_xscale=-1}
with fakeen {
	
	y=9999}
oControl.bossID=oBoss1a

if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 254,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}

}
