/// @description Insert description here
// You can write your code in this editor
depth=-y

screenF+=0.25 if screenF>=3 screenF=0;

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
{if AnimFrame=0 {scopespr=mask_none  specialcheck0=1 specialcheck1=0



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

screenSpr=spr_science_dead
screenInd+=0.25;

z=lerp(z,0,0.1)	

selfatk.atk=0 clawSpr=mask_none
wobbleX=specialcheck0 wobbleY=wobbleX

if AnimFrame<1
{
if specialcheck1=0 {dust_make(screenX+choose(-random(72),random(72)),screenY+4,screenZ-random(80),0,0,0)
	dustmk.sprite_index=spr_explosion3 screenDamage=0.25
	specialcheck1=4} else specialcheck1-=1

ground=1
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
dust_make(screenX-32,screenY+1,screenZ-48,-1,0,0)
dustmk.sprite_index=spr_explosion2
dust_make(screenX+32,screenY+1,screenZ-48,1,0,0)
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
{AnimFrame=0 anim=9999 dead=1 canmove=0 selfatk.atk=0 specialcheck0=1 specialcheck1=0}

if sprite_index=ThrownSpr clawSpr=spr_science_b

if anim=0
{sprite_index=spr_burglar_stand
if z>-150 z-=4 else {z=lerp(z,-150,0.1)}
if z<=-149 recovery=2 image_speed=0

frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1)
if AnimFrame>=4 AnimFrame=0

clawSpr=spr_science_b

if screenAnim=0
{
	if oControl.p1.dead=1 
	and oControl.p2.dead=1 
	and oControl.p3.dead=1 
	and oControl.p4.dead=1 
	{
screenSpr=spr_science_taunt
screenFrame+=0.1
if screenFrame>=3 screenFrame=0
	}
	else
{
screenSpr=spr_science_idle
screenFrame+=0.1}

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
	{atk=0 scopespr=spr_submarine_scope_hit sprite_index=ShockSpr
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
	atk=0 clawSpr=spr_science_b sprite_index=FlatSpr  prevanim=9
	hurt=1 recovery=60
	
	z=0

	if image_index<1.5
	image_index+=0.25

	if hp<=0 if isEnemy=1 {if hplayer=0 {if dead=0 {hplayertake=hp dead=1 alarm[2]=90}} else {hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show() }}
	else
	if dead=0 {AnimFrame=0 dead=1 alarm[2]=30}

	if dead=0
	AnimFrame+=0.01
	sentflying=0
	zSpeed=0
	if AnimFrame>1
	{//clawSpr=spr_submarine
AnimFrame=0 anim=6 wobbleX=1.2 wobbleY=0.1	
	}

	}

	if anim=40 ///Burned
	if overwriteBurn=0
	{
	hurt=1 recovery=30
	image_index=AnimFrame image_speed=0
	clawSpr=spr_science_b
sprite_index=BurnSpr

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
	atk=0 clawSpr=spr_science_b
	
sprite_index=FrozenSpr

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
	{clawSpr=spr_science_b screenSpr=spr_science_hit
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
	{hurt=1 recovery=30 clawSpr=spr_science_b screenSpr=spr_science_hit
	minebuffer=120
mineind=0

torpedobuffer=120
torpedoind=0
torpedotimes=3

 rotorind=0
scopespr=spr_submarine_scope_hit scopeind=0
		}
	
if shockbuffer!=0 shockbuffer--;
	
	if anim=10 ///Attack
	{
	if z>-150 z-=4
	if AnimFrame=0 screenInd=0
screenSpr=spr_science_action if screenInd<=1.5 screenInd+=0.25;
	
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1)
if AnimFrame>=4 AnimFrame=0	
	if z<=-98
	{anim=choose(11,12) AnimFrame=0}
	
if anim=11 or anim=12 if shockbuffer=0 {anim=13 screenInd=0 shockbuffer=400+round(random(400))}

	}
	
	
if anim=13 ///Use laser
{
if screenInd=0 {specialtimes[5]=choose(0,1,2) }

if z>-150 z-=4 else {z=lerp(z,-150,0.1)}
if z<=-149 recovery=2

screenSpr=spr_science_action2

if specialtimes[5]=1 screenSpr=spr_science_action2l
if specialtimes[5]=2 screenSpr=spr_science_action2r

screenInd+=0.25 if screenInd=2
{oControl.quakeFXTime=4
PlaySound(snd_shocked2)

var xspawn=oControl.camX;
var yspawn=oControl.wallY;

waveatk=instance_create_depth(xspawn,yspawn,-1,oBossHazard) waveatk.createSource=self.id;
waveatk.playerNO=playerNO
if specialtimes[5]=1 {xspawn=oControl.camX+8 yspawn=oControl.wallY waveatk.image_angle=270; waveatk.image_xscale=0.5 waveatk.image_yscale=1.5}
if specialtimes[5]=2 {xspawn=oControl.camX+320-8 yspawn=oControl.wallY waveatk.image_angle=270; waveatk.image_xscale=0.5 waveatk.image_yscale=1.5}

waveatk.x=xspawn waveatk.y=yspawn

waveatk.specialtimes[5]=specialtimes[5]

with waveatk
{image_speed=0.25 sprite_index=spr_science_linezap mask_index=spr_science_linezap
	HitSound=snd_shocked
selfscript=function()
{atk=0;
if createSource!=-1 if instance_exists(createSource) if createSource.hp<=0 instance_destroy();	
if vspeed=0 and hspeed=0 visible^=1; else {visible=1 atk=1}
AnimFrame++;

if AnimFrame>=60 
{
if specialtimes[5]=0 vspeed=1
if specialtimes[5]=1 hspeed=2
if specialtimes[5]=2 hspeed=-2
}

image_index+=0.5
height=4 damage=0.15 MoveType=3 hp=0 name="TRAP" depth=-y
if y>=oControl.camY+320 or x!=clamp(x,oControl.camX-32,oControl.camX+320+32) instance_destroy();
}
}
}
	
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1)

if screenInd>=4 {canmove=1 anim=0 AnimFrame=0}
}
	
	if anim=11 ///Claw Slam
	{damage=0.25 MoveType=1
	clawSpr=spr_science_b
	image_index=lerp(image_index,0,0.1)

	atkcol_set(0,0,0,1,1,96)
	
	if AnimFrame<=5 {AnimFrame+=0.1 if screenInd<=1.5 screenInd+=0.25;
	if targetEnemy.dead=0
{

if targetEnemy.x>x x+=2 else x-=2

if targetEnemy.y>y y+=1 else y-=1

}	
	}
	else
	{
screenSpr=spr_science_action if screenInd<=3.5 screenInd+=0.25;		
	
	if AnimFrame<=8
	{atk=1 z+=8 if z>=0 {selfatk.atk=0 atk=0 AnimFrame=9 z=0 oControl.quakeFXTime=10 PlaySound(snd_quakeground)}}
	}
	
	if AnimFrame>=9 {AnimFrame+=0.25 if AnimFrame>=21 {canmove=1 anim=0 AnimFrame=0}}
	
	}
	
if anim=12 ////Spin Claw Charge
{screenSpr=spr_science_action if screenInd<=1.5 screenInd+=0.25;
if AnimFrame=0 {specialcheck[0]=choose(1,-1) specialcheck[1]=choose(1,-1)

}

if AnimFrame<5 { x=lerp(x,oControl.camX+160-(90*specialcheck[0]),0.1) 
y=lerp(y,oControl.wallY+16+96-(50*specialcheck[1]),0.1) 
y=clamp(y,0,room_height-8)
z=lerp(z,0,0.1)

clawSpr=spr_science_b
image_index=lerp(image_index,0,0.1)
	}

AnimFrame+=0.05 if AnimFrame=5 {
var endir=point_direction(x,y,targetEnemy.x,targetEnemy.y)
specialcheck[0]=lengthdir_x(4,endir)
specialcheck[1]=lengthdir_y(4,endir)
}
if AnimFrame>=5 and AnimFrame<=6
{AnimFrame=5.5 

damage=0.25 MoveType=1
clawSpr=spr_science_b_spin
image_index+=0.25

atkcol_set(0,0,0,1,1,96) atk=1

x+=specialcheck[0]
y+=specialcheck[1]
	
if (specialcheck[0]>0 and x!=clamp(x,-9999,oControl.camX+320-33))
or (specialcheck[0]<0 and x!=clamp(x,oControl.camX+33,oControl.camX+9999))
or (specialcheck[1]>0 and y!=clamp(y,-9999,oControl.camY+240-8))
or (specialcheck[1]<0 and y!=clamp(y,oControl.wallY+8,oControl.camY+9999))
{selfatk.atk=0 atk=0 AnimFrame=9 z=0 oControl.quakeFXTime=10 PlaySound(snd_quakeground)}
}

if AnimFrame>=5 {screenSpr=spr_science_action if screenInd<=3.5 screenInd+=0.25;}

	if AnimFrame>=9 {AnimFrame+=0.25 if AnimFrame>=21 {canmove=1 anim=0 AnimFrame=0}}
}

///Boss Battle Intro
if anim=110
{immune=1
screenSpr=mask_none
screenZ=lerp(screenZ,-44,0.1)
AnimFrame+=1

if AnimFrame>=240
{
AnimFrame=0 anim=100
}
}

	///Intro
	if anim=100{immune=1 
		
if AnimFrame<=6 {screenSpr=spr_science_intro screenInd+=0.25 if screenInd=3 screenInd=0}
else {screenSpr=spr_science_intro specialanim=0 screenInd+=0.1 screenInd=clamp(screenInd,3,7)}

AnimFrame+=0.1

if AnimFrame>10
z=lerp(z,-120,0.1)

if AnimFrame>20.5
{immune=0 anim=0 canmove=1}
	
	}
	
	
	////Panic
if anim=595000
{
if AnimFrame=0 {image_index=0 recovery=0 scopeind=0 recoveryThrow=0 }

if z<0 z+=4 else z=0

scopespr=spr_science_b

{clawSpr=spr_science_b scopeind+=0.5 if scopeind=3 scopeind=1 if AnimFrame>46 or AnimFrame<4 image_index=0.5}
AnimFrame+=1

image_index+=0.25 if image_index>=3 image_index=1

screenSpr=spr_science_panic screenInd=image_index;

if AnimFrame>=50 {canmove=1 anim=0 AnimFrame=0 hurt=0 screenInd=0 }
}

if sprite_index=ThrownSpr or anim=4 clawSpr=spr_science_b

x=clamp(x,oControl.camX+32,oControl.camX+320-32)

if anim!=66
z=clamp(z,-250,1)