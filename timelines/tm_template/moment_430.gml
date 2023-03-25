if __view_get( e__VW.XView, 0 )>=4000-160
{
en5=instance_create(4000,160,oAreaSpawner) with en5
{
spawnX=0 ///768
enemytype0=oSneak MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=1 enemyMax=0
}

en6=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,210,0,oEnemy1) with en6
{enemy_modify(my_pal_sprite,6,"MR.LAR",0,0.24,0.24) image_xscale=-1 canAttack=3 alarm[3]=30}
en7=instance_create_depth(__view_get( e__VW.XView, 0 )+320+64,190,0,oEnemy1) with en7
{enemy_modify(my_pal_sprite,6,"MR.LAR",0,0.24,0.24) image_xscale=-1 canAttack=3 alarm[3]=30}


}
else
{
timeline_position-=1
}
