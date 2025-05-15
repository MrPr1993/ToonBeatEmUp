if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
{
with oControl {//camMove=0 camMax=room_width 980 
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
spawner_followset("WaveSet1",0,1298+960-32+4,1)
}

en1=instance_create(1936+24,16+112,oAreaSpawner)
with en1
{
spawnX=1906 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oEnemy1
enemytype1=oSneak
enemytype2=oEnemy1
enemyMax=2
}

en2=instance_create(2096+24,16+112,oAreaSpawner)
with en2 
{
spawnX=1906 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oSneak turn0=-1
enemytype1=oEnemy1 turn1=-1
enemytype2=oEnemy1 turn2=-1
enemyMax=2
}

}
else
timeline_position-=1