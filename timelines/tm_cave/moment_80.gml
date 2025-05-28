if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,3280+320,1)

en1=instance_create(__view_get( e__VW.XView, 0)-64,188,oGoblin)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)-64,220,oGoblin)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en3=instance_create(2996,172,oAreaSpawner) with en3
{
spawnX=0
enemytype0=oGoblin
enemytype1=oSkeleton
enemytype2=oSkeleton

MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=2 pal0=1 name0="GOHNNY"
}

}
else
timeline_position-=1;
