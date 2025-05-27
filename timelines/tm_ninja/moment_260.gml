/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2238
{
en3=instance_create(2310, 150,oEntryFenceJump)
with en3
{depth=16777215 isDepth=0 rideX=2310+160 xAdd=0
	spawnFall=spr_ninjabun_jump
	moveSpr=spr_ninjabun_run rangeX=0 rangeXAdd=0
	spawnEnemy=oNinjaBun
enemy_switch("NOUSAGI",0)	
}

if playernumber>=2 {P3en1=instance_create(1902, 150,oEntryFenceJump)
with P3en1
{
depth=16777215 isDepth=0 rideX=2096 xAdd=-128*2
	spawnFall=spr_ninjabun_jump
	moveSpr=spr_ninjabun_run rangeX=0 rangeXAdd=240
	spawnEnemy=oNinjaBun
enemy_switch("NOUSAGI",0)
}}

if playernumber>=3 {P3en2=instance_create(1902, 150,oEntryFenceJump)
with P3en2
{
depth=16777215 isDepth=0 rideX=2096 xAdd=-128*3
	spawnFall=spr_ninjabun_jump
	moveSpr=spr_ninjabun_run rangeX=0 rangeXAdd=240
	spawnEnemy=oNinjaBun
enemy_switch("NOUSAGI",0)
}}

en4=instance_create(__view_get( e__VW.XView, 0 )+320+48,224,oSamurai)
with en4
{canAttack=5 alarm[1]=60 image_xscale=-1
}

if playernumber>=4 {P3en3=instance_create(__view_get( e__VW.XView, 0 )+320+48,224+32,oSamurai)
with P3en3
{canAttack=5 alarm[1]=60 image_xscale=-1
}}

}
else
{
timeline_position-=1
}

