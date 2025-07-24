if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,2100,1)

en1=instance_create_depth(1600,176,-1,oEntryPoseBoard) with en1
{enemy_switch("MR.LAR",0)
boardspr=spr_poseboard3
behindspr=spr_burglarB_front
spawnFall=spr_burglarB_front
spawnEnemy=oEnemy1B rangeX=x-32
}
en2=instance_create_depth(1680,176,-1,oEntryPoseBoard) with en2
{boardspr=spr_poseboard4 rangeX=x-32}

}
else
{
timeline_position-=1
}
