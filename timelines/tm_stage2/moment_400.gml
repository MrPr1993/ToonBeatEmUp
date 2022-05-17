en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320+64,176,0,oEnemy1)
with en3
enemy_modify(my_pal_sprite,4,"MR. LAR",0,0.24,0.24)
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,192,0,oEnemy1)
with en4
enemy_modify(my_pal_sprite,4,"MR. LAR",0,0.24,0.24)

with chairen instance_destroy()
en1=instance_create_depth(908, 108,0,oEntryPool)
with en1 {rangeX=0
	spawnSpr=spr_sneak_entry1
	spawnFall=spr_sneak_front
	spawnFallIndex=0
	spawnEnemy=oSneak
	idleRange=60 canEvent0=0}

en2=instance_create_depth(__view_get( e__VW.XView, 0 )+320+64,180,0,oSwing)
en2.canAttack=6 en2.image_xscale=-1


