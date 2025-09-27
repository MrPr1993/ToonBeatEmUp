/// @description Stage Starting
spawner_followset("WaveSet1",0,1048,1)

instance_create_depth(0,0,-1,oRainFX)

oControl.stageNext=rm_cutscene4b

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}



////Skip to Plane
//spawner_followset("WaveSet1",0,5800,1)
//oPlayer.x=5000
//timeline_position=449

en1=instance_create(__view_get( e__VW.XView, 0)-64-200,132,oEntryFenceJump)
with en1
{depth=16777214 isDepth=0 rideX=200 rangeX=128 ySpeed=1
}

en2=instance_create(__view_get( e__VW.XView, 0)-64-200,132,oEntryFenceJump)
with en2
{depth=16777214 isDepth=0 rideX=356rangeX=128 ySpeed=1
	spawnFall=spr_sneak_front
	moveSpr=spr_sneak_move
	spawnEnemy=oSneak
	enemy_switch("MR.SLINK",0)
}

en3=instance_create(__view_get( e__VW.XView, 0)-64-200,132,oEntryFenceJump)
with en3
{depth=16777214 isDepth=0 rideX=356+32 rangeX=128 ySpeed=1
	spawnFall=spr_burglarB_front
	moveSpr=spr_burglarB_run
	spawnEnemy=oEnemy1B
}
en4=instance_create(__view_get( e__VW.XView, 0)-64-200,132,oEntryFenceJump)
with en4
{depth=16777214 isDepth=0 rideX=504 rangeX=128+320  ySpeed=1
	spawnFall=spr_sneak_front
	moveSpr=spr_sneak_move
	spawnEnemy=oSneak
	enemy_switch("MR.SIDLE",0)
}
en5=instance_create(__view_get( e__VW.XView, 0)+320+64+280,132,oEntryFenceJump)
with en5
{depth=16777214 isDepth=0 rideX=504 rangeX=128+320 image_xscale=-1  ySpeed=1
	spawnFall=spr_sneak_front
	moveSpr=spr_sneak_move
	spawnEnemy=oSneak
	enemy_switch("MR.SLINK",0)
}
en6=instance_create(__view_get( e__VW.XView, 0)-64-200,132,oEntryFenceJump)
with en6
{depth=16777214 isDepth=0 rideX=654 rangeX=128+320  ySpeed=1
	spawnFall=spr_sneak_front
	moveSpr=spr_sneak_move
	spawnEnemy=oSneak
	enemy_switch("MR.SIDLE",0)
}

bgfog1=layer_background_get_id(layer_get_id("BGclouds"));
layer_background_visible(bgfog1,0)


oPlayer.x-=64

if global.StageRecord[3]=2
{
timer_set(0)
with oPlayer
{canmove=0; key_right=0; x=50; z=-620 zSpeed=12.5 prevanim=8; ground=0;
anim=5 AnimFrame=0 sentflying=0; hashitBack=1 dizzyHit=0 key_jump_hold=0;
}
}

//{oPlayer.x=4910 oEnemySpawner.MaxX=4910+320 timeline_skip(910)}