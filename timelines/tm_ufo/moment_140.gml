if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,6660+160,1)

en1=instance_create_depth(6295,160,-1,oAreaSpawner)
en2=instance_create_depth(6518,160,-1,oAreaSpawner)
with oAreaSpawner
{spawnX=x-128 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oAlienRobot
enemyMax=0}


}
else
timeline_position-=1;