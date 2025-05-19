if !instance_exists(en1) and noextraenemies
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
spawner_followset("WaveSet1",0,4400,1)

en5=instance_create(4136, 192,oAreaSpawner) with en5
{
spawnX=4136-240 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 

enemytype0=oHarpyE//  turn0=-1 name0="MORTI" hp0=0.15 pal0=2 palS0=spr_zombiepal;
enemytype1=oHarpyE turn1=-1 name1="ICARA"
enemytype2=oBear turn2=-1 name2="PADDY"
enemytype3=oBear turn2=-1 name2="MONO"
enemyMax=3
}
}
else
timeline_position-=1;