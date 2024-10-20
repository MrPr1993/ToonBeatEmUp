/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

if hp=0 if !ground {x=clamp(x,oControl.camX+32,oControl.camX+320-32)}

headFront=1


if anim=0 or anim=1 or anim=4 or anim=13
{
z=lerp(z,-16+hoverZ,0.1)
zSpeed=0

if anim=0 or anim=1
{
if targetEnemy.x>x image_xscale=1 else image_xscale=-1

headSpr=spr_ghost_head
headInd=0
headAngle=0

if (key_left=0 and key_right=0 and key_up=0 and key_down=0)
{
GheadX=10
GheadY=-90
sprite_index=spr_ghost_stand
}
else
{
GheadX=20
GheadY=-88
sprite_index=spr_ghost_move
}
}



if hover=1
hoverZ=lerp(hoverZ,2,0.025) if hoverZ>1.8 hover=-1
if hover=-1
hoverZ=lerp(hoverZ,-2,0.025) if hoverZ<-1.8 hover=1
}

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
anim=choose(11,12)
else
anim=choose(13,14)
}

if anim=11 ///Charge
{
if AnimFrame=0
PlaySound(choose(snd_ant7,snd_ant8,snd_ant8,snd_ant8))

	atkcol_set(5,0,-11,3.05,1,86) MoveType=1 damage=0.2
AnimFrame+=0.025
if AnimFrame=clamp(AnimFrame,0,1) {z=lerp(z,-128,0.1) sprite_index=spr_ghost_stand image_index+=0.1
	if image_xscale=1 x=lerp(x,__view_get( e__VW.XView, 0 )+48,0.1)
	if image_xscale=-1 x=lerp(x,__view_get( e__VW.XView, 0 )+320-48,0.1)
	GheadX=20
GheadY=-90
headSpr=spr_ghost_head
headInd=0
headAngle=0
	}
if AnimFrame=clamp(AnimFrame,1,2) {sprite_index=spr_ghost_charge image_index=0 z=lerp(z,-16,0.1) sentflying=6*image_xscale
GheadX=30
GheadY=-25
headSpr=spr_ghost_head
headInd=2
headAngle=0	atk=1 
	}
if AnimFrame>2 {sprite_index=spr_ghost_charge image_index=1 z=lerp(z,-20,0.1) sentflying=lerp(sentflying,0,0.5)
GheadX=-6
GheadY=-91 atk=0
headSpr=spr_ghost_head
headInd=1
headAngle=0	
	}
zSpeed=0
if AnimFrame>2.5 {canmove=1 anim=0}
}

		if anim=12 ///Axe Throw
	{
if AnimFrame=0 PlaySound(choose(snd_ant5))	

	sprite_index=spr_ghost_axe
	frame_set(0,0,0.1)
	frame_set(1,1,0.25) 
	frame_set(2,2,0.05) if AnimFrame=3 
	{PlaySoundNoStack(snd_swing) PlaySound(choose(snd_ant9,snd_ant10)) 
 if AnimFrame=3
{card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
	card.image_speed=0 card.Spin=-22.5*image_xscale card.sprSpin=0 card.sprite_index=spr_ghost_axeobj
	card.z=z-64 card.image_xscale=image_xscale card.disappearHit=0 card.image_alpha=0.75
	}
	}
	frame_set(3,3,0.25)
	frame_set(4,4,0.05)
	frame_set(5,0,0.25)
	damage=0.1
	if AnimFrame>5.75 {anim=0 canmove=1}
headAngle=0
	headSpr=spr_ghost_head
	if image_index<1 {headInd=1 GheadX=19 GheadY=-87}
	if image_index=clamp(image_index,1,2) {headInd=1 GheadX=-4 GheadY=-94}
	if image_index=clamp(image_index,2,3) {headInd=2 GheadX=-8 GheadY=-94}
	if image_index=clamp(image_index,3,4) {headInd=2 GheadX=30 GheadY=-76}
	if image_index=clamp(image_index,4,7) {headInd=2 GheadX=30 GheadY=-71}
	}
	
	if anim=13 //Greataxe
	{
	if AnimFrame=0 PlaySound(choose(snd_ant6))
		headAngle=0 headSpr=spr_ghost_head
	atkcol_set(42,0,0,2.55,1,120) selfatk.MoveType=1 selfatk.HitType=1 selfatk.isCut=2 selfatk.HitSpark=spr_blood
damage=0.2 selfatk.HitSound=snd_cut

	 if AnimFrame=clamp(AnimFrame,1,2) {atk=1 sentflying=16*image_xscale} else {atk=0
		if AnimFrame<0.5 sentflying=-2*image_xscale else if AnimFrame<1 sentflying=lerp(AnimFrame,0,0.1)}
	sprite_index=spr_ghost_greataxe
	frame_set(0,0,0.025) if AnimFrame=1 {PlaySound(choose(snd_ant9,snd_ant10,snd_ant8)) PlaySoundNoStack(snd_swing2)}
	frame_set(1,1,0.25) if AnimFrame>2 sentflying=0
	frame_set(2,2,0.05)
	frame_set(3,2,0.05)
	if AnimFrame>3.5 {canmove=1}
	if AnimFrame<1
	{headInd=2 GheadX=43 GheadY=-64}
	else
	{headInd=1 GheadX=22 GheadY=-91}
	}
	
		if anim=14 //Spin Kick
		{
		if AnimFrame=0
		PlaySound(choose(snd_ant9,snd_ant10,snd_ant8))
		
			atkcol_set(0,0,0,3.65,1,116) headAngle=0 headSpr=spr_ghost_head
		sprite_index=spr_ghost_spin MoveType=2 damage=0.1
		
		if image_index=3 or image_index=7 PlaySoundNoStack(snd_swing3)
		AnimFrame+=0.1 if AnimFrame=clamp(AnimFrame,0.7,0.9) {PlaySoundNoStack(snd_swing3) AnimFrame=1}
		
		if AnimFrame=clamp(AnimFrame,1,8) {
		
		sentflying=2*image_xscale atk=1 image_index+=0.5
				
		if image_index=clamp(image_index,1,1.9) {headInd=10 GheadX=2}
		if image_index=clamp(image_index,2,2.9) {headInd=9 GheadX=-22 headFront=1}
		if image_index=clamp(image_index,3,3.9) {headInd=8 GheadX=-41 headFront=1}
		if image_index=clamp(image_index,4,4.9) {headInd=7 GheadX=-22 headFront=0}
		if image_index=clamp(image_index,5,5.9) {headInd=6 GheadX=4 headFront=0}
		if image_index=clamp(image_index,6,6.9) {headInd=5 GheadX=22 headFront=0}
		if image_index=clamp(image_index,7,7.9) {headInd=4 GheadX=41 headFront=1}
		if image_index=clamp(image_index,8,8.9) {headInd=3 GheadX=22}		
		GheadY=-86
		
		} else {
			
		sentflying=0 atk=0 image_index+=0.01
	
		
		headInd=1 GheadX=21 GheadY=-95
		}
		if image_index>8.9 if AnimFrame<8 image_index=1
		if AnimFrame>8 image_index=0
		if AnimFrame>9 {canmove=1 anim=0}
			
		
		}

if anim=5 or anim=6 ///When they get thrown or fall they lose the head
or sprite_index=FlatSpr or sprite_index=ShockSpr or sprite_index=BurnSpr
or sprite_index=FrozenSpr
if hasHead=1
{
part=instance_create_depth(x+GheadX,y,depth,oGhostHead)
//part.image_angle=random(360) part.sprite_index=spr_ghost_headhit
part.z=z+GheadY
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32) part.image_xscale=image_xscale
part.my_pal_sprite=my_pal_sprite part.anim=4 part.sentflying=4*image_xscale
part.current_pal=current_pal part.targetEnemy=targetEnemy part.ownBody=id
headRespawn=0
hasHead=0
}

if hurt=0 and canmove
if hasHead=0
{

	headRespawn-=1
	if headRespawn=0 {flashFX(x+GheadX*image_xscale,y+2,z+GheadY-16,spr_ghost_poof,0,0.5,0,1,1,c_white,1) hasHead=1}}




	if sprite_index=ThrownSpr
	{headSpr=spr_ghost_headhit
	if image_index=clamp(image_index,0,0.9)
{GheadX=20 GheadY=-90 headAngle=0 headInd=0}
	if image_index=clamp(image_index,1,1.9)
{GheadX=-3 GheadY=-101 headAngle=0 headInd=1}
if image_index=clamp(image_index,2,2.9)
{GheadX=-27 GheadY=-99 headAngle=0 headInd=2}
if image_index=clamp(image_index,3,3.9)
{GheadX=-19 GheadY=-91 headAngle=0 headInd=3}	
if image_index=clamp(image_index,4,4.9)
{GheadX=-92 GheadY=-47 headAngle=0 headInd=4}	
if image_index=clamp(image_index,5,5.9)
{GheadX=-16 GheadY=35 headAngle=90 headInd=4}	
if image_index=clamp(image_index,6,6.9)
{GheadX=-49 GheadY=-17 headAngle=450 headInd=3}	
if image_index=clamp(image_index,7,7.9)
{GheadX=-94 GheadY=6 headAngle=0 headInd=6}	
if image_index=clamp(image_index,8,8.9)
{GheadX=-75 GheadY=-34 headAngle=0 headInd=4}
if image_index=clamp(image_index,9,9.9)
{GheadX=10 GheadY=-85 headAngle=0 headInd=3}
if image_index=clamp(image_index,10,10.9)
{GheadX=-16 GheadY=-28 headAngle=0 headInd=7}
if image_index=clamp(image_index,11,11.9)
{GheadX=-11 GheadY=-18 headAngle=480 headInd=7}
if image_index=clamp(image_index,12,12.9)
{GheadX=6 GheadY=-22 headAngle=585 headInd=7}
if image_index=clamp(image_index,13,13.9)
{GheadX=6 GheadY=-24 headAngle=630 headInd=7}

if image_index=clamp(image_index,14,14.9)
{GheadX=-60 GheadY=-84 headAngle=0 headInd=8}
if image_index=clamp(image_index,15,15.9)
{GheadX=-9 GheadY=-127 headAngle=90 headInd=4}
if image_index=clamp(image_index,16,16.9)
{GheadX=16 GheadY=-105 headAngle=90 headInd=4}
if image_index=clamp(image_index,17,17.9)
{GheadX=30 GheadY=-42 headAngle=90 headInd=4}

if image_index=clamp(image_index,18,18.9)
{GheadX=47 GheadY=-30 headAngle=90 headInd=6}

if image_index=clamp(image_index,19,19.9)
{GheadX=38 GheadY=-34 headAngle=-90 headInd=3}

if image_index=clamp(image_index,20,20.9)
{GheadX=77 GheadY=-14 headAngle=-180 headInd=4}

if image_index=clamp(image_index,21,21.9)
{GheadX=40 GheadY=-34 headAngle=-90 headInd=3}

if image_index=clamp(image_index,22,22.9)
{GheadX=72 GheadY=-24 headAngle=-180 headInd=4}

if image_index=clamp(image_index,23,23.9)
{GheadX=-1 GheadY=-123 headAngle=-90 headInd=4}

if image_index=clamp(image_index,24,24.9)
{GheadX=-3 GheadY=-90 headAngle=0 headInd=9}

	}
	
if sprite_index=DizzySpr
{
headSpr=spr_ghost_head_dizzy
headInd=image_index

GheadX=10
GheadY=-104
}

if sprite_index=scaredSpr
{
headSpr=spr_ghost_head_panic
headInd=image_index

GheadX=10
GheadY=-104
}

	if hp<=0
x=clamp(x,__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.XView, 0 )+320-32)
