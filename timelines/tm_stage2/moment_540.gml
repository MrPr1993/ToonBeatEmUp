if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{
en1=instance_create(1936+24,16+112,oAreaSpawner)
with en1
{
spawnX=0 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oEnemy1 name0="MR.LAR" hp0=0.24 pal0=4 //with en5 enemy_switch(my_pal_sprite,6,"MR.LAR",0,0.24,0.24)
enemytype1=oSneak name1="MR.SLIP" hp1=0.2 pal1=1
enemyMax=1
}

en2=instance_create(2096+24,16+112,oAreaSpawner)
with en2 
{
spawnX=0 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oEnemy1 name0="MR.LAR" hp0=0.24 pal0=4 turn0=-1
enemytype1=oSneak name1="MR.SLIP" hp1=0.2 pal1=1 turn1=-1
enemyMax=1 
}


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oSneak)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 150+32,oSneak)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oSneak)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
timeline_position-=1