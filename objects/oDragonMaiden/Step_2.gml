/// @description Insert description here
// You can write your code in this editor
depth=-y

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
if image_xscale=1 lockY=lerp(lockY,oControl.camX+96,0.01) else lockY=lerp(lockY,oControl.camX+320-96,0.01)
}


if anim=9999 ////Dead
{
	lockPos=0
	if animFrame=0 {sprite_index=spr_dragonmaiden_headdizzy specialtimes[0]=0 specialcheck0=1 specialcheck1=0}
selfatk.atk=0
wobbleX=specialcheck0 wobbleY=wobbleX

if animFrame<1
{sentflying=0
if specialcheck1=0 {dust_make(x+choose(-random(32),random(32)),y+4,z-random(100),0,0,0) specialcheck1=4}
else specialcheck1-=1

animFrame+=0.005 if image_index>3 image_index=0 else image_index+=0.25	
	}
else
if animFrame=clamp(animFrame,1,2)
{
if image_xscale=1 specialtimes[0]-=0.45 else specialtimes[0]+=0.45
x+=specialtimes[0]
if x=clamp(x,oControl.camX-200,oControl.camX+320+200) animFrame=1.8 else {specialtimes[0]=0 animFrame=3.5}
}
if animFrame>3
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
{animFrame=0 anim=9999 dead=1 canmove=0 selfatk.atk=0}


if anim=0
{lockSPD=0.05

if !eyeHit
sprite_index=StandSpr
else
sprite_index=spr_dragonmaiden_headhurt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1) if animFrame>3.9 animFrame=0
}


if anim=4 ///Replace the usual hit flying animations with this
or anim=5
or anim=6
or anim=7
{ground=1 anim=4
sprite_index=spr_octopus_hit	
animFrame+=0.1

if animFrame>8 {animFrame=0 canmove=1 anim=0 hurt=0}
}

	if anim=8 ///Electrified
	if overwriteShock=0
	{atk=0 sprite_index=ShockSpr
	hurt=1 recovery=120 prevanim=8
	image_index+=0.5
	if image_index>2 image_index=0
	animFrame+=0.1 
	if !ground
	sentflying=HitForceReact
	else sentflying=0
	//Land on ground
	if animFrame>3
	if ground
	{hp-=thrownDMG {animFrame=3 anim=5}}
	else
	{hp-=thrownDMG {animFrame=3 anim=5}}
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
	animFrame+=0.01
	sentflying=0
	zSpeed=0
	if animFrame>1
	{
animFrame=0 anim=6 wobbleX=1.2 wobbleY=0.1	
	}

	}

	if anim=40 ///Burned
	if overwriteBurn=0
	{
	hurt=1 recovery=30
	image_index=animFrame image_speed=0
	if image_index<4
	sprite_index=BurnSpr
	else
	sprite_index=spr_viva_burned

	if !ground
	sentflying=HitForceReact
	else sentflying=0

	if animFrame=clamp(animFrame,0,1.9) animFrame+=0.1
	if animFrame=clamp(animFrame,2,2.9) animFrame+=0.025

//	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	//else
//	if dead=0 {dead=1 alarm[2]=90}

	if dead=0
	{if animFrame>2.9 {hurt=0 canmove=0 anim=5}}
	else
	if animFrame=clamp(animFrame,2.9+0.025,7.5) animFrame+=0.5


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
	{animFrame+=0.1 shaketime=10}

	if dead=0
	if animFrame>0.5 {recovery=0 hurt=0}

	image_index=0

	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	else
	if dead=0 {dead=1 alarm[2]=30}

	if dead=0
	animFrame+=0.01
	if animFrame>2
	{
	if dead=1 {specialDead=9 animFrame=0 anim=6 }
	else {frozen_fx() hurt=0 canmove=1 specialDead=0 animFrame=0 anim=0 recovery=60}
	
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
	animFrame=0 anim=choose(11,12)
	
	if (targetEnemy.x>oControl.camX+160+96 and image_xscale=1)
	or (targetEnemy.x>oControl.camX+320-160-96 and image_xscale=-1)
	anim=13
	}
	
	
	if anim=11 //Bite
	{if animFrame=0 {lockZ=-48 lockX=x
		
		if prevanim=11 {if image_xscale=1 lockX=oControl.camX+64 else lockX=oControl.camX+320-64}
		
		sprite_index=spr_dragonmaiden_head}
	lockSPD=0.07
		
		
	selfatk.x=x
	selfatk.image_xscale=4.5
	selfatk.image_yscale=2
	selfatk.height=128
	selfatk.damage=0.2 selfatk.MoveType=1
if animFrame<1 {lockX-=2*image_xscale lockY=targetEnemy.y}
	frame_set(0,2,0.05) if animFrame=1 {lockZ=0 sprite_index=spr_dragonmaiden_headbite}
	frame_set(1,0,0.1) if animFrame=clamp(animFrame,1,2)
	{if image_xscale=1 {if x>targetEnemy.x-32 or x>oControl.camX+200 animFrame=2 else lockX+=8}
	else {if x<targetEnemy.x+32 or x<oControl.camX+320-200 animFrame=2 else lockX-=8}
	}	if animFrame=2 {oControl.quakeFXTime=10 atk=1}
	frame_set(2,1,0.5)
	frame_set(3,2,0.01)
	if animFrame=clamp(animFrame,2,3) atk=1 else atk=0 {}
	if animFrame>3.5 {anim=0 canmove=1 animFrame=0}
	}
	
	if anim=12 //Fire Breath
	{if animFrame=0 {specialtimes[0]=0 lockZ=-96 sprite_index=spr_dragonmaiden_head
		
	
		}
		lockY=lerp(lockY,targetEnemy.y,0.1)
		if image_xscale=1 {lockX=targetEnemy.x-64 lockX=clamp(lockX,oControl.camX-999,oControl.camX+200)} else {lockX=targetEnemy.x+64 lockX=clamp(lockX,oControl.camX+320-200,oControl.camX+999+320)}
			
	
	lockSPD=0.07

frame_set(0,2,0.05) if animFrame=1 sprite_index=spr_dragonmaiden_headbreath
frame_set(1,0,0.1) 
frame_set(2,1,0.1) 
frame_set(3,2,0.05) 
frame_set(4,3,0.1) 
frame_set(5,4,0.05) 
frame_set(6,2,0.1) if animFrame>6.5 {canmove=1}
	}
	
if anim=13 ///Change location
{lockSPD=0.01
	
if animFrame=0 {animFrame=1
specialtimes[0]=image_xscale specialtimes[1]=0 specialtimes[2]=choose(11,12)
}
sprite_index=spr_dragonmaiden_head image_index=2
specialtimes[1]+=0.45
lockX+=-specialtimes[0]*specialtimes[1]

if animFrame=1
if x!=clamp(x,oControl.camX-200,oControl.camX+320+200)
{
if image_xscale=1 {x=oControl.camX+320+100 image_xscale=-1}
else {x=oControl.camX-100 image_xscale=1}
lockY=targetEnemy.y
animFrame=2
}

if animFrame=2
{
lockX+=8*image_xscale 
if x=clamp(x,oControl.camX+96,oControl.camX+320-96)
{animFrame=2 anim=specialtimes[2]
	if anim=11 {sprite_index=spr_dragonmaiden_headbite image_index=0}
	}
}
	
}
	
	///Intro
	if anim=100{immune=1
if animFrame=0 {shadowSpr=mask_none  sprite_index=mask_none image_xscale=1}
frame_set(0,0,0.01) if animFrame=1 {PlaySound(snd_heavystep) oControl.quakeFXTime=10}
frame_set(1,0,0.01) if animFrame=2 {PlaySound(snd_heavystep) oControl.quakeFXTime=10}
frame_set(2,0,0.01) if animFrame=3 {PlaySound(snd_heavystep) oControl.quakeFXTime=10}
frame_set(3,0,0.25) if animFrame=4 oControl.quakeFXTime=10
if animFrame>3 {body.z=lerp(body.z,0,0.04) tail.z=lerp(tail.z,body.z,0.01) z=body.z necc.z=body.z-170 }
else {z=body.z}

frame_set(4,0,0.01) if body.z>10 if animFrame>4 animFrame=4.1
if animFrame=5 {isDepth=1 shadowSpr=spr_midshadow x=oControl.camX+320+128 sprite_index=spr_dragonmaiden_head image_xscale=-1}
frame_set(5,0,0.05) if animFrame>5.5 {image_xscale=-1 x=lerp(x,oControl.camX+320-96,0.01)}
frame_set(6,0,0.2)
frame_set(7,0,0.2)
frame_set(8,0,0.2)
frame_set(9,0,0.2)
frame_set(10,0,0.025)
frame_set(11,0,0.2)
frame_set(12,0,0.2)
frame_set(13,0,0.2)
frame_set(14,0,0.01)
if animFrame>14.5
{immune=0 anim=0 lockPos=1 canmove=1}
	
	}
	
	