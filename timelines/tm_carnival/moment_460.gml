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

spawner_followset("WaveSet1",0,6884,1)

en1=instance_create(6400, 192,oAreaSpawner) with en1
{
spawnX=6400-240 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 

enemytype0=oBear  turn0=-1 name0="YOGI" hp0=0.15 pal0=2 palS0=spr_bearpal;
enemytype1=oBear turn1=-1 name1="FOZZI" hp1=0.15 pal1=3 palS1=spr_bearpal;
enemytype2=oClown turn2=-1
enemyMax=2
}

 en2=instance_create_depth(6276,192,-1,oEntrySeat) en2.rangeX=6276-240
 with en2 {sittingSpr=spr_bear_hang1 spawnEnemy=oBear enemy_modify(spr_bearpal,4,"PADDY",0,0.2,0.2)}

 en3=instance_create_depth(6334,192,-1,oEntrySeat) en3.rangeX=6276-240
 with en3 {sittingSpr=spr_bear_hang2 spawnEnemy=oBear enemy_modify(spr_bearpal,5,"RONI",0,0.2,0.2)}


}
else
timeline_position-=1
