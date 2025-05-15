if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,7176,1)

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oCatman)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("BASTET",0)}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,228,oCobra)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("VIPERA",0)}

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,260,oCatman)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("BASTET",0)}	

en4=instance_create(5954,176,oAreaSpawner) with en4
{
spawnX=x-240 ///768
enemytype0=oCatman
enemytype1=oCobra
MaxSpawnFrame=0 visible=1 turn0=-1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
}

en5=instance_create(6432,176,oAreaSpawner) with en5
{
spawnX=x-240 ///768
enemytype0=oCobra
enemytype1=oCobra
MaxSpawnFrame=0 visible=1 turn0=-1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
}

en6=instance_create(6758,176,oAreaSpawner) with en6
{
spawnX=x-240 ///768
enemytype0=oCatman
enemytype1=oCatman
MaxSpawnFrame=0 visible=1 turn0=-1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
}

}
else
timeline_position-=1;