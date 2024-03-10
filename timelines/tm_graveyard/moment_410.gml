///@description aaa
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=3382}
spawner_followset("WaveSet1",0,4512-32,1)

en1=instance_create(3664,160,oAreaSpawner) with en1
{
spawnX=3664-330 ///768
enemytype0=oZombieMan MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0 name0="ZOMBOBBY" pal0=1 enemy_switch("ZOMBOBBY",0)
}

}
else
{
timeline_position-=1
}//4024