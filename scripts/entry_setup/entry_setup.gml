// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function entry_setup(){
/// @description Insert description here
// You can write your code in this editor
enemyID=-1

colorshade_setup()

spawnname="Default"

z=0
trainz=0
trainFX=0
image_speed=0

spawnDelay=0
isBoss=-1
hidden=0

risespd=0.025

isDepth=1
xySpeed=0
	///Palette Options
	current_pal=2;
	my_pal_sprite=spr_enemypal
	weapon_pal=0;
	weapon_pal_sprite=spr_weaponpal
	///Override stuff.
	override_surface=noone;
	override_pal_index=1;
	hp=-1;
	maxhp=1;
	fxXadd=0
	fxYadd=0
	
	AnimFrame=0
	
	appear=0
	visible=0
	
	anim=1
	
	rangeX=x
	rangeXAdd=-90
	
	spawnSpr=spr_burglar_entry1
	spawnFall=spr_burglar_front
	canEvent0=1
	spawnFallIndex=0
	spawnEnemy=oEnemy1
	name=-1
	
	shadow=-1
	shadowSpr=spr_shadow
	fallHole=0
	ground=0
	spawnSpeedZ=0
	
	spawnYAdd=8
	xSpeed=0
	ySpeed=0
	zSpeed=0
	
	splashscr=-1;
	splashsnd=-1;
	
	spawned=0
	
	
	
	spawnAnim=-1;
	spawnAnimFrame=0;
	spawnCanMove=1;
	

}