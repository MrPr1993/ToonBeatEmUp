/// @Stage Start

if oPlayer.ground
{
	musicplaystart(msc_train)

oPlayer.canControl=1
oPlayer.areaEntry=0
oPlayer.Immune=0
oPlayer.hasShadow=1
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oControl.camMove=1
with oControl
spawner_followset("WaveSet1",0,1298,1)

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
}
en2=instance_create(662+64,176,oEnemy1) en2.canAttack=6 en2.isIdle=1 en2.alarm[1]=60 en2.image_xscale=-1
en2.idleRange=130



with oPlayer
{	
car=instance_create_depth(x,y,depth,oCar) car.dead=1 car.sprite_index=spr_car_dead
car.image_xscale=image_xscale car.z=z car.ground=0 car.mask_index=mask_none
player_jump() canmove=1 canControl=1}
oControl.quakeFXTime=8 PlaySound(snd_explosion)
}
else
{
timeline_position-=2
with oPlayer
{hspeed=0 canControl=0 key_right=0 key_left=0 hasShadow=1
	//x=__view_get( e__VW.XView, 0 )+160
	//y=__view_get( e__VW.YView, 0 )+180
		
}
}



