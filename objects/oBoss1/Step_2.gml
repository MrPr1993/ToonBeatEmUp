enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteJump=1

///AI for enemy doing blocks
if name="BBB" ///To lock block to make boss easier
if canmove=1 and (anim=0 or anim=1)
if distance_to_object(targetEnemy)<64
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
sprite_index=spr_wolfita_block
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
sprite_index=spr_wolfita_block
if AnimFrame>2 {anim=60 anim=11 image_index=0 AnimFrame=0 alarm[1]=2}
}



if offScreenMode=1
{
if x>__view_get( e__VW.XView, 0 )+320+96 x=__view_get( e__VW.XView, 0 )+320+96
if x<__view_get( e__VW.XView, 0 )-96 x=__view_get( e__VW.XView, 0 )-96
}

if canmove=1
{
if x<__view_get( e__VW.XView, 0 ) or x>__view_get( e__VW.XView, 0 )+320
{
if x<__view_get( e__VW.XView, 0 )
{image_xscale=1 x+=8}
if x>__view_get( e__VW.XView, 0 )+320
{x-=8 image_xscale=-1}
alarm[1]=2
}
}


///Jump
if anim=666
{
if AnimFrame<0.5 {AnimFrame=1 ground=0 z-=2 zSpeed=-8 }
sprite_index=JumpSpr
image_index=5


if image_xscale=1 if x>__view_get( e__VW.XView, 0 )+32 x-=4
if image_xscale=-1 if x<__view_get( e__VW.XView, 0 )+320-32 x+=4



if ground {AnimFrame=4 anim=12}
}

if anim=10 ///Detect Attack
{

//if x>__view_get( e__VW.XView, 0 ) and x<__view_get( e__VW.XView, 0 )+320
{offScreen=0
if distance_to_object(oPlayer)<50
anim=choose(11,21)
else {
if distance_to_object(oPlayer)<100
anim=13 else anim=12}
}
//else
//{offScreen=1 anim=2}

}

if anim=11 ///Bite Attack
{
if AnimFrame=0  PlaySound(snd_wolfita7)

canbeGrabbed=0
MoveType=1 damage=0.2 selfatk.isCut=1
sprite_index=AtkSpr
image_index=AnimFrame

atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1

frame_set(0,0,0.1)
frame_set(1,1,0.25)

frame_set(2,2,0.25)
if AnimFrame=clamp(AnimFrame,2,2.99){atk=1
} else { atk=0}

frame_set(3,3,0.05)
frame_set(4,0,0.5)
if AnimFrame>3.5 canbeGrabbed=1

if AnimFrame>4.5 {atk=0 canmove=1}
}

if hurt=1 and prevanim=12 
or anim=4
{prevanim=0 canbeGrabbed=1}



if anim=12 ///Swing Attack
{prevanim=12 if AnimFrame=0 PlaySound(snd_wolfita5)
MoveType=2 damage=0.3 selfatk.isCut=1
sprite_index=AtkSpr2
image_index=AnimFrame

atkAddX=64 atkAddY=0 atkAddZ=0 selfatk.image_xscale=4*image_xscale selfatk.image_yscale=2
selfatk.height=128

frame_set(0,0,0.025)
if AnimFrame=0.025
or AnimFrame=0.025+0.050*1
or AnimFrame=0.025+0.050*5
or AnimFrame=0.025+0.050*9
or AnimFrame=0.025+0.050*13
or AnimFrame=0.025+0.050*17
{specialFX=1 alarm[3]=2}

frame_set(1,1,0.25)

frame_set(2,2,0.25)
if AnimFrame=clamp(AnimFrame,2,2.99){if AnimFrame<=2.25 {PlaySoundNoStack(snd_swing) PlaySound(snd_wolfita4)} atk=1 canbeGrabbed=0

if image_xscale=-1 and x>__view_get( e__VW.XView, 0 )+80
if place_free(x-80,y) x-=80

if image_xscale=1 and x<__view_get( e__VW.XView, 0 )+320-80
if place_free(x+80,y) x+=80

} else { atk=0 canbeGrabbed=1}


frame_set(3,3,0.05)
frame_set(4,4,0.5)

if AnimFrame>4.5 {atk=0 canmove=1}
}

if anim=13 ///Lunge Attack
{
atkAddX=64 atkAddY=0 atkAddZ=0 selfatk.image_xscale=2*image_xscale selfatk.image_yscale=2
selfatk.height=128

canbeGrabbed=0
MoveType=2 damage=0.2
sprite_index=spr_wolfita_attack3
image_index=AnimFrame

if AnimFrame<2
{ground=1 AnimFrame+=0.5} else if AnimFrame=2 {PlaySound(snd_wolfita7) ground=0 zSpeed=-6}

if ground=0
{
if place_free(x+4*image_xscale,y) x+=4*image_xscale

atk=1

if AnimFrame<3.5
AnimFrame+=0.5
} else atk=0

if ground and AnimFrame>2.5 {canbeGrabbed=1 AnimFrame=4 anim=12}
}


///Prepare To Jump
if anim=21
{
if x<__view_get( e__VW.XView, 0 ) image_xscale=1
if x>__view_get( e__VW.XView, 0 )+320 image_xscale=-1

sprite_index=spr_wolfita_attack3
image_index=1

image_speed=0 atk=0
if AnimFrame=clamp(AnimFrame,0,1)
AnimFrame+=0.05 else AnimFrame+=0.05 if AnimFrame>0.1 {PlaySound(snd_wolfita6) anim=666}
}


///Intro
if anim=100
{canbeGrabbed=0 recovery=10
sprite_index=spr_wolfita_intro 


if animLock=0
frame_set(0,0,0.1) if AnimFrame=1 PlaySound(snd_hwolf4)
frame_set(1,1,0.1) 
frame_set(2,2,0.2)
frame_set(3,3,0.2)
frame_set(4,2,0.2)
frame_set(5,3,0.2)
frame_set(6,2,0.2)
frame_set(7,3,0.2)
frame_set(8,2,0.2)
frame_set(9,3,0.2)
frame_set(10,2,0.2)
frame_set(11,3,0.2)
frame_set(12,2,0.2)
frame_set(13,3,0.2)
frame_set(14,2,0.2)
frame_set(15,3,0.2) if AnimFrame=16 {PlaySound(snd_wolfita2) oControl.quakeFXTime=8}

frame_set(16,4,0.2) 
frame_set(17,5,0.2)
frame_set(18,6,0.2)
frame_set(19,7,0.2)
frame_set(20,6,0.2)
frame_set(21,7,0.2)
frame_set(22,6,0.2)
frame_set(23,7,0.2)
frame_set(24,6,0.2)
frame_set(25,7,0.2)
frame_set(26,6,0.2)
frame_set(27,7,0.2)
frame_set(28,6,0.2)
frame_set(29,7,0.2)
frame_set(30,6,0.2)
frame_set(31,7,0.2)
frame_set(32,6,0.2)
frame_set(33,7,0.2)
frame_set(34,6,0.2)
frame_set(35,7,0.2)
frame_set(36,6,0.05)

if AnimFrame>36.9 {canbeGrabbed=1 recovery=0 anim=0 canmove=1 alarm[1]=30}
}



///Death
if anim=101
{
AnimFrame+=0.2
AnimFrame=clamp(AnimFrame,0,3.5)

image_index=AnimFrame
if hitBack=0
sprite_index=spr_wolfita_dead else sprite_index=spr_wolfita_dead2
if AnimFrame>3.2
if specialBossState=1
{specialBossState=0
}
}

if hp<=0
x=clamp(x,__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.XView, 0 )+320-32)

