/// @description Insert description here
// You can write your code in this editor
depth=-y

selfatk.SourceX=x


wobbleX=lerp(wobbleX,1,0.1)
wobbleY=lerp(wobbleY,1,0.1)

if anim=9999 ////Dead
{if animFrame=0 {sprite_index=spr_octopus_dead specialcheck0=1 specialcheck1=0}
selfatk.atk=0
wobbleX=specialcheck0 wobbleY=wobbleX

if animFrame<1
{
if specialcheck1=0 {dust_make(x+choose(-random(32),random(32)),y+4,z-random(100),0,0,0) specialcheck1=4}
else specialcheck1-=1

ground=1
z=0;	
animFrame+=0.005 if image_index>2 image_index=0 else image_index+=0.25	
	}
else
if animFrame=clamp(animFrame,1,2)
{image_index=0 lockPos=0 z=0
if specialcheck0>0.25 specialcheck0-=0.05 else {wobbleX=1 wobbleY=1 sprite_index=spr_octopus_tiny solid=false; animFrame+=0.1 ground=0}

if specialcheck1=0 {dust_make(x+choose(-random(32*specialcheck0),random(32*specialcheck0)),y+4,z-random(100*specialcheck0),0,0,0) specialcheck1=4}
else specialcheck1-=1
}
if animFrame>2
{
if x>__view_get( e__VW.XView, 0 )+320+64 instance_destroy()
	
wobbleX=1 wobbleY=1 if z>0 {ground=1}
	animFrame+=0.1 if animFrame>3 if ground {image_index=0 ground=0 zSpeed-=6 animFrame=2.1}
else {x+=4 image_index=1 zSpeed+=0.45
	
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
{

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
	{canmove=0
	animFrame=0 anim=11
	}
	
	
	if anim=11 ///Octo Spin
	{if animFrame=0 {specialcheck5=0;}
	sprite_index=spr_octopus_spin

	selfatk.x=x
	selfatk.image_xscale=4.5
	selfatk.image_yscale=2
	selfatk.height=128
	selfatk.damage=0.2 selfatk.MoveType=1

	frame_set(0,0,0.1)
	frame_set(1,1,0.05)
	frame_set(2,2,0.25)
	frame_set(3,3,0.25)
	frame_set(4,4,0.25)
	frame_set(5,5,0.25)
	frame_set(6,6,0.25)
	frame_set(7,7,0.25) if animFrame=7.5 {if specialcheck5!=5 {specialcheck5+=1 animFrame=2}}
	frame_set(8,1,0.1) 
	frame_set(9,0,0.1)
	
	if animFrame=clamp(animFrame,2,8) atk=1 else atk=0 {}
	
	if animFrame>9.5 {anim=0 canmove=1 animFrame=0}
	
	}
	
	///Intro
	if anim=66{immune=1
sprite_index=spr_octopus_intro
frame_set(0,0,0.1) if animFrame=1 {oControl.quakeFXTime=10}
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.05)
frame_set(6,6,0.2)
frame_set(7,7,0.2)
frame_set(8,8,0.2)
frame_set(9,9,0.2)
frame_set(10,10,0.025)
frame_set(11,9,0.2)
frame_set(12,8,0.2)
frame_set(13,7,0.2)
frame_set(14,5,0.1)
if animFrame>14.5
{immune=0 anim=0 canmove=1}
	
	}
	
	