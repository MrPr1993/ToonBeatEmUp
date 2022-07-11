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
{sprite_index=StandSpr
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,0,0.1)
frame_set(3,2,0.1) if animFrame>3.75 animFrame=0
}


if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>70
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>100
anim=13 else
anim=11
}
else
anim=12
}

if anim=11
{if animFrame=0 {specialcheck5=7}
sprite_index=spr_lobster_attack atkcol_set(36,0,0,2.05,1,68)
frame_set(0,0,0.1) damage=0.05 HitForce=-1
if specialcheck5=0 MoveType=1 else MoveType=0
frame_set(1,1,0.025) if animFrame=clamp(animFrame,2,5.9) {atk=1 sentflying=1*image_xscale} else {atk=0 sentflying=0}
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25) if animFrame>5.75 if specialcheck5!=0 {specialcheck5-=1 animFrame=2}
frame_set(6,1,0.1) if animFrame>6.7 canmove=1
}

if anim=12
{atkcol_set(38,0,11,1.95,1,40)
sprite_index=spr_lobster_attack2 damage=0.1 MoveType=1
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1) if animFrame=clamp(animFrame,2,3) atk=1 else atk=0
frame_set(3,3,0.1) 
frame_set(4,0,0.1)
if animFrame>4.7 canmove=1
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
if animFrame=15
	{proj=instance_create_depth(x+20*image_xscale,y+1,depth+1,oProjectile) with proj
		{sprite_index=spr_lobster_bubbleproj mask_index=mask_small spriteFX=spr_hitflash
			dizzyAtk=0 damage=0.1 MoveType=1 shadow=spr_shadow
			}proj.z=z-40 
			proj.addXSpeed=(0.3*image_xscale)/4
		proj.hspeed=(1*image_xscale)/4 proj.spdZ=(7)/7 proj.addZSpeed=(-0.45)/8
	}
frame_set(15,5,0.1) 
frame_set(16,0,0.1)
if animFrame>16.7 canmove=1
}