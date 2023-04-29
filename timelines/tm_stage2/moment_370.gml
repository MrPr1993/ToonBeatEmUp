/// @description Ship Area

if oPlayer.ground
{
timer_set(1)
	
oPlayer.canControl=1
oPlayer.areaEntry=0
oPlayer.Immune=0
oPlayer.hasShadow=1
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oControl.camMove=1

with chairen
{sprite_index=spr_sneak_chair2 image_speed=0.5}
with oControl
spawner_followset("WaveSet1",0,1298+4,1)

with fakeen
{
dummy=instance_create_depth(x,y,depth,oEnemy1) with dummy
{
hp=0 mask=mask_none image_xscale=-1 HitType=4 hud_show() event_user(0) DeathCryOnce=1
}
	
instance_destroy()
}

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