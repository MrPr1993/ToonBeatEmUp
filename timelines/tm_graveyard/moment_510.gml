en1=instance_create_depth(4320-96, 174,-1,oEntryPool) with en1
{rangeX=0 spawnFall=spr_axe spawnEnemy=oAnimatedObject canEvent0=0} en1.image_angle=90+45
en1.z=-64

en2=instance_create_depth(4320+96, 174,-1,oEntryPool) with en2
{rangeX=0 spawnFall=spr_axe spawnEnemy=oAnimatedObject canEvent0=0} en2.image_angle=90-45+180
en2.image_xscale=-1
en2.z=-64

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oAnimatedObject)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 200+32,oAnimatedObject)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oAnimatedObject)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

with axe1 instance_destroy()
with axe2 instance_destroy()
