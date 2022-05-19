en1=instance_create_depth(4320-96, 174,-1,oEntryPool) with en1
{rangeX=0 spawnFall=spr_axe spawnEnemy=oAnimatedObject} en1.image_angle=90+45
en1.z=-64

en2=instance_create_depth(4320+96, 174,-1,oEntryPool) with en2
{rangeX=0 spawnFall=spr_axe spawnEnemy=oAnimatedObject} en2.image_angle=90-45+180
en2.image_xscale=-1
en2.z=-64

en3=instance_create_depth(__view_get( e__VW.XView, 0 )-32,250,0,oAnimatedObject) with en3
{image_xscale=1 canAttack=3 alarm[3]=10}
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,250,0,oAnimatedObject) with en4
{image_xscale=-1 canAttack=3 alarm[3]=10}

with axe1 instance_destroy()
with axe2 instance_destroy()
