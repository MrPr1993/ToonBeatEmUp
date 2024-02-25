if !instance_exists(en1)
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,2000,1)

en1=instance_create(840,172,oAreaSpawner) with en1
{
spawnX=0 ///768
enemytype0=oGoblin
enemytype1=oGoblin
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=1
}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224+32,oGoblin)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_modify(my_pal_sprite,1,"GOHNNY",0,hp,maxhp)}	

en3=instance_create(1174,172,oAreaSpawner) with en3
{
spawnX=x-160
enemytype0=oGoblin
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0 pal0=1 name1="GOHNNY"
}

en4=instance_create(1270,172,oAreaSpawner) with en4
{
spawnX=x-160
enemytype0=oGoblin
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0 pal0=1 name1="GOHNNY"
}

}
else
timeline_position-=1;