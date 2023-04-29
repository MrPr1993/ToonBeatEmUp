if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(enA)
and !instance_exists(enB)
and !instance_exists(enC)
{
with oControl {//camMove=0 camMax=room_width 980 
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
}

//1418
en1=instance_create_depth(__view_get( e__VW.XView, 0 )-32,224,0,oEnemy1)
with en1 canAttack=5
en2=instance_create_depth(__view_get( e__VW.XView, 0 )-32,224-64,0,oEnemy1)
with en2 canAttack=5
en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,132+64,0,oEnemy1)
with en3{ canAttack=5 image_xscale=-1}
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,132,0,oEnemy1)
with en4{ canAttack=5 image_xscale=-1}

en5=instance_create(1560,16+112,oAreaSpawner)
with en5
{
spawnX=1300 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oEnemy1B turn0=-1
enemyMax=1
}

spawner_followset("WaveSet1",0,1618+4,1)

}
else
timeline_position-=1
