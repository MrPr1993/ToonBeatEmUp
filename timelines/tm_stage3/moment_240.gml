/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,2107-24,1)

en2=instance_create_depth(1660,168,0,oFatBurglar)
with en2{canAttack=6 enemy_switch("MR.WIDE",0)
	
	}

en3=instance_create_depth(1660+80,168,0,oSneak)
with en3{canAttack=6 isIdle=1 enemy_switch("MR.SLIP",0) image_xscale=-1}

en4=instance_create_depth(1660+32,168+32,0,oSwing)

en5=instance_create(1916,192,oEntryJump)
with en5
{z=-44 image_xscale=-1 rangeX=x-67
sittingSpr=spr_wrestler_stand
spawnFall=spr_wrestler_grab
spawnEnemy=oWrestler
}


////
if playernumber>=2 {P2en1=instance_create(1916,192+32,oEntryJump)
with P2en1 {z=-44 image_xscale=-1 rangeX=x-67 enemy_switch("MS.CRUSH",0)
sittingSpr=spr_wrestler_stand
spawnFall=spr_wrestler_grab
spawnEnemy=oWrestler
}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 180,oEnemy1)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oEnemy1B)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////



}
else
timeline_position-=1

