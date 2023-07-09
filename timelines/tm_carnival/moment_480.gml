if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,7664,1)

en1=instance_create(6832, 192,oAreaSpawner) with en1
{
spawnX=6832-240 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 

enemytype0=oClown turn2=-1
enemyMax=0
}

 en2=instance_create_depth(6734,192,-1,oEntrySeat) en2.rangeX=6276-240
 with en2 {enemy_modify(spr_playerpal,4,"PADDY",0,0.2,0.2)}

 en3=instance_create_depth(6948,192,-1,oEntrySeat) en3.rangeX=6276-240
 with en3 {enemy_modify(spr_playerpal,4,"PADDY",0,0.2,0.2)}


}
else
timeline_position-=1
