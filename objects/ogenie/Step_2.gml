enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
	anim=choose(12) else anim=choose(13,14,65)
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
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
if animFrame=clamp(animFrame,2,2.99){atk=1
} else { atk=0 }
frame_set(3,3,0.05)
frame_set(4,0,0.5)
if animFrame>4.5 {atk=0 canmove=1}
}

if anim=12 ///Air Kick
{sprite_index=spr_genie_attack2 MoveType=9 damage=0.3

frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame=2 {ground=0 sentflying=2*image_xscale zSpeed=-10}
frame_set(2,2,0.1)
frame_set(3,3,0.1) if animFrame=clamp(animFrame,3,3.9)
if ground{sentflying=0 animFrame=4 oControl.quakeFX=10 PlaySound(snd_quakeground)} else animFrame=3.5

frame_set(4,4,0.05)
frame_set(5,0,0.1)

if animFrame>5.5 and ground {canmove=1}
}

if anim=13 /// Magic Spell
{
sprite_index=spr_genie_attack3
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1)
frame_set(4,4,0.05)
frame_set(4,0,0.1)
if animFrame>5.5 canmove=1
}

if anim=65 ///Dance Dance
{
if animFrame=0 {specialtimes[0]=0}
if specialtimes[0]=6 specialtimes[0]=0 else specialtimes[0]+=0.05
sprite_index=spr_genie_attack4
frame_set(0,0,0.1)
frame_set(1,1+specialtimes[0],0.005)
frame_set(2,7,0.1)
frame_set(3,8,0.1)
frame_set(4,9,0.05)
frame_set(5,0,0.1)
if animFrame>5.5 canmove=1
}

if anim=14 ///
{
sprite_index=spr_genie_attack5
frame_set(0,0,0.5)
frame_set(1,0,0.5)
frame_set(2,1,0.1)
frame_set(3,2,0.1)
frame_set(4,3,0.05)
frame_set(4,0,0.1)
if animFrame>5.5 canmove=1
}


