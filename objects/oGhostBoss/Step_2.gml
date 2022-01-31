/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

if anim=0 or anim=1 or anim=4
{
z=lerp(z,-16+hoverZ,0.1)
zSpeed=0

if anim=0 or anim=1
{
if targetEnemy.x>x image_xscale=1 else image_xscale=-1
}



if hover=1
hoverZ=lerp(hoverZ,2,0.025) if hoverZ>1.8 hover=-1
if hover=-1
hoverZ=lerp(hoverZ,-2,0.025) if hoverZ<-1.8 hover=1
}

if anim=10
{
anim=12
}

if anim=11
{atkcol_set(5,0,-11,3.05,1,86) MoveType=1 damage=0.2
animFrame+=0.025
if animFrame=clamp(animFrame,0,1) {z=lerp(z,-128,0.1) sprite_index=spr_ghost_stand image_index+=0.1
	if image_xscale=1 x=lerp(x,__view_get( e__VW.XView, 0 )+48,0.1)
	if image_xscale=-1 x=lerp(x,__view_get( e__VW.XView, 0 )+320-48,0.1)
	GheadX=10
GheadY=-90
headSpr=spr_ghost_head
headInd=0
headAngle=0
	}
if animFrame=clamp(animFrame,1,2) {sprite_index=spr_ghost_charge image_index=0 z=lerp(z,-16,0.1) sentflying=6*image_xscale
GheadX=25
GheadY=-25
headSpr=spr_ghost_head
headInd=2
headAngle=0	atk=1 
	}
if animFrame>2 {sprite_index=spr_ghost_charge image_index=1 z=lerp(z,-20,0.1) sentflying=lerp(sentflying,0,0.5)
GheadX=-16
GheadY=-91 atk=0
headSpr=spr_ghost_head
headInd=1
headAngle=0	
	}
zSpeed=0
if animFrame>2.5 {canmove=1 anim=0}
}

		if anim=12 ///Axe Throw
	{sprite_index=spr_ghost_axe
	frame_set(0,0,0.1)
	frame_set(1,1,0.25) 
	frame_set(2,2,0.05) if animFrame=3 
	{PlaySoundNoStack(snd_swing)
 if animFrame=3
{card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
	card.image_speed=0 card.Spin=-22.5*image_xscale card.sprSpin=0 card.sprite_index=spr_ghost_axeobj
	card.z=z-64 card.image_xscale=image_xscale card.disappearHit=0 card.image_alpha=0.75
	}
	}
	frame_set(3,3,0.25)
	frame_set(4,4,0.05)
	frame_set(5,0,0.25)
	damage=0.1
	if animFrame>5.75 {anim=0 canmove=1}
headAngle=0
	headSpr=spr_ghost_head
	if image_index<1 {headInd=1 GheadX=19 GheadY=-87}
	if image_index=clamp(image_index,1,2) {headInd=1 GheadX=-4 GheadY=-94}
	if image_index=clamp(image_index,2,3) {headInd=2 GheadX=-8 GheadY=-94}
	if image_index=clamp(image_index,3,4) {headInd=2 GheadX=30 GheadY=-76}
	if image_index=clamp(image_index,4,7) {headInd=2 GheadX=30 GheadY=-71}
	}

if anim=5 or anim=6
if hasHead=1
{
part=instance_create_depth(x+GheadX,y,depth,oDisappearPart)
part.image_angle=random(360) part.sprite_index=spr_ghost_headhit
part.z=z+GheadY
part.image_index=9 part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32)
part.my_pal_sprite=my_pal_sprite
part.current_pal=current_pal
headRespawn=200
hasHead=0
}

if hurt=0 and canmove
if hasHead=0
{
	headRespawn-=1
	if headRespawn=0 hasHead=1}



if anim=0
{
GheadX=10
GheadY=-90
headSpr=spr_ghost_head
headInd=0
headAngle=0
}

	if sprite_index=ThrownSpr
	{headSpr=spr_ghost_headhit
	if image_index=clamp(image_index,0,0.9)
{GheadX=10 GheadY=-90 headAngle=0 headInd=0}
	if image_index=clamp(image_index,1,1.9)
{GheadX=-13 GheadY=-101 headAngle=0 headInd=1}
if image_index=clamp(image_index,2,2.9)
{GheadX=-37 GheadY=-99 headAngle=0 headInd=2}
if image_index=clamp(image_index,3,3.9)
{GheadX=-29 GheadY=-91 headAngle=0 headInd=3}	
if image_index=clamp(image_index,4,4.9)
{GheadX=-102 GheadY=-47 headAngle=0 headInd=4}	
if image_index=clamp(image_index,5,5.9)
{GheadX=-26 GheadY=35 headAngle=90 headInd=4}	
if image_index=clamp(image_index,6,6.9)
{GheadX=-59 GheadY=-17 headAngle=450 headInd=3}	
if image_index=clamp(image_index,7,7.9)
{GheadX=-104 GheadY=6 headAngle=0 headInd=6}	
if image_index=clamp(image_index,8,8.9)
{GheadX=-85 GheadY=-34 headAngle=0 headInd=4}
if image_index=clamp(image_index,9,9.9)
{GheadX=0 GheadY=-85 headAngle=0 headInd=3}
if image_index=clamp(image_index,10,10.9)
{GheadX=-26 GheadY=-28 headAngle=0 headInd=7}
if image_index=clamp(image_index,11,11.9)
{GheadX=-21 GheadY=-18 headAngle=480 headInd=7}
if image_index=clamp(image_index,12,12.9)
{GheadX=-16 GheadY=-22 headAngle=585 headInd=7}
if image_index=clamp(image_index,13,13.9)
{GheadX=-6 GheadY=-24 headAngle=630 headInd=7}

if image_index=clamp(image_index,14,14.9)
{GheadX=-70 GheadY=-84 headAngle=0 headInd=8}
if image_index=clamp(image_index,15,15.9)
{GheadX=-19 GheadY=-127 headAngle=90 headInd=4}
if image_index=clamp(image_index,16,16.9)
{GheadX=4 GheadY=-105 headAngle=90 headInd=4}
if image_index=clamp(image_index,17,17.9)
{GheadX=20 GheadY=-42 headAngle=90 headInd=4}

if image_index=clamp(image_index,18,18.9)
{GheadX=37 GheadY=-30 headAngle=90 headInd=6}

if image_index=clamp(image_index,19,19.9)
{GheadX=28 GheadY=-34 headAngle=-90 headInd=3}

if image_index=clamp(image_index,20,20.9)
{GheadX=67 GheadY=-14 headAngle=-180 headInd=4}

if image_index=clamp(image_index,21,21.9)
{GheadX=30 GheadY=-34 headAngle=-90 headInd=3}

if image_index=clamp(image_index,22,22.9)
{GheadX=62 GheadY=-24 headAngle=-180 headInd=4}

if image_index=clamp(image_index,23,23.9)
{GheadX=-11 GheadY=-123 headAngle=-90 headInd=4}

if image_index=clamp(image_index,24,24.9)
{GheadX=-13 GheadY=-90 headAngle=0 headInd=9}

	}

	