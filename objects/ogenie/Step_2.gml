enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

////Break out of the superarmor to be able to throw them
if anim=4 canbeGrabbed=1 else canbeGrabbed=0

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<100
	anim=choose(12) else anim=choose(13,14,12,65)
}
	else
	anim=11
}


if anim=11
{
//if animFrame=0  PlaySound(snd_twoheads3)
MoveType=1 damage=0.2
sprite_index=spr_genie_attack1 
image_index=animFrame
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
atkcol_set(70,0,50,3.75,1,34)
frame_set(0,0,0.1) if animFrame=1 PlaySound(choose(snd_genie11,snd_genie12))
frame_set(1,0,0.25)
frame_set(2,1,0.5)
if animFrame=clamp(animFrame,2,2.99){atk=1
} else { atk=0 }
frame_set(3,2,0.25)
frame_set(4,3,0.05)
frame_set(5,4,0.5)
frame_set(6,5,0.5)
if animFrame>6.5 {atk=0 canmove=1}
}

if anim=12 ///Air Kick
{sprite_index=spr_genie_attack2 MoveType=4 damage=0.3 atkcol_set(43,0,14,3.75,1,83)
if animFrame=0 {specialtimes[0]=0}
frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame=2 {
	PlaySound(choose(snd_genie3,snd_genie11,snd_genie12,snd_genie9))
	ground=0 sentflying=2*image_xscale zSpeed=-10}
frame_set(2,2,0.1)
frame_set(3,3+specialtimes[0],0.1) if animFrame=clamp(animFrame,3,3.9)
if ground{atk=0 sentflying=0 animFrame=4 oControl.quakeFX=10 PlaySound(snd_quakeground)} else 
{atk=1 z+=0.45
animFrame=3.5
specialtimes[0]+=0.25 if specialtimes[0]=4 specialtimes[0]=3
}

frame_set(4,6,0.1)
frame_set(5,7,0.1)
frame_set(6,8,0.05)
frame_set(7,1,0.1)

if animFrame>7.5 and ground {canmove=1}
}

if anim=13 /// Magic Spell
{
sprite_index=spr_genie_attack3
frame_set(0,0,0.1) if animFrame=1 {PlaySound(choose(snd_genie5,snd_genie6))}
frame_set(1,1,0.1)
frame_set(2,2,0.1) if animFrame=3
{var _swordrep=0
repeat(7)
{
hazz=instance_create_depth(x+(56+56*_swordrep)*image_xscale,y,-1,oBossHazard) with hazz
{
selfscript = function()
{MoveType=1 damage=0.1 isCut=1 spriteFX=spr_blood2 HitSound=snd_cut
depth=-y if animFrame=0 {sprite_index=mask_none}
frame_set(0,0,0.1) if animFrame=1 {sprite_index=spr_genie_sword if specialtimes[0]!=0 {specialtimes[0]-=1 animFrame=0.5}}
frame_set(1,0,0.5) if animFrame=clamp(animFrame,1,2.9) atk=1 else atk=0
if animFrame=2 
{oControl.quakeFXTime=10 PlaySound(snd_quakeground)
dust_make(x-16,y+1,z,-2,0,0) dust_make(x+16,y+1,z,2,0,0)
dust_make(x,y+2,z,0,1,0)
}
frame_set(2,1,0.5) 
frame_set(3,2,0.5)
frame_set(4,3,0.01)
frame_set(5,4,0.25)
frame_set(6,5,0.25)
frame_set(7,6,0.25)
if animFrame>7.7 {dust_make(x,y,z,0,0,0) instance_destroy()}
} 

}hazz.specialtimes[0]=1*_swordrep
_swordrep+=1;
}

}
frame_set(3,3,0.1)
frame_set(4,4,0.1)
frame_set(5,0,0.1)
if animFrame>5.5 canmove=1
}

if anim=65 ///Dance Dance
{
if animFrame=0 {specialtimes[0]=0} specialtimes[0]+=0.25
if specialtimes[0]=8 specialtimes[0]=0
sprite_index=spr_genie_attack4
frame_set(0,0,0.1) if animFrame=1 {PlaySound(snd_genie7,snd_genie8)}
frame_set(1,1+specialtimes[0],0.01)
frame_set(2,9,0.1)
frame_set(3,10,0.1) if animFrame=4
{PlaySound(snd_genie12) PlaySound(snd_explosion2)
projectile_create(x,y,z,106,spr_genie_wave,8,mask_large,spr_genie_wave,0.35,1,1,-5,-5)
projectile.isCut=1 projectile.image_xscale=1
projectile_create(x,y,z,106,spr_genie_wave,-8,mask_large,spr_genie_wave,0.35,1,1,-5,-5)
projectile.isCut=1 projectile.image_xscale=-1
}
frame_set(4,11,0.1)
frame_set(5,12,0.1)
frame_set(6,13,0.05)
frame_set(7,0,0.1)
if animFrame>7.5 canmove=1
}

if anim=14 ///Fire Ring
{if animFrame=0 {specialtimes[0]=0}
sprite_index=spr_genie_attack5
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,1,0.25) specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0
frame_set(3,2+specialtimes[0],0.1)
frame_set(4,4+specialtimes[0],0.1) if animFrame=5 {PlaySound(snd_flameshort) PlaySound(snd_genie4)}
frame_set(5,5,0.5)
frame_set(6,7,0.5) if animFrame=7
{
projectile_create(x+64*image_xscale,y+2,z-38,32,spr_fire_ring,4*image_xscale,mask_firering,spr_burn,0.2,5,5,-4,0)
with projectile {canDestroy=0 isDepth=0 depth=-y+16 }
projectile_create(x+64*image_xscale,y+2,z-38,32,spr_fire_ringb,4*image_xscale,mask_none,spr_burn,0.2,5,5,-4,0)
}
frame_set(7,8,0.5)
frame_set(8,9,0.5)
frame_set(9,10,0.25)
frame_set(10,11,0.05)
frame_set(11,0,0.1)
if animFrame>11.5 canmove=1
}


///Intro
if anim=100
{

if animFrame=0 {sprite_index=spr_genie_lamp}
if specialanim=0
{sprite_index=spr_genie_lamp
frame_set(0,0,0.02) if animFrame=1 {PlaySound(snd_genie1) PlaySound(snd_steal) zSpeed=-2}
frame_set(1,0,0.02) if animFrame=2 {PlaySound(snd_steal) zSpeed=-2}
frame_set(2,0,0.02) if animFrame=3
{animFrame=0 specialanim=1}
}
if specialanim=1
{sprite_index=spr_genie_intro
frame_set(0,0,0.25) if animFrame=0 PlaySound(snd_genie8)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,7,0.25)
frame_set(8,8,0.25)
frame_set(9,9,0.25)
frame_set(10,10,0.25)
frame_set(11,11,0.25) if animFrame=12 {PlaySound(snd_genie2)
	PlaySound(snd_explosion) oControl.quakeFXTime=10
	}
frame_set(12,12,0.25)
frame_set(13,13,0.25)
frame_set(14,14,0.25)
frame_set(15,15,0.25)
frame_set(16,16,0.25) 
frame_set(17,17,0.25)
frame_set(18,18,0.25)
frame_set(19,19,0.01)
frame_set(20,20,0.25) if animFrame=21 dust_make_ext(x,y+2,z-10,0,0,0,spr_dustmid,4)
frame_set(21,21,0.25)
frame_set(22,22,0.25)
if animFrame>22.5 {canmove=1 animFrame=0 anim=0}
}

}

