/// @description Stage Starting
spawner_followset("WaveSet1",0,692+160,1)

////Skip to Plane
spawner_followset("WaveSet1",0,5800,1)
oPlayer.x=5000
timeline_position=449

en1=instance_create(320,176,oEnemy1) en1.canAttack=6 en1.isIdle=1 en1.alarm[1]=60 en1.image_xscale=-1
en1.idleRange=130
