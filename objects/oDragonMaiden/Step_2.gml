/// @description Insert description here
// You can write your code in this editor
depth=-y

image_xscale=dircheck

selfatk.SourceX=x

overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1


wobbleX=lerp(wobbleX,1,0.1)
wobbleY=lerp(wobbleY,1,0.1)

if anim=0
{if handL.anim=9999 handL.anim=0
if image_xscale=1 {lockX=lerp(lockX,oControl.camX+96,0.01) lockX=clamp(lockX,x-9999999,oControl.camX+160)} else {lockX=lerp(lockX,oControl.camX+320-96,0.01) lockX=clamp(lockX,oControl.camX+320-160,x+9999999)}

body.image_index=image_index
}


if anim=9999 ////Dead
{body.image_index=image_index
	lockPos=0
	if AnimFrame=0 {sprite_index=spr_dragonmaiden_headdizzy specialtimes[0]=0 specialcheck0=1 specialcheck1=0}
selfatk.atk=0
wobbleX=specialcheck0 wobbleY=wobbleX

if AnimFrame<1
{sentflying=0
if specialcheck1=0 {dust_make(x+choose(-random(32),random(32)),y+4,z-random(100),0,0,0) specialcheck1=4}
else specialcheck1-=1

AnimFrame+=0.005 if image_index>3 image_index=0 else image_index+=0.25	
	}
else
if AnimFrame=clamp(AnimFrame,1,2)
{
if image_xscale=1 specialtimes[0]-=0.45 else specialtimes[0]+=0.45
x+=specialtimes[0]
if x=clamp(x,oControl.camX-200,oControl.camX+320+200) AnimFrame=1.8 else {
	PlaySound(snd_dragon9)
	specialtimes[0]=0 AnimFrame=3.5}
}
if AnimFrame>3
{
specialtimes[0]+=0.45	

body.z+=specialtimes[0] necc.z=body.z tail.z=body.z
if body.z>1500
{

oControl.quakeFXTime=60 PlaySound(snd_explosion)
dead=1 instance_destroy()
}
}
}
else{
ground=1
z=0;
}


if hp=0 or hp<=0 or dead=1 if anim!=9999
{AnimFrame=0 anim=9999 dead=1 canmove=0 selfatk.atk=0}


if anim=0
{lockSPD=0.05
	
	lockY=lerp(lockY,targetEnemy.y,0.1)

if !eyeHit
sprite_index=StandSpr
else
sprite_index=spr_dragonmaiden_headhurt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1) if AnimFrame>3.9 AnimFrame=0
}


if anim=4 ///Replace the usual hit flying animations with this
or anim=5
or anim=6
or anim=7
{ground=1 anim=4
sprite_index=spr_dragonmaiden_headhit
AnimFrame+=0.1

if AnimFrame>8 {AnimFrame=0 canmove=1 anim=0 hurt=0}
}

	if anim=8 ///Electrified
	if overwriteShock=0
	{atk=0 sprite_index=ShockSpr
	hurt=1 recovery=120 prevanim=8
	image_index+=0.5
	if image_index>2 image_index=0
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
	{
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

	image_index=0

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
	{
	if overwriteThrown=0
	{hurt=1 sprite_index=ThrownSpr recovery=30
	image_index=targetHeightHit image_speed=0
	}} else SpritePos=0
	}else SpritePos=0

	if anim=31 ///Special Thrown
	if overwriteThrown=0
	{hurt=1 recovery=30}
	
	
	if anim=10 ///Attack
	{canmove=0 prevanim=0
	AnimFrame=0 anim=choose(11,12)
	
	if (targetEnemy.x>oControl.camX+160+96 and image_xscale=1)
	or (targetEnemy.x<oControl.camX+320-96 and image_xscale=-1)
	anim=13
	
	}
	
	
	if anim=11 //Bite
	{if AnimFrame=0 {specialtimes[5]=0 specialtimes[6]=0
		PlaySound(snd_dragon4)
		AnimFrame=0.01 specialtimes[0]=0  lockX=x sprite_index=spr_dragonmaiden_head}
	selfatk.damage=0.25 selfatk.MoveType=1
	
	atkcol_set(14*image_xscale,0,0,3.65,1,89)
	
	
	if specialtimes[0]=0
	{lockZ=lerp(lockZ,-48,0.05)
	if x=clamp(lockX,oControl.camX-180,oControl.camX+320+180)
	{lockY=lerp(lockY,targetEnemy.y,0.1)
lockX-=4*image_xscale specialtimes[6]=point_distance(x,0,targetEnemy.x-24*image_xscale,0)

	} else {specialtimes[0]+=1 PlaySound(snd_dragon5)}
	}
	else
	{sprite_index=spr_dragonmaiden_headbite
	lockZ=0
	
	frame_set(0,0,0) if AnimFrame<=1 {lockX+=8*image_xscale specialtimes[5]+=8  //if x=clamp(x,targetEnemy.x-24,targetEnemy.y+24)
		if specialtimes[5]>=specialtimes[6]
	AnimFrame=1.5}
	frame_set(1,0,0.25) if AnimFrame=clamp(AnimFrame,2,2.5) atk=1 else atk=0
	if AnimFrame=2 {oControl.quakeFXTime=10}
	frame_set(2,1,0.5)
	frame_set(3,2,0.05)	
	frame_set(4,1,0.01)
	if AnimFrame>4.5 {canmove=1 anim=0}
	}
	}
	
	if anim=12 //Fire Breath
	{
	
if AnimFrame=0 {AnimFrame=0.01 specialtimes[0]=0 specialtimes[1]=0 lockX=x sprite_index=spr_dragonmaiden_head}
	selfatk.damage=0.25 selfatk.MoveType=1
	atkcol_set(14,0,0,3.65,1,89)
	if specialtimes[0]=0
	{lockZ=lerp(lockZ,-96,0.1)
	if x=clamp(lockX,oControl.camX+48,oControl.camX+320-48)
	{lockY=lerp(lockY,targetEnemy.y,0.1)
lockX-=4*image_xscale

	} else {specialtimes[0]+=1 AnimFrame=1}
	}
	else
	{sprite_index=spr_dragonmaiden_headbreath
	lockX+=0.5*image_xscale
	
	frame_set(1,0,0.1)
	frame_set(2,1,0.1)
	frame_set(3,2,0.1) if AnimFrame=4
	{PlaySound(snd_explosion2)
	card=instance_create_depth(x+(57+32)*image_xscale,y,-1,oNinjaBunCard)
card.hspeed=6*image_xscale
card.image_xscale=image_xscale
card.zSpeed=6 card.sprite_index=spr_dragon_flame card.image_speed=0.25 card.mask_index=spr_midshadow
card.z=z-15
with card
{HitType=5 damage=0.2
HitSound=snd_explosion
HitSpark=spr_burn

HitGroundSpr=spr_burn;
HitGroundSnd=snd_explosion;
HitQuake=10;
}

	}
	frame_set(4,3,0.1)
	frame_set(5,4,0.1) if AnimFrame=6 {if specialtimes[1]!=3 {specialtimes[1]+=1 AnimFrame=1}}
	frame_set(6,0,0.1)
	if AnimFrame>6.5 {anim=0 canmove=1}
	}
	
	}
	
if anim=13 ///Change location
{
if AnimFrame=0 {AnimFrame=0.01 specialtimes[0]=0 specialtimes[5]=0  lockX=x sprite_index=spr_dragonmaiden_head}

	if specialtimes[0]=0
	{lockZ=lerp(lockZ,-48,0.05)
	if x=clamp(lockX,oControl.camX-180,oControl.camX+320+180)
	{lockY=lerp(lockY,targetEnemy.y,0.1)
lockX-=8*image_xscale

	} else {specialtimes[0]+=1 
		dircheck=-dircheck
		if dircheck=1 lockX=oControl.camX-48 else lockX=oControl.camX+320+48
		x=lockX
		}
	}
	else
	{
lockX+=5*image_xscale
AnimFrame+=0.5

	if AnimFrame>4.5 {canmove=1 anim=0}
	}
}
	
	///Intro
	if anim=100{immune=1
if AnimFrame=0 {shadowSpr=mask_none  sprite_index=mask_none image_xscale=1
vspeed=0
lockY=y;
lockZ=0;
body.x=oControl.camX+160
		lockX=x;
x=body.x tail.x=x lockPos=0 isdepth=0 depth=16777213
canmove=0
z=1500
body.z=1500 tail.z=1500 necc.z=1500
 tail.sprite_index=spr_dragonmaiden_tail
tail.isDepth=0 tail.depth=16777214 tail.shadow=mask_none
////Body Script
body.sprite_index=spr_dragonmaiden_body3
body.isDepth=0 body.depth=16777213 body.shadow=mask_none body.image_speed=0

necc.sprite_index=spr_dragonmaiden_headded

	
	}
frame_set(0,0,0.01) if AnimFrame=1 {PlaySound(snd_heavystep) oControl.quakeFXTime=10}
frame_set(1,0,0.01) if AnimFrame=2 {PlaySound(snd_heavystep) oControl.quakeFXTime=10}
frame_set(2,0,0.01) if AnimFrame=3 {PlaySound(snd_heavystep) oControl.quakeFXTime=10}
frame_set(3,0,0.25) if AnimFrame=4 {oControl.quakeFXTime=10 }
if AnimFrame>3 {body.x=oControl.camX+160 necc.x=oControl.camX+160 body.z=lerp(body.z,0,0.04) tail.z=lerp(tail.z,body.z,0.01) z=body.z necc.z=body.z-170 }
else {z=body.z}

frame_set(4,0,0.01) if body.z>10 if AnimFrame>4 AnimFrame=4.1
if AnimFrame=5 {PlaySound(snd_dragon1)
	isDepth=1 shadowSpr=spr_dragonmaiden_shadow x=oControl.camX+320+128 sprite_index=spr_dragonmaiden_head image_xscale=-1}
frame_set(5,0,0.05) if AnimFrame>5.5 {image_xscale=-1 x=lerp(x,oControl.camX+320-96,0.01)}
frame_set(6,0,0.2)
frame_set(7,0,0.2)
frame_set(8,0,0.2)
frame_set(9,0,0.2)
frame_set(10,0,0.025)
frame_set(11,0,0.2)
frame_set(12,0,0.2)
frame_set(13,0,0.2)
frame_set(14,0,0.01)
if AnimFrame>14.5
{lockY=y lockZ=0 immune=0 anim=0 lockPos=1 alarm[1]=100 canmove=1}
	
	}
	
	if dead=0
	{
	selfatk.x=x+atkAddX
	selfatk.y=y+atkAddY
	selfatk.z=z+atkAddZ
	}
	
	image_xscale=dircheck