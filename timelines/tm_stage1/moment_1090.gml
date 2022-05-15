if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create_depth(3328-96,160,-1,oEntryClimb) en1.z=-48 en1.rangeX=0 en1.rangeXAdd=0
en2=instance_create_depth(3328+96,160,-1,oEntryClimb) en2.z=-48 en2.rangeX=0 en2.rangeXAdd=0
with en2
{spawnSpr=spr_burglarB_entry1 spawnFall=spr_burglarB_front spawnFallIndex=0 spawnEnemy=oEnemy1B}
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
en1=instance_create_depth(3328-96,160,-1,oEntryClimb) en1.z=-48 en1.rangeX=0 en1.rangeXAdd=0
with en1
{spawnSpr=spr_sneak_entry1 spawnFall=spr_sneak_front spawnFallIndex=0 spawnEnemy=oSneak}
en2=instance_create_depth(3328+96,160,-1,oEntryClimb) en2.z=-48 en2.rangeX=0 en2.rangeXAdd=0
with en2
{spawnSpr=spr_sneak_entry1 spawnFall=spr_sneak_front spawnFallIndex=0 spawnEnemy=oSneak}
}
}
else timeline_position-=1
}
else timeline_position-=1
