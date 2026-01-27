/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
oControl.tutorialTextTime=150
with oControl
{
tutorialTextX=160-48
tutorialTextY=48
btnSep=16
btnT1="PRESS"
btnspr=spr_commandbutton

if global.ConsoleType="PC"
{
btnind=0
btnT2="L"
}
else
{
var commandMul=0;
if global.ConsoleType="XBOX" commandMul=0;
if global.ConsoleType="PS" commandMul=1;
if global.ConsoleType="SWITCH" commandMul=2;
btnind=5+6*commandMul btnT2=""
}

btnT3="FOR A SPECIAL ATTACK"

switch(global.Language)
{
case 1: btnT1="PRESIONA" btnT3="PARA UN ATAQUE ESPECIAL" break;
case 2: btnT1="PRESSIONE" btnT3="PARA UM ATAQUE ESPECIAL" break;
}


}
	
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,2064,1)

enA=instance_create_depth(1392-32,176,-1,oEnemy1) with enA
{canmove=0 isIdle=1 alarm[1]=60 anim=70000 idleRange=30 
	enemyIdle1=spr_burglar_idle2 enemyIdle2=spr_burglar_hit enemyIdle2Ind=10
	}
enB=instance_create_depth(1392+32,176,-1,oEnemy1B) with enB
 {canmove=0 isIdle=1 alarm[1]=60 image_xscale=-1
idleRange=30 anim=70000}



en1=instance_create(1288,160,oEntryClimb)
en1.z=-48 en1.rangeX=en1.x-200 en1.rangeXAdd=0
with en1
{spawnEnemy=oSneak current_pal=0;
spawnSpr=spr_sneak_entry1
spawnFall=spr_sneak_front
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

doggo=instance_create_depth(1392,176,-1,oDogPet) with doggo anim=2 ///Poor doggo
doggo.foeID1=enA doggo.foeID2=enB

}
else
{

timeline_position-=1
}

