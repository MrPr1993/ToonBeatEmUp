if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
{
with oControl
{
goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,9000,1)


en1=instance_create(6928,118,oEntryPool) en1.rangeXAdd=0 en1.splashspr=-1
with en1
{spawnSpr=spr_skeleton_front spawnEnemy=oSkeleton xAdd=-140 rangeX=x-200 z=-60 spawnname="Bones"
	canEvent0=0 ySpeed=1 spawnFall=spr_skeleton_front
	
	}
en2=instance_create(7440,118,oEntryPool) en2.rangeXAdd=0 en2.splashspr=-1
with en2
{spawnSpr=spr_skeleton_front spawnEnemy=oSkeleton xAdd=-140 rangeX=x-200 z=-60 spawnname="Bones"
		current_pal=1 name="SKELIE" my_pal_sprite=spr_mummypal
		canEvent0=0 ySpeed=1.5 spawnFall=spr_skeleton_front enemy_switch("SKELIE",0)
		
		}
		
en3=instance_create(7440-32,118,oEntryPool) en3.rangeXAdd=0 en3.splashspr=-1
with en3
{spawnSpr=spr_skeleton_front spawnEnemy=oSkeleton xAdd=-140 rangeX=7440-200 z=-60 spawnname="Bones"
		current_pal=0 my_pal_sprite=spr_mummypal
		canEvent0=0 ySpeed=1.5 spawnFall=spr_skeleton_front 		
		}
		
en4=instance_create(7440-32,118,oEntryPool) en4.rangeXAdd=0 en4.splashspr=-1
with en4
{spawnSpr=spr_skeleton_front spawnEnemy=oSkeleton xAdd=-140 rangeX=7440-200 z=-60 spawnname="Bones"
		current_pal=0 my_pal_sprite=spr_mummypal
		canEvent0=0 ySpeed=1.5 spawnFall=spr_skeleton_front 		
		}
		
		
en5=instance_create(7900,118,oEntryPool) en5.rangeXAdd=0 en5.splashspr=-1
with en5
{spawnSpr=spr_skeleton_front spawnEnemy=oSkeleton xAdd=-140 rangeX=x-200 z=-60 spawnname="Bones"
		canEvent0=0 ySpeed=1 spawnFall=spr_skeleton_front
		
		}	
	
with oEntryPool if spawnname="Bones"
splashscr=function()
{var iceFX=0;
		repeat(6)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-0
if iceFX=1 or iceFX=5 part.z=z-8
if iceFX=2 or iceFX=6 part.z=z-16
if iceFX=3 or iceFX=7 part.z=z-24
part.image_angle=random(360) part.sprite_index=spr_bone
if iceFX <4
part.hspeed=choose(-1,-2,-1.5)
else
part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32)
part.my_pal_sprite=my_pal_sprite
part.current_pal=0
	iceFX+=1;
}
}

en6=instance_create(6336, 136,oAreaSpawner) with en6
{
spawnX=6336-240 ///768
enemytype0=oZombieWoman MaxSpawnFrame=0 visible=1 turn0=-1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0 name0="RIGORA" hp0=0.15
pal0=2 palS0=spr_zombiepal;
}

en7=instance_create(6144, 136,oAreaSpawner) with en7
{
spawnX=6144-240 ///768
enemytype0=oZombieMan MaxSpawnFrame=0 visible=1 turn0=-1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0 name0="MORTI" hp0=0.15
pal0=2 palS0=spr_zombiepal;
}

en8=instance_create_depth(8390, 166+64,-1,oEntryBreak)
with en8
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_zombiepal;
	shellSpawnSpd=0.25 spawnSprFX=spr_zombiem_rise hidden=1; image_xscale=-1
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=2
	enemy_switch("MORTI",0)	
	}
	
en9=instance_create_depth(8390, 166+64,-1,oEntryBreak)
with en9
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_zombiepal;
	shellSpawnSpd=0.25 spawnSprFX=spr_zombiem_rise hidden=1; image_xscale=-1
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=2
	enemy_switch("MORTI",0)	
	}

}
else
{
timeline_position-=1
}