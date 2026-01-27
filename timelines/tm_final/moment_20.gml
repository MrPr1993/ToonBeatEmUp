if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,2640,1)

en1=instance_create_depth(960,168,0,oEntryJump)
with en1{spawnX=x-240 rangeX=x-240 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_burglarB_back spawnFall=spr_burglarB_back spawnFallIndex=0 spawnEnemy=oEnemy1 enemy_switch("MR.ROB",0)}

	en2=instance_create_depth(1072,168,0,oEntryJump)
with en2{spawnX=x-240 rangeX=x-240 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_burglarB_back spawnFall=spr_burglarB_back spawnFallIndex=0 spawnEnemy=oEnemy1B enemy_switch("MR.RON",0)}

en3=instance_create_depth(1184,168,0,oEntryJump)
with en3{spawnX=1184-200 rangeX=1184-200 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_femburglar_back spawnFall=spr_femburglar_back spawnFallIndex=0 spawnEnemy=oFemBurglar}

en4=instance_create_depth(1216,168,0,oEntryJump)
with en4{spawnX=1184-200 rangeX=1184-200 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_femburglar_back spawnFall=spr_femburglar_back spawnFallIndex=0 spawnEnemy=oFemBurglar
	enemy_switch("MS.CHILL",0)
	}
	
en5=instance_create_depth(1744,168,0,oEntryJump)
with en5{current_pal=0; spawnX=x-240 rangeX=x-240 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_sneak_back spawnFall=spr_sneak_back spawnFallIndex=0 spawnEnemy=oSneak enemy_switch("MR.PROWL",0)}

en6=instance_create_depth(1856,168,0,oEntryJump)
with en6{spawnX=x-240 rangeX=x-240 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_burglar_back spawnFall=spr_burglar_back spawnFallIndex=0 spawnEnemy=oEnemy1 enemy_switch("MR.ROB",0)}

en7=instance_create_depth(2112,168,0,oEntryJump)
with en7{spawnX=x-240 rangeX=x-240 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_burglarB_back spawnFall=spr_burglarB_back spawnFallIndex=0 spawnEnemy=oEnemy1B enemy_switch("MR.RON",0)}

en8=instance_create_depth(2224,168,0,oEntryJump)
with en8{spawnX=x-240 rangeX=x-240 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_burglar_back spawnFall=spr_burglar_back spawnFallIndex=0 spawnEnemy=oEnemy1 enemy_switch("MR.ROB",0)}

en9=instance_create_depth(2384,168,0,oEntryJump)
with en9{spawnX=x-240 rangeX=x-240 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_burglar_back spawnFall=spr_burglar_back spawnFallIndex=0 spawnEnemy=oEnemy1B enemy_switch("MR.RON",0)}


}
else
timeline_position-=1;