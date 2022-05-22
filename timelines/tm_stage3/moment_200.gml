/// @description Stage Start

if oPlayer.ground=0
{oViewTarget.x=0
__view_set( e__VW.Object, 0, oViewTarget )
oEnemySpawner.canFollow=0
oControl.camMove=0
timeline_position-=1
}
else
{musicplaystart(msc_stage3)
	
	oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
__view_set( e__VW.HSpeed, 0, 0 )
oPlayer.canControl=1
oPlayer.areaEntry=0
oControl.camMove=1
timeline_running=true

with oControl{showMap=1
alarm[0]=60 timecheck=-1}


en1=instance_create(662,176,oSwing) en1.canAttack=6 en1.isIdle=1 en1.alarm[1]=60
en1.idleRange=90 
with en1
{
spawnID=oSword
weaponspr=spr_sword
weaponIndex=0
weaponX=14 weaponLife=12
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.5
weapontargetHeight=2
weapontype=0
weaponHitType=1
WswingSound=snd_swing5
WspriteFX=spr_blood
Whitsound=snd_cut
canmove=0 anim=70002
}


en2=instance_create(662+64,176,oEnemy1) en2.canAttack=6 en2.isIdle=1 en2.alarm[1]=60 en2.image_xscale=-1
en2.idleRange=130
with en2
{canmove=0 anim=70002}



}



