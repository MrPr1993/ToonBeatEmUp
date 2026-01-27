/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320
{
//en5=instance_create_depth(2344,160,-1,oAreaSpawner)

en10=instance_create_depth(2592,168,0,oEntryJump)
with en10{current_pal=0; spawnX=0 rangeX=0 zAppear=-128-128*3 spawnSpeedZMax=4 spawnSpr=spr_sneak_back spawnFall=spr_sneak_back spawnFallIndex=0 spawnEnemy=oSneak}

en11=instance_create_depth(2464,168,0,oEntryJump)
with en11{spawnX=0 rangeX=0 zAppear=-128-128*4 spawnSpeedZMax=4 spawnSpr=spr_burglarB_back spawnFall=spr_burglarB_back spawnFallIndex=0 spawnEnemy=oEnemy1B enemy_switch("MR.RON",0)}
en12=instance_create_depth(2528,168,0,oEntryJump)
with en12{spawnX=0 rangeX=0 zAppear=-128-128*7 spawnSpeedZMax=4 spawnSpr=spr_burglar_back spawnFall=spr_burglar_back spawnFallIndex=0 spawnEnemy=oEnemy1 enemy_switch("MR.ROB",0)}
en13=instance_create_depth(2528,168,0,oEntryJump)
with en13{current_pal=0; spawnX=0 rangeX=0 zAppear=-128-128*2 spawnSpeedZMax=4 spawnSpr=spr_sneak_back spawnFall=spr_sneak_back spawnFallIndex=0 spawnEnemy=oSneak}


en14=instance_create_depth(2528,168,0,oEntryJump)
with en14{spawnX=0 rangeX=0 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_burglar_back spawnFall=spr_burglar_back spawnFallIndex=0 spawnEnemy=oEnemy1 enemy_switch("MR.ROB",0)}
en15=instance_create_depth(2592,168,0,oEntryJump)
with en15{spawnX=0 rangeX=0 zAppear=-128-128*6 spawnSpeedZMax=4 spawnSpr=spr_burglarB_back spawnFall=spr_burglarB_back spawnFallIndex=0 spawnEnemy=oEnemy1B enemy_switch("MR.RON",0)}
en16=instance_create_depth(2464,168,0,oEntryJump)
with en16{current_pal=0; spawnX=0 rangeX=0 zAppear=-128-128*5 spawnSpeedZMax=4 spawnSpr=spr_sneak_back spawnFall=spr_sneak_back spawnFallIndex=0 spawnEnemy=oSneak}


//en2=instance_create_depth(1456,132,0,oEntryJump)
//with en2{spawnX=0 rangeX=0 zAppear=-128-128 spawnSpeedZMax=4 spawnSpr=spr_burglar_back spawnFall=spr_burglar_back enemy_switch("MR.LAR",0)}
//en3=instance_create_depth(1456,132,0,oEntryJump)
//with en3{spawnX=0 rangeX=0 zAppear=-128-128*2 spawnSpeedZMax=4 spawnSpr=spr_sneak_back spawnFall=spr_sneak_back	spawnFallIndex=0 spawnEnemy=oSneak}
//en4=instance_create_depth(1456,132,0,oEntryJump)
//with en4{spawnX=0 rangeX=0 zAppear=-128-128*3 spawnSpeedZMax=4 spawnSpr=spr_burglar_back  spawnFall=spr_burglar_back enemy_switch("MR.LAR",0)}

//en6=instance_create_depth(2470,160,-1,oAreaSpawner)
//en7=instance_create_depth(2600,160,-1,oAreaSpawner)
//with oAreaSpawner
//{spawnX=0 ///768
//MaxSpawnFrame=0 visible=1
//FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
//enemyMax=0}
//en5.enemytype0=oRobotBurn
//en6.enemytype0=oRobot
//en7.enemytype0=oRobotIce

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,180,oSneak)
with P2en1 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,220,oSneak)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,260,oSneak)
with P2en3 {image_xscale=-1 canAttack=5 alarm[1]=60}}
////


}
else
{
timeline_position-=1
}

