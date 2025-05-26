enemy_endstep()
throw_step()

overwriteStand=1
overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if anim=0
{
	if specialtaunt!=-1
	if oControl.p1.dead=1 
	and oControl.p2.dead=1 
	and oControl.p3.dead=1 
	and oControl.p4.dead=1 
	{
	specialtaunt();
	exit;
	}
sprite_index=StandSpr
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,0,0.1)
frame_set(3,2,0.1) if AnimFrame>3.75 AnimFrame=0

}


if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>50
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>110
anim=13 else
anim=11
}
else
anim=12

if anim=11 if current_pal=1 anim=14
}

if anim=11
{if AnimFrame=0 {specialcheck5=7}
sprite_index=spr_lobster_attack atkcol_set(36,0,0,2.05,1,68)
frame_set(0,0,0.1) damage=0.05 HitForce=-1
if specialcheck5=0 MoveType=1 else MoveType=0
frame_set(1,1,0.05) if AnimFrame=clamp(AnimFrame,2,5.9) {atk=1 sentflying=1*image_xscale} else {atk=0 sentflying=0}
if AnimFrame=2 PlaySoundNoStack(snd_swing4)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25) if AnimFrame>5.75 if specialcheck5!=0 {PlaySoundNoStack(snd_swing4) specialcheck5-=1 AnimFrame=2}
frame_set(6,1,0.1) if AnimFrame>6.7 canmove=1
}

if anim=12
{atkcol_set(38,0,11,1.95,1,40)
sprite_index=spr_lobster_attack2 damage=0.1 MoveType=1
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.5) if AnimFrame=clamp(AnimFrame,2,3) atk=1 else atk=0
frame_set(3,3,0.05) 
frame_set(4,0,0.1)
if AnimFrame>4.7 canmove=1
}

if anim=13
{
sprite_index=spr_lobster_bubbles
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1) 
frame_set(4,2,0.1)
frame_set(5,3,0.25) 
frame_set(6,2,0.25)
frame_set(7,3,0.25) 
frame_set(8,2,0.25)
frame_set(9,3,0.25) 
frame_set(10,2,0.25)
frame_set(11,3,0.25) 
frame_set(12,2,0.25)
frame_set(13,4,0.1) 
frame_set(14,3,0.25)
if AnimFrame=15
	{proj=instance_create_depth(x+20*image_xscale,y+1,depth+1,oProjectile) with proj
		{sprite_index=spr_lobster_bubbleproj mask_index=mask_small spriteFX=spr_hitflash
			dizzyAtk=0 damage=0.1 MoveType=1 shadow=spr_shadow MoveType=591003
HitType=591003
			}proj.z=z-40 
			proj.addXSpeed=(0.3*image_xscale)/4
		proj.hspeed=(1.5*image_xscale)/4 proj.spdZ=(7)/7 proj.addZSpeed=(-0.45)/8
	}
frame_set(15,5,0.1) 
frame_set(16,0,0.1)
if AnimFrame>16.7 canmove=1
}


///Crab Punch
if anim=14
{

sprite_index=spr_lobster_attack3 atkcol_set(52,0,0,1.9,1,68)
frame_set(0,0,0.1) damage=0.2 HitForce=-1
MoveType=1
frame_set(1,1,0.05) if AnimFrame=clamp(AnimFrame,3,5.9) {atk=1 sentflying=24*image_xscale} else {atk=0 sentflying=0}
frame_set(2,2,0.1) if AnimFrame=3 PlaySoundNoStack(snd_swing)
frame_set(3,3,0.5)
frame_set(4,3,0.5)
frame_set(5,3,0.25)
frame_set(6,0,0.1) if AnimFrame>6.7 canmove=1
}

if current_pal=1
{
///AI for enemy doing blocks
if canmove=1 and (anim=0 or anim=1)
if distance_to_object(targetEnemy)<48
and (targetEnemy.y=clamp(targetEnemy.y,y-8,y+8))
and (
(image_xscale=1 and x<targetEnemy.x and targetEnemy.image_xscale=-1)
or (image_xscale=-1 and x>targetEnemy.x and targetEnemy.image_xscale=1)
)
{
if targetEnemy.atk=1 if anim!=60
{AnimFrame=0 canmove=0 recovery=0
anim=60 
}
}

///Block
if anim=60
{canBlock=1
sprite_index=spr_lobster_block
AnimFrame+=0.1
if AnimFrame>6 {canmove=1 anim=0 alarm[1]=2}
}

if anim=60 or anim=61
canBlock=1 else canBlock=0

///Block Hit
if anim=61
{canBlock=1 AnimFrame+=0.1 shaketime=30
if AnimFrame<0.5
{
if place_free(x+0.1*-image_xscale,y) x+=0.1*-image_xscale
}
sprite_index=spr_lobster_block
if AnimFrame>2 {anim=60}
}

}