/// @description Stage Start
if oPlayer.anim=220 and oPlayer.AnimFrame<5
timeline_position-=1
else
{
oControl.tutorialTextTime=300

timer_set(1)

if oPlayer.ground=0
{oViewTarget.x=0
__view_set( e__VW.Object, 0, oViewTarget )
oEnemySpawner.canFollow=0
oControl.camMove=0
timeline_position-=1
}
else
{oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
__view_set( e__VW.HSpeed, 0, 0 )
oPlayer.canControl=1
oPlayer.areaEntry=0
oControl.camMove=1
oEnemySpawner.canFollow=1
timeline_running=true

with oControl{showMap=1
alarm[0]=60 timecheck=-1}

with oControl
{
tutorialTextX=160
tutorialTextY=48
btnSep=16
btnT1="PRESS"
btnspr=spr_commandbutton
if global.ConsoleType="PC"
{
btnind=0
btnT2="J"
}
else
{
var commandMul=0;
if global.ConsoleType="XBOX" commandMul=0;
if global.ConsoleType="PS" commandMul=1;
if global.ConsoleType="SWITCH" commandMul=2;
btnind=6+6*commandMul btnT2=""
}

btnT3="TO ATTACK"

switch(global.Language)
{
case 1: btnT1="PRESIONA" btnT3="PARA ATACAR" break;
case 2: btnT1="PRESSIONE" btnT3="PARA ATACAR" break;
}

}


en1=instance_create(850,164,oEnemy1) en1.canmove=0 en1.isIdle=1 en1.alarm[1]=60 en1.anim=70000
en1.idleRange=30
en2=instance_create(888,164,oEnemy1B) en2.canmove=0 en2.isIdle=1 en2.alarm[1]=60 en2.image_xscale=-1
en2.idleRange=30+32 en2.anim=70000

en5=instance_create(1000,160,oAreaSpawner)
with en5
{
spawnX=992-160 ///768
enemytype0=oEnemy1B MaxSpawnFrame=0 visible=1
FXtype=4 canDraw=1 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
}

}

}

