if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
{
en1=instance_create_depth(1316-32,224,0,oSneak)
with en1 canAttack=3
en2=instance_create_depth(1316-32,224-64,0,oEnemy1)
with en2 {canAttack=3 enemy_modify(my_pal_sprite,6,"MR. LAR",0,0.24,0.24)}
en3=instance_create_depth(1608+32,132+64,0,oSneak)
with en3{ canAttack=3 image_xscale=-1}
en4=instance_create_depth(1608+32,132,0,oEnemy1)
with en4{canAttack=3 enemy_modify(my_pal_sprite,6,"MR. LAR",0,0.24,0.24)}

en5=instance_create(1424+24,16+112,oAreaSpawner)
with en5
{
spawnX=0 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oEnemy1
enemyMax=0
}

}
else
timeline_position-=1