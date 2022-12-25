/// @description Insert description here
// You can write your code in this editor



enemy_endstep()
throw_step()

if specialcheck0!=0 specialcheck0-=1


if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>100
anim=12 else anim=11
if anim=12 if specialcheck0!=0 anim=11

if anim=11 if distance_to_point(targetEnemy.x,targetEnemy.y)>60 specialcheck1=1 else specialcheck1=0
}

if anim=11
{
atkcol_set(34,0,0,2.35,1,133)
sprite_index=spr_snowgirl_attack
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if animFrame=clamp(animFrame,2,2.2)
if specialcheck1=1
{
ground=0 sentflying=4*image_xscale zSpeed=-4 specialcheck1=0
}
frame_set(2,2,0.1)
frame_set(3,3,0.05) MoveType=4 damage=0.2 
if animFrame=4 {selfatk.atk=1 oControl.quakeFXTime=10 
flashFX(x+34*image_xscale,y,z,spr_hitground,0,1,99,1,1,c_white,1) fx.isDepth=0 fx.depth=6000
}if animFrame=clamp(animFrame,4,4.9) atk=1 else atk=0
frame_set(4,4,0.5)
frame_set(5,5,0.05)
frame_set(6,0,0.1)
if animFrame>6.5 canmove=1
}

if anim=12
{
if animFrame=0 {specialcheck0=0}	

sprite_index=spr_snowgirl_breath
frame_set(0,0,0.125)
frame_set(1,1,0.125)
frame_set(2,2,0.125)
frame_set(3,1,0.05)
frame_set(4,0,0.25) if animFrame>5 if specialcheck0=0 {specialcheck0=200 

sm=instance_create_depth(x+32*image_xscale,y+1,0,oPharaohSmoke) sm.hspeed=1*image_xscale
		sm.z=z-16 sm.dizzyHit=0 sm.MoveType=6 sm.isPharaoh=0
		sm.sprite_index=spr_bigsmoke sm.mainSmoke=spr_bigsmoke
	}
frame_set(5,3,0.25)
frame_set(6,4,0.25)
frame_set(7,3,0.25)
frame_set(8,4,0.25)
frame_set(9,3,0.25)
frame_set(10,4,0.25)
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.25)
frame_set(15,4,0.25)
frame_set(16,4,0.25)
frame_set(17,0,0.25)

if animFrame>17.75 {canmove=1 atk=0}
}