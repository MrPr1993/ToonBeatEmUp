if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create_depth(3328-96,160,-1,oEntryClimb) en1.z=-48 en1.rangeX=0 en1.rangeXAdd=0
en2=instance_create_depth(3328+96,160,-1,oEntryClimb) en2.z=-48 en2.rangeX=0 en2.rangeXAdd=0
with en2
{spawnSpr=spr_burglarB_entry1 spawnFall=spr_burglarB_jump spawnFallIndex=0 spawnEnemy=oEnemy1B}


if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 166+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 254,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}


}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
en1=instance_create_depth(3328-96,160,-1,oEntryClimb) en1.z=-48 en1.rangeX=0 en1.rangeXAdd=0
with en1
{current_pal=0; spawnSpr=spr_sneak_entry1 spawnFall=spr_sneak_front spawnFallIndex=0 spawnEnemy=oSneak}
en2=instance_create_depth(3328+96,160,-1,oEntryClimb) en2.z=-48 en2.rangeX=0 en2.rangeXAdd=0
with en2
{current_pal=0; spawnSpr=spr_sneak_entry1 spawnFall=spr_sneak_front spawnFallIndex=0 spawnEnemy=oSneak}

if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166,oSneak)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 166+32,oSneak)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 254,oSneak)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}

}
}
else timeline_position-=1
}
else timeline_position-=1
