enemy_endstep()
throw_step()


if anim=10
{offScreen=0
if distance_to_point(targetEnemy.x,targetEnemy.y)<50
anim=choose(11)
else
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<100
anim=12 else anim=13
}
}

///Shoryuken
if anim=11
{damage=0.2 MoveType=1
sprite_index=spr_duck_attack2
sentflying=lerp(sentflying,0,0.1)
frame_set(0,0,0.1) if animFrame=1
{ground=0 z-=4 spdZ=-8 sentflying=3*image_xscale
}
frame_set(1,1,0.1) if animFrame=clamp(animFrame,1,1.99) {atk=1 z-=16} else atk=0
frame_set(2,2,0.2)
frame_set(3,3,0.25)
frame_set(4,4,0.25) if animFrame>4 if ground canmove=1
frame_set(5,5,0.25)
}

///Charge!
if anim=12 
{if animFrame=0 {specialcheck4=0} damage=0.25 MoveType=4
sprite_index=spr_duck_charge
frame_set(0,0,0.25)
frame_set(1,1,0.05)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25) specialcheck4+=1
if animFrame=5 if specialcheck4<160 {animFrame=2}

if animFrame=clamp(animFrame,2,4.9) {atk=1
	sentflying=8*image_xscale oControl.quakeFXTime=10
	dust_make(x,y+1,z,-1*image_xscale,1,1)

if x!=clamp(x,-__view_get( e__VW.XView, 0 )-32-sprite_get_width(mask_index)/2,__view_get( e__VW.XView, 0 )+32+320+sprite_get_width(mask_index)/2)
{y=targetY
image_xscale=-image_xscale x+=16*image_xscale
}

	} else {atk=0 sentflying=lerp(sentflying,0,0.1)}
frame_set(5,0,0.1)
if animFrame>5 canmove=1
}

///Ranged Attack
if anim=13
{sprite_index=spr_duck_attack1
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
frame_set(1,1,0.2)
frame_set(2,2,0.5)
frame_set(3,2,0.5)
frame_set(4,2,0.5)
frame_set(5,2,0.5)
frame_set(6,2,0.5)
frame_set(7,2,0.5)
frame_set(8,2,0.5)
frame_set(9,2,0.5)
frame_set(10,1,0.25) if animFrame=11
{//with bub instance_destroy() bub=-1
PlaySound(snd_femenemy5) PlaySound(snd_flame)
card=instance_create_depth(x+64*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
card.sprite_index=spr_duck_quack card.mask_index=spr_shadow2
card.z=z-48 card.image_xscale=1 card.disappearHit=0 card.damage=0.1
}
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)

if animFrame>15.75 {canmove=1 atk=0}
}

///Intro
if anim=100
{sprite_index=spr_duck_intro
if animFrame=0 {specialtimes[0]=0}	

if !ground animFrame=0.5 else if animFrame=0.5 {animFrame=1 PlaySound(snd_hitgroundmetal) oControl.quakeFXTime=10}
specialtimes[0]+=0.1 if specialtimes[0]=2 specialtimes[0]=0
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.01)
frame_set(3,3,0.1)
frame_set(4,4,0.25)
frame_set(5,5+specialtimes[0],0.005)
frame_set(6,4,0.25)
if animFrame>6 {canmove=1 anim=0}
}
