if __view_get( e__VW.XView, 0 )>=3600
{
en1=instance_create(3740,160,oAreaSpawner) with en1
{
spawnX=3582 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0
}
en2=instance_create(4000,160,oAreaSpawner) with en2
{
spawnX=3600 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
enemytype1=oSneak
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=1
}

en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,210,0,oEnemy1) with en3
{enemy_modify(my_pal_sprite,6,"MR.LAR",0,0.24,0.24) image_xscale=-1 canAttack=3 alarm[3]=30}
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320+64,190,0,oSneak) with en4
{enemy_modify(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2) image_xscale=-1 canAttack=3 alarm[3]=30}


}
else
{
timeline_position-=1
}
