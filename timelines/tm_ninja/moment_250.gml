/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=0-640-480-120
{
en1=instance_create(1902, 150,oEntryFenceJump)
with en1
{depth=16777215 isDepth=0 rideX=2096 xAdd=0
	spawnFall=spr_ninjabun_jump
	moveSpr=spr_ninjabun_run rangeX=0 rangeXAdd=240
	spawnEnemy=oNinjaBun current_pal=0;
	}
en2=instance_create(1902, 150,oEntryFenceJump)
with en2
{depth=16777215 isDepth=0 rideX=2096 xAdd=-128
	spawnFall=spr_ninjabun_jump
	moveSpr=spr_ninjabun_run rangeX=0 rangeXAdd=240
	spawnEnemy=oNinjaBun
enemy_switch("NOUSAGI",0)
	}
	

if playernumber>=2 {P2en2=instance_create(1902, 150,oEntryFenceJump)
with P2en2
{
depth=16777215 isDepth=0 rideX=2096 xAdd=-128*2
	spawnFall=spr_ninjabun_jump
	moveSpr=spr_ninjabun_run rangeX=0 rangeXAdd=240
	spawnEnemy=oNinjaBun
enemy_switch("NOUSAGI",0)
}}

if playernumber>=3 {P2en3=instance_create(1902, 150,oEntryFenceJump)
with P2en3
{
depth=16777215 isDepth=0 rideX=2096 xAdd=-128*3
	spawnFall=spr_ninjabun_jump
	moveSpr=spr_ninjabun_run rangeX=0 rangeXAdd=240
	spawnEnemy=oNinjaBun
enemy_switch("NOUSAGI",0)
}}

if playernumber>=4 {P2en4=instance_create(1902, 150,oEntryFenceJump)
with P2en4
{
depth=16777215 isDepth=0 rideX=2096 xAdd=-128*4
	spawnFall=spr_ninjabun_jump
	moveSpr=spr_ninjabun_run rangeX=0 rangeXAdd=240
	spawnEnemy=oNinjaBun
enemy_switch("NOUSAGI",0)
}}
	

}
else
{
timeline_position-=1
}

