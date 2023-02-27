/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=128
{
en1=instance_create(305,222,oFatBurglar) en1.canmove=0 en1.isIdle=1 en1.alarm[1]=60 en1.anim=70000
en1.idleRange=30 en1.enemyIdle1=spr_fatburglar_idle

en2=instance_create(305+48,222+16,oSwing) en2.canmove=0 en2.isIdle=1 en2.alarm[1]=60 en2.anim=70000
en2.idleRange=30+24 en2.enemyIdle1=spr_swing_idle3 en2.image_xscale=-1

en3=instance_create(320-48+16-16,222+16,oSneak) en3.canmove=0 en3.isIdle=1 en3.alarm[1]=60 en3.anim=70000
en3.idleRange=30+16 en3.enemyIdle1=spr_sneak_idle3
	

en4=instance_create(__view_get( e__VW.XView, 0 ),176+32,oEntryBalloon)
en4.rideX=532 
en5=instance_create(__view_get( e__VW.XView, 0 )+320,176+32,oEntryBalloon)
en5.rideX=532 en5.image_xscale=-1 en5.horsepal=2 en5.arriveDir=-1
with en5
{horseSpd=-2
	spawnFall=spr_burglarB_jump
	riderSpr=spr_burglarB_balloon
	spawnEnemy=oEnemy1B
}

}
else
{
timeline_position-=1
}

