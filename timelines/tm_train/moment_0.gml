/// @description Stage Starting
oPlayer.visible=0
oPlayer.alarm[0]=10
oPlayer.canControl=0
oControl.showMap=0
oControl.P1SpawnX=90
oControl.P1SpawnY=232
oPlayer.areaEntry=0
oPlayer.canmove=0

oControl.stageNext=rm_stage5

with oControl
{timecheck=alarm[0] alarm[0]=10000000}

oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0

spawner_followset("WaveSet1",0,696,1)

luggage1=instance_create_depth(608,176,-1,oFlashFX) with luggage1
{image_speed=0 animEnd=0 alarm[0]=0 sprite_index=spr_luggage trainFX=1}

en1=instance_create(662,176,oEnemy1) en1.canAttack=6 en1.isIdle=1 en1.alarm[1]=60 en1.image_xscale=1
en1.idleRange=0 en1.enemyIdle1=spr_burglar_cards

en2=instance_create(662+64,176,oEnemy1B) en2.canAttack=6 en2.isIdle=1 en2.alarm[1]=60 en2.image_xscale=-1
en2.idleRange=0 en2.enemyIdle1=spr_burglarB_cards

PlaySound(snd_train)
