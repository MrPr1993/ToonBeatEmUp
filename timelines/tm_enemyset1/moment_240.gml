/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,2064,1)

en1=instance_create(1288,160,oAreaSpawner)
with en1
{
spawnX=1288-240 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype1=oEnemy1B
enemyMax=0
}

en2=instance_create(1512,160,oAreaSpawner)
with en2
{
spawnX=1512-240 ///768
enemytype0=oEnemy1 MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oEnemy1
enemytype1=oSneak
enemyMax=1
}

}
else
timeline_position-=1

