enemy_endstep()
throw_step()

overwriteMove=1

overwriteThrown=1
if hurt=1
{
if anim=30 ///Thrown
{
{hurt=1 sprite_index=ThrownSpr recovery=30

image_index=6

 image_speed=0
}} else SpritePos=0
}else SpritePos=0

if anim=1
{
{sprite_index=MoveSpr ///Walk
image_index+=0.2 if image_index>6 image_index=0 atk=0}
}

overwriteAttack=1

if anim=10 ///Attack Stand
{ hit=0  
if sprite_index!=AtkSpr
{
sprite_index=AtkSpr
}
MoveType=0 damage=0.1

if AnimFrame=clamp(AnimFrame,0,2) image_index=0
if AnimFrame=clamp(AnimFrame,2,3) image_index=1
if AnimFrame=clamp(AnimFrame,3,4) image_index=2

 image_speed=0
 if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0
if AnimFrame=clamp(AnimFrame,0,1.5)
AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0

}
}

overwriteHitStand=1

hashitBack=0
if anim=4 ///Hit Stand
{
hurt=1

if targetHeightHit=0 image_index=0 else image_index=1

image_speed=0
AnimFrame+=0.05 if AnimFrame>1-0.05 {hurt=0

if dizzyHit=0
{canmove=1}
else {
if hasDizzy=0
{image_index=GrabFrame image_speed=0}

AnimFrame=0 anim=42 }

}
}

overwriteHitAir=1

if anim=5 ///Hit Air
{
atk=0 sprite_index=ThrownSpr
hurt=1 recovery=120

recovery=30

image_index=2

image_speed=0 AnimFrame=clamp(AnimFrame,3,5)
AnimFrame+=0.1
//Land on ground
if ground {hp-=thrownDMG

hground=instance_create_depth(x,y,depth,oFlashFX)
hground.sprite_index=spr_hitground hground.depth=99996
hground.isDepth=0 hground.z=z

{PlaySoundNoStack(HitGround)
if isHeavy=1 oControl.quakeFXTime=10


if ThrowDamage!=0 
if isEnemy=1
{event_user(10) hp-=ThrowDamage hpscan() hud_show() ThrowDamage=0} //If land take damage
else hp-=ThrowDamage
 
 recovery=10 
 
 AnimFrame=6.8 anim=6
 
///if hitBackFaceDown=1 and hashitBackFaceDown=1
///{sentflying=-sentflying hitBack=1 hasBounce=1}

 if hasGroundRoll=1 and groundRoll=1
 {groundRoll=0 HitType=2 event_user(0)}

 
 }}
}

overwriteHitGetup=1

if anim=6 ///Hit Getup / Get Up
{charThrown=0 recovery=30
hurt=1 sprite_index=ThrownSpr

if AnimFrame=clamp(AnimFrame,0,9) image_index=3
if AnimFrame=clamp(AnimFrame,9,10) image_index=4
if AnimFrame=clamp(AnimFrame,10,11) image_index=5

Throw=0

  image_speed=0
if hp<=0 if dead=0 {dead=1 alarm[2]=30}

if dead=0
AnimFrame=clamp(AnimFrame,6,12)
else
AnimFrame=clamp(AnimFrame,6,8)

if AnimFrame<9
{
if AnimFrame<7 AnimFrame+=0.2 else
{
if AnimFrame<8
AnimFrame+=0.4
else AnimFrame+=0.02}
}else AnimFrame+=0.4

if AnimFrame>1 and canBounce=1 and hasBounce=1
{canBounce=0
AnimFrame=4
if hitBack=0
sentflying=-2*image_xscale
else
sentflying=2*image_xscale

ground=0
zSpeed=-4

anim=5
}

if AnimFrame>10.8 {
if dizzyHit=0 {hurt=0 canmove=1}
else {AnimFrame=0 anim=42

if hasDizzy=0
{image_index=GrabFrame image_speed=0}

}
if prevanim=7 {prevanim=0 recovery=90}}
}

