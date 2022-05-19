/// @description Stage Starting
spawner_followset("WaveSet1",0,692+160,1)


en1=instance_create(468, 194,oEnemy1B) with en1
{weapon_add("SHOVEL")  isIdle=1 hasIdle=0 canAttack=6}

en2=instance_create(468+64, 194,oSwing) with en2
{weapon_add("SHOVEL")  isIdle=1 hasIdle=0 canAttack=6 image_xscale=-1 }

