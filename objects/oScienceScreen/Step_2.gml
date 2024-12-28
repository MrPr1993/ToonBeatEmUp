/// @description Insert description here
// You can write your code in this editor
depth=-y

	flashZ=32
	
	if act=1
	{
	///Attack Setup
	selfatk.isPlayer=isPlayer
	selfatk.x=x+(atkAddX)*image_xscale selfatk.y=y+atkAddY
	selfatk.type=hit selfatk.z=z-atkAddZ selfatk.SourceX=x
	selfatk.damage=damage+extradamage
	selfatk.isThrow=isThrow
	selfatk.MoveType=MoveType
	selfatk.dizzyAtk=dizzyAtk
	selfatk.HitForce=HitForce
	selfatk.HitForceZ=HitForceZ
	selfatk.targetHeight=targetHeight
	selfatk.HitQuake=HitQuake


	aff.x=x aff.y=y aff.z=z
	aff.dead=dead aff.canmove=canmove
	aff.hp=hp aff.atk=atk aff.hurt=hurt aff.ground=ground
	aff.immune=immune aff.act=act aff.recoveryThrow=recoveryThrow
	aff.anim=anim
	HitQuake=0
	}
	else
	selfatk.atk=0

wobbleX=lerp(wobbleX,1,0.1)
wobbleY=lerp(wobbleY,1,0.1)

if anim=9999 ////Dead
{if AnimFrame=0 {z=0 scopespr=mask_none  specialcheck0=1 specialcheck1=0

var brokenpartX=0; var brokenpartY=1; var brokenpartz=0;
var brokenpartV=random(3); var brokenpartHSPD=0;
repeat(12)
{

brokenpart=instance_create_depth(x+brokenpartX*image_xscale,y+brokenpartY,-1,oDisappearPart) brokenpart.sprite_index=spr_robot_part
brokenpart.image_speed=0 brokenpart.image_index=brokenpartV; brokenpart.z=z+brokenpartz brokenpart.hspeed=brokenpartHSPD;
brokenpart.gravSpd=0.22  brokenpart.spdZ=-2
brokenpartV+=1;
}
dust_make(x,y+1,z-48,0,0,0)
dustmk.sprite_index=spr_explosion2

oControl.quakeFXTime=10 PlaySound(snd_explosion)
	
	}
selfatk.atk=0 sprite_index=mask_none
wobbleX=specialcheck0 wobbleY=wobbleX

if AnimFrame<1
{
if specialcheck1=0 {dust_make(screenX+choose(-random(72),random(72)),screenY+4,screenZ-random(80),0,0,0)
	dustmk.sprite_index=spr_explosion3
	specialcheck1=4}
else specialcheck1-=1

ground=1
z=0;	
AnimFrame+=0.005
	}
else
if AnimFrame=clamp(AnimFrame,1,2)
{
var brokenpartX=0; var brokenpartY=1; var brokenpartz=0;
var brokenpartV=0; var brokenpartHSPD=0;
repeat(12)
{
switch(brokenpartV)
{
case 0: brokenpartX=80 brokenpartz=-64 brokenpartHSPD=1; break;
case 1: brokenpartX=72 brokenpartz=-76 brokenpartHSPD=1; break;
case 2: brokenpartX=-62 brokenpartz=-22 brokenpartHSPD=-1; break;
case 3: brokenpartX=-14 brokenpartz=-52 brokenpartHSPD=-0.5; break;
case 4: brokenpartX=-55 brokenpartz=-51 brokenpartHSPD=-0.75; break;
case 5: brokenpartX=-88 brokenpartz=-73 brokenpartHSPD=-1; break;
case 6: brokenpartX=-88 brokenpartz=-25 brokenpartHSPD=-1; break;
case 7: brokenpartX=-100 brokenpartz=-46 brokenpartHSPD=-1.2; break;
case 8: brokenpartX=-20 brokenpartz=-107 brokenpartHSPD=-0.5; break;
case 9: brokenpartX=34 brokenpartz=-105 brokenpartHSPD=1; break;
case 10: brokenpartX=26 brokenpartz=-140 brokenpartHSPD=1; break;
case 11: brokenpartX=9 brokenpartz=-130 brokenpartHSPD=0; break;
}

dust_make(x,y+1,z-25,0,0,-1)
dustmk.sprite_index=spr_explosion2
dust_make(screenX-32,screenY+1,screenZ,-1,0,0)
dustmk.sprite_index=spr_explosion2
dust_make(screenX+32,screenY+1,screenZ,1,0,0)
dustmk.sprite_index=spr_explosion2

brokenpartV+=1;
}

oControl.quakeFXTime=10 PlaySound(snd_explosion) instance_destroy()
}
if AnimFrame>2
{
if x>__view_get( e__VW.XView, 0 )+320+64 instance_destroy()
	
wobbleX=1 wobbleY=1 if z>0 {ground=1}
	AnimFrame+=0.1 if AnimFrame>3 if ground {image_index=0 ground=0 zSpeed-=6 AnimFrame=2.1}
else {x+=4 image_index=1 zSpeed+=0.45
	
	}
}
}
else{

}


if hp=0 or hp<=0 or dead=1 if anim!=9999
{AnimFrame=0 anim=9999 dead=1 canmove=0 selfatk.atk=0}


if anim=0
{
if z>-100 z-=4 else {z=lerp(z,-100,0.1)}


frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1)
if AnimFrame>=4 AnimFrame=0

sprite_index=spr_science_b

if screenAnim=0
{
screenSpr=spr_science_idle
screenFrame+=0.1
if screenFrame>=4 screenFrame=0

if screenFrame=0 screenInd=0
if screenFrame=1 screenInd=1
if screenFrame=2 screenInd=2
if screenFrame=3 screenInd=1
}

}



if anim=4 ///Replace the usual hit flying animations with this
or anim=5
or anim=6
or anim=7
{anim=4 rotorind=0
screenSpr=spr_science_hit scopeind=0
minebuffer=120
mineind=0

torpedobuffer=120
torpedoind=0
torpedotimes=3
AnimFrame+=0.1

if AnimFrame>8 {AnimFrame=0 canmove=1 anim=0 hurt=0}
}

	if anim=8 ///Electrified
	if overwriteShock=0
	{atk=0 scopespr=spr_submarine_scope_hit
	hurt=1 recovery=120 prevanim=8
	scopeind+=0.5
	if scopeind>2 scopeind=0
	AnimFrame+=0.1 
	if !ground
	sentflying=HitForceReact
	else sentflying=0
	//Land on ground
	if AnimFrame>3
	if ground
	{hp-=thrownDMG {AnimFrame=3 anim=5}}
	else
	{hp-=thrownDMG {AnimFrame=3 anim=5}}
	}

	if anim=9 ///Flattened
	if overwriteFlat=0
	{depth=99998
	atk=0 sprite_index=FlatSpr prevanim=9
	hurt=1 recovery=60
	
	z=0

	if image_index<1.5
	image_index+=0.25

	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	else
	if dead=0 {dead=1 alarm[2]=30}

	if dead=0
	AnimFrame+=0.01
	sentflying=0
	zSpeed=0
	if AnimFrame>1
	{sprite_index=spr_submarine
AnimFrame=0 anim=6 wobbleX=1.2 wobbleY=0.1	
	}

	}

	if anim=40 ///Burned
	if overwriteBurn=0
	{
	hurt=1 recovery=30
	image_index=AnimFrame image_speed=0
	if image_index<4
	sprite_index=BurnSpr
	else
	sprite_index=spr_viva_burned

	if !ground
	sentflying=HitForceReact
	else sentflying=0

	if AnimFrame=clamp(AnimFrame,0,1.9) AnimFrame+=0.1
	if AnimFrame=clamp(AnimFrame,2,2.9) AnimFrame+=0.025

//	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	//else
//	if dead=0 {dead=1 alarm[2]=90}

	if dead=0
	{if AnimFrame>2.9 {hurt=0 canmove=0 anim=5}}
	else
	if AnimFrame=clamp(AnimFrame,2.9+0.025,7.5) AnimFrame+=0.5


	}

	if anim=41 ///Frozen
	if overwriteFrozen=0
	{
	atk=0 sprite_index=FrozenSpr

	if !ground
	sentflying=HitForceReact
	else sentflying=0

	if dead=0
	if key_attack or key_jump
	{AnimFrame+=0.1 shaketime=10}

	if dead=0
	if AnimFrame>0.5 {recovery=0 hurt=0}

	

	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	else
	if dead=0 {dead=1 alarm[2]=30}

	if dead=0
	AnimFrame+=0.01
	if AnimFrame>2
	{
	if dead=1 {specialDead=9 AnimFrame=0 anim=6 }
	else {frozen_fx() hurt=0 canmove=1 specialDead=0 AnimFrame=0 anim=0 recovery=60}
	
	}

	}
	
		if hurt=1
	{
	if anim=30 ///Thrown
	{sprite_index=spr_science_b screenSpr=spr_science_hit
	minebuffer=120
mineind=0

torpedobuffer=120
torpedoind=0
torpedotimes=3

 rotorind=0
scopespr=spr_submarine_scope_hit scopeind=0
	
	if overwriteThrown=0
	{hurt=1 recovery=30
	}} else SpritePos=0
	}else SpritePos=0

	if anim=31 ///Special Thrown
	if overwriteThrown=0
	{hurt=1 recovery=30 sprite_index=spr_science_b screenSpr=spr_science_hit
	minebuffer=120
mineind=0

torpedobuffer=120
torpedoind=0
torpedotimes=3

 rotorind=0
scopespr=spr_submarine_scope_hit scopeind=0
		}
	
	
	if anim=10 ///Attack
	{anim=11 AnimFrame=0
	}
	
	
	if anim=11 ///Claw Slam
	{damage=0.25 MoveType=1
	sprite_index=spr_science_b
	image_index=lerp(image_index,0,0.1)
	
	atkcol_set(0,0,0,1,1,96)
	
	if AnimFrame<=5 {AnimFrame+=0.1
	if targetEnemy.dead=0
{

if targetEnemy.x>x x+=2 else x-=2

if targetEnemy.y>y y+=1 else y-=1

}	
	}
	else
	{
	if AnimFrame<=8
	{atk=1 z+=8 if z>=0 {selfatk.atk=0 atk=0 AnimFrame=9 z=0 oControl.quakeFXTime=10 PlaySound(snd_quakeground)}}
	}
	
	if AnimFrame>=9 {AnimFrame+=0.25 if AnimFrame>=21 {canmove=1 anim=0 AnimFrame=0}}
	
	}
	
	///Intro
	if anim=100{immune=1 
		
if AnimFrame<=6 {screenSpr=spr_science_intro screenInd+=0.25 if screenInd=3 screenInd=0}
else {screenSpr=spr_science_idle specialanim=0}

AnimFrame+=0.1

z=lerp(z,-120,0.1)

if AnimFrame>14.5
{immune=0 anim=0 canmove=1}
	
	}
	
	////Panic
if anim=595000
{if AnimFrame=0 {image_index=0 recovery=0 scopeind=0 recoveryThrow=0 }

scopespr=spr_science_b

{sprite_index=spr_science_b scopeind+=0.5 if scopeind=3 scopeind=1 if AnimFrame>46 or AnimFrame<4 image_index=0.5}
AnimFrame+=1

if AnimFrame=50 {canmove=1 hurt=0}
}

x=clamp(x,oControl.camX+32,oControl.camX+320-32)

if anim!=66
z=clamp(z,-250,1)