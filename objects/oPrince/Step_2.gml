enemy_endstep()
throw_step()


overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

///AI for enemy doing blocks
//if name="BBB" ///To lock block to make boss easier
if canmove=1 and (anim=0 or anim=1)
if distance_to_object(targetEnemy)<64
and (targetEnemy.y=clamp(targetEnemy.y,y-8,y+8))
and (
(image_xscale=1 and x<targetEnemy.x and targetEnemy.image_xscale=-1)
or (image_xscale=-1 and x>targetEnemy.x and targetEnemy.image_xscale=1)
)
{
if targetEnemy.atk=1 if anim!=60
{animFrame=0 canmove=0 recovery=0
anim=60 
}
}

///Block
if anim=60
{canBlock=1
sprite_index=spr_prince_block
animFrame+=0.1
if animFrame>6 {canmove=1 anim=0 alarm[1]=2}
}

if anim=60 or anim=61
canBlock=1 else canBlock=0

///Block Hit
if anim=61
{canBlock=1 animFrame+=0.1 shaketime=30
if animFrame<0.5
{
if place_free(x+0.1*-image_xscale,y) x+=0.1*-image_xscale
}
sprite_index=spr_prince_block
if animFrame>2 {anim=60 anim=11 image_index=0 animFrame=0 alarm[1]=2}
}


if anim=10
{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>150
	anim=12 else 
	if distance_to_point(targetEnemy.x,targetEnemy.y)>150/2
	anim=choose(13,14,12) else anim=11
}


if anim=11 ///Bite Attack
{if animFrame=0 {PlaySound(choose(snd_prince3,snd_prince5))}
//if animFrame=0  PlaySound(snd_wolfita7)

canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_prince_attack2
image_index=animFrame

//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1

frame_set(0,0,0.1)
frame_set(1,1,0.25)

frame_set(2,2,0.25)
if animFrame=clamp(animFrame,2,2.99){atk=1 sentflying=2*image_xscale
} else {sentflying=0 atk=0}

frame_set(3,3,0.05)
frame_set(4,0,0.5)
if animFrame>3.5 canbeGrabbed=1

if animFrame>4.5 {atk=0 canmove=1}
}

///Ranged Attack
if anim=12
{
	if animFrame=0 {PlaySound(snd_prince6)}
sprite_index=spr_prince_attack1
	//if animFrame=0 PlaySoundNoStack(snd_fzombie3)
frame_set(0,0,0.1)
if animFrame=11111
{
	bub=instance_create_depth(x+32*image_xscale,y,depth,oFlashFX)
	bub.z=z-64
	bub.sprite_index=spr_siren_proj1
	bub.image_index=0.1 bub.animEnd=0
	bub.image_speed=0.25
	bub.alarm[0]=9999999
	bub.image_xscale=1
	bub.image_yscale=1
}
frame_set(1,0,0.5)
frame_set(2,0,0.5)
frame_set(3,0,0.5)
frame_set(4,1,0.5)
frame_set(5,1,0.5)
frame_set(6,1,0.5)
frame_set(7,1,0.5)
frame_set(8,1,0.5)
frame_set(9,1,0.5)
frame_set(10,1,0.25) if animFrame=11
{//with bub instance_destroy() bub=-1
//PlaySound(snd_femenemy5) PlaySound(snd_flame)
card=instance_create_depth(x+32*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
card.sprite_index=spr_siren_proj3
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
{card.zSpeed=1 card.zSpeedAdd=-0.1} else card.sidespeedadd=0.1*image_xscale
card.z=z-64 card.image_xscale=image_xscale card.disappearHit=0 card.damage=0.1
}
frame_set(11,2,0.25)
frame_set(12,3,0.25)
frame_set(13,3,0.25)
frame_set(14,3,0.05)
frame_set(15,0,0.25)

if animFrame>15.75 {canmove=1 atk=0}
}

////Knee
if anim=13
{
if animFrame=0 {PlaySound(snd_prince3) specialtimes[0]=0
	specialtimes[1]=0  
			specialtimes[2]=0
					if targetEnemy.y!=clamp(targetEnemy.y,y-8,y+8)
		{if targetEnemy.y>y specialtimes[2]=2 else specialtimes[2]=-2}
	}	
sprite_index=spr_prince_attack4
atkcol_set(7,0,12,1.05,1,38)

frame_set(0,0,0.25)
frame_set(1,1,0.05) if animFrame=2 {ground=0 zSpeed=-6 sentflying=6*image_xscale animFrame=2.1
	}
if animFrame=2.1 {image_index=2+specialtimes[0] if specialtimes[0]<1.5 specialtimes[0]+=0.25
	atk=1 MoveType=1 damage=0.2
					
	if specialtimes[2]>0 and place_free(x,y+specialtimes[2]) y+=specialtimes[2]
	else if y<oControl.camY+240 y+=specialtimes[2]
		
	if ground {animFrame=3 atk=0}}
frame_set(3,1,0.1)
frame_set(4,0,0.1)
if animFrame>4.5 canmove=1
}

if anim=14 ///Attack Slide
{
if animFrame=0 {PlaySound(snd_prince4)}

hit=0  if animFrame=2 {PlaySoundNoStack(snd_swing2) PlaySoundNoStack(snd_enemy1)}
sprite_index=spr_prince_attack3 MoveType=1 damage=0.15
image_index=animFrame image_speed=0

selfatk.height=4

frame_set(0,0,0.25)
frame_set(1,2,0.1)
frame_set(2,3,0.1)
frame_set(3,4,0.1)
frame_set(4,4,0.1)
frame_set(5,4,0.1)
frame_set(6,1,0.1)

if animFrame=clamp(animFrame,3,6) 
{atk=1 canbeGrabbed=0

if animFrame=clamp(animFrame,3,4) 
if place_free(x+4*image_xscale,y) x+=8*image_xscale
if animFrame=clamp(animFrame,4.1,5) 
if place_free(x+2*image_xscale,y) x+=8*image_xscale
if animFrame=clamp(animFrame,5.1,6) 
if place_free(x+1*image_xscale,y) x+=4*image_xscale

} else atk=0

if animFrame>6.8 {canmove=1 anim=0 animFrame=0 alarm[1]=120}
}
else
{canbeGrabbed=1 selfatk.height=64}


///Intro
if anim=100
{specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0
sprite_index=spr_prince_intro

if animFrame<15
{
frame_set(0,0,0.01)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25) if animFrame=4
{PlaySound(snd_prince4)
clothes=instance_create_depth(x,y-1,-1,oDisappearPart) with clothes
{
disappearTime=24
dis=0
angle=0
minSprite=0
maxSprite=0
SpriteSpd=0
z=0
bounce=1
spdZ=-2 hspeed=-2*image_xscale
angleSpin=0
sprite_index=spr_prince_clothes image_index=0 image_speed=0
}
}
frame_set(4,4,0.25)
frame_set(5,5,0.02) if animFrame=6 {PlaySound(snd_prince1)}
frame_set(6,6,0.25)
frame_set(7,7+specialtimes[0],0.01)
frame_set(8,9,0.25)
frame_set(9,10,0.05)
frame_set(10,11,0.25)
frame_set(11,12,0.05)
frame_set(12,11,0.25) if animFrame=13 if specialtimes[1]!=3 {animFrame=9 specialtimes[1]+=1 }
frame_set(13,13,0.25)
frame_set(14,14+specialtimes[0],0.001) if animFrame>=14.9 animFrame=15
frame_set(15,15,0.25)

if animFrame>14.25 if ground and animFrame!=17.5 {z=-4 zSpeed=-8 ground=0 animFrame=17.5}
}
if animFrame>=16 {image_index=6
	y+=1
	
	if ground canmove=1
	}

}