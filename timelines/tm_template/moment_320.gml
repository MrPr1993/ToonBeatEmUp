/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2614
{
//__background_set( e__BG.Index, 0, bg_sky2 )
en1=instance_create(3360,160,oAreaSpawner) with en1
{
spawnX=3380 ///768
enemytype0=oFatBurglar MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1
}
 ///2848
with en2
{
enemytype1=oFemBurglar name1="MS.CHILL" pal1=4
enemyMax=1
}

en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,170,0,oEnemy1) with en3
{enemy_switch(my_pal_sprite,6,"MR.LAR",0,0.24,0.24) image_xscale=-1 canAttack=3 alarm[3]=10}
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,210,0,oEnemy1) with en4
{enemy_switch(my_pal_sprite,6,"MR.LAR",0,0.24,0.24) image_xscale=-1 canAttack=3 alarm[3]=10}
en5=instance_create_depth(__view_get( e__VW.XView, 0 )+320+64,190,0,oSneak) with en5
{enemy_switch(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2) image_xscale=-1 canAttack=3 alarm[3]=60}


}
else
{
timeline_position-=1
}



