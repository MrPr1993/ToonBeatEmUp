if __view_get( e__VW.XView, 0 )>=978
{
en5=instance_create(1200+24,16+112,oAreaSpawner)
with en5
{
spawnX=0 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oEnemy1
enemytype1=oEnemy1
enemytype2=oSwing turn2=-1
enemyMax=2
}




en6=instance_create_depth(__view_get( e__VW.XView, 0 )-32,224,0,oEnemy1)
with en6 canAttack=3
en7=instance_create_depth(__view_get( e__VW.XView, 0 )-32,224,0,oEnemy1)
with en7 canAttack=3
}
else
timeline_position-=1