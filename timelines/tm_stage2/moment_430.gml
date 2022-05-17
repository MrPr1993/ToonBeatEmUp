if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
en1=instance_create_depth(1456,132,0,oEntryJump)
with en1{spawnX=0 zAppear=-128 spawnSpeedZMax=4 spawnSpr=spr_sneak_entry1 spawnFall=spr_sneak_front	spawnFallIndex=0 spawnEnemy=oSneak}
en2=instance_create_depth(1456,132,0,oEntryJump)
with en2{spawnX=0 zAppear=-128-128 spawnSpeedZMax=4 enemy_modify(my_pal_sprite,4,"MR. LAR",0,0.24,0.24)}
en3=instance_create_depth(1456,132,0,oEntryJump)
with en3{spawnX=0 zAppear=-128-128*2 spawnSpeedZMax=4 spawnSpr=spr_sneak_entry1 spawnFall=spr_sneak_front	spawnFallIndex=0 spawnEnemy=oSneak}
en4=instance_create_depth(1456,132,0,oEntryJump)
with en4{spawnX=0 zAppear=-128-128*3 spawnSpeedZMax=4 enemy_modify(my_pal_sprite,4,"MR. LAR",0,0.24,0.24)}

en5=instance_create(1560,16+112,oAreaSpawner)
with en5
{
spawnX=0 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oEnemy1B
enemyMax=0
}

}
else
timeline_position-=1